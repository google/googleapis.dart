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

import 'package:googleapis/people/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  final o = api.Address();
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
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extendedAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedValue!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.poBox!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streetAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddress--;
}

core.int buildCounterAgeRangeType = 0;
api.AgeRangeType buildAgeRangeType() {
  final o = api.AgeRangeType();
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
    unittest.expect(
      o.ageRange!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
  }
  buildCounterAgeRangeType--;
}

core.List<api.ContactToCreate> buildUnnamed6301() => [
      buildContactToCreate(),
      buildContactToCreate(),
    ];

void checkUnnamed6301(core.List<api.ContactToCreate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactToCreate(o[0]);
  checkContactToCreate(o[1]);
}

core.List<core.String> buildUnnamed6302() => [
      'foo',
      'foo',
    ];

void checkUnnamed6302(core.List<core.String> o) {
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

core.int buildCounterBatchCreateContactsRequest = 0;
api.BatchCreateContactsRequest buildBatchCreateContactsRequest() {
  final o = api.BatchCreateContactsRequest();
  buildCounterBatchCreateContactsRequest++;
  if (buildCounterBatchCreateContactsRequest < 3) {
    o.contacts = buildUnnamed6301();
    o.readMask = 'foo';
    o.sources = buildUnnamed6302();
  }
  buildCounterBatchCreateContactsRequest--;
  return o;
}

void checkBatchCreateContactsRequest(api.BatchCreateContactsRequest o) {
  buildCounterBatchCreateContactsRequest++;
  if (buildCounterBatchCreateContactsRequest < 3) {
    checkUnnamed6301(o.contacts!);
    unittest.expect(
      o.readMask!,
      unittest.equals('foo'),
    );
    checkUnnamed6302(o.sources!);
  }
  buildCounterBatchCreateContactsRequest--;
}

core.List<api.PersonResponse> buildUnnamed6303() => [
      buildPersonResponse(),
      buildPersonResponse(),
    ];

void checkUnnamed6303(core.List<api.PersonResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonResponse(o[0]);
  checkPersonResponse(o[1]);
}

core.int buildCounterBatchCreateContactsResponse = 0;
api.BatchCreateContactsResponse buildBatchCreateContactsResponse() {
  final o = api.BatchCreateContactsResponse();
  buildCounterBatchCreateContactsResponse++;
  if (buildCounterBatchCreateContactsResponse < 3) {
    o.createdPeople = buildUnnamed6303();
  }
  buildCounterBatchCreateContactsResponse--;
  return o;
}

void checkBatchCreateContactsResponse(api.BatchCreateContactsResponse o) {
  buildCounterBatchCreateContactsResponse++;
  if (buildCounterBatchCreateContactsResponse < 3) {
    checkUnnamed6303(o.createdPeople!);
  }
  buildCounterBatchCreateContactsResponse--;
}

core.List<core.String> buildUnnamed6304() => [
      'foo',
      'foo',
    ];

void checkUnnamed6304(core.List<core.String> o) {
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

core.int buildCounterBatchDeleteContactsRequest = 0;
api.BatchDeleteContactsRequest buildBatchDeleteContactsRequest() {
  final o = api.BatchDeleteContactsRequest();
  buildCounterBatchDeleteContactsRequest++;
  if (buildCounterBatchDeleteContactsRequest < 3) {
    o.resourceNames = buildUnnamed6304();
  }
  buildCounterBatchDeleteContactsRequest--;
  return o;
}

void checkBatchDeleteContactsRequest(api.BatchDeleteContactsRequest o) {
  buildCounterBatchDeleteContactsRequest++;
  if (buildCounterBatchDeleteContactsRequest < 3) {
    checkUnnamed6304(o.resourceNames!);
  }
  buildCounterBatchDeleteContactsRequest--;
}

core.List<api.ContactGroupResponse> buildUnnamed6305() => [
      buildContactGroupResponse(),
      buildContactGroupResponse(),
    ];

void checkUnnamed6305(core.List<api.ContactGroupResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactGroupResponse(o[0]);
  checkContactGroupResponse(o[1]);
}

core.int buildCounterBatchGetContactGroupsResponse = 0;
api.BatchGetContactGroupsResponse buildBatchGetContactGroupsResponse() {
  final o = api.BatchGetContactGroupsResponse();
  buildCounterBatchGetContactGroupsResponse++;
  if (buildCounterBatchGetContactGroupsResponse < 3) {
    o.responses = buildUnnamed6305();
  }
  buildCounterBatchGetContactGroupsResponse--;
  return o;
}

void checkBatchGetContactGroupsResponse(api.BatchGetContactGroupsResponse o) {
  buildCounterBatchGetContactGroupsResponse++;
  if (buildCounterBatchGetContactGroupsResponse < 3) {
    checkUnnamed6305(o.responses!);
  }
  buildCounterBatchGetContactGroupsResponse--;
}

core.Map<core.String, api.Person> buildUnnamed6306() => {
      'x': buildPerson(),
      'y': buildPerson(),
    };

void checkUnnamed6306(core.Map<core.String, api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o['x']!);
  checkPerson(o['y']!);
}

core.List<core.String> buildUnnamed6307() => [
      'foo',
      'foo',
    ];

void checkUnnamed6307(core.List<core.String> o) {
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

core.int buildCounterBatchUpdateContactsRequest = 0;
api.BatchUpdateContactsRequest buildBatchUpdateContactsRequest() {
  final o = api.BatchUpdateContactsRequest();
  buildCounterBatchUpdateContactsRequest++;
  if (buildCounterBatchUpdateContactsRequest < 3) {
    o.contacts = buildUnnamed6306();
    o.readMask = 'foo';
    o.sources = buildUnnamed6307();
    o.updateMask = 'foo';
  }
  buildCounterBatchUpdateContactsRequest--;
  return o;
}

void checkBatchUpdateContactsRequest(api.BatchUpdateContactsRequest o) {
  buildCounterBatchUpdateContactsRequest++;
  if (buildCounterBatchUpdateContactsRequest < 3) {
    checkUnnamed6306(o.contacts!);
    unittest.expect(
      o.readMask!,
      unittest.equals('foo'),
    );
    checkUnnamed6307(o.sources!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUpdateContactsRequest--;
}

core.Map<core.String, api.PersonResponse> buildUnnamed6308() => {
      'x': buildPersonResponse(),
      'y': buildPersonResponse(),
    };

void checkUnnamed6308(core.Map<core.String, api.PersonResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonResponse(o['x']!);
  checkPersonResponse(o['y']!);
}

core.int buildCounterBatchUpdateContactsResponse = 0;
api.BatchUpdateContactsResponse buildBatchUpdateContactsResponse() {
  final o = api.BatchUpdateContactsResponse();
  buildCounterBatchUpdateContactsResponse++;
  if (buildCounterBatchUpdateContactsResponse < 3) {
    o.updateResult = buildUnnamed6308();
  }
  buildCounterBatchUpdateContactsResponse--;
  return o;
}

void checkBatchUpdateContactsResponse(api.BatchUpdateContactsResponse o) {
  buildCounterBatchUpdateContactsResponse++;
  if (buildCounterBatchUpdateContactsResponse < 3) {
    checkUnnamed6308(o.updateResult!);
  }
  buildCounterBatchUpdateContactsResponse--;
}

core.int buildCounterBiography = 0;
api.Biography buildBiography() {
  final o = api.Biography();
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
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterBiography--;
}

core.int buildCounterBirthday = 0;
api.Birthday buildBirthday() {
  final o = api.Birthday();
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
    checkDate(o.date!);
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterBirthday--;
}

core.int buildCounterBraggingRights = 0;
api.BraggingRights buildBraggingRights() {
  final o = api.BraggingRights();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterBraggingRights--;
}

core.int buildCounterCalendarUrl = 0;
api.CalendarUrl buildCalendarUrl() {
  final o = api.CalendarUrl();
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
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterCalendarUrl--;
}

core.int buildCounterClientData = 0;
api.ClientData buildClientData() {
  final o = api.ClientData();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientData--;
}

core.List<api.GroupClientData> buildUnnamed6309() => [
      buildGroupClientData(),
      buildGroupClientData(),
    ];

void checkUnnamed6309(core.List<api.GroupClientData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupClientData(o[0]);
  checkGroupClientData(o[1]);
}

core.List<core.String> buildUnnamed6310() => [
      'foo',
      'foo',
    ];

void checkUnnamed6310(core.List<core.String> o) {
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

core.int buildCounterContactGroup = 0;
api.ContactGroup buildContactGroup() {
  final o = api.ContactGroup();
  buildCounterContactGroup++;
  if (buildCounterContactGroup < 3) {
    o.clientData = buildUnnamed6309();
    o.etag = 'foo';
    o.formattedName = 'foo';
    o.groupType = 'foo';
    o.memberCount = 42;
    o.memberResourceNames = buildUnnamed6310();
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
    checkUnnamed6309(o.clientData!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memberCount!,
      unittest.equals(42),
    );
    checkUnnamed6310(o.memberResourceNames!);
    checkContactGroupMetadata(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterContactGroup--;
}

core.int buildCounterContactGroupMembership = 0;
api.ContactGroupMembership buildContactGroupMembership() {
  final o = api.ContactGroupMembership();
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
    unittest.expect(
      o.contactGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactGroupResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterContactGroupMembership--;
}

core.int buildCounterContactGroupMetadata = 0;
api.ContactGroupMetadata buildContactGroupMetadata() {
  final o = api.ContactGroupMetadata();
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
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterContactGroupMetadata--;
}

core.int buildCounterContactGroupResponse = 0;
api.ContactGroupResponse buildContactGroupResponse() {
  final o = api.ContactGroupResponse();
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
    checkContactGroup(o.contactGroup!);
    unittest.expect(
      o.requestedResourceName!,
      unittest.equals('foo'),
    );
    checkStatus(o.status!);
  }
  buildCounterContactGroupResponse--;
}

core.int buildCounterContactToCreate = 0;
api.ContactToCreate buildContactToCreate() {
  final o = api.ContactToCreate();
  buildCounterContactToCreate++;
  if (buildCounterContactToCreate < 3) {
    o.contactPerson = buildPerson();
  }
  buildCounterContactToCreate--;
  return o;
}

void checkContactToCreate(api.ContactToCreate o) {
  buildCounterContactToCreate++;
  if (buildCounterContactToCreate < 3) {
    checkPerson(o.contactPerson!);
  }
  buildCounterContactToCreate--;
}

core.List<core.String> buildUnnamed6311() => [
      'foo',
      'foo',
    ];

void checkUnnamed6311(core.List<core.String> o) {
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

core.int buildCounterCopyOtherContactToMyContactsGroupRequest = 0;
api.CopyOtherContactToMyContactsGroupRequest
    buildCopyOtherContactToMyContactsGroupRequest() {
  final o = api.CopyOtherContactToMyContactsGroupRequest();
  buildCounterCopyOtherContactToMyContactsGroupRequest++;
  if (buildCounterCopyOtherContactToMyContactsGroupRequest < 3) {
    o.copyMask = 'foo';
    o.readMask = 'foo';
    o.sources = buildUnnamed6311();
  }
  buildCounterCopyOtherContactToMyContactsGroupRequest--;
  return o;
}

void checkCopyOtherContactToMyContactsGroupRequest(
    api.CopyOtherContactToMyContactsGroupRequest o) {
  buildCounterCopyOtherContactToMyContactsGroupRequest++;
  if (buildCounterCopyOtherContactToMyContactsGroupRequest < 3) {
    unittest.expect(
      o.copyMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readMask!,
      unittest.equals('foo'),
    );
    checkUnnamed6311(o.sources!);
  }
  buildCounterCopyOtherContactToMyContactsGroupRequest--;
}

core.int buildCounterCoverPhoto = 0;
api.CoverPhoto buildCoverPhoto() {
  final o = api.CoverPhoto();
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
    unittest.expect(o.default_!, unittest.isTrue);
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterCoverPhoto--;
}

core.int buildCounterCreateContactGroupRequest = 0;
api.CreateContactGroupRequest buildCreateContactGroupRequest() {
  final o = api.CreateContactGroupRequest();
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
    checkContactGroup(o.contactGroup!);
    unittest.expect(
      o.readGroupFields!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateContactGroupRequest--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
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
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterDeleteContactPhotoResponse = 0;
api.DeleteContactPhotoResponse buildDeleteContactPhotoResponse() {
  final o = api.DeleteContactPhotoResponse();
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
    checkPerson(o.person!);
  }
  buildCounterDeleteContactPhotoResponse--;
}

core.int buildCounterDomainMembership = 0;
api.DomainMembership buildDomainMembership() {
  final o = api.DomainMembership();
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
    unittest.expect(o.inViewerDomain!, unittest.isTrue);
  }
  buildCounterDomainMembership--;
}

core.int buildCounterEmailAddress = 0;
api.EmailAddress buildEmailAddress() {
  final o = api.EmailAddress();
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailAddress--;
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
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
    checkDate(o.date!);
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvent--;
}

core.int buildCounterExternalId = 0;
api.ExternalId buildExternalId() {
  final o = api.ExternalId();
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
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalId--;
}

core.int buildCounterFieldMetadata = 0;
api.FieldMetadata buildFieldMetadata() {
  final o = api.FieldMetadata();
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
    unittest.expect(o.primary!, unittest.isTrue);
    checkSource(o.source!);
    unittest.expect(o.verified!, unittest.isTrue);
  }
  buildCounterFieldMetadata--;
}

core.int buildCounterFileAs = 0;
api.FileAs buildFileAs() {
  final o = api.FileAs();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileAs--;
}

core.int buildCounterGender = 0;
api.Gender buildGender() {
  final o = api.Gender();
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
    unittest.expect(
      o.addressMeAs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedValue!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGender--;
}

core.List<api.PersonResponse> buildUnnamed6312() => [
      buildPersonResponse(),
      buildPersonResponse(),
    ];

void checkUnnamed6312(core.List<api.PersonResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonResponse(o[0]);
  checkPersonResponse(o[1]);
}

core.int buildCounterGetPeopleResponse = 0;
api.GetPeopleResponse buildGetPeopleResponse() {
  final o = api.GetPeopleResponse();
  buildCounterGetPeopleResponse++;
  if (buildCounterGetPeopleResponse < 3) {
    o.responses = buildUnnamed6312();
  }
  buildCounterGetPeopleResponse--;
  return o;
}

void checkGetPeopleResponse(api.GetPeopleResponse o) {
  buildCounterGetPeopleResponse++;
  if (buildCounterGetPeopleResponse < 3) {
    checkUnnamed6312(o.responses!);
  }
  buildCounterGetPeopleResponse--;
}

core.int buildCounterGroupClientData = 0;
api.GroupClientData buildGroupClientData() {
  final o = api.GroupClientData();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupClientData--;
}

core.int buildCounterImClient = 0;
api.ImClient buildImClient() {
  final o = api.ImClient();
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
    unittest.expect(
      o.formattedProtocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterImClient--;
}

core.int buildCounterInterest = 0;
api.Interest buildInterest() {
  final o = api.Interest();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterInterest--;
}

core.List<api.Person> buildUnnamed6313() => [
      buildPerson(),
      buildPerson(),
    ];

void checkUnnamed6313(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed6313();
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
    checkUnnamed6313(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextSyncToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalPeople!,
      unittest.equals(42),
    );
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.ContactGroup> buildUnnamed6314() => [
      buildContactGroup(),
      buildContactGroup(),
    ];

void checkUnnamed6314(core.List<api.ContactGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactGroup(o[0]);
  checkContactGroup(o[1]);
}

core.int buildCounterListContactGroupsResponse = 0;
api.ListContactGroupsResponse buildListContactGroupsResponse() {
  final o = api.ListContactGroupsResponse();
  buildCounterListContactGroupsResponse++;
  if (buildCounterListContactGroupsResponse < 3) {
    o.contactGroups = buildUnnamed6314();
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
    checkUnnamed6314(o.contactGroups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextSyncToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterListContactGroupsResponse--;
}

core.List<api.Person> buildUnnamed6315() => [
      buildPerson(),
      buildPerson(),
    ];

void checkUnnamed6315(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterListDirectoryPeopleResponse = 0;
api.ListDirectoryPeopleResponse buildListDirectoryPeopleResponse() {
  final o = api.ListDirectoryPeopleResponse();
  buildCounterListDirectoryPeopleResponse++;
  if (buildCounterListDirectoryPeopleResponse < 3) {
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.people = buildUnnamed6315();
  }
  buildCounterListDirectoryPeopleResponse--;
  return o;
}

void checkListDirectoryPeopleResponse(api.ListDirectoryPeopleResponse o) {
  buildCounterListDirectoryPeopleResponse++;
  if (buildCounterListDirectoryPeopleResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextSyncToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6315(o.people!);
  }
  buildCounterListDirectoryPeopleResponse--;
}

core.List<api.Person> buildUnnamed6316() => [
      buildPerson(),
      buildPerson(),
    ];

void checkUnnamed6316(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterListOtherContactsResponse = 0;
api.ListOtherContactsResponse buildListOtherContactsResponse() {
  final o = api.ListOtherContactsResponse();
  buildCounterListOtherContactsResponse++;
  if (buildCounterListOtherContactsResponse < 3) {
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.otherContacts = buildUnnamed6316();
    o.totalSize = 42;
  }
  buildCounterListOtherContactsResponse--;
  return o;
}

void checkListOtherContactsResponse(api.ListOtherContactsResponse o) {
  buildCounterListOtherContactsResponse++;
  if (buildCounterListOtherContactsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextSyncToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6316(o.otherContacts!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListOtherContactsResponse--;
}

core.int buildCounterLocale = 0;
api.Locale buildLocale() {
  final o = api.Locale();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocale--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
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
    unittest.expect(
      o.buildingId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.current!, unittest.isTrue);
    unittest.expect(
      o.deskCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floorSection!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  final o = api.Membership();
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
    checkContactGroupMembership(o.contactGroupMembership!);
    checkDomainMembership(o.domainMembership!);
    checkFieldMetadata(o.metadata!);
  }
  buildCounterMembership--;
}

core.int buildCounterMiscKeyword = 0;
api.MiscKeyword buildMiscKeyword() {
  final o = api.MiscKeyword();
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
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterMiscKeyword--;
}

core.List<core.String> buildUnnamed6317() => [
      'foo',
      'foo',
    ];

void checkUnnamed6317(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6318() => [
      'foo',
      'foo',
    ];

void checkUnnamed6318(core.List<core.String> o) {
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

core.int buildCounterModifyContactGroupMembersRequest = 0;
api.ModifyContactGroupMembersRequest buildModifyContactGroupMembersRequest() {
  final o = api.ModifyContactGroupMembersRequest();
  buildCounterModifyContactGroupMembersRequest++;
  if (buildCounterModifyContactGroupMembersRequest < 3) {
    o.resourceNamesToAdd = buildUnnamed6317();
    o.resourceNamesToRemove = buildUnnamed6318();
  }
  buildCounterModifyContactGroupMembersRequest--;
  return o;
}

void checkModifyContactGroupMembersRequest(
    api.ModifyContactGroupMembersRequest o) {
  buildCounterModifyContactGroupMembersRequest++;
  if (buildCounterModifyContactGroupMembersRequest < 3) {
    checkUnnamed6317(o.resourceNamesToAdd!);
    checkUnnamed6318(o.resourceNamesToRemove!);
  }
  buildCounterModifyContactGroupMembersRequest--;
}

core.List<core.String> buildUnnamed6319() => [
      'foo',
      'foo',
    ];

void checkUnnamed6319(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6320() => [
      'foo',
      'foo',
    ];

void checkUnnamed6320(core.List<core.String> o) {
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

core.int buildCounterModifyContactGroupMembersResponse = 0;
api.ModifyContactGroupMembersResponse buildModifyContactGroupMembersResponse() {
  final o = api.ModifyContactGroupMembersResponse();
  buildCounterModifyContactGroupMembersResponse++;
  if (buildCounterModifyContactGroupMembersResponse < 3) {
    o.canNotRemoveLastContactGroupResourceNames = buildUnnamed6319();
    o.notFoundResourceNames = buildUnnamed6320();
  }
  buildCounterModifyContactGroupMembersResponse--;
  return o;
}

void checkModifyContactGroupMembersResponse(
    api.ModifyContactGroupMembersResponse o) {
  buildCounterModifyContactGroupMembersResponse++;
  if (buildCounterModifyContactGroupMembersResponse < 3) {
    checkUnnamed6319(o.canNotRemoveLastContactGroupResourceNames!);
    checkUnnamed6320(o.notFoundResourceNames!);
  }
  buildCounterModifyContactGroupMembersResponse--;
}

core.int buildCounterName = 0;
api.Name buildName() {
  final o = api.Name();
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayNameLastFirst!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.honorificPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.honorificSuffix!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.middleName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticFamilyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticFullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticGivenName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticHonorificPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticHonorificSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticMiddleName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unstructuredName!,
      unittest.equals('foo'),
    );
  }
  buildCounterName--;
}

core.int buildCounterNickname = 0;
api.Nickname buildNickname() {
  final o = api.Nickname();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNickname--;
}

core.int buildCounterOccupation = 0;
api.Occupation buildOccupation() {
  final o = api.Occupation();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterOccupation--;
}

core.int buildCounterOrganization = 0;
api.Organization buildOrganization() {
  final o = api.Organization();
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
    unittest.expect(o.current!, unittest.isTrue);
    unittest.expect(
      o.department!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    checkDate(o.endDate!);
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneticName!,
      unittest.equals('foo'),
    );
    checkDate(o.startDate!);
    unittest.expect(
      o.symbol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrganization--;
}

core.List<api.Address> buildUnnamed6321() => [
      buildAddress(),
      buildAddress(),
    ];

void checkUnnamed6321(core.List<api.Address> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddress(o[0]);
  checkAddress(o[1]);
}

core.List<api.AgeRangeType> buildUnnamed6322() => [
      buildAgeRangeType(),
      buildAgeRangeType(),
    ];

void checkUnnamed6322(core.List<api.AgeRangeType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgeRangeType(o[0]);
  checkAgeRangeType(o[1]);
}

core.List<api.Biography> buildUnnamed6323() => [
      buildBiography(),
      buildBiography(),
    ];

void checkUnnamed6323(core.List<api.Biography> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBiography(o[0]);
  checkBiography(o[1]);
}

core.List<api.Birthday> buildUnnamed6324() => [
      buildBirthday(),
      buildBirthday(),
    ];

void checkUnnamed6324(core.List<api.Birthday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBirthday(o[0]);
  checkBirthday(o[1]);
}

core.List<api.BraggingRights> buildUnnamed6325() => [
      buildBraggingRights(),
      buildBraggingRights(),
    ];

void checkUnnamed6325(core.List<api.BraggingRights> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBraggingRights(o[0]);
  checkBraggingRights(o[1]);
}

core.List<api.CalendarUrl> buildUnnamed6326() => [
      buildCalendarUrl(),
      buildCalendarUrl(),
    ];

void checkUnnamed6326(core.List<api.CalendarUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarUrl(o[0]);
  checkCalendarUrl(o[1]);
}

core.List<api.ClientData> buildUnnamed6327() => [
      buildClientData(),
      buildClientData(),
    ];

void checkUnnamed6327(core.List<api.ClientData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientData(o[0]);
  checkClientData(o[1]);
}

core.List<api.CoverPhoto> buildUnnamed6328() => [
      buildCoverPhoto(),
      buildCoverPhoto(),
    ];

void checkUnnamed6328(core.List<api.CoverPhoto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCoverPhoto(o[0]);
  checkCoverPhoto(o[1]);
}

core.List<api.EmailAddress> buildUnnamed6329() => [
      buildEmailAddress(),
      buildEmailAddress(),
    ];

void checkUnnamed6329(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

core.List<api.Event> buildUnnamed6330() => [
      buildEvent(),
      buildEvent(),
    ];

void checkUnnamed6330(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0]);
  checkEvent(o[1]);
}

core.List<api.ExternalId> buildUnnamed6331() => [
      buildExternalId(),
      buildExternalId(),
    ];

void checkUnnamed6331(core.List<api.ExternalId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalId(o[0]);
  checkExternalId(o[1]);
}

core.List<api.FileAs> buildUnnamed6332() => [
      buildFileAs(),
      buildFileAs(),
    ];

void checkUnnamed6332(core.List<api.FileAs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileAs(o[0]);
  checkFileAs(o[1]);
}

core.List<api.Gender> buildUnnamed6333() => [
      buildGender(),
      buildGender(),
    ];

void checkUnnamed6333(core.List<api.Gender> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGender(o[0]);
  checkGender(o[1]);
}

core.List<api.ImClient> buildUnnamed6334() => [
      buildImClient(),
      buildImClient(),
    ];

void checkUnnamed6334(core.List<api.ImClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImClient(o[0]);
  checkImClient(o[1]);
}

core.List<api.Interest> buildUnnamed6335() => [
      buildInterest(),
      buildInterest(),
    ];

void checkUnnamed6335(core.List<api.Interest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterest(o[0]);
  checkInterest(o[1]);
}

core.List<api.Locale> buildUnnamed6336() => [
      buildLocale(),
      buildLocale(),
    ];

void checkUnnamed6336(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

core.List<api.Location> buildUnnamed6337() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed6337(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.List<api.Membership> buildUnnamed6338() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed6338(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.List<api.MiscKeyword> buildUnnamed6339() => [
      buildMiscKeyword(),
      buildMiscKeyword(),
    ];

void checkUnnamed6339(core.List<api.MiscKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMiscKeyword(o[0]);
  checkMiscKeyword(o[1]);
}

core.List<api.Name> buildUnnamed6340() => [
      buildName(),
      buildName(),
    ];

void checkUnnamed6340(core.List<api.Name> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkName(o[0]);
  checkName(o[1]);
}

core.List<api.Nickname> buildUnnamed6341() => [
      buildNickname(),
      buildNickname(),
    ];

void checkUnnamed6341(core.List<api.Nickname> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNickname(o[0]);
  checkNickname(o[1]);
}

core.List<api.Occupation> buildUnnamed6342() => [
      buildOccupation(),
      buildOccupation(),
    ];

void checkUnnamed6342(core.List<api.Occupation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccupation(o[0]);
  checkOccupation(o[1]);
}

core.List<api.Organization> buildUnnamed6343() => [
      buildOrganization(),
      buildOrganization(),
    ];

void checkUnnamed6343(core.List<api.Organization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrganization(o[0]);
  checkOrganization(o[1]);
}

core.List<api.PhoneNumber> buildUnnamed6344() => [
      buildPhoneNumber(),
      buildPhoneNumber(),
    ];

void checkUnnamed6344(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0]);
  checkPhoneNumber(o[1]);
}

core.List<api.Photo> buildUnnamed6345() => [
      buildPhoto(),
      buildPhoto(),
    ];

void checkUnnamed6345(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

core.List<api.Relation> buildUnnamed6346() => [
      buildRelation(),
      buildRelation(),
    ];

void checkUnnamed6346(core.List<api.Relation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelation(o[0]);
  checkRelation(o[1]);
}

core.List<api.RelationshipInterest> buildUnnamed6347() => [
      buildRelationshipInterest(),
      buildRelationshipInterest(),
    ];

void checkUnnamed6347(core.List<api.RelationshipInterest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelationshipInterest(o[0]);
  checkRelationshipInterest(o[1]);
}

core.List<api.RelationshipStatus> buildUnnamed6348() => [
      buildRelationshipStatus(),
      buildRelationshipStatus(),
    ];

void checkUnnamed6348(core.List<api.RelationshipStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelationshipStatus(o[0]);
  checkRelationshipStatus(o[1]);
}

core.List<api.Residence> buildUnnamed6349() => [
      buildResidence(),
      buildResidence(),
    ];

void checkUnnamed6349(core.List<api.Residence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResidence(o[0]);
  checkResidence(o[1]);
}

core.List<api.SipAddress> buildUnnamed6350() => [
      buildSipAddress(),
      buildSipAddress(),
    ];

void checkUnnamed6350(core.List<api.SipAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSipAddress(o[0]);
  checkSipAddress(o[1]);
}

core.List<api.Skill> buildUnnamed6351() => [
      buildSkill(),
      buildSkill(),
    ];

void checkUnnamed6351(core.List<api.Skill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkill(o[0]);
  checkSkill(o[1]);
}

core.List<api.Tagline> buildUnnamed6352() => [
      buildTagline(),
      buildTagline(),
    ];

void checkUnnamed6352(core.List<api.Tagline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTagline(o[0]);
  checkTagline(o[1]);
}

core.List<api.Url> buildUnnamed6353() => [
      buildUrl(),
      buildUrl(),
    ];

void checkUnnamed6353(core.List<api.Url> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrl(o[0]);
  checkUrl(o[1]);
}

core.List<api.UserDefined> buildUnnamed6354() => [
      buildUserDefined(),
      buildUserDefined(),
    ];

void checkUnnamed6354(core.List<api.UserDefined> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefined(o[0]);
  checkUserDefined(o[1]);
}

core.int buildCounterPerson = 0;
api.Person buildPerson() {
  final o = api.Person();
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    o.addresses = buildUnnamed6321();
    o.ageRange = 'foo';
    o.ageRanges = buildUnnamed6322();
    o.biographies = buildUnnamed6323();
    o.birthdays = buildUnnamed6324();
    o.braggingRights = buildUnnamed6325();
    o.calendarUrls = buildUnnamed6326();
    o.clientData = buildUnnamed6327();
    o.coverPhotos = buildUnnamed6328();
    o.emailAddresses = buildUnnamed6329();
    o.etag = 'foo';
    o.events = buildUnnamed6330();
    o.externalIds = buildUnnamed6331();
    o.fileAses = buildUnnamed6332();
    o.genders = buildUnnamed6333();
    o.imClients = buildUnnamed6334();
    o.interests = buildUnnamed6335();
    o.locales = buildUnnamed6336();
    o.locations = buildUnnamed6337();
    o.memberships = buildUnnamed6338();
    o.metadata = buildPersonMetadata();
    o.miscKeywords = buildUnnamed6339();
    o.names = buildUnnamed6340();
    o.nicknames = buildUnnamed6341();
    o.occupations = buildUnnamed6342();
    o.organizations = buildUnnamed6343();
    o.phoneNumbers = buildUnnamed6344();
    o.photos = buildUnnamed6345();
    o.relations = buildUnnamed6346();
    o.relationshipInterests = buildUnnamed6347();
    o.relationshipStatuses = buildUnnamed6348();
    o.residences = buildUnnamed6349();
    o.resourceName = 'foo';
    o.sipAddresses = buildUnnamed6350();
    o.skills = buildUnnamed6351();
    o.taglines = buildUnnamed6352();
    o.urls = buildUnnamed6353();
    o.userDefined = buildUnnamed6354();
  }
  buildCounterPerson--;
  return o;
}

void checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    checkUnnamed6321(o.addresses!);
    unittest.expect(
      o.ageRange!,
      unittest.equals('foo'),
    );
    checkUnnamed6322(o.ageRanges!);
    checkUnnamed6323(o.biographies!);
    checkUnnamed6324(o.birthdays!);
    checkUnnamed6325(o.braggingRights!);
    checkUnnamed6326(o.calendarUrls!);
    checkUnnamed6327(o.clientData!);
    checkUnnamed6328(o.coverPhotos!);
    checkUnnamed6329(o.emailAddresses!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed6330(o.events!);
    checkUnnamed6331(o.externalIds!);
    checkUnnamed6332(o.fileAses!);
    checkUnnamed6333(o.genders!);
    checkUnnamed6334(o.imClients!);
    checkUnnamed6335(o.interests!);
    checkUnnamed6336(o.locales!);
    checkUnnamed6337(o.locations!);
    checkUnnamed6338(o.memberships!);
    checkPersonMetadata(o.metadata!);
    checkUnnamed6339(o.miscKeywords!);
    checkUnnamed6340(o.names!);
    checkUnnamed6341(o.nicknames!);
    checkUnnamed6342(o.occupations!);
    checkUnnamed6343(o.organizations!);
    checkUnnamed6344(o.phoneNumbers!);
    checkUnnamed6345(o.photos!);
    checkUnnamed6346(o.relations!);
    checkUnnamed6347(o.relationshipInterests!);
    checkUnnamed6348(o.relationshipStatuses!);
    checkUnnamed6349(o.residences!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    checkUnnamed6350(o.sipAddresses!);
    checkUnnamed6351(o.skills!);
    checkUnnamed6352(o.taglines!);
    checkUnnamed6353(o.urls!);
    checkUnnamed6354(o.userDefined!);
  }
  buildCounterPerson--;
}

core.List<core.String> buildUnnamed6355() => [
      'foo',
      'foo',
    ];

void checkUnnamed6355(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6356() => [
      'foo',
      'foo',
    ];

void checkUnnamed6356(core.List<core.String> o) {
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

core.List<api.Source> buildUnnamed6357() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed6357(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterPersonMetadata = 0;
api.PersonMetadata buildPersonMetadata() {
  final o = api.PersonMetadata();
  buildCounterPersonMetadata++;
  if (buildCounterPersonMetadata < 3) {
    o.deleted = true;
    o.linkedPeopleResourceNames = buildUnnamed6355();
    o.objectType = 'foo';
    o.previousResourceNames = buildUnnamed6356();
    o.sources = buildUnnamed6357();
  }
  buildCounterPersonMetadata--;
  return o;
}

void checkPersonMetadata(api.PersonMetadata o) {
  buildCounterPersonMetadata++;
  if (buildCounterPersonMetadata < 3) {
    unittest.expect(o.deleted!, unittest.isTrue);
    checkUnnamed6355(o.linkedPeopleResourceNames!);
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    checkUnnamed6356(o.previousResourceNames!);
    checkUnnamed6357(o.sources!);
  }
  buildCounterPersonMetadata--;
}

core.int buildCounterPersonResponse = 0;
api.PersonResponse buildPersonResponse() {
  final o = api.PersonResponse();
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
    unittest.expect(
      o.httpStatusCode!,
      unittest.equals(42),
    );
    checkPerson(o.person!);
    unittest.expect(
      o.requestedResourceName!,
      unittest.equals('foo'),
    );
    checkStatus(o.status!);
  }
  buildCounterPersonResponse--;
}

core.int buildCounterPhoneNumber = 0;
api.PhoneNumber buildPhoneNumber() {
  final o = api.PhoneNumber();
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
    unittest.expect(
      o.canonicalForm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoneNumber--;
}

core.int buildCounterPhoto = 0;
api.Photo buildPhoto() {
  final o = api.Photo();
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
    unittest.expect(o.default_!, unittest.isTrue);
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoto--;
}

core.List<core.String> buildUnnamed6358() => [
      'foo',
      'foo',
    ];

void checkUnnamed6358(core.List<core.String> o) {
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

core.int buildCounterProfileMetadata = 0;
api.ProfileMetadata buildProfileMetadata() {
  final o = api.ProfileMetadata();
  buildCounterProfileMetadata++;
  if (buildCounterProfileMetadata < 3) {
    o.objectType = 'foo';
    o.userTypes = buildUnnamed6358();
  }
  buildCounterProfileMetadata--;
  return o;
}

void checkProfileMetadata(api.ProfileMetadata o) {
  buildCounterProfileMetadata++;
  if (buildCounterProfileMetadata < 3) {
    unittest.expect(
      o.objectType!,
      unittest.equals('foo'),
    );
    checkUnnamed6358(o.userTypes!);
  }
  buildCounterProfileMetadata--;
}

core.int buildCounterRelation = 0;
api.Relation buildRelation() {
  final o = api.Relation();
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
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.person!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelation--;
}

core.int buildCounterRelationshipInterest = 0;
api.RelationshipInterest buildRelationshipInterest() {
  final o = api.RelationshipInterest();
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
    unittest.expect(
      o.formattedValue!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelationshipInterest--;
}

core.int buildCounterRelationshipStatus = 0;
api.RelationshipStatus buildRelationshipStatus() {
  final o = api.RelationshipStatus();
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
    unittest.expect(
      o.formattedValue!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelationshipStatus--;
}

core.int buildCounterResidence = 0;
api.Residence buildResidence() {
  final o = api.Residence();
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
    unittest.expect(o.current!, unittest.isTrue);
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterResidence--;
}

core.List<api.Person> buildUnnamed6359() => [
      buildPerson(),
      buildPerson(),
    ];

void checkUnnamed6359(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterSearchDirectoryPeopleResponse = 0;
api.SearchDirectoryPeopleResponse buildSearchDirectoryPeopleResponse() {
  final o = api.SearchDirectoryPeopleResponse();
  buildCounterSearchDirectoryPeopleResponse++;
  if (buildCounterSearchDirectoryPeopleResponse < 3) {
    o.nextPageToken = 'foo';
    o.people = buildUnnamed6359();
    o.totalSize = 42;
  }
  buildCounterSearchDirectoryPeopleResponse--;
  return o;
}

void checkSearchDirectoryPeopleResponse(api.SearchDirectoryPeopleResponse o) {
  buildCounterSearchDirectoryPeopleResponse++;
  if (buildCounterSearchDirectoryPeopleResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6359(o.people!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterSearchDirectoryPeopleResponse--;
}

core.List<api.SearchResult> buildUnnamed6360() => [
      buildSearchResult(),
      buildSearchResult(),
    ];

void checkUnnamed6360(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchResponse = 0;
api.SearchResponse buildSearchResponse() {
  final o = api.SearchResponse();
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    o.results = buildUnnamed6360();
  }
  buildCounterSearchResponse--;
  return o;
}

void checkSearchResponse(api.SearchResponse o) {
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    checkUnnamed6360(o.results!);
  }
  buildCounterSearchResponse--;
}

core.int buildCounterSearchResult = 0;
api.SearchResult buildSearchResult() {
  final o = api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.person = buildPerson();
  }
  buildCounterSearchResult--;
  return o;
}

void checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    checkPerson(o.person!);
  }
  buildCounterSearchResult--;
}

core.int buildCounterSipAddress = 0;
api.SipAddress buildSipAddress() {
  final o = api.SipAddress();
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
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterSipAddress--;
}

core.int buildCounterSkill = 0;
api.Skill buildSkill() {
  final o = api.Skill();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterSkill--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
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
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkProfileMetadata(o.profileMetadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSource--;
}

core.Map<core.String, core.Object> buildUnnamed6361() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed6361(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6362() => [
      buildUnnamed6361(),
      buildUnnamed6361(),
    ];

void checkUnnamed6362(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6361(o[0]);
  checkUnnamed6361(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6362();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed6362(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTagline = 0;
api.Tagline buildTagline() {
  final o = api.Tagline();
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
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterTagline--;
}

core.int buildCounterUpdateContactGroupRequest = 0;
api.UpdateContactGroupRequest buildUpdateContactGroupRequest() {
  final o = api.UpdateContactGroupRequest();
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
    checkContactGroup(o.contactGroup!);
    unittest.expect(
      o.readGroupFields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateGroupFields!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateContactGroupRequest--;
}

core.List<core.String> buildUnnamed6363() => [
      'foo',
      'foo',
    ];

void checkUnnamed6363(core.List<core.String> o) {
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

core.int buildCounterUpdateContactPhotoRequest = 0;
api.UpdateContactPhotoRequest buildUpdateContactPhotoRequest() {
  final o = api.UpdateContactPhotoRequest();
  buildCounterUpdateContactPhotoRequest++;
  if (buildCounterUpdateContactPhotoRequest < 3) {
    o.personFields = 'foo';
    o.photoBytes = 'foo';
    o.sources = buildUnnamed6363();
  }
  buildCounterUpdateContactPhotoRequest--;
  return o;
}

void checkUpdateContactPhotoRequest(api.UpdateContactPhotoRequest o) {
  buildCounterUpdateContactPhotoRequest++;
  if (buildCounterUpdateContactPhotoRequest < 3) {
    unittest.expect(
      o.personFields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoBytes!,
      unittest.equals('foo'),
    );
    checkUnnamed6363(o.sources!);
  }
  buildCounterUpdateContactPhotoRequest--;
}

core.int buildCounterUpdateContactPhotoResponse = 0;
api.UpdateContactPhotoResponse buildUpdateContactPhotoResponse() {
  final o = api.UpdateContactPhotoResponse();
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
    checkPerson(o.person!);
  }
  buildCounterUpdateContactPhotoResponse--;
}

core.int buildCounterUrl = 0;
api.Url buildUrl() {
  final o = api.Url();
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
    unittest.expect(
      o.formattedType!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrl--;
}

core.int buildCounterUserDefined = 0;
api.UserDefined buildUserDefined() {
  final o = api.UserDefined();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkFieldMetadata(o.metadata!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDefined--;
}

core.List<core.String> buildUnnamed6364() => [
      'foo',
      'foo',
    ];

void checkUnnamed6364(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6365() => [
      'foo',
      'foo',
    ];

void checkUnnamed6365(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6366() => [
      'foo',
      'foo',
    ];

void checkUnnamed6366(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6367() => [
      'foo',
      'foo',
    ];

void checkUnnamed6367(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6368() => [
      'foo',
      'foo',
    ];

void checkUnnamed6368(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6369() => [
      'foo',
      'foo',
    ];

void checkUnnamed6369(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6370() => [
      'foo',
      'foo',
    ];

void checkUnnamed6370(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6371() => [
      'foo',
      'foo',
    ];

void checkUnnamed6371(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6372() => [
      'foo',
      'foo',
    ];

void checkUnnamed6372(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6373() => [
      'foo',
      'foo',
    ];

void checkUnnamed6373(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6374() => [
      'foo',
      'foo',
    ];

void checkUnnamed6374(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6375() => [
      'foo',
      'foo',
    ];

void checkUnnamed6375(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6376() => [
      'foo',
      'foo',
    ];

void checkUnnamed6376(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6377() => [
      'foo',
      'foo',
    ];

void checkUnnamed6377(core.List<core.String> o) {
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
  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Address.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAddress(od);
    });
  });

  unittest.group('obj-schema-AgeRangeType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgeRangeType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgeRangeType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgeRangeType(od);
    });
  });

  unittest.group('obj-schema-BatchCreateContactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateContactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateContactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateContactsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateContactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateContactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateContactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateContactsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteContactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteContactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteContactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteContactsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchGetContactGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetContactGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetContactGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetContactGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateContactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateContactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateContactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateContactsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateContactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateContactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateContactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateContactsResponse(od);
    });
  });

  unittest.group('obj-schema-Biography', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiography();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Biography.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBiography(od);
    });
  });

  unittest.group('obj-schema-Birthday', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBirthday();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Birthday.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBirthday(od);
    });
  });

  unittest.group('obj-schema-BraggingRights', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBraggingRights();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BraggingRights.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBraggingRights(od);
    });
  });

  unittest.group('obj-schema-CalendarUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCalendarUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CalendarUrl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCalendarUrl(od);
    });
  });

  unittest.group('obj-schema-ClientData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ClientData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClientData(od);
    });
  });

  unittest.group('obj-schema-ContactGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactGroup(od);
    });
  });

  unittest.group('obj-schema-ContactGroupMembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactGroupMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactGroupMembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactGroupMembership(od);
    });
  });

  unittest.group('obj-schema-ContactGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactGroupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-ContactGroupResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactGroupResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactGroupResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactGroupResponse(od);
    });
  });

  unittest.group('obj-schema-ContactToCreate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactToCreate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactToCreate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactToCreate(od);
    });
  });

  unittest.group('obj-schema-CopyOtherContactToMyContactsGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCopyOtherContactToMyContactsGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CopyOtherContactToMyContactsGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCopyOtherContactToMyContactsGroupRequest(od);
    });
  });

  unittest.group('obj-schema-CoverPhoto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCoverPhoto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CoverPhoto.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCoverPhoto(od);
    });
  });

  unittest.group('obj-schema-CreateContactGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateContactGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateContactGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateContactGroupRequest(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DeleteContactPhotoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteContactPhotoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteContactPhotoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteContactPhotoResponse(od);
    });
  });

  unittest.group('obj-schema-DomainMembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainMembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainMembership(od);
    });
  });

  unittest.group('obj-schema-EmailAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailAddress(od);
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

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Event.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-ExternalId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ExternalId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExternalId(od);
    });
  });

  unittest.group('obj-schema-FieldMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldMetadata(od);
    });
  });

  unittest.group('obj-schema-FileAs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileAs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileAs.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileAs(od);
    });
  });

  unittest.group('obj-schema-Gender', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGender();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Gender.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGender(od);
    });
  });

  unittest.group('obj-schema-GetPeopleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPeopleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPeopleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPeopleResponse(od);
    });
  });

  unittest.group('obj-schema-GroupClientData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupClientData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupClientData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupClientData(od);
    });
  });

  unittest.group('obj-schema-ImClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImClient.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImClient(od);
    });
  });

  unittest.group('obj-schema-Interest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Interest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInterest(od);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListContactGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListContactGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListContactGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListContactGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDirectoryPeopleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDirectoryPeopleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDirectoryPeopleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDirectoryPeopleResponse(od);
    });
  });

  unittest.group('obj-schema-ListOtherContactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOtherContactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOtherContactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOtherContactsResponse(od);
    });
  });

  unittest.group('obj-schema-Locale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Locale.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocale(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MiscKeyword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMiscKeyword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MiscKeyword.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMiscKeyword(od);
    });
  });

  unittest.group('obj-schema-ModifyContactGroupMembersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyContactGroupMembersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyContactGroupMembersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyContactGroupMembersRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyContactGroupMembersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyContactGroupMembersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyContactGroupMembersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyContactGroupMembersResponse(od);
    });
  });

  unittest.group('obj-schema-Name', () {
    unittest.test('to-json--from-json', () async {
      final o = buildName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Name.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkName(od);
    });
  });

  unittest.group('obj-schema-Nickname', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNickname();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Nickname.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNickname(od);
    });
  });

  unittest.group('obj-schema-Occupation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOccupation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Occupation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOccupation(od);
    });
  });

  unittest.group('obj-schema-Organization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrganization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Organization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrganization(od);
    });
  });

  unittest.group('obj-schema-Person', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerson();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Person.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPerson(od);
    });
  });

  unittest.group('obj-schema-PersonMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonMetadata(od);
    });
  });

  unittest.group('obj-schema-PersonResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonResponse(od);
    });
  });

  unittest.group('obj-schema-PhoneNumber', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoneNumber();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhoneNumber.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhoneNumber(od);
    });
  });

  unittest.group('obj-schema-Photo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Photo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhoto(od);
    });
  });

  unittest.group('obj-schema-ProfileMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileMetadata(od);
    });
  });

  unittest.group('obj-schema-Relation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Relation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelation(od);
    });
  });

  unittest.group('obj-schema-RelationshipInterest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipInterest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipInterest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelationshipInterest(od);
    });
  });

  unittest.group('obj-schema-RelationshipStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelationshipStatus(od);
    });
  });

  unittest.group('obj-schema-Residence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResidence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Residence.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResidence(od);
    });
  });

  unittest.group('obj-schema-SearchDirectoryPeopleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDirectoryPeopleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDirectoryPeopleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchDirectoryPeopleResponse(od);
    });
  });

  unittest.group('obj-schema-SearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResponse(od);
    });
  });

  unittest.group('obj-schema-SearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResult(od);
    });
  });

  unittest.group('obj-schema-SipAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSipAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SipAddress.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSipAddress(od);
    });
  });

  unittest.group('obj-schema-Skill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSkill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Skill.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSkill(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Tagline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Tagline.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTagline(od);
    });
  });

  unittest.group('obj-schema-UpdateContactGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateContactGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateContactGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateContactGroupRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateContactPhotoRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateContactPhotoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateContactPhotoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateContactPhotoRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateContactPhotoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateContactPhotoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateContactPhotoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateContactPhotoResponse(od);
    });
  });

  unittest.group('obj-schema-Url', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Url.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUrl(od);
    });
  });

  unittest.group('obj-schema-UserDefined', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDefined();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDefined.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDefined(od);
    });
  });

  unittest.group('resource-ContactGroupsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups;
      final arg_groupFields = 'foo';
      final arg_maxMembers = 42;
      final arg_resourceNames = buildUnnamed6364();
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/contactGroups:batchGet'),
        );
        pathOffset += 25;

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
          queryMap['groupFields']!.first,
          unittest.equals(arg_groupFields),
        );
        unittest.expect(
          core.int.parse(queryMap['maxMembers']!.first),
          unittest.equals(arg_maxMembers),
        );
        unittest.expect(
          queryMap['resourceNames']!,
          unittest.equals(arg_resourceNames),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetContactGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(
          groupFields: arg_groupFields,
          maxMembers: arg_maxMembers,
          resourceNames: arg_resourceNames,
          $fields: arg_$fields);
      checkBatchGetContactGroupsResponse(
          response as api.BatchGetContactGroupsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups;
      final arg_request = buildCreateContactGroupRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateContactGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateContactGroupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/contactGroups'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildContactGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkContactGroup(response as api.ContactGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups;
      final arg_resourceName = 'foo';
      final arg_deleteContacts = true;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['deleteContacts']!.first,
          unittest.equals('$arg_deleteContacts'),
        );
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
      final response = await res.delete(arg_resourceName,
          deleteContacts: arg_deleteContacts, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups;
      final arg_resourceName = 'foo';
      final arg_groupFields = 'foo';
      final arg_maxMembers = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['groupFields']!.first,
          unittest.equals(arg_groupFields),
        );
        unittest.expect(
          core.int.parse(queryMap['maxMembers']!.first),
          unittest.equals(arg_maxMembers),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContactGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_resourceName,
          groupFields: arg_groupFields,
          maxMembers: arg_maxMembers,
          $fields: arg_$fields);
      checkContactGroup(response as api.ContactGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups;
      final arg_groupFields = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_syncToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/contactGroups'),
        );
        pathOffset += 16;

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
          queryMap['groupFields']!.first,
          unittest.equals(arg_groupFields),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['syncToken']!.first,
          unittest.equals(arg_syncToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListContactGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          groupFields: arg_groupFields,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          syncToken: arg_syncToken,
          $fields: arg_$fields);
      checkListContactGroupsResponse(response as api.ListContactGroupsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups;
      final arg_request = buildUpdateContactGroupRequest();
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateContactGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateContactGroupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildContactGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_resourceName, $fields: arg_$fields);
      checkContactGroup(response as api.ContactGroup);
    });
  });

  unittest.group('resource-ContactGroupsMembersResource', () {
    unittest.test('method--modify', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).contactGroups.members;
      final arg_request = buildModifyContactGroupMembersRequest();
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyContactGroupMembersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyContactGroupMembersRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp =
            convert.json.encode(buildModifyContactGroupMembersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.modify(arg_request, arg_resourceName, $fields: arg_$fields);
      checkModifyContactGroupMembersResponse(
          response as api.ModifyContactGroupMembersResponse);
    });
  });

  unittest.group('resource-OtherContactsResource', () {
    unittest.test('method--copyOtherContactToMyContactsGroup', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).otherContacts;
      final arg_request = buildCopyOtherContactToMyContactsGroupRequest();
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CopyOtherContactToMyContactsGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCopyOtherContactToMyContactsGroupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.copyOtherContactToMyContactsGroup(
          arg_request, arg_resourceName,
          $fields: arg_$fields);
      checkPerson(response as api.Person);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).otherContacts;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_requestSyncToken = true;
      final arg_sources = buildUnnamed6365();
      final arg_syncToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/otherContacts'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['requestSyncToken']!.first,
          unittest.equals('$arg_requestSyncToken'),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['syncToken']!.first,
          unittest.equals(arg_syncToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOtherContactsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          requestSyncToken: arg_requestSyncToken,
          sources: arg_sources,
          syncToken: arg_syncToken,
          $fields: arg_$fields);
      checkListOtherContactsResponse(response as api.ListOtherContactsResponse);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).otherContacts;
      final arg_pageSize = 42;
      final arg_query = 'foo';
      final arg_readMask = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1/otherContacts:search'),
        );
        pathOffset += 23;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          pageSize: arg_pageSize,
          query: arg_query,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkSearchResponse(response as api.SearchResponse);
    });
  });

  unittest.group('resource-PeopleResource', () {
    unittest.test('method--batchCreateContacts', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_request = buildBatchCreateContactsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateContactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateContactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/people:batchCreateContacts'),
        );
        pathOffset += 29;

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
        final resp = convert.json.encode(buildBatchCreateContactsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreateContacts(arg_request, $fields: arg_$fields);
      checkBatchCreateContactsResponse(
          response as api.BatchCreateContactsResponse);
    });

    unittest.test('method--batchDeleteContacts', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_request = buildBatchDeleteContactsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeleteContactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteContactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/people:batchDeleteContacts'),
        );
        pathOffset += 29;

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
      final response =
          await res.batchDeleteContacts(arg_request, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--batchUpdateContacts', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_request = buildBatchUpdateContactsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateContactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateContactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/people:batchUpdateContacts'),
        );
        pathOffset += 29;

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
        final resp = convert.json.encode(buildBatchUpdateContactsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdateContacts(arg_request, $fields: arg_$fields);
      checkBatchUpdateContactsResponse(
          response as api.BatchUpdateContactsResponse);
    });

    unittest.test('method--createContact', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_request = buildPerson();
      final arg_personFields = 'foo';
      final arg_sources = buildUnnamed6366();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Person.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPerson(obj);

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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1/people:createContact'),
        );
        pathOffset += 23;

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
          queryMap['personFields']!.first,
          unittest.equals(arg_personFields),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createContact(arg_request,
          personFields: arg_personFields,
          sources: arg_sources,
          $fields: arg_$fields);
      checkPerson(response as api.Person);
    });

    unittest.test('method--deleteContact', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_resourceName = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final response =
          await res.deleteContact(arg_resourceName, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--deleteContactPhoto', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_resourceName = 'foo';
      final arg_personFields = 'foo';
      final arg_sources = buildUnnamed6367();
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['personFields']!.first,
          unittest.equals(arg_personFields),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDeleteContactPhotoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteContactPhoto(arg_resourceName,
          personFields: arg_personFields,
          sources: arg_sources,
          $fields: arg_$fields);
      checkDeleteContactPhotoResponse(
          response as api.DeleteContactPhotoResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_resourceName = 'foo';
      final arg_personFields = 'foo';
      final arg_requestMask_includeField = 'foo';
      final arg_sources = buildUnnamed6368();
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['personFields']!.first,
          unittest.equals(arg_personFields),
        );
        unittest.expect(
          queryMap['requestMask.includeField']!.first,
          unittest.equals(arg_requestMask_includeField),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_resourceName,
          personFields: arg_personFields,
          requestMask_includeField: arg_requestMask_includeField,
          sources: arg_sources,
          $fields: arg_$fields);
      checkPerson(response as api.Person);
    });

    unittest.test('method--getBatchGet', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_personFields = 'foo';
      final arg_requestMask_includeField = 'foo';
      final arg_resourceNames = buildUnnamed6369();
      final arg_sources = buildUnnamed6370();
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
          unittest.equals('v1/people:batchGet'),
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
          queryMap['personFields']!.first,
          unittest.equals(arg_personFields),
        );
        unittest.expect(
          queryMap['requestMask.includeField']!.first,
          unittest.equals(arg_requestMask_includeField),
        );
        unittest.expect(
          queryMap['resourceNames']!,
          unittest.equals(arg_resourceNames),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetPeopleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getBatchGet(
          personFields: arg_personFields,
          requestMask_includeField: arg_requestMask_includeField,
          resourceNames: arg_resourceNames,
          sources: arg_sources,
          $fields: arg_$fields);
      checkGetPeopleResponse(response as api.GetPeopleResponse);
    });

    unittest.test('method--listDirectoryPeople', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_mergeSources = buildUnnamed6371();
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_requestSyncToken = true;
      final arg_sources = buildUnnamed6372();
      final arg_syncToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/people:listDirectoryPeople'),
        );
        pathOffset += 29;

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
          queryMap['mergeSources']!,
          unittest.equals(arg_mergeSources),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['requestSyncToken']!.first,
          unittest.equals('$arg_requestSyncToken'),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['syncToken']!.first,
          unittest.equals(arg_syncToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDirectoryPeopleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listDirectoryPeople(
          mergeSources: arg_mergeSources,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          requestSyncToken: arg_requestSyncToken,
          sources: arg_sources,
          syncToken: arg_syncToken,
          $fields: arg_$fields);
      checkListDirectoryPeopleResponse(
          response as api.ListDirectoryPeopleResponse);
    });

    unittest.test('method--searchContacts', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_pageSize = 42;
      final arg_query = 'foo';
      final arg_readMask = 'foo';
      final arg_sources = buildUnnamed6373();
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v1/people:searchContacts'),
        );
        pathOffset += 24;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchContacts(
          pageSize: arg_pageSize,
          query: arg_query,
          readMask: arg_readMask,
          sources: arg_sources,
          $fields: arg_$fields);
      checkSearchResponse(response as api.SearchResponse);
    });

    unittest.test('method--searchDirectoryPeople', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_mergeSources = buildUnnamed6374();
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_readMask = 'foo';
      final arg_sources = buildUnnamed6375();
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('v1/people:searchDirectoryPeople'),
        );
        pathOffset += 31;

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
          queryMap['mergeSources']!,
          unittest.equals(arg_mergeSources),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchDirectoryPeopleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchDirectoryPeople(
          mergeSources: arg_mergeSources,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          readMask: arg_readMask,
          sources: arg_sources,
          $fields: arg_$fields);
      checkSearchDirectoryPeopleResponse(
          response as api.SearchDirectoryPeopleResponse);
    });

    unittest.test('method--updateContact', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_request = buildPerson();
      final arg_resourceName = 'foo';
      final arg_personFields = 'foo';
      final arg_sources = buildUnnamed6376();
      final arg_updatePersonFields = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Person.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPerson(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['personFields']!.first,
          unittest.equals(arg_personFields),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['updatePersonFields']!.first,
          unittest.equals(arg_updatePersonFields),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPerson());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateContact(arg_request, arg_resourceName,
          personFields: arg_personFields,
          sources: arg_sources,
          updatePersonFields: arg_updatePersonFields,
          $fields: arg_$fields);
      checkPerson(response as api.Person);
    });

    unittest.test('method--updateContactPhoto', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people;
      final arg_request = buildUpdateContactPhotoRequest();
      final arg_resourceName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateContactPhotoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateContactPhotoRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildUpdateContactPhotoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateContactPhoto(
          arg_request, arg_resourceName,
          $fields: arg_$fields);
      checkUpdateContactPhotoResponse(
          response as api.UpdateContactPhotoResponse);
    });
  });

  unittest.group('resource-PeopleConnectionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PeopleServiceApi(mock).people.connections;
      final arg_resourceName = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_personFields = 'foo';
      final arg_requestMask_includeField = 'foo';
      final arg_requestSyncToken = true;
      final arg_sortOrder = 'foo';
      final arg_sources = buildUnnamed6377();
      final arg_syncToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['personFields']!.first,
          unittest.equals(arg_personFields),
        );
        unittest.expect(
          queryMap['requestMask.includeField']!.first,
          unittest.equals(arg_requestMask_includeField),
        );
        unittest.expect(
          queryMap['requestSyncToken']!.first,
          unittest.equals('$arg_requestSyncToken'),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['sources']!,
          unittest.equals(arg_sources),
        );
        unittest.expect(
          queryMap['syncToken']!.first,
          unittest.equals(arg_syncToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_resourceName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          personFields: arg_personFields,
          requestMask_includeField: arg_requestMask_includeField,
          requestSyncToken: arg_requestSyncToken,
          sortOrder: arg_sortOrder,
          sources: arg_sources,
          syncToken: arg_syncToken,
          $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });
  });
}
