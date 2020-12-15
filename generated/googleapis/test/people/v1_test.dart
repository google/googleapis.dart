library googleapis.people.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/people/v1.dart' as api;

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

core.int buildCounterAddress = 0;
buildAddress() {
  var o = new api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.city = "foo";
    o.country = "foo";
    o.countryCode = "foo";
    o.extendedAddress = "foo";
    o.formattedType = "foo";
    o.formattedValue = "foo";
    o.metadata = buildFieldMetadata();
    o.poBox = "foo";
    o.postalCode = "foo";
    o.region = "foo";
    o.streetAddress = "foo";
    o.type = "foo";
  }
  buildCounterAddress--;
  return o;
}

checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.extendedAddress, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.poBox, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.streetAddress, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAddress--;
}

core.int buildCounterAgeRangeType = 0;
buildAgeRangeType() {
  var o = new api.AgeRangeType();
  buildCounterAgeRangeType++;
  if (buildCounterAgeRangeType < 3) {
    o.ageRange = "foo";
    o.metadata = buildFieldMetadata();
  }
  buildCounterAgeRangeType--;
  return o;
}

checkAgeRangeType(api.AgeRangeType o) {
  buildCounterAgeRangeType++;
  if (buildCounterAgeRangeType < 3) {
    unittest.expect(o.ageRange, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
  }
  buildCounterAgeRangeType--;
}

buildUnnamed4270() {
  var o = new core.List<api.ContactGroupResponse>();
  o.add(buildContactGroupResponse());
  o.add(buildContactGroupResponse());
  return o;
}

checkUnnamed4270(core.List<api.ContactGroupResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactGroupResponse(o[0]);
  checkContactGroupResponse(o[1]);
}

core.int buildCounterBatchGetContactGroupsResponse = 0;
buildBatchGetContactGroupsResponse() {
  var o = new api.BatchGetContactGroupsResponse();
  buildCounterBatchGetContactGroupsResponse++;
  if (buildCounterBatchGetContactGroupsResponse < 3) {
    o.responses = buildUnnamed4270();
  }
  buildCounterBatchGetContactGroupsResponse--;
  return o;
}

checkBatchGetContactGroupsResponse(api.BatchGetContactGroupsResponse o) {
  buildCounterBatchGetContactGroupsResponse++;
  if (buildCounterBatchGetContactGroupsResponse < 3) {
    checkUnnamed4270(o.responses);
  }
  buildCounterBatchGetContactGroupsResponse--;
}

core.int buildCounterBiography = 0;
buildBiography() {
  var o = new api.Biography();
  buildCounterBiography++;
  if (buildCounterBiography < 3) {
    o.contentType = "foo";
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterBiography--;
  return o;
}

checkBiography(api.Biography o) {
  buildCounterBiography++;
  if (buildCounterBiography < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBiography--;
}

core.int buildCounterBirthday = 0;
buildBirthday() {
  var o = new api.Birthday();
  buildCounterBirthday++;
  if (buildCounterBirthday < 3) {
    o.date = buildDate();
    o.metadata = buildFieldMetadata();
    o.text = "foo";
  }
  buildCounterBirthday--;
  return o;
}

checkBirthday(api.Birthday o) {
  buildCounterBirthday++;
  if (buildCounterBirthday < 3) {
    checkDate(o.date);
    checkFieldMetadata(o.metadata);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterBirthday--;
}

core.int buildCounterBraggingRights = 0;
buildBraggingRights() {
  var o = new api.BraggingRights();
  buildCounterBraggingRights++;
  if (buildCounterBraggingRights < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterBraggingRights--;
  return o;
}

checkBraggingRights(api.BraggingRights o) {
  buildCounterBraggingRights++;
  if (buildCounterBraggingRights < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBraggingRights--;
}

core.int buildCounterCalendarUrl = 0;
buildCalendarUrl() {
  var o = new api.CalendarUrl();
  buildCounterCalendarUrl++;
  if (buildCounterCalendarUrl < 3) {
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.url = "foo";
  }
  buildCounterCalendarUrl--;
  return o;
}

checkCalendarUrl(api.CalendarUrl o) {
  buildCounterCalendarUrl++;
  if (buildCounterCalendarUrl < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCalendarUrl--;
}

core.int buildCounterClientData = 0;
buildClientData() {
  var o = new api.ClientData();
  buildCounterClientData++;
  if (buildCounterClientData < 3) {
    o.key = "foo";
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterClientData--;
  return o;
}

checkClientData(api.ClientData o) {
  buildCounterClientData++;
  if (buildCounterClientData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterClientData--;
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

core.int buildCounterContactGroup = 0;
buildContactGroup() {
  var o = new api.ContactGroup();
  buildCounterContactGroup++;
  if (buildCounterContactGroup < 3) {
    o.etag = "foo";
    o.formattedName = "foo";
    o.groupType = "foo";
    o.memberCount = 42;
    o.memberResourceNames = buildUnnamed4271();
    o.metadata = buildContactGroupMetadata();
    o.name = "foo";
    o.resourceName = "foo";
  }
  buildCounterContactGroup--;
  return o;
}

checkContactGroup(api.ContactGroup o) {
  buildCounterContactGroup++;
  if (buildCounterContactGroup < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.formattedName, unittest.equals('foo'));
    unittest.expect(o.groupType, unittest.equals('foo'));
    unittest.expect(o.memberCount, unittest.equals(42));
    checkUnnamed4271(o.memberResourceNames);
    checkContactGroupMetadata(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterContactGroup--;
}

core.int buildCounterContactGroupMembership = 0;
buildContactGroupMembership() {
  var o = new api.ContactGroupMembership();
  buildCounterContactGroupMembership++;
  if (buildCounterContactGroupMembership < 3) {
    o.contactGroupId = "foo";
    o.contactGroupResourceName = "foo";
  }
  buildCounterContactGroupMembership--;
  return o;
}

checkContactGroupMembership(api.ContactGroupMembership o) {
  buildCounterContactGroupMembership++;
  if (buildCounterContactGroupMembership < 3) {
    unittest.expect(o.contactGroupId, unittest.equals('foo'));
    unittest.expect(o.contactGroupResourceName, unittest.equals('foo'));
  }
  buildCounterContactGroupMembership--;
}

core.int buildCounterContactGroupMetadata = 0;
buildContactGroupMetadata() {
  var o = new api.ContactGroupMetadata();
  buildCounterContactGroupMetadata++;
  if (buildCounterContactGroupMetadata < 3) {
    o.deleted = true;
    o.updateTime = "foo";
  }
  buildCounterContactGroupMetadata--;
  return o;
}

checkContactGroupMetadata(api.ContactGroupMetadata o) {
  buildCounterContactGroupMetadata++;
  if (buildCounterContactGroupMetadata < 3) {
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterContactGroupMetadata--;
}

core.int buildCounterContactGroupResponse = 0;
buildContactGroupResponse() {
  var o = new api.ContactGroupResponse();
  buildCounterContactGroupResponse++;
  if (buildCounterContactGroupResponse < 3) {
    o.contactGroup = buildContactGroup();
    o.requestedResourceName = "foo";
    o.status = buildStatus();
  }
  buildCounterContactGroupResponse--;
  return o;
}

checkContactGroupResponse(api.ContactGroupResponse o) {
  buildCounterContactGroupResponse++;
  if (buildCounterContactGroupResponse < 3) {
    checkContactGroup(o.contactGroup);
    unittest.expect(o.requestedResourceName, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterContactGroupResponse--;
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

core.int buildCounterCopyOtherContactToMyContactsGroupRequest = 0;
buildCopyOtherContactToMyContactsGroupRequest() {
  var o = new api.CopyOtherContactToMyContactsGroupRequest();
  buildCounterCopyOtherContactToMyContactsGroupRequest++;
  if (buildCounterCopyOtherContactToMyContactsGroupRequest < 3) {
    o.copyMask = "foo";
    o.readMask = "foo";
    o.sources = buildUnnamed4272();
  }
  buildCounterCopyOtherContactToMyContactsGroupRequest--;
  return o;
}

checkCopyOtherContactToMyContactsGroupRequest(
    api.CopyOtherContactToMyContactsGroupRequest o) {
  buildCounterCopyOtherContactToMyContactsGroupRequest++;
  if (buildCounterCopyOtherContactToMyContactsGroupRequest < 3) {
    unittest.expect(o.copyMask, unittest.equals('foo'));
    unittest.expect(o.readMask, unittest.equals('foo'));
    checkUnnamed4272(o.sources);
  }
  buildCounterCopyOtherContactToMyContactsGroupRequest--;
}

core.int buildCounterCoverPhoto = 0;
buildCoverPhoto() {
  var o = new api.CoverPhoto();
  buildCounterCoverPhoto++;
  if (buildCounterCoverPhoto < 3) {
    o.default_ = true;
    o.metadata = buildFieldMetadata();
    o.url = "foo";
  }
  buildCounterCoverPhoto--;
  return o;
}

checkCoverPhoto(api.CoverPhoto o) {
  buildCounterCoverPhoto++;
  if (buildCounterCoverPhoto < 3) {
    unittest.expect(o.default_, unittest.isTrue);
    checkFieldMetadata(o.metadata);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCoverPhoto--;
}

core.int buildCounterCreateContactGroupRequest = 0;
buildCreateContactGroupRequest() {
  var o = new api.CreateContactGroupRequest();
  buildCounterCreateContactGroupRequest++;
  if (buildCounterCreateContactGroupRequest < 3) {
    o.contactGroup = buildContactGroup();
  }
  buildCounterCreateContactGroupRequest--;
  return o;
}

checkCreateContactGroupRequest(api.CreateContactGroupRequest o) {
  buildCounterCreateContactGroupRequest++;
  if (buildCounterCreateContactGroupRequest < 3) {
    checkContactGroup(o.contactGroup);
  }
  buildCounterCreateContactGroupRequest--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeleteContactPhotoResponse = 0;
buildDeleteContactPhotoResponse() {
  var o = new api.DeleteContactPhotoResponse();
  buildCounterDeleteContactPhotoResponse++;
  if (buildCounterDeleteContactPhotoResponse < 3) {
    o.person = buildPerson();
  }
  buildCounterDeleteContactPhotoResponse--;
  return o;
}

checkDeleteContactPhotoResponse(api.DeleteContactPhotoResponse o) {
  buildCounterDeleteContactPhotoResponse++;
  if (buildCounterDeleteContactPhotoResponse < 3) {
    checkPerson(o.person);
  }
  buildCounterDeleteContactPhotoResponse--;
}

core.int buildCounterDomainMembership = 0;
buildDomainMembership() {
  var o = new api.DomainMembership();
  buildCounterDomainMembership++;
  if (buildCounterDomainMembership < 3) {
    o.inViewerDomain = true;
  }
  buildCounterDomainMembership--;
  return o;
}

checkDomainMembership(api.DomainMembership o) {
  buildCounterDomainMembership++;
  if (buildCounterDomainMembership < 3) {
    unittest.expect(o.inViewerDomain, unittest.isTrue);
  }
  buildCounterDomainMembership--;
}

core.int buildCounterEmailAddress = 0;
buildEmailAddress() {
  var o = new api.EmailAddress();
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    o.displayName = "foo";
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterEmailAddress--;
  return o;
}

checkEmailAddress(api.EmailAddress o) {
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEmailAddress--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEvent = 0;
buildEvent() {
  var o = new api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.date = buildDate();
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
  }
  buildCounterEvent--;
  return o;
}

checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkDate(o.date);
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterEvent--;
}

core.int buildCounterExternalId = 0;
buildExternalId() {
  var o = new api.ExternalId();
  buildCounterExternalId++;
  if (buildCounterExternalId < 3) {
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterExternalId--;
  return o;
}

checkExternalId(api.ExternalId o) {
  buildCounterExternalId++;
  if (buildCounterExternalId < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterExternalId--;
}

core.int buildCounterFieldMetadata = 0;
buildFieldMetadata() {
  var o = new api.FieldMetadata();
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    o.primary = true;
    o.source = buildSource();
    o.verified = true;
  }
  buildCounterFieldMetadata--;
  return o;
}

checkFieldMetadata(api.FieldMetadata o) {
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    unittest.expect(o.primary, unittest.isTrue);
    checkSource(o.source);
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterFieldMetadata--;
}

core.int buildCounterFileAs = 0;
buildFileAs() {
  var o = new api.FileAs();
  buildCounterFileAs++;
  if (buildCounterFileAs < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterFileAs--;
  return o;
}

checkFileAs(api.FileAs o) {
  buildCounterFileAs++;
  if (buildCounterFileAs < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterFileAs--;
}

core.int buildCounterGender = 0;
buildGender() {
  var o = new api.Gender();
  buildCounterGender++;
  if (buildCounterGender < 3) {
    o.addressMeAs = "foo";
    o.formattedValue = "foo";
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterGender--;
  return o;
}

checkGender(api.Gender o) {
  buildCounterGender++;
  if (buildCounterGender < 3) {
    unittest.expect(o.addressMeAs, unittest.equals('foo'));
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGender--;
}

buildUnnamed4273() {
  var o = new core.List<api.PersonResponse>();
  o.add(buildPersonResponse());
  o.add(buildPersonResponse());
  return o;
}

checkUnnamed4273(core.List<api.PersonResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonResponse(o[0]);
  checkPersonResponse(o[1]);
}

core.int buildCounterGetPeopleResponse = 0;
buildGetPeopleResponse() {
  var o = new api.GetPeopleResponse();
  buildCounterGetPeopleResponse++;
  if (buildCounterGetPeopleResponse < 3) {
    o.responses = buildUnnamed4273();
  }
  buildCounterGetPeopleResponse--;
  return o;
}

checkGetPeopleResponse(api.GetPeopleResponse o) {
  buildCounterGetPeopleResponse++;
  if (buildCounterGetPeopleResponse < 3) {
    checkUnnamed4273(o.responses);
  }
  buildCounterGetPeopleResponse--;
}

core.int buildCounterImClient = 0;
buildImClient() {
  var o = new api.ImClient();
  buildCounterImClient++;
  if (buildCounterImClient < 3) {
    o.formattedProtocol = "foo";
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.protocol = "foo";
    o.type = "foo";
    o.username = "foo";
  }
  buildCounterImClient--;
  return o;
}

checkImClient(api.ImClient o) {
  buildCounterImClient++;
  if (buildCounterImClient < 3) {
    unittest.expect(o.formattedProtocol, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterImClient--;
}

core.int buildCounterInterest = 0;
buildInterest() {
  var o = new api.Interest();
  buildCounterInterest++;
  if (buildCounterInterest < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterInterest--;
  return o;
}

checkInterest(api.Interest o) {
  buildCounterInterest++;
  if (buildCounterInterest < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInterest--;
}

buildUnnamed4274() {
  var o = new core.List<api.Person>();
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

checkUnnamed4274(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
buildListConnectionsResponse() {
  var o = new api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed4274();
    o.nextPageToken = "foo";
    o.nextSyncToken = "foo";
    o.totalItems = 42;
    o.totalPeople = 42;
  }
  buildCounterListConnectionsResponse--;
  return o;
}

checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed4274(o.connections);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
    unittest.expect(o.totalPeople, unittest.equals(42));
  }
  buildCounterListConnectionsResponse--;
}

buildUnnamed4275() {
  var o = new core.List<api.ContactGroup>();
  o.add(buildContactGroup());
  o.add(buildContactGroup());
  return o;
}

checkUnnamed4275(core.List<api.ContactGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactGroup(o[0]);
  checkContactGroup(o[1]);
}

core.int buildCounterListContactGroupsResponse = 0;
buildListContactGroupsResponse() {
  var o = new api.ListContactGroupsResponse();
  buildCounterListContactGroupsResponse++;
  if (buildCounterListContactGroupsResponse < 3) {
    o.contactGroups = buildUnnamed4275();
    o.nextPageToken = "foo";
    o.nextSyncToken = "foo";
    o.totalItems = 42;
  }
  buildCounterListContactGroupsResponse--;
  return o;
}

checkListContactGroupsResponse(api.ListContactGroupsResponse o) {
  buildCounterListContactGroupsResponse++;
  if (buildCounterListContactGroupsResponse < 3) {
    checkUnnamed4275(o.contactGroups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterListContactGroupsResponse--;
}

buildUnnamed4276() {
  var o = new core.List<api.Person>();
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

checkUnnamed4276(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterListDirectoryPeopleResponse = 0;
buildListDirectoryPeopleResponse() {
  var o = new api.ListDirectoryPeopleResponse();
  buildCounterListDirectoryPeopleResponse++;
  if (buildCounterListDirectoryPeopleResponse < 3) {
    o.nextPageToken = "foo";
    o.nextSyncToken = "foo";
    o.people = buildUnnamed4276();
  }
  buildCounterListDirectoryPeopleResponse--;
  return o;
}

checkListDirectoryPeopleResponse(api.ListDirectoryPeopleResponse o) {
  buildCounterListDirectoryPeopleResponse++;
  if (buildCounterListDirectoryPeopleResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    checkUnnamed4276(o.people);
  }
  buildCounterListDirectoryPeopleResponse--;
}

buildUnnamed4277() {
  var o = new core.List<api.Person>();
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

checkUnnamed4277(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterListOtherContactsResponse = 0;
buildListOtherContactsResponse() {
  var o = new api.ListOtherContactsResponse();
  buildCounterListOtherContactsResponse++;
  if (buildCounterListOtherContactsResponse < 3) {
    o.nextPageToken = "foo";
    o.nextSyncToken = "foo";
    o.otherContacts = buildUnnamed4277();
  }
  buildCounterListOtherContactsResponse--;
  return o;
}

checkListOtherContactsResponse(api.ListOtherContactsResponse o) {
  buildCounterListOtherContactsResponse++;
  if (buildCounterListOtherContactsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    checkUnnamed4277(o.otherContacts);
  }
  buildCounterListOtherContactsResponse--;
}

core.int buildCounterLocale = 0;
buildLocale() {
  var o = new api.Locale();
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterLocale--;
  return o;
}

checkLocale(api.Locale o) {
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocale--;
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.buildingId = "foo";
    o.current = true;
    o.deskCode = "foo";
    o.floor = "foo";
    o.floorSection = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.buildingId, unittest.equals('foo'));
    unittest.expect(o.current, unittest.isTrue);
    unittest.expect(o.deskCode, unittest.equals('foo'));
    unittest.expect(o.floor, unittest.equals('foo'));
    unittest.expect(o.floorSection, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMembership = 0;
buildMembership() {
  var o = new api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.contactGroupMembership = buildContactGroupMembership();
    o.domainMembership = buildDomainMembership();
    o.metadata = buildFieldMetadata();
  }
  buildCounterMembership--;
  return o;
}

checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    checkContactGroupMembership(o.contactGroupMembership);
    checkDomainMembership(o.domainMembership);
    checkFieldMetadata(o.metadata);
  }
  buildCounterMembership--;
}

core.int buildCounterMiscKeyword = 0;
buildMiscKeyword() {
  var o = new api.MiscKeyword();
  buildCounterMiscKeyword++;
  if (buildCounterMiscKeyword < 3) {
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterMiscKeyword--;
  return o;
}

checkMiscKeyword(api.MiscKeyword o) {
  buildCounterMiscKeyword++;
  if (buildCounterMiscKeyword < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMiscKeyword--;
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
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4279(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyContactGroupMembersRequest = 0;
buildModifyContactGroupMembersRequest() {
  var o = new api.ModifyContactGroupMembersRequest();
  buildCounterModifyContactGroupMembersRequest++;
  if (buildCounterModifyContactGroupMembersRequest < 3) {
    o.resourceNamesToAdd = buildUnnamed4278();
    o.resourceNamesToRemove = buildUnnamed4279();
  }
  buildCounterModifyContactGroupMembersRequest--;
  return o;
}

checkModifyContactGroupMembersRequest(api.ModifyContactGroupMembersRequest o) {
  buildCounterModifyContactGroupMembersRequest++;
  if (buildCounterModifyContactGroupMembersRequest < 3) {
    checkUnnamed4278(o.resourceNamesToAdd);
    checkUnnamed4279(o.resourceNamesToRemove);
  }
  buildCounterModifyContactGroupMembersRequest--;
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

core.int buildCounterModifyContactGroupMembersResponse = 0;
buildModifyContactGroupMembersResponse() {
  var o = new api.ModifyContactGroupMembersResponse();
  buildCounterModifyContactGroupMembersResponse++;
  if (buildCounterModifyContactGroupMembersResponse < 3) {
    o.canNotRemoveLastContactGroupResourceNames = buildUnnamed4280();
    o.notFoundResourceNames = buildUnnamed4281();
  }
  buildCounterModifyContactGroupMembersResponse--;
  return o;
}

checkModifyContactGroupMembersResponse(
    api.ModifyContactGroupMembersResponse o) {
  buildCounterModifyContactGroupMembersResponse++;
  if (buildCounterModifyContactGroupMembersResponse < 3) {
    checkUnnamed4280(o.canNotRemoveLastContactGroupResourceNames);
    checkUnnamed4281(o.notFoundResourceNames);
  }
  buildCounterModifyContactGroupMembersResponse--;
}

core.int buildCounterName = 0;
buildName() {
  var o = new api.Name();
  buildCounterName++;
  if (buildCounterName < 3) {
    o.displayName = "foo";
    o.displayNameLastFirst = "foo";
    o.familyName = "foo";
    o.givenName = "foo";
    o.honorificPrefix = "foo";
    o.honorificSuffix = "foo";
    o.metadata = buildFieldMetadata();
    o.middleName = "foo";
    o.phoneticFamilyName = "foo";
    o.phoneticFullName = "foo";
    o.phoneticGivenName = "foo";
    o.phoneticHonorificPrefix = "foo";
    o.phoneticHonorificSuffix = "foo";
    o.phoneticMiddleName = "foo";
    o.unstructuredName = "foo";
  }
  buildCounterName--;
  return o;
}

checkName(api.Name o) {
  buildCounterName++;
  if (buildCounterName < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.displayNameLastFirst, unittest.equals('foo'));
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    unittest.expect(o.honorificPrefix, unittest.equals('foo'));
    unittest.expect(o.honorificSuffix, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
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
buildNickname() {
  var o = new api.Nickname();
  buildCounterNickname++;
  if (buildCounterNickname < 3) {
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterNickname--;
  return o;
}

checkNickname(api.Nickname o) {
  buildCounterNickname++;
  if (buildCounterNickname < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterNickname--;
}

core.int buildCounterOccupation = 0;
buildOccupation() {
  var o = new api.Occupation();
  buildCounterOccupation++;
  if (buildCounterOccupation < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterOccupation--;
  return o;
}

checkOccupation(api.Occupation o) {
  buildCounterOccupation++;
  if (buildCounterOccupation < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOccupation--;
}

core.int buildCounterOrganization = 0;
buildOrganization() {
  var o = new api.Organization();
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    o.current = true;
    o.department = "foo";
    o.domain = "foo";
    o.endDate = buildDate();
    o.formattedType = "foo";
    o.jobDescription = "foo";
    o.location = "foo";
    o.metadata = buildFieldMetadata();
    o.name = "foo";
    o.phoneticName = "foo";
    o.startDate = buildDate();
    o.symbol = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterOrganization--;
  return o;
}

checkOrganization(api.Organization o) {
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    unittest.expect(o.current, unittest.isTrue);
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    checkDate(o.endDate);
    unittest.expect(o.formattedType, unittest.equals('foo'));
    unittest.expect(o.jobDescription, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phoneticName, unittest.equals('foo'));
    checkDate(o.startDate);
    unittest.expect(o.symbol, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrganization--;
}

buildUnnamed4282() {
  var o = new core.List<api.Address>();
  o.add(buildAddress());
  o.add(buildAddress());
  return o;
}

checkUnnamed4282(core.List<api.Address> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddress(o[0]);
  checkAddress(o[1]);
}

buildUnnamed4283() {
  var o = new core.List<api.AgeRangeType>();
  o.add(buildAgeRangeType());
  o.add(buildAgeRangeType());
  return o;
}

checkUnnamed4283(core.List<api.AgeRangeType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgeRangeType(o[0]);
  checkAgeRangeType(o[1]);
}

buildUnnamed4284() {
  var o = new core.List<api.Biography>();
  o.add(buildBiography());
  o.add(buildBiography());
  return o;
}

checkUnnamed4284(core.List<api.Biography> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBiography(o[0]);
  checkBiography(o[1]);
}

buildUnnamed4285() {
  var o = new core.List<api.Birthday>();
  o.add(buildBirthday());
  o.add(buildBirthday());
  return o;
}

checkUnnamed4285(core.List<api.Birthday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBirthday(o[0]);
  checkBirthday(o[1]);
}

buildUnnamed4286() {
  var o = new core.List<api.BraggingRights>();
  o.add(buildBraggingRights());
  o.add(buildBraggingRights());
  return o;
}

checkUnnamed4286(core.List<api.BraggingRights> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBraggingRights(o[0]);
  checkBraggingRights(o[1]);
}

buildUnnamed4287() {
  var o = new core.List<api.CalendarUrl>();
  o.add(buildCalendarUrl());
  o.add(buildCalendarUrl());
  return o;
}

checkUnnamed4287(core.List<api.CalendarUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarUrl(o[0]);
  checkCalendarUrl(o[1]);
}

buildUnnamed4288() {
  var o = new core.List<api.ClientData>();
  o.add(buildClientData());
  o.add(buildClientData());
  return o;
}

checkUnnamed4288(core.List<api.ClientData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientData(o[0]);
  checkClientData(o[1]);
}

buildUnnamed4289() {
  var o = new core.List<api.CoverPhoto>();
  o.add(buildCoverPhoto());
  o.add(buildCoverPhoto());
  return o;
}

checkUnnamed4289(core.List<api.CoverPhoto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCoverPhoto(o[0]);
  checkCoverPhoto(o[1]);
}

buildUnnamed4290() {
  var o = new core.List<api.EmailAddress>();
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

checkUnnamed4290(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

buildUnnamed4291() {
  var o = new core.List<api.Event>();
  o.add(buildEvent());
  o.add(buildEvent());
  return o;
}

checkUnnamed4291(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0]);
  checkEvent(o[1]);
}

buildUnnamed4292() {
  var o = new core.List<api.ExternalId>();
  o.add(buildExternalId());
  o.add(buildExternalId());
  return o;
}

checkUnnamed4292(core.List<api.ExternalId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalId(o[0]);
  checkExternalId(o[1]);
}

buildUnnamed4293() {
  var o = new core.List<api.FileAs>();
  o.add(buildFileAs());
  o.add(buildFileAs());
  return o;
}

checkUnnamed4293(core.List<api.FileAs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileAs(o[0]);
  checkFileAs(o[1]);
}

buildUnnamed4294() {
  var o = new core.List<api.Gender>();
  o.add(buildGender());
  o.add(buildGender());
  return o;
}

checkUnnamed4294(core.List<api.Gender> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGender(o[0]);
  checkGender(o[1]);
}

buildUnnamed4295() {
  var o = new core.List<api.ImClient>();
  o.add(buildImClient());
  o.add(buildImClient());
  return o;
}

checkUnnamed4295(core.List<api.ImClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImClient(o[0]);
  checkImClient(o[1]);
}

buildUnnamed4296() {
  var o = new core.List<api.Interest>();
  o.add(buildInterest());
  o.add(buildInterest());
  return o;
}

checkUnnamed4296(core.List<api.Interest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInterest(o[0]);
  checkInterest(o[1]);
}

buildUnnamed4297() {
  var o = new core.List<api.Locale>();
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

checkUnnamed4297(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

buildUnnamed4298() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed4298(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

buildUnnamed4299() {
  var o = new core.List<api.Membership>();
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

checkUnnamed4299(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

buildUnnamed4300() {
  var o = new core.List<api.MiscKeyword>();
  o.add(buildMiscKeyword());
  o.add(buildMiscKeyword());
  return o;
}

checkUnnamed4300(core.List<api.MiscKeyword> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMiscKeyword(o[0]);
  checkMiscKeyword(o[1]);
}

buildUnnamed4301() {
  var o = new core.List<api.Name>();
  o.add(buildName());
  o.add(buildName());
  return o;
}

checkUnnamed4301(core.List<api.Name> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkName(o[0]);
  checkName(o[1]);
}

buildUnnamed4302() {
  var o = new core.List<api.Nickname>();
  o.add(buildNickname());
  o.add(buildNickname());
  return o;
}

checkUnnamed4302(core.List<api.Nickname> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNickname(o[0]);
  checkNickname(o[1]);
}

buildUnnamed4303() {
  var o = new core.List<api.Occupation>();
  o.add(buildOccupation());
  o.add(buildOccupation());
  return o;
}

checkUnnamed4303(core.List<api.Occupation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccupation(o[0]);
  checkOccupation(o[1]);
}

buildUnnamed4304() {
  var o = new core.List<api.Organization>();
  o.add(buildOrganization());
  o.add(buildOrganization());
  return o;
}

checkUnnamed4304(core.List<api.Organization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrganization(o[0]);
  checkOrganization(o[1]);
}

buildUnnamed4305() {
  var o = new core.List<api.PhoneNumber>();
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

checkUnnamed4305(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0]);
  checkPhoneNumber(o[1]);
}

buildUnnamed4306() {
  var o = new core.List<api.Photo>();
  o.add(buildPhoto());
  o.add(buildPhoto());
  return o;
}

checkUnnamed4306(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

buildUnnamed4307() {
  var o = new core.List<api.Relation>();
  o.add(buildRelation());
  o.add(buildRelation());
  return o;
}

checkUnnamed4307(core.List<api.Relation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelation(o[0]);
  checkRelation(o[1]);
}

buildUnnamed4308() {
  var o = new core.List<api.RelationshipInterest>();
  o.add(buildRelationshipInterest());
  o.add(buildRelationshipInterest());
  return o;
}

checkUnnamed4308(core.List<api.RelationshipInterest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelationshipInterest(o[0]);
  checkRelationshipInterest(o[1]);
}

buildUnnamed4309() {
  var o = new core.List<api.RelationshipStatus>();
  o.add(buildRelationshipStatus());
  o.add(buildRelationshipStatus());
  return o;
}

checkUnnamed4309(core.List<api.RelationshipStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelationshipStatus(o[0]);
  checkRelationshipStatus(o[1]);
}

buildUnnamed4310() {
  var o = new core.List<api.Residence>();
  o.add(buildResidence());
  o.add(buildResidence());
  return o;
}

checkUnnamed4310(core.List<api.Residence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResidence(o[0]);
  checkResidence(o[1]);
}

buildUnnamed4311() {
  var o = new core.List<api.SipAddress>();
  o.add(buildSipAddress());
  o.add(buildSipAddress());
  return o;
}

checkUnnamed4311(core.List<api.SipAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSipAddress(o[0]);
  checkSipAddress(o[1]);
}

buildUnnamed4312() {
  var o = new core.List<api.Skill>();
  o.add(buildSkill());
  o.add(buildSkill());
  return o;
}

checkUnnamed4312(core.List<api.Skill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSkill(o[0]);
  checkSkill(o[1]);
}

buildUnnamed4313() {
  var o = new core.List<api.Tagline>();
  o.add(buildTagline());
  o.add(buildTagline());
  return o;
}

checkUnnamed4313(core.List<api.Tagline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTagline(o[0]);
  checkTagline(o[1]);
}

buildUnnamed4314() {
  var o = new core.List<api.Url>();
  o.add(buildUrl());
  o.add(buildUrl());
  return o;
}

checkUnnamed4314(core.List<api.Url> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrl(o[0]);
  checkUrl(o[1]);
}

buildUnnamed4315() {
  var o = new core.List<api.UserDefined>();
  o.add(buildUserDefined());
  o.add(buildUserDefined());
  return o;
}

checkUnnamed4315(core.List<api.UserDefined> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefined(o[0]);
  checkUserDefined(o[1]);
}

core.int buildCounterPerson = 0;
buildPerson() {
  var o = new api.Person();
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    o.addresses = buildUnnamed4282();
    o.ageRange = "foo";
    o.ageRanges = buildUnnamed4283();
    o.biographies = buildUnnamed4284();
    o.birthdays = buildUnnamed4285();
    o.braggingRights = buildUnnamed4286();
    o.calendarUrls = buildUnnamed4287();
    o.clientData = buildUnnamed4288();
    o.coverPhotos = buildUnnamed4289();
    o.emailAddresses = buildUnnamed4290();
    o.etag = "foo";
    o.events = buildUnnamed4291();
    o.externalIds = buildUnnamed4292();
    o.fileAses = buildUnnamed4293();
    o.genders = buildUnnamed4294();
    o.imClients = buildUnnamed4295();
    o.interests = buildUnnamed4296();
    o.locales = buildUnnamed4297();
    o.locations = buildUnnamed4298();
    o.memberships = buildUnnamed4299();
    o.metadata = buildPersonMetadata();
    o.miscKeywords = buildUnnamed4300();
    o.names = buildUnnamed4301();
    o.nicknames = buildUnnamed4302();
    o.occupations = buildUnnamed4303();
    o.organizations = buildUnnamed4304();
    o.phoneNumbers = buildUnnamed4305();
    o.photos = buildUnnamed4306();
    o.relations = buildUnnamed4307();
    o.relationshipInterests = buildUnnamed4308();
    o.relationshipStatuses = buildUnnamed4309();
    o.residences = buildUnnamed4310();
    o.resourceName = "foo";
    o.sipAddresses = buildUnnamed4311();
    o.skills = buildUnnamed4312();
    o.taglines = buildUnnamed4313();
    o.urls = buildUnnamed4314();
    o.userDefined = buildUnnamed4315();
  }
  buildCounterPerson--;
  return o;
}

checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    checkUnnamed4282(o.addresses);
    unittest.expect(o.ageRange, unittest.equals('foo'));
    checkUnnamed4283(o.ageRanges);
    checkUnnamed4284(o.biographies);
    checkUnnamed4285(o.birthdays);
    checkUnnamed4286(o.braggingRights);
    checkUnnamed4287(o.calendarUrls);
    checkUnnamed4288(o.clientData);
    checkUnnamed4289(o.coverPhotos);
    checkUnnamed4290(o.emailAddresses);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4291(o.events);
    checkUnnamed4292(o.externalIds);
    checkUnnamed4293(o.fileAses);
    checkUnnamed4294(o.genders);
    checkUnnamed4295(o.imClients);
    checkUnnamed4296(o.interests);
    checkUnnamed4297(o.locales);
    checkUnnamed4298(o.locations);
    checkUnnamed4299(o.memberships);
    checkPersonMetadata(o.metadata);
    checkUnnamed4300(o.miscKeywords);
    checkUnnamed4301(o.names);
    checkUnnamed4302(o.nicknames);
    checkUnnamed4303(o.occupations);
    checkUnnamed4304(o.organizations);
    checkUnnamed4305(o.phoneNumbers);
    checkUnnamed4306(o.photos);
    checkUnnamed4307(o.relations);
    checkUnnamed4308(o.relationshipInterests);
    checkUnnamed4309(o.relationshipStatuses);
    checkUnnamed4310(o.residences);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed4311(o.sipAddresses);
    checkUnnamed4312(o.skills);
    checkUnnamed4313(o.taglines);
    checkUnnamed4314(o.urls);
    checkUnnamed4315(o.userDefined);
  }
  buildCounterPerson--;
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

buildUnnamed4318() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed4318(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterPersonMetadata = 0;
buildPersonMetadata() {
  var o = new api.PersonMetadata();
  buildCounterPersonMetadata++;
  if (buildCounterPersonMetadata < 3) {
    o.deleted = true;
    o.linkedPeopleResourceNames = buildUnnamed4316();
    o.objectType = "foo";
    o.previousResourceNames = buildUnnamed4317();
    o.sources = buildUnnamed4318();
  }
  buildCounterPersonMetadata--;
  return o;
}

checkPersonMetadata(api.PersonMetadata o) {
  buildCounterPersonMetadata++;
  if (buildCounterPersonMetadata < 3) {
    unittest.expect(o.deleted, unittest.isTrue);
    checkUnnamed4316(o.linkedPeopleResourceNames);
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkUnnamed4317(o.previousResourceNames);
    checkUnnamed4318(o.sources);
  }
  buildCounterPersonMetadata--;
}

core.int buildCounterPersonResponse = 0;
buildPersonResponse() {
  var o = new api.PersonResponse();
  buildCounterPersonResponse++;
  if (buildCounterPersonResponse < 3) {
    o.httpStatusCode = 42;
    o.person = buildPerson();
    o.requestedResourceName = "foo";
    o.status = buildStatus();
  }
  buildCounterPersonResponse--;
  return o;
}

checkPersonResponse(api.PersonResponse o) {
  buildCounterPersonResponse++;
  if (buildCounterPersonResponse < 3) {
    unittest.expect(o.httpStatusCode, unittest.equals(42));
    checkPerson(o.person);
    unittest.expect(o.requestedResourceName, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterPersonResponse--;
}

core.int buildCounterPhoneNumber = 0;
buildPhoneNumber() {
  var o = new api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.canonicalForm = "foo";
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterPhoneNumber--;
  return o;
}

checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(o.canonicalForm, unittest.equals('foo'));
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPhoneNumber--;
}

core.int buildCounterPhoto = 0;
buildPhoto() {
  var o = new api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.default_ = true;
    o.metadata = buildFieldMetadata();
    o.url = "foo";
  }
  buildCounterPhoto--;
  return o;
}

checkPhoto(api.Photo o) {
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    unittest.expect(o.default_, unittest.isTrue);
    checkFieldMetadata(o.metadata);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPhoto--;
}

buildUnnamed4319() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProfileMetadata = 0;
buildProfileMetadata() {
  var o = new api.ProfileMetadata();
  buildCounterProfileMetadata++;
  if (buildCounterProfileMetadata < 3) {
    o.objectType = "foo";
    o.userTypes = buildUnnamed4319();
  }
  buildCounterProfileMetadata--;
  return o;
}

checkProfileMetadata(api.ProfileMetadata o) {
  buildCounterProfileMetadata++;
  if (buildCounterProfileMetadata < 3) {
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkUnnamed4319(o.userTypes);
  }
  buildCounterProfileMetadata--;
}

core.int buildCounterRelation = 0;
buildRelation() {
  var o = new api.Relation();
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.person = "foo";
    o.type = "foo";
  }
  buildCounterRelation--;
  return o;
}

checkRelation(api.Relation o) {
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.person, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRelation--;
}

core.int buildCounterRelationshipInterest = 0;
buildRelationshipInterest() {
  var o = new api.RelationshipInterest();
  buildCounterRelationshipInterest++;
  if (buildCounterRelationshipInterest < 3) {
    o.formattedValue = "foo";
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterRelationshipInterest--;
  return o;
}

checkRelationshipInterest(api.RelationshipInterest o) {
  buildCounterRelationshipInterest++;
  if (buildCounterRelationshipInterest < 3) {
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRelationshipInterest--;
}

core.int buildCounterRelationshipStatus = 0;
buildRelationshipStatus() {
  var o = new api.RelationshipStatus();
  buildCounterRelationshipStatus++;
  if (buildCounterRelationshipStatus < 3) {
    o.formattedValue = "foo";
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterRelationshipStatus--;
  return o;
}

checkRelationshipStatus(api.RelationshipStatus o) {
  buildCounterRelationshipStatus++;
  if (buildCounterRelationshipStatus < 3) {
    unittest.expect(o.formattedValue, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRelationshipStatus--;
}

core.int buildCounterResidence = 0;
buildResidence() {
  var o = new api.Residence();
  buildCounterResidence++;
  if (buildCounterResidence < 3) {
    o.current = true;
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterResidence--;
  return o;
}

checkResidence(api.Residence o) {
  buildCounterResidence++;
  if (buildCounterResidence < 3) {
    unittest.expect(o.current, unittest.isTrue);
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterResidence--;
}

buildUnnamed4320() {
  var o = new core.List<api.Person>();
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

checkUnnamed4320(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterSearchDirectoryPeopleResponse = 0;
buildSearchDirectoryPeopleResponse() {
  var o = new api.SearchDirectoryPeopleResponse();
  buildCounterSearchDirectoryPeopleResponse++;
  if (buildCounterSearchDirectoryPeopleResponse < 3) {
    o.nextPageToken = "foo";
    o.people = buildUnnamed4320();
    o.totalSize = 42;
  }
  buildCounterSearchDirectoryPeopleResponse--;
  return o;
}

checkSearchDirectoryPeopleResponse(api.SearchDirectoryPeopleResponse o) {
  buildCounterSearchDirectoryPeopleResponse++;
  if (buildCounterSearchDirectoryPeopleResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4320(o.people);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterSearchDirectoryPeopleResponse--;
}

core.int buildCounterSipAddress = 0;
buildSipAddress() {
  var o = new api.SipAddress();
  buildCounterSipAddress++;
  if (buildCounterSipAddress < 3) {
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterSipAddress--;
  return o;
}

checkSipAddress(api.SipAddress o) {
  buildCounterSipAddress++;
  if (buildCounterSipAddress < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSipAddress--;
}

core.int buildCounterSkill = 0;
buildSkill() {
  var o = new api.Skill();
  buildCounterSkill++;
  if (buildCounterSkill < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterSkill--;
  return o;
}

checkSkill(api.Skill o) {
  buildCounterSkill++;
  if (buildCounterSkill < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSkill--;
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.profileMetadata = buildProfileMetadata();
    o.type = "foo";
    o.updateTime = "foo";
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkProfileMetadata(o.profileMetadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterSource--;
}

buildUnnamed4321() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4321(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed4322() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4321());
  o.add(buildUnnamed4321());
  return o;
}

checkUnnamed4322(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4321(o[0]);
  checkUnnamed4321(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4322();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4322(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTagline = 0;
buildTagline() {
  var o = new api.Tagline();
  buildCounterTagline++;
  if (buildCounterTagline < 3) {
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterTagline--;
  return o;
}

checkTagline(api.Tagline o) {
  buildCounterTagline++;
  if (buildCounterTagline < 3) {
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTagline--;
}

core.int buildCounterUpdateContactGroupRequest = 0;
buildUpdateContactGroupRequest() {
  var o = new api.UpdateContactGroupRequest();
  buildCounterUpdateContactGroupRequest++;
  if (buildCounterUpdateContactGroupRequest < 3) {
    o.contactGroup = buildContactGroup();
  }
  buildCounterUpdateContactGroupRequest--;
  return o;
}

checkUpdateContactGroupRequest(api.UpdateContactGroupRequest o) {
  buildCounterUpdateContactGroupRequest++;
  if (buildCounterUpdateContactGroupRequest < 3) {
    checkContactGroup(o.contactGroup);
  }
  buildCounterUpdateContactGroupRequest--;
}

buildUnnamed4323() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateContactPhotoRequest = 0;
buildUpdateContactPhotoRequest() {
  var o = new api.UpdateContactPhotoRequest();
  buildCounterUpdateContactPhotoRequest++;
  if (buildCounterUpdateContactPhotoRequest < 3) {
    o.personFields = "foo";
    o.photoBytes = "foo";
    o.sources = buildUnnamed4323();
  }
  buildCounterUpdateContactPhotoRequest--;
  return o;
}

checkUpdateContactPhotoRequest(api.UpdateContactPhotoRequest o) {
  buildCounterUpdateContactPhotoRequest++;
  if (buildCounterUpdateContactPhotoRequest < 3) {
    unittest.expect(o.personFields, unittest.equals('foo'));
    unittest.expect(o.photoBytes, unittest.equals('foo'));
    checkUnnamed4323(o.sources);
  }
  buildCounterUpdateContactPhotoRequest--;
}

core.int buildCounterUpdateContactPhotoResponse = 0;
buildUpdateContactPhotoResponse() {
  var o = new api.UpdateContactPhotoResponse();
  buildCounterUpdateContactPhotoResponse++;
  if (buildCounterUpdateContactPhotoResponse < 3) {
    o.person = buildPerson();
  }
  buildCounterUpdateContactPhotoResponse--;
  return o;
}

checkUpdateContactPhotoResponse(api.UpdateContactPhotoResponse o) {
  buildCounterUpdateContactPhotoResponse++;
  if (buildCounterUpdateContactPhotoResponse < 3) {
    checkPerson(o.person);
  }
  buildCounterUpdateContactPhotoResponse--;
}

core.int buildCounterUrl = 0;
buildUrl() {
  var o = new api.Url();
  buildCounterUrl++;
  if (buildCounterUrl < 3) {
    o.formattedType = "foo";
    o.metadata = buildFieldMetadata();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUrl--;
  return o;
}

checkUrl(api.Url o) {
  buildCounterUrl++;
  if (buildCounterUrl < 3) {
    unittest.expect(o.formattedType, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUrl--;
}

core.int buildCounterUserDefined = 0;
buildUserDefined() {
  var o = new api.UserDefined();
  buildCounterUserDefined++;
  if (buildCounterUserDefined < 3) {
    o.key = "foo";
    o.metadata = buildFieldMetadata();
    o.value = "foo";
  }
  buildCounterUserDefined--;
  return o;
}

checkUserDefined(api.UserDefined o) {
  buildCounterUserDefined++;
  if (buildCounterUserDefined < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkFieldMetadata(o.metadata);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserDefined--;
}

buildUnnamed4324() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4324(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4325() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4325(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4326() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4326(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4327() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4328() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4329() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4330() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4330(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4331() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4331(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4332() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4332(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4333() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4333(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4334() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4334(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4335() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4335(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Address", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddress();
      var od = new api.Address.fromJson(o.toJson());
      checkAddress(od);
    });
  });

  unittest.group("obj-schema-AgeRangeType", () {
    unittest.test("to-json--from-json", () {
      var o = buildAgeRangeType();
      var od = new api.AgeRangeType.fromJson(o.toJson());
      checkAgeRangeType(od);
    });
  });

  unittest.group("obj-schema-BatchGetContactGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetContactGroupsResponse();
      var od = new api.BatchGetContactGroupsResponse.fromJson(o.toJson());
      checkBatchGetContactGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-Biography", () {
    unittest.test("to-json--from-json", () {
      var o = buildBiography();
      var od = new api.Biography.fromJson(o.toJson());
      checkBiography(od);
    });
  });

  unittest.group("obj-schema-Birthday", () {
    unittest.test("to-json--from-json", () {
      var o = buildBirthday();
      var od = new api.Birthday.fromJson(o.toJson());
      checkBirthday(od);
    });
  });

  unittest.group("obj-schema-BraggingRights", () {
    unittest.test("to-json--from-json", () {
      var o = buildBraggingRights();
      var od = new api.BraggingRights.fromJson(o.toJson());
      checkBraggingRights(od);
    });
  });

  unittest.group("obj-schema-CalendarUrl", () {
    unittest.test("to-json--from-json", () {
      var o = buildCalendarUrl();
      var od = new api.CalendarUrl.fromJson(o.toJson());
      checkCalendarUrl(od);
    });
  });

  unittest.group("obj-schema-ClientData", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientData();
      var od = new api.ClientData.fromJson(o.toJson());
      checkClientData(od);
    });
  });

  unittest.group("obj-schema-ContactGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactGroup();
      var od = new api.ContactGroup.fromJson(o.toJson());
      checkContactGroup(od);
    });
  });

  unittest.group("obj-schema-ContactGroupMembership", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactGroupMembership();
      var od = new api.ContactGroupMembership.fromJson(o.toJson());
      checkContactGroupMembership(od);
    });
  });

  unittest.group("obj-schema-ContactGroupMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactGroupMetadata();
      var od = new api.ContactGroupMetadata.fromJson(o.toJson());
      checkContactGroupMetadata(od);
    });
  });

  unittest.group("obj-schema-ContactGroupResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactGroupResponse();
      var od = new api.ContactGroupResponse.fromJson(o.toJson());
      checkContactGroupResponse(od);
    });
  });

  unittest.group("obj-schema-CopyOtherContactToMyContactsGroupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCopyOtherContactToMyContactsGroupRequest();
      var od =
          new api.CopyOtherContactToMyContactsGroupRequest.fromJson(o.toJson());
      checkCopyOtherContactToMyContactsGroupRequest(od);
    });
  });

  unittest.group("obj-schema-CoverPhoto", () {
    unittest.test("to-json--from-json", () {
      var o = buildCoverPhoto();
      var od = new api.CoverPhoto.fromJson(o.toJson());
      checkCoverPhoto(od);
    });
  });

  unittest.group("obj-schema-CreateContactGroupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateContactGroupRequest();
      var od = new api.CreateContactGroupRequest.fromJson(o.toJson());
      checkCreateContactGroupRequest(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DeleteContactPhotoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteContactPhotoResponse();
      var od = new api.DeleteContactPhotoResponse.fromJson(o.toJson());
      checkDeleteContactPhotoResponse(od);
    });
  });

  unittest.group("obj-schema-DomainMembership", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainMembership();
      var od = new api.DomainMembership.fromJson(o.toJson());
      checkDomainMembership(od);
    });
  });

  unittest.group("obj-schema-EmailAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmailAddress();
      var od = new api.EmailAddress.fromJson(o.toJson());
      checkEmailAddress(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Event", () {
    unittest.test("to-json--from-json", () {
      var o = buildEvent();
      var od = new api.Event.fromJson(o.toJson());
      checkEvent(od);
    });
  });

  unittest.group("obj-schema-ExternalId", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalId();
      var od = new api.ExternalId.fromJson(o.toJson());
      checkExternalId(od);
    });
  });

  unittest.group("obj-schema-FieldMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldMetadata();
      var od = new api.FieldMetadata.fromJson(o.toJson());
      checkFieldMetadata(od);
    });
  });

  unittest.group("obj-schema-FileAs", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileAs();
      var od = new api.FileAs.fromJson(o.toJson());
      checkFileAs(od);
    });
  });

  unittest.group("obj-schema-Gender", () {
    unittest.test("to-json--from-json", () {
      var o = buildGender();
      var od = new api.Gender.fromJson(o.toJson());
      checkGender(od);
    });
  });

  unittest.group("obj-schema-GetPeopleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPeopleResponse();
      var od = new api.GetPeopleResponse.fromJson(o.toJson());
      checkGetPeopleResponse(od);
    });
  });

  unittest.group("obj-schema-ImClient", () {
    unittest.test("to-json--from-json", () {
      var o = buildImClient();
      var od = new api.ImClient.fromJson(o.toJson());
      checkImClient(od);
    });
  });

  unittest.group("obj-schema-Interest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInterest();
      var od = new api.Interest.fromJson(o.toJson());
      checkInterest(od);
    });
  });

  unittest.group("obj-schema-ListConnectionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListConnectionsResponse();
      var od = new api.ListConnectionsResponse.fromJson(o.toJson());
      checkListConnectionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListContactGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListContactGroupsResponse();
      var od = new api.ListContactGroupsResponse.fromJson(o.toJson());
      checkListContactGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDirectoryPeopleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDirectoryPeopleResponse();
      var od = new api.ListDirectoryPeopleResponse.fromJson(o.toJson());
      checkListDirectoryPeopleResponse(od);
    });
  });

  unittest.group("obj-schema-ListOtherContactsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOtherContactsResponse();
      var od = new api.ListOtherContactsResponse.fromJson(o.toJson());
      checkListOtherContactsResponse(od);
    });
  });

  unittest.group("obj-schema-Locale", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocale();
      var od = new api.Locale.fromJson(o.toJson());
      checkLocale(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Membership", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembership();
      var od = new api.Membership.fromJson(o.toJson());
      checkMembership(od);
    });
  });

  unittest.group("obj-schema-MiscKeyword", () {
    unittest.test("to-json--from-json", () {
      var o = buildMiscKeyword();
      var od = new api.MiscKeyword.fromJson(o.toJson());
      checkMiscKeyword(od);
    });
  });

  unittest.group("obj-schema-ModifyContactGroupMembersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyContactGroupMembersRequest();
      var od = new api.ModifyContactGroupMembersRequest.fromJson(o.toJson());
      checkModifyContactGroupMembersRequest(od);
    });
  });

  unittest.group("obj-schema-ModifyContactGroupMembersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyContactGroupMembersResponse();
      var od = new api.ModifyContactGroupMembersResponse.fromJson(o.toJson());
      checkModifyContactGroupMembersResponse(od);
    });
  });

  unittest.group("obj-schema-Name", () {
    unittest.test("to-json--from-json", () {
      var o = buildName();
      var od = new api.Name.fromJson(o.toJson());
      checkName(od);
    });
  });

  unittest.group("obj-schema-Nickname", () {
    unittest.test("to-json--from-json", () {
      var o = buildNickname();
      var od = new api.Nickname.fromJson(o.toJson());
      checkNickname(od);
    });
  });

  unittest.group("obj-schema-Occupation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOccupation();
      var od = new api.Occupation.fromJson(o.toJson());
      checkOccupation(od);
    });
  });

  unittest.group("obj-schema-Organization", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrganization();
      var od = new api.Organization.fromJson(o.toJson());
      checkOrganization(od);
    });
  });

  unittest.group("obj-schema-Person", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerson();
      var od = new api.Person.fromJson(o.toJson());
      checkPerson(od);
    });
  });

  unittest.group("obj-schema-PersonMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonMetadata();
      var od = new api.PersonMetadata.fromJson(o.toJson());
      checkPersonMetadata(od);
    });
  });

  unittest.group("obj-schema-PersonResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonResponse();
      var od = new api.PersonResponse.fromJson(o.toJson());
      checkPersonResponse(od);
    });
  });

  unittest.group("obj-schema-PhoneNumber", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoneNumber();
      var od = new api.PhoneNumber.fromJson(o.toJson());
      checkPhoneNumber(od);
    });
  });

  unittest.group("obj-schema-Photo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoto();
      var od = new api.Photo.fromJson(o.toJson());
      checkPhoto(od);
    });
  });

  unittest.group("obj-schema-ProfileMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildProfileMetadata();
      var od = new api.ProfileMetadata.fromJson(o.toJson());
      checkProfileMetadata(od);
    });
  });

  unittest.group("obj-schema-Relation", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelation();
      var od = new api.Relation.fromJson(o.toJson());
      checkRelation(od);
    });
  });

  unittest.group("obj-schema-RelationshipInterest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelationshipInterest();
      var od = new api.RelationshipInterest.fromJson(o.toJson());
      checkRelationshipInterest(od);
    });
  });

  unittest.group("obj-schema-RelationshipStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelationshipStatus();
      var od = new api.RelationshipStatus.fromJson(o.toJson());
      checkRelationshipStatus(od);
    });
  });

  unittest.group("obj-schema-Residence", () {
    unittest.test("to-json--from-json", () {
      var o = buildResidence();
      var od = new api.Residence.fromJson(o.toJson());
      checkResidence(od);
    });
  });

  unittest.group("obj-schema-SearchDirectoryPeopleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchDirectoryPeopleResponse();
      var od = new api.SearchDirectoryPeopleResponse.fromJson(o.toJson());
      checkSearchDirectoryPeopleResponse(od);
    });
  });

  unittest.group("obj-schema-SipAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildSipAddress();
      var od = new api.SipAddress.fromJson(o.toJson());
      checkSipAddress(od);
    });
  });

  unittest.group("obj-schema-Skill", () {
    unittest.test("to-json--from-json", () {
      var o = buildSkill();
      var od = new api.Skill.fromJson(o.toJson());
      checkSkill(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Tagline", () {
    unittest.test("to-json--from-json", () {
      var o = buildTagline();
      var od = new api.Tagline.fromJson(o.toJson());
      checkTagline(od);
    });
  });

  unittest.group("obj-schema-UpdateContactGroupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateContactGroupRequest();
      var od = new api.UpdateContactGroupRequest.fromJson(o.toJson());
      checkUpdateContactGroupRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateContactPhotoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateContactPhotoRequest();
      var od = new api.UpdateContactPhotoRequest.fromJson(o.toJson());
      checkUpdateContactPhotoRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateContactPhotoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateContactPhotoResponse();
      var od = new api.UpdateContactPhotoResponse.fromJson(o.toJson());
      checkUpdateContactPhotoResponse(od);
    });
  });

  unittest.group("obj-schema-Url", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrl();
      var od = new api.Url.fromJson(o.toJson());
      checkUrl(od);
    });
  });

  unittest.group("obj-schema-UserDefined", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserDefined();
      var od = new api.UserDefined.fromJson(o.toJson());
      checkUserDefined(od);
    });
  });

  unittest.group("resource-ContactGroupsResourceApi", () {
    unittest.test("method--batchGet", () {
      var mock = new HttpServerMock();
      api.ContactGroupsResourceApi res = new api.PeopleApi(mock).contactGroups;
      var arg_resourceNames = buildUnnamed4324();
      var arg_maxMembers = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/contactGroups:batchGet"));
        pathOffset += 25;

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
            queryMap["resourceNames"], unittest.equals(arg_resourceNames));
        unittest.expect(core.int.parse(queryMap["maxMembers"].first),
            unittest.equals(arg_maxMembers));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchGetContactGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(
              resourceNames: arg_resourceNames,
              maxMembers: arg_maxMembers,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetContactGroupsResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ContactGroupsResourceApi res = new api.PeopleApi(mock).contactGroups;
      var arg_request = buildCreateContactGroupRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateContactGroupRequest.fromJson(json);
        checkCreateContactGroupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/contactGroups"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildContactGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContactGroup(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ContactGroupsResourceApi res = new api.PeopleApi(mock).contactGroups;
      var arg_resourceName = "foo";
      var arg_deleteContacts = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(queryMap["deleteContacts"].first,
            unittest.equals("$arg_deleteContacts"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_resourceName,
              deleteContacts: arg_deleteContacts, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ContactGroupsResourceApi res = new api.PeopleApi(mock).contactGroups;
      var arg_resourceName = "foo";
      var arg_maxMembers = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(core.int.parse(queryMap["maxMembers"].first),
            unittest.equals(arg_maxMembers));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildContactGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_resourceName,
              maxMembers: arg_maxMembers, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContactGroup(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ContactGroupsResourceApi res = new api.PeopleApi(mock).contactGroups;
      var arg_syncToken = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/contactGroups"));
        pathOffset += 16;

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
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListContactGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              syncToken: arg_syncToken,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListContactGroupsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ContactGroupsResourceApi res = new api.PeopleApi(mock).contactGroups;
      var arg_request = buildUpdateContactGroupRequest();
      var arg_resourceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateContactGroupRequest.fromJson(json);
        checkUpdateContactGroupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildContactGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContactGroup(response);
      })));
    });
  });

  unittest.group("resource-ContactGroupsMembersResourceApi", () {
    unittest.test("method--modify", () {
      var mock = new HttpServerMock();
      api.ContactGroupsMembersResourceApi res =
          new api.PeopleApi(mock).contactGroups.members;
      var arg_request = buildModifyContactGroupMembersRequest();
      var arg_resourceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyContactGroupMembersRequest.fromJson(json);
        checkModifyContactGroupMembersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp =
            convert.json.encode(buildModifyContactGroupMembersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modify(arg_request, arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModifyContactGroupMembersResponse(response);
      })));
    });
  });

  unittest.group("resource-OtherContactsResourceApi", () {
    unittest.test("method--copyOtherContactToMyContactsGroup", () {
      var mock = new HttpServerMock();
      api.OtherContactsResourceApi res = new api.PeopleApi(mock).otherContacts;
      var arg_request = buildCopyOtherContactToMyContactsGroupRequest();
      var arg_resourceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.CopyOtherContactToMyContactsGroupRequest.fromJson(json);
        checkCopyOtherContactToMyContactsGroupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildPerson());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .copyOtherContactToMyContactsGroup(arg_request, arg_resourceName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OtherContactsResourceApi res = new api.PeopleApi(mock).otherContacts;
      var arg_syncToken = "foo";
      var arg_requestSyncToken = true;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_readMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/otherContacts"));
        pathOffset += 16;

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
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["requestSyncToken"].first,
            unittest.equals("$arg_requestSyncToken"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOtherContactsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              syncToken: arg_syncToken,
              requestSyncToken: arg_requestSyncToken,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              readMask: arg_readMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOtherContactsResponse(response);
      })));
    });
  });

  unittest.group("resource-PeopleResourceApi", () {
    unittest.test("method--createContact", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_request = buildPerson();
      var arg_sources = buildUnnamed4325();
      var arg_personFields = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Person.fromJson(json);
        checkPerson(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("v1/people:createContact"));
        pathOffset += 23;

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
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerson());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createContact(arg_request,
              sources: arg_sources,
              personFields: arg_personFields,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response);
      })));
    });

    unittest.test("method--deleteContact", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_resourceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContact(arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--deleteContactPhoto", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_resourceName = "foo";
      var arg_personFields = "foo";
      var arg_sources = buildUnnamed4326();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeleteContactPhotoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContactPhoto(arg_resourceName,
              personFields: arg_personFields,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteContactPhotoResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_resourceName = "foo";
      var arg_personFields = "foo";
      var arg_requestMask_includeField = "foo";
      var arg_sources = buildUnnamed4327();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["requestMask.includeField"].first,
            unittest.equals(arg_requestMask_includeField));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerson());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_resourceName,
              personFields: arg_personFields,
              requestMask_includeField: arg_requestMask_includeField,
              sources: arg_sources,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response);
      })));
    });

    unittest.test("method--getBatchGet", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_sources = buildUnnamed4328();
      var arg_requestMask_includeField = "foo";
      var arg_personFields = "foo";
      var arg_resourceNames = buildUnnamed4329();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/people:batchGet"));
        pathOffset += 18;

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
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["requestMask.includeField"].first,
            unittest.equals(arg_requestMask_includeField));
        unittest.expect(
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(
            queryMap["resourceNames"], unittest.equals(arg_resourceNames));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetPeopleResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getBatchGet(
              sources: arg_sources,
              requestMask_includeField: arg_requestMask_includeField,
              personFields: arg_personFields,
              resourceNames: arg_resourceNames,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetPeopleResponse(response);
      })));
    });

    unittest.test("method--listDirectoryPeople", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_sources = buildUnnamed4330();
      var arg_syncToken = "foo";
      var arg_readMask = "foo";
      var arg_mergeSources = buildUnnamed4331();
      var arg_pageToken = "foo";
      var arg_requestSyncToken = true;
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("v1/people:listDirectoryPeople"));
        pathOffset += 29;

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
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(
            queryMap["mergeSources"], unittest.equals(arg_mergeSources));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["requestSyncToken"].first,
            unittest.equals("$arg_requestSyncToken"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDirectoryPeopleResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listDirectoryPeople(
              sources: arg_sources,
              syncToken: arg_syncToken,
              readMask: arg_readMask,
              mergeSources: arg_mergeSources,
              pageToken: arg_pageToken,
              requestSyncToken: arg_requestSyncToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDirectoryPeopleResponse(response);
      })));
    });

    unittest.test("method--searchDirectoryPeople", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_query = "foo";
      var arg_pageSize = 42;
      var arg_sources = buildUnnamed4332();
      var arg_readMask = "foo";
      var arg_mergeSources = buildUnnamed4333();
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("v1/people:searchDirectoryPeople"));
        pathOffset += 31;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(
            queryMap["readMask"].first, unittest.equals(arg_readMask));
        unittest.expect(
            queryMap["mergeSources"], unittest.equals(arg_mergeSources));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchDirectoryPeopleResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchDirectoryPeople(
              query: arg_query,
              pageSize: arg_pageSize,
              sources: arg_sources,
              readMask: arg_readMask,
              mergeSources: arg_mergeSources,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchDirectoryPeopleResponse(response);
      })));
    });

    unittest.test("method--updateContact", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_request = buildPerson();
      var arg_resourceName = "foo";
      var arg_personFields = "foo";
      var arg_sources = buildUnnamed4334();
      var arg_updatePersonFields = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Person.fromJson(json);
        checkPerson(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(queryMap["updatePersonFields"].first,
            unittest.equals(arg_updatePersonFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerson());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateContact(arg_request, arg_resourceName,
              personFields: arg_personFields,
              sources: arg_sources,
              updatePersonFields: arg_updatePersonFields,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response);
      })));
    });

    unittest.test("method--updateContactPhoto", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PeopleApi(mock).people;
      var arg_request = buildUpdateContactPhotoRequest();
      var arg_resourceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateContactPhotoRequest.fromJson(json);
        checkUpdateContactPhotoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildUpdateContactPhotoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateContactPhoto(arg_request, arg_resourceName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUpdateContactPhotoResponse(response);
      })));
    });
  });

  unittest.group("resource-PeopleConnectionsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PeopleConnectionsResourceApi res =
          new api.PeopleApi(mock).people.connections;
      var arg_resourceName = "foo";
      var arg_pageToken = "foo";
      var arg_sortOrder = "foo";
      var arg_requestMask_includeField = "foo";
      var arg_requestSyncToken = true;
      var arg_syncToken = "foo";
      var arg_sources = buildUnnamed4335();
      var arg_pageSize = 42;
      var arg_personFields = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["requestMask.includeField"].first,
            unittest.equals(arg_requestMask_includeField));
        unittest.expect(queryMap["requestSyncToken"].first,
            unittest.equals("$arg_requestSyncToken"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["sources"], unittest.equals(arg_sources));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["personFields"].first, unittest.equals(arg_personFields));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListConnectionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_resourceName,
              pageToken: arg_pageToken,
              sortOrder: arg_sortOrder,
              requestMask_includeField: arg_requestMask_includeField,
              requestSyncToken: arg_requestSyncToken,
              syncToken: arg_syncToken,
              sources: arg_sources,
              pageSize: arg_pageSize,
              personFields: arg_personFields,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConnectionsResponse(response);
      })));
    });
  });
}
