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

import 'package:googleapis/chromewebstore/v1_1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ItemError> buildUnnamed0() => [
  buildItemError(),
  buildItemError(),
];

void checkUnnamed0(core.List<api.ItemError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemError(o[0]);
  checkItemError(o[1]);
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  final o = api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.crxVersion = 'foo';
    o.id = 'foo';
    o.itemError = buildUnnamed0();
    o.kind = 'foo';
    o.publicKey = 'foo';
    o.uploadState = 'foo';
  }
  buildCounterItem--;
  return o;
}

void checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    unittest.expect(o.crxVersion!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed0(o.itemError!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.publicKey!, unittest.equals('foo'));
    unittest.expect(o.uploadState!, unittest.equals('foo'));
  }
  buildCounterItem--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterItem2 = 0;
api.Item2 buildItem2() {
  final o = api.Item2();
  buildCounterItem2++;
  if (buildCounterItem2 < 3) {
    o.itemId = 'foo';
    o.kind = 'foo';
    o.status = buildUnnamed1();
    o.statusDetail = buildUnnamed2();
  }
  buildCounterItem2--;
  return o;
}

void checkItem2(api.Item2 o) {
  buildCounterItem2++;
  if (buildCounterItem2 < 3) {
    unittest.expect(o.itemId!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed1(o.status!);
    checkUnnamed2(o.statusDetail!);
  }
  buildCounterItem2--;
}

core.int buildCounterItemError = 0;
api.ItemError buildItemError() {
  final o = api.ItemError();
  buildCounterItemError++;
  if (buildCounterItemError < 3) {
    o.errorCode = 'foo';
    o.errorDetail = 'foo';
  }
  buildCounterItemError--;
  return o;
}

void checkItemError(api.ItemError o) {
  buildCounterItemError++;
  if (buildCounterItemError < 3) {
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorDetail!, unittest.equals('foo'));
  }
  buildCounterItemError--;
}

core.int buildCounterPublishRequest = 0;
api.PublishRequest buildPublishRequest() {
  final o = api.PublishRequest();
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    o.deployPercentage = 42;
    o.reviewExemption = true;
    o.target = 'foo';
  }
  buildCounterPublishRequest--;
  return o;
}

void checkPublishRequest(api.PublishRequest o) {
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    unittest.expect(o.deployPercentage!, unittest.equals(42));
    unittest.expect(o.reviewExemption!, unittest.isTrue);
    unittest.expect(o.target!, unittest.equals('foo'));
  }
  buildCounterPublishRequest--;
}

void main() {
  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Item.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItem(od);
    });
  });

  unittest.group('obj-schema-Item2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Item2.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItem2(od);
    });
  });

  unittest.group('obj-schema-ItemError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemError(od);
    });
  });

  unittest.group('obj-schema-PublishRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishRequest(od);
    });
  });

  unittest.group('resource-ItemsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).items;
      final arg_itemId = 'foo';
      final arg_projection = 'foo';
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
            path.substring(pathOffset, pathOffset + 26),
            unittest.equals('chromewebstore/v1.1/items/'),
          );
          pathOffset += 26;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_itemId'));

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
            queryMap['projection']!.first,
            unittest.equals(arg_projection),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildItem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_itemId,
        projection: arg_projection,
        $fields: arg_$fields,
      );
      checkItem(response as api.Item);
    });

    unittest.test('method--insert', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).items;
      final arg_publisherEmail = 'foo';
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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('chromewebstore/v1.1/items'),
          );
          pathOffset += 25;

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
            queryMap['publisherEmail']!.first,
            unittest.equals(arg_publisherEmail),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildItem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        publisherEmail: arg_publisherEmail,
        $fields: arg_$fields,
      );
      checkItem(response as api.Item);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).items;
      final arg_request = buildPublishRequest();
      final arg_itemId = 'foo';
      final arg_deployPercentage = 42;
      final arg_publishTarget = 'foo';
      final arg_reviewExemption = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PublishRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPublishRequest(obj);

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
            path.substring(pathOffset, pathOffset + 26),
            unittest.equals('chromewebstore/v1.1/items/'),
          );
          pathOffset += 26;
          index = path.indexOf('/publish', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_itemId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('/publish'),
          );
          pathOffset += 8;

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
            core.int.parse(queryMap['deployPercentage']!.first),
            unittest.equals(arg_deployPercentage),
          );
          unittest.expect(
            queryMap['publishTarget']!.first,
            unittest.equals(arg_publishTarget),
          );
          unittest.expect(
            queryMap['reviewExemption']!.first,
            unittest.equals('$arg_reviewExemption'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildItem2());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publish(
        arg_request,
        arg_itemId,
        deployPercentage: arg_deployPercentage,
        publishTarget: arg_publishTarget,
        reviewExemption: arg_reviewExemption,
        $fields: arg_$fields,
      );
      checkItem2(response as api.Item2);
    });

    unittest.test('method--update', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).items;
      final arg_request = buildItem();
      final arg_itemId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Item.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkItem(obj);

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
            path.substring(pathOffset, pathOffset + 26),
            unittest.equals('chromewebstore/v1.1/items/'),
          );
          pathOffset += 26;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_itemId'));

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
          final resp = convert.json.encode(buildItem());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_itemId,
        $fields: arg_$fields,
      );
      checkItem(response as api.Item);
    });
  });
}
