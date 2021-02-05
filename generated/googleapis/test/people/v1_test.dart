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
import 'package:googleapis/people/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  var o = api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.city = 'foo';
    o.country = 'foo';
    o.countryCode = 'foo';
    o.extendedAddress = 'foo';
    o.formattedType = 'foo';
    o.formattedValue = 'foo';
    o.metadata = buildFieldMetadata();
    o.poBox = 'foo';
    o.postalCode = 'foo';
    o.region = 'foo';
    o.streetAddress = 'foo';
    o.type = 'foo';
  }
  buildCounterAddress--;
  return o;
}

void checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.extendedAddress, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.poBox, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.streetAddress, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAddress--;
}

core.int buildCounterAgeRangeType = 0;
api.AgeRangeType buildAgeRangeType() {
  var o = api.AgeRangeType();
  buildCounterAgeRangeType++;
  if (buildCounterAgeRangeType < 3) {
    o.ageRange = 'foo';
    o.metadata = buildFieldMetadata();
  }
  buildCounterAgeRangeType--;
  return o;
}

void checkAgeRangeType(api.AgeRangeType o) {
  buildCounterAgeRangeType++;
  if (buildCounterAgeRangeType < 3) {
    unittest.expect(o.ageRange, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
  }
  buildCounterAgeRangeType--;
}

core.List<api.ContactGroupResponse> buildUnnamed5312() {
  var o = <api.ContactGroupResponse>[];
  o.add(buildContactGroupResponse());
  o.add(buildContactGroupResponse());
  return o;
}

void checkUnnamed5312(core.List<api.ContactGroupResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactGroupResponse(o[0] as api.ContactGroupResponse);
  checkContactGroupResponse(o[1] as api.ContactGroupResponse);
}

core.int buildCounterBatchGetContactGroupsResponse = 0;
api.BatchGetContactGroupsResponse buildBatchGetContactGroupsResponse() {
  var o = api.BatchGetContactGroupsResponse();
  buildCounterBatchGetContactGroupsResponse++;
  if (buildCounterBatchGetContactGroupsResponse < 3) {
    o.responses = buildUnnamed5312();
  }
  buildCounterBatchGetContactGroupsResponse--;
  return o;
}

void checkBatchGetContactGroupsResponse(api.BatchGetContactGroupsResponse o) {
  buildCounterBatchGetContactGroupsResponse++;
  if (buildCounterBatchGetContactGroupsResponse < 3) {
    checkUnnamed5312(o.responses);
  }
  buildCounterBatchGetContactGroupsResponse--;
}

core.int buildCounterBiography = 0;
api.Biography buildBiography() {
  var o = api.Biography();
  buildCounterBiography++;
  if (buildCounterBiography < 3) {
    o.contentType = 'foo';
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterBiography--;
  return o;
}

void checkBiography(api.Biography o) {
  buildCounterBiography++;
  if (buildCounterBiography < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBiography--;
}

core.int buildCounterBirthday = 0;
api.Birthday buildBirthday() {
  var o = api.Birthday();
  buildCounterBirthday++;
  if (buildCounterBirthday < 3) {
    o.date = buildDate();
    o.metadata = buildFieldMetadata();
    o.text = 'foo';
  }
  buildCounterBirthday--;
  return o;
}

void checkBirthday(api.Birthday o) {
  buildCounterBirthday++;
  if (buildCounterBirthday < 3) {
    checkDate(o.date as api.Date);
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterBirthday--;
}

core.int buildCounterBraggingRights = 0;
api.BraggingRights buildBraggingRights() {
  var o = api.BraggingRights();
  buildCounterBraggingRights++;
  if (buildCounterBraggingRights < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterBraggingRights--;
  return o;
}

void checkBraggingRights(api.BraggingRights o) {
  buildCounterBraggingRights++;
  if (buildCounterBraggingRights < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBraggingRights--;
}

core.int buildCounterCalendarUrl = 0;
api.CalendarUrl buildCalendarUrl() {
  var o = api.CalendarUrl();
  buildCounterCalendarUrl++;
  if (buildCounterCalendarUrl < 3) {
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterCalendarUrl--;
  return o;
}

void checkCalendarUrl(api.CalendarUrl o) {
  buildCounterCalendarUrl++;
  if (buildCounterCalendarUrl < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCalendarUrl--;
}

core.int buildCounterClientData = 0;
api.ClientData buildClientData() {
  var o = api.ClientData();
  buildCounterClientData++;
  if (buildCounterClientData < 3) {
    o.key = 'foo';
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterClientData--;
  return o;
}

void checkClientData(api.ClientData o) {
  buildCounterClientData++;
  if (buildCounterClientData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterClientData--;
}

core.List<api.GroupClientData> buildUnnamed5313() {
  var o = <api.GroupClientData>[];
  o.add(buildGroupClientData());
  o.add(buildGroupClientData());
  return o;
}

void checkUnnamed5313(core.List<api.GroupClientData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupClientData(o[0] as api.GroupClientData);
  checkGroupClientData(o[1] as api.GroupClientData);
}

core.List<core.String> buildUnnamed5314() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContactGroup = 0;
api.ContactGroup buildContactGroup() {
  var o = api.ContactGroup();
  buildCounterContactGroup++;
  if (buildCounterContactGroup < 3) {
    o.clientData = buildUnnamed5313();
    o.etag = 'foo';
    o.formattedName = 'foo';
    o.groupType = 'foo';
    o.memberCount = 42;
    o.memberResourceNames = buildUnnamed5314();
    o.metadata = buildContactGroupMetadata();
    o.name = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterContactGroup--;
  return o;
}

void checkContactGroup(api.ContactGroup o) {
  buildCounterContactGroup++;
  if (buildCounterContactGroup < 3) {
    checkUnnamed5313(o.clientData);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.formattedName, unittest.equals('foo'));
    unittest.expect(o.groupType, unittest.equals('foo'));
    unittest.expect(o.memberCount, unittest.equals(42));
    checkUnnamed5314(o.memberResourceNames);
    checkContactGroupMetadata(o.metadata as api.ContactGroupMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterContactGroup--;
}

core.int buildCounterContactGroupMembership = 0;
api.ContactGroupMembership buildContactGroupMembership() {
  var o = api.ContactGroupMembership();
  buildCounterContactGroupMembership++;
  if (buildCounterContactGroupMembership < 3) {
    o.contactGroupId = 'foo';
    o.contactGroupResourceName = 'foo';
  }
  buildCounterContactGroupMembership--;
  return o;
}

void checkContactGroupMembership(api.ContactGroupMembership o) {
  buildCounterContactGroupMembership++;
  if (buildCounterContactGroupMembership < 3) {
    unittest.expect(o.contactGroupId, unittest.equals('foo'));
    unittest.expect(o.contactGroupResourceName, unittest.equals('foo'));
  }
  buildCounterContactGroupMembership--;
}

core.int buildCounterContactGroupMetadata = 0;
api.ContactGroupMetadata buildContactGroupMetadata() {
  var o = api.ContactGroupMetadata();
  buildCounterContactGroupMetadata++;
  if (buildCounterContactGroupMetadata < 3) {
    o.deleted = true;
    o.updateTime = 'foo';
  }
  buildCounterContactGroupMetadata--;
  return o;
}

void checkContactGroupMetadata(api.ContactGroupMetadata o) {
  buildCounterContactGroupMetadata++;
  if (buildCounterContactGroupMetadata < 3) {
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterContactGroupMetadata--;
}

core.int buildCounterContactGroupResponse = 0;
api.ContactGroupResponse buildContactGroupResponse() {
  var o = api.ContactGroupResponse();
  buildCounterContactGroupResponse++;
  if (buildCounterContactGroupResponse < 3) {
    o.contactGroup = buildContactGroup();
    o.requestedResourceName = 'foo';
    o.status = buildStatus();
  }
  buildCounterContactGroupResponse--;
  return o;
}

void checkContactGroupResponse(api.ContactGroupResponse o) {
  buildCounterContactGroupResponse++;
  if (buildCounterContactGroupResponse < 3) {
    checkContactGroup(o.contactGroup as api.ContactGroup);
    unittest.expect(o.requestedResourceName, unittest.equals('foo'));
    checkStatus(o.status as api.Status);
  }
  buildCounterContactGroupResponse--;
}

core.List<core.String> buildUnnamed5315() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5315(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCopyOtherContactToMyContactsGroupRequest = 0;
api.CopyOtherContactToMyContactsGroupRequest
    buildCopyOtherContactToMyContactsGroupRequest() {
  var o = api.CopyOtherContactToMyContactsGroupRequest();
  buildCounterCopyOtherContactToMyContactsGroupRequest++;
  if (buildCounterCopyOtherContactToMyContactsGroupRequest < 3) {
    o.copyMask = 'foo';
    o.readMask = 'foo';
    o.sources = buildUnnamed5315();
  }
  buildCounterCopyOtherContactToMyContactsGroupRequest--;
  return o;
}

void checkCopyOtherContactToMyContactsGroupRequest(
    api.CopyOtherContactToMyContactsGroupRequest o) {
  buildCounterCopyOtherContactToMyContactsGroupRequest++;
  if (buildCounterCopyOtherContactToMyContactsGroupRequest < 3) {
    unittest.expect(o.copyMask, unittest.equals('foo'));
    unittest.expect(o.readMask, unittest.equals('foo'));
    checkUnnamed5315(o.sources);
  }
  buildCounterCopyOtherContactToMyContactsGroupRequest--;
}

core.int buildCounterCoverPhoto = 0;
api.CoverPhoto buildCoverPhoto() {
  var o = api.CoverPhoto();
  buildCounterCoverPhoto++;
  if (buildCounterCoverPhoto < 3) {
    o.default_ = true;
    o.metadata = buildFieldMetadata();
    o.url = 'foo';
  }
  buildCounterCoverPhoto--;
  return o;
}

void checkCoverPhoto(api.CoverPhoto o) {
  buildCounterCoverPhoto++;
  if (buildCounterCoverPhoto < 3) {
    unittest.expect(o.default_, unittest.isTrue);
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCoverPhoto--;
}

core.int buildCounterCreateContactGroupRequest = 0;
api.CreateContactGroupRequest buildCreateContactGroupRequest() {
  var o = api.CreateContactGroupRequest();
  buildCounterCreateContactGroupRequest++;
  if (buildCounterCreateContactGroupRequest < 3) {
    o.contactGroup = buildContactGroup();
    o.readGroupFields = 'foo';
  }
  buildCounterCreateContactGroupRequest--;
  return o;
}

void checkCreateContactGroupRequest(api.CreateContactGroupRequest o) {
  buildCounterCreateContactGroupRequest++;
  if (buildCounterCreateContactGroupRequest < 3) {
    checkContactGroup(o.contactGroup as api.ContactGroup);
    unittest.expect(o.readGroupFields, unittest.equals('foo'));
  }
  buildCounterCreateContactGroupRequest--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeleteContactPhotoResponse = 0;
api.DeleteContactPhotoResponse buildDeleteContactPhotoResponse() {
  var o = api.DeleteContactPhotoResponse();
  buildCounterDeleteContactPhotoResponse++;
  if (buildCounterDeleteContactPhotoResponse < 3) {
    o.person = buildPerson();
  }
  buildCounterDeleteContactPhotoResponse--;
  return o;
}

void checkDeleteContactPhotoResponse(api.DeleteContactPhotoResponse o) {
  buildCounterDeleteContactPhotoResponse++;
  if (buildCounterDeleteContactPhotoResponse < 3) {
    checkPerson(o.person as api.Person);
  }
  buildCounterDeleteContactPhotoResponse--;
}

core.int buildCounterDomainMembership = 0;
api.DomainMembership buildDomainMembership() {
  var o = api.DomainMembership();
  buildCounterDomainMembership++;
  if (buildCounterDomainMembership < 3) {
    o.inViewerDomain = true;
  }
  buildCounterDomainMembership--;
  return o;
}

void checkDomainMembership(api.DomainMembership o) {
  buildCounterDomainMembership++;
  if (buildCounterDomainMembership < 3) {
    unittest.expect(o.inViewerDomain, unittest.isTrue);
  }
  buildCounterDomainMembership--;
}

core.int buildCounterEmailAddress = 0;
api.EmailAddress buildEmailAddress() {
  var o = api.EmailAddress();
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    o.displayName = 'foo';
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterEmailAddress--;
  return o;
}

void checkEmailAddress(api.EmailAddress o) {
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEmailAddress--;
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  var o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.date = buildDate();
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkDate(o.date as api.Date);
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterEvent--;
}

core.int buildCounterExternalId = 0;
api.ExternalId buildExternalId() {
  var o = api.ExternalId();
  buildCounterExternalId++;
  if (buildCounterExternalId < 3) {
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterExternalId--;
  return o;
}

void checkExternalId(api.ExternalId o) {
  buildCounterExternalId++;
  if (buildCounterExternalId < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterExternalId--;
}

core.int buildCounterFieldMetadata = 0;
api.FieldMetadata buildFieldMetadata() {
  var o = api.FieldMetadata();
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    o.primary = true;
    o.source = buildSource();
    o.verified = true;
  }
  buildCounterFieldMetadata--;
  return o;
}

void checkFieldMetadata(api.FieldMetadata o) {
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    unittest.expect(o.primary, unittest.isTrue);
    checkSource(o.source as api.Source);
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterFieldMetadata--;
}

core.int buildCounterFileAs = 0;
api.FileAs buildFileAs() {
  var o = api.FileAs();
  buildCounterFileAs++;
  if (buildCounterFileAs < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterFileAs--;
  return o;
}

void checkFileAs(api.FileAs o) {
  buildCounterFileAs++;
  if (buildCounterFileAs < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterFileAs--;
}

core.int buildCounterGender = 0;
api.Gender buildGender() {
  var o = api.Gender();
  buildCounterGender++;
  if (buildCounterGender < 3) {
    o.addressMeAs = 'foo';
    o.formattedValue = 'foo';
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterGender--;
  return o;
}

void checkGender(api.Gender o) {
  buildCounterGender++;
  if (buildCounterGender < 3) {
    unittest.expect(o.addressMeAs, unittest.equals('foo'));
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGender--;
}

core.List<api.PersonResponse> buildUnnamed5316() {
  var o = <api.PersonResponse>[];
  o.add(buildPersonResponse());
  o.add(buildPersonResponse());
  return o;
}

void checkUnnamed5316(core.List<api.PersonResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonResponse(o[0] as api.PersonResponse);
  checkPersonResponse(o[1] as api.PersonResponse);
}

core.int buildCounterGetPeopleResponse = 0;
api.GetPeopleResponse buildGetPeopleResponse() {
  var o = api.GetPeopleResponse();
  buildCounterGetPeopleResponse++;
  if (buildCounterGetPeopleResponse < 3) {
    o.responses = buildUnnamed5316();
  }
  buildCounterGetPeopleResponse--;
  return o;
}

void checkGetPeopleResponse(api.GetPeopleResponse o) {
  buildCounterGetPeopleResponse++;
  if (buildCounterGetPeopleResponse < 3) {
    checkUnnamed5316(o.responses);
  }
  buildCounterGetPeopleResponse--;
}

core.int buildCounterGroupClientData = 0;
api.GroupClientData buildGroupClientData() {
  var o = api.GroupClientData();
  buildCounterGroupClientData++;
  if (buildCounterGroupClientData < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGroupClientData--;
  return o;
}

void checkGroupClientData(api.GroupClientData o) {
  buildCounterGroupClientData++;
  if (buildCounterGroupClientData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGroupClientData--;
}

core.int buildCounterImClient = 0;
api.ImClient buildImClient() {
  var o = api.ImClient();
  buildCounterImClient++;
  if (buildCounterImClient < 3) {
    o.formattedProtocol = 'foo';
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.protocol = 'foo';
    o.type = 'foo';
    o.username = 'foo';
  }
  buildCounterImClient--;
  return o;
}

void checkImClient(api.ImClient o) {
  buildCounterImClient++;
  if (buildCounterImClient < 3) {
    unittest.expect(o.formattedProtocol, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterImClient--;
}

core.int buildCounterInterest = 0;
api.Interest buildInterest() {
  var o = api.Interest();
  buildCounterInterest++;
  if (buildCounterInterest < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterInterest--;
  return o;
}

void checkInterest(api.Interest o) {
  buildCounterInterest++;
  if (buildCounterInterest < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInterest--;
}

core.List<api.Person> buildUnnamed5317() {
  var o = <api.Person>[];
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

void checkUnnamed5317(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0] as api.Person);
  checkPerson(o[1] as api.Person);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  var o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed5317();
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.totalItems = 42;
    o.totalPeople = 42;
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed5317(o.connections);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
    unittest.expect(o.totalPeople, unittest.equals(42));
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.ContactGroup> buildUnnamed5318() {
  var o = <api.ContactGroup>[];
  o.add(buildContactGroup());
  o.add(buildContactGroup());
  return o;
}

void checkUnnamed5318(core.List<api.ContactGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactGroup(o[0] as api.ContactGroup);
  checkContactGroup(o[1] as api.ContactGroup);
}

core.int buildCounterListContactGroupsResponse = 0;
api.ListContactGroupsResponse buildListContactGroupsResponse() {
  var o = api.ListContactGroupsResponse();
  buildCounterListContactGroupsResponse++;
  if (buildCounterListContactGroupsResponse < 3) {
    o.contactGroups = buildUnnamed5318();
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.totalItems = 42;
  }
  buildCounterListContactGroupsResponse--;
  return o;
}

void checkListContactGroupsResponse(api.ListContactGroupsResponse o) {
  buildCounterListContactGroupsResponse++;
  if (buildCounterListContactGroupsResponse < 3) {
    checkUnnamed5318(o.contactGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterListContactGroupsResponse--;
}

core.List<api.Person> buildUnnamed5319() {
  var o = <api.Person>[];
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

void checkUnnamed5319(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0] as api.Person);
  checkPerson(o[1] as api.Person);
}

core.int buildCounterListDirectoryPeopleResponse = 0;
api.ListDirectoryPeopleResponse buildListDirectoryPeopleResponse() {
  var o = api.ListDirectoryPeopleResponse();
  buildCounterListDirectoryPeopleResponse++;
  if (buildCounterListDirectoryPeopleResponse < 3) {
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.people = buildUnnamed5319();
  }
  buildCounterListDirectoryPeopleResponse--;
  return o;
}

void checkListDirectoryPeopleResponse(api.ListDirectoryPeopleResponse o) {
  buildCounterListDirectoryPeopleResponse++;
  if (buildCounterListDirectoryPeopleResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    checkUnnamed5319(o.people);
  }
  buildCounterListDirectoryPeopleResponse--;
}

core.List<api.Person> buildUnnamed5320() {
  var o = <api.Person>[];
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

void checkUnnamed5320(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0] as api.Person);
  checkPerson(o[1] as api.Person);
}

core.int buildCounterListOtherContactsResponse = 0;
api.ListOtherContactsResponse buildListOtherContactsResponse() {
  var o = api.ListOtherContactsResponse();
  buildCounterListOtherContactsResponse++;
  if (buildCounterListOtherContactsResponse < 3) {
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.otherContacts = buildUnnamed5320();
  }
  buildCounterListOtherContactsResponse--;
  return o;
}

void checkListOtherContactsResponse(api.ListOtherContactsResponse o) {
  buildCounterListOtherContactsResponse++;
  if (buildCounterListOtherContactsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    checkUnnamed5320(o.otherContacts);
  }
  buildCounterListOtherContactsResponse--;
}

core.int buildCounterLocale = 0;
api.Locale buildLocale() {
  var o = api.Locale();
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterLocale--;
  return o;
}

void checkLocale(api.Locale o) {
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocale--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.buildingId = 'foo';
    o.current = true;
    o.deskCode = 'foo';
    o.floor = 'foo';
    o.floorSection = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.buildingId, unittest.equals('foo'));
    unittest.expect(o.current, unittest.isTrue);
    unittest.expect(o.deskCode, unittest.equals('foo'));
    unittest.expect(o.floor, unittest.equals('foo'));
    unittest.expect(o.floorSection, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  var o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.contactGroupMembership = buildContactGroupMembership();
    o.domainMembership = buildDomainMembership();
    o.metadata = buildFieldMetadata();
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    checkContactGroupMembership(
        o.contactGroupMembership as api.ContactGroupMembership);
    checkDomainMembership(o.domainMembership as api.DomainMembership);
    checkFieldMetadata(o.metadata as api.FieldMetadata);
  }
  buildCounterMembership--;
}

core.int buildCounterMiscKeyword = 0;
api.MiscKeyword buildMiscKeyword() {
  var o = api.MiscKeyword();
  buildCounterMiscKeyword++;
  if (buildCounterMiscKeyword < 3) {
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterMiscKeyword--;
  return o;
}

void checkMiscKeyword(api.MiscKeyword o) {
  buildCounterMiscKeyword++;
  if (buildCounterMiscKeyword < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMiscKeyword--;
}

core.List<core.String> buildUnnamed5321() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5321(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5322() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5322(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyContactGroupMembersRequest = 0;
api.ModifyContactGroupMembersRequest buildModifyContactGroupMembersRequest() {
  var o = api.ModifyContactGroupMembersRequest();
  buildCounterModifyContactGroupMembersRequest++;
  if (buildCounterModifyContactGroupMembersRequest < 3) {
    o.resourceNamesToAdd = buildUnnamed5321();
    o.resourceNamesToRemove = buildUnnamed5322();
  }
  buildCounterModifyContactGroupMembersRequest--;
  return o;
}

void checkModifyContactGroupMembersRequest(
    api.ModifyContactGroupMembersRequest o) {
  buildCounterModifyContactGroupMembersRequest++;
  if (buildCounterModifyContactGroupMembersRequest < 3) {
    checkUnnamed5321(o.resourceNamesToAdd);
    checkUnnamed5322(o.resourceNamesToRemove);
  }
  buildCounterModifyContactGroupMembersRequest--;
}

core.List<core.String> buildUnnamed5323() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5324() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5324(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyContactGroupMembersResponse = 0;
api.ModifyContactGroupMembersResponse buildModifyContactGroupMembersResponse() {
  var o = api.ModifyContactGroupMembersResponse();
  buildCounterModifyContactGroupMembersResponse++;
  if (buildCounterModifyContactGroupMembersResponse < 3) {
    o.canNotRemoveLastContactGroupResourceNames = buildUnnamed5323();
    o.notFoundResourceNames = buildUnnamed5324();
  }
  buildCounterModifyContactGroupMembersResponse--;
  return o;
}

void checkModifyContactGroupMembersResponse(
    api.ModifyContactGroupMembersResponse o) {
  buildCounterModifyContactGroupMembersResponse++;
  if (buildCounterModifyContactGroupMembersResponse < 3) {
    checkUnnamed5323(o.canNotRemoveLastContactGroupResourceNames);
    checkUnnamed5324(o.notFoundResourceNames);
  }
  buildCounterModifyContactGroupMembersResponse--;
}

core.int buildCounterName = 0;
api.Name buildName() {
  var o = api.Name();
  buildCounterName++;
  if (buildCounterName < 3) {
    o.displayName = 'foo';
    o.displayNameLastFirst = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
    o.honorificPrefix = 'foo';
    o.honorificSuffix = 'foo';
    o.metadata = buildFieldMetadata();
    o.middleName = 'foo';
    o.phoneticFamilyName = 'foo';
    o.phoneticFullName = 'foo';
    o.phoneticGivenName = 'foo';
    o.phoneticHonorificPrefix = 'foo';
    o.phoneticHonorificSuffix = 'foo';
    o.phoneticMiddleName = 'foo';
    o.unstructuredName = 'foo';
  }
  buildCounterName--;
  return o;
}

void checkName(api.Name o) {
  buildCounterName++;
  if (buildCounterName < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.displayNameLastFirst, unittest.equals('foo'));
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    unittest.expect(o.honorificPrefix, unittest.equals('foo'));
    unittest.expect(o.honorificSuffix, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.middleName, unittest.equals('foo'));
    unittest.expect(o.phoneticFamilyName, unittest.equals('foo'));
    unittest.expect(o.phoneticFullName, unittest.equals('foo'));
    unittest.expect(o.phoneticGivenName, unittest.equals('foo'));
    unittest.expect(o.phoneticHonorificPrefix, unittest.equals('foo'));
    unittest.expect(o.phoneticHonorificSuffix, unittest.equals('foo'));
    unittest.expect(o.phoneticMiddleName, unittest.equals('foo'));
    unittest.expect(o.unstructuredName, unittest.equals('foo'));
  }
  buildCounterName--;
}

core.int buildCounterNickname = 0;
api.Nickname buildNickname() {
  var o = api.Nickname();
  buildCounterNickname++;
  if (buildCounterNickname < 3) {
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterNickname--;
  return o;
}

void checkNickname(api.Nickname o) {
  buildCounterNickname++;
  if (buildCounterNickname < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterNickname--;
}

core.int buildCounterOccupation = 0;
api.Occupation buildOccupation() {
  var o = api.Occupation();
  buildCounterOccupation++;
  if (buildCounterOccupation < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterOccupation--;
  return o;
}

void checkOccupation(api.Occupation o) {
  buildCounterOccupation++;
  if (buildCounterOccupation < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOccupation--;
}

core.int buildCounterOrganization = 0;
api.Organization buildOrganization() {
  var o = api.Organization();
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    o.current = true;
    o.department = 'foo';
    o.domain = 'foo';
    o.endDate = buildDate();
    o.formattedType = 'foo';
    o.jobDescription = 'foo';
    o.location = 'foo';
    o.metadata = buildFieldMetadata();
    o.name = 'foo';
    o.phoneticName = 'foo';
    o.startDate = buildDate();
    o.symbol = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterOrganization--;
  return o;
}

void checkOrganization(api.Organization o) {
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    unittest.expect(o.current, unittest.isTrue);
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    checkDate(o.endDate as api.Date);
    unittest.expect(o.formattedType, unittest.equals('foo'));
    unittest.expect(o.jobDescription, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phoneticName, unittest.equals('foo'));
    checkDate(o.startDate as api.Date);
    unittest.expect(o.symbol, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrganization--;
}

core.List<api.Address> buildUnnamed5325() {
  var o = <api.Address>[];
  o.add(buildAddress());
  o.add(buildAddress());
  return o;
}

void checkUnnamed5325(core.List<api.Address> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddress(o[0] as api.Address);
  checkAddress(o[1] as api.Address);
}

core.List<api.AgeRangeType> buildUnnamed5326() {
  var o = <api.AgeRangeType>[];
  o.add(buildAgeRangeType());
  o.add(buildAgeRangeType());
  return o;
}

void checkUnnamed5326(core.List<api.AgeRangeType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgeRangeType(o[0] as api.AgeRangeType);
  checkAgeRangeType(o[1] as api.AgeRangeType);
}

core.List<api.Biography> buildUnnamed5327() {
  var o = <api.Biography>[];
  o.add(buildBiography());
  o.add(buildBiography());
  return o;
}

void checkUnnamed5327(core.List<api.Biography> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBiography(o[0] as api.Biography);
  checkBiography(o[1] as api.Biography);
}

core.List<api.Birthday> buildUnnamed5328() {
  var o = <api.Birthday>[];
  o.add(buildBirthday());
  o.add(buildBirthday());
  return o;
}

void checkUnnamed5328(core.List<api.Birthday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBirthday(o[0] as api.Birthday);
  checkBirthday(o[1] as api.Birthday);
}

core.List<api.BraggingRights> buildUnnamed5329() {
  var o = <api.BraggingRights>[];
  o.add(buildBraggingRights());
  o.add(buildBraggingRights());
  return o;
}

void checkUnnamed5329(core.List<api.BraggingRights> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBraggingRights(o[0] as api.BraggingRights);
  checkBraggingRights(o[1] as api.BraggingRights);
}

core.List<api.CalendarUrl> buildUnnamed5330() {
  var o = <api.CalendarUrl>[];
  o.add(buildCalendarUrl());
  o.add(buildCalendarUrl());
  return o;
}

void checkUnnamed5330(core.List<api.CalendarUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarUrl(o[0] as api.CalendarUrl);
  checkCalendarUrl(o[1] as api.CalendarUrl);
}

core.List<api.ClientData> buildUnnamed5331() {
  var o = <api.ClientData>[];
  o.add(buildClientData());
  o.add(buildClientData());
  return o;
}

void checkUnnamed5331(core.List<api.ClientData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientData(o[0] as api.ClientData);
  checkClientData(o[1] as api.ClientData);
}

core.List<api.CoverPhoto> buildUnnamed5332() {
  var o = <api.CoverPhoto>[];
  o.add(buildCoverPhoto());
  o.add(buildCoverPhoto());
  return o;
}

void checkUnnamed5332(core.List<api.CoverPhoto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCoverPhoto(o[0] as api.CoverPhoto);
  checkCoverPhoto(o[1] as api.CoverPhoto);
}

core.List<api.EmailAddress> buildUnnamed5333() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed5333(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.Event> buildUnnamed5334() {
  var o = <api.Event>[];
  o.add(buildEvent());
  o.add(buildEvent());
  return o;
}

void checkUnnamed5334(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0] as api.Event);
  checkEvent(o[1] as api.Event);
}

core.List<api.ExternalId> buildUnnamed5335() {
  var o = <api.ExternalId>[];
  o.add(buildExternalId());
  o.add(buildExternalId());
  return o;
}

void checkUnnamed5335(core.List<api.ExternalId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalId(o[0] as api.ExternalId);
  checkExternalId(o[1] as api.ExternalId);
}

core.List<api.FileAs> buildUnnamed5336() {
  var o = <api.FileAs>[];
  o.add(buildFileAs());
  o.add(buildFileAs());
  return o;
}

void checkUnnamed5336(core.List<api.FileAs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileAs(o[0] as api.FileAs);
  checkFileAs(o[1] as api.FileAs);
}

core.List<api.Gender> buildUnnamed5337() {
  var o = <api.Gender>[];
  o.add(buildGender());
  o.add(buildGender());
  return o;
}

void checkUnnamed5337(core.List<api.Gender> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGender(o[0] as api.Gender);
  checkGender(o[1] as api.Gender);
}

core.List<api.ImClient> buildUnnamed5338() {
  var o = <api.ImClient>[];
  o.add(buildImClient());
  o.add(buildImClient());
  return o;
}

void checkUnnamed5338(core.List<api.ImClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImClient(o[0] as api.ImClient);
  checkImClient(o[1] as api.ImClient);
}

core.List<api.Interest> buildUnnamed5339() {
  var o = <api.Interest>[];
  o.add(buildInterest());
  o.add(buildInterest());
  return o;
}

void checkUnnamed5339(core.List<api.Interest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterest(o[0] as api.Interest);
  checkInterest(o[1] as api.Interest);
}

core.List<api.Locale> buildUnnamed5340() {
  var o = <api.Locale>[];
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

void checkUnnamed5340(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0] as api.Locale);
  checkLocale(o[1] as api.Locale);
}

core.List<api.Location> buildUnnamed5341() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed5341(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.List<api.Membership> buildUnnamed5342() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed5342(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0] as api.Membership);
  checkMembership(o[1] as api.Membership);
}

core.List<api.MiscKeyword> buildUnnamed5343() {
  var o = <api.MiscKeyword>[];
  o.add(buildMiscKeyword());
  o.add(buildMiscKeyword());
  return o;
}

void checkUnnamed5343(core.List<api.MiscKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMiscKeyword(o[0] as api.MiscKeyword);
  checkMiscKeyword(o[1] as api.MiscKeyword);
}

core.List<api.Name> buildUnnamed5344() {
  var o = <api.Name>[];
  o.add(buildName());
  o.add(buildName());
  return o;
}

void checkUnnamed5344(core.List<api.Name> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkName(o[0] as api.Name);
  checkName(o[1] as api.Name);
}

core.List<api.Nickname> buildUnnamed5345() {
  var o = <api.Nickname>[];
  o.add(buildNickname());
  o.add(buildNickname());
  return o;
}

void checkUnnamed5345(core.List<api.Nickname> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNickname(o[0] as api.Nickname);
  checkNickname(o[1] as api.Nickname);
}

core.List<api.Occupation> buildUnnamed5346() {
  var o = <api.Occupation>[];
  o.add(buildOccupation());
  o.add(buildOccupation());
  return o;
}

void checkUnnamed5346(core.List<api.Occupation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccupation(o[0] as api.Occupation);
  checkOccupation(o[1] as api.Occupation);
}

core.List<api.Organization> buildUnnamed5347() {
  var o = <api.Organization>[];
  o.add(buildOrganization());
  o.add(buildOrganization());
  return o;
}

void checkUnnamed5347(core.List<api.Organization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrganization(o[0] as api.Organization);
  checkOrganization(o[1] as api.Organization);
}

core.List<api.PhoneNumber> buildUnnamed5348() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed5348(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0] as api.PhoneNumber);
  checkPhoneNumber(o[1] as api.PhoneNumber);
}

core.List<api.Photo> buildUnnamed5349() {
  var o = <api.Photo>[];
  o.add(buildPhoto());
  o.add(buildPhoto());
  return o;
}

void checkUnnamed5349(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0] as api.Photo);
  checkPhoto(o[1] as api.Photo);
}

core.List<api.Relation> buildUnnamed5350() {
  var o = <api.Relation>[];
  o.add(buildRelation());
  o.add(buildRelation());
  return o;
}

void checkUnnamed5350(core.List<api.Relation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelation(o[0] as api.Relation);
  checkRelation(o[1] as api.Relation);
}

core.List<api.RelationshipInterest> buildUnnamed5351() {
  var o = <api.RelationshipInterest>[];
  o.add(buildRelationshipInterest());
  o.add(buildRelationshipInterest());
  return o;
}

void checkUnnamed5351(core.List<api.RelationshipInterest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelationshipInterest(o[0] as api.RelationshipInterest);
  checkRelationshipInterest(o[1] as api.RelationshipInterest);
}

core.List<api.RelationshipStatus> buildUnnamed5352() {
  var o = <api.RelationshipStatus>[];
  o.add(buildRelationshipStatus());
  o.add(buildRelationshipStatus());
  return o;
}

void checkUnnamed5352(core.List<api.RelationshipStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelationshipStatus(o[0] as api.RelationshipStatus);
  checkRelationshipStatus(o[1] as api.RelationshipStatus);
}

core.List<api.Residence> buildUnnamed5353() {
  var o = <api.Residence>[];
  o.add(buildResidence());
  o.add(buildResidence());
  return o;
}

void checkUnnamed5353(core.List<api.Residence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResidence(o[0] as api.Residence);
  checkResidence(o[1] as api.Residence);
}

core.List<api.SipAddress> buildUnnamed5354() {
  var o = <api.SipAddress>[];
  o.add(buildSipAddress());
  o.add(buildSipAddress());
  return o;
}

void checkUnnamed5354(core.List<api.SipAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSipAddress(o[0] as api.SipAddress);
  checkSipAddress(o[1] as api.SipAddress);
}

core.List<api.Skill> buildUnnamed5355() {
  var o = <api.Skill>[];
  o.add(buildSkill());
  o.add(buildSkill());
  return o;
}

void checkUnnamed5355(core.List<api.Skill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkill(o[0] as api.Skill);
  checkSkill(o[1] as api.Skill);
}

core.List<api.Tagline> buildUnnamed5356() {
  var o = <api.Tagline>[];
  o.add(buildTagline());
  o.add(buildTagline());
  return o;
}

void checkUnnamed5356(core.List<api.Tagline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTagline(o[0] as api.Tagline);
  checkTagline(o[1] as api.Tagline);
}

core.List<api.Url> buildUnnamed5357() {
  var o = <api.Url>[];
  o.add(buildUrl());
  o.add(buildUrl());
  return o;
}

void checkUnnamed5357(core.List<api.Url> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrl(o[0] as api.Url);
  checkUrl(o[1] as api.Url);
}

core.List<api.UserDefined> buildUnnamed5358() {
  var o = <api.UserDefined>[];
  o.add(buildUserDefined());
  o.add(buildUserDefined());
  return o;
}

void checkUnnamed5358(core.List<api.UserDefined> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefined(o[0] as api.UserDefined);
  checkUserDefined(o[1] as api.UserDefined);
}

core.int buildCounterPerson = 0;
api.Person buildPerson() {
  var o = api.Person();
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    o.addresses = buildUnnamed5325();
    o.ageRange = 'foo';
    o.ageRanges = buildUnnamed5326();
    o.biographies = buildUnnamed5327();
    o.birthdays = buildUnnamed5328();
    o.braggingRights = buildUnnamed5329();
    o.calendarUrls = buildUnnamed5330();
    o.clientData = buildUnnamed5331();
    o.coverPhotos = buildUnnamed5332();
    o.emailAddresses = buildUnnamed5333();
    o.etag = 'foo';
    o.events = buildUnnamed5334();
    o.externalIds = buildUnnamed5335();
    o.fileAses = buildUnnamed5336();
    o.genders = buildUnnamed5337();
    o.imClients = buildUnnamed5338();
    o.interests = buildUnnamed5339();
    o.locales = buildUnnamed5340();
    o.locations = buildUnnamed5341();
    o.memberships = buildUnnamed5342();
    o.metadata = buildPersonMetadata();
    o.miscKeywords = buildUnnamed5343();
    o.names = buildUnnamed5344();
    o.nicknames = buildUnnamed5345();
    o.occupations = buildUnnamed5346();
    o.organizations = buildUnnamed5347();
    o.phoneNumbers = buildUnnamed5348();
    o.photos = buildUnnamed5349();
    o.relations = buildUnnamed5350();
    o.relationshipInterests = buildUnnamed5351();
    o.relationshipStatuses = buildUnnamed5352();
    o.residences = buildUnnamed5353();
    o.resourceName = 'foo';
    o.sipAddresses = buildUnnamed5354();
    o.skills = buildUnnamed5355();
    o.taglines = buildUnnamed5356();
    o.urls = buildUnnamed5357();
    o.userDefined = buildUnnamed5358();
  }
  buildCounterPerson--;
  return o;
}

void checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    checkUnnamed5325(o.addresses);
    unittest.expect(o.ageRange, unittest.equals('foo'));
    checkUnnamed5326(o.ageRanges);
    checkUnnamed5327(o.biographies);
    checkUnnamed5328(o.birthdays);
    checkUnnamed5329(o.braggingRights);
    checkUnnamed5330(o.calendarUrls);
    checkUnnamed5331(o.clientData);
    checkUnnamed5332(o.coverPhotos);
    checkUnnamed5333(o.emailAddresses);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5334(o.events);
    checkUnnamed5335(o.externalIds);
    checkUnnamed5336(o.fileAses);
    checkUnnamed5337(o.genders);
    checkUnnamed5338(o.imClients);
    checkUnnamed5339(o.interests);
    checkUnnamed5340(o.locales);
    checkUnnamed5341(o.locations);
    checkUnnamed5342(o.memberships);
    checkPersonMetadata(o.metadata as api.PersonMetadata);
    checkUnnamed5343(o.miscKeywords);
    checkUnnamed5344(o.names);
    checkUnnamed5345(o.nicknames);
    checkUnnamed5346(o.occupations);
    checkUnnamed5347(o.organizations);
    checkUnnamed5348(o.phoneNumbers);
    checkUnnamed5349(o.photos);
    checkUnnamed5350(o.relations);
    checkUnnamed5351(o.relationshipInterests);
    checkUnnamed5352(o.relationshipStatuses);
    checkUnnamed5353(o.residences);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed5354(o.sipAddresses);
    checkUnnamed5355(o.skills);
    checkUnnamed5356(o.taglines);
    checkUnnamed5357(o.urls);
    checkUnnamed5358(o.userDefined);
  }
  buildCounterPerson--;
}

core.List<core.String> buildUnnamed5359() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5360() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Source> buildUnnamed5361() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed5361(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0] as api.Source);
  checkSource(o[1] as api.Source);
}

core.int buildCounterPersonMetadata = 0;
api.PersonMetadata buildPersonMetadata() {
  var o = api.PersonMetadata();
  buildCounterPersonMetadata++;
  if (buildCounterPersonMetadata < 3) {
    o.deleted = true;
    o.linkedPeopleResourceNames = buildUnnamed5359();
    o.objectType = 'foo';
    o.previousResourceNames = buildUnnamed5360();
    o.sources = buildUnnamed5361();
  }
  buildCounterPersonMetadata--;
  return o;
}

void checkPersonMetadata(api.PersonMetadata o) {
  buildCounterPersonMetadata++;
  if (buildCounterPersonMetadata < 3) {
    unittest.expect(o.deleted, unittest.isTrue);
    checkUnnamed5359(o.linkedPeopleResourceNames);
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkUnnamed5360(o.previousResourceNames);
    checkUnnamed5361(o.sources);
  }
  buildCounterPersonMetadata--;
}

core.int buildCounterPersonResponse = 0;
api.PersonResponse buildPersonResponse() {
  var o = api.PersonResponse();
  buildCounterPersonResponse++;
  if (buildCounterPersonResponse < 3) {
    o.httpStatusCode = 42;
    o.person = buildPerson();
    o.requestedResourceName = 'foo';
    o.status = buildStatus();
  }
  buildCounterPersonResponse--;
  return o;
}

void checkPersonResponse(api.PersonResponse o) {
  buildCounterPersonResponse++;
  if (buildCounterPersonResponse < 3) {
    unittest.expect(o.httpStatusCode, unittest.equals(42));
    checkPerson(o.person as api.Person);
    unittest.expect(o.requestedResourceName, unittest.equals('foo'));
    checkStatus(o.status as api.Status);
  }
  buildCounterPersonResponse--;
}

core.int buildCounterPhoneNumber = 0;
api.PhoneNumber buildPhoneNumber() {
  var o = api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.canonicalForm = 'foo';
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterPhoneNumber--;
  return o;
}

void checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(o.canonicalForm, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPhoneNumber--;
}

core.int buildCounterPhoto = 0;
api.Photo buildPhoto() {
  var o = api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.default_ = true;
    o.metadata = buildFieldMetadata();
    o.url = 'foo';
  }
  buildCounterPhoto--;
  return o;
}

void checkPhoto(api.Photo o) {
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    unittest.expect(o.default_, unittest.isTrue);
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPhoto--;
}

core.List<core.String> buildUnnamed5362() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProfileMetadata = 0;
api.ProfileMetadata buildProfileMetadata() {
  var o = api.ProfileMetadata();
  buildCounterProfileMetadata++;
  if (buildCounterProfileMetadata < 3) {
    o.objectType = 'foo';
    o.userTypes = buildUnnamed5362();
  }
  buildCounterProfileMetadata--;
  return o;
}

void checkProfileMetadata(api.ProfileMetadata o) {
  buildCounterProfileMetadata++;
  if (buildCounterProfileMetadata < 3) {
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkUnnamed5362(o.userTypes);
  }
  buildCounterProfileMetadata--;
}

core.int buildCounterRelation = 0;
api.Relation buildRelation() {
  var o = api.Relation();
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.person = 'foo';
    o.type = 'foo';
  }
  buildCounterRelation--;
  return o;
}

void checkRelation(api.Relation o) {
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.person, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRelation--;
}

core.int buildCounterRelationshipInterest = 0;
api.RelationshipInterest buildRelationshipInterest() {
  var o = api.RelationshipInterest();
  buildCounterRelationshipInterest++;
  if (buildCounterRelationshipInterest < 3) {
    o.formattedValue = 'foo';
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterRelationshipInterest--;
  return o;
}

void checkRelationshipInterest(api.RelationshipInterest o) {
  buildCounterRelationshipInterest++;
  if (buildCounterRelationshipInterest < 3) {
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRelationshipInterest--;
}

core.int buildCounterRelationshipStatus = 0;
api.RelationshipStatus buildRelationshipStatus() {
  var o = api.RelationshipStatus();
  buildCounterRelationshipStatus++;
  if (buildCounterRelationshipStatus < 3) {
    o.formattedValue = 'foo';
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterRelationshipStatus--;
  return o;
}

void checkRelationshipStatus(api.RelationshipStatus o) {
  buildCounterRelationshipStatus++;
  if (buildCounterRelationshipStatus < 3) {
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRelationshipStatus--;
}

core.int buildCounterResidence = 0;
api.Residence buildResidence() {
  var o = api.Residence();
  buildCounterResidence++;
  if (buildCounterResidence < 3) {
    o.current = true;
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterResidence--;
  return o;
}

void checkResidence(api.Residence o) {
  buildCounterResidence++;
  if (buildCounterResidence < 3) {
    unittest.expect(o.current, unittest.isTrue);
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterResidence--;
}

core.List<api.Person> buildUnnamed5363() {
  var o = <api.Person>[];
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

void checkUnnamed5363(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0] as api.Person);
  checkPerson(o[1] as api.Person);
}

core.int buildCounterSearchDirectoryPeopleResponse = 0;
api.SearchDirectoryPeopleResponse buildSearchDirectoryPeopleResponse() {
  var o = api.SearchDirectoryPeopleResponse();
  buildCounterSearchDirectoryPeopleResponse++;
  if (buildCounterSearchDirectoryPeopleResponse < 3) {
    o.nextPageToken = 'foo';
    o.people = buildUnnamed5363();
    o.totalSize = 42;
  }
  buildCounterSearchDirectoryPeopleResponse--;
  return o;
}

void checkSearchDirectoryPeopleResponse(api.SearchDirectoryPeopleResponse o) {
  buildCounterSearchDirectoryPeopleResponse++;
  if (buildCounterSearchDirectoryPeopleResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5363(o.people);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterSearchDirectoryPeopleResponse--;
}

core.int buildCounterSipAddress = 0;
api.SipAddress buildSipAddress() {
  var o = api.SipAddress();
  buildCounterSipAddress++;
  if (buildCounterSipAddress < 3) {
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterSipAddress--;
  return o;
}

void checkSipAddress(api.SipAddress o) {
  buildCounterSipAddress++;
  if (buildCounterSipAddress < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSipAddress--;
}

core.int buildCounterSkill = 0;
api.Skill buildSkill() {
  var o = api.Skill();
  buildCounterSkill++;
  if (buildCounterSkill < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterSkill--;
  return o;
}

void checkSkill(api.Skill o) {
  buildCounterSkill++;
  if (buildCounterSkill < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSkill--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  var o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.profileMetadata = buildProfileMetadata();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkProfileMetadata(o.profileMetadata as api.ProfileMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterSource--;
}

core.Map<core.String, core.Object> buildUnnamed5364() {
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

void checkUnnamed5364(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5365() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5364());
  o.add(buildUnnamed5364());
  return o;
}

void checkUnnamed5365(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5364(o[0]);
  checkUnnamed5364(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5365();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5365(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTagline = 0;
api.Tagline buildTagline() {
  var o = api.Tagline();
  buildCounterTagline++;
  if (buildCounterTagline < 3) {
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterTagline--;
  return o;
}

void checkTagline(api.Tagline o) {
  buildCounterTagline++;
  if (buildCounterTagline < 3) {
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTagline--;
}

core.int buildCounterUpdateContactGroupRequest = 0;
api.UpdateContactGroupRequest buildUpdateContactGroupRequest() {
  var o = api.UpdateContactGroupRequest();
  buildCounterUpdateContactGroupRequest++;
  if (buildCounterUpdateContactGroupRequest < 3) {
    o.contactGroup = buildContactGroup();
    o.readGroupFields = 'foo';
    o.updateGroupFields = 'foo';
  }
  buildCounterUpdateContactGroupRequest--;
  return o;
}

void checkUpdateContactGroupRequest(api.UpdateContactGroupRequest o) {
  buildCounterUpdateContactGroupRequest++;
  if (buildCounterUpdateContactGroupRequest < 3) {
    checkContactGroup(o.contactGroup as api.ContactGroup);
    unittest.expect(o.readGroupFields, unittest.equals('foo'));
    unittest.expect(o.updateGroupFields, unittest.equals('foo'));
  }
  buildCounterUpdateContactGroupRequest--;
}

core.List<core.String> buildUnnamed5366() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateContactPhotoRequest = 0;
api.UpdateContactPhotoRequest buildUpdateContactPhotoRequest() {
  var o = api.UpdateContactPhotoRequest();
  buildCounterUpdateContactPhotoRequest++;
  if (buildCounterUpdateContactPhotoRequest < 3) {
    o.personFields = 'foo';
    o.photoBytes = 'foo';
    o.sources = buildUnnamed5366();
  }
  buildCounterUpdateContactPhotoRequest--;
  return o;
}

void checkUpdateContactPhotoRequest(api.UpdateContactPhotoRequest o) {
  buildCounterUpdateContactPhotoRequest++;
  if (buildCounterUpdateContactPhotoRequest < 3) {
    unittest.expect(o.personFields, unittest.equals('foo'));
    unittest.expect(o.photoBytes, unittest.equals('foo'));
    checkUnnamed5366(o.sources);
  }
  buildCounterUpdateContactPhotoRequest--;
}

core.int buildCounterUpdateContactPhotoResponse = 0;
api.UpdateContactPhotoResponse buildUpdateContactPhotoResponse() {
  var o = api.UpdateContactPhotoResponse();
  buildCounterUpdateContactPhotoResponse++;
  if (buildCounterUpdateContactPhotoResponse < 3) {
    o.person = buildPerson();
  }
  buildCounterUpdateContactPhotoResponse--;
  return o;
}

void checkUpdateContactPhotoResponse(api.UpdateContactPhotoResponse o) {
  buildCounterUpdateContactPhotoResponse++;
  if (buildCounterUpdateContactPhotoResponse < 3) {
    checkPerson(o.person as api.Person);
  }
  buildCounterUpdateContactPhotoResponse--;
}

core.int buildCounterUrl = 0;
api.Url buildUrl() {
  var o = api.Url();
  buildCounterUrl++;
  if (buildCounterUrl < 3) {
    o.formattedType = 'foo';
    o.metadata = buildFieldMetadata();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterUrl--;
  return o;
}

void checkUrl(api.Url o) {
  buildCounterUrl++;
  if (buildCounterUrl < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUrl--;
}

core.int buildCounterUserDefined = 0;
api.UserDefined buildUserDefined() {
  var o = api.UserDefined();
  buildCounterUserDefined++;
  if (buildCounterUserDefined < 3) {
    o.key = 'foo';
    o.metadata = buildFieldMetadata();
    o.value = 'foo';
  }
  buildCounterUserDefined--;
  return o;
}

void checkUserDefined(api.UserDefined o) {
  buildCounterUserDefined++;
  if (buildCounterUserDefined < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkFieldMetadata(o.metadata as api.FieldMetadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserDefined--;
}

core.List<core.String> buildUnnamed5367() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5368() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5368(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5369() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5369(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5370() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5370(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5371() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5372() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5373() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5373(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5374() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5375() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5376() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5377() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5378() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5378(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddress();
      var od = api.Address.fromJson(o.toJson());
      checkAddress(od as api.Address);
    });
  });

  unittest.group('obj-schema-AgeRangeType', () {
    unittest.test('to-json--from-json', () {
      var o = buildAgeRangeType();
      var od = api.AgeRangeType.fromJson(o.toJson());
      checkAgeRangeType(od as api.AgeRangeType);
    });
  });

  unittest.group('obj-schema-BatchGetContactGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetContactGroupsResponse();
      var od = api.BatchGetContactGroupsResponse.fromJson(o.toJson());
      checkBatchGetContactGroupsResponse(
          od as api.BatchGetContactGroupsResponse);
    });
  });

  unittest.group('obj-schema-Biography', () {
    unittest.test('to-json--from-json', () {
      var o = buildBiography();
      var od = api.Biography.fromJson(o.toJson());
      checkBiography(od as api.Biography);
    });
  });

  unittest.group('obj-schema-Birthday', () {
    unittest.test('to-json--from-json', () {
      var o = buildBirthday();
      var od = api.Birthday.fromJson(o.toJson());
      checkBirthday(od as api.Birthday);
    });
  });

  unittest.group('obj-schema-BraggingRights', () {
    unittest.test('to-json--from-json', () {
      var o = buildBraggingRights();
      var od = api.BraggingRights.fromJson(o.toJson());
      checkBraggingRights(od as api.BraggingRights);
    });
  });

  unittest.group('obj-schema-CalendarUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarUrl();
      var od = api.CalendarUrl.fromJson(o.toJson());
      checkCalendarUrl(od as api.CalendarUrl);
    });
  });

  unittest.group('obj-schema-ClientData', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientData();
      var od = api.ClientData.fromJson(o.toJson());
      checkClientData(od as api.ClientData);
    });
  });

  unittest.group('obj-schema-ContactGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildContactGroup();
      var od = api.ContactGroup.fromJson(o.toJson());
      checkContactGroup(od as api.ContactGroup);
    });
  });

  unittest.group('obj-schema-ContactGroupMembership', () {
    unittest.test('to-json--from-json', () {
      var o = buildContactGroupMembership();
      var od = api.ContactGroupMembership.fromJson(o.toJson());
      checkContactGroupMembership(od as api.ContactGroupMembership);
    });
  });

  unittest.group('obj-schema-ContactGroupMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildContactGroupMetadata();
      var od = api.ContactGroupMetadata.fromJson(o.toJson());
      checkContactGroupMetadata(od as api.ContactGroupMetadata);
    });
  });

  unittest.group('obj-schema-ContactGroupResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildContactGroupResponse();
      var od = api.ContactGroupResponse.fromJson(o.toJson());
      checkContactGroupResponse(od as api.ContactGroupResponse);
    });
  });

  unittest.group('obj-schema-CopyOtherContactToMyContactsGroupRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCopyOtherContactToMyContactsGroupRequest();
      var od =
          api.CopyOtherContactToMyContactsGroupRequest.fromJson(o.toJson());
      checkCopyOtherContactToMyContactsGroupRequest(
          od as api.CopyOtherContactToMyContactsGroupRequest);
    });
  });

  unittest.group('obj-schema-CoverPhoto', () {
    unittest.test('to-json--from-json', () {
      var o = buildCoverPhoto();
      var od = api.CoverPhoto.fromJson(o.toJson());
      checkCoverPhoto(od as api.CoverPhoto);
    });
  });

  unittest.group('obj-schema-CreateContactGroupRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateContactGroupRequest();
      var od = api.CreateContactGroupRequest.fromJson(o.toJson());
      checkCreateContactGroupRequest(od as api.CreateContactGroupRequest);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DeleteContactPhotoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteContactPhotoResponse();
      var od = api.DeleteContactPhotoResponse.fromJson(o.toJson());
      checkDeleteContactPhotoResponse(od as api.DeleteContactPhotoResponse);
    });
  });

  unittest.group('obj-schema-DomainMembership', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainMembership();
      var od = api.DomainMembership.fromJson(o.toJson());
      checkDomainMembership(od as api.DomainMembership);
    });
  });

  unittest.group('obj-schema-EmailAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmailAddress();
      var od = api.EmailAddress.fromJson(o.toJson());
      checkEmailAddress(od as api.EmailAddress);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () {
      var o = buildEvent();
      var od = api.Event.fromJson(o.toJson());
      checkEvent(od as api.Event);
    });
  });

  unittest.group('obj-schema-ExternalId', () {
    unittest.test('to-json--from-json', () {
      var o = buildExternalId();
      var od = api.ExternalId.fromJson(o.toJson());
      checkExternalId(od as api.ExternalId);
    });
  });

  unittest.group('obj-schema-FieldMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildFieldMetadata();
      var od = api.FieldMetadata.fromJson(o.toJson());
      checkFieldMetadata(od as api.FieldMetadata);
    });
  });

  unittest.group('obj-schema-FileAs', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileAs();
      var od = api.FileAs.fromJson(o.toJson());
      checkFileAs(od as api.FileAs);
    });
  });

  unittest.group('obj-schema-Gender', () {
    unittest.test('to-json--from-json', () {
      var o = buildGender();
      var od = api.Gender.fromJson(o.toJson());
      checkGender(od as api.Gender);
    });
  });

  unittest.group('obj-schema-GetPeopleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetPeopleResponse();
      var od = api.GetPeopleResponse.fromJson(o.toJson());
      checkGetPeopleResponse(od as api.GetPeopleResponse);
    });
  });

  unittest.group('obj-schema-GroupClientData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupClientData();
      var od = api.GroupClientData.fromJson(o.toJson());
      checkGroupClientData(od as api.GroupClientData);
    });
  });

  unittest.group('obj-schema-ImClient', () {
    unittest.test('to-json--from-json', () {
      var o = buildImClient();
      var od = api.ImClient.fromJson(o.toJson());
      checkImClient(od as api.ImClient);
    });
  });

  unittest.group('obj-schema-Interest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInterest();
      var od = api.Interest.fromJson(o.toJson());
      checkInterest(od as api.Interest);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListConnectionsResponse();
      var od = api.ListConnectionsResponse.fromJson(o.toJson());
      checkListConnectionsResponse(od as api.ListConnectionsResponse);
    });
  });

  unittest.group('obj-schema-ListContactGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListContactGroupsResponse();
      var od = api.ListContactGroupsResponse.fromJson(o.toJson());
      checkListContactGroupsResponse(od as api.ListContactGroupsResponse);
    });
  });

  unittest.group('obj-schema-ListDirectoryPeopleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDirectoryPeopleResponse();
      var od = api.ListDirectoryPeopleResponse.fromJson(o.toJson());
      checkListDirectoryPeopleResponse(od as api.ListDirectoryPeopleResponse);
    });
  });

  unittest.group('obj-schema-ListOtherContactsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOtherContactsResponse();
      var od = api.ListOtherContactsResponse.fromJson(o.toJson());
      checkListOtherContactsResponse(od as api.ListOtherContactsResponse);
    });
  });

  unittest.group('obj-schema-Locale', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocale();
      var od = api.Locale.fromJson(o.toJson());
      checkLocale(od as api.Locale);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembership();
      var od = api.Membership.fromJson(o.toJson());
      checkMembership(od as api.Membership);
    });
  });

  unittest.group('obj-schema-MiscKeyword', () {
    unittest.test('to-json--from-json', () {
      var o = buildMiscKeyword();
      var od = api.MiscKeyword.fromJson(o.toJson());
      checkMiscKeyword(od as api.MiscKeyword);
    });
  });

  unittest.group('obj-schema-ModifyContactGroupMembersRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyContactGroupMembersRequest();
      var od = api.ModifyContactGroupMembersRequest.fromJson(o.toJson());
      checkModifyContactGroupMembersRequest(
          od as api.ModifyContactGroupMembersRequest);
    });
  });

  unittest.group('obj-schema-ModifyContactGroupMembersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyContactGroupMembersResponse();
      var od = api.ModifyContactGroupMembersResponse.fromJson(o.toJson());
      checkModifyContactGroupMembersResponse(
          od as api.ModifyContactGroupMembersResponse);
    });
  });

  unittest.group('obj-schema-Name', () {
    unittest.test('to-json--from-json', () {
      var o = buildName();
      var od = api.Name.fromJson(o.toJson());
      checkName(od as api.Name);
    });
  });

  unittest.group('obj-schema-Nickname', () {
    unittest.test('to-json--from-json', () {
      var o = buildNickname();
      var od = api.Nickname.fromJson(o.toJson());
      checkNickname(od as api.Nickname);
    });
  });

  unittest.group('obj-schema-Occupation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOccupation();
      var od = api.Occupation.fromJson(o.toJson());
      checkOccupation(od as api.Occupation);
    });
  });

  unittest.group('obj-schema-Organization', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrganization();
      var od = api.Organization.fromJson(o.toJson());
      checkOrganization(od as api.Organization);
    });
  });

  unittest.group('obj-schema-Person', () {
    unittest.test('to-json--from-json', () {
      var o = buildPerson();
      var od = api.Person.fromJson(o.toJson());
      checkPerson(od as api.Person);
    });
  });

  unittest.group('obj-schema-PersonMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildPersonMetadata();
      var od = api.PersonMetadata.fromJson(o.toJson());
      checkPersonMetadata(od as api.PersonMetadata);
    });
  });

  unittest.group('obj-schema-PersonResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPersonResponse();
      var od = api.PersonResponse.fromJson(o.toJson());
      checkPersonResponse(od as api.PersonResponse);
    });
  });

  unittest.group('obj-schema-PhoneNumber', () {
    unittest.test('to-json--from-json', () {
      var o = buildPhoneNumber();
      var od = api.PhoneNumber.fromJson(o.toJson());
      checkPhoneNumber(od as api.PhoneNumber);
    });
  });

  unittest.group('obj-schema-Photo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPhoto();
      var od = api.Photo.fromJson(o.toJson());
      checkPhoto(od as api.Photo);
    });
  });

  unittest.group('obj-schema-ProfileMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildProfileMetadata();
      var od = api.ProfileMetadata.fromJson(o.toJson());
      checkProfileMetadata(od as api.ProfileMetadata);
    });
  });

  unittest.group('obj-schema-Relation', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelation();
      var od = api.Relation.fromJson(o.toJson());
      checkRelation(od as api.Relation);
    });
  });

  unittest.group('obj-schema-RelationshipInterest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelationshipInterest();
      var od = api.RelationshipInterest.fromJson(o.toJson());
      checkRelationshipInterest(od as api.RelationshipInterest);
    });
  });

  unittest.group('obj-schema-RelationshipStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildRelationshipStatus();
      var od = api.RelationshipStatus.fromJson(o.toJson());
      checkRelationshipStatus(od as api.RelationshipStatus);
    });
  });

  unittest.group('obj-schema-Residence', () {
    unittest.test('to-json--from-json', () {
      var o = buildResidence();
      var od = api.Residence.fromJson(o.toJson());
      checkResidence(od as api.Residence);
    });
  });

  unittest.group('obj-schema-SearchDirectoryPeopleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchDirectoryPeopleResponse();
      var od = api.SearchDirectoryPeopleResponse.fromJson(o.toJson());
      checkSearchDirectoryPeopleResponse(
          od as api.SearchDirectoryPeopleResponse);
    });
  });

  unittest.group('obj-schema-SipAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildSipAddress();
      var od = api.SipAddress.fromJson(o.toJson());
      checkSipAddress(od as api.SipAddress);
    });
  });

  unittest.group('obj-schema-Skill', () {
    unittest.test('to-json--from-json', () {
      var o = buildSkill();
      var od = api.Skill.fromJson(o.toJson());
      checkSkill(od as api.Skill);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () {
      var o = buildSource();
      var od = api.Source.fromJson(o.toJson());
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Tagline', () {
    unittest.test('to-json--from-json', () {
      var o = buildTagline();
      var od = api.Tagline.fromJson(o.toJson());
      checkTagline(od as api.Tagline);
    });
  });

  unittest.group('obj-schema-UpdateContactGroupRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateContactGroupRequest();
      var od = api.UpdateContactGroupRequest.fromJson(o.toJson());
      checkUpdateContactGroupRequest(od as api.UpdateContactGroupRequest);
    });
  });

  unittest.group('obj-schema-UpdateContactPhotoRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateContactPhotoRequest();
      var od = api.UpdateContactPhotoRequest.fromJson(o.toJson());
      checkUpdateContactPhotoRequest(od as api.UpdateContactPhotoRequest);
    });
  });

  unittest.group('obj-schema-UpdateContactPhotoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateContactPhotoResponse();
      var od = api.UpdateContactPhotoResponse.fromJson(o.toJson());
      checkUpdateContactPhotoResponse(od as api.UpdateContactPhotoResponse);
    });
  });

  unittest.group('obj-schema-Url', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrl();
      var od = api.Url.fromJson(o.toJson());
      checkUrl(od as api.Url);
    });
  });

  unittest.group('obj-schema-UserDefined', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserDefined();
      var od = api.UserDefined.fromJson(o.toJson());
      checkUserDefined(od as api.UserDefined);
    });
  });

  unittest.group('resource-ContactGroupsResource', () {
    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups;
      var arg_groupFields = 'foo';
      var arg_maxMembers = 42;
      var arg_resourceNames = buildUnnamed5367();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/contactGroups:batchGet"));
        pathOffset += 25;

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
            queryMap["groupFields"].first, unittest.equals(arg_groupFields));
        unittest.expect(core.int.parse(queryMap["maxMembers"].first),
            unittest.equals(arg_maxMembers));
        unittest.expect(
            queryMap["resourceNames"], unittest.equals(arg_resourceNames));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchGetContactGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(
              groupFields: arg_groupFields,
              maxMembers: arg_maxMembers,
              resourceNames: arg_resourceNames,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetContactGroupsResponse(
            response as api.BatchGetContactGroupsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups;
      var arg_request = buildCreateContactGroupRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateContactGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateContactGroupRequest(obj as api.CreateContactGroupRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/contactGroups"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildContactGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContactGroup(response as api.ContactGroup);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups;
      var arg_resourceName = 'foo';
      var arg_deleteContacts = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["deleteContacts"].first,
            unittest.equals("$arg_deleteContacts"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_resourceName,
              deleteContacts: arg_deleteContacts, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups;
      var arg_resourceName = 'foo';
      var arg_groupFields = 'foo';
      var arg_maxMembers = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["groupFields"].first, unittest.equals(arg_groupFields));
        unittest.expect(core.int.parse(queryMap["maxMembers"].first),
            unittest.equals(arg_maxMembers));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildContactGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_resourceName,
              groupFields: arg_groupFields,
              maxMembers: arg_maxMembers,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContactGroup(response as api.ContactGroup);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups;
      var arg_groupFields = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_syncToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/contactGroups"));
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
            queryMap["groupFields"].first, unittest.equals(arg_groupFields));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListContactGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              groupFields: arg_groupFields,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListContactGroupsResponse(
            response as api.ListContactGroupsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups;
      var arg_request = buildUpdateContactGroupRequest();
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateContactGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateContactGroupRequest(obj as api.UpdateContactGroupRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildContactGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContactGroup(response as api.ContactGroup);
      })));
    });
  });

  unittest.group('resource-ContactGroupsMembersResource', () {
    unittest.test('method--modify', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).contactGroups.members;
      var arg_request = buildModifyContactGroupMembersRequest();
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyContactGroupMembersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyContactGroupMembersRequest(
            obj as api.ModifyContactGroupMembersRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildModifyContactGroupMembersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modify(arg_request, arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModifyContactGroupMembersResponse(
            response as api.ModifyContactGroupMembersResponse);
      })));
    });
  });

  unittest.group('resource-OtherContactsResource', () {
    unittest.test('method--copyOtherContactToMyContactsGroup', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).otherContacts;
      var arg_request = buildCopyOtherContactToMyContactsGroupRequest();
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CopyOtherContactToMyContactsGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCopyOtherContactToMyContactsGroupRequest(
            obj as api.CopyOtherContactToMyContactsGroupRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copyOtherContactToMyContactsGroup(arg_request, arg_resourceName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response as api.Person);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).otherContacts;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_readMask = 'foo';
      var arg_requestSyncToken = true;
      var arg_syncToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/otherContacts"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["requestSyncToken"].first,
            unittest.equals("$arg_requestSyncToken"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOtherContactsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              readMask: arg_readMask,
              requestSyncToken: arg_requestSyncToken,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOtherContactsResponse(
            response as api.ListOtherContactsResponse);
      })));
    });
  });

  unittest.group('resource-PeopleResource', () {
    unittest.test('method--createContact', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_request = buildPerson();
      var arg_personFields = 'foo';
      var arg_sources = buildUnnamed5368();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Person.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPerson(obj as api.Person);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("v1/people:createContact"));
        pathOffset += 23;

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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createContact(arg_request,
              personFields: arg_personFields,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response as api.Person);
      })));
    });

    unittest.test('method--deleteContact', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContact(arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--deleteContactPhoto', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_resourceName = 'foo';
      var arg_personFields = 'foo';
      var arg_sources = buildUnnamed5369();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeleteContactPhotoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContactPhoto(arg_resourceName,
              personFields: arg_personFields,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteContactPhotoResponse(
            response as api.DeleteContactPhotoResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_resourceName = 'foo';
      var arg_personFields = 'foo';
      var arg_requestMask_includeField = 'foo';
      var arg_sources = buildUnnamed5370();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["requestMask.includeField"].first,
            unittest.equals(arg_requestMask_includeField));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_resourceName,
              personFields: arg_personFields,
              requestMask_includeField: arg_requestMask_includeField,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response as api.Person);
      })));
    });

    unittest.test('method--getBatchGet', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_personFields = 'foo';
      var arg_requestMask_includeField = 'foo';
      var arg_resourceNames = buildUnnamed5371();
      var arg_sources = buildUnnamed5372();
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
            unittest.equals("v1/people:batchGet"));
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
        unittest.expect(
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["requestMask.includeField"].first,
            unittest.equals(arg_requestMask_includeField));
        unittest.expect(
            queryMap["resourceNames"], unittest.equals(arg_resourceNames));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetPeopleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getBatchGet(
              personFields: arg_personFields,
              requestMask_includeField: arg_requestMask_includeField,
              resourceNames: arg_resourceNames,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetPeopleResponse(response as api.GetPeopleResponse);
      })));
    });

    unittest.test('method--listDirectoryPeople', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_mergeSources = buildUnnamed5373();
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_readMask = 'foo';
      var arg_requestSyncToken = true;
      var arg_sources = buildUnnamed5374();
      var arg_syncToken = 'foo';
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
            unittest.equals("v1/people:listDirectoryPeople"));
        pathOffset += 29;

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
            queryMap["mergeSources"], unittest.equals(arg_mergeSources));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["requestSyncToken"].first,
            unittest.equals("$arg_requestSyncToken"));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDirectoryPeopleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listDirectoryPeople(
              mergeSources: arg_mergeSources,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              readMask: arg_readMask,
              requestSyncToken: arg_requestSyncToken,
              sources: arg_sources,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDirectoryPeopleResponse(
            response as api.ListDirectoryPeopleResponse);
      })));
    });

    unittest.test('method--searchDirectoryPeople', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_mergeSources = buildUnnamed5375();
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
      var arg_readMask = 'foo';
      var arg_sources = buildUnnamed5376();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("v1/people:searchDirectoryPeople"));
        pathOffset += 31;

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
            queryMap["mergeSources"], unittest.equals(arg_mergeSources));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchDirectoryPeopleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchDirectoryPeople(
              mergeSources: arg_mergeSources,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              query: arg_query,
              readMask: arg_readMask,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchDirectoryPeopleResponse(
            response as api.SearchDirectoryPeopleResponse);
      })));
    });

    unittest.test('method--updateContact', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_request = buildPerson();
      var arg_resourceName = 'foo';
      var arg_personFields = 'foo';
      var arg_sources = buildUnnamed5377();
      var arg_updatePersonFields = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Person.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPerson(obj as api.Person);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["updatePersonFields"].first,
            unittest.equals(arg_updatePersonFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateContact(arg_request, arg_resourceName,
              personFields: arg_personFields,
              sources: arg_sources,
              updatePersonFields: arg_updatePersonFields,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response as api.Person);
      })));
    });

    unittest.test('method--updateContactPhoto', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people;
      var arg_request = buildUpdateContactPhotoRequest();
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateContactPhotoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateContactPhotoRequest(obj as api.UpdateContactPhotoRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUpdateContactPhotoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateContactPhoto(arg_request, arg_resourceName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUpdateContactPhotoResponse(
            response as api.UpdateContactPhotoResponse);
      })));
    });
  });

  unittest.group('resource-PeopleConnectionsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PeopleServiceApi(mock).people.connections;
      var arg_resourceName = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_personFields = 'foo';
      var arg_requestMask_includeField = 'foo';
      var arg_requestSyncToken = true;
      var arg_sortOrder = 'foo';
      var arg_sources = buildUnnamed5378();
      var arg_syncToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["requestMask.includeField"].first,
            unittest.equals(arg_requestMask_includeField));
        unittest.expect(queryMap["requestSyncToken"].first,
            unittest.equals("$arg_requestSyncToken"));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_resourceName,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              personFields: arg_personFields,
              requestMask_includeField: arg_requestMask_includeField,
              requestSyncToken: arg_requestSyncToken,
              sortOrder: arg_sortOrder,
              sources: arg_sources,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConnectionsResponse(response as api.ListConnectionsResponse);
      })));
    });
  });
}
