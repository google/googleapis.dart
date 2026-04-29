// Copyright 2014 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/admin/reports_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Activity> buildUnnamed0() => [buildActivity(), buildActivity()];

void checkUnnamed0(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivities = 0;
api.Activities buildActivities() {
  final o = api.Activities();
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed0();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterActivities--;
  return o;
}

void checkActivities(api.Activities o) {
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed0(o.items!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterActivities--;
}

core.int buildCounterActivityActorApplicationInfo = 0;
api.ActivityActorApplicationInfo buildActivityActorApplicationInfo() {
  final o = api.ActivityActorApplicationInfo();
  buildCounterActivityActorApplicationInfo++;
  if (buildCounterActivityActorApplicationInfo < 3) {
    o.applicationName = 'foo';
    o.impersonation = true;
    o.oauthClientId = 'foo';
  }
  buildCounterActivityActorApplicationInfo--;
  return o;
}

void checkActivityActorApplicationInfo(api.ActivityActorApplicationInfo o) {
  buildCounterActivityActorApplicationInfo++;
  if (buildCounterActivityActorApplicationInfo < 3) {
    unittest.expect(o.applicationName!, unittest.equals('foo'));
    unittest.expect(o.impersonation!, unittest.isTrue);
    unittest.expect(o.oauthClientId!, unittest.equals('foo'));
  }
  buildCounterActivityActorApplicationInfo--;
}

core.int buildCounterActivityActor = 0;
api.ActivityActor buildActivityActor() {
  final o = api.ActivityActor();
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
    o.applicationInfo = buildActivityActorApplicationInfo();
    o.callerType = 'foo';
    o.email = 'foo';
    o.key = 'foo';
    o.profileId = 'foo';
  }
  buildCounterActivityActor--;
  return o;
}

void checkActivityActor(api.ActivityActor o) {
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
    checkActivityActorApplicationInfo(o.applicationInfo!);
    unittest.expect(o.callerType!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.profileId!, unittest.equals('foo'));
  }
  buildCounterActivityActor--;
}

core.List<api.NestedParameter> buildUnnamed1() => [
  buildNestedParameter(),
  buildNestedParameter(),
];

void checkUnnamed1(core.List<api.NestedParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestedParameter(o[0]);
  checkNestedParameter(o[1]);
}

core.int buildCounterActivityEventsParametersMessageValue = 0;
api.ActivityEventsParametersMessageValue
buildActivityEventsParametersMessageValue() {
  final o = api.ActivityEventsParametersMessageValue();
  buildCounterActivityEventsParametersMessageValue++;
  if (buildCounterActivityEventsParametersMessageValue < 3) {
    o.parameter = buildUnnamed1();
  }
  buildCounterActivityEventsParametersMessageValue--;
  return o;
}

void checkActivityEventsParametersMessageValue(
  api.ActivityEventsParametersMessageValue o,
) {
  buildCounterActivityEventsParametersMessageValue++;
  if (buildCounterActivityEventsParametersMessageValue < 3) {
    checkUnnamed1(o.parameter!);
  }
  buildCounterActivityEventsParametersMessageValue--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NestedParameter> buildUnnamed3() => [
  buildNestedParameter(),
  buildNestedParameter(),
];

void checkUnnamed3(core.List<api.NestedParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestedParameter(o[0]);
  checkNestedParameter(o[1]);
}

core.int buildCounterActivityEventsParametersMultiMessageValue = 0;
api.ActivityEventsParametersMultiMessageValue
buildActivityEventsParametersMultiMessageValue() {
  final o = api.ActivityEventsParametersMultiMessageValue();
  buildCounterActivityEventsParametersMultiMessageValue++;
  if (buildCounterActivityEventsParametersMultiMessageValue < 3) {
    o.parameter = buildUnnamed3();
  }
  buildCounterActivityEventsParametersMultiMessageValue--;
  return o;
}

void checkActivityEventsParametersMultiMessageValue(
  api.ActivityEventsParametersMultiMessageValue o,
) {
  buildCounterActivityEventsParametersMultiMessageValue++;
  if (buildCounterActivityEventsParametersMultiMessageValue < 3) {
    checkUnnamed3(o.parameter!);
  }
  buildCounterActivityEventsParametersMultiMessageValue--;
}

core.List<api.ActivityEventsParametersMultiMessageValue> buildUnnamed4() => [
  buildActivityEventsParametersMultiMessageValue(),
  buildActivityEventsParametersMultiMessageValue(),
];

void checkUnnamed4(core.List<api.ActivityEventsParametersMultiMessageValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEventsParametersMultiMessageValue(o[0]);
  checkActivityEventsParametersMultiMessageValue(o[1]);
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityEventsParameters = 0;
api.ActivityEventsParameters buildActivityEventsParameters() {
  final o = api.ActivityEventsParameters();
  buildCounterActivityEventsParameters++;
  if (buildCounterActivityEventsParameters < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.messageValue = buildActivityEventsParametersMessageValue();
    o.multiIntValue = buildUnnamed2();
    o.multiMessageValue = buildUnnamed4();
    o.multiValue = buildUnnamed5();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterActivityEventsParameters--;
  return o;
}

void checkActivityEventsParameters(api.ActivityEventsParameters o) {
  buildCounterActivityEventsParameters++;
  if (buildCounterActivityEventsParameters < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    checkActivityEventsParametersMessageValue(o.messageValue!);
    checkUnnamed2(o.multiIntValue!);
    checkUnnamed4(o.multiMessageValue!);
    checkUnnamed5(o.multiValue!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterActivityEventsParameters--;
}

core.List<api.ActivityEventsParameters> buildUnnamed6() => [
  buildActivityEventsParameters(),
  buildActivityEventsParameters(),
];

void checkUnnamed6(core.List<api.ActivityEventsParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEventsParameters(o[0]);
  checkActivityEventsParameters(o[1]);
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NestedParameter> buildUnnamed8() => [
  buildNestedParameter(),
  buildNestedParameter(),
];

void checkUnnamed8(core.List<api.NestedParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestedParameter(o[0]);
  checkNestedParameter(o[1]);
}

core.int buildCounterActivityEventsSensitiveParametersMessageValue = 0;
api.ActivityEventsSensitiveParametersMessageValue
buildActivityEventsSensitiveParametersMessageValue() {
  final o = api.ActivityEventsSensitiveParametersMessageValue();
  buildCounterActivityEventsSensitiveParametersMessageValue++;
  if (buildCounterActivityEventsSensitiveParametersMessageValue < 3) {
    o.parameter = buildUnnamed8();
  }
  buildCounterActivityEventsSensitiveParametersMessageValue--;
  return o;
}

void checkActivityEventsSensitiveParametersMessageValue(
  api.ActivityEventsSensitiveParametersMessageValue o,
) {
  buildCounterActivityEventsSensitiveParametersMessageValue++;
  if (buildCounterActivityEventsSensitiveParametersMessageValue < 3) {
    checkUnnamed8(o.parameter!);
  }
  buildCounterActivityEventsSensitiveParametersMessageValue--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.NestedParameter> buildUnnamed10() => [
  buildNestedParameter(),
  buildNestedParameter(),
];

void checkUnnamed10(core.List<api.NestedParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestedParameter(o[0]);
  checkNestedParameter(o[1]);
}

core.int buildCounterActivityEventsSensitiveParametersMultiMessageValue = 0;
api.ActivityEventsSensitiveParametersMultiMessageValue
buildActivityEventsSensitiveParametersMultiMessageValue() {
  final o = api.ActivityEventsSensitiveParametersMultiMessageValue();
  buildCounterActivityEventsSensitiveParametersMultiMessageValue++;
  if (buildCounterActivityEventsSensitiveParametersMultiMessageValue < 3) {
    o.parameter = buildUnnamed10();
  }
  buildCounterActivityEventsSensitiveParametersMultiMessageValue--;
  return o;
}

void checkActivityEventsSensitiveParametersMultiMessageValue(
  api.ActivityEventsSensitiveParametersMultiMessageValue o,
) {
  buildCounterActivityEventsSensitiveParametersMultiMessageValue++;
  if (buildCounterActivityEventsSensitiveParametersMultiMessageValue < 3) {
    checkUnnamed10(o.parameter!);
  }
  buildCounterActivityEventsSensitiveParametersMultiMessageValue--;
}

core.List<api.ActivityEventsSensitiveParametersMultiMessageValue>
buildUnnamed11() => [
  buildActivityEventsSensitiveParametersMultiMessageValue(),
  buildActivityEventsSensitiveParametersMultiMessageValue(),
];

void checkUnnamed11(
  core.List<api.ActivityEventsSensitiveParametersMultiMessageValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEventsSensitiveParametersMultiMessageValue(o[0]);
  checkActivityEventsSensitiveParametersMultiMessageValue(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityEventsSensitiveParameters = 0;
api.ActivityEventsSensitiveParameters buildActivityEventsSensitiveParameters() {
  final o = api.ActivityEventsSensitiveParameters();
  buildCounterActivityEventsSensitiveParameters++;
  if (buildCounterActivityEventsSensitiveParameters < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.messageValue = buildActivityEventsSensitiveParametersMessageValue();
    o.multiIntValue = buildUnnamed9();
    o.multiMessageValue = buildUnnamed11();
    o.multiValue = buildUnnamed12();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterActivityEventsSensitiveParameters--;
  return o;
}

void checkActivityEventsSensitiveParameters(
  api.ActivityEventsSensitiveParameters o,
) {
  buildCounterActivityEventsSensitiveParameters++;
  if (buildCounterActivityEventsSensitiveParameters < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    checkActivityEventsSensitiveParametersMessageValue(o.messageValue!);
    checkUnnamed9(o.multiIntValue!);
    checkUnnamed11(o.multiMessageValue!);
    checkUnnamed12(o.multiValue!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterActivityEventsSensitiveParameters--;
}

core.List<api.ActivityEventsSensitiveParameters> buildUnnamed13() => [
  buildActivityEventsSensitiveParameters(),
  buildActivityEventsSensitiveParameters(),
];

void checkUnnamed13(core.List<api.ActivityEventsSensitiveParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEventsSensitiveParameters(o[0]);
  checkActivityEventsSensitiveParameters(o[1]);
}

core.int buildCounterActivityEvents = 0;
api.ActivityEvents buildActivityEvents() {
  final o = api.ActivityEvents();
  buildCounterActivityEvents++;
  if (buildCounterActivityEvents < 3) {
    o.name = 'foo';
    o.parameters = buildUnnamed6();
    o.resourceIds = buildUnnamed7();
    o.sensitiveParameters = buildUnnamed13();
    o.status = buildActivityEventsStatus();
    o.type = 'foo';
  }
  buildCounterActivityEvents--;
  return o;
}

void checkActivityEvents(api.ActivityEvents o) {
  buildCounterActivityEvents++;
  if (buildCounterActivityEvents < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed6(o.parameters!);
    checkUnnamed7(o.resourceIds!);
    checkUnnamed13(o.sensitiveParameters!);
    checkActivityEventsStatus(o.status!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterActivityEvents--;
}

core.List<api.ActivityEvents> buildUnnamed14() => [
  buildActivityEvents(),
  buildActivityEvents(),
];

void checkUnnamed14(core.List<api.ActivityEvents> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityEvents(o[0]);
  checkActivityEvents(o[1]);
}

core.int buildCounterActivityId = 0;
api.ActivityId buildActivityId() {
  final o = api.ActivityId();
  buildCounterActivityId++;
  if (buildCounterActivityId < 3) {
    o.applicationName = 'foo';
    o.customerId = 'foo';
    o.time = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.uniqueQualifier = 'foo';
  }
  buildCounterActivityId--;
  return o;
}

void checkActivityId(api.ActivityId o) {
  buildCounterActivityId++;
  if (buildCounterActivityId < 3) {
    unittest.expect(o.applicationName!, unittest.equals('foo'));
    unittest.expect(o.customerId!, unittest.equals('foo'));
    unittest.expect(
      o.time!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.uniqueQualifier!, unittest.equals('foo'));
  }
  buildCounterActivityId--;
}

core.List<api.ResourceDetails> buildUnnamed15() => [
  buildResourceDetails(),
  buildResourceDetails(),
];

void checkUnnamed15(core.List<api.ResourceDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDetails(o[0]);
  checkResourceDetails(o[1]);
}

core.int buildCounterActivity = 0;
api.Activity buildActivity() {
  final o = api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.actor = buildActivityActor();
    o.etag = 'foo';
    o.events = buildUnnamed14();
    o.id = buildActivityId();
    o.ipAddress = 'foo';
    o.kind = 'foo';
    o.networkInfo = buildActivityNetworkInfo();
    o.ownerDomain = 'foo';
    o.resourceDetails = buildUnnamed15();
  }
  buildCounterActivity--;
  return o;
}

void checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkActivityActor(o.actor!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed14(o.events!);
    checkActivityId(o.id!);
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkActivityNetworkInfo(o.networkInfo!);
    unittest.expect(o.ownerDomain!, unittest.equals('foo'));
    checkUnnamed15(o.resourceDetails!);
  }
  buildCounterActivity--;
}

core.int buildCounterActivityEventsStatus = 0;
api.ActivityEventsStatus buildActivityEventsStatus() {
  final o = api.ActivityEventsStatus();
  buildCounterActivityEventsStatus++;
  if (buildCounterActivityEventsStatus < 3) {
    o.errorCode = 'foo';
    o.errorMessage = 'foo';
    o.eventStatus = 'foo';
    o.httpStatusCode = 42;
  }
  buildCounterActivityEventsStatus--;
  return o;
}

void checkActivityEventsStatus(api.ActivityEventsStatus o) {
  buildCounterActivityEventsStatus++;
  if (buildCounterActivityEventsStatus < 3) {
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.eventStatus!, unittest.equals('foo'));
    unittest.expect(o.httpStatusCode!, unittest.equals(42));
  }
  buildCounterActivityEventsStatus--;
}

core.List<core.int> buildUnnamed16() => [42, 42];

void checkUnnamed16(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterActivityNetworkInfo = 0;
api.ActivityNetworkInfo buildActivityNetworkInfo() {
  final o = api.ActivityNetworkInfo();
  buildCounterActivityNetworkInfo++;
  if (buildCounterActivityNetworkInfo < 3) {
    o.ipAsn = buildUnnamed16();
    o.regionCode = 'foo';
    o.subdivisionCode = 'foo';
  }
  buildCounterActivityNetworkInfo--;
  return o;
}

void checkActivityNetworkInfo(api.ActivityNetworkInfo o) {
  buildCounterActivityNetworkInfo++;
  if (buildCounterActivityNetworkInfo < 3) {
    checkUnnamed16(o.ipAsn!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.subdivisionCode!, unittest.equals('foo'));
  }
  buildCounterActivityNetworkInfo--;
}

core.List<api.FieldValue> buildUnnamed17() => [
  buildFieldValue(),
  buildFieldValue(),
];

void checkUnnamed17(core.List<api.FieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldValue(o[0]);
  checkFieldValue(o[1]);
}

core.int buildCounterAppliedLabel = 0;
api.AppliedLabel buildAppliedLabel() {
  final o = api.AppliedLabel();
  buildCounterAppliedLabel++;
  if (buildCounterAppliedLabel < 3) {
    o.fieldValues = buildUnnamed17();
    o.id = 'foo';
    o.reason = buildReason();
    o.title = 'foo';
  }
  buildCounterAppliedLabel--;
  return o;
}

void checkAppliedLabel(api.AppliedLabel o) {
  buildCounterAppliedLabel++;
  if (buildCounterAppliedLabel < 3) {
    checkUnnamed17(o.fieldValues!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkReason(o.reason!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAppliedLabel--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed18();
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
    unittest.expect(o.address!, unittest.equals('foo'));
    unittest.expect(o.expiration!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed18(o.params!);
    unittest.expect(o.payload!, unittest.isTrue);
    unittest.expect(o.resourceId!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterCustomerIdentity = 0;
api.CustomerIdentity buildCustomerIdentity() {
  final o = api.CustomerIdentity();
  buildCounterCustomerIdentity++;
  if (buildCounterCustomerIdentity < 3) {
    o.id = 'foo';
  }
  buildCounterCustomerIdentity--;
  return o;
}

void checkCustomerIdentity(api.CustomerIdentity o) {
  buildCounterCustomerIdentity++;
  if (buildCounterCustomerIdentity < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterCustomerIdentity--;
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterFieldValue = 0;
api.FieldValue buildFieldValue() {
  final o = api.FieldValue();
  buildCounterFieldValue++;
  if (buildCounterFieldValue < 3) {
    o.dateValue = buildDate();
    o.displayName = 'foo';
    o.id = 'foo';
    o.integerValue = 'foo';
    o.longTextValue = 'foo';
    o.reason = buildReason();
    o.selectionListValue = buildFieldValueSelectionListValue();
    o.selectionValue = buildFieldValueSelectionValue();
    o.textListValue = buildFieldValueTextListValue();
    o.textValue = 'foo';
    o.type = 'foo';
    o.unsetValue = true;
    o.userListValue = buildFieldValueUserListValue();
    o.userValue = buildFieldValueUserValue();
  }
  buildCounterFieldValue--;
  return o;
}

void checkFieldValue(api.FieldValue o) {
  buildCounterFieldValue++;
  if (buildCounterFieldValue < 3) {
    checkDate(o.dateValue!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.integerValue!, unittest.equals('foo'));
    unittest.expect(o.longTextValue!, unittest.equals('foo'));
    checkReason(o.reason!);
    checkFieldValueSelectionListValue(o.selectionListValue!);
    checkFieldValueSelectionValue(o.selectionValue!);
    checkFieldValueTextListValue(o.textListValue!);
    unittest.expect(o.textValue!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.unsetValue!, unittest.isTrue);
    checkFieldValueUserListValue(o.userListValue!);
    checkFieldValueUserValue(o.userValue!);
  }
  buildCounterFieldValue--;
}

core.List<api.FieldValueSelectionValue> buildUnnamed19() => [
  buildFieldValueSelectionValue(),
  buildFieldValueSelectionValue(),
];

void checkUnnamed19(core.List<api.FieldValueSelectionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldValueSelectionValue(o[0]);
  checkFieldValueSelectionValue(o[1]);
}

core.int buildCounterFieldValueSelectionListValue = 0;
api.FieldValueSelectionListValue buildFieldValueSelectionListValue() {
  final o = api.FieldValueSelectionListValue();
  buildCounterFieldValueSelectionListValue++;
  if (buildCounterFieldValueSelectionListValue < 3) {
    o.values = buildUnnamed19();
  }
  buildCounterFieldValueSelectionListValue--;
  return o;
}

void checkFieldValueSelectionListValue(api.FieldValueSelectionListValue o) {
  buildCounterFieldValueSelectionListValue++;
  if (buildCounterFieldValueSelectionListValue < 3) {
    checkUnnamed19(o.values!);
  }
  buildCounterFieldValueSelectionListValue--;
}

core.int buildCounterFieldValueSelectionValue = 0;
api.FieldValueSelectionValue buildFieldValueSelectionValue() {
  final o = api.FieldValueSelectionValue();
  buildCounterFieldValueSelectionValue++;
  if (buildCounterFieldValueSelectionValue < 3) {
    o.badged = true;
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterFieldValueSelectionValue--;
  return o;
}

void checkFieldValueSelectionValue(api.FieldValueSelectionValue o) {
  buildCounterFieldValueSelectionValue++;
  if (buildCounterFieldValueSelectionValue < 3) {
    unittest.expect(o.badged!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterFieldValueSelectionValue--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFieldValueTextListValue = 0;
api.FieldValueTextListValue buildFieldValueTextListValue() {
  final o = api.FieldValueTextListValue();
  buildCounterFieldValueTextListValue++;
  if (buildCounterFieldValueTextListValue < 3) {
    o.values = buildUnnamed20();
  }
  buildCounterFieldValueTextListValue--;
  return o;
}

void checkFieldValueTextListValue(api.FieldValueTextListValue o) {
  buildCounterFieldValueTextListValue++;
  if (buildCounterFieldValueTextListValue < 3) {
    checkUnnamed20(o.values!);
  }
  buildCounterFieldValueTextListValue--;
}

core.List<api.FieldValueUserValue> buildUnnamed21() => [
  buildFieldValueUserValue(),
  buildFieldValueUserValue(),
];

void checkUnnamed21(core.List<api.FieldValueUserValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldValueUserValue(o[0]);
  checkFieldValueUserValue(o[1]);
}

core.int buildCounterFieldValueUserListValue = 0;
api.FieldValueUserListValue buildFieldValueUserListValue() {
  final o = api.FieldValueUserListValue();
  buildCounterFieldValueUserListValue++;
  if (buildCounterFieldValueUserListValue < 3) {
    o.values = buildUnnamed21();
  }
  buildCounterFieldValueUserListValue--;
  return o;
}

void checkFieldValueUserListValue(api.FieldValueUserListValue o) {
  buildCounterFieldValueUserListValue++;
  if (buildCounterFieldValueUserListValue < 3) {
    checkUnnamed21(o.values!);
  }
  buildCounterFieldValueUserListValue--;
}

core.int buildCounterFieldValueUserValue = 0;
api.FieldValueUserValue buildFieldValueUserValue() {
  final o = api.FieldValueUserValue();
  buildCounterFieldValueUserValue++;
  if (buildCounterFieldValueUserValue < 3) {
    o.email = 'foo';
  }
  buildCounterFieldValueUserValue--;
  return o;
}

void checkFieldValueUserValue(api.FieldValueUserValue o) {
  buildCounterFieldValueUserValue++;
  if (buildCounterFieldValueUserValue < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterFieldValueUserValue--;
}

core.int buildCounterGroupIdentity = 0;
api.GroupIdentity buildGroupIdentity() {
  final o = api.GroupIdentity();
  buildCounterGroupIdentity++;
  if (buildCounterGroupIdentity < 3) {
    o.groupEmail = 'foo';
    o.id = 'foo';
  }
  buildCounterGroupIdentity--;
  return o;
}

void checkGroupIdentity(api.GroupIdentity o) {
  buildCounterGroupIdentity++;
  if (buildCounterGroupIdentity < 3) {
    unittest.expect(o.groupEmail!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGroupIdentity--;
}

core.List<core.bool> buildUnnamed22() => [true, true];

void checkUnnamed22(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNestedParameter = 0;
api.NestedParameter buildNestedParameter() {
  final o = api.NestedParameter();
  buildCounterNestedParameter++;
  if (buildCounterNestedParameter < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.multiBoolValue = buildUnnamed22();
    o.multiIntValue = buildUnnamed23();
    o.multiValue = buildUnnamed24();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterNestedParameter--;
  return o;
}

void checkNestedParameter(api.NestedParameter o) {
  buildCounterNestedParameter++;
  if (buildCounterNestedParameter < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    checkUnnamed22(o.multiBoolValue!);
    checkUnnamed23(o.multiIntValue!);
    checkUnnamed24(o.multiValue!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterNestedParameter--;
}

core.List<api.OwnerIdentity> buildUnnamed25() => [
  buildOwnerIdentity(),
  buildOwnerIdentity(),
];

void checkUnnamed25(core.List<api.OwnerIdentity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOwnerIdentity(o[0]);
  checkOwnerIdentity(o[1]);
}

core.int buildCounterOwnerDetails = 0;
api.OwnerDetails buildOwnerDetails() {
  final o = api.OwnerDetails();
  buildCounterOwnerDetails++;
  if (buildCounterOwnerDetails < 3) {
    o.ownerIdentity = buildUnnamed25();
    o.ownerType = 'foo';
  }
  buildCounterOwnerDetails--;
  return o;
}

void checkOwnerDetails(api.OwnerDetails o) {
  buildCounterOwnerDetails++;
  if (buildCounterOwnerDetails < 3) {
    checkUnnamed25(o.ownerIdentity!);
    unittest.expect(o.ownerType!, unittest.equals('foo'));
  }
  buildCounterOwnerDetails--;
}

core.int buildCounterOwnerIdentity = 0;
api.OwnerIdentity buildOwnerIdentity() {
  final o = api.OwnerIdentity();
  buildCounterOwnerIdentity++;
  if (buildCounterOwnerIdentity < 3) {
    o.customerIdentity = buildCustomerIdentity();
    o.groupIdentity = buildGroupIdentity();
    o.userIdentity = buildUserIdentity();
  }
  buildCounterOwnerIdentity--;
  return o;
}

void checkOwnerIdentity(api.OwnerIdentity o) {
  buildCounterOwnerIdentity++;
  if (buildCounterOwnerIdentity < 3) {
    checkCustomerIdentity(o.customerIdentity!);
    checkGroupIdentity(o.groupIdentity!);
    checkUserIdentity(o.userIdentity!);
  }
  buildCounterOwnerIdentity--;
}

core.int buildCounterReason = 0;
api.Reason buildReason() {
  final o = api.Reason();
  buildCounterReason++;
  if (buildCounterReason < 3) {
    o.reasonType = 'foo';
  }
  buildCounterReason--;
  return o;
}

void checkReason(api.Reason o) {
  buildCounterReason++;
  if (buildCounterReason < 3) {
    unittest.expect(o.reasonType!, unittest.equals('foo'));
  }
  buildCounterReason--;
}

core.List<api.AppliedLabel> buildUnnamed26() => [
  buildAppliedLabel(),
  buildAppliedLabel(),
];

void checkUnnamed26(core.List<api.AppliedLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppliedLabel(o[0]);
  checkAppliedLabel(o[1]);
}

core.int buildCounterResourceDetails = 0;
api.ResourceDetails buildResourceDetails() {
  final o = api.ResourceDetails();
  buildCounterResourceDetails++;
  if (buildCounterResourceDetails < 3) {
    o.appliedLabels = buildUnnamed26();
    o.id = 'foo';
    o.ownerDetails = buildOwnerDetails();
    o.relation = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterResourceDetails--;
  return o;
}

void checkResourceDetails(api.ResourceDetails o) {
  buildCounterResourceDetails++;
  if (buildCounterResourceDetails < 3) {
    checkUnnamed26(o.appliedLabels!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkOwnerDetails(o.ownerDetails!);
    unittest.expect(o.relation!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterResourceDetails--;
}

core.int buildCounterUsageReportEntity = 0;
api.UsageReportEntity buildUsageReportEntity() {
  final o = api.UsageReportEntity();
  buildCounterUsageReportEntity++;
  if (buildCounterUsageReportEntity < 3) {
    o.customerId = 'foo';
    o.entityId = 'foo';
    o.profileId = 'foo';
    o.type = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterUsageReportEntity--;
  return o;
}

void checkUsageReportEntity(api.UsageReportEntity o) {
  buildCounterUsageReportEntity++;
  if (buildCounterUsageReportEntity < 3) {
    unittest.expect(o.customerId!, unittest.equals('foo'));
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.profileId!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterUsageReportEntity--;
}

core.Map<core.String, core.Object?> buildUnnamed27() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed27(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed28() => [
  buildUnnamed27(),
  buildUnnamed27(),
];

void checkUnnamed28(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed27(o[0]);
  checkUnnamed27(o[1]);
}

core.int buildCounterUsageReportParameters = 0;
api.UsageReportParameters buildUsageReportParameters() {
  final o = api.UsageReportParameters();
  buildCounterUsageReportParameters++;
  if (buildCounterUsageReportParameters < 3) {
    o.boolValue = true;
    o.datetimeValue = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.intValue = 'foo';
    o.msgValue = buildUnnamed28();
    o.name = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterUsageReportParameters--;
  return o;
}

void checkUsageReportParameters(api.UsageReportParameters o) {
  buildCounterUsageReportParameters++;
  if (buildCounterUsageReportParameters < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.datetimeValue!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.intValue!, unittest.equals('foo'));
    checkUnnamed28(o.msgValue!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterUsageReportParameters--;
}

core.List<api.UsageReportParameters> buildUnnamed29() => [
  buildUsageReportParameters(),
  buildUsageReportParameters(),
];

void checkUnnamed29(core.List<api.UsageReportParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReportParameters(o[0]);
  checkUsageReportParameters(o[1]);
}

core.int buildCounterUsageReport = 0;
api.UsageReport buildUsageReport() {
  final o = api.UsageReport();
  buildCounterUsageReport++;
  if (buildCounterUsageReport < 3) {
    o.date = 'foo';
    o.entity = buildUsageReportEntity();
    o.etag = 'foo';
    o.kind = 'foo';
    o.parameters = buildUnnamed29();
  }
  buildCounterUsageReport--;
  return o;
}

void checkUsageReport(api.UsageReport o) {
  buildCounterUsageReport++;
  if (buildCounterUsageReport < 3) {
    unittest.expect(o.date!, unittest.equals('foo'));
    checkUsageReportEntity(o.entity!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed29(o.parameters!);
  }
  buildCounterUsageReport--;
}

core.List<api.UsageReport> buildUnnamed30() => [
  buildUsageReport(),
  buildUsageReport(),
];

void checkUnnamed30(core.List<api.UsageReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReport(o[0]);
  checkUsageReport(o[1]);
}

core.int buildCounterUsageReportsWarningsData = 0;
api.UsageReportsWarningsData buildUsageReportsWarningsData() {
  final o = api.UsageReportsWarningsData();
  buildCounterUsageReportsWarningsData++;
  if (buildCounterUsageReportsWarningsData < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterUsageReportsWarningsData--;
  return o;
}

void checkUsageReportsWarningsData(api.UsageReportsWarningsData o) {
  buildCounterUsageReportsWarningsData++;
  if (buildCounterUsageReportsWarningsData < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterUsageReportsWarningsData--;
}

core.List<api.UsageReportsWarningsData> buildUnnamed31() => [
  buildUsageReportsWarningsData(),
  buildUsageReportsWarningsData(),
];

void checkUnnamed31(core.List<api.UsageReportsWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReportsWarningsData(o[0]);
  checkUsageReportsWarningsData(o[1]);
}

core.int buildCounterUsageReportsWarnings = 0;
api.UsageReportsWarnings buildUsageReportsWarnings() {
  final o = api.UsageReportsWarnings();
  buildCounterUsageReportsWarnings++;
  if (buildCounterUsageReportsWarnings < 3) {
    o.code = 'foo';
    o.data = buildUnnamed31();
    o.message = 'foo';
  }
  buildCounterUsageReportsWarnings--;
  return o;
}

void checkUsageReportsWarnings(api.UsageReportsWarnings o) {
  buildCounterUsageReportsWarnings++;
  if (buildCounterUsageReportsWarnings < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    checkUnnamed31(o.data!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterUsageReportsWarnings--;
}

core.List<api.UsageReportsWarnings> buildUnnamed32() => [
  buildUsageReportsWarnings(),
  buildUsageReportsWarnings(),
];

void checkUnnamed32(core.List<api.UsageReportsWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageReportsWarnings(o[0]);
  checkUsageReportsWarnings(o[1]);
}

core.int buildCounterUsageReports = 0;
api.UsageReports buildUsageReports() {
  final o = api.UsageReports();
  buildCounterUsageReports++;
  if (buildCounterUsageReports < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.usageReports = buildUnnamed30();
    o.warnings = buildUnnamed32();
  }
  buildCounterUsageReports--;
  return o;
}

void checkUsageReports(api.UsageReports o) {
  buildCounterUsageReports++;
  if (buildCounterUsageReports < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.usageReports!);
    checkUnnamed32(o.warnings!);
  }
  buildCounterUsageReports--;
}

core.int buildCounterUserIdentity = 0;
api.UserIdentity buildUserIdentity() {
  final o = api.UserIdentity();
  buildCounterUserIdentity++;
  if (buildCounterUserIdentity < 3) {
    o.id = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterUserIdentity--;
  return o;
}

void checkUserIdentity(api.UserIdentity o) {
  buildCounterUserIdentity++;
  if (buildCounterUserIdentity < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterUserIdentity--;
}

void main() {
  unittest.group('obj-schema-Activities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Activities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivities(od);
    });
  });

  unittest.group('obj-schema-ActivityActorApplicationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityActorApplicationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityActorApplicationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityActorApplicationInfo(od);
    });
  });

  unittest.group('obj-schema-ActivityActor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityActor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityActor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityActor(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsParametersMessageValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsParametersMessageValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsParametersMessageValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityEventsParametersMessageValue(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsParametersMultiMessageValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsParametersMultiMessageValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsParametersMultiMessageValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityEventsParametersMultiMessageValue(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityEventsParameters(od);
    });
  });

  unittest.group(
    'obj-schema-ActivityEventsSensitiveParametersMessageValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildActivityEventsSensitiveParametersMessageValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ActivityEventsSensitiveParametersMessageValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkActivityEventsSensitiveParametersMessageValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-ActivityEventsSensitiveParametersMultiMessageValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildActivityEventsSensitiveParametersMultiMessageValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.ActivityEventsSensitiveParametersMultiMessageValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkActivityEventsSensitiveParametersMultiMessageValue(od);
      });
    },
  );

  unittest.group('obj-schema-ActivityEventsSensitiveParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsSensitiveParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsSensitiveParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityEventsSensitiveParameters(od);
    });
  });

  unittest.group('obj-schema-ActivityEvents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEvents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEvents.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityEvents(od);
    });
  });

  unittest.group('obj-schema-ActivityId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityId(od);
    });
  });

  unittest.group('obj-schema-Activity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Activity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivity(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityEventsStatus(od);
    });
  });

  unittest.group('obj-schema-ActivityNetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityNetworkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivityNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-AppliedLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppliedLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppliedLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppliedLabel(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Channel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-CustomerIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerIdentity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomerIdentity(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-FieldValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldValue(od);
    });
  });

  unittest.group('obj-schema-FieldValueSelectionListValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldValueSelectionListValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldValueSelectionListValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldValueSelectionListValue(od);
    });
  });

  unittest.group('obj-schema-FieldValueSelectionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldValueSelectionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldValueSelectionValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldValueSelectionValue(od);
    });
  });

  unittest.group('obj-schema-FieldValueTextListValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldValueTextListValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldValueTextListValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldValueTextListValue(od);
    });
  });

  unittest.group('obj-schema-FieldValueUserListValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldValueUserListValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldValueUserListValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldValueUserListValue(od);
    });
  });

  unittest.group('obj-schema-FieldValueUserValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldValueUserValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldValueUserValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldValueUserValue(od);
    });
  });

  unittest.group('obj-schema-GroupIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupIdentity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupIdentity(od);
    });
  });

  unittest.group('obj-schema-NestedParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestedParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestedParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNestedParameter(od);
    });
  });

  unittest.group('obj-schema-OwnerDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOwnerDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OwnerDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOwnerDetails(od);
    });
  });

  unittest.group('obj-schema-OwnerIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOwnerIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OwnerIdentity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOwnerIdentity(od);
    });
  });

  unittest.group('obj-schema-Reason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Reason.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReason(od);
    });
  });

  unittest.group('obj-schema-ResourceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceDetails(od);
    });
  });

  unittest.group('obj-schema-UsageReportEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportEntity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageReportEntity(od);
    });
  });

  unittest.group('obj-schema-UsageReportParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageReportParameters(od);
    });
  });

  unittest.group('obj-schema-UsageReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageReport(od);
    });
  });

  unittest.group('obj-schema-UsageReportsWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportsWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportsWarningsData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageReportsWarningsData(od);
    });
  });

  unittest.group('obj-schema-UsageReportsWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportsWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportsWarnings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageReportsWarnings(od);
    });
  });

  unittest.group('obj-schema-UsageReports', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReports();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReports.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageReports(od);
    });
  });

  unittest.group('obj-schema-UserIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserIdentity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserIdentity(od);
    });
  });

  unittest.group('resource-ActivitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).activities;
      final arg_userKey = 'foo';
      final arg_applicationName = 'foo';
      final arg_actorIpAddress = 'foo';
      final arg_applicationInfoFilter = 'foo';
      final arg_customerId = 'foo';
      final arg_endTime = 'foo';
      final arg_eventName = 'foo';
      final arg_filters = 'foo';
      final arg_groupIdFilter = 'foo';
      final arg_includeSensitiveData = true;
      final arg_maxResults = 42;
      final arg_networkInfoFilter = 'foo';
      final arg_orgUnitID = 'foo';
      final arg_pageToken = 'foo';
      final arg_resourceDetailsFilter = 'foo';
      final arg_startTime = 'foo';
      final arg_statusFilter = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('admin/reports/v1/activity/users/'),
          );
          pathOffset += 32;
          index = path.indexOf('/applications/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_userKey'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/applications/'),
          );
          pathOffset += 14;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_applicationName'));

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
            queryMap['actorIpAddress']!.first,
            unittest.equals(arg_actorIpAddress),
          );
          unittest.expect(
            queryMap['applicationInfoFilter']!.first,
            unittest.equals(arg_applicationInfoFilter),
          );
          unittest.expect(
            queryMap['customerId']!.first,
            unittest.equals(arg_customerId),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['eventName']!.first,
            unittest.equals(arg_eventName),
          );
          unittest.expect(
            queryMap['filters']!.first,
            unittest.equals(arg_filters),
          );
          unittest.expect(
            queryMap['groupIdFilter']!.first,
            unittest.equals(arg_groupIdFilter),
          );
          unittest.expect(
            queryMap['includeSensitiveData']!.first,
            unittest.equals('$arg_includeSensitiveData'),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['networkInfoFilter']!.first,
            unittest.equals(arg_networkInfoFilter),
          );
          unittest.expect(
            queryMap['orgUnitID']!.first,
            unittest.equals(arg_orgUnitID),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['resourceDetailsFilter']!.first,
            unittest.equals(arg_resourceDetailsFilter),
          );
          unittest.expect(
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(
            queryMap['statusFilter']!.first,
            unittest.equals(arg_statusFilter),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildActivities());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_userKey,
        arg_applicationName,
        actorIpAddress: arg_actorIpAddress,
        applicationInfoFilter: arg_applicationInfoFilter,
        customerId: arg_customerId,
        endTime: arg_endTime,
        eventName: arg_eventName,
        filters: arg_filters,
        groupIdFilter: arg_groupIdFilter,
        includeSensitiveData: arg_includeSensitiveData,
        maxResults: arg_maxResults,
        networkInfoFilter: arg_networkInfoFilter,
        orgUnitID: arg_orgUnitID,
        pageToken: arg_pageToken,
        resourceDetailsFilter: arg_resourceDetailsFilter,
        startTime: arg_startTime,
        statusFilter: arg_statusFilter,
        $fields: arg_$fields,
      );
      checkActivities(response as api.Activities);
    });

    unittest.test('method--watch', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).activities;
      final arg_request = buildChannel();
      final arg_userKey = 'foo';
      final arg_applicationName = 'foo';
      final arg_actorIpAddress = 'foo';
      final arg_customerId = 'foo';
      final arg_endTime = 'foo';
      final arg_eventName = 'foo';
      final arg_filters = 'foo';
      final arg_groupIdFilter = 'foo';
      final arg_maxResults = 42;
      final arg_orgUnitID = 'foo';
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('admin/reports/v1/activity/users/'),
          );
          pathOffset += 32;
          index = path.indexOf('/applications/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_userKey'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/applications/'),
          );
          pathOffset += 14;
          index = path.indexOf('/watch', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_applicationName'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/watch'),
          );
          pathOffset += 6;

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
            queryMap['actorIpAddress']!.first,
            unittest.equals(arg_actorIpAddress),
          );
          unittest.expect(
            queryMap['customerId']!.first,
            unittest.equals(arg_customerId),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['eventName']!.first,
            unittest.equals(arg_eventName),
          );
          unittest.expect(
            queryMap['filters']!.first,
            unittest.equals(arg_filters),
          );
          unittest.expect(
            queryMap['groupIdFilter']!.first,
            unittest.equals(arg_groupIdFilter),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['orgUnitID']!.first,
            unittest.equals(arg_orgUnitID),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.watch(
        arg_request,
        arg_userKey,
        arg_applicationName,
        actorIpAddress: arg_actorIpAddress,
        customerId: arg_customerId,
        endTime: arg_endTime,
        eventName: arg_eventName,
        filters: arg_filters,
        groupIdFilter: arg_groupIdFilter,
        maxResults: arg_maxResults,
        orgUnitID: arg_orgUnitID,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        $fields: arg_$fields,
      );
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).channels;
      final arg_request = buildChannel();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('admin/reports_v1/channels/stop'),
          );
          pathOffset += 30;

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = '';
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      await res.stop(arg_request, $fields: arg_$fields);
    });
  });

  unittest.group('resource-CustomerUsageReportsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).customerUsageReports;
      final arg_date = 'foo';
      final arg_customerId = 'foo';
      final arg_pageToken = 'foo';
      final arg_parameters = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('admin/reports/v1/usage/dates/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_date'));

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
            queryMap['customerId']!.first,
            unittest.equals(arg_customerId),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['parameters']!.first,
            unittest.equals(arg_parameters),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUsageReports());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_date,
        customerId: arg_customerId,
        pageToken: arg_pageToken,
        parameters: arg_parameters,
        $fields: arg_$fields,
      );
      checkUsageReports(response as api.UsageReports);
    });
  });

  unittest.group('resource-EntityUsageReportsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).entityUsageReports;
      final arg_entityType = 'foo';
      final arg_entityKey = 'foo';
      final arg_date = 'foo';
      final arg_customerId = 'foo';
      final arg_filters = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_parameters = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('admin/reports/v1/usage/'),
          );
          pathOffset += 23;
          index = path.indexOf('/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_entityType'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          index = path.indexOf('/dates/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_entityKey'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('/dates/'),
          );
          pathOffset += 7;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_date'));

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
            queryMap['customerId']!.first,
            unittest.equals(arg_customerId),
          );
          unittest.expect(
            queryMap['filters']!.first,
            unittest.equals(arg_filters),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['parameters']!.first,
            unittest.equals(arg_parameters),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUsageReports());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_entityType,
        arg_entityKey,
        arg_date,
        customerId: arg_customerId,
        filters: arg_filters,
        maxResults: arg_maxResults,
        pageToken: arg_pageToken,
        parameters: arg_parameters,
        $fields: arg_$fields,
      );
      checkUsageReports(response as api.UsageReports);
    });
  });

  unittest.group('resource-UserUsageReportResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).userUsageReport;
      final arg_userKey = 'foo';
      final arg_date = 'foo';
      final arg_customerId = 'foo';
      final arg_filters = 'foo';
      final arg_groupIdFilter = 'foo';
      final arg_maxResults = 42;
      final arg_orgUnitID = 'foo';
      final arg_pageToken = 'foo';
      final arg_parameters = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('admin/reports/v1/usage/users/'),
          );
          pathOffset += 29;
          index = path.indexOf('/dates/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_userKey'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('/dates/'),
          );
          pathOffset += 7;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_date'));

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
            queryMap['customerId']!.first,
            unittest.equals(arg_customerId),
          );
          unittest.expect(
            queryMap['filters']!.first,
            unittest.equals(arg_filters),
          );
          unittest.expect(
            queryMap['groupIdFilter']!.first,
            unittest.equals(arg_groupIdFilter),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['orgUnitID']!.first,
            unittest.equals(arg_orgUnitID),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['parameters']!.first,
            unittest.equals(arg_parameters),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUsageReports());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_userKey,
        arg_date,
        customerId: arg_customerId,
        filters: arg_filters,
        groupIdFilter: arg_groupIdFilter,
        maxResults: arg_maxResults,
        orgUnitID: arg_orgUnitID,
        pageToken: arg_pageToken,
        parameters: arg_parameters,
        $fields: arg_$fields,
      );
      checkUsageReports(response as api.UsageReports);
    });
  });
}
