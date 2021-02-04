// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/civicinfo/v2.dart' as api;

import '../test_shared.dart';

core.List<api.Source> buildUnnamed2471() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2471(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0] as api.Source);
  checkSource(o[1] as api.Source);
}

core.int buildCounterAdministrationRegion = 0;
api.AdministrationRegion buildAdministrationRegion() {
  var o = api.AdministrationRegion();
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    o.electionAdministrationBody = buildAdministrativeBody();
    o.localJurisdiction = buildAdministrationRegion();
    o.name = 'foo';
    o.sources = buildUnnamed2471();
  }
  buildCounterAdministrationRegion--;
  return o;
}

void checkAdministrationRegion(api.AdministrationRegion o) {
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    checkAdministrativeBody(
        o.electionAdministrationBody as api.AdministrativeBody);
    checkAdministrationRegion(o.localJurisdiction as api.AdministrationRegion);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2471(o.sources);
  }
  buildCounterAdministrationRegion--;
}

core.List<api.ElectionOfficial> buildUnnamed2472() {
  var o = <api.ElectionOfficial>[];
  o.add(buildElectionOfficial());
  o.add(buildElectionOfficial());
  return o;
}

void checkUnnamed2472(core.List<api.ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElectionOfficial(o[0] as api.ElectionOfficial);
  checkElectionOfficial(o[1] as api.ElectionOfficial);
}

core.List<core.String> buildUnnamed2473() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdministrativeBody = 0;
api.AdministrativeBody buildAdministrativeBody() {
  var o = api.AdministrativeBody();
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    o.absenteeVotingInfoUrl = 'foo';
    o.ballotInfoUrl = 'foo';
    o.correspondenceAddress = buildSimpleAddressType();
    o.electionInfoUrl = 'foo';
    o.electionNoticeText = 'foo';
    o.electionNoticeUrl = 'foo';
    o.electionOfficials = buildUnnamed2472();
    o.electionRegistrationConfirmationUrl = 'foo';
    o.electionRegistrationUrl = 'foo';
    o.electionRulesUrl = 'foo';
    o.hoursOfOperation = 'foo';
    o.name = 'foo';
    o.physicalAddress = buildSimpleAddressType();
    o.voterServices = buildUnnamed2473();
    o.votingLocationFinderUrl = 'foo';
  }
  buildCounterAdministrativeBody--;
  return o;
}

void checkAdministrativeBody(api.AdministrativeBody o) {
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    unittest.expect(o.absenteeVotingInfoUrl, unittest.equals('foo'));
    unittest.expect(o.ballotInfoUrl, unittest.equals('foo'));
    checkSimpleAddressType(o.correspondenceAddress as api.SimpleAddressType);
    unittest.expect(o.electionInfoUrl, unittest.equals('foo'));
    unittest.expect(o.electionNoticeText, unittest.equals('foo'));
    unittest.expect(o.electionNoticeUrl, unittest.equals('foo'));
    checkUnnamed2472(o.electionOfficials);
    unittest.expect(
        o.electionRegistrationConfirmationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRegistrationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRulesUrl, unittest.equals('foo'));
    unittest.expect(o.hoursOfOperation, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkSimpleAddressType(o.physicalAddress as api.SimpleAddressType);
    checkUnnamed2473(o.voterServices);
    unittest.expect(o.votingLocationFinderUrl, unittest.equals('foo'));
  }
  buildCounterAdministrativeBody--;
}

core.List<api.Channel> buildUnnamed2474() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed2474(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0] as api.Channel);
  checkChannel(o[1] as api.Channel);
}

core.int buildCounterCandidate = 0;
api.Candidate buildCandidate() {
  var o = api.Candidate();
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    o.candidateUrl = 'foo';
    o.channels = buildUnnamed2474();
    o.email = 'foo';
    o.name = 'foo';
    o.orderOnBallot = 'foo';
    o.party = 'foo';
    o.phone = 'foo';
    o.photoUrl = 'foo';
  }
  buildCounterCandidate--;
  return o;
}

void checkCandidate(api.Candidate o) {
  buildCounterCandidate++;
  if (buildCounterCandidate < 3) {
    unittest.expect(o.candidateUrl, unittest.equals('foo'));
    checkUnnamed2474(o.channels);
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
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.id = 'foo';
    o.type = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.List<api.Candidate> buildUnnamed2475() {
  var o = <api.Candidate>[];
  o.add(buildCandidate());
  o.add(buildCandidate());
  return o;
}

void checkUnnamed2475(core.List<api.Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandidate(o[0] as api.Candidate);
  checkCandidate(o[1] as api.Candidate);
}

core.List<core.String> buildUnnamed2476() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2476(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2477() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2477(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2478() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2478(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2479() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2479(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Source> buildUnnamed2480() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2480(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0] as api.Source);
  checkSource(o[1] as api.Source);
}

core.int buildCounterContest = 0;
api.Contest buildContest() {
  var o = api.Contest();
  buildCounterContest++;
  if (buildCounterContest < 3) {
    o.ballotPlacement = 'foo';
    o.ballotTitle = 'foo';
    o.candidates = buildUnnamed2475();
    o.district = buildElectoralDistrict();
    o.electorateSpecifications = 'foo';
    o.level = buildUnnamed2476();
    o.numberElected = 'foo';
    o.numberVotingFor = 'foo';
    o.office = 'foo';
    o.primaryParties = buildUnnamed2477();
    o.primaryParty = 'foo';
    o.referendumBallotResponses = buildUnnamed2478();
    o.referendumBrief = 'foo';
    o.referendumConStatement = 'foo';
    o.referendumEffectOfAbstain = 'foo';
    o.referendumPassageThreshold = 'foo';
    o.referendumProStatement = 'foo';
    o.referendumSubtitle = 'foo';
    o.referendumText = 'foo';
    o.referendumTitle = 'foo';
    o.referendumUrl = 'foo';
    o.roles = buildUnnamed2479();
    o.sources = buildUnnamed2480();
    o.special = 'foo';
    o.type = 'foo';
  }
  buildCounterContest--;
  return o;
}

void checkContest(api.Contest o) {
  buildCounterContest++;
  if (buildCounterContest < 3) {
    unittest.expect(o.ballotPlacement, unittest.equals('foo'));
    unittest.expect(o.ballotTitle, unittest.equals('foo'));
    checkUnnamed2475(o.candidates);
    checkElectoralDistrict(o.district as api.ElectoralDistrict);
    unittest.expect(o.electorateSpecifications, unittest.equals('foo'));
    checkUnnamed2476(o.level);
    unittest.expect(o.numberElected, unittest.equals('foo'));
    unittest.expect(o.numberVotingFor, unittest.equals('foo'));
    unittest.expect(o.office, unittest.equals('foo'));
    checkUnnamed2477(o.primaryParties);
    unittest.expect(o.primaryParty, unittest.equals('foo'));
    checkUnnamed2478(o.referendumBallotResponses);
    unittest.expect(o.referendumBrief, unittest.equals('foo'));
    unittest.expect(o.referendumConStatement, unittest.equals('foo'));
    unittest.expect(o.referendumEffectOfAbstain, unittest.equals('foo'));
    unittest.expect(o.referendumPassageThreshold, unittest.equals('foo'));
    unittest.expect(o.referendumProStatement, unittest.equals('foo'));
    unittest.expect(o.referendumSubtitle, unittest.equals('foo'));
    unittest.expect(o.referendumText, unittest.equals('foo'));
    unittest.expect(o.referendumTitle, unittest.equals('foo'));
    unittest.expect(o.referendumUrl, unittest.equals('foo'));
    checkUnnamed2479(o.roles);
    checkUnnamed2480(o.sources);
    unittest.expect(o.special, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterContest--;
}

core.List<api.DivisionSearchResult> buildUnnamed2481() {
  var o = <api.DivisionSearchResult>[];
  o.add(buildDivisionSearchResult());
  o.add(buildDivisionSearchResult());
  return o;
}

void checkUnnamed2481(core.List<api.DivisionSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDivisionSearchResult(o[0] as api.DivisionSearchResult);
  checkDivisionSearchResult(o[1] as api.DivisionSearchResult);
}

core.int buildCounterDivisionSearchResponse = 0;
api.DivisionSearchResponse buildDivisionSearchResponse() {
  var o = api.DivisionSearchResponse();
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    o.kind = 'foo';
    o.results = buildUnnamed2481();
  }
  buildCounterDivisionSearchResponse--;
  return o;
}

void checkDivisionSearchResponse(api.DivisionSearchResponse o) {
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2481(o.results);
  }
  buildCounterDivisionSearchResponse--;
}

core.List<core.String> buildUnnamed2482() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2482(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDivisionSearchResult = 0;
api.DivisionSearchResult buildDivisionSearchResult() {
  var o = api.DivisionSearchResult();
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    o.aliases = buildUnnamed2482();
    o.name = 'foo';
    o.ocdId = 'foo';
  }
  buildCounterDivisionSearchResult--;
  return o;
}

void checkDivisionSearchResult(api.DivisionSearchResult o) {
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    checkUnnamed2482(o.aliases);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ocdId, unittest.equals('foo'));
  }
  buildCounterDivisionSearchResult--;
}

core.int buildCounterElection = 0;
api.Election buildElection() {
  var o = api.Election();
  buildCounterElection++;
  if (buildCounterElection < 3) {
    o.electionDay = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.ocdDivisionId = 'foo';
  }
  buildCounterElection--;
  return o;
}

void checkElection(api.Election o) {
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
api.ElectionOfficial buildElectionOfficial() {
  var o = api.ElectionOfficial();
  buildCounterElectionOfficial++;
  if (buildCounterElectionOfficial < 3) {
    o.emailAddress = 'foo';
    o.faxNumber = 'foo';
    o.name = 'foo';
    o.officePhoneNumber = 'foo';
    o.title = 'foo';
  }
  buildCounterElectionOfficial--;
  return o;
}

void checkElectionOfficial(api.ElectionOfficial o) {
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

core.List<api.Election> buildUnnamed2483() {
  var o = <api.Election>[];
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

void checkUnnamed2483(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0] as api.Election);
  checkElection(o[1] as api.Election);
}

core.int buildCounterElectionsQueryResponse = 0;
api.ElectionsQueryResponse buildElectionsQueryResponse() {
  var o = api.ElectionsQueryResponse();
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    o.elections = buildUnnamed2483();
    o.kind = 'foo';
  }
  buildCounterElectionsQueryResponse--;
  return o;
}

void checkElectionsQueryResponse(api.ElectionsQueryResponse o) {
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    checkUnnamed2483(o.elections);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterElectionsQueryResponse--;
}

core.int buildCounterElectoralDistrict = 0;
api.ElectoralDistrict buildElectoralDistrict() {
  var o = api.ElectoralDistrict();
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.scope = 'foo';
  }
  buildCounterElectoralDistrict--;
  return o;
}

void checkElectoralDistrict(api.ElectoralDistrict o) {
  buildCounterElectoralDistrict++;
  if (buildCounterElectoralDistrict < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterElectoralDistrict--;
}

core.List<core.String> buildUnnamed2484() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2484(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed2485() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2485(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGeographicDivision = 0;
api.GeographicDivision buildGeographicDivision() {
  var o = api.GeographicDivision();
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed2484();
    o.name = 'foo';
    o.officeIndices = buildUnnamed2485();
  }
  buildCounterGeographicDivision--;
  return o;
}

void checkGeographicDivision(api.GeographicDivision o) {
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    checkUnnamed2484(o.alsoKnownAs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2485(o.officeIndices);
  }
  buildCounterGeographicDivision--;
}

core.List<core.String> buildUnnamed2486() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2486(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed2487() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2487(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed2488() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2488(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Source> buildUnnamed2489() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2489(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0] as api.Source);
  checkSource(o[1] as api.Source);
}

core.int buildCounterOffice = 0;
api.Office buildOffice() {
  var o = api.Office();
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    o.divisionId = 'foo';
    o.levels = buildUnnamed2486();
    o.name = 'foo';
    o.officialIndices = buildUnnamed2487();
    o.roles = buildUnnamed2488();
    o.sources = buildUnnamed2489();
  }
  buildCounterOffice--;
  return o;
}

void checkOffice(api.Office o) {
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    unittest.expect(o.divisionId, unittest.equals('foo'));
    checkUnnamed2486(o.levels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2487(o.officialIndices);
    checkUnnamed2488(o.roles);
    checkUnnamed2489(o.sources);
  }
  buildCounterOffice--;
}

core.List<api.SimpleAddressType> buildUnnamed2490() {
  var o = <api.SimpleAddressType>[];
  o.add(buildSimpleAddressType());
  o.add(buildSimpleAddressType());
  return o;
}

void checkUnnamed2490(core.List<api.SimpleAddressType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleAddressType(o[0] as api.SimpleAddressType);
  checkSimpleAddressType(o[1] as api.SimpleAddressType);
}

core.List<api.Channel> buildUnnamed2491() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed2491(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0] as api.Channel);
  checkChannel(o[1] as api.Channel);
}

core.List<core.String> buildUnnamed2492() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2492(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2493() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2493(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2494() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2494(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOfficial = 0;
api.Official buildOfficial() {
  var o = api.Official();
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    o.address = buildUnnamed2490();
    o.channels = buildUnnamed2491();
    o.emails = buildUnnamed2492();
    o.name = 'foo';
    o.party = 'foo';
    o.phones = buildUnnamed2493();
    o.photoUrl = 'foo';
    o.urls = buildUnnamed2494();
  }
  buildCounterOfficial--;
  return o;
}

void checkOfficial(api.Official o) {
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    checkUnnamed2490(o.address);
    checkUnnamed2491(o.channels);
    checkUnnamed2492(o.emails);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.party, unittest.equals('foo'));
    checkUnnamed2493(o.phones);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed2494(o.urls);
  }
  buildCounterOfficial--;
}

core.List<api.Source> buildUnnamed2495() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2495(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0] as api.Source);
  checkSource(o[1] as api.Source);
}

core.int buildCounterPollingLocation = 0;
api.PollingLocation buildPollingLocation() {
  var o = api.PollingLocation();
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    o.address = buildSimpleAddressType();
    o.endDate = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.name = 'foo';
    o.notes = 'foo';
    o.pollingHours = 'foo';
    o.sources = buildUnnamed2495();
    o.startDate = 'foo';
    o.voterServices = 'foo';
  }
  buildCounterPollingLocation--;
  return o;
}

void checkPollingLocation(api.PollingLocation o) {
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    checkSimpleAddressType(o.address as api.SimpleAddressType);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.pollingHours, unittest.equals('foo'));
    checkUnnamed2495(o.sources);
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.voterServices, unittest.equals('foo'));
  }
  buildCounterPollingLocation--;
}

core.Map<core.String, api.GeographicDivision> buildUnnamed2496() {
  var o = <core.String, api.GeographicDivision>{};
  o['x'] = buildGeographicDivision();
  o['y'] = buildGeographicDivision();
  return o;
}

void checkUnnamed2496(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o['x'] as api.GeographicDivision);
  checkGeographicDivision(o['y'] as api.GeographicDivision);
}

core.List<api.Office> buildUnnamed2497() {
  var o = <api.Office>[];
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

void checkUnnamed2497(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0] as api.Office);
  checkOffice(o[1] as api.Office);
}

core.List<api.Official> buildUnnamed2498() {
  var o = <api.Official>[];
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

void checkUnnamed2498(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0] as api.Official);
  checkOfficial(o[1] as api.Official);
}

core.int buildCounterRepresentativeInfoData = 0;
api.RepresentativeInfoData buildRepresentativeInfoData() {
  var o = api.RepresentativeInfoData();
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    o.divisions = buildUnnamed2496();
    o.offices = buildUnnamed2497();
    o.officials = buildUnnamed2498();
  }
  buildCounterRepresentativeInfoData--;
  return o;
}

void checkRepresentativeInfoData(api.RepresentativeInfoData o) {
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    checkUnnamed2496(o.divisions);
    checkUnnamed2497(o.offices);
    checkUnnamed2498(o.officials);
  }
  buildCounterRepresentativeInfoData--;
}

core.Map<core.String, api.GeographicDivision> buildUnnamed2499() {
  var o = <core.String, api.GeographicDivision>{};
  o['x'] = buildGeographicDivision();
  o['y'] = buildGeographicDivision();
  return o;
}

void checkUnnamed2499(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o['x'] as api.GeographicDivision);
  checkGeographicDivision(o['y'] as api.GeographicDivision);
}

core.List<api.Office> buildUnnamed2500() {
  var o = <api.Office>[];
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

void checkUnnamed2500(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0] as api.Office);
  checkOffice(o[1] as api.Office);
}

core.List<api.Official> buildUnnamed2501() {
  var o = <api.Official>[];
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

void checkUnnamed2501(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0] as api.Official);
  checkOfficial(o[1] as api.Official);
}

core.int buildCounterRepresentativeInfoResponse = 0;
api.RepresentativeInfoResponse buildRepresentativeInfoResponse() {
  var o = api.RepresentativeInfoResponse();
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    o.divisions = buildUnnamed2499();
    o.kind = 'foo';
    o.normalizedInput = buildSimpleAddressType();
    o.offices = buildUnnamed2500();
    o.officials = buildUnnamed2501();
  }
  buildCounterRepresentativeInfoResponse--;
  return o;
}

void checkRepresentativeInfoResponse(api.RepresentativeInfoResponse o) {
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    checkUnnamed2499(o.divisions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSimpleAddressType(o.normalizedInput as api.SimpleAddressType);
    checkUnnamed2500(o.offices);
    checkUnnamed2501(o.officials);
  }
  buildCounterRepresentativeInfoResponse--;
}

core.int buildCounterSimpleAddressType = 0;
api.SimpleAddressType buildSimpleAddressType() {
  var o = api.SimpleAddressType();
  buildCounterSimpleAddressType++;
  if (buildCounterSimpleAddressType < 3) {
    o.city = 'foo';
    o.line1 = 'foo';
    o.line2 = 'foo';
    o.line3 = 'foo';
    o.locationName = 'foo';
    o.state = 'foo';
    o.zip = 'foo';
  }
  buildCounterSimpleAddressType--;
  return o;
}

void checkSimpleAddressType(api.SimpleAddressType o) {
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
api.Source buildSource() {
  var o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.name = 'foo';
    o.official = true;
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.official, unittest.isTrue);
  }
  buildCounterSource--;
}

core.List<api.Contest> buildUnnamed2502() {
  var o = <api.Contest>[];
  o.add(buildContest());
  o.add(buildContest());
  return o;
}

void checkUnnamed2502(core.List<api.Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContest(o[0] as api.Contest);
  checkContest(o[1] as api.Contest);
}

core.List<api.PollingLocation> buildUnnamed2503() {
  var o = <api.PollingLocation>[];
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

void checkUnnamed2503(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0] as api.PollingLocation);
  checkPollingLocation(o[1] as api.PollingLocation);
}

core.List<api.PollingLocation> buildUnnamed2504() {
  var o = <api.PollingLocation>[];
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

void checkUnnamed2504(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0] as api.PollingLocation);
  checkPollingLocation(o[1] as api.PollingLocation);
}

core.List<api.Election> buildUnnamed2505() {
  var o = <api.Election>[];
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

void checkUnnamed2505(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0] as api.Election);
  checkElection(o[1] as api.Election);
}

core.List<api.PollingLocation> buildUnnamed2506() {
  var o = <api.PollingLocation>[];
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

void checkUnnamed2506(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0] as api.PollingLocation);
  checkPollingLocation(o[1] as api.PollingLocation);
}

core.List<api.AdministrationRegion> buildUnnamed2507() {
  var o = <api.AdministrationRegion>[];
  o.add(buildAdministrationRegion());
  o.add(buildAdministrationRegion());
  return o;
}

void checkUnnamed2507(core.List<api.AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrationRegion(o[0] as api.AdministrationRegion);
  checkAdministrationRegion(o[1] as api.AdministrationRegion);
}

core.int buildCounterVoterInfoResponse = 0;
api.VoterInfoResponse buildVoterInfoResponse() {
  var o = api.VoterInfoResponse();
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    o.contests = buildUnnamed2502();
    o.dropOffLocations = buildUnnamed2503();
    o.earlyVoteSites = buildUnnamed2504();
    o.election = buildElection();
    o.kind = 'foo';
    o.mailOnly = true;
    o.normalizedInput = buildSimpleAddressType();
    o.otherElections = buildUnnamed2505();
    o.pollingLocations = buildUnnamed2506();
    o.precinctId = 'foo';
    o.state = buildUnnamed2507();
  }
  buildCounterVoterInfoResponse--;
  return o;
}

void checkVoterInfoResponse(api.VoterInfoResponse o) {
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    checkUnnamed2502(o.contests);
    checkUnnamed2503(o.dropOffLocations);
    checkUnnamed2504(o.earlyVoteSites);
    checkElection(o.election as api.Election);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mailOnly, unittest.isTrue);
    checkSimpleAddressType(o.normalizedInput as api.SimpleAddressType);
    checkUnnamed2505(o.otherElections);
    checkUnnamed2506(o.pollingLocations);
    unittest.expect(o.precinctId, unittest.equals('foo'));
    checkUnnamed2507(o.state);
  }
  buildCounterVoterInfoResponse--;
}

core.List<core.String> buildUnnamed2508() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2508(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2509() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2509(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2510() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2510(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2511() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2511(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AdministrationRegion', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministrationRegion();
      var od = api.AdministrationRegion.fromJson(o.toJson());
      checkAdministrationRegion(od as api.AdministrationRegion);
    });
  });

  unittest.group('obj-schema-AdministrativeBody', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministrativeBody();
      var od = api.AdministrativeBody.fromJson(o.toJson());
      checkAdministrativeBody(od as api.AdministrativeBody);
    });
  });

  unittest.group('obj-schema-Candidate', () {
    unittest.test('to-json--from-json', () {
      var o = buildCandidate();
      var od = api.Candidate.fromJson(o.toJson());
      checkCandidate(od as api.Candidate);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od as api.Channel);
    });
  });

  unittest.group('obj-schema-Contest', () {
    unittest.test('to-json--from-json', () {
      var o = buildContest();
      var od = api.Contest.fromJson(o.toJson());
      checkContest(od as api.Contest);
    });
  });

  unittest.group('obj-schema-DivisionSearchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDivisionSearchResponse();
      var od = api.DivisionSearchResponse.fromJson(o.toJson());
      checkDivisionSearchResponse(od as api.DivisionSearchResponse);
    });
  });

  unittest.group('obj-schema-DivisionSearchResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildDivisionSearchResult();
      var od = api.DivisionSearchResult.fromJson(o.toJson());
      checkDivisionSearchResult(od as api.DivisionSearchResult);
    });
  });

  unittest.group('obj-schema-Election', () {
    unittest.test('to-json--from-json', () {
      var o = buildElection();
      var od = api.Election.fromJson(o.toJson());
      checkElection(od as api.Election);
    });
  });

  unittest.group('obj-schema-ElectionOfficial', () {
    unittest.test('to-json--from-json', () {
      var o = buildElectionOfficial();
      var od = api.ElectionOfficial.fromJson(o.toJson());
      checkElectionOfficial(od as api.ElectionOfficial);
    });
  });

  unittest.group('obj-schema-ElectionsQueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildElectionsQueryResponse();
      var od = api.ElectionsQueryResponse.fromJson(o.toJson());
      checkElectionsQueryResponse(od as api.ElectionsQueryResponse);
    });
  });

  unittest.group('obj-schema-ElectoralDistrict', () {
    unittest.test('to-json--from-json', () {
      var o = buildElectoralDistrict();
      var od = api.ElectoralDistrict.fromJson(o.toJson());
      checkElectoralDistrict(od as api.ElectoralDistrict);
    });
  });

  unittest.group('obj-schema-GeographicDivision', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeographicDivision();
      var od = api.GeographicDivision.fromJson(o.toJson());
      checkGeographicDivision(od as api.GeographicDivision);
    });
  });

  unittest.group('obj-schema-Office', () {
    unittest.test('to-json--from-json', () {
      var o = buildOffice();
      var od = api.Office.fromJson(o.toJson());
      checkOffice(od as api.Office);
    });
  });

  unittest.group('obj-schema-Official', () {
    unittest.test('to-json--from-json', () {
      var o = buildOfficial();
      var od = api.Official.fromJson(o.toJson());
      checkOfficial(od as api.Official);
    });
  });

  unittest.group('obj-schema-PollingLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildPollingLocation();
      var od = api.PollingLocation.fromJson(o.toJson());
      checkPollingLocation(od as api.PollingLocation);
    });
  });

  unittest.group('obj-schema-RepresentativeInfoData', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepresentativeInfoData();
      var od = api.RepresentativeInfoData.fromJson(o.toJson());
      checkRepresentativeInfoData(od as api.RepresentativeInfoData);
    });
  });

  unittest.group('obj-schema-RepresentativeInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepresentativeInfoResponse();
      var od = api.RepresentativeInfoResponse.fromJson(o.toJson());
      checkRepresentativeInfoResponse(od as api.RepresentativeInfoResponse);
    });
  });

  unittest.group('obj-schema-SimpleAddressType', () {
    unittest.test('to-json--from-json', () {
      var o = buildSimpleAddressType();
      var od = api.SimpleAddressType.fromJson(o.toJson());
      checkSimpleAddressType(od as api.SimpleAddressType);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () {
      var o = buildSource();
      var od = api.Source.fromJson(o.toJson());
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-VoterInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVoterInfoResponse();
      var od = api.VoterInfoResponse.fromJson(o.toJson());
      checkVoterInfoResponse(od as api.VoterInfoResponse);
    });
  });

  unittest.group('resource-DivisionsResource', () {
    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).divisions;
      var arg_query = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("civicinfo/v2/divisions"));
        pathOffset += 22;

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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDivisionSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDivisionSearchResponse(response as api.DivisionSearchResponse);
      })));
    });
  });

  unittest.group('resource-ElectionsResource', () {
    unittest.test('method--electionQuery', () {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).elections;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("civicinfo/v2/elections"));
        pathOffset += 22;

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
        var resp = convert.json.encode(buildElectionsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .electionQuery($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkElectionsQueryResponse(response as api.ElectionsQueryResponse);
      })));
    });

    unittest.test('method--voterInfoQuery', () {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).elections;
      var arg_address = 'foo';
      var arg_electionId = 'foo';
      var arg_officialOnly = true;
      var arg_returnAllAvailableData = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("civicinfo/v2/voterinfo"));
        pathOffset += 22;

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
            queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(
            queryMap["electionId"].first, unittest.equals(arg_electionId));
        unittest.expect(queryMap["officialOnly"].first,
            unittest.equals("$arg_officialOnly"));
        unittest.expect(queryMap["returnAllAvailableData"].first,
            unittest.equals("$arg_returnAllAvailableData"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVoterInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .voterInfoQuery(arg_address,
              electionId: arg_electionId,
              officialOnly: arg_officialOnly,
              returnAllAvailableData: arg_returnAllAvailableData,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVoterInfoResponse(response as api.VoterInfoResponse);
      })));
    });
  });

  unittest.group('resource-RepresentativesResource', () {
    unittest.test('method--representativeInfoByAddress', () {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).representatives;
      var arg_address = 'foo';
      var arg_includeOffices = true;
      var arg_levels = buildUnnamed2508();
      var arg_roles = buildUnnamed2509();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("civicinfo/v2/representatives"));
        pathOffset += 28;

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
            queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["includeOffices"].first,
            unittest.equals("$arg_includeOffices"));
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepresentativeInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .representativeInfoByAddress(
              address: arg_address,
              includeOffices: arg_includeOffices,
              levels: arg_levels,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepresentativeInfoResponse(
            response as api.RepresentativeInfoResponse);
      })));
    });

    unittest.test('method--representativeInfoByDivision', () {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).representatives;
      var arg_ocdId = 'foo';
      var arg_levels = buildUnnamed2510();
      var arg_recursive = true;
      var arg_roles = buildUnnamed2511();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("civicinfo/v2/representatives/"));
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ocdId'));

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
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(
            queryMap["recursive"].first, unittest.equals("$arg_recursive"));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepresentativeInfoData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .representativeInfoByDivision(arg_ocdId,
              levels: arg_levels,
              recursive: arg_recursive,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepresentativeInfoData(response as api.RepresentativeInfoData);
      })));
    });
  });
}
