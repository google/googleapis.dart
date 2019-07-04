library googleapis.civicinfo.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/civicinfo/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed4265() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed4265(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterAdministrationRegion = 0;
buildAdministrationRegion() {
  var o = new api.AdministrationRegion();
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    o.electionAdministrationBody = buildAdministrativeBody();
    o.id = "foo";
    o.localJurisdiction = buildAdministrationRegion();
    o.name = "foo";
    o.sources = buildUnnamed4265();
  }
  buildCounterAdministrationRegion--;
  return o;
}

checkAdministrationRegion(api.AdministrationRegion o) {
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    checkAdministrativeBody(o.electionAdministrationBody);
    unittest.expect(o.id, unittest.equals('foo'));
    checkAdministrationRegion(o.localJurisdiction);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4265(o.sources);
  }
  buildCounterAdministrationRegion--;
}

buildUnnamed4266() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4267() {
  var o = new core.List<api.ElectionOfficial>();
  o.add(buildElectionOfficial());
  o.add(buildElectionOfficial());
  return o;
}

checkUnnamed4267(core.List<api.ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElectionOfficial(o[0]);
  checkElectionOfficial(o[1]);
}

buildUnnamed4268() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4268(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdministrativeBody = 0;
buildAdministrativeBody() {
  var o = new api.AdministrativeBody();
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    o.absenteeVotingInfoUrl = "foo";
    o.addressLines = buildUnnamed4266();
    o.ballotInfoUrl = "foo";
    o.correspondenceAddress = buildSimpleAddressType();
    o.electionInfoUrl = "foo";
    o.electionOfficials = buildUnnamed4267();
    o.electionRegistrationConfirmationUrl = "foo";
    o.electionRegistrationUrl = "foo";
    o.electionRulesUrl = "foo";
    o.hoursOfOperation = "foo";
    o.name = "foo";
    o.physicalAddress = buildSimpleAddressType();
    o.voterServices = buildUnnamed4268();
    o.votingLocationFinderUrl = "foo";
  }
  buildCounterAdministrativeBody--;
  return o;
}

checkAdministrativeBody(api.AdministrativeBody o) {
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    unittest.expect(o.absenteeVotingInfoUrl, unittest.equals('foo'));
    checkUnnamed4266(o.addressLines);
    unittest.expect(o.ballotInfoUrl, unittest.equals('foo'));
    checkSimpleAddressType(o.correspondenceAddress);
    unittest.expect(o.electionInfoUrl, unittest.equals('foo'));
    checkUnnamed4267(o.electionOfficials);
    unittest.expect(
        o.electionRegistrationConfirmationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRegistrationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRulesUrl, unittest.equals('foo'));
    unittest.expect(o.hoursOfOperation, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkSimpleAddressType(o.physicalAddress);
    checkUnnamed4268(o.voterServices);
    unittest.expect(o.votingLocationFinderUrl, unittest.equals('foo'));
  }
  buildCounterAdministrativeBody--;
}

buildUnnamed4269() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed4269(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.int buildCounterCandidate = 0;
buildCandidate() {
  var o = new api.Candidate();
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    o.candidateUrl = "foo";
    o.channels = buildUnnamed4269();
    o.email = "foo";
    o.name = "foo";
    o.orderOnBallot = "foo";
    o.party = "foo";
    o.phone = "foo";
    o.photoUrl = "foo";
  }
  buildCounterCandidate--;
  return o;
}

checkCandidate(api.Candidate o) {
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    unittest.expect(o.candidateUrl, unittest.equals('foo'));
    checkUnnamed4269(o.channels);
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orderOnBallot, unittest.equals('foo'));
    unittest.expect(o.party, unittest.equals('foo'));
    unittest.expect(o.phone, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
  }
  buildCounterCandidate--;
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

buildUnnamed4270() {
  var o = new core.List<api.Candidate>();
  o.add(buildCandidate());
  o.add(buildCandidate());
  return o;
}

checkUnnamed4270(core.List<api.Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandidate(o[0]);
  checkCandidate(o[1]);
}

buildUnnamed4271() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4272() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4273() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4274() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed4274(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterContest = 0;
buildContest() {
  var o = new api.Contest();
  buildCounterContest++;
  if (buildCounterContest < 3) {
    o.ballotPlacement = "foo";
    o.ballotTitle = "foo";
    o.candidates = buildUnnamed4270();
    o.district = buildElectoralDistrict();
    o.electorateSpecifications = "foo";
    o.id = "foo";
    o.level = buildUnnamed4271();
    o.numberElected = "foo";
    o.numberVotingFor = "foo";
    o.office = "foo";
    o.primaryParty = "foo";
    o.referendumBallotResponses = buildUnnamed4272();
    o.referendumBrief = "foo";
    o.referendumConStatement = "foo";
    o.referendumEffectOfAbstain = "foo";
    o.referendumPassageThreshold = "foo";
    o.referendumProStatement = "foo";
    o.referendumSubtitle = "foo";
    o.referendumText = "foo";
    o.referendumTitle = "foo";
    o.referendumUrl = "foo";
    o.roles = buildUnnamed4273();
    o.sources = buildUnnamed4274();
    o.special = "foo";
    o.type = "foo";
  }
  buildCounterContest--;
  return o;
}

checkContest(api.Contest o) {
  buildCounterContest++;
  if (buildCounterContest < 3) {
    unittest.expect(o.ballotPlacement, unittest.equals('foo'));
    unittest.expect(o.ballotTitle, unittest.equals('foo'));
    checkUnnamed4270(o.candidates);
    checkElectoralDistrict(o.district);
    unittest.expect(o.electorateSpecifications, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4271(o.level);
    unittest.expect(o.numberElected, unittest.equals('foo'));
    unittest.expect(o.numberVotingFor, unittest.equals('foo'));
    unittest.expect(o.office, unittest.equals('foo'));
    unittest.expect(o.primaryParty, unittest.equals('foo'));
    checkUnnamed4272(o.referendumBallotResponses);
    unittest.expect(o.referendumBrief, unittest.equals('foo'));
    unittest.expect(o.referendumConStatement, unittest.equals('foo'));
    unittest.expect(o.referendumEffectOfAbstain, unittest.equals('foo'));
    unittest.expect(o.referendumPassageThreshold, unittest.equals('foo'));
    unittest.expect(o.referendumProStatement, unittest.equals('foo'));
    unittest.expect(o.referendumSubtitle, unittest.equals('foo'));
    unittest.expect(o.referendumText, unittest.equals('foo'));
    unittest.expect(o.referendumTitle, unittest.equals('foo'));
    unittest.expect(o.referendumUrl, unittest.equals('foo'));
    checkUnnamed4273(o.roles);
    checkUnnamed4274(o.sources);
    unittest.expect(o.special, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterContest--;
}

core.int buildCounterContextParams = 0;
buildContextParams() {
  var o = new api.ContextParams();
  buildCounterContextParams++;
  if (buildCounterContextParams < 3) {
    o.clientProfile = "foo";
  }
  buildCounterContextParams--;
  return o;
}

checkContextParams(api.ContextParams o) {
  buildCounterContextParams++;
  if (buildCounterContextParams < 3) {
    unittest.expect(o.clientProfile, unittest.equals('foo'));
  }
  buildCounterContextParams--;
}

core.int buildCounterDivisionRepresentativeInfoRequest = 0;
buildDivisionRepresentativeInfoRequest() {
  var o = new api.DivisionRepresentativeInfoRequest();
  buildCounterDivisionRepresentativeInfoRequest++;
  if (buildCounterDivisionRepresentativeInfoRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterDivisionRepresentativeInfoRequest--;
  return o;
}

checkDivisionRepresentativeInfoRequest(
    api.DivisionRepresentativeInfoRequest o) {
  buildCounterDivisionRepresentativeInfoRequest++;
  if (buildCounterDivisionRepresentativeInfoRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterDivisionRepresentativeInfoRequest--;
}

core.int buildCounterDivisionSearchRequest = 0;
buildDivisionSearchRequest() {
  var o = new api.DivisionSearchRequest();
  buildCounterDivisionSearchRequest++;
  if (buildCounterDivisionSearchRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterDivisionSearchRequest--;
  return o;
}

checkDivisionSearchRequest(api.DivisionSearchRequest o) {
  buildCounterDivisionSearchRequest++;
  if (buildCounterDivisionSearchRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterDivisionSearchRequest--;
}

buildUnnamed4275() {
  var o = new core.List<api.DivisionSearchResult>();
  o.add(buildDivisionSearchResult());
  o.add(buildDivisionSearchResult());
  return o;
}

checkUnnamed4275(core.List<api.DivisionSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDivisionSearchResult(o[0]);
  checkDivisionSearchResult(o[1]);
}

core.int buildCounterDivisionSearchResponse = 0;
buildDivisionSearchResponse() {
  var o = new api.DivisionSearchResponse();
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    o.kind = "foo";
    o.results = buildUnnamed4275();
  }
  buildCounterDivisionSearchResponse--;
  return o;
}

checkDivisionSearchResponse(api.DivisionSearchResponse o) {
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4275(o.results);
  }
  buildCounterDivisionSearchResponse--;
}

buildUnnamed4276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDivisionSearchResult = 0;
buildDivisionSearchResult() {
  var o = new api.DivisionSearchResult();
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    o.aliases = buildUnnamed4276();
    o.name = "foo";
    o.ocdId = "foo";
  }
  buildCounterDivisionSearchResult--;
  return o;
}

checkDivisionSearchResult(api.DivisionSearchResult o) {
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    checkUnnamed4276(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ocdId, unittest.equals('foo'));
  }
  buildCounterDivisionSearchResult--;
}

core.int buildCounterElection = 0;
buildElection() {
  var o = new api.Election();
  buildCounterElection++;
  if (buildCounterElection < 3) {
    o.electionDay = "foo";
    o.id = "foo";
    o.name = "foo";
    o.ocdDivisionId = "foo";
  }
  buildCounterElection--;
  return o;
}

checkElection(api.Election o) {
  buildCounterElection++;
  if (buildCounterElection < 3) {
    unittest.expect(o.electionDay, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ocdDivisionId, unittest.equals('foo'));
  }
  buildCounterElection--;
}

core.int buildCounterElectionOfficial = 0;
buildElectionOfficial() {
  var o = new api.ElectionOfficial();
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    o.emailAddress = "foo";
    o.faxNumber = "foo";
    o.name = "foo";
    o.officePhoneNumber = "foo";
    o.title = "foo";
  }
  buildCounterElectionOfficial--;
  return o;
}

checkElectionOfficial(api.ElectionOfficial o) {
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.faxNumber, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.officePhoneNumber, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterElectionOfficial--;
}

core.int buildCounterElectionsQueryRequest = 0;
buildElectionsQueryRequest() {
  var o = new api.ElectionsQueryRequest();
  buildCounterElectionsQueryRequest++;
  if (buildCounterElectionsQueryRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterElectionsQueryRequest--;
  return o;
}

checkElectionsQueryRequest(api.ElectionsQueryRequest o) {
  buildCounterElectionsQueryRequest++;
  if (buildCounterElectionsQueryRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterElectionsQueryRequest--;
}

buildUnnamed4277() {
  var o = new core.List<api.Election>();
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

checkUnnamed4277(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

core.int buildCounterElectionsQueryResponse = 0;
buildElectionsQueryResponse() {
  var o = new api.ElectionsQueryResponse();
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    o.elections = buildUnnamed4277();
    o.kind = "foo";
  }
  buildCounterElectionsQueryResponse--;
  return o;
}

checkElectionsQueryResponse(api.ElectionsQueryResponse o) {
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    checkUnnamed4277(o.elections);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterElectionsQueryResponse--;
}

core.int buildCounterElectoralDistrict = 0;
buildElectoralDistrict() {
  var o = new api.ElectoralDistrict();
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    o.id = "foo";
    o.kgForeignKey = "foo";
    o.name = "foo";
    o.scope = "foo";
  }
  buildCounterElectoralDistrict--;
  return o;
}

checkElectoralDistrict(api.ElectoralDistrict o) {
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kgForeignKey, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterElectoralDistrict--;
}

core.int buildCounterFieldMetadataProto = 0;
buildFieldMetadataProto() {
  var o = new api.FieldMetadataProto();
  buildCounterFieldMetadataProto++;
  if (buildCounterFieldMetadataProto < 3) {
    o.internal = buildInternalFieldMetadataProto();
  }
  buildCounterFieldMetadataProto--;
  return o;
}

checkFieldMetadataProto(api.FieldMetadataProto o) {
  buildCounterFieldMetadataProto++;
  if (buildCounterFieldMetadataProto < 3) {
    checkInternalFieldMetadataProto(o.internal);
  }
  buildCounterFieldMetadataProto--;
}

buildUnnamed4278() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4278(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4279() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed4279(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGeographicDivision = 0;
buildGeographicDivision() {
  var o = new api.GeographicDivision();
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed4278();
    o.name = "foo";
    o.officeIndices = buildUnnamed4279();
  }
  buildCounterGeographicDivision--;
  return o;
}

checkGeographicDivision(api.GeographicDivision o) {
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    checkUnnamed4278(o.alsoKnownAs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4279(o.officeIndices);
  }
  buildCounterGeographicDivision--;
}

core.int buildCounterInternalFieldMetadataProto = 0;
buildInternalFieldMetadataProto() {
  var o = new api.InternalFieldMetadataProto();
  buildCounterInternalFieldMetadataProto++;
  if (buildCounterInternalFieldMetadataProto < 3) {
    o.isAuto = true;
    o.sourceSummary = buildInternalSourceSummaryProto();
  }
  buildCounterInternalFieldMetadataProto--;
  return o;
}

checkInternalFieldMetadataProto(api.InternalFieldMetadataProto o) {
  buildCounterInternalFieldMetadataProto++;
  if (buildCounterInternalFieldMetadataProto < 3) {
    unittest.expect(o.isAuto, unittest.isTrue);
    checkInternalSourceSummaryProto(o.sourceSummary);
  }
  buildCounterInternalFieldMetadataProto--;
}

core.int buildCounterInternalSourceSummaryProto = 0;
buildInternalSourceSummaryProto() {
  var o = new api.InternalSourceSummaryProto();
  buildCounterInternalSourceSummaryProto++;
  if (buildCounterInternalSourceSummaryProto < 3) {
    o.dataset = "foo";
    o.provider = "foo";
  }
  buildCounterInternalSourceSummaryProto--;
  return o;
}

checkInternalSourceSummaryProto(api.InternalSourceSummaryProto o) {
  buildCounterInternalSourceSummaryProto++;
  if (buildCounterInternalSourceSummaryProto < 3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.provider, unittest.equals('foo'));
  }
  buildCounterInternalSourceSummaryProto--;
}

core.int buildCounterLivegraphBacktraceRecordInfo = 0;
buildLivegraphBacktraceRecordInfo() {
  var o = new api.LivegraphBacktraceRecordInfo();
  buildCounterLivegraphBacktraceRecordInfo++;
  if (buildCounterLivegraphBacktraceRecordInfo < 3) {
    o.dataSourcePublishMsec = "foo";
    o.expId = "foo";
    o.expInfo = buildLivegraphBacktraceRecordInfoExpInfo();
    o.isRecon = true;
    o.isWlmThrottled = true;
    o.numberOfTriples = "foo";
    o.priority = "foo";
    o.process = "foo";
    o.proxyReceiveMsec = "foo";
    o.proxySentMsec = "foo";
    o.recordId = "foo";
    o.shouldMonitorLatency = true;
    o.subscriberReceiveMsec = "foo";
    o.topicBuildFinishMsec = "foo";
    o.topicBuildStartMsec = "foo";
    o.version = "foo";
  }
  buildCounterLivegraphBacktraceRecordInfo--;
  return o;
}

checkLivegraphBacktraceRecordInfo(api.LivegraphBacktraceRecordInfo o) {
  buildCounterLivegraphBacktraceRecordInfo++;
  if (buildCounterLivegraphBacktraceRecordInfo < 3) {
    unittest.expect(o.dataSourcePublishMsec, unittest.equals('foo'));
    unittest.expect(o.expId, unittest.equals('foo'));
    checkLivegraphBacktraceRecordInfoExpInfo(o.expInfo);
    unittest.expect(o.isRecon, unittest.isTrue);
    unittest.expect(o.isWlmThrottled, unittest.isTrue);
    unittest.expect(o.numberOfTriples, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals('foo'));
    unittest.expect(o.process, unittest.equals('foo'));
    unittest.expect(o.proxyReceiveMsec, unittest.equals('foo'));
    unittest.expect(o.proxySentMsec, unittest.equals('foo'));
    unittest.expect(o.recordId, unittest.equals('foo'));
    unittest.expect(o.shouldMonitorLatency, unittest.isTrue);
    unittest.expect(o.subscriberReceiveMsec, unittest.equals('foo'));
    unittest.expect(o.topicBuildFinishMsec, unittest.equals('foo'));
    unittest.expect(o.topicBuildStartMsec, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterLivegraphBacktraceRecordInfo--;
}

buildUnnamed4280() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4280(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLivegraphBacktraceRecordInfoExpInfo = 0;
buildLivegraphBacktraceRecordInfoExpInfo() {
  var o = new api.LivegraphBacktraceRecordInfoExpInfo();
  buildCounterLivegraphBacktraceRecordInfoExpInfo++;
  if (buildCounterLivegraphBacktraceRecordInfoExpInfo < 3) {
    o.deletedIns = buildUnnamed4280();
  }
  buildCounterLivegraphBacktraceRecordInfoExpInfo--;
  return o;
}

checkLivegraphBacktraceRecordInfoExpInfo(
    api.LivegraphBacktraceRecordInfoExpInfo o) {
  buildCounterLivegraphBacktraceRecordInfoExpInfo++;
  if (buildCounterLivegraphBacktraceRecordInfoExpInfo < 3) {
    checkUnnamed4280(o.deletedIns);
  }
  buildCounterLivegraphBacktraceRecordInfoExpInfo--;
}

core.int buildCounterMessageSet = 0;
buildMessageSet() {
  var o = new api.MessageSet();
  buildCounterMessageSet++;
  if (buildCounterMessageSet < 3) {
    o.recordMessageSetExt = buildLivegraphBacktraceRecordInfo();
  }
  buildCounterMessageSet--;
  return o;
}

checkMessageSet(api.MessageSet o) {
  buildCounterMessageSet++;
  if (buildCounterMessageSet < 3) {
    checkLivegraphBacktraceRecordInfo(o.recordMessageSetExt);
  }
  buildCounterMessageSet--;
}

buildUnnamed4281() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4281(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4282() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed4282(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed4283() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4283(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4284() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed4284(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterOffice = 0;
buildOffice() {
  var o = new api.Office();
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    o.divisionId = "foo";
    o.levels = buildUnnamed4281();
    o.name = "foo";
    o.officialIndices = buildUnnamed4282();
    o.roles = buildUnnamed4283();
    o.sources = buildUnnamed4284();
  }
  buildCounterOffice--;
  return o;
}

checkOffice(api.Office o) {
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    unittest.expect(o.divisionId, unittest.equals('foo'));
    checkUnnamed4281(o.levels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4282(o.officialIndices);
    checkUnnamed4283(o.roles);
    checkUnnamed4284(o.sources);
  }
  buildCounterOffice--;
}

buildUnnamed4285() {
  var o = new core.List<api.SimpleAddressType>();
  o.add(buildSimpleAddressType());
  o.add(buildSimpleAddressType());
  return o;
}

checkUnnamed4285(core.List<api.SimpleAddressType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleAddressType(o[0]);
  checkSimpleAddressType(o[1]);
}

buildUnnamed4286() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed4286(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

buildUnnamed4287() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4287(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4288() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4288(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4289() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4289(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOfficial = 0;
buildOfficial() {
  var o = new api.Official();
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    o.address = buildUnnamed4285();
    o.channels = buildUnnamed4286();
    o.emails = buildUnnamed4287();
    o.name = "foo";
    o.party = "foo";
    o.phones = buildUnnamed4288();
    o.photoUrl = "foo";
    o.urls = buildUnnamed4289();
  }
  buildCounterOfficial--;
  return o;
}

checkOfficial(api.Official o) {
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    checkUnnamed4285(o.address);
    checkUnnamed4286(o.channels);
    checkUnnamed4287(o.emails);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.party, unittest.equals('foo'));
    checkUnnamed4288(o.phones);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed4289(o.urls);
  }
  buildCounterOfficial--;
}

core.int buildCounterPointProto = 0;
buildPointProto() {
  var o = new api.PointProto();
  buildCounterPointProto++;
  if (buildCounterPointProto < 3) {
    o.latE7 = 42;
    o.lngE7 = 42;
    o.metadata = buildFieldMetadataProto();
    o.temporaryData = buildMessageSet();
  }
  buildCounterPointProto--;
  return o;
}

checkPointProto(api.PointProto o) {
  buildCounterPointProto++;
  if (buildCounterPointProto < 3) {
    unittest.expect(o.latE7, unittest.equals(42));
    unittest.expect(o.lngE7, unittest.equals(42));
    checkFieldMetadataProto(o.metadata);
    checkMessageSet(o.temporaryData);
  }
  buildCounterPointProto--;
}

buildUnnamed4290() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed4290(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterPollingLocation = 0;
buildPollingLocation() {
  var o = new api.PollingLocation();
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    o.address = buildSimpleAddressType();
    o.endDate = "foo";
    o.id = "foo";
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.name = "foo";
    o.notes = "foo";
    o.pollingHours = "foo";
    o.sources = buildUnnamed4290();
    o.startDate = "foo";
    o.voterServices = "foo";
  }
  buildCounterPollingLocation--;
  return o;
}

checkPollingLocation(api.PollingLocation o) {
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    checkSimpleAddressType(o.address);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.pollingHours, unittest.equals('foo'));
    checkUnnamed4290(o.sources);
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.voterServices, unittest.equals('foo'));
  }
  buildCounterPollingLocation--;
}

buildUnnamed4291() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4291(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
buildPostalAddress() {
  var o = new api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed4291();
    o.administrativeAreaName = "foo";
    o.countryName = "foo";
    o.countryNameCode = "foo";
    o.dependentLocalityName = "foo";
    o.dependentThoroughfareName = "foo";
    o.firmName = "foo";
    o.isDisputed = true;
    o.languageCode = "foo";
    o.localityName = "foo";
    o.postBoxNumber = "foo";
    o.postalCodeNumber = "foo";
    o.postalCodeNumberExtension = "foo";
    o.premiseName = "foo";
    o.recipientName = "foo";
    o.sortingCode = "foo";
    o.subAdministrativeAreaName = "foo";
    o.subPremiseName = "foo";
    o.thoroughfareName = "foo";
    o.thoroughfareNumber = "foo";
  }
  buildCounterPostalAddress--;
  return o;
}

checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed4291(o.addressLines);
    unittest.expect(o.administrativeAreaName, unittest.equals('foo'));
    unittest.expect(o.countryName, unittest.equals('foo'));
    unittest.expect(o.countryNameCode, unittest.equals('foo'));
    unittest.expect(o.dependentLocalityName, unittest.equals('foo'));
    unittest.expect(o.dependentThoroughfareName, unittest.equals('foo'));
    unittest.expect(o.firmName, unittest.equals('foo'));
    unittest.expect(o.isDisputed, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.localityName, unittest.equals('foo'));
    unittest.expect(o.postBoxNumber, unittest.equals('foo'));
    unittest.expect(o.postalCodeNumber, unittest.equals('foo'));
    unittest.expect(o.postalCodeNumberExtension, unittest.equals('foo'));
    unittest.expect(o.premiseName, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.subAdministrativeAreaName, unittest.equals('foo'));
    unittest.expect(o.subPremiseName, unittest.equals('foo'));
    unittest.expect(o.thoroughfareName, unittest.equals('foo'));
    unittest.expect(o.thoroughfareNumber, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
}

core.int buildCounterProvenance = 0;
buildProvenance() {
  var o = new api.Provenance();
  buildCounterProvenance++;
  if (buildCounterProvenance < 3) {
    o.collidedSegmentSource = buildStreetSegmentList();
    o.ctclContestUuid = "foo";
    o.ctclOfficeUuid = "foo";
    o.datasetId = "foo";
    o.precinctId = "foo";
    o.precinctSplitId = "foo";
    o.tsStreetSegmentId = "foo";
    o.vip5PrecinctId = "foo";
    o.vip5StreetSegmentId = "foo";
    o.vipStreetSegmentId = "foo";
  }
  buildCounterProvenance--;
  return o;
}

checkProvenance(api.Provenance o) {
  buildCounterProvenance++;
  if (buildCounterProvenance < 3) {
    checkStreetSegmentList(o.collidedSegmentSource);
    unittest.expect(o.ctclContestUuid, unittest.equals('foo'));
    unittest.expect(o.ctclOfficeUuid, unittest.equals('foo'));
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.precinctId, unittest.equals('foo'));
    unittest.expect(o.precinctSplitId, unittest.equals('foo'));
    unittest.expect(o.tsStreetSegmentId, unittest.equals('foo'));
    unittest.expect(o.vip5PrecinctId, unittest.equals('foo'));
    unittest.expect(o.vip5StreetSegmentId, unittest.equals('foo'));
    unittest.expect(o.vipStreetSegmentId, unittest.equals('foo'));
  }
  buildCounterProvenance--;
}

buildUnnamed4292() {
  var o = new core.Map<core.String, api.GeographicDivision>();
  o["x"] = buildGeographicDivision();
  o["y"] = buildGeographicDivision();
  return o;
}

checkUnnamed4292(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o["x"]);
  checkGeographicDivision(o["y"]);
}

buildUnnamed4293() {
  var o = new core.List<api.Office>();
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

checkUnnamed4293(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

buildUnnamed4294() {
  var o = new core.List<api.Official>();
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

checkUnnamed4294(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoData = 0;
buildRepresentativeInfoData() {
  var o = new api.RepresentativeInfoData();
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    o.divisions = buildUnnamed4292();
    o.offices = buildUnnamed4293();
    o.officials = buildUnnamed4294();
  }
  buildCounterRepresentativeInfoData--;
  return o;
}

checkRepresentativeInfoData(api.RepresentativeInfoData o) {
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    checkUnnamed4292(o.divisions);
    checkUnnamed4293(o.offices);
    checkUnnamed4294(o.officials);
  }
  buildCounterRepresentativeInfoData--;
}

core.int buildCounterRepresentativeInfoRequest = 0;
buildRepresentativeInfoRequest() {
  var o = new api.RepresentativeInfoRequest();
  buildCounterRepresentativeInfoRequest++;
  if (buildCounterRepresentativeInfoRequest < 3) {
    o.contextParams = buildContextParams();
  }
  buildCounterRepresentativeInfoRequest--;
  return o;
}

checkRepresentativeInfoRequest(api.RepresentativeInfoRequest o) {
  buildCounterRepresentativeInfoRequest++;
  if (buildCounterRepresentativeInfoRequest < 3) {
    checkContextParams(o.contextParams);
  }
  buildCounterRepresentativeInfoRequest--;
}

buildUnnamed4295() {
  var o = new core.Map<core.String, api.GeographicDivision>();
  o["x"] = buildGeographicDivision();
  o["y"] = buildGeographicDivision();
  return o;
}

checkUnnamed4295(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o["x"]);
  checkGeographicDivision(o["y"]);
}

buildUnnamed4296() {
  var o = new core.List<api.Office>();
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

checkUnnamed4296(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

buildUnnamed4297() {
  var o = new core.List<api.Official>();
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

checkUnnamed4297(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoResponse = 0;
buildRepresentativeInfoResponse() {
  var o = new api.RepresentativeInfoResponse();
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    o.divisions = buildUnnamed4295();
    o.kind = "foo";
    o.normalizedInput = buildSimpleAddressType();
    o.offices = buildUnnamed4296();
    o.officials = buildUnnamed4297();
  }
  buildCounterRepresentativeInfoResponse--;
  return o;
}

checkRepresentativeInfoResponse(api.RepresentativeInfoResponse o) {
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    checkUnnamed4295(o.divisions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSimpleAddressType(o.normalizedInput);
    checkUnnamed4296(o.offices);
    checkUnnamed4297(o.officials);
  }
  buildCounterRepresentativeInfoResponse--;
}

core.int buildCounterSimpleAddressType = 0;
buildSimpleAddressType() {
  var o = new api.SimpleAddressType();
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    o.city = "foo";
    o.line1 = "foo";
    o.line2 = "foo";
    o.line3 = "foo";
    o.locationName = "foo";
    o.state = "foo";
    o.zip = "foo";
  }
  buildCounterSimpleAddressType--;
  return o;
}

checkSimpleAddressType(api.SimpleAddressType o) {
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.line1, unittest.equals('foo'));
    unittest.expect(o.line2, unittest.equals('foo'));
    unittest.expect(o.line3, unittest.equals('foo'));
    unittest.expect(o.locationName, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.zip, unittest.equals('foo'));
  }
  buildCounterSimpleAddressType--;
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.name = "foo";
    o.official = true;
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.official, unittest.isTrue);
  }
  buildCounterSource--;
}

buildUnnamed4298() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4298(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4299() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4299(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4300() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4300(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4301() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4302() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4302(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4303() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4303(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4304() {
  var o = new core.List<api.Provenance>();
  o.add(buildProvenance());
  o.add(buildProvenance());
  return o;
}

checkUnnamed4304(core.List<api.Provenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProvenance(o[0]);
  checkProvenance(o[1]);
}

buildUnnamed4305() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4305(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStreetSegment = 0;
buildStreetSegment() {
  var o = new api.StreetSegment();
  buildCounterStreetSegment++;
  if (buildCounterStreetSegment < 3) {
    o.administrationRegionIds = buildUnnamed4298();
    o.beforeGeocodeId = "foo";
    o.catalistUniquePrecinctCode = "foo";
    o.city = "foo";
    o.cityCouncilDistrict = "foo";
    o.congressionalDistrict = "foo";
    o.contestIds = buildUnnamed4299();
    o.countyCouncilDistrict = "foo";
    o.countyFips = "foo";
    o.datasetId = "foo";
    o.earlyVoteSiteByIds = buildUnnamed4300();
    o.endHouseNumber = "foo";
    o.geocodedPoint = buildPointProto();
    o.geographicDivisionOcdIds = buildUnnamed4301();
    o.id = "foo";
    o.judicialDistrict = "foo";
    o.mailOnly = true;
    o.municipalDistrict = "foo";
    o.ncoaAddress = "foo";
    o.oddOrEvens = buildUnnamed4302();
    o.originalId = "foo";
    o.pollinglocationByIds = buildUnnamed4303();
    o.precinctName = "foo";
    o.precinctOcdId = "foo";
    o.provenances = buildUnnamed4304();
    o.published = true;
    o.schoolDistrict = "foo";
    o.startHouseNumber = "foo";
    o.startLatE7 = "foo";
    o.startLngE7 = "foo";
    o.state = "foo";
    o.stateHouseDistrict = "foo";
    o.stateSenateDistrict = "foo";
    o.streetName = "foo";
    o.subAdministrativeAreaName = "foo";
    o.surrogateId = "foo";
    o.targetsmartUniquePrecinctCode = "foo";
    o.townshipDistrict = "foo";
    o.unitNumber = "foo";
    o.unitType = "foo";
    o.vanPrecinctCode = "foo";
    o.voterGeographicDivisionOcdIds = buildUnnamed4305();
    o.wardDistrict = "foo";
    o.wildcard = true;
    o.zip = "foo";
  }
  buildCounterStreetSegment--;
  return o;
}

checkStreetSegment(api.StreetSegment o) {
  buildCounterStreetSegment++;
  if (buildCounterStreetSegment < 3) {
    checkUnnamed4298(o.administrationRegionIds);
    unittest.expect(o.beforeGeocodeId, unittest.equals('foo'));
    unittest.expect(o.catalistUniquePrecinctCode, unittest.equals('foo'));
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.cityCouncilDistrict, unittest.equals('foo'));
    unittest.expect(o.congressionalDistrict, unittest.equals('foo'));
    checkUnnamed4299(o.contestIds);
    unittest.expect(o.countyCouncilDistrict, unittest.equals('foo'));
    unittest.expect(o.countyFips, unittest.equals('foo'));
    unittest.expect(o.datasetId, unittest.equals('foo'));
    checkUnnamed4300(o.earlyVoteSiteByIds);
    unittest.expect(o.endHouseNumber, unittest.equals('foo'));
    checkPointProto(o.geocodedPoint);
    checkUnnamed4301(o.geographicDivisionOcdIds);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.judicialDistrict, unittest.equals('foo'));
    unittest.expect(o.mailOnly, unittest.isTrue);
    unittest.expect(o.municipalDistrict, unittest.equals('foo'));
    unittest.expect(o.ncoaAddress, unittest.equals('foo'));
    checkUnnamed4302(o.oddOrEvens);
    unittest.expect(o.originalId, unittest.equals('foo'));
    checkUnnamed4303(o.pollinglocationByIds);
    unittest.expect(o.precinctName, unittest.equals('foo'));
    unittest.expect(o.precinctOcdId, unittest.equals('foo'));
    checkUnnamed4304(o.provenances);
    unittest.expect(o.published, unittest.isTrue);
    unittest.expect(o.schoolDistrict, unittest.equals('foo'));
    unittest.expect(o.startHouseNumber, unittest.equals('foo'));
    unittest.expect(o.startLatE7, unittest.equals('foo'));
    unittest.expect(o.startLngE7, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateHouseDistrict, unittest.equals('foo'));
    unittest.expect(o.stateSenateDistrict, unittest.equals('foo'));
    unittest.expect(o.streetName, unittest.equals('foo'));
    unittest.expect(o.subAdministrativeAreaName, unittest.equals('foo'));
    unittest.expect(o.surrogateId, unittest.equals('foo'));
    unittest.expect(o.targetsmartUniquePrecinctCode, unittest.equals('foo'));
    unittest.expect(o.townshipDistrict, unittest.equals('foo'));
    unittest.expect(o.unitNumber, unittest.equals('foo'));
    unittest.expect(o.unitType, unittest.equals('foo'));
    unittest.expect(o.vanPrecinctCode, unittest.equals('foo'));
    checkUnnamed4305(o.voterGeographicDivisionOcdIds);
    unittest.expect(o.wardDistrict, unittest.equals('foo'));
    unittest.expect(o.wildcard, unittest.isTrue);
    unittest.expect(o.zip, unittest.equals('foo'));
  }
  buildCounterStreetSegment--;
}

buildUnnamed4306() {
  var o = new core.List<api.StreetSegment>();
  o.add(buildStreetSegment());
  o.add(buildStreetSegment());
  return o;
}

checkUnnamed4306(core.List<api.StreetSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreetSegment(o[0]);
  checkStreetSegment(o[1]);
}

core.int buildCounterStreetSegmentList = 0;
buildStreetSegmentList() {
  var o = new api.StreetSegmentList();
  buildCounterStreetSegmentList++;
  if (buildCounterStreetSegmentList < 3) {
    o.segments = buildUnnamed4306();
  }
  buildCounterStreetSegmentList--;
  return o;
}

checkStreetSegmentList(api.StreetSegmentList o) {
  buildCounterStreetSegmentList++;
  if (buildCounterStreetSegmentList < 3) {
    checkUnnamed4306(o.segments);
  }
  buildCounterStreetSegmentList--;
}

core.int buildCounterVoterInfoRequest = 0;
buildVoterInfoRequest() {
  var o = new api.VoterInfoRequest();
  buildCounterVoterInfoRequest++;
  if (buildCounterVoterInfoRequest < 3) {
    o.contextParams = buildContextParams();
    o.voterInfoSegmentResult = buildVoterInfoSegmentResult();
  }
  buildCounterVoterInfoRequest--;
  return o;
}

checkVoterInfoRequest(api.VoterInfoRequest o) {
  buildCounterVoterInfoRequest++;
  if (buildCounterVoterInfoRequest < 3) {
    checkContextParams(o.contextParams);
    checkVoterInfoSegmentResult(o.voterInfoSegmentResult);
  }
  buildCounterVoterInfoRequest--;
}

buildUnnamed4307() {
  var o = new core.List<api.Contest>();
  o.add(buildContest());
  o.add(buildContest());
  return o;
}

checkUnnamed4307(core.List<api.Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContest(o[0]);
  checkContest(o[1]);
}

buildUnnamed4308() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed4308(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed4309() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed4309(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed4310() {
  var o = new core.List<api.Election>();
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

checkUnnamed4310(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

buildUnnamed4311() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed4311(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed4312() {
  var o = new core.List<api.StreetSegment>();
  o.add(buildStreetSegment());
  o.add(buildStreetSegment());
  return o;
}

checkUnnamed4312(core.List<api.StreetSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreetSegment(o[0]);
  checkStreetSegment(o[1]);
}

buildUnnamed4313() {
  var o = new core.List<api.AdministrationRegion>();
  o.add(buildAdministrationRegion());
  o.add(buildAdministrationRegion());
  return o;
}

checkUnnamed4313(core.List<api.AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrationRegion(o[0]);
  checkAdministrationRegion(o[1]);
}

core.int buildCounterVoterInfoResponse = 0;
buildVoterInfoResponse() {
  var o = new api.VoterInfoResponse();
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    o.contests = buildUnnamed4307();
    o.dropOffLocations = buildUnnamed4308();
    o.earlyVoteSites = buildUnnamed4309();
    o.election = buildElection();
    o.kind = "foo";
    o.mailOnly = true;
    o.normalizedInput = buildSimpleAddressType();
    o.otherElections = buildUnnamed4310();
    o.pollingLocations = buildUnnamed4311();
    o.precinctId = "foo";
    o.segments = buildUnnamed4312();
    o.state = buildUnnamed4313();
  }
  buildCounterVoterInfoResponse--;
  return o;
}

checkVoterInfoResponse(api.VoterInfoResponse o) {
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    checkUnnamed4307(o.contests);
    checkUnnamed4308(o.dropOffLocations);
    checkUnnamed4309(o.earlyVoteSites);
    checkElection(o.election);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mailOnly, unittest.isTrue);
    checkSimpleAddressType(o.normalizedInput);
    checkUnnamed4310(o.otherElections);
    checkUnnamed4311(o.pollingLocations);
    unittest.expect(o.precinctId, unittest.equals('foo'));
    checkUnnamed4312(o.segments);
    checkUnnamed4313(o.state);
  }
  buildCounterVoterInfoResponse--;
}

core.int buildCounterVoterInfoSegmentResult = 0;
buildVoterInfoSegmentResult() {
  var o = new api.VoterInfoSegmentResult();
  buildCounterVoterInfoSegmentResult++;
  if (buildCounterVoterInfoSegmentResult < 3) {
    o.generatedMillis = "foo";
    o.postalAddress = buildPostalAddress();
    o.request = buildVoterInfoRequest();
    o.response = buildVoterInfoResponse();
  }
  buildCounterVoterInfoSegmentResult--;
  return o;
}

checkVoterInfoSegmentResult(api.VoterInfoSegmentResult o) {
  buildCounterVoterInfoSegmentResult++;
  if (buildCounterVoterInfoSegmentResult < 3) {
    unittest.expect(o.generatedMillis, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress);
    checkVoterInfoRequest(o.request);
    checkVoterInfoResponse(o.response);
  }
  buildCounterVoterInfoSegmentResult--;
}

buildUnnamed4314() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4315() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4315(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4316() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4316(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4317() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4317(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AdministrationRegion", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministrationRegion();
      var od = new api.AdministrationRegion.fromJson(o.toJson());
      checkAdministrationRegion(od);
    });
  });

  unittest.group("obj-schema-AdministrativeBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministrativeBody();
      var od = new api.AdministrativeBody.fromJson(o.toJson());
      checkAdministrativeBody(od);
    });
  });

  unittest.group("obj-schema-Candidate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCandidate();
      var od = new api.Candidate.fromJson(o.toJson());
      checkCandidate(od);
    });
  });

  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });

  unittest.group("obj-schema-Contest", () {
    unittest.test("to-json--from-json", () {
      var o = buildContest();
      var od = new api.Contest.fromJson(o.toJson());
      checkContest(od);
    });
  });

  unittest.group("obj-schema-ContextParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildContextParams();
      var od = new api.ContextParams.fromJson(o.toJson());
      checkContextParams(od);
    });
  });

  unittest.group("obj-schema-DivisionRepresentativeInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionRepresentativeInfoRequest();
      var od = new api.DivisionRepresentativeInfoRequest.fromJson(o.toJson());
      checkDivisionRepresentativeInfoRequest(od);
    });
  });

  unittest.group("obj-schema-DivisionSearchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionSearchRequest();
      var od = new api.DivisionSearchRequest.fromJson(o.toJson());
      checkDivisionSearchRequest(od);
    });
  });

  unittest.group("obj-schema-DivisionSearchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionSearchResponse();
      var od = new api.DivisionSearchResponse.fromJson(o.toJson());
      checkDivisionSearchResponse(od);
    });
  });

  unittest.group("obj-schema-DivisionSearchResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildDivisionSearchResult();
      var od = new api.DivisionSearchResult.fromJson(o.toJson());
      checkDivisionSearchResult(od);
    });
  });

  unittest.group("obj-schema-Election", () {
    unittest.test("to-json--from-json", () {
      var o = buildElection();
      var od = new api.Election.fromJson(o.toJson());
      checkElection(od);
    });
  });

  unittest.group("obj-schema-ElectionOfficial", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectionOfficial();
      var od = new api.ElectionOfficial.fromJson(o.toJson());
      checkElectionOfficial(od);
    });
  });

  unittest.group("obj-schema-ElectionsQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectionsQueryRequest();
      var od = new api.ElectionsQueryRequest.fromJson(o.toJson());
      checkElectionsQueryRequest(od);
    });
  });

  unittest.group("obj-schema-ElectionsQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectionsQueryResponse();
      var od = new api.ElectionsQueryResponse.fromJson(o.toJson());
      checkElectionsQueryResponse(od);
    });
  });

  unittest.group("obj-schema-ElectoralDistrict", () {
    unittest.test("to-json--from-json", () {
      var o = buildElectoralDistrict();
      var od = new api.ElectoralDistrict.fromJson(o.toJson());
      checkElectoralDistrict(od);
    });
  });

  unittest.group("obj-schema-FieldMetadataProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldMetadataProto();
      var od = new api.FieldMetadataProto.fromJson(o.toJson());
      checkFieldMetadataProto(od);
    });
  });

  unittest.group("obj-schema-GeographicDivision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeographicDivision();
      var od = new api.GeographicDivision.fromJson(o.toJson());
      checkGeographicDivision(od);
    });
  });

  unittest.group("obj-schema-InternalFieldMetadataProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildInternalFieldMetadataProto();
      var od = new api.InternalFieldMetadataProto.fromJson(o.toJson());
      checkInternalFieldMetadataProto(od);
    });
  });

  unittest.group("obj-schema-InternalSourceSummaryProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildInternalSourceSummaryProto();
      var od = new api.InternalSourceSummaryProto.fromJson(o.toJson());
      checkInternalSourceSummaryProto(od);
    });
  });

  unittest.group("obj-schema-LivegraphBacktraceRecordInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildLivegraphBacktraceRecordInfo();
      var od = new api.LivegraphBacktraceRecordInfo.fromJson(o.toJson());
      checkLivegraphBacktraceRecordInfo(od);
    });
  });

  unittest.group("obj-schema-LivegraphBacktraceRecordInfoExpInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildLivegraphBacktraceRecordInfoExpInfo();
      var od = new api.LivegraphBacktraceRecordInfoExpInfo.fromJson(o.toJson());
      checkLivegraphBacktraceRecordInfoExpInfo(od);
    });
  });

  unittest.group("obj-schema-MessageSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessageSet();
      var od = new api.MessageSet.fromJson(o.toJson());
      checkMessageSet(od);
    });
  });

  unittest.group("obj-schema-Office", () {
    unittest.test("to-json--from-json", () {
      var o = buildOffice();
      var od = new api.Office.fromJson(o.toJson());
      checkOffice(od);
    });
  });

  unittest.group("obj-schema-Official", () {
    unittest.test("to-json--from-json", () {
      var o = buildOfficial();
      var od = new api.Official.fromJson(o.toJson());
      checkOfficial(od);
    });
  });

  unittest.group("obj-schema-PointProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildPointProto();
      var od = new api.PointProto.fromJson(o.toJson());
      checkPointProto(od);
    });
  });

  unittest.group("obj-schema-PollingLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildPollingLocation();
      var od = new api.PollingLocation.fromJson(o.toJson());
      checkPollingLocation(od);
    });
  });

  unittest.group("obj-schema-PostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalAddress();
      var od = new api.PostalAddress.fromJson(o.toJson());
      checkPostalAddress(od);
    });
  });

  unittest.group("obj-schema-Provenance", () {
    unittest.test("to-json--from-json", () {
      var o = buildProvenance();
      var od = new api.Provenance.fromJson(o.toJson());
      checkProvenance(od);
    });
  });

  unittest.group("obj-schema-RepresentativeInfoData", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoData();
      var od = new api.RepresentativeInfoData.fromJson(o.toJson());
      checkRepresentativeInfoData(od);
    });
  });

  unittest.group("obj-schema-RepresentativeInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoRequest();
      var od = new api.RepresentativeInfoRequest.fromJson(o.toJson());
      checkRepresentativeInfoRequest(od);
    });
  });

  unittest.group("obj-schema-RepresentativeInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoResponse();
      var od = new api.RepresentativeInfoResponse.fromJson(o.toJson());
      checkRepresentativeInfoResponse(od);
    });
  });

  unittest.group("obj-schema-SimpleAddressType", () {
    unittest.test("to-json--from-json", () {
      var o = buildSimpleAddressType();
      var od = new api.SimpleAddressType.fromJson(o.toJson());
      checkSimpleAddressType(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-StreetSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreetSegment();
      var od = new api.StreetSegment.fromJson(o.toJson());
      checkStreetSegment(od);
    });
  });

  unittest.group("obj-schema-StreetSegmentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreetSegmentList();
      var od = new api.StreetSegmentList.fromJson(o.toJson());
      checkStreetSegmentList(od);
    });
  });

  unittest.group("obj-schema-VoterInfoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoRequest();
      var od = new api.VoterInfoRequest.fromJson(o.toJson());
      checkVoterInfoRequest(od);
    });
  });

  unittest.group("obj-schema-VoterInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoResponse();
      var od = new api.VoterInfoResponse.fromJson(o.toJson());
      checkVoterInfoResponse(od);
    });
  });

  unittest.group("obj-schema-VoterInfoSegmentResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoSegmentResult();
      var od = new api.VoterInfoSegmentResult.fromJson(o.toJson());
      checkVoterInfoSegmentResult(od);
    });
  });

  unittest.group("resource-DivisionsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.DivisionsResourceApi res = new api.CivicinfoApi(mock).divisions;
      var arg_request = buildDivisionSearchRequest();
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DivisionSearchRequest.fromJson(json);
        checkDivisionSearchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("divisions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDivisionSearchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDivisionSearchResponse(response);
      })));
    });
  });

  unittest.group("resource-ElectionsResourceApi", () {
    unittest.test("method--electionQuery", () {
      var mock = new HttpServerMock();
      api.ElectionsResourceApi res = new api.CivicinfoApi(mock).elections;
      var arg_request = buildElectionsQueryRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ElectionsQueryRequest.fromJson(json);
        checkElectionsQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("elections"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildElectionsQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .electionQuery(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkElectionsQueryResponse(response);
      })));
    });

    unittest.test("method--voterInfoQuery", () {
      var mock = new HttpServerMock();
      api.ElectionsResourceApi res = new api.CivicinfoApi(mock).elections;
      var arg_request = buildVoterInfoRequest();
      var arg_address = "foo";
      var arg_electionId = "foo";
      var arg_officialOnly = true;
      var arg_returnAllAvailableData = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.VoterInfoRequest.fromJson(json);
        checkVoterInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("voterinfo"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(
            queryMap["electionId"].first, unittest.equals(arg_electionId));
        unittest.expect(queryMap["officialOnly"].first,
            unittest.equals("$arg_officialOnly"));
        unittest.expect(queryMap["returnAllAvailableData"].first,
            unittest.equals("$arg_returnAllAvailableData"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVoterInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .voterInfoQuery(arg_request, arg_address,
              electionId: arg_electionId,
              officialOnly: arg_officialOnly,
              returnAllAvailableData: arg_returnAllAvailableData,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVoterInfoResponse(response);
      })));
    });
  });

  unittest.group("resource-RepresentativesResourceApi", () {
    unittest.test("method--representativeInfoByAddress", () {
      var mock = new HttpServerMock();
      api.RepresentativesResourceApi res =
          new api.CivicinfoApi(mock).representatives;
      var arg_request = buildRepresentativeInfoRequest();
      var arg_address = "foo";
      var arg_includeOffices = true;
      var arg_levels = buildUnnamed4314();
      var arg_roles = buildUnnamed4315();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RepresentativeInfoRequest.fromJson(json);
        checkRepresentativeInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("representatives"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["includeOffices"].first,
            unittest.equals("$arg_includeOffices"));
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRepresentativeInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .representativeInfoByAddress(arg_request,
              address: arg_address,
              includeOffices: arg_includeOffices,
              levels: arg_levels,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepresentativeInfoResponse(response);
      })));
    });

    unittest.test("method--representativeInfoByDivision", () {
      var mock = new HttpServerMock();
      api.RepresentativesResourceApi res =
          new api.CivicinfoApi(mock).representatives;
      var arg_request = buildDivisionRepresentativeInfoRequest();
      var arg_ocdId = "foo";
      var arg_levels = buildUnnamed4316();
      var arg_recursive = true;
      var arg_roles = buildUnnamed4317();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DivisionRepresentativeInfoRequest.fromJson(json);
        checkDivisionRepresentativeInfoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("representatives/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_ocdId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(
            queryMap["recursive"].first, unittest.equals("$arg_recursive"));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRepresentativeInfoData());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .representativeInfoByDivision(arg_request, arg_ocdId,
              levels: arg_levels,
              recursive: arg_recursive,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepresentativeInfoData(response);
      })));
    });
  });
}
