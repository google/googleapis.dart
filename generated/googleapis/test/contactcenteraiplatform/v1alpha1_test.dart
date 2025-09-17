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

import 'package:googleapis/contactcenteraiplatform/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdminUser = 0;
api.AdminUser buildAdminUser() {
  final o = api.AdminUser();
  buildCounterAdminUser++;
  if (buildCounterAdminUser < 3) {
    o.familyName = 'foo';
    o.givenName = 'foo';
  }
  buildCounterAdminUser--;
  return o;
}

void checkAdminUser(api.AdminUser o) {
  buildCounterAdminUser++;
  if (buildCounterAdminUser < 3) {
    unittest.expect(o.familyName!, unittest.equals('foo'));
    unittest.expect(o.givenName!, unittest.equals('foo'));
  }
  buildCounterAdminUser--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterComponent = 0;
api.Component buildComponent() {
  final o = api.Component();
  buildCounterComponent++;
  if (buildCounterComponent < 3) {
    o.name = 'foo';
    o.serviceAttachmentNames = buildUnnamed0();
  }
  buildCounterComponent--;
  return o;
}

void checkComponent(api.Component o) {
  buildCounterComponent++;
  if (buildCounterComponent < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed0(o.serviceAttachmentNames!);
  }
  buildCounterComponent--;
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContactCenter = 0;
api.ContactCenter buildContactCenter() {
  final o = api.ContactCenter();
  buildCounterContactCenter++;
  if (buildCounterContactCenter < 3) {
    o.adminUser = buildAdminUser();
    o.advancedReportingEnabled = true;
    o.ccaipManagedUsers = true;
    o.createTime = 'foo';
    o.critical = buildCritical();
    o.customerDomainPrefix = 'foo';
    o.displayName = 'foo';
    o.early = buildEarly();
    o.instanceConfig = buildInstanceConfig();
    o.kmsKey = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.normal = buildNormal();
    o.privateAccess = buildPrivateAccess();
    o.privateComponents = buildUnnamed2();
    o.releaseVersion = 'foo';
    o.samlParams = buildSAMLParams();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.uris = buildURIs();
    o.userEmail = 'foo';
  }
  buildCounterContactCenter--;
  return o;
}

void checkContactCenter(api.ContactCenter o) {
  buildCounterContactCenter++;
  if (buildCounterContactCenter < 3) {
    checkAdminUser(o.adminUser!);
    unittest.expect(o.advancedReportingEnabled!, unittest.isTrue);
    unittest.expect(o.ccaipManagedUsers!, unittest.isTrue);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCritical(o.critical!);
    unittest.expect(o.customerDomainPrefix!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkEarly(o.early!);
    checkInstanceConfig(o.instanceConfig!);
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNormal(o.normal!);
    checkPrivateAccess(o.privateAccess!);
    checkUnnamed2(o.privateComponents!);
    unittest.expect(o.releaseVersion!, unittest.equals('foo'));
    checkSAMLParams(o.samlParams!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkURIs(o.uris!);
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterContactCenter--;
}

core.List<api.Quota> buildUnnamed3() => [buildQuota(), buildQuota()];

void checkUnnamed3(core.List<api.Quota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuota(o[0]);
  checkQuota(o[1]);
}

core.int buildCounterContactCenterQuota = 0;
api.ContactCenterQuota buildContactCenterQuota() {
  final o = api.ContactCenterQuota();
  buildCounterContactCenterQuota++;
  if (buildCounterContactCenterQuota < 3) {
    o.contactCenterCountLimit = 42;
    o.contactCenterCountSum = 42;
    o.quotas = buildUnnamed3();
  }
  buildCounterContactCenterQuota--;
  return o;
}

void checkContactCenterQuota(api.ContactCenterQuota o) {
  buildCounterContactCenterQuota++;
  if (buildCounterContactCenterQuota < 3) {
    unittest.expect(o.contactCenterCountLimit!, unittest.equals(42));
    unittest.expect(o.contactCenterCountSum!, unittest.equals(42));
    checkUnnamed3(o.quotas!);
  }
  buildCounterContactCenterQuota--;
}

core.List<api.WeeklySchedule> buildUnnamed4() => [
  buildWeeklySchedule(),
  buildWeeklySchedule(),
];

void checkUnnamed4(core.List<api.WeeklySchedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeeklySchedule(o[0]);
  checkWeeklySchedule(o[1]);
}

core.int buildCounterCritical = 0;
api.Critical buildCritical() {
  final o = api.Critical();
  buildCounterCritical++;
  if (buildCounterCritical < 3) {
    o.peakHours = buildUnnamed4();
  }
  buildCounterCritical--;
  return o;
}

void checkCritical(api.Critical o) {
  buildCounterCritical++;
  if (buildCounterCritical < 3) {
    checkUnnamed4(o.peakHours!);
  }
  buildCounterCritical--;
}

core.int buildCounterEarly = 0;
api.Early buildEarly() {
  final o = api.Early();
  buildCounterEarly++;
  if (buildCounterEarly < 3) {}
  buildCounterEarly--;
  return o;
}

void checkEarly(api.Early o) {
  buildCounterEarly++;
  if (buildCounterEarly < 3) {}
  buildCounterEarly--;
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

core.int buildCounterInstanceConfig = 0;
api.InstanceConfig buildInstanceConfig() {
  final o = api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.instanceSize = 'foo';
  }
  buildCounterInstanceConfig--;
  return o;
}

void checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(o.instanceSize!, unittest.equals('foo'));
  }
  buildCounterInstanceConfig--;
}

core.List<api.ContactCenter> buildUnnamed5() => [
  buildContactCenter(),
  buildContactCenter(),
];

void checkUnnamed5(core.List<api.ContactCenter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactCenter(o[0]);
  checkContactCenter(o[1]);
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListContactCentersResponse = 0;
api.ListContactCentersResponse buildListContactCentersResponse() {
  final o = api.ListContactCentersResponse();
  buildCounterListContactCentersResponse++;
  if (buildCounterListContactCentersResponse < 3) {
    o.contactCenters = buildUnnamed5();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6();
  }
  buildCounterListContactCentersResponse--;
  return o;
}

void checkListContactCentersResponse(api.ListContactCentersResponse o) {
  buildCounterListContactCentersResponse++;
  if (buildCounterListContactCentersResponse < 3) {
    checkUnnamed5(o.contactCenters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.unreachable!);
  }
  buildCounterListContactCentersResponse--;
}

core.List<api.Location> buildUnnamed7() => [buildLocation(), buildLocation()];

void checkUnnamed7(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed8(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed8();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed9();
    o.locationId = 'foo';
    o.metadata = buildUnnamed10();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed9(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed10(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterNormal = 0;
api.Normal buildNormal() {
  final o = api.Normal();
  buildCounterNormal++;
  if (buildCounterNormal < 3) {}
  buildCounterNormal--;
  return o;
}

void checkNormal(api.Normal o) {
  buildCounterNormal++;
  if (buildCounterNormal < 3) {}
  buildCounterNormal--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed11();
    o.name = 'foo';
    o.response = buildUnnamed12();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed11(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed12(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Component> buildUnnamed13() => [
  buildComponent(),
  buildComponent(),
];

void checkUnnamed13(core.List<api.Component> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponent(o[0]);
  checkComponent(o[1]);
}

core.List<api.Component> buildUnnamed14() => [
  buildComponent(),
  buildComponent(),
];

void checkUnnamed14(core.List<api.Component> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponent(o[0]);
  checkComponent(o[1]);
}

core.int buildCounterPrivateAccess = 0;
api.PrivateAccess buildPrivateAccess() {
  final o = api.PrivateAccess();
  buildCounterPrivateAccess++;
  if (buildCounterPrivateAccess < 3) {
    o.egressSettings = buildUnnamed13();
    o.ingressSettings = buildUnnamed14();
    o.pscSetting = buildPscSetting();
  }
  buildCounterPrivateAccess--;
  return o;
}

void checkPrivateAccess(api.PrivateAccess o) {
  buildCounterPrivateAccess++;
  if (buildCounterPrivateAccess < 3) {
    checkUnnamed13(o.egressSettings!);
    checkUnnamed14(o.ingressSettings!);
    checkPscSetting(o.pscSetting!);
  }
  buildCounterPrivateAccess--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPscSetting = 0;
api.PscSetting buildPscSetting() {
  final o = api.PscSetting();
  buildCounterPscSetting++;
  if (buildCounterPscSetting < 3) {
    o.allowedConsumerProjectIds = buildUnnamed15();
    o.producerProjectIds = buildUnnamed16();
  }
  buildCounterPscSetting--;
  return o;
}

void checkPscSetting(api.PscSetting o) {
  buildCounterPscSetting++;
  if (buildCounterPscSetting < 3) {
    checkUnnamed15(o.allowedConsumerProjectIds!);
    checkUnnamed16(o.producerProjectIds!);
  }
  buildCounterPscSetting--;
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  final o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.contactCenterCountLimit = 42;
    o.contactCenterCountSum = 42;
    o.contactCenterInstanceSize = 'foo';
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    unittest.expect(o.contactCenterCountLimit!, unittest.equals(42));
    unittest.expect(o.contactCenterCountSum!, unittest.equals(42));
    unittest.expect(o.contactCenterInstanceSize!, unittest.equals('foo'));
  }
  buildCounterQuota--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSAMLParams = 0;
api.SAMLParams buildSAMLParams() {
  final o = api.SAMLParams();
  buildCounterSAMLParams++;
  if (buildCounterSAMLParams < 3) {
    o.authenticationContexts = buildUnnamed17();
    o.certificate = 'foo';
    o.emailMapping = 'foo';
    o.entityId = 'foo';
    o.ssoUri = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterSAMLParams--;
  return o;
}

void checkSAMLParams(api.SAMLParams o) {
  buildCounterSAMLParams++;
  if (buildCounterSAMLParams < 3) {
    checkUnnamed17(o.authenticationContexts!);
    unittest.expect(o.certificate!, unittest.equals('foo'));
    unittest.expect(o.emailMapping!, unittest.equals('foo'));
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.ssoUri!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterSAMLParams--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
  buildUnnamed18(),
  buildUnnamed18(),
];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed19(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterURIs = 0;
api.URIs buildURIs() {
  final o = api.URIs();
  buildCounterURIs++;
  if (buildCounterURIs < 3) {
    o.chatBotUri = 'foo';
    o.mediaUri = 'foo';
    o.rootUri = 'foo';
    o.virtualAgentStreamingServiceUri = 'foo';
  }
  buildCounterURIs--;
  return o;
}

void checkURIs(api.URIs o) {
  buildCounterURIs++;
  if (buildCounterURIs < 3) {
    unittest.expect(o.chatBotUri!, unittest.equals('foo'));
    unittest.expect(o.mediaUri!, unittest.equals('foo'));
    unittest.expect(o.rootUri!, unittest.equals('foo'));
    unittest.expect(o.virtualAgentStreamingServiceUri!, unittest.equals('foo'));
  }
  buildCounterURIs--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWeeklySchedule = 0;
api.WeeklySchedule buildWeeklySchedule() {
  final o = api.WeeklySchedule();
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    o.days = buildUnnamed20();
    o.duration = 'foo';
    o.endTime = buildTimeOfDay();
    o.startTime = buildTimeOfDay();
  }
  buildCounterWeeklySchedule--;
  return o;
}

void checkWeeklySchedule(api.WeeklySchedule o) {
  buildCounterWeeklySchedule++;
  if (buildCounterWeeklySchedule < 3) {
    checkUnnamed20(o.days!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkTimeOfDay(o.endTime!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterWeeklySchedule--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AdminUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdminUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdminUser.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdminUser(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Component', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Component.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComponent(od);
    });
  });

  unittest.group('obj-schema-ContactCenter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactCenter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactCenter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContactCenter(od);
    });
  });

  unittest.group('obj-schema-ContactCenterQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactCenterQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactCenterQuota.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContactCenterQuota(od);
    });
  });

  unittest.group('obj-schema-Critical', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCritical();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Critical.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCritical(od);
    });
  });

  unittest.group('obj-schema-Early', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEarly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Early.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEarly(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-InstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-ListContactCentersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListContactCentersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListContactCentersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListContactCentersResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Normal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNormal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Normal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNormal(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PrivateAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateAccess.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrivateAccess(od);
    });
  });

  unittest.group('obj-schema-PscSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPscSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PscSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPscSetting(od);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Quota.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuota(od);
    });
  });

  unittest.group('obj-schema-SAMLParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSAMLParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SAMLParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSAMLParams(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-URIs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildURIs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.URIs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkURIs(od);
    });
  });

  unittest.group('obj-schema-WeeklySchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklySchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklySchedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeeklySchedule(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed21();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });

    unittest.test('method--queryContactCenterQuota', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildContactCenterQuota());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryContactCenterQuota(
        arg_parent,
        $fields: arg_$fields,
      );
      checkContactCenterQuota(response as api.ContactCenterQuota);
    });
  });

  unittest.group('resource-ProjectsLocationsContactCentersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.contactCenters;
      final arg_request = buildContactCenter();
      final arg_parent = 'foo';
      final arg_contactCenterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ContactCenter.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkContactCenter(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['contactCenterId']!.first,
            unittest.equals(arg_contactCenterId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        contactCenterId: arg_contactCenterId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.contactCenters;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.contactCenters;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildContactCenter());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkContactCenter(response as api.ContactCenter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.contactCenters;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListContactCentersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListContactCentersResponse(
        response as api.ListContactCentersResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.contactCenters;
      final arg_request = buildContactCenter();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ContactCenter.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkContactCenter(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CCAIPlatformApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
