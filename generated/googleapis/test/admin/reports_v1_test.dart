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

import 'package:googleapis/admin/reports_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Activity> buildUnnamed0() => [
      buildActivity(),
      buildActivity(),
    ];

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
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivities--;
}

core.int buildCounterActivityActor = 0;
api.ActivityActor buildActivityActor() {
  final o = api.ActivityActor();
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
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
    unittest.expect(
      o.callerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
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
    api.ActivityEventsParametersMessageValue o) {
  buildCounterActivityEventsParametersMessageValue++;
  if (buildCounterActivityEventsParametersMessageValue < 3) {
    checkUnnamed1(o.parameter!);
  }
  buildCounterActivityEventsParametersMessageValue--;
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
    api.ActivityEventsParametersMultiMessageValue o) {
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkActivityEventsParametersMessageValue(o.messageValue!);
    checkUnnamed2(o.multiIntValue!);
    checkUnnamed4(o.multiMessageValue!);
    checkUnnamed5(o.multiValue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
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

core.int buildCounterActivityEvents = 0;
api.ActivityEvents buildActivityEvents() {
  final o = api.ActivityEvents();
  buildCounterActivityEvents++;
  if (buildCounterActivityEvents < 3) {
    o.name = 'foo';
    o.parameters = buildUnnamed6();
    o.type = 'foo';
  }
  buildCounterActivityEvents--;
  return o;
}

void checkActivityEvents(api.ActivityEvents o) {
  buildCounterActivityEvents++;
  if (buildCounterActivityEvents < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.parameters!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityEvents--;
}

core.List<api.ActivityEvents> buildUnnamed7() => [
      buildActivityEvents(),
      buildActivityEvents(),
    ];

void checkUnnamed7(core.List<api.ActivityEvents> o) {
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
    unittest.expect(
      o.applicationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.time!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.uniqueQualifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityId--;
}

core.int buildCounterActivity = 0;
api.Activity buildActivity() {
  final o = api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.actor = buildActivityActor();
    o.etag = 'foo';
    o.events = buildUnnamed7();
    o.id = buildActivityId();
    o.ipAddress = 'foo';
    o.kind = 'foo';
    o.ownerDomain = 'foo';
  }
  buildCounterActivity--;
  return o;
}

void checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkActivityActor(o.actor!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.events!);
    checkActivityId(o.id!);
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerDomain!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivity--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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
    o.params = buildUnnamed8();
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
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.params!);
    unittest.expect(o.payload!, unittest.isTrue);
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannel--;
}

core.List<core.bool> buildUnnamed9() => [
      true,
      true,
    ];

void checkUnnamed9(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterNestedParameter = 0;
api.NestedParameter buildNestedParameter() {
  final o = api.NestedParameter();
  buildCounterNestedParameter++;
  if (buildCounterNestedParameter < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.multiBoolValue = buildUnnamed9();
    o.multiIntValue = buildUnnamed10();
    o.multiValue = buildUnnamed11();
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
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.multiBoolValue!);
    checkUnnamed10(o.multiIntValue!);
    checkUnnamed11(o.multiValue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNestedParameter--;
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
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsageReportEntity--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed13() => [
      buildUnnamed12(),
      buildUnnamed12(),
    ];

void checkUnnamed13(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed12(o[0]);
  checkUnnamed12(o[1]);
}

core.int buildCounterUsageReportParameters = 0;
api.UsageReportParameters buildUsageReportParameters() {
  final o = api.UsageReportParameters();
  buildCounterUsageReportParameters++;
  if (buildCounterUsageReportParameters < 3) {
    o.boolValue = true;
    o.datetimeValue = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.intValue = 'foo';
    o.msgValue = buildUnnamed13();
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
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.msgValue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsageReportParameters--;
}

core.List<api.UsageReportParameters> buildUnnamed14() => [
      buildUsageReportParameters(),
      buildUsageReportParameters(),
    ];

void checkUnnamed14(core.List<api.UsageReportParameters> o) {
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
    o.parameters = buildUnnamed14();
  }
  buildCounterUsageReport--;
  return o;
}

void checkUsageReport(api.UsageReport o) {
  buildCounterUsageReport++;
  if (buildCounterUsageReport < 3) {
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    checkUsageReportEntity(o.entity!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.parameters!);
  }
  buildCounterUsageReport--;
}

core.List<api.UsageReport> buildUnnamed15() => [
      buildUsageReport(),
      buildUsageReport(),
    ];

void checkUnnamed15(core.List<api.UsageReport> o) {
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsageReportsWarningsData--;
}

core.List<api.UsageReportsWarningsData> buildUnnamed16() => [
      buildUsageReportsWarningsData(),
      buildUsageReportsWarningsData(),
    ];

void checkUnnamed16(core.List<api.UsageReportsWarningsData> o) {
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
    o.data = buildUnnamed16();
    o.message = 'foo';
  }
  buildCounterUsageReportsWarnings--;
  return o;
}

void checkUsageReportsWarnings(api.UsageReportsWarnings o) {
  buildCounterUsageReportsWarnings++;
  if (buildCounterUsageReportsWarnings < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.data!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsageReportsWarnings--;
}

core.List<api.UsageReportsWarnings> buildUnnamed17() => [
      buildUsageReportsWarnings(),
      buildUsageReportsWarnings(),
    ];

void checkUnnamed17(core.List<api.UsageReportsWarnings> o) {
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
    o.usageReports = buildUnnamed15();
    o.warnings = buildUnnamed17();
  }
  buildCounterUsageReports--;
  return o;
}

void checkUsageReports(api.UsageReports o) {
  buildCounterUsageReports++;
  if (buildCounterUsageReports < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.usageReports!);
    checkUnnamed17(o.warnings!);
  }
  buildCounterUsageReports--;
}

void main() {
  unittest.group('obj-schema-Activities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Activities.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActivities(od);
    });
  });

  unittest.group('obj-schema-ActivityActor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityActor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityActor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityActor(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsParametersMessageValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsParametersMessageValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsParametersMessageValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityEventsParametersMessageValue(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsParametersMultiMessageValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsParametersMultiMessageValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsParametersMultiMessageValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityEventsParametersMultiMessageValue(od);
    });
  });

  unittest.group('obj-schema-ActivityEventsParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEventsParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEventsParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityEventsParameters(od);
    });
  });

  unittest.group('obj-schema-ActivityEvents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityEvents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityEvents.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityEvents(od);
    });
  });

  unittest.group('obj-schema-ActivityId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ActivityId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActivityId(od);
    });
  });

  unittest.group('obj-schema-Activity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Activity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActivity(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-NestedParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestedParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestedParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNestedParameter(od);
    });
  });

  unittest.group('obj-schema-UsageReportEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsageReportEntity(od);
    });
  });

  unittest.group('obj-schema-UsageReportParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsageReportParameters(od);
    });
  });

  unittest.group('obj-schema-UsageReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsageReport(od);
    });
  });

  unittest.group('obj-schema-UsageReportsWarningsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportsWarningsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportsWarningsData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsageReportsWarningsData(od);
    });
  });

  unittest.group('obj-schema-UsageReportsWarnings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReportsWarnings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReportsWarnings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsageReportsWarnings(od);
    });
  });

  unittest.group('obj-schema-UsageReports', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageReports();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageReports.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsageReports(od);
    });
  });

  unittest.group('resource-ActivitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).activities;
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('admin/reports/v1/activity/users/'),
        );
        pathOffset += 32;
        index = path.indexOf('/applications/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/applications/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationName'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildActivities());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userKey, arg_applicationName,
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
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('admin/reports/v1/activity/users/'),
        );
        pathOffset += 32;
        index = path.indexOf('/applications/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/applications/'),
        );
        pathOffset += 14;
        index = path.indexOf('/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/watch'),
        );
        pathOffset += 6;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watch(
          arg_request, arg_userKey, arg_applicationName,
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
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.ReportsApi(mock).channels;
      final arg_request = buildChannel();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('admin/reports_v1/channels/stop'),
        );
        pathOffset += 30;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          unittest.equals('admin/reports/v1/usage/dates/'),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_date'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUsageReports());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_date,
          customerId: arg_customerId,
          pageToken: arg_pageToken,
          parameters: arg_parameters,
          $fields: arg_$fields);
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
          unittest.equals('admin/reports/v1/usage/'),
        );
        pathOffset += 23;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entityType'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        index = path.indexOf('/dates/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entityKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/dates/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_date'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUsageReports());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_entityType, arg_entityKey, arg_date,
          customerId: arg_customerId,
          filters: arg_filters,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          parameters: arg_parameters,
          $fields: arg_$fields);
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
          unittest.equals('admin/reports/v1/usage/users/'),
        );
        pathOffset += 29;
        index = path.indexOf('/dates/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/dates/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_date'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUsageReports());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userKey, arg_date,
          customerId: arg_customerId,
          filters: arg_filters,
          groupIdFilter: arg_groupIdFilter,
          maxResults: arg_maxResults,
          orgUnitID: arg_orgUnitID,
          pageToken: arg_pageToken,
          parameters: arg_parameters,
          $fields: arg_$fields);
      checkUsageReports(response as api.UsageReports);
    });
  });
}
