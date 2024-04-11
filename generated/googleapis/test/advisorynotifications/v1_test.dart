// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/advisorynotifications/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudAdvisorynotificationsV1Attachment = 0;
api.GoogleCloudAdvisorynotificationsV1Attachment
    buildGoogleCloudAdvisorynotificationsV1Attachment() {
  final o = api.GoogleCloudAdvisorynotificationsV1Attachment();
  buildCounterGoogleCloudAdvisorynotificationsV1Attachment++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Attachment < 3) {
    o.csv = buildGoogleCloudAdvisorynotificationsV1Csv();
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Attachment--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Attachment(
    api.GoogleCloudAdvisorynotificationsV1Attachment o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Attachment++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Attachment < 3) {
    checkGoogleCloudAdvisorynotificationsV1Csv(o.csv!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Attachment--;
}

core.List<api.GoogleCloudAdvisorynotificationsV1CsvCsvRow> buildUnnamed0() => [
      buildGoogleCloudAdvisorynotificationsV1CsvCsvRow(),
      buildGoogleCloudAdvisorynotificationsV1CsvCsvRow(),
    ];

void checkUnnamed0(
    core.List<api.GoogleCloudAdvisorynotificationsV1CsvCsvRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAdvisorynotificationsV1CsvCsvRow(o[0]);
  checkGoogleCloudAdvisorynotificationsV1CsvCsvRow(o[1]);
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudAdvisorynotificationsV1Csv = 0;
api.GoogleCloudAdvisorynotificationsV1Csv
    buildGoogleCloudAdvisorynotificationsV1Csv() {
  final o = api.GoogleCloudAdvisorynotificationsV1Csv();
  buildCounterGoogleCloudAdvisorynotificationsV1Csv++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Csv < 3) {
    o.dataRows = buildUnnamed0();
    o.headers = buildUnnamed1();
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Csv--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Csv(
    api.GoogleCloudAdvisorynotificationsV1Csv o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Csv++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Csv < 3) {
    checkUnnamed0(o.dataRows!);
    checkUnnamed1(o.headers!);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Csv--;
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

core.int buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow = 0;
api.GoogleCloudAdvisorynotificationsV1CsvCsvRow
    buildGoogleCloudAdvisorynotificationsV1CsvCsvRow() {
  final o = api.GoogleCloudAdvisorynotificationsV1CsvCsvRow();
  buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow < 3) {
    o.entries = buildUnnamed2();
  }
  buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1CsvCsvRow(
    api.GoogleCloudAdvisorynotificationsV1CsvCsvRow o) {
  buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow < 3) {
    checkUnnamed2(o.entries!);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1CsvCsvRow--;
}

core.List<api.GoogleCloudAdvisorynotificationsV1Notification> buildUnnamed3() =>
    [
      buildGoogleCloudAdvisorynotificationsV1Notification(),
      buildGoogleCloudAdvisorynotificationsV1Notification(),
    ];

void checkUnnamed3(
    core.List<api.GoogleCloudAdvisorynotificationsV1Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAdvisorynotificationsV1Notification(o[0]);
  checkGoogleCloudAdvisorynotificationsV1Notification(o[1]);
}

core.int
    buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse = 0;
api.GoogleCloudAdvisorynotificationsV1ListNotificationsResponse
    buildGoogleCloudAdvisorynotificationsV1ListNotificationsResponse() {
  final o = api.GoogleCloudAdvisorynotificationsV1ListNotificationsResponse();
  buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.notifications = buildUnnamed3();
    o.totalSize = 42;
  }
  buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1ListNotificationsResponse(
    api.GoogleCloudAdvisorynotificationsV1ListNotificationsResponse o) {
  buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.notifications!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudAdvisorynotificationsV1ListNotificationsResponse--;
}

core.List<api.GoogleCloudAdvisorynotificationsV1Attachment> buildUnnamed4() => [
      buildGoogleCloudAdvisorynotificationsV1Attachment(),
      buildGoogleCloudAdvisorynotificationsV1Attachment(),
    ];

void checkUnnamed4(
    core.List<api.GoogleCloudAdvisorynotificationsV1Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAdvisorynotificationsV1Attachment(o[0]);
  checkGoogleCloudAdvisorynotificationsV1Attachment(o[1]);
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1Message = 0;
api.GoogleCloudAdvisorynotificationsV1Message
    buildGoogleCloudAdvisorynotificationsV1Message() {
  final o = api.GoogleCloudAdvisorynotificationsV1Message();
  buildCounterGoogleCloudAdvisorynotificationsV1Message++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Message < 3) {
    o.attachments = buildUnnamed4();
    o.body = buildGoogleCloudAdvisorynotificationsV1MessageBody();
    o.createTime = 'foo';
    o.localizationTime = 'foo';
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Message--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Message(
    api.GoogleCloudAdvisorynotificationsV1Message o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Message++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Message < 3) {
    checkUnnamed4(o.attachments!);
    checkGoogleCloudAdvisorynotificationsV1MessageBody(o.body!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localizationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Message--;
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1MessageBody = 0;
api.GoogleCloudAdvisorynotificationsV1MessageBody
    buildGoogleCloudAdvisorynotificationsV1MessageBody() {
  final o = api.GoogleCloudAdvisorynotificationsV1MessageBody();
  buildCounterGoogleCloudAdvisorynotificationsV1MessageBody++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1MessageBody < 3) {
    o.text = buildGoogleCloudAdvisorynotificationsV1Text();
  }
  buildCounterGoogleCloudAdvisorynotificationsV1MessageBody--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1MessageBody(
    api.GoogleCloudAdvisorynotificationsV1MessageBody o) {
  buildCounterGoogleCloudAdvisorynotificationsV1MessageBody++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1MessageBody < 3) {
    checkGoogleCloudAdvisorynotificationsV1Text(o.text!);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1MessageBody--;
}

core.List<api.GoogleCloudAdvisorynotificationsV1Message> buildUnnamed5() => [
      buildGoogleCloudAdvisorynotificationsV1Message(),
      buildGoogleCloudAdvisorynotificationsV1Message(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudAdvisorynotificationsV1Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAdvisorynotificationsV1Message(o[0]);
  checkGoogleCloudAdvisorynotificationsV1Message(o[1]);
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1Notification = 0;
api.GoogleCloudAdvisorynotificationsV1Notification
    buildGoogleCloudAdvisorynotificationsV1Notification() {
  final o = api.GoogleCloudAdvisorynotificationsV1Notification();
  buildCounterGoogleCloudAdvisorynotificationsV1Notification++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Notification < 3) {
    o.createTime = 'foo';
    o.messages = buildUnnamed5();
    o.name = 'foo';
    o.notificationType = 'foo';
    o.subject = buildGoogleCloudAdvisorynotificationsV1Subject();
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Notification--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Notification(
    api.GoogleCloudAdvisorynotificationsV1Notification o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Notification++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Notification < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.messages!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudAdvisorynotificationsV1Subject(o.subject!);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Notification--;
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings = 0;
api.GoogleCloudAdvisorynotificationsV1NotificationSettings
    buildGoogleCloudAdvisorynotificationsV1NotificationSettings() {
  final o = api.GoogleCloudAdvisorynotificationsV1NotificationSettings();
  buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings < 3) {
    o.enabled = true;
  }
  buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1NotificationSettings(
    api.GoogleCloudAdvisorynotificationsV1NotificationSettings o) {
  buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1NotificationSettings--;
}

core.Map<core.String,
        api.GoogleCloudAdvisorynotificationsV1NotificationSettings>
    buildUnnamed6() => {
          'x': buildGoogleCloudAdvisorynotificationsV1NotificationSettings(),
          'y': buildGoogleCloudAdvisorynotificationsV1NotificationSettings(),
        };

void checkUnnamed6(
    core.Map<core.String,
            api.GoogleCloudAdvisorynotificationsV1NotificationSettings>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudAdvisorynotificationsV1NotificationSettings(o['x']!);
  checkGoogleCloudAdvisorynotificationsV1NotificationSettings(o['y']!);
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1Settings = 0;
api.GoogleCloudAdvisorynotificationsV1Settings
    buildGoogleCloudAdvisorynotificationsV1Settings() {
  final o = api.GoogleCloudAdvisorynotificationsV1Settings();
  buildCounterGoogleCloudAdvisorynotificationsV1Settings++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Settings < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.notificationSettings = buildUnnamed6();
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Settings--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Settings(
    api.GoogleCloudAdvisorynotificationsV1Settings o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Settings++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Settings < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.notificationSettings!);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Settings--;
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1Subject = 0;
api.GoogleCloudAdvisorynotificationsV1Subject
    buildGoogleCloudAdvisorynotificationsV1Subject() {
  final o = api.GoogleCloudAdvisorynotificationsV1Subject();
  buildCounterGoogleCloudAdvisorynotificationsV1Subject++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Subject < 3) {
    o.text = buildGoogleCloudAdvisorynotificationsV1Text();
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Subject--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Subject(
    api.GoogleCloudAdvisorynotificationsV1Subject o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Subject++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Subject < 3) {
    checkGoogleCloudAdvisorynotificationsV1Text(o.text!);
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Subject--;
}

core.int buildCounterGoogleCloudAdvisorynotificationsV1Text = 0;
api.GoogleCloudAdvisorynotificationsV1Text
    buildGoogleCloudAdvisorynotificationsV1Text() {
  final o = api.GoogleCloudAdvisorynotificationsV1Text();
  buildCounterGoogleCloudAdvisorynotificationsV1Text++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Text < 3) {
    o.enText = 'foo';
    o.localizationState = 'foo';
    o.localizedText = 'foo';
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Text--;
  return o;
}

void checkGoogleCloudAdvisorynotificationsV1Text(
    api.GoogleCloudAdvisorynotificationsV1Text o) {
  buildCounterGoogleCloudAdvisorynotificationsV1Text++;
  if (buildCounterGoogleCloudAdvisorynotificationsV1Text < 3) {
    unittest.expect(
      o.enText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localizationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localizedText!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudAdvisorynotificationsV1Text--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Attachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Attachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Attachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Attachment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Csv', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Csv();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Csv.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Csv(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1CsvCsvRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1CsvCsvRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1CsvCsvRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1CsvCsvRow(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAdvisorynotificationsV1ListNotificationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudAdvisorynotificationsV1ListNotificationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1ListNotificationsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1ListNotificationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Message();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Message.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Message(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1MessageBody',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1MessageBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1MessageBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1MessageBody(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Notification',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Notification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Notification(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudAdvisorynotificationsV1NotificationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1NotificationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudAdvisorynotificationsV1NotificationSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1NotificationSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Settings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Settings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Settings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Subject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Subject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Subject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Subject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAdvisorynotificationsV1Text', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAdvisorynotificationsV1Text();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAdvisorynotificationsV1Text.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudAdvisorynotificationsV1Text(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsResource', () {
    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.AdvisorynotificationsApi(mock).organizations.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudAdvisorynotificationsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1Settings(
          response as api.GoogleCloudAdvisorynotificationsV1Settings);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.AdvisorynotificationsApi(mock).organizations.locations;
      final arg_request = buildGoogleCloudAdvisorynotificationsV1Settings();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudAdvisorynotificationsV1Settings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAdvisorynotificationsV1Settings(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudAdvisorynotificationsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateSettings(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1Settings(
          response as api.GoogleCloudAdvisorynotificationsV1Settings);
    });
  });

  unittest.group('resource-OrganizationsLocationsNotificationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdvisorynotificationsApi(mock)
          .organizations
          .locations
          .notifications;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudAdvisorynotificationsV1Notification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1Notification(
          response as api.GoogleCloudAdvisorynotificationsV1Notification);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdvisorynotificationsApi(mock)
          .organizations
          .locations
          .notifications;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudAdvisorynotificationsV1ListNotificationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1ListNotificationsResponse(response
          as api.GoogleCloudAdvisorynotificationsV1ListNotificationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.AdvisorynotificationsApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudAdvisorynotificationsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1Settings(
          response as api.GoogleCloudAdvisorynotificationsV1Settings);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.AdvisorynotificationsApi(mock).projects.locations;
      final arg_request = buildGoogleCloudAdvisorynotificationsV1Settings();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudAdvisorynotificationsV1Settings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudAdvisorynotificationsV1Settings(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudAdvisorynotificationsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateSettings(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1Settings(
          response as api.GoogleCloudAdvisorynotificationsV1Settings);
    });
  });

  unittest.group('resource-ProjectsLocationsNotificationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AdvisorynotificationsApi(mock).projects.locations.notifications;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudAdvisorynotificationsV1Notification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1Notification(
          response as api.GoogleCloudAdvisorynotificationsV1Notification);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdvisorynotificationsApi(mock).projects.locations.notifications;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudAdvisorynotificationsV1ListNotificationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudAdvisorynotificationsV1ListNotificationsResponse(response
          as api.GoogleCloudAdvisorynotificationsV1ListNotificationsResponse);
    });
  });
}
