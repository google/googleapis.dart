library googleapis.civicinfo.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/civicinfo/v2.dart' as api;



buildUnnamed429() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed429(core.List<api.Source> o) {
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
    o.sources = buildUnnamed429();
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
    checkUnnamed429(o.sources);
  }
  buildCounterAdministrationRegion--;
}

buildUnnamed430() {
  var o = new core.List<api.ElectionOfficial>();
  o.add(buildElectionOfficial());
  o.add(buildElectionOfficial());
  return o;
}

checkUnnamed430(core.List<api.ElectionOfficial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElectionOfficial(o[0]);
  checkElectionOfficial(o[1]);
}

buildUnnamed431() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed431(core.List<core.String> o) {
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
    o.ballotInfoUrl = "foo";
    o.correspondenceAddress = buildSimpleAddressType();
    o.electionInfoUrl = "foo";
    o.electionOfficials = buildUnnamed430();
    o.electionRegistrationConfirmationUrl = "foo";
    o.electionRegistrationUrl = "foo";
    o.electionRulesUrl = "foo";
    o.hoursOfOperation = "foo";
    o.name = "foo";
    o.physicalAddress = buildSimpleAddressType();
    o.voterServices = buildUnnamed431();
    o.votingLocationFinderUrl = "foo";
  }
  buildCounterAdministrativeBody--;
  return o;
}

checkAdministrativeBody(api.AdministrativeBody o) {
  buildCounterAdministrativeBody++;
  if (buildCounterAdministrativeBody < 3) {
    unittest.expect(o.absenteeVotingInfoUrl, unittest.equals('foo'));
    unittest.expect(o.ballotInfoUrl, unittest.equals('foo'));
    checkSimpleAddressType(o.correspondenceAddress);
    unittest.expect(o.electionInfoUrl, unittest.equals('foo'));
    checkUnnamed430(o.electionOfficials);
    unittest.expect(o.electionRegistrationConfirmationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRegistrationUrl, unittest.equals('foo'));
    unittest.expect(o.electionRulesUrl, unittest.equals('foo'));
    unittest.expect(o.hoursOfOperation, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkSimpleAddressType(o.physicalAddress);
    checkUnnamed431(o.voterServices);
    unittest.expect(o.votingLocationFinderUrl, unittest.equals('foo'));
  }
  buildCounterAdministrativeBody--;
}

buildUnnamed432() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed432(core.List<api.Channel> o) {
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
    o.channels = buildUnnamed432();
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
    checkUnnamed432(o.channels);
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

buildUnnamed433() {
  var o = new core.List<api.Candidate>();
  o.add(buildCandidate());
  o.add(buildCandidate());
  return o;
}

checkUnnamed433(core.List<api.Candidate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCandidate(o[0]);
  checkCandidate(o[1]);
}

buildUnnamed434() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed434(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed435() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed435(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed436() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed436(core.List<api.Source> o) {
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
    o.candidates = buildUnnamed433();
    o.district = buildElectoralDistrict();
    o.electorateSpecifications = "foo";
    o.id = "foo";
    o.level = buildUnnamed434();
    o.numberElected = "foo";
    o.numberVotingFor = "foo";
    o.office = "foo";
    o.primaryParty = "foo";
    o.referendumSubtitle = "foo";
    o.referendumTitle = "foo";
    o.referendumUrl = "foo";
    o.roles = buildUnnamed435();
    o.sources = buildUnnamed436();
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
    checkUnnamed433(o.candidates);
    checkElectoralDistrict(o.district);
    unittest.expect(o.electorateSpecifications, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed434(o.level);
    unittest.expect(o.numberElected, unittest.equals('foo'));
    unittest.expect(o.numberVotingFor, unittest.equals('foo'));
    unittest.expect(o.office, unittest.equals('foo'));
    unittest.expect(o.primaryParty, unittest.equals('foo'));
    unittest.expect(o.referendumSubtitle, unittest.equals('foo'));
    unittest.expect(o.referendumTitle, unittest.equals('foo'));
    unittest.expect(o.referendumUrl, unittest.equals('foo'));
    checkUnnamed435(o.roles);
    checkUnnamed436(o.sources);
    unittest.expect(o.special, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterContest--;
}

buildUnnamed437() {
  var o = new core.List<api.DivisionSearchResult>();
  o.add(buildDivisionSearchResult());
  o.add(buildDivisionSearchResult());
  return o;
}

checkUnnamed437(core.List<api.DivisionSearchResult> o) {
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
    o.results = buildUnnamed437();
  }
  buildCounterDivisionSearchResponse--;
  return o;
}

checkDivisionSearchResponse(api.DivisionSearchResponse o) {
  buildCounterDivisionSearchResponse++;
  if (buildCounterDivisionSearchResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed437(o.results);
  }
  buildCounterDivisionSearchResponse--;
}

buildUnnamed438() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed438(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDivisionSearchResult = 0;
buildDivisionSearchResult() {
  var o = new api.DivisionSearchResult();
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    o.aliases = buildUnnamed438();
    o.name = "foo";
    o.ocdId = "foo";
  }
  buildCounterDivisionSearchResult--;
  return o;
}

checkDivisionSearchResult(api.DivisionSearchResult o) {
  buildCounterDivisionSearchResult++;
  if (buildCounterDivisionSearchResult < 3) {
    checkUnnamed438(o.aliases);
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

buildUnnamed439() {
  var o = new core.List<api.Election>();
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

checkUnnamed439(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

core.int buildCounterElectionsQueryResponse = 0;
buildElectionsQueryResponse() {
  var o = new api.ElectionsQueryResponse();
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    o.elections = buildUnnamed439();
    o.kind = "foo";
  }
  buildCounterElectionsQueryResponse--;
  return o;
}

checkElectionsQueryResponse(api.ElectionsQueryResponse o) {
  buildCounterElectionsQueryResponse++;
  if (buildCounterElectionsQueryResponse < 3) {
    checkUnnamed439(o.elections);
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.scope, unittest.equals('foo'));
  }
  buildCounterElectoralDistrict--;
}

buildUnnamed440() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed440(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed441() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed441(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGeographicDivision = 0;
buildGeographicDivision() {
  var o = new api.GeographicDivision();
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    o.alsoKnownAs = buildUnnamed440();
    o.name = "foo";
    o.officeIndices = buildUnnamed441();
  }
  buildCounterGeographicDivision--;
  return o;
}

checkGeographicDivision(api.GeographicDivision o) {
  buildCounterGeographicDivision++;
  if (buildCounterGeographicDivision < 3) {
    checkUnnamed440(o.alsoKnownAs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed441(o.officeIndices);
  }
  buildCounterGeographicDivision--;
}

buildUnnamed442() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed442(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed443() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed443(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed444() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed444(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed445() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed445(core.List<api.Source> o) {
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
    o.levels = buildUnnamed442();
    o.name = "foo";
    o.officialIndices = buildUnnamed443();
    o.roles = buildUnnamed444();
    o.sources = buildUnnamed445();
  }
  buildCounterOffice--;
  return o;
}

checkOffice(api.Office o) {
  buildCounterOffice++;
  if (buildCounterOffice < 3) {
    unittest.expect(o.divisionId, unittest.equals('foo'));
    checkUnnamed442(o.levels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed443(o.officialIndices);
    checkUnnamed444(o.roles);
    checkUnnamed445(o.sources);
  }
  buildCounterOffice--;
}

buildUnnamed446() {
  var o = new core.List<api.SimpleAddressType>();
  o.add(buildSimpleAddressType());
  o.add(buildSimpleAddressType());
  return o;
}

checkUnnamed446(core.List<api.SimpleAddressType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSimpleAddressType(o[0]);
  checkSimpleAddressType(o[1]);
}

buildUnnamed447() {
  var o = new core.List<api.Channel>();
  o.add(buildChannel());
  o.add(buildChannel());
  return o;
}

checkUnnamed447(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

buildUnnamed448() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed448(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed449() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed449(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed450() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed450(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOfficial = 0;
buildOfficial() {
  var o = new api.Official();
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    o.address = buildUnnamed446();
    o.channels = buildUnnamed447();
    o.emails = buildUnnamed448();
    o.name = "foo";
    o.party = "foo";
    o.phones = buildUnnamed449();
    o.photoUrl = "foo";
    o.urls = buildUnnamed450();
  }
  buildCounterOfficial--;
  return o;
}

checkOfficial(api.Official o) {
  buildCounterOfficial++;
  if (buildCounterOfficial < 3) {
    checkUnnamed446(o.address);
    checkUnnamed447(o.channels);
    checkUnnamed448(o.emails);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.party, unittest.equals('foo'));
    checkUnnamed449(o.phones);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    checkUnnamed450(o.urls);
  }
  buildCounterOfficial--;
}

buildUnnamed451() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed451(core.List<api.Source> o) {
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
    o.name = "foo";
    o.notes = "foo";
    o.pollingHours = "foo";
    o.sources = buildUnnamed451();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.pollingHours, unittest.equals('foo'));
    checkUnnamed451(o.sources);
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.voterServices, unittest.equals('foo'));
  }
  buildCounterPollingLocation--;
}

buildUnnamed452() {
  var o = new core.Map<core.String, api.GeographicDivision>();
  o["x"] = buildGeographicDivision();
  o["y"] = buildGeographicDivision();
  return o;
}

checkUnnamed452(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o["x"]);
  checkGeographicDivision(o["y"]);
}

buildUnnamed453() {
  var o = new core.List<api.Office>();
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

checkUnnamed453(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

buildUnnamed454() {
  var o = new core.List<api.Official>();
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

checkUnnamed454(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoData = 0;
buildRepresentativeInfoData() {
  var o = new api.RepresentativeInfoData();
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    o.divisions = buildUnnamed452();
    o.offices = buildUnnamed453();
    o.officials = buildUnnamed454();
  }
  buildCounterRepresentativeInfoData--;
  return o;
}

checkRepresentativeInfoData(api.RepresentativeInfoData o) {
  buildCounterRepresentativeInfoData++;
  if (buildCounterRepresentativeInfoData < 3) {
    checkUnnamed452(o.divisions);
    checkUnnamed453(o.offices);
    checkUnnamed454(o.officials);
  }
  buildCounterRepresentativeInfoData--;
}

buildUnnamed455() {
  var o = new core.Map<core.String, api.GeographicDivision>();
  o["x"] = buildGeographicDivision();
  o["y"] = buildGeographicDivision();
  return o;
}

checkUnnamed455(core.Map<core.String, api.GeographicDivision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeographicDivision(o["x"]);
  checkGeographicDivision(o["y"]);
}

buildUnnamed456() {
  var o = new core.List<api.Office>();
  o.add(buildOffice());
  o.add(buildOffice());
  return o;
}

checkUnnamed456(core.List<api.Office> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffice(o[0]);
  checkOffice(o[1]);
}

buildUnnamed457() {
  var o = new core.List<api.Official>();
  o.add(buildOfficial());
  o.add(buildOfficial());
  return o;
}

checkUnnamed457(core.List<api.Official> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfficial(o[0]);
  checkOfficial(o[1]);
}

core.int buildCounterRepresentativeInfoResponse = 0;
buildRepresentativeInfoResponse() {
  var o = new api.RepresentativeInfoResponse();
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    o.divisions = buildUnnamed455();
    o.kind = "foo";
    o.normalizedInput = buildSimpleAddressType();
    o.offices = buildUnnamed456();
    o.officials = buildUnnamed457();
  }
  buildCounterRepresentativeInfoResponse--;
  return o;
}

checkRepresentativeInfoResponse(api.RepresentativeInfoResponse o) {
  buildCounterRepresentativeInfoResponse++;
  if (buildCounterRepresentativeInfoResponse < 3) {
    checkUnnamed455(o.divisions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSimpleAddressType(o.normalizedInput);
    checkUnnamed456(o.offices);
    checkUnnamed457(o.officials);
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

buildUnnamed458() {
  var o = new core.List<api.Contest>();
  o.add(buildContest());
  o.add(buildContest());
  return o;
}

checkUnnamed458(core.List<api.Contest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContest(o[0]);
  checkContest(o[1]);
}

buildUnnamed459() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed459(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed460() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed460(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed461() {
  var o = new core.List<api.Election>();
  o.add(buildElection());
  o.add(buildElection());
  return o;
}

checkUnnamed461(core.List<api.Election> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElection(o[0]);
  checkElection(o[1]);
}

buildUnnamed462() {
  var o = new core.List<api.PollingLocation>();
  o.add(buildPollingLocation());
  o.add(buildPollingLocation());
  return o;
}

checkUnnamed462(core.List<api.PollingLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollingLocation(o[0]);
  checkPollingLocation(o[1]);
}

buildUnnamed463() {
  var o = new core.List<api.AdministrationRegion>();
  o.add(buildAdministrationRegion());
  o.add(buildAdministrationRegion());
  return o;
}

checkUnnamed463(core.List<api.AdministrationRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrationRegion(o[0]);
  checkAdministrationRegion(o[1]);
}

core.int buildCounterVoterInfoResponse = 0;
buildVoterInfoResponse() {
  var o = new api.VoterInfoResponse();
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    o.contests = buildUnnamed458();
    o.dropOffLocations = buildUnnamed459();
    o.earlyVoteSites = buildUnnamed460();
    o.election = buildElection();
    o.kind = "foo";
    o.normalizedInput = buildSimpleAddressType();
    o.otherElections = buildUnnamed461();
    o.pollingLocations = buildUnnamed462();
    o.precinctId = "foo";
    o.state = buildUnnamed463();
  }
  buildCounterVoterInfoResponse--;
  return o;
}

checkVoterInfoResponse(api.VoterInfoResponse o) {
  buildCounterVoterInfoResponse++;
  if (buildCounterVoterInfoResponse < 3) {
    checkUnnamed458(o.contests);
    checkUnnamed459(o.dropOffLocations);
    checkUnnamed460(o.earlyVoteSites);
    checkElection(o.election);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSimpleAddressType(o.normalizedInput);
    checkUnnamed461(o.otherElections);
    checkUnnamed462(o.pollingLocations);
    unittest.expect(o.precinctId, unittest.equals('foo'));
    checkUnnamed463(o.state);
  }
  buildCounterVoterInfoResponse--;
}

buildUnnamed464() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed464(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed465() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed466() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed466(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed467() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed467(core.List<core.String> o) {
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


  unittest.group("obj-schema-GeographicDivision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeographicDivision();
      var od = new api.GeographicDivision.fromJson(o.toJson());
      checkGeographicDivision(od);
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


  unittest.group("obj-schema-PollingLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildPollingLocation();
      var od = new api.PollingLocation.fromJson(o.toJson());
      checkPollingLocation(od);
    });
  });


  unittest.group("obj-schema-RepresentativeInfoData", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepresentativeInfoData();
      var od = new api.RepresentativeInfoData.fromJson(o.toJson());
      checkRepresentativeInfoData(od);
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


  unittest.group("obj-schema-VoterInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoterInfoResponse();
      var od = new api.VoterInfoResponse.fromJson(o.toJson());
      checkVoterInfoResponse(od);
    });
  });


  unittest.group("resource-DivisionsResourceApi", () {
    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
      api.DivisionsResourceApi res = new api.CivicinfoApi(mock).divisions;
      var arg_query = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("divisions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDivisionSearchResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(query: arg_query).then(unittest.expectAsync(((api.DivisionSearchResponse response) {
        checkDivisionSearchResponse(response);
      })));
    });

  });


  unittest.group("resource-ElectionsResourceApi", () {
    unittest.test("method--electionQuery", () {

      var mock = new common_test.HttpServerMock();
      api.ElectionsResourceApi res = new api.CivicinfoApi(mock).elections;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("elections"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildElectionsQueryResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.electionQuery().then(unittest.expectAsync(((api.ElectionsQueryResponse response) {
        checkElectionsQueryResponse(response);
      })));
    });

    unittest.test("method--voterInfoQuery", () {

      var mock = new common_test.HttpServerMock();
      api.ElectionsResourceApi res = new api.CivicinfoApi(mock).elections;
      var arg_address = "foo";
      var arg_electionId = "foo";
      var arg_officialOnly = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("voterinfo"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["electionId"].first, unittest.equals(arg_electionId));
        unittest.expect(queryMap["officialOnly"].first, unittest.equals("$arg_officialOnly"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVoterInfoResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.voterInfoQuery(arg_address, electionId: arg_electionId, officialOnly: arg_officialOnly).then(unittest.expectAsync(((api.VoterInfoResponse response) {
        checkVoterInfoResponse(response);
      })));
    });

  });


  unittest.group("resource-RepresentativesResourceApi", () {
    unittest.test("method--representativeInfoByAddress", () {

      var mock = new common_test.HttpServerMock();
      api.RepresentativesResourceApi res = new api.CivicinfoApi(mock).representatives;
      var arg_address = "foo";
      var arg_includeOffices = true;
      var arg_levels = buildUnnamed464();
      var arg_roles = buildUnnamed465();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("representatives"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["includeOffices"].first, unittest.equals("$arg_includeOffices"));
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRepresentativeInfoResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.representativeInfoByAddress(address: arg_address, includeOffices: arg_includeOffices, levels: arg_levels, roles: arg_roles).then(unittest.expectAsync(((api.RepresentativeInfoResponse response) {
        checkRepresentativeInfoResponse(response);
      })));
    });

    unittest.test("method--representativeInfoByDivision", () {

      var mock = new common_test.HttpServerMock();
      api.RepresentativesResourceApi res = new api.CivicinfoApi(mock).representatives;
      var arg_ocdId = "foo";
      var arg_levels = buildUnnamed466();
      var arg_recursive = true;
      var arg_roles = buildUnnamed467();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("civicinfo/v2/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("representatives/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_ocdId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["levels"], unittest.equals(arg_levels));
        unittest.expect(queryMap["recursive"].first, unittest.equals("$arg_recursive"));
        unittest.expect(queryMap["roles"], unittest.equals(arg_roles));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRepresentativeInfoData());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.representativeInfoByDivision(arg_ocdId, levels: arg_levels, recursive: arg_recursive, roles: arg_roles).then(unittest.expectAsync(((api.RepresentativeInfoData response) {
        checkRepresentativeInfoData(response);
      })));
    });

  });


}

