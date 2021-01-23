// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
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

library googleapis.indexing.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/indexing/v3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterPublishUrlNotificationResponse = 0;
api.PublishUrlNotificationResponse buildPublishUrlNotificationResponse() {
  var o = api.PublishUrlNotificationResponse();
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
    checkUrlNotificationMetadata(o.urlNotificationMetadata);
  }
  buildCounterPublishUrlNotificationResponse--;
}

core.int buildCounterUrlNotification = 0;
api.UrlNotification buildUrlNotification() {
  var o = api.UrlNotification();
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
    unittest.expect(o.notifyTime, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUrlNotification--;
}

core.int buildCounterUrlNotificationMetadata = 0;
api.UrlNotificationMetadata buildUrlNotificationMetadata() {
  var o = api.UrlNotificationMetadata();
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
    checkUrlNotification(o.latestRemove);
    checkUrlNotification(o.latestUpdate);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUrlNotificationMetadata--;
}

void main() {
  unittest.group('obj-schema-PublishUrlNotificationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPublishUrlNotificationResponse();
      var od = api.PublishUrlNotificationResponse.fromJson(o.toJson());
      checkPublishUrlNotificationResponse(od);
    });
  });

  unittest.group('obj-schema-UrlNotification', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrlNotification();
      var od = api.UrlNotification.fromJson(o.toJson());
      checkUrlNotification(od);
    });
  });

  unittest.group('obj-schema-UrlNotificationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildUrlNotificationMetadata();
      var od = api.UrlNotificationMetadata.fromJson(o.toJson());
      checkUrlNotificationMetadata(od);
    });
  });

  unittest.group('resource-UrlNotificationsResourceApi', () {
    unittest.test('method--getMetadata', () {
      var mock = HttpServerMock();
      api.UrlNotificationsResourceApi res =
          api.IndexingApi(mock).urlNotifications;
      var arg_url = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v3/urlNotifications/metadata"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["url"].first, unittest.equals(arg_url));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUrlNotificationMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetadata(url: arg_url, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlNotificationMetadata(response);
      })));
    });

    unittest.test('method--publish', () {
      var mock = HttpServerMock();
      api.UrlNotificationsResourceApi res =
          api.IndexingApi(mock).urlNotifications;
      var arg_request = buildUrlNotification();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UrlNotification.fromJson(json);
        checkUrlNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v3/urlNotifications:publish"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildPublishUrlNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .publish(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublishUrlNotificationResponse(response);
      })));
    });
  });
}
