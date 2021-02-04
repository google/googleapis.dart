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
import 'package:googleapis/calendar/v3.dart' as api;

import '../test_shared.dart';

core.List<api.AclRule> buildUnnamed4350() {
  var o = <api.AclRule>[];
  o.add(buildAclRule());
  o.add(buildAclRule());
  return o;
}

void checkUnnamed4350(core.List<api.AclRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAclRule(o[0] as api.AclRule);
  checkAclRule(o[1] as api.AclRule);
}

core.int buildCounterAcl = 0;
api.Acl buildAcl() {
  var o = api.Acl();
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4350();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
  }
  buildCounterAcl--;
  return o;
}

void checkAcl(api.Acl o) {
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4350(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
  }
  buildCounterAcl--;
}

core.int buildCounterAclRuleScope = 0;
api.AclRuleScope buildAclRuleScope() {
  var o = api.AclRuleScope();
  buildCounterAclRuleScope++;
  if (buildCounterAclRuleScope < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterAclRuleScope--;
  return o;
}

void checkAclRuleScope(api.AclRuleScope o) {
  buildCounterAclRuleScope++;
  if (buildCounterAclRuleScope < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterAclRuleScope--;
}

core.int buildCounterAclRule = 0;
api.AclRule buildAclRule() {
  var o = api.AclRule();
  buildCounterAclRule++;
  if (buildCounterAclRule < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.role = 'foo';
    o.scope = buildAclRuleScope();
  }
  buildCounterAclRule--;
  return o;
}

void checkAclRule(api.AclRule o) {
  buildCounterAclRule++;
  if (buildCounterAclRule < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    checkAclRuleScope(o.scope as api.AclRuleScope);
  }
  buildCounterAclRule--;
}

core.int buildCounterCalendar = 0;
api.Calendar buildCalendar() {
  var o = api.Calendar();
  buildCounterCalendar++;
  if (buildCounterCalendar < 3) {
    o.conferenceProperties = buildConferenceProperties();
    o.description = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.location = 'foo';
    o.summary = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterCalendar--;
  return o;
}

void checkCalendar(api.Calendar o) {
  buildCounterCalendar++;
  if (buildCounterCalendar < 3) {
    checkConferenceProperties(
        o.conferenceProperties as api.ConferenceProperties);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterCalendar--;
}

core.List<api.CalendarListEntry> buildUnnamed4351() {
  var o = <api.CalendarListEntry>[];
  o.add(buildCalendarListEntry());
  o.add(buildCalendarListEntry());
  return o;
}

void checkUnnamed4351(core.List<api.CalendarListEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarListEntry(o[0] as api.CalendarListEntry);
  checkCalendarListEntry(o[1] as api.CalendarListEntry);
}

core.int buildCounterCalendarList = 0;
api.CalendarList buildCalendarList() {
  var o = api.CalendarList();
  buildCounterCalendarList++;
  if (buildCounterCalendarList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4351();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
  }
  buildCounterCalendarList--;
  return o;
}

void checkCalendarList(api.CalendarList o) {
  buildCounterCalendarList++;
  if (buildCounterCalendarList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4351(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
  }
  buildCounterCalendarList--;
}

core.List<api.EventReminder> buildUnnamed4352() {
  var o = <api.EventReminder>[];
  o.add(buildEventReminder());
  o.add(buildEventReminder());
  return o;
}

void checkUnnamed4352(core.List<api.EventReminder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventReminder(o[0] as api.EventReminder);
  checkEventReminder(o[1] as api.EventReminder);
}

core.List<api.CalendarNotification> buildUnnamed4353() {
  var o = <api.CalendarNotification>[];
  o.add(buildCalendarNotification());
  o.add(buildCalendarNotification());
  return o;
}

void checkUnnamed4353(core.List<api.CalendarNotification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarNotification(o[0] as api.CalendarNotification);
  checkCalendarNotification(o[1] as api.CalendarNotification);
}

core.int buildCounterCalendarListEntryNotificationSettings = 0;
api.CalendarListEntryNotificationSettings
    buildCalendarListEntryNotificationSettings() {
  var o = api.CalendarListEntryNotificationSettings();
  buildCounterCalendarListEntryNotificationSettings++;
  if (buildCounterCalendarListEntryNotificationSettings < 3) {
    o.notifications = buildUnnamed4353();
  }
  buildCounterCalendarListEntryNotificationSettings--;
  return o;
}

void checkCalendarListEntryNotificationSettings(
    api.CalendarListEntryNotificationSettings o) {
  buildCounterCalendarListEntryNotificationSettings++;
  if (buildCounterCalendarListEntryNotificationSettings < 3) {
    checkUnnamed4353(o.notifications);
  }
  buildCounterCalendarListEntryNotificationSettings--;
}

core.int buildCounterCalendarListEntry = 0;
api.CalendarListEntry buildCalendarListEntry() {
  var o = api.CalendarListEntry();
  buildCounterCalendarListEntry++;
  if (buildCounterCalendarListEntry < 3) {
    o.accessRole = 'foo';
    o.backgroundColor = 'foo';
    o.colorId = 'foo';
    o.conferenceProperties = buildConferenceProperties();
    o.defaultReminders = buildUnnamed4352();
    o.deleted = true;
    o.description = 'foo';
    o.etag = 'foo';
    o.foregroundColor = 'foo';
    o.hidden = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.location = 'foo';
    o.notificationSettings = buildCalendarListEntryNotificationSettings();
    o.primary = true;
    o.selected = true;
    o.summary = 'foo';
    o.summaryOverride = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterCalendarListEntry--;
  return o;
}

void checkCalendarListEntry(api.CalendarListEntry o) {
  buildCounterCalendarListEntry++;
  if (buildCounterCalendarListEntry < 3) {
    unittest.expect(o.accessRole, unittest.equals('foo'));
    unittest.expect(o.backgroundColor, unittest.equals('foo'));
    unittest.expect(o.colorId, unittest.equals('foo'));
    checkConferenceProperties(
        o.conferenceProperties as api.ConferenceProperties);
    checkUnnamed4352(o.defaultReminders);
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.foregroundColor, unittest.equals('foo'));
    unittest.expect(o.hidden, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkCalendarListEntryNotificationSettings(
        o.notificationSettings as api.CalendarListEntryNotificationSettings);
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.selected, unittest.isTrue);
    unittest.expect(o.summary, unittest.equals('foo'));
    unittest.expect(o.summaryOverride, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterCalendarListEntry--;
}

core.int buildCounterCalendarNotification = 0;
api.CalendarNotification buildCalendarNotification() {
  var o = api.CalendarNotification();
  buildCounterCalendarNotification++;
  if (buildCounterCalendarNotification < 3) {
    o.method = 'foo';
    o.type = 'foo';
  }
  buildCounterCalendarNotification--;
  return o;
}

void checkCalendarNotification(api.CalendarNotification o) {
  buildCounterCalendarNotification++;
  if (buildCounterCalendarNotification < 3) {
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCalendarNotification--;
}

core.Map<core.String, core.String> buildUnnamed4354() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4354(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed4354();
    o.payload = true;
    o.resourceId = 'foo';
    o.resourceUri = 'foo';
    o.token = 'foo';
    o.type = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4354(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterColorDefinition = 0;
api.ColorDefinition buildColorDefinition() {
  var o = api.ColorDefinition();
  buildCounterColorDefinition++;
  if (buildCounterColorDefinition < 3) {
    o.background = 'foo';
    o.foreground = 'foo';
  }
  buildCounterColorDefinition--;
  return o;
}

void checkColorDefinition(api.ColorDefinition o) {
  buildCounterColorDefinition++;
  if (buildCounterColorDefinition < 3) {
    unittest.expect(o.background, unittest.equals('foo'));
    unittest.expect(o.foreground, unittest.equals('foo'));
  }
  buildCounterColorDefinition--;
}

core.Map<core.String, api.ColorDefinition> buildUnnamed4355() {
  var o = <core.String, api.ColorDefinition>{};
  o['x'] = buildColorDefinition();
  o['y'] = buildColorDefinition();
  return o;
}

void checkUnnamed4355(core.Map<core.String, api.ColorDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColorDefinition(o['x'] as api.ColorDefinition);
  checkColorDefinition(o['y'] as api.ColorDefinition);
}

core.Map<core.String, api.ColorDefinition> buildUnnamed4356() {
  var o = <core.String, api.ColorDefinition>{};
  o['x'] = buildColorDefinition();
  o['y'] = buildColorDefinition();
  return o;
}

void checkUnnamed4356(core.Map<core.String, api.ColorDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColorDefinition(o['x'] as api.ColorDefinition);
  checkColorDefinition(o['y'] as api.ColorDefinition);
}

core.int buildCounterColors = 0;
api.Colors buildColors() {
  var o = api.Colors();
  buildCounterColors++;
  if (buildCounterColors < 3) {
    o.calendar = buildUnnamed4355();
    o.event = buildUnnamed4356();
    o.kind = 'foo';
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterColors--;
  return o;
}

void checkColors(api.Colors o) {
  buildCounterColors++;
  if (buildCounterColors < 3) {
    checkUnnamed4355(o.calendar);
    checkUnnamed4356(o.event);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterColors--;
}

core.List<api.EntryPoint> buildUnnamed4357() {
  var o = <api.EntryPoint>[];
  o.add(buildEntryPoint());
  o.add(buildEntryPoint());
  return o;
}

void checkUnnamed4357(core.List<api.EntryPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntryPoint(o[0] as api.EntryPoint);
  checkEntryPoint(o[1] as api.EntryPoint);
}

core.int buildCounterConferenceData = 0;
api.ConferenceData buildConferenceData() {
  var o = api.ConferenceData();
  buildCounterConferenceData++;
  if (buildCounterConferenceData < 3) {
    o.conferenceId = 'foo';
    o.conferenceSolution = buildConferenceSolution();
    o.createRequest = buildCreateConferenceRequest();
    o.entryPoints = buildUnnamed4357();
    o.notes = 'foo';
    o.parameters = buildConferenceParameters();
    o.signature = 'foo';
  }
  buildCounterConferenceData--;
  return o;
}

void checkConferenceData(api.ConferenceData o) {
  buildCounterConferenceData++;
  if (buildCounterConferenceData < 3) {
    unittest.expect(o.conferenceId, unittest.equals('foo'));
    checkConferenceSolution(o.conferenceSolution as api.ConferenceSolution);
    checkCreateConferenceRequest(
        o.createRequest as api.CreateConferenceRequest);
    checkUnnamed4357(o.entryPoints);
    unittest.expect(o.notes, unittest.equals('foo'));
    checkConferenceParameters(o.parameters as api.ConferenceParameters);
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterConferenceData--;
}

core.int buildCounterConferenceParameters = 0;
api.ConferenceParameters buildConferenceParameters() {
  var o = api.ConferenceParameters();
  buildCounterConferenceParameters++;
  if (buildCounterConferenceParameters < 3) {
    o.addOnParameters = buildConferenceParametersAddOnParameters();
  }
  buildCounterConferenceParameters--;
  return o;
}

void checkConferenceParameters(api.ConferenceParameters o) {
  buildCounterConferenceParameters++;
  if (buildCounterConferenceParameters < 3) {
    checkConferenceParametersAddOnParameters(
        o.addOnParameters as api.ConferenceParametersAddOnParameters);
  }
  buildCounterConferenceParameters--;
}

core.Map<core.String, core.String> buildUnnamed4358() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4358(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterConferenceParametersAddOnParameters = 0;
api.ConferenceParametersAddOnParameters
    buildConferenceParametersAddOnParameters() {
  var o = api.ConferenceParametersAddOnParameters();
  buildCounterConferenceParametersAddOnParameters++;
  if (buildCounterConferenceParametersAddOnParameters < 3) {
    o.parameters = buildUnnamed4358();
  }
  buildCounterConferenceParametersAddOnParameters--;
  return o;
}

void checkConferenceParametersAddOnParameters(
    api.ConferenceParametersAddOnParameters o) {
  buildCounterConferenceParametersAddOnParameters++;
  if (buildCounterConferenceParametersAddOnParameters < 3) {
    checkUnnamed4358(o.parameters);
  }
  buildCounterConferenceParametersAddOnParameters--;
}

core.List<core.String> buildUnnamed4359() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConferenceProperties = 0;
api.ConferenceProperties buildConferenceProperties() {
  var o = api.ConferenceProperties();
  buildCounterConferenceProperties++;
  if (buildCounterConferenceProperties < 3) {
    o.allowedConferenceSolutionTypes = buildUnnamed4359();
  }
  buildCounterConferenceProperties--;
  return o;
}

void checkConferenceProperties(api.ConferenceProperties o) {
  buildCounterConferenceProperties++;
  if (buildCounterConferenceProperties < 3) {
    checkUnnamed4359(o.allowedConferenceSolutionTypes);
  }
  buildCounterConferenceProperties--;
}

core.int buildCounterConferenceRequestStatus = 0;
api.ConferenceRequestStatus buildConferenceRequestStatus() {
  var o = api.ConferenceRequestStatus();
  buildCounterConferenceRequestStatus++;
  if (buildCounterConferenceRequestStatus < 3) {
    o.statusCode = 'foo';
  }
  buildCounterConferenceRequestStatus--;
  return o;
}

void checkConferenceRequestStatus(api.ConferenceRequestStatus o) {
  buildCounterConferenceRequestStatus++;
  if (buildCounterConferenceRequestStatus < 3) {
    unittest.expect(o.statusCode, unittest.equals('foo'));
  }
  buildCounterConferenceRequestStatus--;
}

core.int buildCounterConferenceSolution = 0;
api.ConferenceSolution buildConferenceSolution() {
  var o = api.ConferenceSolution();
  buildCounterConferenceSolution++;
  if (buildCounterConferenceSolution < 3) {
    o.iconUri = 'foo';
    o.key = buildConferenceSolutionKey();
    o.name = 'foo';
  }
  buildCounterConferenceSolution--;
  return o;
}

void checkConferenceSolution(api.ConferenceSolution o) {
  buildCounterConferenceSolution++;
  if (buildCounterConferenceSolution < 3) {
    unittest.expect(o.iconUri, unittest.equals('foo'));
    checkConferenceSolutionKey(o.key as api.ConferenceSolutionKey);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterConferenceSolution--;
}

core.int buildCounterConferenceSolutionKey = 0;
api.ConferenceSolutionKey buildConferenceSolutionKey() {
  var o = api.ConferenceSolutionKey();
  buildCounterConferenceSolutionKey++;
  if (buildCounterConferenceSolutionKey < 3) {
    o.type = 'foo';
  }
  buildCounterConferenceSolutionKey--;
  return o;
}

void checkConferenceSolutionKey(api.ConferenceSolutionKey o) {
  buildCounterConferenceSolutionKey++;
  if (buildCounterConferenceSolutionKey < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterConferenceSolutionKey--;
}

core.int buildCounterCreateConferenceRequest = 0;
api.CreateConferenceRequest buildCreateConferenceRequest() {
  var o = api.CreateConferenceRequest();
  buildCounterCreateConferenceRequest++;
  if (buildCounterCreateConferenceRequest < 3) {
    o.conferenceSolutionKey = buildConferenceSolutionKey();
    o.requestId = 'foo';
    o.status = buildConferenceRequestStatus();
  }
  buildCounterCreateConferenceRequest--;
  return o;
}

void checkCreateConferenceRequest(api.CreateConferenceRequest o) {
  buildCounterCreateConferenceRequest++;
  if (buildCounterCreateConferenceRequest < 3) {
    checkConferenceSolutionKey(
        o.conferenceSolutionKey as api.ConferenceSolutionKey);
    unittest.expect(o.requestId, unittest.equals('foo'));
    checkConferenceRequestStatus(o.status as api.ConferenceRequestStatus);
  }
  buildCounterCreateConferenceRequest--;
}

core.List<core.String> buildUnnamed4360() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEntryPoint = 0;
api.EntryPoint buildEntryPoint() {
  var o = api.EntryPoint();
  buildCounterEntryPoint++;
  if (buildCounterEntryPoint < 3) {
    o.accessCode = 'foo';
    o.entryPointFeatures = buildUnnamed4360();
    o.entryPointType = 'foo';
    o.label = 'foo';
    o.meetingCode = 'foo';
    o.passcode = 'foo';
    o.password = 'foo';
    o.pin = 'foo';
    o.regionCode = 'foo';
    o.uri = 'foo';
  }
  buildCounterEntryPoint--;
  return o;
}

void checkEntryPoint(api.EntryPoint o) {
  buildCounterEntryPoint++;
  if (buildCounterEntryPoint < 3) {
    unittest.expect(o.accessCode, unittest.equals('foo'));
    checkUnnamed4360(o.entryPointFeatures);
    unittest.expect(o.entryPointType, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.meetingCode, unittest.equals('foo'));
    unittest.expect(o.passcode, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.pin, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterEntryPoint--;
}

core.int buildCounterError = 0;
api.Error buildError() {
  var o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.domain = 'foo';
    o.reason = 'foo';
  }
  buildCounterError--;
  return o;
}

void checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterError--;
}

core.List<api.EventAttachment> buildUnnamed4361() {
  var o = <api.EventAttachment>[];
  o.add(buildEventAttachment());
  o.add(buildEventAttachment());
  return o;
}

void checkUnnamed4361(core.List<api.EventAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventAttachment(o[0] as api.EventAttachment);
  checkEventAttachment(o[1] as api.EventAttachment);
}

core.List<api.EventAttendee> buildUnnamed4362() {
  var o = <api.EventAttendee>[];
  o.add(buildEventAttendee());
  o.add(buildEventAttendee());
  return o;
}

void checkUnnamed4362(core.List<api.EventAttendee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventAttendee(o[0] as api.EventAttendee);
  checkEventAttendee(o[1] as api.EventAttendee);
}

core.int buildCounterEventCreator = 0;
api.EventCreator buildEventCreator() {
  var o = api.EventCreator();
  buildCounterEventCreator++;
  if (buildCounterEventCreator < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.id = 'foo';
    o.self = true;
  }
  buildCounterEventCreator--;
  return o;
}

void checkEventCreator(api.EventCreator o) {
  buildCounterEventCreator++;
  if (buildCounterEventCreator < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.self, unittest.isTrue);
  }
  buildCounterEventCreator--;
}

core.Map<core.String, core.String> buildUnnamed4363() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4363(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed4364() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4364(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterEventExtendedProperties = 0;
api.EventExtendedProperties buildEventExtendedProperties() {
  var o = api.EventExtendedProperties();
  buildCounterEventExtendedProperties++;
  if (buildCounterEventExtendedProperties < 3) {
    o.private = buildUnnamed4363();
    o.shared = buildUnnamed4364();
  }
  buildCounterEventExtendedProperties--;
  return o;
}

void checkEventExtendedProperties(api.EventExtendedProperties o) {
  buildCounterEventExtendedProperties++;
  if (buildCounterEventExtendedProperties < 3) {
    checkUnnamed4363(o.private);
    checkUnnamed4364(o.shared);
  }
  buildCounterEventExtendedProperties--;
}

core.Map<core.String, core.String> buildUnnamed4365() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed4365(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterEventGadget = 0;
api.EventGadget buildEventGadget() {
  var o = api.EventGadget();
  buildCounterEventGadget++;
  if (buildCounterEventGadget < 3) {
    o.display = 'foo';
    o.height = 42;
    o.iconLink = 'foo';
    o.link = 'foo';
    o.preferences = buildUnnamed4365();
    o.title = 'foo';
    o.type = 'foo';
    o.width = 42;
  }
  buildCounterEventGadget--;
  return o;
}

void checkEventGadget(api.EventGadget o) {
  buildCounterEventGadget++;
  if (buildCounterEventGadget < 3) {
    unittest.expect(o.display, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.iconLink, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkUnnamed4365(o.preferences);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterEventGadget--;
}

core.int buildCounterEventOrganizer = 0;
api.EventOrganizer buildEventOrganizer() {
  var o = api.EventOrganizer();
  buildCounterEventOrganizer++;
  if (buildCounterEventOrganizer < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.id = 'foo';
    o.self = true;
  }
  buildCounterEventOrganizer--;
  return o;
}

void checkEventOrganizer(api.EventOrganizer o) {
  buildCounterEventOrganizer++;
  if (buildCounterEventOrganizer < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.self, unittest.isTrue);
  }
  buildCounterEventOrganizer--;
}

core.List<core.String> buildUnnamed4366() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EventReminder> buildUnnamed4367() {
  var o = <api.EventReminder>[];
  o.add(buildEventReminder());
  o.add(buildEventReminder());
  return o;
}

void checkUnnamed4367(core.List<api.EventReminder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventReminder(o[0] as api.EventReminder);
  checkEventReminder(o[1] as api.EventReminder);
}

core.int buildCounterEventReminders = 0;
api.EventReminders buildEventReminders() {
  var o = api.EventReminders();
  buildCounterEventReminders++;
  if (buildCounterEventReminders < 3) {
    o.overrides = buildUnnamed4367();
    o.useDefault = true;
  }
  buildCounterEventReminders--;
  return o;
}

void checkEventReminders(api.EventReminders o) {
  buildCounterEventReminders++;
  if (buildCounterEventReminders < 3) {
    checkUnnamed4367(o.overrides);
    unittest.expect(o.useDefault, unittest.isTrue);
  }
  buildCounterEventReminders--;
}

core.int buildCounterEventSource = 0;
api.EventSource buildEventSource() {
  var o = api.EventSource();
  buildCounterEventSource++;
  if (buildCounterEventSource < 3) {
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterEventSource--;
  return o;
}

void checkEventSource(api.EventSource o) {
  buildCounterEventSource++;
  if (buildCounterEventSource < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterEventSource--;
}

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  var o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.anyoneCanAddSelf = true;
    o.attachments = buildUnnamed4361();
    o.attendees = buildUnnamed4362();
    o.attendeesOmitted = true;
    o.colorId = 'foo';
    o.conferenceData = buildConferenceData();
    o.created = core.DateTime.parse("2002-02-27T14:01:02");
    o.creator = buildEventCreator();
    o.description = 'foo';
    o.end = buildEventDateTime();
    o.endTimeUnspecified = true;
    o.etag = 'foo';
    o.eventType = 'foo';
    o.extendedProperties = buildEventExtendedProperties();
    o.gadget = buildEventGadget();
    o.guestsCanInviteOthers = true;
    o.guestsCanModify = true;
    o.guestsCanSeeOtherGuests = true;
    o.hangoutLink = 'foo';
    o.htmlLink = 'foo';
    o.iCalUID = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.location = 'foo';
    o.locked = true;
    o.organizer = buildEventOrganizer();
    o.originalStartTime = buildEventDateTime();
    o.privateCopy = true;
    o.recurrence = buildUnnamed4366();
    o.recurringEventId = 'foo';
    o.reminders = buildEventReminders();
    o.sequence = 42;
    o.source = buildEventSource();
    o.start = buildEventDateTime();
    o.status = 'foo';
    o.summary = 'foo';
    o.transparency = 'foo';
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.visibility = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    unittest.expect(o.anyoneCanAddSelf, unittest.isTrue);
    checkUnnamed4361(o.attachments);
    checkUnnamed4362(o.attendees);
    unittest.expect(o.attendeesOmitted, unittest.isTrue);
    unittest.expect(o.colorId, unittest.equals('foo'));
    checkConferenceData(o.conferenceData as api.ConferenceData);
    unittest.expect(
        o.created, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkEventCreator(o.creator as api.EventCreator);
    unittest.expect(o.description, unittest.equals('foo'));
    checkEventDateTime(o.end as api.EventDateTime);
    unittest.expect(o.endTimeUnspecified, unittest.isTrue);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
    checkEventExtendedProperties(
        o.extendedProperties as api.EventExtendedProperties);
    checkEventGadget(o.gadget as api.EventGadget);
    unittest.expect(o.guestsCanInviteOthers, unittest.isTrue);
    unittest.expect(o.guestsCanModify, unittest.isTrue);
    unittest.expect(o.guestsCanSeeOtherGuests, unittest.isTrue);
    unittest.expect(o.hangoutLink, unittest.equals('foo'));
    unittest.expect(o.htmlLink, unittest.equals('foo'));
    unittest.expect(o.iCalUID, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.locked, unittest.isTrue);
    checkEventOrganizer(o.organizer as api.EventOrganizer);
    checkEventDateTime(o.originalStartTime as api.EventDateTime);
    unittest.expect(o.privateCopy, unittest.isTrue);
    checkUnnamed4366(o.recurrence);
    unittest.expect(o.recurringEventId, unittest.equals('foo'));
    checkEventReminders(o.reminders as api.EventReminders);
    unittest.expect(o.sequence, unittest.equals(42));
    checkEventSource(o.source as api.EventSource);
    checkEventDateTime(o.start as api.EventDateTime);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
    unittest.expect(o.transparency, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterEvent--;
}

core.int buildCounterEventAttachment = 0;
api.EventAttachment buildEventAttachment() {
  var o = api.EventAttachment();
  buildCounterEventAttachment++;
  if (buildCounterEventAttachment < 3) {
    o.fileId = 'foo';
    o.fileUrl = 'foo';
    o.iconLink = 'foo';
    o.mimeType = 'foo';
    o.title = 'foo';
  }
  buildCounterEventAttachment--;
  return o;
}

void checkEventAttachment(api.EventAttachment o) {
  buildCounterEventAttachment++;
  if (buildCounterEventAttachment < 3) {
    unittest.expect(o.fileId, unittest.equals('foo'));
    unittest.expect(o.fileUrl, unittest.equals('foo'));
    unittest.expect(o.iconLink, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterEventAttachment--;
}

core.int buildCounterEventAttendee = 0;
api.EventAttendee buildEventAttendee() {
  var o = api.EventAttendee();
  buildCounterEventAttendee++;
  if (buildCounterEventAttendee < 3) {
    o.additionalGuests = 42;
    o.comment = 'foo';
    o.displayName = 'foo';
    o.email = 'foo';
    o.id = 'foo';
    o.optional = true;
    o.organizer = true;
    o.resource = true;
    o.responseStatus = 'foo';
    o.self = true;
  }
  buildCounterEventAttendee--;
  return o;
}

void checkEventAttendee(api.EventAttendee o) {
  buildCounterEventAttendee++;
  if (buildCounterEventAttendee < 3) {
    unittest.expect(o.additionalGuests, unittest.equals(42));
    unittest.expect(o.comment, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.optional, unittest.isTrue);
    unittest.expect(o.organizer, unittest.isTrue);
    unittest.expect(o.resource, unittest.isTrue);
    unittest.expect(o.responseStatus, unittest.equals('foo'));
    unittest.expect(o.self, unittest.isTrue);
  }
  buildCounterEventAttendee--;
}

core.int buildCounterEventDateTime = 0;
api.EventDateTime buildEventDateTime() {
  var o = api.EventDateTime();
  buildCounterEventDateTime++;
  if (buildCounterEventDateTime < 3) {
    o.date = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.dateTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeZone = 'foo';
  }
  buildCounterEventDateTime--;
  return o;
}

void checkEventDateTime(api.EventDateTime o) {
  buildCounterEventDateTime++;
  if (buildCounterEventDateTime < 3) {
    unittest.expect(
        o.date, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.dateTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterEventDateTime--;
}

core.int buildCounterEventReminder = 0;
api.EventReminder buildEventReminder() {
  var o = api.EventReminder();
  buildCounterEventReminder++;
  if (buildCounterEventReminder < 3) {
    o.method = 'foo';
    o.minutes = 42;
  }
  buildCounterEventReminder--;
  return o;
}

void checkEventReminder(api.EventReminder o) {
  buildCounterEventReminder++;
  if (buildCounterEventReminder < 3) {
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.minutes, unittest.equals(42));
  }
  buildCounterEventReminder--;
}

core.List<api.EventReminder> buildUnnamed4368() {
  var o = <api.EventReminder>[];
  o.add(buildEventReminder());
  o.add(buildEventReminder());
  return o;
}

void checkUnnamed4368(core.List<api.EventReminder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventReminder(o[0] as api.EventReminder);
  checkEventReminder(o[1] as api.EventReminder);
}

core.List<api.Event> buildUnnamed4369() {
  var o = <api.Event>[];
  o.add(buildEvent());
  o.add(buildEvent());
  return o;
}

void checkUnnamed4369(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0] as api.Event);
  checkEvent(o[1] as api.Event);
}

core.int buildCounterEvents = 0;
api.Events buildEvents() {
  var o = api.Events();
  buildCounterEvents++;
  if (buildCounterEvents < 3) {
    o.accessRole = 'foo';
    o.defaultReminders = buildUnnamed4368();
    o.description = 'foo';
    o.etag = 'foo';
    o.items = buildUnnamed4369();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
    o.summary = 'foo';
    o.timeZone = 'foo';
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterEvents--;
  return o;
}

void checkEvents(api.Events o) {
  buildCounterEvents++;
  if (buildCounterEvents < 3) {
    unittest.expect(o.accessRole, unittest.equals('foo'));
    checkUnnamed4368(o.defaultReminders);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4369(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterEvents--;
}

core.List<api.TimePeriod> buildUnnamed4370() {
  var o = <api.TimePeriod>[];
  o.add(buildTimePeriod());
  o.add(buildTimePeriod());
  return o;
}

void checkUnnamed4370(core.List<api.TimePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimePeriod(o[0] as api.TimePeriod);
  checkTimePeriod(o[1] as api.TimePeriod);
}

core.List<api.Error> buildUnnamed4371() {
  var o = <api.Error>[];
  o.add(buildError());
  o.add(buildError());
  return o;
}

void checkUnnamed4371(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0] as api.Error);
  checkError(o[1] as api.Error);
}

core.int buildCounterFreeBusyCalendar = 0;
api.FreeBusyCalendar buildFreeBusyCalendar() {
  var o = api.FreeBusyCalendar();
  buildCounterFreeBusyCalendar++;
  if (buildCounterFreeBusyCalendar < 3) {
    o.busy = buildUnnamed4370();
    o.errors = buildUnnamed4371();
  }
  buildCounterFreeBusyCalendar--;
  return o;
}

void checkFreeBusyCalendar(api.FreeBusyCalendar o) {
  buildCounterFreeBusyCalendar++;
  if (buildCounterFreeBusyCalendar < 3) {
    checkUnnamed4370(o.busy);
    checkUnnamed4371(o.errors);
  }
  buildCounterFreeBusyCalendar--;
}

core.List<core.String> buildUnnamed4372() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Error> buildUnnamed4373() {
  var o = <api.Error>[];
  o.add(buildError());
  o.add(buildError());
  return o;
}

void checkUnnamed4373(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0] as api.Error);
  checkError(o[1] as api.Error);
}

core.int buildCounterFreeBusyGroup = 0;
api.FreeBusyGroup buildFreeBusyGroup() {
  var o = api.FreeBusyGroup();
  buildCounterFreeBusyGroup++;
  if (buildCounterFreeBusyGroup < 3) {
    o.calendars = buildUnnamed4372();
    o.errors = buildUnnamed4373();
  }
  buildCounterFreeBusyGroup--;
  return o;
}

void checkFreeBusyGroup(api.FreeBusyGroup o) {
  buildCounterFreeBusyGroup++;
  if (buildCounterFreeBusyGroup < 3) {
    checkUnnamed4372(o.calendars);
    checkUnnamed4373(o.errors);
  }
  buildCounterFreeBusyGroup--;
}

core.List<api.FreeBusyRequestItem> buildUnnamed4374() {
  var o = <api.FreeBusyRequestItem>[];
  o.add(buildFreeBusyRequestItem());
  o.add(buildFreeBusyRequestItem());
  return o;
}

void checkUnnamed4374(core.List<api.FreeBusyRequestItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeBusyRequestItem(o[0] as api.FreeBusyRequestItem);
  checkFreeBusyRequestItem(o[1] as api.FreeBusyRequestItem);
}

core.int buildCounterFreeBusyRequest = 0;
api.FreeBusyRequest buildFreeBusyRequest() {
  var o = api.FreeBusyRequest();
  buildCounterFreeBusyRequest++;
  if (buildCounterFreeBusyRequest < 3) {
    o.calendarExpansionMax = 42;
    o.groupExpansionMax = 42;
    o.items = buildUnnamed4374();
    o.timeMax = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeMin = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeZone = 'foo';
  }
  buildCounterFreeBusyRequest--;
  return o;
}

void checkFreeBusyRequest(api.FreeBusyRequest o) {
  buildCounterFreeBusyRequest++;
  if (buildCounterFreeBusyRequest < 3) {
    unittest.expect(o.calendarExpansionMax, unittest.equals(42));
    unittest.expect(o.groupExpansionMax, unittest.equals(42));
    checkUnnamed4374(o.items);
    unittest.expect(
        o.timeMax, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.timeMin, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterFreeBusyRequest--;
}

core.int buildCounterFreeBusyRequestItem = 0;
api.FreeBusyRequestItem buildFreeBusyRequestItem() {
  var o = api.FreeBusyRequestItem();
  buildCounterFreeBusyRequestItem++;
  if (buildCounterFreeBusyRequestItem < 3) {
    o.id = 'foo';
  }
  buildCounterFreeBusyRequestItem--;
  return o;
}

void checkFreeBusyRequestItem(api.FreeBusyRequestItem o) {
  buildCounterFreeBusyRequestItem++;
  if (buildCounterFreeBusyRequestItem < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterFreeBusyRequestItem--;
}

core.Map<core.String, api.FreeBusyCalendar> buildUnnamed4375() {
  var o = <core.String, api.FreeBusyCalendar>{};
  o['x'] = buildFreeBusyCalendar();
  o['y'] = buildFreeBusyCalendar();
  return o;
}

void checkUnnamed4375(core.Map<core.String, api.FreeBusyCalendar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeBusyCalendar(o['x'] as api.FreeBusyCalendar);
  checkFreeBusyCalendar(o['y'] as api.FreeBusyCalendar);
}

core.Map<core.String, api.FreeBusyGroup> buildUnnamed4376() {
  var o = <core.String, api.FreeBusyGroup>{};
  o['x'] = buildFreeBusyGroup();
  o['y'] = buildFreeBusyGroup();
  return o;
}

void checkUnnamed4376(core.Map<core.String, api.FreeBusyGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeBusyGroup(o['x'] as api.FreeBusyGroup);
  checkFreeBusyGroup(o['y'] as api.FreeBusyGroup);
}

core.int buildCounterFreeBusyResponse = 0;
api.FreeBusyResponse buildFreeBusyResponse() {
  var o = api.FreeBusyResponse();
  buildCounterFreeBusyResponse++;
  if (buildCounterFreeBusyResponse < 3) {
    o.calendars = buildUnnamed4375();
    o.groups = buildUnnamed4376();
    o.kind = 'foo';
    o.timeMax = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeMin = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterFreeBusyResponse--;
  return o;
}

void checkFreeBusyResponse(api.FreeBusyResponse o) {
  buildCounterFreeBusyResponse++;
  if (buildCounterFreeBusyResponse < 3) {
    checkUnnamed4375(o.calendars);
    checkUnnamed4376(o.groups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(
        o.timeMax, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.timeMin, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterFreeBusyResponse--;
}

core.int buildCounterSetting = 0;
api.Setting buildSetting() {
  var o = api.Setting();
  buildCounterSetting++;
  if (buildCounterSetting < 3) {
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.value = 'foo';
  }
  buildCounterSetting--;
  return o;
}

void checkSetting(api.Setting o) {
  buildCounterSetting++;
  if (buildCounterSetting < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSetting--;
}

core.List<api.Setting> buildUnnamed4377() {
  var o = <api.Setting>[];
  o.add(buildSetting());
  o.add(buildSetting());
  return o;
}

void checkUnnamed4377(core.List<api.Setting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetting(o[0] as api.Setting);
  checkSetting(o[1] as api.Setting);
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  var o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4377();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.nextSyncToken = 'foo';
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4377(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.nextSyncToken, unittest.equals('foo'));
  }
  buildCounterSettings--;
}

core.int buildCounterTimePeriod = 0;
api.TimePeriod buildTimePeriod() {
  var o = api.TimePeriod();
  buildCounterTimePeriod++;
  if (buildCounterTimePeriod < 3) {
    o.end = core.DateTime.parse("2002-02-27T14:01:02");
    o.start = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterTimePeriod--;
  return o;
}

void checkTimePeriod(api.TimePeriod o) {
  buildCounterTimePeriod++;
  if (buildCounterTimePeriod < 3) {
    unittest.expect(
        o.end, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.start, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterTimePeriod--;
}

core.List<core.String> buildUnnamed4378() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4378(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4379() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4380() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4380(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4381() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4381(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Acl', () {
    unittest.test('to-json--from-json', () {
      var o = buildAcl();
      var od = api.Acl.fromJson(o.toJson());
      checkAcl(od as api.Acl);
    });
  });

  unittest.group('obj-schema-AclRuleScope', () {
    unittest.test('to-json--from-json', () {
      var o = buildAclRuleScope();
      var od = api.AclRuleScope.fromJson(o.toJson());
      checkAclRuleScope(od as api.AclRuleScope);
    });
  });

  unittest.group('obj-schema-AclRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildAclRule();
      var od = api.AclRule.fromJson(o.toJson());
      checkAclRule(od as api.AclRule);
    });
  });

  unittest.group('obj-schema-Calendar', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendar();
      var od = api.Calendar.fromJson(o.toJson());
      checkCalendar(od as api.Calendar);
    });
  });

  unittest.group('obj-schema-CalendarList', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarList();
      var od = api.CalendarList.fromJson(o.toJson());
      checkCalendarList(od as api.CalendarList);
    });
  });

  unittest.group('obj-schema-CalendarListEntryNotificationSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarListEntryNotificationSettings();
      var od = api.CalendarListEntryNotificationSettings.fromJson(o.toJson());
      checkCalendarListEntryNotificationSettings(
          od as api.CalendarListEntryNotificationSettings);
    });
  });

  unittest.group('obj-schema-CalendarListEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarListEntry();
      var od = api.CalendarListEntry.fromJson(o.toJson());
      checkCalendarListEntry(od as api.CalendarListEntry);
    });
  });

  unittest.group('obj-schema-CalendarNotification', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarNotification();
      var od = api.CalendarNotification.fromJson(o.toJson());
      checkCalendarNotification(od as api.CalendarNotification);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od as api.Channel);
    });
  });

  unittest.group('obj-schema-ColorDefinition', () {
    unittest.test('to-json--from-json', () {
      var o = buildColorDefinition();
      var od = api.ColorDefinition.fromJson(o.toJson());
      checkColorDefinition(od as api.ColorDefinition);
    });
  });

  unittest.group('obj-schema-Colors', () {
    unittest.test('to-json--from-json', () {
      var o = buildColors();
      var od = api.Colors.fromJson(o.toJson());
      checkColors(od as api.Colors);
    });
  });

  unittest.group('obj-schema-ConferenceData', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceData();
      var od = api.ConferenceData.fromJson(o.toJson());
      checkConferenceData(od as api.ConferenceData);
    });
  });

  unittest.group('obj-schema-ConferenceParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceParameters();
      var od = api.ConferenceParameters.fromJson(o.toJson());
      checkConferenceParameters(od as api.ConferenceParameters);
    });
  });

  unittest.group('obj-schema-ConferenceParametersAddOnParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceParametersAddOnParameters();
      var od = api.ConferenceParametersAddOnParameters.fromJson(o.toJson());
      checkConferenceParametersAddOnParameters(
          od as api.ConferenceParametersAddOnParameters);
    });
  });

  unittest.group('obj-schema-ConferenceProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceProperties();
      var od = api.ConferenceProperties.fromJson(o.toJson());
      checkConferenceProperties(od as api.ConferenceProperties);
    });
  });

  unittest.group('obj-schema-ConferenceRequestStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceRequestStatus();
      var od = api.ConferenceRequestStatus.fromJson(o.toJson());
      checkConferenceRequestStatus(od as api.ConferenceRequestStatus);
    });
  });

  unittest.group('obj-schema-ConferenceSolution', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceSolution();
      var od = api.ConferenceSolution.fromJson(o.toJson());
      checkConferenceSolution(od as api.ConferenceSolution);
    });
  });

  unittest.group('obj-schema-ConferenceSolutionKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildConferenceSolutionKey();
      var od = api.ConferenceSolutionKey.fromJson(o.toJson());
      checkConferenceSolutionKey(od as api.ConferenceSolutionKey);
    });
  });

  unittest.group('obj-schema-CreateConferenceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateConferenceRequest();
      var od = api.CreateConferenceRequest.fromJson(o.toJson());
      checkCreateConferenceRequest(od as api.CreateConferenceRequest);
    });
  });

  unittest.group('obj-schema-EntryPoint', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntryPoint();
      var od = api.EntryPoint.fromJson(o.toJson());
      checkEntryPoint(od as api.EntryPoint);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () {
      var o = buildError();
      var od = api.Error.fromJson(o.toJson());
      checkError(od as api.Error);
    });
  });

  unittest.group('obj-schema-EventCreator', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventCreator();
      var od = api.EventCreator.fromJson(o.toJson());
      checkEventCreator(od as api.EventCreator);
    });
  });

  unittest.group('obj-schema-EventExtendedProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventExtendedProperties();
      var od = api.EventExtendedProperties.fromJson(o.toJson());
      checkEventExtendedProperties(od as api.EventExtendedProperties);
    });
  });

  unittest.group('obj-schema-EventGadget', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventGadget();
      var od = api.EventGadget.fromJson(o.toJson());
      checkEventGadget(od as api.EventGadget);
    });
  });

  unittest.group('obj-schema-EventOrganizer', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventOrganizer();
      var od = api.EventOrganizer.fromJson(o.toJson());
      checkEventOrganizer(od as api.EventOrganizer);
    });
  });

  unittest.group('obj-schema-EventReminders', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventReminders();
      var od = api.EventReminders.fromJson(o.toJson());
      checkEventReminders(od as api.EventReminders);
    });
  });

  unittest.group('obj-schema-EventSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventSource();
      var od = api.EventSource.fromJson(o.toJson());
      checkEventSource(od as api.EventSource);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () {
      var o = buildEvent();
      var od = api.Event.fromJson(o.toJson());
      checkEvent(od as api.Event);
    });
  });

  unittest.group('obj-schema-EventAttachment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventAttachment();
      var od = api.EventAttachment.fromJson(o.toJson());
      checkEventAttachment(od as api.EventAttachment);
    });
  });

  unittest.group('obj-schema-EventAttendee', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventAttendee();
      var od = api.EventAttendee.fromJson(o.toJson());
      checkEventAttendee(od as api.EventAttendee);
    });
  });

  unittest.group('obj-schema-EventDateTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventDateTime();
      var od = api.EventDateTime.fromJson(o.toJson());
      checkEventDateTime(od as api.EventDateTime);
    });
  });

  unittest.group('obj-schema-EventReminder', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventReminder();
      var od = api.EventReminder.fromJson(o.toJson());
      checkEventReminder(od as api.EventReminder);
    });
  });

  unittest.group('obj-schema-Events', () {
    unittest.test('to-json--from-json', () {
      var o = buildEvents();
      var od = api.Events.fromJson(o.toJson());
      checkEvents(od as api.Events);
    });
  });

  unittest.group('obj-schema-FreeBusyCalendar', () {
    unittest.test('to-json--from-json', () {
      var o = buildFreeBusyCalendar();
      var od = api.FreeBusyCalendar.fromJson(o.toJson());
      checkFreeBusyCalendar(od as api.FreeBusyCalendar);
    });
  });

  unittest.group('obj-schema-FreeBusyGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildFreeBusyGroup();
      var od = api.FreeBusyGroup.fromJson(o.toJson());
      checkFreeBusyGroup(od as api.FreeBusyGroup);
    });
  });

  unittest.group('obj-schema-FreeBusyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildFreeBusyRequest();
      var od = api.FreeBusyRequest.fromJson(o.toJson());
      checkFreeBusyRequest(od as api.FreeBusyRequest);
    });
  });

  unittest.group('obj-schema-FreeBusyRequestItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildFreeBusyRequestItem();
      var od = api.FreeBusyRequestItem.fromJson(o.toJson());
      checkFreeBusyRequestItem(od as api.FreeBusyRequestItem);
    });
  });

  unittest.group('obj-schema-FreeBusyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFreeBusyResponse();
      var od = api.FreeBusyResponse.fromJson(o.toJson());
      checkFreeBusyResponse(od as api.FreeBusyResponse);
    });
  });

  unittest.group('obj-schema-Setting', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetting();
      var od = api.Setting.fromJson(o.toJson());
      checkSetting(od as api.Setting);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettings();
      var od = api.Settings.fromJson(o.toJson());
      checkSettings(od as api.Settings);
    });
  });

  unittest.group('obj-schema-TimePeriod', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimePeriod();
      var od = api.TimePeriod.fromJson(o.toJson());
      checkTimePeriod(od as api.TimePeriod);
    });
  });

  unittest.group('resource-AclResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_calendarId = 'foo';
      var arg_ruleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_calendarId, arg_ruleId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_calendarId = 'foo';
      var arg_ruleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        var resp = convert.json.encode(buildAclRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_calendarId, arg_ruleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAclRule(response as api.AclRule);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_request = buildAclRule();
      var arg_calendarId = 'foo';
      var arg_sendNotifications = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.AclRule.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAclRule(obj as api.AclRule);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

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
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAclRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_calendarId,
              sendNotifications: arg_sendNotifications, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAclRule(response as api.AclRule);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_calendarId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/acl"));
        pathOffset += 4;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAcl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_calendarId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAcl(response as api.Acl);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_request = buildAclRule();
      var arg_calendarId = 'foo';
      var arg_ruleId = 'foo';
      var arg_sendNotifications = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.AclRule.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAclRule(obj as api.AclRule);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAclRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_calendarId, arg_ruleId,
              sendNotifications: arg_sendNotifications, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAclRule(response as api.AclRule);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_request = buildAclRule();
      var arg_calendarId = 'foo';
      var arg_ruleId = 'foo';
      var arg_sendNotifications = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.AclRule.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAclRule(obj as api.AclRule);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAclRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_calendarId, arg_ruleId,
              sendNotifications: arg_sendNotifications, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAclRule(response as api.AclRule);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).acl;
      var arg_request = buildChannel();
      var arg_calendarId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_syncToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/acl/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/acl/watch"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_calendarId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-CalendarListResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("users/me/calendarList/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("users/me/calendarList/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        var resp = convert.json.encode(buildCalendarListEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarListEntry(response as api.CalendarListEntry);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_request = buildCalendarListEntry();
      var arg_colorRgbFormat = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CalendarListEntry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarListEntry(obj as api.CalendarListEntry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("users/me/calendarList"));
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
        unittest.expect(queryMap["colorRgbFormat"].first,
            unittest.equals("$arg_colorRgbFormat"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCalendarListEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              colorRgbFormat: arg_colorRgbFormat, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarListEntry(response as api.CalendarListEntry);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_maxResults = 42;
      var arg_minAccessRole = 'foo';
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_showHidden = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("users/me/calendarList"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["minAccessRole"].first,
            unittest.equals(arg_minAccessRole));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(
            queryMap["showHidden"].first, unittest.equals("$arg_showHidden"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCalendarList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              minAccessRole: arg_minAccessRole,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              showHidden: arg_showHidden,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarList(response as api.CalendarList);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_request = buildCalendarListEntry();
      var arg_calendarId = 'foo';
      var arg_colorRgbFormat = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CalendarListEntry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarListEntry(obj as api.CalendarListEntry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("users/me/calendarList/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        unittest.expect(queryMap["colorRgbFormat"].first,
            unittest.equals("$arg_colorRgbFormat"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCalendarListEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_calendarId,
              colorRgbFormat: arg_colorRgbFormat, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarListEntry(response as api.CalendarListEntry);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_request = buildCalendarListEntry();
      var arg_calendarId = 'foo';
      var arg_colorRgbFormat = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CalendarListEntry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarListEntry(obj as api.CalendarListEntry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("users/me/calendarList/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        unittest.expect(queryMap["colorRgbFormat"].first,
            unittest.equals("$arg_colorRgbFormat"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCalendarListEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_calendarId,
              colorRgbFormat: arg_colorRgbFormat, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarListEntry(response as api.CalendarListEntry);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendarList;
      var arg_request = buildChannel();
      var arg_maxResults = 42;
      var arg_minAccessRole = 'foo';
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_showHidden = true;
      var arg_syncToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("users/me/calendarList/watch"));
        pathOffset += 27;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["minAccessRole"].first,
            unittest.equals(arg_minAccessRole));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(
            queryMap["showHidden"].first, unittest.equals("$arg_showHidden"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request,
              maxResults: arg_maxResults,
              minAccessRole: arg_minAccessRole,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              showHidden: arg_showHidden,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-CalendarsResource', () {
    unittest.test('method--clear', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendars;
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/clear', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/clear"));
        pathOffset += 6;

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .clear(arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendars;
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendars;
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        var resp = convert.json.encode(buildCalendar());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendar(response as api.Calendar);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendars;
      var arg_request = buildCalendar();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Calendar.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCalendar(obj as api.Calendar);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("calendars"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildCalendar());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendar(response as api.Calendar);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendars;
      var arg_request = buildCalendar();
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Calendar.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCalendar(obj as api.Calendar);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        var resp = convert.json.encode(buildCalendar());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendar(response as api.Calendar);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).calendars;
      var arg_request = buildCalendar();
      var arg_calendarId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Calendar.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCalendar(obj as api.Calendar);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));

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
        var resp = convert.json.encode(buildCalendar());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_calendarId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendar(response as api.Calendar);
      })));
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("channels/stop"));
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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-ColorsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).colors;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("colors"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildColors());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkColors(response as api.Colors);
      })));
    });
  });

  unittest.group('resource-EventsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_calendarId = 'foo';
      var arg_eventId = 'foo';
      var arg_sendNotifications = true;
      var arg_sendUpdates = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/events/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_eventId'));

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
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(
            queryMap["sendUpdates"].first, unittest.equals(arg_sendUpdates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_calendarId, arg_eventId,
              sendNotifications: arg_sendNotifications,
              sendUpdates: arg_sendUpdates,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_calendarId = 'foo';
      var arg_eventId = 'foo';
      var arg_alwaysIncludeEmail = true;
      var arg_maxAttendees = 42;
      var arg_timeZone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/events/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_eventId'));

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
        unittest.expect(queryMap["alwaysIncludeEmail"].first,
            unittest.equals("$arg_alwaysIncludeEmail"));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(
            queryMap["timeZone"].first, unittest.equals(arg_timeZone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_calendarId, arg_eventId,
              alwaysIncludeEmail: arg_alwaysIncludeEmail,
              maxAttendees: arg_maxAttendees,
              timeZone: arg_timeZone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--import', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_request = buildEvent();
      var arg_calendarId = 'foo';
      var arg_conferenceDataVersion = 42;
      var arg_supportsAttachments = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Event.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEvent(obj as api.Event);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/import', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/events/import"));
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
        unittest.expect(core.int.parse(queryMap["conferenceDataVersion"].first),
            unittest.equals(arg_conferenceDataVersion));
        unittest.expect(queryMap["supportsAttachments"].first,
            unittest.equals("$arg_supportsAttachments"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_calendarId,
              conferenceDataVersion: arg_conferenceDataVersion,
              supportsAttachments: arg_supportsAttachments,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_request = buildEvent();
      var arg_calendarId = 'foo';
      var arg_conferenceDataVersion = 42;
      var arg_maxAttendees = 42;
      var arg_sendNotifications = true;
      var arg_sendUpdates = 'foo';
      var arg_supportsAttachments = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Event.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEvent(obj as api.Event);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/events"));
        pathOffset += 7;

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
        unittest.expect(core.int.parse(queryMap["conferenceDataVersion"].first),
            unittest.equals(arg_conferenceDataVersion));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(
            queryMap["sendUpdates"].first, unittest.equals(arg_sendUpdates));
        unittest.expect(queryMap["supportsAttachments"].first,
            unittest.equals("$arg_supportsAttachments"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_calendarId,
              conferenceDataVersion: arg_conferenceDataVersion,
              maxAttendees: arg_maxAttendees,
              sendNotifications: arg_sendNotifications,
              sendUpdates: arg_sendUpdates,
              supportsAttachments: arg_supportsAttachments,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--instances', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_calendarId = 'foo';
      var arg_eventId = 'foo';
      var arg_alwaysIncludeEmail = true;
      var arg_maxAttendees = 42;
      var arg_maxResults = 42;
      var arg_originalStart = 'foo';
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_timeMax = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_timeMin = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_timeZone = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/events/"));
        pathOffset += 8;
        index = path.indexOf('/instances', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_eventId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/instances"));
        pathOffset += 10;

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
        unittest.expect(queryMap["alwaysIncludeEmail"].first,
            unittest.equals("$arg_alwaysIncludeEmail"));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["originalStart"].first,
            unittest.equals(arg_originalStart));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(core.DateTime.parse(queryMap["timeMax"].first),
            unittest.equals(arg_timeMax));
        unittest.expect(core.DateTime.parse(queryMap["timeMin"].first),
            unittest.equals(arg_timeMin));
        unittest.expect(
            queryMap["timeZone"].first, unittest.equals(arg_timeZone));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvents());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .instances(arg_calendarId, arg_eventId,
              alwaysIncludeEmail: arg_alwaysIncludeEmail,
              maxAttendees: arg_maxAttendees,
              maxResults: arg_maxResults,
              originalStart: arg_originalStart,
              pageToken: arg_pageToken,
              showDeleted: arg_showDeleted,
              timeMax: arg_timeMax,
              timeMin: arg_timeMin,
              timeZone: arg_timeZone,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvents(response as api.Events);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_calendarId = 'foo';
      var arg_alwaysIncludeEmail = true;
      var arg_iCalUID = 'foo';
      var arg_maxAttendees = 42;
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_privateExtendedProperty = buildUnnamed4378();
      var arg_q = 'foo';
      var arg_sharedExtendedProperty = buildUnnamed4379();
      var arg_showDeleted = true;
      var arg_showHiddenInvitations = true;
      var arg_singleEvents = true;
      var arg_syncToken = 'foo';
      var arg_timeMax = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_timeMin = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_timeZone = 'foo';
      var arg_updatedMin = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/events"));
        pathOffset += 7;

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
        unittest.expect(queryMap["alwaysIncludeEmail"].first,
            unittest.equals("$arg_alwaysIncludeEmail"));
        unittest.expect(
            queryMap["iCalUID"].first, unittest.equals(arg_iCalUID));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["privateExtendedProperty"],
            unittest.equals(arg_privateExtendedProperty));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["sharedExtendedProperty"],
            unittest.equals(arg_sharedExtendedProperty));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(queryMap["showHiddenInvitations"].first,
            unittest.equals("$arg_showHiddenInvitations"));
        unittest.expect(queryMap["singleEvents"].first,
            unittest.equals("$arg_singleEvents"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(core.DateTime.parse(queryMap["timeMax"].first),
            unittest.equals(arg_timeMax));
        unittest.expect(core.DateTime.parse(queryMap["timeMin"].first),
            unittest.equals(arg_timeMin));
        unittest.expect(
            queryMap["timeZone"].first, unittest.equals(arg_timeZone));
        unittest.expect(core.DateTime.parse(queryMap["updatedMin"].first),
            unittest.equals(arg_updatedMin));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvents());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_calendarId,
              alwaysIncludeEmail: arg_alwaysIncludeEmail,
              iCalUID: arg_iCalUID,
              maxAttendees: arg_maxAttendees,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              privateExtendedProperty: arg_privateExtendedProperty,
              q: arg_q,
              sharedExtendedProperty: arg_sharedExtendedProperty,
              showDeleted: arg_showDeleted,
              showHiddenInvitations: arg_showHiddenInvitations,
              singleEvents: arg_singleEvents,
              syncToken: arg_syncToken,
              timeMax: arg_timeMax,
              timeMin: arg_timeMin,
              timeZone: arg_timeZone,
              updatedMin: arg_updatedMin,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvents(response as api.Events);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_calendarId = 'foo';
      var arg_eventId = 'foo';
      var arg_destination = 'foo';
      var arg_sendNotifications = true;
      var arg_sendUpdates = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/events/"));
        pathOffset += 8;
        index = path.indexOf('/move', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_eventId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/move"));
        pathOffset += 5;

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
            queryMap["destination"].first, unittest.equals(arg_destination));
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(
            queryMap["sendUpdates"].first, unittest.equals(arg_sendUpdates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_calendarId, arg_eventId, arg_destination,
              sendNotifications: arg_sendNotifications,
              sendUpdates: arg_sendUpdates,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_request = buildEvent();
      var arg_calendarId = 'foo';
      var arg_eventId = 'foo';
      var arg_alwaysIncludeEmail = true;
      var arg_conferenceDataVersion = 42;
      var arg_maxAttendees = 42;
      var arg_sendNotifications = true;
      var arg_sendUpdates = 'foo';
      var arg_supportsAttachments = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Event.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEvent(obj as api.Event);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/events/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_eventId'));

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
        unittest.expect(queryMap["alwaysIncludeEmail"].first,
            unittest.equals("$arg_alwaysIncludeEmail"));
        unittest.expect(core.int.parse(queryMap["conferenceDataVersion"].first),
            unittest.equals(arg_conferenceDataVersion));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(
            queryMap["sendUpdates"].first, unittest.equals(arg_sendUpdates));
        unittest.expect(queryMap["supportsAttachments"].first,
            unittest.equals("$arg_supportsAttachments"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_calendarId, arg_eventId,
              alwaysIncludeEmail: arg_alwaysIncludeEmail,
              conferenceDataVersion: arg_conferenceDataVersion,
              maxAttendees: arg_maxAttendees,
              sendNotifications: arg_sendNotifications,
              sendUpdates: arg_sendUpdates,
              supportsAttachments: arg_supportsAttachments,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--quickAdd', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_calendarId = 'foo';
      var arg_text = 'foo';
      var arg_sendNotifications = true;
      var arg_sendUpdates = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/quickAdd', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/events/quickAdd"));
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
        unittest.expect(queryMap["text"].first, unittest.equals(arg_text));
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(
            queryMap["sendUpdates"].first, unittest.equals(arg_sendUpdates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .quickAdd(arg_calendarId, arg_text,
              sendNotifications: arg_sendNotifications,
              sendUpdates: arg_sendUpdates,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_request = buildEvent();
      var arg_calendarId = 'foo';
      var arg_eventId = 'foo';
      var arg_alwaysIncludeEmail = true;
      var arg_conferenceDataVersion = 42;
      var arg_maxAttendees = 42;
      var arg_sendNotifications = true;
      var arg_sendUpdates = 'foo';
      var arg_supportsAttachments = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Event.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEvent(obj as api.Event);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/events/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_eventId'));

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
        unittest.expect(queryMap["alwaysIncludeEmail"].first,
            unittest.equals("$arg_alwaysIncludeEmail"));
        unittest.expect(core.int.parse(queryMap["conferenceDataVersion"].first),
            unittest.equals(arg_conferenceDataVersion));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(queryMap["sendNotifications"].first,
            unittest.equals("$arg_sendNotifications"));
        unittest.expect(
            queryMap["sendUpdates"].first, unittest.equals(arg_sendUpdates));
        unittest.expect(queryMap["supportsAttachments"].first,
            unittest.equals("$arg_supportsAttachments"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_calendarId, arg_eventId,
              alwaysIncludeEmail: arg_alwaysIncludeEmail,
              conferenceDataVersion: arg_conferenceDataVersion,
              maxAttendees: arg_maxAttendees,
              sendNotifications: arg_sendNotifications,
              sendUpdates: arg_sendUpdates,
              supportsAttachments: arg_supportsAttachments,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEvent(response as api.Event);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).events;
      var arg_request = buildChannel();
      var arg_calendarId = 'foo';
      var arg_alwaysIncludeEmail = true;
      var arg_iCalUID = 'foo';
      var arg_maxAttendees = 42;
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_privateExtendedProperty = buildUnnamed4380();
      var arg_q = 'foo';
      var arg_sharedExtendedProperty = buildUnnamed4381();
      var arg_showDeleted = true;
      var arg_showHiddenInvitations = true;
      var arg_singleEvents = true;
      var arg_syncToken = 'foo';
      var arg_timeMax = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_timeMin = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_timeZone = 'foo';
      var arg_updatedMin = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("calendars/"));
        pathOffset += 10;
        index = path.indexOf('/events/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_calendarId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/events/watch"));
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
        unittest.expect(queryMap["alwaysIncludeEmail"].first,
            unittest.equals("$arg_alwaysIncludeEmail"));
        unittest.expect(
            queryMap["iCalUID"].first, unittest.equals(arg_iCalUID));
        unittest.expect(core.int.parse(queryMap["maxAttendees"].first),
            unittest.equals(arg_maxAttendees));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["privateExtendedProperty"],
            unittest.equals(arg_privateExtendedProperty));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));
        unittest.expect(queryMap["sharedExtendedProperty"],
            unittest.equals(arg_sharedExtendedProperty));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(queryMap["showHiddenInvitations"].first,
            unittest.equals("$arg_showHiddenInvitations"));
        unittest.expect(queryMap["singleEvents"].first,
            unittest.equals("$arg_singleEvents"));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(core.DateTime.parse(queryMap["timeMax"].first),
            unittest.equals(arg_timeMax));
        unittest.expect(core.DateTime.parse(queryMap["timeMin"].first),
            unittest.equals(arg_timeMin));
        unittest.expect(
            queryMap["timeZone"].first, unittest.equals(arg_timeZone));
        unittest.expect(core.DateTime.parse(queryMap["updatedMin"].first),
            unittest.equals(arg_updatedMin));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_calendarId,
              alwaysIncludeEmail: arg_alwaysIncludeEmail,
              iCalUID: arg_iCalUID,
              maxAttendees: arg_maxAttendees,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              privateExtendedProperty: arg_privateExtendedProperty,
              q: arg_q,
              sharedExtendedProperty: arg_sharedExtendedProperty,
              showDeleted: arg_showDeleted,
              showHiddenInvitations: arg_showHiddenInvitations,
              singleEvents: arg_singleEvents,
              syncToken: arg_syncToken,
              timeMax: arg_timeMax,
              timeMin: arg_timeMin,
              timeZone: arg_timeZone,
              updatedMin: arg_updatedMin,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-FreebusyResource', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).freebusy;
      var arg_request = buildFreeBusyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FreeBusyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFreeBusyRequest(obj as api.FreeBusyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("freeBusy"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildFreeBusyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFreeBusyResponse(response as api.FreeBusyResponse);
      })));
    });
  });

  unittest.group('resource-SettingsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).settings;
      var arg_setting = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("users/me/settings/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_setting'));

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
        var resp = convert.json.encode(buildSetting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_setting, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSetting(response as api.Setting);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).settings;
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("users/me/settings"));
        pathOffset += 17;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettings(response as api.Settings);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.CalendarApi(mock).settings;
      var arg_request = buildChannel();
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_syncToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("calendar/v3/"));
        pathOffset += 12;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("users/me/settings/watch"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["syncToken"].first, unittest.equals(arg_syncToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              syncToken: arg_syncToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });
}
