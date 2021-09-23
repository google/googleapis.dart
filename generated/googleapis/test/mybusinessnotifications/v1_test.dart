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

import 'package:googleapis/mybusinessnotifications/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterNotificationSetting = 0;
api.NotificationSetting buildNotificationSetting() {
  final o = api.NotificationSetting();
  buildCounterNotificationSetting++;
  if (buildCounterNotificationSetting < 3) {
    o.name = 'foo';
    o.notificationTypes = buildUnnamed0();
    o.pubsubTopic = 'foo';
  }
  buildCounterNotificationSetting--;
  return o;
}

void checkNotificationSetting(api.NotificationSetting o) {
  buildCounterNotificationSetting++;
  if (buildCounterNotificationSetting < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.notificationTypes!);
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationSetting--;
}

void main() {
  unittest.group('obj-schema-NotificationSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationSetting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationSetting(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--getNotificationSetting', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessNotificationSettingsApi(mock).accounts;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildNotificationSetting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getNotificationSetting(arg_name, $fields: arg_$fields);
      checkNotificationSetting(response as api.NotificationSetting);
    });

    unittest.test('method--updateNotificationSetting', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessNotificationSettingsApi(mock).accounts;
      final arg_request = buildNotificationSetting();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.NotificationSetting.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNotificationSetting(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNotificationSetting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateNotificationSetting(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkNotificationSetting(response as api.NotificationSetting);
    });
  });
}
