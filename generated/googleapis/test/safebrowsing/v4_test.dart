// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/safebrowsing/v4.dart' as api;

import '../test_shared.dart';

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

core.int buildCounterGoogleSecuritySafebrowsingV4Checksum = 0;
api.GoogleSecuritySafebrowsingV4Checksum
    buildGoogleSecuritySafebrowsingV4Checksum() {
  var o = api.GoogleSecuritySafebrowsingV4Checksum();
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
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4Checksum--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ClientInfo = 0;
api.GoogleSecuritySafebrowsingV4ClientInfo
    buildGoogleSecuritySafebrowsingV4ClientInfo() {
  var o = api.GoogleSecuritySafebrowsingV4ClientInfo();
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
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.clientVersion, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ClientInfo--;
}

core.List<
        api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest>
    buildUnnamed5027() {
  var o = <
      api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest>[];
  o.add(
      buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest());
  o.add(
      buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest());
  return o;
}

void checkUnnamed5027(
    core.List<
            api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
      o[0] as api
          .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest);
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
      o[1] as api
          .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest);
}

core.int buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest() {
  var o = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest <
      3) {
    o.client = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.listUpdateRequests = buildUnnamed5027();
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest(
    api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest o) {
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest <
      3) {
    checkGoogleSecuritySafebrowsingV4ClientInfo(
        o.client as api.GoogleSecuritySafebrowsingV4ClientInfo);
    checkUnnamed5027(o.listUpdateRequests);
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest--;
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest() {
  var o = api
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
        o.constraints as api
            .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints);
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest--;
}

core.List<core.String> buildUnnamed5028() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5028(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints() {
  var o = api
      .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints <
      3) {
    o.deviceLocation = 'foo';
    o.language = 'foo';
    o.maxDatabaseEntries = 42;
    o.maxUpdateEntries = 42;
    o.region = 'foo';
    o.supportedCompressions = buildUnnamed5028();
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
    unittest.expect(o.deviceLocation, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.maxDatabaseEntries, unittest.equals(42));
    unittest.expect(o.maxUpdateEntries, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed5028(o.supportedCompressions);
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints--;
}

core.List<
        api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse>
    buildUnnamed5029() {
  var o = <
      api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse>[];
  o.add(
      buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse());
  o.add(
      buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse());
  return o;
}

void checkUnnamed5029(
    core.List<
            api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
      o[0] as api
          .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse);
  checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
      o[1] as api
          .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse);
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse = 0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse() {
  var o = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse <
      3) {
    o.listUpdateResponses = buildUnnamed5029();
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
    checkUnnamed5029(o.listUpdateResponses);
    unittest.expect(o.minimumWaitDuration, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> buildUnnamed5030() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatEntrySet>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntrySet());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntrySet());
  return o;
}

void checkUnnamed5030(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatEntrySet);
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatEntrySet);
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> buildUnnamed5031() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatEntrySet>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntrySet());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntrySet());
  return o;
}

void checkUnnamed5031(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatEntrySet);
  checkGoogleSecuritySafebrowsingV4ThreatEntrySet(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatEntrySet);
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse =
    0;
api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
    buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse() {
  var o = api
      .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse();
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse <
      3) {
    o.additions = buildUnnamed5030();
    o.checksum = buildGoogleSecuritySafebrowsingV4Checksum();
    o.newClientState = 'foo';
    o.platformType = 'foo';
    o.removals = buildUnnamed5031();
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
    checkUnnamed5030(o.additions);
    checkGoogleSecuritySafebrowsingV4Checksum(
        o.checksum as api.GoogleSecuritySafebrowsingV4Checksum);
    unittest.expect(o.newClientState, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkUnnamed5031(o.removals);
    unittest.expect(o.responseType, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse--;
}

core.List<core.String> buildUnnamed5032() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5032(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest = 0;
api.GoogleSecuritySafebrowsingV4FindFullHashesRequest
    buildGoogleSecuritySafebrowsingV4FindFullHashesRequest() {
  var o = api.GoogleSecuritySafebrowsingV4FindFullHashesRequest();
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest < 3) {
    o.apiClient = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.client = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.clientStates = buildUnnamed5032();
    o.threatInfo = buildGoogleSecuritySafebrowsingV4ThreatInfo();
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FindFullHashesRequest(
    api.GoogleSecuritySafebrowsingV4FindFullHashesRequest o) {
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest < 3) {
    checkGoogleSecuritySafebrowsingV4ClientInfo(
        o.apiClient as api.GoogleSecuritySafebrowsingV4ClientInfo);
    checkGoogleSecuritySafebrowsingV4ClientInfo(
        o.client as api.GoogleSecuritySafebrowsingV4ClientInfo);
    checkUnnamed5032(o.clientStates);
    checkGoogleSecuritySafebrowsingV4ThreatInfo(
        o.threatInfo as api.GoogleSecuritySafebrowsingV4ThreatInfo);
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesRequest--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> buildUnnamed5033() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatMatch>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatMatch());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatMatch());
  return o;
}

void checkUnnamed5033(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatMatch(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatMatch);
  checkGoogleSecuritySafebrowsingV4ThreatMatch(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatMatch);
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse = 0;
api.GoogleSecuritySafebrowsingV4FindFullHashesResponse
    buildGoogleSecuritySafebrowsingV4FindFullHashesResponse() {
  var o = api.GoogleSecuritySafebrowsingV4FindFullHashesResponse();
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse < 3) {
    o.matches = buildUnnamed5033();
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
    checkUnnamed5033(o.matches);
    unittest.expect(o.minimumWaitDuration, unittest.equals('foo'));
    unittest.expect(o.negativeCacheDuration, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4FindFullHashesResponse--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest = 0;
api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
    buildGoogleSecuritySafebrowsingV4FindThreatMatchesRequest() {
  var o = api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest();
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
    checkGoogleSecuritySafebrowsingV4ClientInfo(
        o.client as api.GoogleSecuritySafebrowsingV4ClientInfo);
    checkGoogleSecuritySafebrowsingV4ThreatInfo(
        o.threatInfo as api.GoogleSecuritySafebrowsingV4ThreatInfo);
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesRequest--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> buildUnnamed5034() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatMatch>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatMatch());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatMatch());
  return o;
}

void checkUnnamed5034(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatMatch(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatMatch);
  checkGoogleSecuritySafebrowsingV4ThreatMatch(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatMatch);
}

core.int buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse = 0;
api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
    buildGoogleSecuritySafebrowsingV4FindThreatMatchesResponse() {
  var o = api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse();
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse < 3) {
    o.matches = buildUnnamed5034();
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4FindThreatMatchesResponse(
    api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse o) {
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse < 3) {
    checkUnnamed5034(o.matches);
  }
  buildCounterGoogleSecuritySafebrowsingV4FindThreatMatchesResponse--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatListDescriptor>
    buildUnnamed5035() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatListDescriptor>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatListDescriptor());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatListDescriptor());
  return o;
}

void checkUnnamed5035(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatListDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatListDescriptor);
  checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatListDescriptor);
}

core.int buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse = 0;
api.GoogleSecuritySafebrowsingV4ListThreatListsResponse
    buildGoogleSecuritySafebrowsingV4ListThreatListsResponse() {
  var o = api.GoogleSecuritySafebrowsingV4ListThreatListsResponse();
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse < 3) {
    o.threatLists = buildUnnamed5035();
  }
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ListThreatListsResponse(
    api.GoogleSecuritySafebrowsingV4ListThreatListsResponse o) {
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse < 3) {
    checkUnnamed5035(o.threatLists);
  }
  buildCounterGoogleSecuritySafebrowsingV4ListThreatListsResponse--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4RawHashes = 0;
api.GoogleSecuritySafebrowsingV4RawHashes
    buildGoogleSecuritySafebrowsingV4RawHashes() {
  var o = api.GoogleSecuritySafebrowsingV4RawHashes();
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
    unittest.expect(o.prefixSize, unittest.equals(42));
    unittest.expect(o.rawHashes, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4RawHashes--;
}

core.List<core.int> buildUnnamed5036() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5036(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleSecuritySafebrowsingV4RawIndices = 0;
api.GoogleSecuritySafebrowsingV4RawIndices
    buildGoogleSecuritySafebrowsingV4RawIndices() {
  var o = api.GoogleSecuritySafebrowsingV4RawIndices();
  buildCounterGoogleSecuritySafebrowsingV4RawIndices++;
  if (buildCounterGoogleSecuritySafebrowsingV4RawIndices < 3) {
    o.indices = buildUnnamed5036();
  }
  buildCounterGoogleSecuritySafebrowsingV4RawIndices--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4RawIndices(
    api.GoogleSecuritySafebrowsingV4RawIndices o) {
  buildCounterGoogleSecuritySafebrowsingV4RawIndices++;
  if (buildCounterGoogleSecuritySafebrowsingV4RawIndices < 3) {
    checkUnnamed5036(o.indices);
  }
  buildCounterGoogleSecuritySafebrowsingV4RawIndices--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding = 0;
api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding
    buildGoogleSecuritySafebrowsingV4RiceDeltaEncoding() {
  var o = api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding();
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
    unittest.expect(o.encodedData, unittest.equals('foo'));
    unittest.expect(o.firstValue, unittest.equals('foo'));
    unittest.expect(o.numEntries, unittest.equals(42));
    unittest.expect(o.riceParameter, unittest.equals(42));
  }
  buildCounterGoogleSecuritySafebrowsingV4RiceDeltaEncoding--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatEntry = 0;
api.GoogleSecuritySafebrowsingV4ThreatEntry
    buildGoogleSecuritySafebrowsingV4ThreatEntry() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatEntry();
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
    unittest.expect(o.digest, unittest.equals('foo'));
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntry--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry>
    buildUnnamed5037() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry());
  return o;
}

void checkUnnamed5037(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry);
  checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry);
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata = 0;
api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata
    buildGoogleSecuritySafebrowsingV4ThreatEntryMetadata() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata();
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata < 3) {
    o.entries = buildUnnamed5037();
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatEntryMetadata(
    api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata < 3) {
    checkUnnamed5037(o.entries);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadata--;
}

core.int
    buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry =
    0;
api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
    buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet = 0;
api.GoogleSecuritySafebrowsingV4ThreatEntrySet
    buildGoogleSecuritySafebrowsingV4ThreatEntrySet() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatEntrySet();
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
    unittest.expect(o.compressionType, unittest.equals('foo'));
    checkGoogleSecuritySafebrowsingV4RawHashes(
        o.rawHashes as api.GoogleSecuritySafebrowsingV4RawHashes);
    checkGoogleSecuritySafebrowsingV4RawIndices(
        o.rawIndices as api.GoogleSecuritySafebrowsingV4RawIndices);
    checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(
        o.riceHashes as api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding);
    checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(
        o.riceIndices as api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatEntrySet--;
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource>
    buildUnnamed5038() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource());
  return o;
}

void checkUnnamed5038(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource);
  checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource);
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatHit = 0;
api.GoogleSecuritySafebrowsingV4ThreatHit
    buildGoogleSecuritySafebrowsingV4ThreatHit() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatHit();
  buildCounterGoogleSecuritySafebrowsingV4ThreatHit++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatHit < 3) {
    o.clientInfo = buildGoogleSecuritySafebrowsingV4ClientInfo();
    o.entry = buildGoogleSecuritySafebrowsingV4ThreatEntry();
    o.platformType = 'foo';
    o.resources = buildUnnamed5038();
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
    checkGoogleSecuritySafebrowsingV4ClientInfo(
        o.clientInfo as api.GoogleSecuritySafebrowsingV4ClientInfo);
    checkGoogleSecuritySafebrowsingV4ThreatEntry(
        o.entry as api.GoogleSecuritySafebrowsingV4ThreatEntry);
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkUnnamed5038(o.resources);
    unittest.expect(o.threatType, unittest.equals('foo'));
    checkGoogleSecuritySafebrowsingV4ThreatHitUserInfo(
        o.userInfo as api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHit--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource = 0;
api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource
    buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource();
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
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitThreatSource--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo = 0;
api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo
    buildGoogleSecuritySafebrowsingV4ThreatHitUserInfo() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo();
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
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatHitUserInfo--;
}

core.List<core.String> buildUnnamed5039() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5039(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleSecuritySafebrowsingV4ThreatEntry> buildUnnamed5040() {
  var o = <api.GoogleSecuritySafebrowsingV4ThreatEntry>[];
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntry());
  o.add(buildGoogleSecuritySafebrowsingV4ThreatEntry());
  return o;
}

void checkUnnamed5040(
    core.List<api.GoogleSecuritySafebrowsingV4ThreatEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV4ThreatEntry(
      o[0] as api.GoogleSecuritySafebrowsingV4ThreatEntry);
  checkGoogleSecuritySafebrowsingV4ThreatEntry(
      o[1] as api.GoogleSecuritySafebrowsingV4ThreatEntry);
}

core.List<core.String> buildUnnamed5041() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5041(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5042() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5042(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatInfo = 0;
api.GoogleSecuritySafebrowsingV4ThreatInfo
    buildGoogleSecuritySafebrowsingV4ThreatInfo() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatInfo();
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatInfo < 3) {
    o.platformTypes = buildUnnamed5039();
    o.threatEntries = buildUnnamed5040();
    o.threatEntryTypes = buildUnnamed5041();
    o.threatTypes = buildUnnamed5042();
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo--;
  return o;
}

void checkGoogleSecuritySafebrowsingV4ThreatInfo(
    api.GoogleSecuritySafebrowsingV4ThreatInfo o) {
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo++;
  if (buildCounterGoogleSecuritySafebrowsingV4ThreatInfo < 3) {
    checkUnnamed5039(o.platformTypes);
    checkUnnamed5040(o.threatEntries);
    checkUnnamed5041(o.threatEntryTypes);
    checkUnnamed5042(o.threatTypes);
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatInfo--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor = 0;
api.GoogleSecuritySafebrowsingV4ThreatListDescriptor
    buildGoogleSecuritySafebrowsingV4ThreatListDescriptor() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatListDescriptor();
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
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatListDescriptor--;
}

core.int buildCounterGoogleSecuritySafebrowsingV4ThreatMatch = 0;
api.GoogleSecuritySafebrowsingV4ThreatMatch
    buildGoogleSecuritySafebrowsingV4ThreatMatch() {
  var o = api.GoogleSecuritySafebrowsingV4ThreatMatch();
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
    unittest.expect(o.cacheDuration, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkGoogleSecuritySafebrowsingV4ThreatEntry(
        o.threat as api.GoogleSecuritySafebrowsingV4ThreatEntry);
    checkGoogleSecuritySafebrowsingV4ThreatEntryMetadata(o.threatEntryMetadata
        as api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata);
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterGoogleSecuritySafebrowsingV4ThreatMatch--;
}

void main() {
  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4Checksum', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4Checksum();
      var od = api.GoogleSecuritySafebrowsingV4Checksum.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4Checksum(
          od as api.GoogleSecuritySafebrowsingV4Checksum);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ClientInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ClientInfo();
      var od = api.GoogleSecuritySafebrowsingV4ClientInfo.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ClientInfo(
          od as api.GoogleSecuritySafebrowsingV4ClientInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest();
      var od = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
          .fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest(
          od as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest();
      var od =
          api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
              .fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest(
          od as api
              .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints();
      var od =
          api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
              .fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints(
          od as api
              .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse();
      var od = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
          .fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(
          od as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse();
      var od =
          api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
              .fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse(
          od as api
              .GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4FindFullHashesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4FindFullHashesRequest();
      var od = api.GoogleSecuritySafebrowsingV4FindFullHashesRequest.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4FindFullHashesRequest(
          od as api.GoogleSecuritySafebrowsingV4FindFullHashesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FindFullHashesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4FindFullHashesResponse();
      var od = api.GoogleSecuritySafebrowsingV4FindFullHashesResponse.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(
          od as api.GoogleSecuritySafebrowsingV4FindFullHashesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FindThreatMatchesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4FindThreatMatchesRequest();
      var od =
          api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest.fromJson(
              o.toJson());
      checkGoogleSecuritySafebrowsingV4FindThreatMatchesRequest(
          od as api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4FindThreatMatchesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4FindThreatMatchesResponse();
      var od =
          api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse.fromJson(
              o.toJson());
      checkGoogleSecuritySafebrowsingV4FindThreatMatchesResponse(
          od as api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4ListThreatListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ListThreatListsResponse();
      var od = api.GoogleSecuritySafebrowsingV4ListThreatListsResponse.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4ListThreatListsResponse(
          od as api.GoogleSecuritySafebrowsingV4ListThreatListsResponse);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4RawHashes', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4RawHashes();
      var od = api.GoogleSecuritySafebrowsingV4RawHashes.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4RawHashes(
          od as api.GoogleSecuritySafebrowsingV4RawHashes);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4RawIndices', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4RawIndices();
      var od = api.GoogleSecuritySafebrowsingV4RawIndices.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4RawIndices(
          od as api.GoogleSecuritySafebrowsingV4RawIndices);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4RiceDeltaEncoding',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4RiceDeltaEncoding();
      var od = api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4RiceDeltaEncoding(
          od as api.GoogleSecuritySafebrowsingV4RiceDeltaEncoding);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatEntry();
      var od = api.GoogleSecuritySafebrowsingV4ThreatEntry.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatEntry(
          od as api.GoogleSecuritySafebrowsingV4ThreatEntry);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatEntryMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatEntryMetadata();
      var od = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatEntryMetadata(
          od as api.GoogleSecuritySafebrowsingV4ThreatEntryMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry();
      var od = api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
          .fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry(od
          as api.GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatEntrySet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatEntrySet();
      var od =
          api.GoogleSecuritySafebrowsingV4ThreatEntrySet.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatEntrySet(
          od as api.GoogleSecuritySafebrowsingV4ThreatEntrySet);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatHit', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatHit();
      var od = api.GoogleSecuritySafebrowsingV4ThreatHit.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatHit(
          od as api.GoogleSecuritySafebrowsingV4ThreatHit);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatHitThreatSource',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatHitThreatSource();
      var od = api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatHitThreatSource(
          od as api.GoogleSecuritySafebrowsingV4ThreatHitThreatSource);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatHitUserInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatHitUserInfo();
      var od = api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatHitUserInfo(
          od as api.GoogleSecuritySafebrowsingV4ThreatHitUserInfo);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatInfo();
      var od = api.GoogleSecuritySafebrowsingV4ThreatInfo.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatInfo(
          od as api.GoogleSecuritySafebrowsingV4ThreatInfo);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatListDescriptor',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatListDescriptor();
      var od = api.GoogleSecuritySafebrowsingV4ThreatListDescriptor.fromJson(
          o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatListDescriptor(
          od as api.GoogleSecuritySafebrowsingV4ThreatListDescriptor);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV4ThreatMatch', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleSecuritySafebrowsingV4ThreatMatch();
      var od = api.GoogleSecuritySafebrowsingV4ThreatMatch.fromJson(o.toJson());
      checkGoogleSecuritySafebrowsingV4ThreatMatch(
          od as api.GoogleSecuritySafebrowsingV4ThreatMatch);
    });
  });

  unittest.group('resource-EncodedFullHashesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).encodedFullHashes;
      var arg_encodedRequest = 'foo';
      var arg_clientId = 'foo';
      var arg_clientVersion = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v4/encodedFullHashes/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_encodedRequest'));

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
            queryMap["clientId"].first, unittest.equals(arg_clientId));
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV4FindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_encodedRequest,
              clientId: arg_clientId,
              clientVersion: arg_clientVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(
            response as api.GoogleSecuritySafebrowsingV4FindFullHashesResponse);
      })));
    });
  });

  unittest.group('resource-EncodedUpdatesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).encodedUpdates;
      var arg_encodedRequest = 'foo';
      var arg_clientId = 'foo';
      var arg_clientVersion = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v4/encodedUpdates/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_encodedRequest'));

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
            queryMap["clientId"].first, unittest.equals(arg_clientId));
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_encodedRequest,
              clientId: arg_clientId,
              clientVersion: arg_clientVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(response
            as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse);
      })));
    });
  });

  unittest.group('resource-FullHashesResource', () {
    unittest.test('method--find', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).fullHashes;
      var arg_request =
          buildGoogleSecuritySafebrowsingV4FindFullHashesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleSecuritySafebrowsingV4FindFullHashesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4FindFullHashesRequest(
            obj as api.GoogleSecuritySafebrowsingV4FindFullHashesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v4/fullHashes:find"));
        pathOffset += 18;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV4FindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .find(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleSecuritySafebrowsingV4FindFullHashesResponse(
            response as api.GoogleSecuritySafebrowsingV4FindFullHashesResponse);
      })));
    });
  });

  unittest.group('resource-ThreatHitsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatHits;
      var arg_request = buildGoogleSecuritySafebrowsingV4ThreatHit();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleSecuritySafebrowsingV4ThreatHit.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4ThreatHit(
            obj as api.GoogleSecuritySafebrowsingV4ThreatHit);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v4/threatHits"));
        pathOffset += 13;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });
  });

  unittest.group('resource-ThreatListUpdatesResource', () {
    unittest.test('method--fetch', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatListUpdates;
      var arg_request =
          buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest(obj
            as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v4/threatListUpdates:fetch"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse(response
            as api.GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse);
      })));
    });
  });

  unittest.group('resource-ThreatListsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatLists;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v4/threatLists"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV4ListThreatListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkGoogleSecuritySafebrowsingV4ListThreatListsResponse(response
            as api.GoogleSecuritySafebrowsingV4ListThreatListsResponse);
      })));
    });
  });

  unittest.group('resource-ThreatMatchesResource', () {
    unittest.test('method--find', () {
      var mock = HttpServerMock();
      var res = api.SafebrowsingApi(mock).threatMatches;
      var arg_request =
          buildGoogleSecuritySafebrowsingV4FindThreatMatchesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleSecuritySafebrowsingV4FindThreatMatchesRequest(
            obj as api.GoogleSecuritySafebrowsingV4FindThreatMatchesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v4/threatMatches:find"));
        pathOffset += 21;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleSecuritySafebrowsingV4FindThreatMatchesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .find(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleSecuritySafebrowsingV4FindThreatMatchesResponse(response
            as api.GoogleSecuritySafebrowsingV4FindThreatMatchesResponse);
      })));
    });
  });
}
