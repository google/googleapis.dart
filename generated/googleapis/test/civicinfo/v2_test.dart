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

import 'package:googleapis/civicinfo/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Source> buildUnnamed2910() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2910(core.List<api.Source> o) {
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
    o.sources = buildUnnamed2910();
  }
  buildCounterAdministrationRegion--;
  return o;
}

void checkAdministrationRegion(api.AdministrationRegion o) {
  buildCounterAdministrationRegion++;
  if (buildCounterAdministrationRegion < 3) {
    checkAdministrativeBody(
        o.electionAdministrationBody! as api.AdministrativeBody);
    checkAdministrationRegion(o.localJurisdiction! as api.AdministrationRegion);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2910(o.sources!);
  }
  buildCounterAdministrationRegion--;
}

core.List<api.ElectionOfficial> buildUnnamed2911() {
  var o = <api.ElectionOfficial>[];
  o.add(buildElectionOfficial());
  o.add(buildElectionOfficial());
  return o;
}

void checkUnnamed2911(core.List<api.ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElectionOfficial(o[0] as api.ElectionOfficial);
  checkElectionOfficial(o[1] as api.ElectionOfficial);
}

core.List<core.String> buildUnnamed2912() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2912(core.List<core.String> o) {
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
    o.electionOfficials = buildUnnamed2911();
    o.electionRegistrationConfirmationUrl = 'foo';
    o.electionRegistrationUrl = 'foo';
    o.electionRulesUrl = 'foo';
    o.hoursOfOperation = 'foo';
    o.name = 'foo';
    o.physicalAddress = buildSimpleAddressType();
    o.voterServices = buildUnnamed2912();
    o.votingLocationFinderUrl = 'foo';
  }
  buildCounterAdministrativeBody--;
  return o;
}

void checkAdministrativeBody(api.AdministrativeBody o) {
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    unittest.expect(
      o.absenteeVotingInfoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ballotInfoUrl!,
      unittest.equals('foo'),
    );
    checkSimpleAddressType(o.correspondenceAddress! as api.SimpleAddressType);
    unittest.expect(
      o.electionInfoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionNoticeText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionNoticeUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2911(o.electionOfficials!);
    unittest.expect(
      o.electionRegistrationConfirmationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionRegistrationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.electionRulesUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hoursOfOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSimpleAddressType(o.physicalAddress! as api.SimpleAddressType);
    checkUnnamed2912(o.voterServices!);
    unittest.expect(
      o.votingLocationFinderUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdministrativeBody--;
}

core.List<api.Channel> buildUnnamed2913() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed2913(core.List<api.Channel> o) {
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
    o.channels = buildUnnamed2913();
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
    unittest.expect(
      o.candidateUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2913(o.channels!);
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderOnBallot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.party!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannel--;
}

core.List<api.Candidate> buildUnnamed2914() {
  var o = <api.Candidate>[];
  o.add(buildCandidate());
  o.add(buildCandidate());
  return o;
}

void checkUnnamed2914(core.List<api.Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandidate(o[0] as api.Candidate);
  checkCandidate(o[1] as api.Candidate);
}

core.List<core.String> buildUnnamed2915() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2915(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2916() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2916(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2917() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2917(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2918() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2918(core.List<core.String> o) {
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

core.List<api.Source> buildUnnamed2919() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2919(core.List<api.Source> o) {
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
    o.candidates = buildUnnamed2914();
    o.district = buildElectoralDistrict();
    o.electorateSpecifications = 'foo';
    o.level = buildUnnamed2915();
    o.numberElected = 'foo';
    o.numberVotingFor = 'foo';
    o.office = 'foo';
    o.primaryParties = buildUnnamed2916();
    o.primaryParty = 'foo';
    o.referendumBallotResponses = buildUnnamed2917();
    o.referendumBrief = 'foo';
    o.referendumConStatement = 'foo';
    o.referendumEffectOfAbstain = 'foo';
    o.referendumPassageThreshold = 'foo';
    o.referendumProStatement = 'foo';
    o.referendumSubtitle = 'foo';
    o.referendumText = 'foo';
    o.referendumTitle = 'foo';
    o.referendumUrl = 'foo';
    o.roles = buildUnnamed2918();
    o.sources = buildUnnamed2919();
    o.special = 'foo';
    o.type = 'foo';
  }
  buildCounterContest--;
  return o;
}

void checkContest(api.Contest o) {
  buildCounterContest++;
  if (buildCounterContest < 3) {
    unittest.expect(
      o.ballotPlacement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ballotTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed2914(o.candidates!);
    checkElectoralDistrict(o.district! as api.ElectoralDistrict);
    unittest.expect(
      o.electorateSpecifications!,
      unittest.equals('foo'),
    );
    checkUnnamed2915(o.level!);
    unittest.expect(
      o.numberElected!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numberVotingFor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.office!,
      unittest.equals('foo'),
    );
    checkUnnamed2916(o.primaryParties!);
    unittest.expect(
      o.primaryParty!,
      unittest.equals('foo'),
    );
    checkUnnamed2917(o.referendumBallotResponses!);
    unittest.expect(
      o.referendumBrief!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumConStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumEffectOfAbstain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumPassageThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumProStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumSubtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referendumUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2918(o.roles!);
    checkUnnamed2919(o.sources!);
    unittest.expect(
      o.special!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterContest--;
}

core.List<api.DivisionSearchResult> buildUnnamed2920() {
  var o = <api.DivisionSearchResult>[];
  o.add(buildDivisionSearchResult());
  o.add(buildDivisionSearchResult());
  return o;
}

void checkUnnamed2920(core.List<api.DivisionSearchResult> o) {
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
    o.results = buildUnnamed2920();
  }
  buildCounterDivisionSearchResponse--;
  return o;
}

void checkDivisionSearchResponse(api.DivisionSearchResponse o) {
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2920(o.results!);
  }
  buildCounterDivisionSearchResponse--;
}

core.List<core.String> buildUnnamed2921() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2921(core.List<core.String> o) {
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

core.int buildCounterDivisionSearchResult = 0;
api.DivisionSearchResult buildDivisionSearchResult() {
  var o = api.DivisionSearchResult();
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    o.aliases = buildUnnamed2921();
    o.name = 'foo';
    o.ocdId = 'foo';
  }
  buildCounterDivisionSearchResult--;
  return o;
}

void checkDivisionSearchResult(api.DivisionSearchResult o) {
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    checkUnnamed2921(o.aliases!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ocdId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.electionDay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ocdDivisionId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.faxNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.officePhoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterElectionOfficial--;
}

core.List<api.Election> buildUnnamed2922() {
  var o = <api.Election>[];
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

void checkUnnamed2922(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0] as api.Election);
  checkElection(o[1] as api.Election);
}

core.int buildCounterElectionsQueryResponse = 0;
api.ElectionsQueryResponse buildElectionsQueryResponse() {
  var o = api.ElectionsQueryResponse();
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    o.elections = buildUnnamed2922();
    o.kind = 'foo';
  }
  buildCounterElectionsQueryResponse--;
  return o;
}

void checkElectionsQueryResponse(api.ElectionsQueryResponse o) {
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    checkUnnamed2922(o.elections!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterElectoralDistrict--;
}

core.List<core.String> buildUnnamed2923() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2923(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed2924() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2924(core.List<core.int> o) {
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

core.int buildCounterGeographicDivision = 0;
api.GeographicDivision buildGeographicDivision() {
  var o = api.GeographicDivision();
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed2923();
    o.name = 'foo';
    o.officeIndices = buildUnnamed2924();
  }
  buildCounterGeographicDivision--;
  return o;
}

void checkGeographicDivision(api.GeographicDivision o) {
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    checkUnnamed2923(o.alsoKnownAs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2924(o.officeIndices!);
  }
  buildCounterGeographicDivision--;
}

core.List<core.String> buildUnnamed2925() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2925(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed2926() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2926(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed2927() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2927(core.List<core.String> o) {
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

core.List<api.Source> buildUnnamed2928() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2928(core.List<api.Source> o) {
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
    o.levels = buildUnnamed2925();
    o.name = 'foo';
    o.officialIndices = buildUnnamed2926();
    o.roles = buildUnnamed2927();
    o.sources = buildUnnamed2928();
  }
  buildCounterOffice--;
  return o;
}

void checkOffice(api.Office o) {
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    unittest.expect(
      o.divisionId!,
      unittest.equals('foo'),
    );
    checkUnnamed2925(o.levels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2926(o.officialIndices!);
    checkUnnamed2927(o.roles!);
    checkUnnamed2928(o.sources!);
  }
  buildCounterOffice--;
}

core.List<api.SimpleAddressType> buildUnnamed2929() {
  var o = <api.SimpleAddressType>[];
  o.add(buildSimpleAddressType());
  o.add(buildSimpleAddressType());
  return o;
}

void checkUnnamed2929(core.List<api.SimpleAddressType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleAddressType(o[0] as api.SimpleAddressType);
  checkSimpleAddressType(o[1] as api.SimpleAddressType);
}

core.List<api.Channel> buildUnnamed2930() {
  var o = <api.Channel>[];
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

void checkUnnamed2930(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0] as api.Channel);
  checkChannel(o[1] as api.Channel);
}

core.List<core.String> buildUnnamed2931() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2931(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2932() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2932(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2933() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2933(core.List<core.String> o) {
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

core.int buildCounterOfficial = 0;
api.Official buildOfficial() {
  var o = api.Official();
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    o.address = buildUnnamed2929();
    o.channels = buildUnnamed2930();
    o.emails = buildUnnamed2931();
    o.name = 'foo';
    o.party = 'foo';
    o.phones = buildUnnamed2932();
    o.photoUrl = 'foo';
    o.urls = buildUnnamed2933();
  }
  buildCounterOfficial--;
  return o;
}

void checkOfficial(api.Official o) {
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    checkUnnamed2929(o.address!);
    checkUnnamed2930(o.channels!);
    checkUnnamed2931(o.emails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.party!,
      unittest.equals('foo'),
    );
    checkUnnamed2932(o.phones!);
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2933(o.urls!);
  }
  buildCounterOfficial--;
}

core.List<api.Source> buildUnnamed2934() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed2934(core.List<api.Source> o) {
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
    o.sources = buildUnnamed2934();
    o.startDate = 'foo';
    o.voterServices = 'foo';
  }
  buildCounterPollingLocation--;
  return o;
}

void checkPollingLocation(api.PollingLocation o) {
  buildCounterPollingLocation++;
  if (buildCounterPollingLocation < 3) {
    checkSimpleAddressType(o.address! as api.SimpleAddressType);
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pollingHours!,
      unittest.equals('foo'),
    );
    checkUnnamed2934(o.sources!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.voterServices!,
      unittest.equals('foo'),
    );
  }
  buildCounterPollingLocation--;
}

core.Map<core.String, api.GeographicDivision> buildUnnamed2935() {
  var o = <core.String, api.GeographicDivision>{};
  o['x'] = buildGeographicDivision();
  o['y'] = buildGeographicDivision();
  return o;
}

void checkUnnamed2935(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o['x']! as api.GeographicDivision);
  checkGeographicDivision(o['y']! as api.GeographicDivision);
}

core.List<api.Office> buildUnnamed2936() {
  var o = <api.Office>[];
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

void checkUnnamed2936(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0] as api.Office);
  checkOffice(o[1] as api.Office);
}

core.List<api.Official> buildUnnamed2937() {
  var o = <api.Official>[];
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

void checkUnnamed2937(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0] as api.Official);
  checkOfficial(o[1] as api.Official);
}

core.int buildCounterRepresentativeInfoData = 0;
api.RepresentativeInfoData buildRepresentativeInfoData() {
  var o = api.RepresentativeInfoData();
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    o.divisions = buildUnnamed2935();
    o.offices = buildUnnamed2936();
    o.officials = buildUnnamed2937();
  }
  buildCounterRepresentativeInfoData--;
  return o;
}

void checkRepresentativeInfoData(api.RepresentativeInfoData o) {
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    checkUnnamed2935(o.divisions!);
    checkUnnamed2936(o.offices!);
    checkUnnamed2937(o.officials!);
  }
  buildCounterRepresentativeInfoData--;
}

core.Map<core.String, api.GeographicDivision> buildUnnamed2938() {
  var o = <core.String, api.GeographicDivision>{};
  o['x'] = buildGeographicDivision();
  o['y'] = buildGeographicDivision();
  return o;
}

void checkUnnamed2938(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o['x']! as api.GeographicDivision);
  checkGeographicDivision(o['y']! as api.GeographicDivision);
}

core.List<api.Office> buildUnnamed2939() {
  var o = <api.Office>[];
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

void checkUnnamed2939(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0] as api.Office);
  checkOffice(o[1] as api.Office);
}

core.List<api.Official> buildUnnamed2940() {
  var o = <api.Official>[];
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

void checkUnnamed2940(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0] as api.Official);
  checkOfficial(o[1] as api.Official);
}

core.int buildCounterRepresentativeInfoResponse = 0;
api.RepresentativeInfoResponse buildRepresentativeInfoResponse() {
  var o = api.RepresentativeInfoResponse();
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    o.divisions = buildUnnamed2938();
    o.kind = 'foo';
    o.normalizedInput = buildSimpleAddressType();
    o.offices = buildUnnamed2939();
    o.officials = buildUnnamed2940();
  }
  buildCounterRepresentativeInfoResponse--;
  return o;
}

void checkRepresentativeInfoResponse(api.RepresentativeInfoResponse o) {
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    checkUnnamed2938(o.divisions!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSimpleAddressType(o.normalizedInput! as api.SimpleAddressType);
    checkUnnamed2939(o.offices!);
    checkUnnamed2940(o.officials!);
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
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zip!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.official!, unittest.isTrue);
  }
  buildCounterSource--;
}

core.List<api.Contest> buildUnnamed2941() {
  var o = <api.Contest>[];
  o.add(buildContest());
  o.add(buildContest());
  return o;
}

void checkUnnamed2941(core.List<api.Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContest(o[0] as api.Contest);
  checkContest(o[1] as api.Contest);
}

core.List<api.PollingLocation> buildUnnamed2942() {
  var o = <api.PollingLocation>[];
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

void checkUnnamed2942(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0] as api.PollingLocation);
  checkPollingLocation(o[1] as api.PollingLocation);
}

core.List<api.PollingLocation> buildUnnamed2943() {
  var o = <api.PollingLocation>[];
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

void checkUnnamed2943(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0] as api.PollingLocation);
  checkPollingLocation(o[1] as api.PollingLocation);
}

core.List<api.Election> buildUnnamed2944() {
  var o = <api.Election>[];
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

void checkUnnamed2944(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0] as api.Election);
  checkElection(o[1] as api.Election);
}

core.List<api.PollingLocation> buildUnnamed2945() {
  var o = <api.PollingLocation>[];
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

void checkUnnamed2945(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0] as api.PollingLocation);
  checkPollingLocation(o[1] as api.PollingLocation);
}

core.List<api.AdministrationRegion> buildUnnamed2946() {
  var o = <api.AdministrationRegion>[];
  o.add(buildAdministrationRegion());
  o.add(buildAdministrationRegion());
  return o;
}

void checkUnnamed2946(core.List<api.AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrationRegion(o[0] as api.AdministrationRegion);
  checkAdministrationRegion(o[1] as api.AdministrationRegion);
}

core.int buildCounterVoterInfoResponse = 0;
api.VoterInfoResponse buildVoterInfoResponse() {
  var o = api.VoterInfoResponse();
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    o.contests = buildUnnamed2941();
    o.dropOffLocations = buildUnnamed2942();
    o.earlyVoteSites = buildUnnamed2943();
    o.election = buildElection();
    o.kind = 'foo';
    o.mailOnly = true;
    o.normalizedInput = buildSimpleAddressType();
    o.otherElections = buildUnnamed2944();
    o.pollingLocations = buildUnnamed2945();
    o.precinctId = 'foo';
    o.state = buildUnnamed2946();
  }
  buildCounterVoterInfoResponse--;
  return o;
}

void checkVoterInfoResponse(api.VoterInfoResponse o) {
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    checkUnnamed2941(o.contests!);
    checkUnnamed2942(o.dropOffLocations!);
    checkUnnamed2943(o.earlyVoteSites!);
    checkElection(o.election! as api.Election);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.mailOnly!, unittest.isTrue);
    checkSimpleAddressType(o.normalizedInput! as api.SimpleAddressType);
    checkUnnamed2944(o.otherElections!);
    checkUnnamed2945(o.pollingLocations!);
    unittest.expect(
      o.precinctId!,
      unittest.equals('foo'),
    );
    checkUnnamed2946(o.state!);
  }
  buildCounterVoterInfoResponse--;
}

core.List<core.String> buildUnnamed2947() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2947(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2948() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2948(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2949() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2949(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2950() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2950(core.List<core.String> o) {
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
  unittest.group('obj-schema-AdministrationRegion', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdministrationRegion();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AdministrationRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministrationRegion(od as api.AdministrationRegion);
    });
  });

  unittest.group('obj-schema-AdministrativeBody', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdministrativeBody();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AdministrativeBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministrativeBody(od as api.AdministrativeBody);
    });
  });

  unittest.group('obj-schema-Candidate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCandidate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Candidate.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCandidate(od as api.Candidate);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      var o = buildChannel();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od as api.Channel);
    });
  });

  unittest.group('obj-schema-Contest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Contest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContest(od as api.Contest);
    });
  });

  unittest.group('obj-schema-DivisionSearchResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDivisionSearchResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DivisionSearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDivisionSearchResponse(od as api.DivisionSearchResponse);
    });
  });

  unittest.group('obj-schema-DivisionSearchResult', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDivisionSearchResult();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DivisionSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDivisionSearchResult(od as api.DivisionSearchResult);
    });
  });

  unittest.group('obj-schema-Election', () {
    unittest.test('to-json--from-json', () async {
      var o = buildElection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Election.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkElection(od as api.Election);
    });
  });

  unittest.group('obj-schema-ElectionOfficial', () {
    unittest.test('to-json--from-json', () async {
      var o = buildElectionOfficial();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ElectionOfficial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElectionOfficial(od as api.ElectionOfficial);
    });
  });

  unittest.group('obj-schema-ElectionsQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildElectionsQueryResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ElectionsQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElectionsQueryResponse(od as api.ElectionsQueryResponse);
    });
  });

  unittest.group('obj-schema-ElectoralDistrict', () {
    unittest.test('to-json--from-json', () async {
      var o = buildElectoralDistrict();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ElectoralDistrict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElectoralDistrict(od as api.ElectoralDistrict);
    });
  });

  unittest.group('obj-schema-GeographicDivision', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGeographicDivision();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GeographicDivision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeographicDivision(od as api.GeographicDivision);
    });
  });

  unittest.group('obj-schema-Office', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOffice();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Office.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOffice(od as api.Office);
    });
  });

  unittest.group('obj-schema-Official', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOfficial();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Official.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOfficial(od as api.Official);
    });
  });

  unittest.group('obj-schema-PollingLocation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPollingLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PollingLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPollingLocation(od as api.PollingLocation);
    });
  });

  unittest.group('obj-schema-RepresentativeInfoData', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRepresentativeInfoData();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RepresentativeInfoData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepresentativeInfoData(od as api.RepresentativeInfoData);
    });
  });

  unittest.group('obj-schema-RepresentativeInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRepresentativeInfoResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RepresentativeInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepresentativeInfoResponse(od as api.RepresentativeInfoResponse);
    });
  });

  unittest.group('obj-schema-SimpleAddressType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSimpleAddressType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SimpleAddressType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSimpleAddressType(od as api.SimpleAddressType);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-VoterInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVoterInfoResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VoterInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoterInfoResponse(od as api.VoterInfoResponse);
    });
  });

  unittest.group('resource-DivisionsResource', () {
    unittest.test('method--search', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals("civicinfo/v2/divisions"),
        );
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
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDivisionSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(query: arg_query, $fields: arg_$fields);
      checkDivisionSearchResponse(response as api.DivisionSearchResponse);
    });
  });

  unittest.group('resource-ElectionsResource', () {
    unittest.test('method--electionQuery', () async {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).elections;
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals("civicinfo/v2/elections"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildElectionsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.electionQuery($fields: arg_$fields);
      checkElectionsQueryResponse(response as api.ElectionsQueryResponse);
    });

    unittest.test('method--voterInfoQuery', () async {
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals("civicinfo/v2/voterinfo"),
        );
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
          queryMap["address"]!.first,
          unittest.equals(arg_address),
        );
        unittest.expect(
          queryMap["electionId"]!.first,
          unittest.equals(arg_electionId),
        );
        unittest.expect(
          queryMap["officialOnly"]!.first,
          unittest.equals("$arg_officialOnly"),
        );
        unittest.expect(
          queryMap["returnAllAvailableData"]!.first,
          unittest.equals("$arg_returnAllAvailableData"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVoterInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.voterInfoQuery(arg_address,
          electionId: arg_electionId,
          officialOnly: arg_officialOnly,
          returnAllAvailableData: arg_returnAllAvailableData,
          $fields: arg_$fields);
      checkVoterInfoResponse(response as api.VoterInfoResponse);
    });
  });

  unittest.group('resource-RepresentativesResource', () {
    unittest.test('method--representativeInfoByAddress', () async {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).representatives;
      var arg_address = 'foo';
      var arg_includeOffices = true;
      var arg_levels = buildUnnamed2947();
      var arg_roles = buildUnnamed2948();
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals("civicinfo/v2/representatives"),
        );
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
          queryMap["address"]!.first,
          unittest.equals(arg_address),
        );
        unittest.expect(
          queryMap["includeOffices"]!.first,
          unittest.equals("$arg_includeOffices"),
        );
        unittest.expect(
          queryMap["levels"]!,
          unittest.equals(arg_levels),
        );
        unittest.expect(
          queryMap["roles"]!,
          unittest.equals(arg_roles),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepresentativeInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.representativeInfoByAddress(
          address: arg_address,
          includeOffices: arg_includeOffices,
          levels: arg_levels,
          roles: arg_roles,
          $fields: arg_$fields);
      checkRepresentativeInfoResponse(
          response as api.RepresentativeInfoResponse);
    });

    unittest.test('method--representativeInfoByDivision', () async {
      var mock = HttpServerMock();
      var res = api.CivicInfoApi(mock).representatives;
      var arg_ocdId = 'foo';
      var arg_levels = buildUnnamed2949();
      var arg_recursive = true;
      var arg_roles = buildUnnamed2950();
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("civicinfo/v2/representatives/"),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_ocdId'),
        );

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
          queryMap["levels"]!,
          unittest.equals(arg_levels),
        );
        unittest.expect(
          queryMap["recursive"]!.first,
          unittest.equals("$arg_recursive"),
        );
        unittest.expect(
          queryMap["roles"]!,
          unittest.equals(arg_roles),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepresentativeInfoData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.representativeInfoByDivision(arg_ocdId,
          levels: arg_levels,
          recursive: arg_recursive,
          roles: arg_roles,
          $fields: arg_$fields);
      checkRepresentativeInfoData(response as api.RepresentativeInfoData);
    });
  });
}
