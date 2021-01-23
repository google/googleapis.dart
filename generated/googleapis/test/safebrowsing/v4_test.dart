// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.safebrowsing.v4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/safebrowsing/v4.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterChecksum = 0;
api.Checksum buildChecksum() {
  var o = api.Checksum();
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
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterChecksum--;
}

core.int buildCounterClientInfo = 0;
api.ClientInfo buildClientInfo() {
  var o = api.ClientInfo();
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
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.clientVersion, unittest.equals('foo'));
  }
  buildCounterClientInfo--;
}

core.List<core.String> buildUnnamed4550() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4550(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConstraints = 0;
api.Constraints buildConstraints() {
  var o = api.Constraints();
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    o.deviceLocation = 'foo';
    o.language = 'foo';
    o.maxDatabaseEntries = 42;
    o.maxUpdateEntries = 42;
    o.region = 'foo';
    o.supportedCompressions = buildUnnamed4550();
  }
  buildCounterConstraints--;
  return o;
}

void checkConstraints(api.Constraints o) {
  buildCounterConstraints++;
  if (buildCounterConstraints < 3) {
    unittest.expect(o.deviceLocation, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.maxDatabaseEntries, unittest.equals(42));
    unittest.expect(o.maxUpdateEntries, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed4550(o.supportedCompressions);
  }
  buildCounterConstraints--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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

core.List<api.ListUpdateRequest> buildUnnamed4551() {
  var o = <api.ListUpdateRequest>[];
  o.add(buildListUpdateRequest());
  o.add(buildListUpdateRequest());
  return o;
}

void checkUnnamed4551(core.List<api.ListUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListUpdateRequest(o[0]);
  checkListUpdateRequest(o[1]);
}

core.int buildCounterFetchThreatListUpdatesRequest = 0;
api.FetchThreatListUpdatesRequest buildFetchThreatListUpdatesRequest() {
  var o = api.FetchThreatListUpdatesRequest();
  buildCounterFetchThreatListUpdatesRequest++;
  if (buildCounterFetchThreatListUpdatesRequest < 3) {
    o.client = buildClientInfo();
    o.listUpdateRequests = buildUnnamed4551();
  }
  buildCounterFetchThreatListUpdatesRequest--;
  return o;
}

void checkFetchThreatListUpdatesRequest(api.FetchThreatListUpdatesRequest o) {
  buildCounterFetchThreatListUpdatesRequest++;
  if (buildCounterFetchThreatListUpdatesRequest < 3) {
    checkClientInfo(o.client);
    checkUnnamed4551(o.listUpdateRequests);
  }
  buildCounterFetchThreatListUpdatesRequest--;
}

core.List<api.ListUpdateResponse> buildUnnamed4552() {
  var o = <api.ListUpdateResponse>[];
  o.add(buildListUpdateResponse());
  o.add(buildListUpdateResponse());
  return o;
}

void checkUnnamed4552(core.List<api.ListUpdateResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListUpdateResponse(o[0]);
  checkListUpdateResponse(o[1]);
}

core.int buildCounterFetchThreatListUpdatesResponse = 0;
api.FetchThreatListUpdatesResponse buildFetchThreatListUpdatesResponse() {
  var o = api.FetchThreatListUpdatesResponse();
  buildCounterFetchThreatListUpdatesResponse++;
  if (buildCounterFetchThreatListUpdatesResponse < 3) {
    o.listUpdateResponses = buildUnnamed4552();
    o.minimumWaitDuration = 'foo';
  }
  buildCounterFetchThreatListUpdatesResponse--;
  return o;
}

void checkFetchThreatListUpdatesResponse(api.FetchThreatListUpdatesResponse o) {
  buildCounterFetchThreatListUpdatesResponse++;
  if (buildCounterFetchThreatListUpdatesResponse < 3) {
    checkUnnamed4552(o.listUpdateResponses);
    unittest.expect(o.minimumWaitDuration, unittest.equals('foo'));
  }
  buildCounterFetchThreatListUpdatesResponse--;
}

core.List<core.String> buildUnnamed4553() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4553(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFindFullHashesRequest = 0;
api.FindFullHashesRequest buildFindFullHashesRequest() {
  var o = api.FindFullHashesRequest();
  buildCounterFindFullHashesRequest++;
  if (buildCounterFindFullHashesRequest < 3) {
    o.apiClient = buildClientInfo();
    o.client = buildClientInfo();
    o.clientStates = buildUnnamed4553();
    o.threatInfo = buildThreatInfo();
  }
  buildCounterFindFullHashesRequest--;
  return o;
}

void checkFindFullHashesRequest(api.FindFullHashesRequest o) {
  buildCounterFindFullHashesRequest++;
  if (buildCounterFindFullHashesRequest < 3) {
    checkClientInfo(o.apiClient);
    checkClientInfo(o.client);
    checkUnnamed4553(o.clientStates);
    checkThreatInfo(o.threatInfo);
  }
  buildCounterFindFullHashesRequest--;
}

core.List<api.ThreatMatch> buildUnnamed4554() {
  var o = <api.ThreatMatch>[];
  o.add(buildThreatMatch());
  o.add(buildThreatMatch());
  return o;
}

void checkUnnamed4554(core.List<api.ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatMatch(o[0]);
  checkThreatMatch(o[1]);
}

core.int buildCounterFindFullHashesResponse = 0;
api.FindFullHashesResponse buildFindFullHashesResponse() {
  var o = api.FindFullHashesResponse();
  buildCounterFindFullHashesResponse++;
  if (buildCounterFindFullHashesResponse < 3) {
    o.matches = buildUnnamed4554();
    o.minimumWaitDuration = 'foo';
    o.negativeCacheDuration = 'foo';
  }
  buildCounterFindFullHashesResponse--;
  return o;
}

void checkFindFullHashesResponse(api.FindFullHashesResponse o) {
  buildCounterFindFullHashesResponse++;
  if (buildCounterFindFullHashesResponse < 3) {
    checkUnnamed4554(o.matches);
    unittest.expect(o.minimumWaitDuration, unittest.equals('foo'));
    unittest.expect(o.negativeCacheDuration, unittest.equals('foo'));
  }
  buildCounterFindFullHashesResponse--;
}

core.int buildCounterFindThreatMatchesRequest = 0;
api.FindThreatMatchesRequest buildFindThreatMatchesRequest() {
  var o = api.FindThreatMatchesRequest();
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
    checkClientInfo(o.client);
    checkThreatInfo(o.threatInfo);
  }
  buildCounterFindThreatMatchesRequest--;
}

core.List<api.ThreatMatch> buildUnnamed4555() {
  var o = <api.ThreatMatch>[];
  o.add(buildThreatMatch());
  o.add(buildThreatMatch());
  return o;
}

void checkUnnamed4555(core.List<api.ThreatMatch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatMatch(o[0]);
  checkThreatMatch(o[1]);
}

core.int buildCounterFindThreatMatchesResponse = 0;
api.FindThreatMatchesResponse buildFindThreatMatchesResponse() {
  var o = api.FindThreatMatchesResponse();
  buildCounterFindThreatMatchesResponse++;
  if (buildCounterFindThreatMatchesResponse < 3) {
    o.matches = buildUnnamed4555();
  }
  buildCounterFindThreatMatchesResponse--;
  return o;
}

void checkFindThreatMatchesResponse(api.FindThreatMatchesResponse o) {
  buildCounterFindThreatMatchesResponse++;
  if (buildCounterFindThreatMatchesResponse < 3) {
    checkUnnamed4555(o.matches);
  }
  buildCounterFindThreatMatchesResponse--;
}

core.List<api.ThreatListDescriptor> buildUnnamed4556() {
  var o = <api.ThreatListDescriptor>[];
  o.add(buildThreatListDescriptor());
  o.add(buildThreatListDescriptor());
  return o;
}

void checkUnnamed4556(core.List<api.ThreatListDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatListDescriptor(o[0]);
  checkThreatListDescriptor(o[1]);
}

core.int buildCounterListThreatListsResponse = 0;
api.ListThreatListsResponse buildListThreatListsResponse() {
  var o = api.ListThreatListsResponse();
  buildCounterListThreatListsResponse++;
  if (buildCounterListThreatListsResponse < 3) {
    o.threatLists = buildUnnamed4556();
  }
  buildCounterListThreatListsResponse--;
  return o;
}

void checkListThreatListsResponse(api.ListThreatListsResponse o) {
  buildCounterListThreatListsResponse++;
  if (buildCounterListThreatListsResponse < 3) {
    checkUnnamed4556(o.threatLists);
  }
  buildCounterListThreatListsResponse--;
}

core.int buildCounterListUpdateRequest = 0;
api.ListUpdateRequest buildListUpdateRequest() {
  var o = api.ListUpdateRequest();
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
    checkConstraints(o.constraints);
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterListUpdateRequest--;
}

core.List<api.ThreatEntrySet> buildUnnamed4557() {
  var o = <api.ThreatEntrySet>[];
  o.add(buildThreatEntrySet());
  o.add(buildThreatEntrySet());
  return o;
}

void checkUnnamed4557(core.List<api.ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntrySet(o[0]);
  checkThreatEntrySet(o[1]);
}

core.List<api.ThreatEntrySet> buildUnnamed4558() {
  var o = <api.ThreatEntrySet>[];
  o.add(buildThreatEntrySet());
  o.add(buildThreatEntrySet());
  return o;
}

void checkUnnamed4558(core.List<api.ThreatEntrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntrySet(o[0]);
  checkThreatEntrySet(o[1]);
}

core.int buildCounterListUpdateResponse = 0;
api.ListUpdateResponse buildListUpdateResponse() {
  var o = api.ListUpdateResponse();
  buildCounterListUpdateResponse++;
  if (buildCounterListUpdateResponse < 3) {
    o.additions = buildUnnamed4557();
    o.checksum = buildChecksum();
    o.newClientState = 'foo';
    o.platformType = 'foo';
    o.removals = buildUnnamed4558();
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
    checkUnnamed4557(o.additions);
    checkChecksum(o.checksum);
    unittest.expect(o.newClientState, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkUnnamed4558(o.removals);
    unittest.expect(o.responseType, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterListUpdateResponse--;
}

core.int buildCounterMetadataEntry = 0;
api.MetadataEntry buildMetadataEntry() {
  var o = api.MetadataEntry();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadataEntry--;
}

core.int buildCounterRawHashes = 0;
api.RawHashes buildRawHashes() {
  var o = api.RawHashes();
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
    unittest.expect(o.prefixSize, unittest.equals(42));
    unittest.expect(o.rawHashes, unittest.equals('foo'));
  }
  buildCounterRawHashes--;
}

core.List<core.int> buildUnnamed4559() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4559(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterRawIndices = 0;
api.RawIndices buildRawIndices() {
  var o = api.RawIndices();
  buildCounterRawIndices++;
  if (buildCounterRawIndices < 3) {
    o.indices = buildUnnamed4559();
  }
  buildCounterRawIndices--;
  return o;
}

void checkRawIndices(api.RawIndices o) {
  buildCounterRawIndices++;
  if (buildCounterRawIndices < 3) {
    checkUnnamed4559(o.indices);
  }
  buildCounterRawIndices--;
}

core.int buildCounterRiceDeltaEncoding = 0;
api.RiceDeltaEncoding buildRiceDeltaEncoding() {
  var o = api.RiceDeltaEncoding();
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
    unittest.expect(o.encodedData, unittest.equals('foo'));
    unittest.expect(o.firstValue, unittest.equals('foo'));
    unittest.expect(o.numEntries, unittest.equals(42));
    unittest.expect(o.riceParameter, unittest.equals(42));
  }
  buildCounterRiceDeltaEncoding--;
}

core.int buildCounterThreatEntry = 0;
api.ThreatEntry buildThreatEntry() {
  var o = api.ThreatEntry();
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
    unittest.expect(o.digest, unittest.equals('foo'));
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterThreatEntry--;
}

core.List<api.MetadataEntry> buildUnnamed4560() {
  var o = <api.MetadataEntry>[];
  o.add(buildMetadataEntry());
  o.add(buildMetadataEntry());
  return o;
}

void checkUnnamed4560(core.List<api.MetadataEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataEntry(o[0]);
  checkMetadataEntry(o[1]);
}

core.int buildCounterThreatEntryMetadata = 0;
api.ThreatEntryMetadata buildThreatEntryMetadata() {
  var o = api.ThreatEntryMetadata();
  buildCounterThreatEntryMetadata++;
  if (buildCounterThreatEntryMetadata < 3) {
    o.entries = buildUnnamed4560();
  }
  buildCounterThreatEntryMetadata--;
  return o;
}

void checkThreatEntryMetadata(api.ThreatEntryMetadata o) {
  buildCounterThreatEntryMetadata++;
  if (buildCounterThreatEntryMetadata < 3) {
    checkUnnamed4560(o.entries);
  }
  buildCounterThreatEntryMetadata--;
}

core.int buildCounterThreatEntrySet = 0;
api.ThreatEntrySet buildThreatEntrySet() {
  var o = api.ThreatEntrySet();
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
    unittest.expect(o.compressionType, unittest.equals('foo'));
    checkRawHashes(o.rawHashes);
    checkRawIndices(o.rawIndices);
    checkRiceDeltaEncoding(o.riceHashes);
    checkRiceDeltaEncoding(o.riceIndices);
  }
  buildCounterThreatEntrySet--;
}

core.List<api.ThreatSource> buildUnnamed4561() {
  var o = <api.ThreatSource>[];
  o.add(buildThreatSource());
  o.add(buildThreatSource());
  return o;
}

void checkUnnamed4561(core.List<api.ThreatSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatSource(o[0]);
  checkThreatSource(o[1]);
}

core.int buildCounterThreatHit = 0;
api.ThreatHit buildThreatHit() {
  var o = api.ThreatHit();
  buildCounterThreatHit++;
  if (buildCounterThreatHit < 3) {
    o.clientInfo = buildClientInfo();
    o.entry = buildThreatEntry();
    o.platformType = 'foo';
    o.resources = buildUnnamed4561();
    o.threatType = 'foo';
    o.userInfo = buildUserInfo();
  }
  buildCounterThreatHit--;
  return o;
}

void checkThreatHit(api.ThreatHit o) {
  buildCounterThreatHit++;
  if (buildCounterThreatHit < 3) {
    checkClientInfo(o.clientInfo);
    checkThreatEntry(o.entry);
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkUnnamed4561(o.resources);
    unittest.expect(o.threatType, unittest.equals('foo'));
    checkUserInfo(o.userInfo);
  }
  buildCounterThreatHit--;
}

core.List<core.String> buildUnnamed4562() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4562(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ThreatEntry> buildUnnamed4563() {
  var o = <api.ThreatEntry>[];
  o.add(buildThreatEntry());
  o.add(buildThreatEntry());
  return o;
}

void checkUnnamed4563(core.List<api.ThreatEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThreatEntry(o[0]);
  checkThreatEntry(o[1]);
}

core.List<core.String> buildUnnamed4564() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4564(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4565() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4565(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterThreatInfo = 0;
api.ThreatInfo buildThreatInfo() {
  var o = api.ThreatInfo();
  buildCounterThreatInfo++;
  if (buildCounterThreatInfo < 3) {
    o.platformTypes = buildUnnamed4562();
    o.threatEntries = buildUnnamed4563();
    o.threatEntryTypes = buildUnnamed4564();
    o.threatTypes = buildUnnamed4565();
  }
  buildCounterThreatInfo--;
  return o;
}

void checkThreatInfo(api.ThreatInfo o) {
  buildCounterThreatInfo++;
  if (buildCounterThreatInfo < 3) {
    checkUnnamed4562(o.platformTypes);
    checkUnnamed4563(o.threatEntries);
    checkUnnamed4564(o.threatEntryTypes);
    checkUnnamed4565(o.threatTypes);
  }
  buildCounterThreatInfo--;
}

core.int buildCounterThreatListDescriptor = 0;
api.ThreatListDescriptor buildThreatListDescriptor() {
  var o = api.ThreatListDescriptor();
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
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterThreatListDescriptor--;
}

core.int buildCounterThreatMatch = 0;
api.ThreatMatch buildThreatMatch() {
  var o = api.ThreatMatch();
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
    unittest.expect(o.cacheDuration, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    checkThreatEntry(o.threat);
    checkThreatEntryMetadata(o.threatEntryMetadata);
    unittest.expect(o.threatEntryType, unittest.equals('foo'));
    unittest.expect(o.threatType, unittest.equals('foo'));
  }
  buildCounterThreatMatch--;
}

core.int buildCounterThreatSource = 0;
api.ThreatSource buildThreatSource() {
  var o = api.ThreatSource();
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
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterThreatSource--;
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  var o = api.UserInfo();
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
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterUserInfo--;
}

void main() {
  unittest.group('obj-schema-Checksum', () {
    unittest.test('to-json--from-json', () {
      var o = buildChecksum();
      var od = api.Checksum.fromJson(o.toJson());
      checkChecksum(od);
    });
  });

  unittest.group('obj-schema-ClientInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientInfo();
      var od = api.ClientInfo.fromJson(o.toJson());
      checkClientInfo(od);
    });
  });

  unittest.group('obj-schema-Constraints', () {
    unittest.test('to-json--from-json', () {
      var o = buildConstraints();
      var od = api.Constraints.fromJson(o.toJson());
      checkConstraints(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FetchThreatListUpdatesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFetchThreatListUpdatesRequest();
      var od = api.FetchThreatListUpdatesRequest.fromJson(o.toJson());
      checkFetchThreatListUpdatesRequest(od);
    });
  });

  unittest.group('obj-schema-FetchThreatListUpdatesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFetchThreatListUpdatesResponse();
      var od = api.FetchThreatListUpdatesResponse.fromJson(o.toJson());
      checkFetchThreatListUpdatesResponse(od);
    });
  });

  unittest.group('obj-schema-FindFullHashesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindFullHashesRequest();
      var od = api.FindFullHashesRequest.fromJson(o.toJson());
      checkFindFullHashesRequest(od);
    });
  });

  unittest.group('obj-schema-FindFullHashesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindFullHashesResponse();
      var od = api.FindFullHashesResponse.fromJson(o.toJson());
      checkFindFullHashesResponse(od);
    });
  });

  unittest.group('obj-schema-FindThreatMatchesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindThreatMatchesRequest();
      var od = api.FindThreatMatchesRequest.fromJson(o.toJson());
      checkFindThreatMatchesRequest(od);
    });
  });

  unittest.group('obj-schema-FindThreatMatchesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFindThreatMatchesResponse();
      var od = api.FindThreatMatchesResponse.fromJson(o.toJson());
      checkFindThreatMatchesResponse(od);
    });
  });

  unittest.group('obj-schema-ListThreatListsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListThreatListsResponse();
      var od = api.ListThreatListsResponse.fromJson(o.toJson());
      checkListThreatListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUpdateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUpdateRequest();
      var od = api.ListUpdateRequest.fromJson(o.toJson());
      checkListUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-ListUpdateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUpdateResponse();
      var od = api.ListUpdateResponse.fromJson(o.toJson());
      checkListUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-MetadataEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadataEntry();
      var od = api.MetadataEntry.fromJson(o.toJson());
      checkMetadataEntry(od);
    });
  });

  unittest.group('obj-schema-RawHashes', () {
    unittest.test('to-json--from-json', () {
      var o = buildRawHashes();
      var od = api.RawHashes.fromJson(o.toJson());
      checkRawHashes(od);
    });
  });

  unittest.group('obj-schema-RawIndices', () {
    unittest.test('to-json--from-json', () {
      var o = buildRawIndices();
      var od = api.RawIndices.fromJson(o.toJson());
      checkRawIndices(od);
    });
  });

  unittest.group('obj-schema-RiceDeltaEncoding', () {
    unittest.test('to-json--from-json', () {
      var o = buildRiceDeltaEncoding();
      var od = api.RiceDeltaEncoding.fromJson(o.toJson());
      checkRiceDeltaEncoding(od);
    });
  });

  unittest.group('obj-schema-ThreatEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatEntry();
      var od = api.ThreatEntry.fromJson(o.toJson());
      checkThreatEntry(od);
    });
  });

  unittest.group('obj-schema-ThreatEntryMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatEntryMetadata();
      var od = api.ThreatEntryMetadata.fromJson(o.toJson());
      checkThreatEntryMetadata(od);
    });
  });

  unittest.group('obj-schema-ThreatEntrySet', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatEntrySet();
      var od = api.ThreatEntrySet.fromJson(o.toJson());
      checkThreatEntrySet(od);
    });
  });

  unittest.group('obj-schema-ThreatHit', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatHit();
      var od = api.ThreatHit.fromJson(o.toJson());
      checkThreatHit(od);
    });
  });

  unittest.group('obj-schema-ThreatInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatInfo();
      var od = api.ThreatInfo.fromJson(o.toJson());
      checkThreatInfo(od);
    });
  });

  unittest.group('obj-schema-ThreatListDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatListDescriptor();
      var od = api.ThreatListDescriptor.fromJson(o.toJson());
      checkThreatListDescriptor(od);
    });
  });

  unittest.group('obj-schema-ThreatMatch', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatMatch();
      var od = api.ThreatMatch.fromJson(o.toJson());
      checkThreatMatch(od);
    });
  });

  unittest.group('obj-schema-ThreatSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildThreatSource();
      var od = api.ThreatSource.fromJson(o.toJson());
      checkThreatSource(od);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserInfo();
      var od = api.UserInfo.fromJson(o.toJson());
      checkUserInfo(od);
    });
  });

  unittest.group('resource-EncodedFullHashesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EncodedFullHashesResourceApi res =
          api.SafebrowsingApi(mock).encodedFullHashes;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildFindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_encodedRequest,
              clientId: arg_clientId,
              clientVersion: arg_clientVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFindFullHashesResponse(response);
      })));
    });
  });

  unittest.group('resource-EncodedUpdatesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EncodedUpdatesResourceApi res =
          api.SafebrowsingApi(mock).encodedUpdates;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildFetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_encodedRequest,
              clientId: arg_clientId,
              clientVersion: arg_clientVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFetchThreatListUpdatesResponse(response);
      })));
    });
  });

  unittest.group('resource-FullHashesResourceApi', () {
    unittest.test('method--find', () {
      var mock = HttpServerMock();
      api.FullHashesResourceApi res = api.SafebrowsingApi(mock).fullHashes;
      var arg_request = buildFindFullHashesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FindFullHashesRequest.fromJson(json);
        checkFindFullHashesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildFindFullHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .find(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFindFullHashesResponse(response);
      })));
    });
  });

  unittest.group('resource-ThreatHitsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ThreatHitsResourceApi res = api.SafebrowsingApi(mock).threatHits;
      var arg_request = buildThreatHit();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ThreatHit.fromJson(json);
        checkThreatHit(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group('resource-ThreatListUpdatesResourceApi', () {
    unittest.test('method--fetch', () {
      var mock = HttpServerMock();
      api.ThreatListUpdatesResourceApi res =
          api.SafebrowsingApi(mock).threatListUpdates;
      var arg_request = buildFetchThreatListUpdatesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FetchThreatListUpdatesRequest.fromJson(json);
        checkFetchThreatListUpdatesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildFetchThreatListUpdatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFetchThreatListUpdatesResponse(response);
      })));
    });
  });

  unittest.group('resource-ThreatListsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ThreatListsResourceApi res = api.SafebrowsingApi(mock).threatLists;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListThreatListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkListThreatListsResponse(response);
      })));
    });
  });

  unittest.group('resource-ThreatMatchesResourceApi', () {
    unittest.test('method--find', () {
      var mock = HttpServerMock();
      api.ThreatMatchesResourceApi res =
          api.SafebrowsingApi(mock).threatMatches;
      var arg_request = buildFindThreatMatchesRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FindThreatMatchesRequest.fromJson(json);
        checkFindThreatMatchesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildFindThreatMatchesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .find(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFindThreatMatchesResponse(response);
      })));
    });
  });
}
