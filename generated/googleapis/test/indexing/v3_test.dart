// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/indexing/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterPublishUrlNotificationResponse = 0;
api.PublishUrlNotificationResponse buildPublishUrlNotificationResponse() {
  final o = api.PublishUrlNotificationResponse();
  buildCounterPublishUrlNotificationResponse++;
  if (buildCounterPublishUrlNotificationResponse < 3) {
    o.urlNotificationMetadata = buildUrlNotificationMetadata();
  }
  buildCounterPublishUrlNotificationResponse--;
  return o;
}

void checkPublishUrlNotificationResponse(api.PublishUrlNotificationResponse o) {
  buildCounterPublishUrlNotificationResponse++;
  if (buildCounterPublishUrlNotificationResponse < 3) {
    checkUrlNotificationMetadata(o.urlNotificationMetadata!);
  }
  buildCounterPublishUrlNotificationResponse--;
}

core.int buildCounterUrlNotification = 0;
api.UrlNotification buildUrlNotification() {
  final o = api.UrlNotification();
  buildCounterUrlNotification++;
  if (buildCounterUrlNotification < 3) {
    o.notifyTime = 'foo';
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterUrlNotification--;
  return o;
}

void checkUrlNotification(api.UrlNotification o) {
  buildCounterUrlNotification++;
  if (buildCounterUrlNotification < 3) {
    unittest.expect(
      o.notifyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlNotification--;
}

core.int buildCounterUrlNotificationMetadata = 0;
api.UrlNotificationMetadata buildUrlNotificationMetadata() {
  final o = api.UrlNotificationMetadata();
  buildCounterUrlNotificationMetadata++;
  if (buildCounterUrlNotificationMetadata < 3) {
    o.latestRemove = buildUrlNotification();
    o.latestUpdate = buildUrlNotification();
    o.url = 'foo';
  }
  buildCounterUrlNotificationMetadata--;
  return o;
}

void checkUrlNotificationMetadata(api.UrlNotificationMetadata o) {
  buildCounterUrlNotificationMetadata++;
  if (buildCounterUrlNotificationMetadata < 3) {
    checkUrlNotification(o.latestRemove!);
    checkUrlNotification(o.latestUpdate!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlNotificationMetadata--;
}

void main() {
  unittest.group('obj-schema-PublishUrlNotificationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishUrlNotificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishUrlNotificationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublishUrlNotificationResponse(od);
    });
  });

  unittest.group('obj-schema-UrlNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlNotification(od);
    });
  });

  unittest.group('obj-schema-UrlNotificationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlNotificationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlNotificationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlNotificationMetadata(od);
    });
  });

  unittest.group('resource-UrlNotificationsResource', () {
    unittest.test('method--getMetadata', () async {
      final mock = HttpServerMock();
      final res = api.IndexingApi(mock).urlNotifications;
      final arg_url = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v3/urlNotifications/metadata'),
        );
        pathOffset += 28;

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
          queryMap['url']!.first,
          unittest.equals(arg_url),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUrlNotificationMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getMetadata(url: arg_url, $fields: arg_$fields);
      checkUrlNotificationMetadata(response as api.UrlNotificationMetadata);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.IndexingApi(mock).urlNotifications;
      final arg_request = buildUrlNotification();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UrlNotification.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUrlNotification(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('v3/urlNotifications:publish'),
        );
        pathOffset += 27;

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
        final resp = convert.json.encode(buildPublishUrlNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.publish(arg_request, $fields: arg_$fields);
      checkPublishUrlNotificationResponse(
          response as api.PublishUrlNotificationResponse);
    });
  });
}
