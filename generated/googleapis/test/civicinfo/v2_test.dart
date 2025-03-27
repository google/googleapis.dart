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

import 'package:googleapis/civicinfo/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, api.CivicinfoSchemaV2GeographicDivision>
    buildUnnamed0() => {
          'x': buildCivicinfoSchemaV2GeographicDivision(),
          'y': buildCivicinfoSchemaV2GeographicDivision(),
        };

void checkUnnamed0(
    core.Map<core.String, api.CivicinfoSchemaV2GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2GeographicDivision(o['x']!);
  checkCivicinfoSchemaV2GeographicDivision(o['y']!);
}

core.int buildCounterCivicinfoApiprotosV2DivisionByAddressResponse = 0;
api.CivicinfoApiprotosV2DivisionByAddressResponse
    buildCivicinfoApiprotosV2DivisionByAddressResponse() {
  final o = api.CivicinfoApiprotosV2DivisionByAddressResponse();
  buildCounterCivicinfoApiprotosV2DivisionByAddressResponse++;
  if (buildCounterCivicinfoApiprotosV2DivisionByAddressResponse < 3) {
    o.divisions = buildUnnamed0();
    o.normalizedInput = buildCivicinfoSchemaV2SimpleAddressType();
  }
  buildCounterCivicinfoApiprotosV2DivisionByAddressResponse--;
  return o;
}

void checkCivicinfoApiprotosV2DivisionByAddressResponse(
    api.CivicinfoApiprotosV2DivisionByAddressResponse o) {
  buildCounterCivicinfoApiprotosV2DivisionByAddressResponse++;
  if (buildCounterCivicinfoApiprotosV2DivisionByAddressResponse < 3) {
    checkUnnamed0(o.divisions!);
    checkCivicinfoSchemaV2SimpleAddressType(o.normalizedInput!);
  }
  buildCounterCivicinfoApiprotosV2DivisionByAddressResponse--;
}

core.List<api.CivicinfoApiprotosV2DivisionSearchResult> buildUnnamed1() => [
      buildCivicinfoApiprotosV2DivisionSearchResult(),
      buildCivicinfoApiprotosV2DivisionSearchResult(),
    ];

void checkUnnamed1(core.List<api.CivicinfoApiprotosV2DivisionSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoApiprotosV2DivisionSearchResult(o[0]);
  checkCivicinfoApiprotosV2DivisionSearchResult(o[1]);
}

core.int buildCounterCivicinfoApiprotosV2DivisionSearchResponse = 0;
api.CivicinfoApiprotosV2DivisionSearchResponse
    buildCivicinfoApiprotosV2DivisionSearchResponse() {
  final o = api.CivicinfoApiprotosV2DivisionSearchResponse();
  buildCounterCivicinfoApiprotosV2DivisionSearchResponse++;
  if (buildCounterCivicinfoApiprotosV2DivisionSearchResponse < 3) {
    o.kind = 'foo';
    o.results = buildUnnamed1();
  }
  buildCounterCivicinfoApiprotosV2DivisionSearchResponse--;
  return o;
}

void checkCivicinfoApiprotosV2DivisionSearchResponse(
    api.CivicinfoApiprotosV2DivisionSearchResponse o) {
  buildCounterCivicinfoApiprotosV2DivisionSearchResponse++;
  if (buildCounterCivicinfoApiprotosV2DivisionSearchResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.results!);
  }
  buildCounterCivicinfoApiprotosV2DivisionSearchResponse--;
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

core.int buildCounterCivicinfoApiprotosV2DivisionSearchResult = 0;
api.CivicinfoApiprotosV2DivisionSearchResult
    buildCivicinfoApiprotosV2DivisionSearchResult() {
  final o = api.CivicinfoApiprotosV2DivisionSearchResult();
  buildCounterCivicinfoApiprotosV2DivisionSearchResult++;
  if (buildCounterCivicinfoApiprotosV2DivisionSearchResult < 3) {
    o.aliases = buildUnnamed2();
    o.name = 'foo';
    o.ocdId = 'foo';
  }
  buildCounterCivicinfoApiprotosV2DivisionSearchResult--;
  return o;
}

void checkCivicinfoApiprotosV2DivisionSearchResult(
    api.CivicinfoApiprotosV2DivisionSearchResult o) {
  buildCounterCivicinfoApiprotosV2DivisionSearchResult++;
  if (buildCounterCivicinfoApiprotosV2DivisionSearchResult < 3) {
    checkUnnamed2(o.aliases!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ocdId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoApiprotosV2DivisionSearchResult--;
}

core.List<api.CivicinfoSchemaV2Election> buildUnnamed3() => [
      buildCivicinfoSchemaV2Election(),
      buildCivicinfoSchemaV2Election(),
    ];

void checkUnnamed3(core.List<api.CivicinfoSchemaV2Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Election(o[0]);
  checkCivicinfoSchemaV2Election(o[1]);
}

core.int buildCounterCivicinfoApiprotosV2ElectionsQueryResponse = 0;
api.CivicinfoApiprotosV2ElectionsQueryResponse
    buildCivicinfoApiprotosV2ElectionsQueryResponse() {
  final o = api.CivicinfoApiprotosV2ElectionsQueryResponse();
  buildCounterCivicinfoApiprotosV2ElectionsQueryResponse++;
  if (buildCounterCivicinfoApiprotosV2ElectionsQueryResponse < 3) {
    o.elections = buildUnnamed3();
    o.kind = 'foo';
  }
  buildCounterCivicinfoApiprotosV2ElectionsQueryResponse--;
  return o;
}

void checkCivicinfoApiprotosV2ElectionsQueryResponse(
    api.CivicinfoApiprotosV2ElectionsQueryResponse o) {
  buildCounterCivicinfoApiprotosV2ElectionsQueryResponse++;
  if (buildCounterCivicinfoApiprotosV2ElectionsQueryResponse < 3) {
    checkUnnamed3(o.elections!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoApiprotosV2ElectionsQueryResponse--;
}

core.List<api.CivicinfoSchemaV2Contest> buildUnnamed4() => [
      buildCivicinfoSchemaV2Contest(),
      buildCivicinfoSchemaV2Contest(),
    ];

void checkUnnamed4(core.List<api.CivicinfoSchemaV2Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Contest(o[0]);
  checkCivicinfoSchemaV2Contest(o[1]);
}

core.List<api.CivicinfoSchemaV2PollingLocation> buildUnnamed5() => [
      buildCivicinfoSchemaV2PollingLocation(),
      buildCivicinfoSchemaV2PollingLocation(),
    ];

void checkUnnamed5(core.List<api.CivicinfoSchemaV2PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2PollingLocation(o[0]);
  checkCivicinfoSchemaV2PollingLocation(o[1]);
}

core.List<api.CivicinfoSchemaV2PollingLocation> buildUnnamed6() => [
      buildCivicinfoSchemaV2PollingLocation(),
      buildCivicinfoSchemaV2PollingLocation(),
    ];

void checkUnnamed6(core.List<api.CivicinfoSchemaV2PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2PollingLocation(o[0]);
  checkCivicinfoSchemaV2PollingLocation(o[1]);
}

core.List<api.CivicinfoSchemaV2Election> buildUnnamed7() => [
      buildCivicinfoSchemaV2Election(),
      buildCivicinfoSchemaV2Election(),
    ];

void checkUnnamed7(core.List<api.CivicinfoSchemaV2Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Election(o[0]);
  checkCivicinfoSchemaV2Election(o[1]);
}

core.List<api.CivicinfoSchemaV2PollingLocation> buildUnnamed8() => [
      buildCivicinfoSchemaV2PollingLocation(),
      buildCivicinfoSchemaV2PollingLocation(),
    ];

void checkUnnamed8(core.List<api.CivicinfoSchemaV2PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2PollingLocation(o[0]);
  checkCivicinfoSchemaV2PollingLocation(o[1]);
}

core.List<api.CivicinfoSchemaV2Precinct> buildUnnamed9() => [
      buildCivicinfoSchemaV2Precinct(),
      buildCivicinfoSchemaV2Precinct(),
    ];

void checkUnnamed9(core.List<api.CivicinfoSchemaV2Precinct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Precinct(o[0]);
  checkCivicinfoSchemaV2Precinct(o[1]);
}

core.List<api.CivicinfoSchemaV2AdministrationRegion> buildUnnamed10() => [
      buildCivicinfoSchemaV2AdministrationRegion(),
      buildCivicinfoSchemaV2AdministrationRegion(),
    ];

void checkUnnamed10(core.List<api.CivicinfoSchemaV2AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2AdministrationRegion(o[0]);
  checkCivicinfoSchemaV2AdministrationRegion(o[1]);
}

core.int buildCounterCivicinfoApiprotosV2VoterInfoResponse = 0;
api.CivicinfoApiprotosV2VoterInfoResponse
    buildCivicinfoApiprotosV2VoterInfoResponse() {
  final o = api.CivicinfoApiprotosV2VoterInfoResponse();
  buildCounterCivicinfoApiprotosV2VoterInfoResponse++;
  if (buildCounterCivicinfoApiprotosV2VoterInfoResponse < 3) {
    o.contests = buildUnnamed4();
    o.dropOffLocations = buildUnnamed5();
    o.earlyVoteSites = buildUnnamed6();
    o.election = buildCivicinfoSchemaV2Election();
    o.kind = 'foo';
    o.mailOnly = true;
    o.normalizedInput = buildCivicinfoSchemaV2SimpleAddressType();
    o.otherElections = buildUnnamed7();
    o.pollingLocations = buildUnnamed8();
    o.precinctId = 'foo';
    o.precincts = buildUnnamed9();
    o.state = buildUnnamed10();
  }
  buildCounterCivicinfoApiprotosV2VoterInfoResponse--;
  return o;
}

void checkCivicinfoApiprotosV2VoterInfoResponse(
    api.CivicinfoApiprotosV2VoterInfoResponse o) {
  buildCounterCivicinfoApiprotosV2VoterInfoResponse++;
  if (buildCounterCivicinfoApiprotosV2VoterInfoResponse < 3) {
    checkUnnamed4(o.contests!);
    checkUnnamed5(o.dropOffLocations!);
    checkUnnamed6(o.earlyVoteSites!);
    checkCivicinfoSchemaV2Election(o.election!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.mailOnly!, unittest.isTrue);
    checkCivicinfoSchemaV2SimpleAddressType(o.normalizedInput!);
    checkUnnamed7(o.otherElections!);
    checkUnnamed8(o.pollingLocations!);
    unittest.expect(
      o.precinctId!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.precincts!);
    checkUnnamed10(o.state!);
  }
  buildCounterCivicinfoApiprotosV2VoterInfoResponse--;
}

core.List<api.CivicinfoSchemaV2Source> buildUnnamed11() => [
      buildCivicinfoSchemaV2Source(),
      buildCivicinfoSchemaV2Source(),
    ];

void checkUnnamed11(core.List<api.CivicinfoSchemaV2Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Source(o[0]);
  checkCivicinfoSchemaV2Source(o[1]);
}

core.int buildCounterCivicinfoSchemaV2AdministrationRegion = 0;
api.CivicinfoSchemaV2AdministrationRegion
    buildCivicinfoSchemaV2AdministrationRegion() {
  final o = api.CivicinfoSchemaV2AdministrationRegion();
  buildCounterCivicinfoSchemaV2AdministrationRegion++;
  if (buildCounterCivicinfoSchemaV2AdministrationRegion < 3) {
    o.electionAdministrationBody = buildCivicinfoSchemaV2AdministrativeBody();
    o.localJurisdiction = buildCivicinfoSchemaV2AdministrationRegion();
    o.name = 'foo';
    o.sources = buildUnnamed11();
  }
  buildCounterCivicinfoSchemaV2AdministrationRegion--;
  return o;
}

void checkCivicinfoSchemaV2AdministrationRegion(
    api.CivicinfoSchemaV2AdministrationRegion o) {
  buildCounterCivicinfoSchemaV2AdministrationRegion++;
  if (buildCounterCivicinfoSchemaV2AdministrationRegion < 3) {
    checkCivicinfoSchemaV2AdministrativeBody(o.electionAdministrationBody!);
    checkCivicinfoSchemaV2AdministrationRegion(o.localJurisdiction!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.sources!);
  }
  buildCounterCivicinfoSchemaV2AdministrationRegion--;
}

core.List<api.CivicinfoSchemaV2ElectionOfficial> buildUnnamed12() => [
      buildCivicinfoSchemaV2ElectionOfficial(),
      buildCivicinfoSchemaV2ElectionOfficial(),
    ];

void checkUnnamed12(core.List<api.CivicinfoSchemaV2ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2ElectionOfficial(o[0]);
  checkCivicinfoSchemaV2ElectionOfficial(o[1]);
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

core.int buildCounterCivicinfoSchemaV2AdministrativeBody = 0;
api.CivicinfoSchemaV2AdministrativeBody
    buildCivicinfoSchemaV2AdministrativeBody() {
  final o = api.CivicinfoSchemaV2AdministrativeBody();
  buildCounterCivicinfoSchemaV2AdministrativeBody++;
  if (buildCounterCivicinfoSchemaV2AdministrativeBody < 3) {
    o.absenteeVotingInfoUrl = 'foo';
    o.ballotInfoUrl = 'foo';
    o.correspondenceAddress = buildCivicinfoSchemaV2SimpleAddressType();
    o.electionInfoUrl = 'foo';
    o.electionNoticeText = 'foo';
    o.electionNoticeUrl = 'foo';
    o.electionOfficials = buildUnnamed12();
    o.electionRegistrationConfirmationUrl = 'foo';
    o.electionRegistrationUrl = 'foo';
    o.electionRulesUrl = 'foo';
    o.hoursOfOperation = 'foo';
    o.name = 'foo';
    o.physicalAddress = buildCivicinfoSchemaV2SimpleAddressType();
    o.voterServices = buildUnnamed13();
    o.votingLocationFinderUrl = 'foo';
  }
  buildCounterCivicinfoSchemaV2AdministrativeBody--;
  return o;
}

void checkCivicinfoSchemaV2AdministrativeBody(
    api.CivicinfoSchemaV2AdministrativeBody o) {
  buildCounterCivicinfoSchemaV2AdministrativeBody++;
  if (buildCounterCivicinfoSchemaV2AdministrativeBody < 3) {
    unittest.expect(
      o.absenteeVotingInfoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ballotInfoUrl!,
      unittest.equals('foo'),
    );
    checkCivicinfoSchemaV2SimpleAddressType(o.correspondenceAddress!);
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
    checkUnnamed12(o.electionOfficials!);
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
    checkCivicinfoSchemaV2SimpleAddressType(o.physicalAddress!);
    checkUnnamed13(o.voterServices!);
    unittest.expect(
      o.votingLocationFinderUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoSchemaV2AdministrativeBody--;
}

core.List<api.CivicinfoSchemaV2Channel> buildUnnamed14() => [
      buildCivicinfoSchemaV2Channel(),
      buildCivicinfoSchemaV2Channel(),
    ];

void checkUnnamed14(core.List<api.CivicinfoSchemaV2Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Channel(o[0]);
  checkCivicinfoSchemaV2Channel(o[1]);
}

core.int buildCounterCivicinfoSchemaV2Candidate = 0;
api.CivicinfoSchemaV2Candidate buildCivicinfoSchemaV2Candidate() {
  final o = api.CivicinfoSchemaV2Candidate();
  buildCounterCivicinfoSchemaV2Candidate++;
  if (buildCounterCivicinfoSchemaV2Candidate < 3) {
    o.candidateUrl = 'foo';
    o.channels = buildUnnamed14();
    o.email = 'foo';
    o.name = 'foo';
    o.orderOnBallot = 'foo';
    o.party = 'foo';
    o.phone = 'foo';
    o.photoUrl = 'foo';
  }
  buildCounterCivicinfoSchemaV2Candidate--;
  return o;
}

void checkCivicinfoSchemaV2Candidate(api.CivicinfoSchemaV2Candidate o) {
  buildCounterCivicinfoSchemaV2Candidate++;
  if (buildCounterCivicinfoSchemaV2Candidate < 3) {
    unittest.expect(
      o.candidateUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.channels!);
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
  buildCounterCivicinfoSchemaV2Candidate--;
}

core.int buildCounterCivicinfoSchemaV2Channel = 0;
api.CivicinfoSchemaV2Channel buildCivicinfoSchemaV2Channel() {
  final o = api.CivicinfoSchemaV2Channel();
  buildCounterCivicinfoSchemaV2Channel++;
  if (buildCounterCivicinfoSchemaV2Channel < 3) {
    o.id = 'foo';
    o.type = 'foo';
  }
  buildCounterCivicinfoSchemaV2Channel--;
  return o;
}

void checkCivicinfoSchemaV2Channel(api.CivicinfoSchemaV2Channel o) {
  buildCounterCivicinfoSchemaV2Channel++;
  if (buildCounterCivicinfoSchemaV2Channel < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoSchemaV2Channel--;
}

core.List<api.CivicinfoSchemaV2Candidate> buildUnnamed15() => [
      buildCivicinfoSchemaV2Candidate(),
      buildCivicinfoSchemaV2Candidate(),
    ];

void checkUnnamed15(core.List<api.CivicinfoSchemaV2Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Candidate(o[0]);
  checkCivicinfoSchemaV2Candidate(o[1]);
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.List<api.CivicinfoSchemaV2Source> buildUnnamed20() => [
      buildCivicinfoSchemaV2Source(),
      buildCivicinfoSchemaV2Source(),
    ];

void checkUnnamed20(core.List<api.CivicinfoSchemaV2Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Source(o[0]);
  checkCivicinfoSchemaV2Source(o[1]);
}

core.int buildCounterCivicinfoSchemaV2Contest = 0;
api.CivicinfoSchemaV2Contest buildCivicinfoSchemaV2Contest() {
  final o = api.CivicinfoSchemaV2Contest();
  buildCounterCivicinfoSchemaV2Contest++;
  if (buildCounterCivicinfoSchemaV2Contest < 3) {
    o.ballotPlacement = 'foo';
    o.ballotTitle = 'foo';
    o.candidates = buildUnnamed15();
    o.district = buildCivicinfoSchemaV2ElectoralDistrict();
    o.electorateSpecifications = 'foo';
    o.level = buildUnnamed16();
    o.numberElected = 'foo';
    o.numberVotingFor = 'foo';
    o.office = 'foo';
    o.primaryParties = buildUnnamed17();
    o.referendumBallotResponses = buildUnnamed18();
    o.referendumBrief = 'foo';
    o.referendumConStatement = 'foo';
    o.referendumEffectOfAbstain = 'foo';
    o.referendumPassageThreshold = 'foo';
    o.referendumProStatement = 'foo';
    o.referendumSubtitle = 'foo';
    o.referendumText = 'foo';
    o.referendumTitle = 'foo';
    o.referendumUrl = 'foo';
    o.roles = buildUnnamed19();
    o.sources = buildUnnamed20();
    o.special = 'foo';
    o.type = 'foo';
  }
  buildCounterCivicinfoSchemaV2Contest--;
  return o;
}

void checkCivicinfoSchemaV2Contest(api.CivicinfoSchemaV2Contest o) {
  buildCounterCivicinfoSchemaV2Contest++;
  if (buildCounterCivicinfoSchemaV2Contest < 3) {
    unittest.expect(
      o.ballotPlacement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ballotTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.candidates!);
    checkCivicinfoSchemaV2ElectoralDistrict(o.district!);
    unittest.expect(
      o.electorateSpecifications!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.level!);
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
    checkUnnamed17(o.primaryParties!);
    checkUnnamed18(o.referendumBallotResponses!);
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
    checkUnnamed19(o.roles!);
    checkUnnamed20(o.sources!);
    unittest.expect(
      o.special!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoSchemaV2Contest--;
}

core.int buildCounterCivicinfoSchemaV2Election = 0;
api.CivicinfoSchemaV2Election buildCivicinfoSchemaV2Election() {
  final o = api.CivicinfoSchemaV2Election();
  buildCounterCivicinfoSchemaV2Election++;
  if (buildCounterCivicinfoSchemaV2Election < 3) {
    o.electionDay = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.ocdDivisionId = 'foo';
    o.shapeLookupBehavior = 'foo';
  }
  buildCounterCivicinfoSchemaV2Election--;
  return o;
}

void checkCivicinfoSchemaV2Election(api.CivicinfoSchemaV2Election o) {
  buildCounterCivicinfoSchemaV2Election++;
  if (buildCounterCivicinfoSchemaV2Election < 3) {
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
    unittest.expect(
      o.shapeLookupBehavior!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoSchemaV2Election--;
}

core.int buildCounterCivicinfoSchemaV2ElectionOfficial = 0;
api.CivicinfoSchemaV2ElectionOfficial buildCivicinfoSchemaV2ElectionOfficial() {
  final o = api.CivicinfoSchemaV2ElectionOfficial();
  buildCounterCivicinfoSchemaV2ElectionOfficial++;
  if (buildCounterCivicinfoSchemaV2ElectionOfficial < 3) {
    o.emailAddress = 'foo';
    o.faxNumber = 'foo';
    o.name = 'foo';
    o.officePhoneNumber = 'foo';
    o.title = 'foo';
  }
  buildCounterCivicinfoSchemaV2ElectionOfficial--;
  return o;
}

void checkCivicinfoSchemaV2ElectionOfficial(
    api.CivicinfoSchemaV2ElectionOfficial o) {
  buildCounterCivicinfoSchemaV2ElectionOfficial++;
  if (buildCounterCivicinfoSchemaV2ElectionOfficial < 3) {
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
  buildCounterCivicinfoSchemaV2ElectionOfficial--;
}

core.int buildCounterCivicinfoSchemaV2ElectoralDistrict = 0;
api.CivicinfoSchemaV2ElectoralDistrict
    buildCivicinfoSchemaV2ElectoralDistrict() {
  final o = api.CivicinfoSchemaV2ElectoralDistrict();
  buildCounterCivicinfoSchemaV2ElectoralDistrict++;
  if (buildCounterCivicinfoSchemaV2ElectoralDistrict < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.scope = 'foo';
  }
  buildCounterCivicinfoSchemaV2ElectoralDistrict--;
  return o;
}

void checkCivicinfoSchemaV2ElectoralDistrict(
    api.CivicinfoSchemaV2ElectoralDistrict o) {
  buildCounterCivicinfoSchemaV2ElectoralDistrict++;
  if (buildCounterCivicinfoSchemaV2ElectoralDistrict < 3) {
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
  buildCounterCivicinfoSchemaV2ElectoralDistrict--;
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed22() => [
      42,
      42,
    ];

void checkUnnamed22(core.List<core.int> o) {
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

core.int buildCounterCivicinfoSchemaV2GeographicDivision = 0;
api.CivicinfoSchemaV2GeographicDivision
    buildCivicinfoSchemaV2GeographicDivision() {
  final o = api.CivicinfoSchemaV2GeographicDivision();
  buildCounterCivicinfoSchemaV2GeographicDivision++;
  if (buildCounterCivicinfoSchemaV2GeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed21();
    o.name = 'foo';
    o.officeIndices = buildUnnamed22();
  }
  buildCounterCivicinfoSchemaV2GeographicDivision--;
  return o;
}

void checkCivicinfoSchemaV2GeographicDivision(
    api.CivicinfoSchemaV2GeographicDivision o) {
  buildCounterCivicinfoSchemaV2GeographicDivision++;
  if (buildCounterCivicinfoSchemaV2GeographicDivision < 3) {
    checkUnnamed21(o.alsoKnownAs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.officeIndices!);
  }
  buildCounterCivicinfoSchemaV2GeographicDivision--;
}

core.List<api.CivicinfoSchemaV2Source> buildUnnamed23() => [
      buildCivicinfoSchemaV2Source(),
      buildCivicinfoSchemaV2Source(),
    ];

void checkUnnamed23(core.List<api.CivicinfoSchemaV2Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCivicinfoSchemaV2Source(o[0]);
  checkCivicinfoSchemaV2Source(o[1]);
}

core.int buildCounterCivicinfoSchemaV2PollingLocation = 0;
api.CivicinfoSchemaV2PollingLocation buildCivicinfoSchemaV2PollingLocation() {
  final o = api.CivicinfoSchemaV2PollingLocation();
  buildCounterCivicinfoSchemaV2PollingLocation++;
  if (buildCounterCivicinfoSchemaV2PollingLocation < 3) {
    o.address = buildCivicinfoSchemaV2SimpleAddressType();
    o.endDate = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.name = 'foo';
    o.notes = 'foo';
    o.pollingHours = 'foo';
    o.sources = buildUnnamed23();
    o.startDate = 'foo';
    o.voterServices = 'foo';
  }
  buildCounterCivicinfoSchemaV2PollingLocation--;
  return o;
}

void checkCivicinfoSchemaV2PollingLocation(
    api.CivicinfoSchemaV2PollingLocation o) {
  buildCounterCivicinfoSchemaV2PollingLocation++;
  if (buildCounterCivicinfoSchemaV2PollingLocation < 3) {
    checkCivicinfoSchemaV2SimpleAddressType(o.address!);
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
    checkUnnamed23(o.sources!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.voterServices!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoSchemaV2PollingLocation--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterCivicinfoSchemaV2Precinct = 0;
api.CivicinfoSchemaV2Precinct buildCivicinfoSchemaV2Precinct() {
  final o = api.CivicinfoSchemaV2Precinct();
  buildCounterCivicinfoSchemaV2Precinct++;
  if (buildCounterCivicinfoSchemaV2Precinct < 3) {
    o.administrationRegionId = 'foo';
    o.contestId = buildUnnamed24();
    o.datasetId = 'foo';
    o.earlyVoteSiteId = buildUnnamed25();
    o.electoralDistrictId = buildUnnamed26();
    o.id = 'foo';
    o.mailOnly = true;
    o.name = 'foo';
    o.number = 'foo';
    o.ocdId = buildUnnamed27();
    o.pollingLocationId = buildUnnamed28();
    o.spatialBoundaryId = buildUnnamed29();
    o.splitName = 'foo';
    o.ward = 'foo';
  }
  buildCounterCivicinfoSchemaV2Precinct--;
  return o;
}

void checkCivicinfoSchemaV2Precinct(api.CivicinfoSchemaV2Precinct o) {
  buildCounterCivicinfoSchemaV2Precinct++;
  if (buildCounterCivicinfoSchemaV2Precinct < 3) {
    unittest.expect(
      o.administrationRegionId!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.contestId!);
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.earlyVoteSiteId!);
    checkUnnamed26(o.electoralDistrictId!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.mailOnly!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.ocdId!);
    checkUnnamed28(o.pollingLocationId!);
    checkUnnamed29(o.spatialBoundaryId!);
    unittest.expect(
      o.splitName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ward!,
      unittest.equals('foo'),
    );
  }
  buildCounterCivicinfoSchemaV2Precinct--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.int buildCounterCivicinfoSchemaV2SimpleAddressType = 0;
api.CivicinfoSchemaV2SimpleAddressType
    buildCivicinfoSchemaV2SimpleAddressType() {
  final o = api.CivicinfoSchemaV2SimpleAddressType();
  buildCounterCivicinfoSchemaV2SimpleAddressType++;
  if (buildCounterCivicinfoSchemaV2SimpleAddressType < 3) {
    o.addressLine = buildUnnamed30();
    o.city = 'foo';
    o.line1 = 'foo';
    o.line2 = 'foo';
    o.line3 = 'foo';
    o.locationName = 'foo';
    o.state = 'foo';
    o.zip = 'foo';
  }
  buildCounterCivicinfoSchemaV2SimpleAddressType--;
  return o;
}

void checkCivicinfoSchemaV2SimpleAddressType(
    api.CivicinfoSchemaV2SimpleAddressType o) {
  buildCounterCivicinfoSchemaV2SimpleAddressType++;
  if (buildCounterCivicinfoSchemaV2SimpleAddressType < 3) {
    checkUnnamed30(o.addressLine!);
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
  buildCounterCivicinfoSchemaV2SimpleAddressType--;
}

core.int buildCounterCivicinfoSchemaV2Source = 0;
api.CivicinfoSchemaV2Source buildCivicinfoSchemaV2Source() {
  final o = api.CivicinfoSchemaV2Source();
  buildCounterCivicinfoSchemaV2Source++;
  if (buildCounterCivicinfoSchemaV2Source < 3) {
    o.name = 'foo';
    o.official = true;
  }
  buildCounterCivicinfoSchemaV2Source--;
  return o;
}

void checkCivicinfoSchemaV2Source(api.CivicinfoSchemaV2Source o) {
  buildCounterCivicinfoSchemaV2Source++;
  if (buildCounterCivicinfoSchemaV2Source < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.official!, unittest.isTrue);
  }
  buildCounterCivicinfoSchemaV2Source--;
}

void main() {
  unittest.group('obj-schema-CivicinfoApiprotosV2DivisionByAddressResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoApiprotosV2DivisionByAddressResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoApiprotosV2DivisionByAddressResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoApiprotosV2DivisionByAddressResponse(od);
    });
  });

  unittest.group('obj-schema-CivicinfoApiprotosV2DivisionSearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoApiprotosV2DivisionSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoApiprotosV2DivisionSearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoApiprotosV2DivisionSearchResponse(od);
    });
  });

  unittest.group('obj-schema-CivicinfoApiprotosV2DivisionSearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoApiprotosV2DivisionSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoApiprotosV2DivisionSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoApiprotosV2DivisionSearchResult(od);
    });
  });

  unittest.group('obj-schema-CivicinfoApiprotosV2ElectionsQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoApiprotosV2ElectionsQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoApiprotosV2ElectionsQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoApiprotosV2ElectionsQueryResponse(od);
    });
  });

  unittest.group('obj-schema-CivicinfoApiprotosV2VoterInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoApiprotosV2VoterInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoApiprotosV2VoterInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoApiprotosV2VoterInfoResponse(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2AdministrationRegion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2AdministrationRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2AdministrationRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2AdministrationRegion(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2AdministrativeBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2AdministrativeBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2AdministrativeBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2AdministrativeBody(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2Candidate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2Candidate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2Candidate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2Candidate(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2Channel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2Channel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2Channel(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2Contest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2Contest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2Contest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2Contest(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2Election', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2Election();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2Election.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2Election(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2ElectionOfficial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2ElectionOfficial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2ElectionOfficial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2ElectionOfficial(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2ElectoralDistrict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2ElectoralDistrict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2ElectoralDistrict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2ElectoralDistrict(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2GeographicDivision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2GeographicDivision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2GeographicDivision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2GeographicDivision(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2PollingLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2PollingLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2PollingLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2PollingLocation(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2Precinct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2Precinct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2Precinct.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2Precinct(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2SimpleAddressType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2SimpleAddressType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2SimpleAddressType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2SimpleAddressType(od);
    });
  });

  unittest.group('obj-schema-CivicinfoSchemaV2Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCivicinfoSchemaV2Source();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CivicinfoSchemaV2Source.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCivicinfoSchemaV2Source(od);
    });
  });

  unittest.group('resource-DivisionsResource', () {
    unittest.test('method--queryDivisionByAddress', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).divisions;
      final arg_address = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('civicinfo/v2/divisionsByAddress'),
        );
        pathOffset += 31;

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
          queryMap['address']!.first,
          unittest.equals(arg_address),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildCivicinfoApiprotosV2DivisionByAddressResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryDivisionByAddress(
          address: arg_address, $fields: arg_$fields);
      checkCivicinfoApiprotosV2DivisionByAddressResponse(
          response as api.CivicinfoApiprotosV2DivisionByAddressResponse);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).divisions;
      final arg_query = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('civicinfo/v2/divisions'),
        );
        pathOffset += 22;

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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildCivicinfoApiprotosV2DivisionSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(query: arg_query, $fields: arg_$fields);
      checkCivicinfoApiprotosV2DivisionSearchResponse(
          response as api.CivicinfoApiprotosV2DivisionSearchResponse);
    });
  });

  unittest.group('resource-ElectionsResource', () {
    unittest.test('method--electionQuery', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).elections;
      final arg_productionDataOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('civicinfo/v2/elections'),
        );
        pathOffset += 22;

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
          queryMap['productionDataOnly']!.first,
          unittest.equals('$arg_productionDataOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildCivicinfoApiprotosV2ElectionsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.electionQuery(
          productionDataOnly: arg_productionDataOnly, $fields: arg_$fields);
      checkCivicinfoApiprotosV2ElectionsQueryResponse(
          response as api.CivicinfoApiprotosV2ElectionsQueryResponse);
    });

    unittest.test('method--voterInfoQuery', () async {
      final mock = HttpServerMock();
      final res = api.CivicInfoApi(mock).elections;
      final arg_address = 'foo';
      final arg_electionId = 'foo';
      final arg_officialOnly = true;
      final arg_productionDataOnly = true;
      final arg_returnAllAvailableData = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('civicinfo/v2/voterinfo'),
        );
        pathOffset += 22;

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
          queryMap['address']!.first,
          unittest.equals(arg_address),
        );
        unittest.expect(
          queryMap['electionId']!.first,
          unittest.equals(arg_electionId),
        );
        unittest.expect(
          queryMap['officialOnly']!.first,
          unittest.equals('$arg_officialOnly'),
        );
        unittest.expect(
          queryMap['productionDataOnly']!.first,
          unittest.equals('$arg_productionDataOnly'),
        );
        unittest.expect(
          queryMap['returnAllAvailableData']!.first,
          unittest.equals('$arg_returnAllAvailableData'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildCivicinfoApiprotosV2VoterInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.voterInfoQuery(
          address: arg_address,
          electionId: arg_electionId,
          officialOnly: arg_officialOnly,
          productionDataOnly: arg_productionDataOnly,
          returnAllAvailableData: arg_returnAllAvailableData,
          $fields: arg_$fields);
      checkCivicinfoApiprotosV2VoterInfoResponse(
          response as api.CivicinfoApiprotosV2VoterInfoResponse);
    });
  });
}
