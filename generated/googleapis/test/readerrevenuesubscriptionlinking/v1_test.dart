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
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/readerrevenuesubscriptionlinking/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDeleteReaderResponse = 0;
api.DeleteReaderResponse buildDeleteReaderResponse() {
  final o = api.DeleteReaderResponse();
  buildCounterDeleteReaderResponse++;
  if (buildCounterDeleteReaderResponse < 3) {}
  buildCounterDeleteReaderResponse--;
  return o;
}

void checkDeleteReaderResponse(api.DeleteReaderResponse o) {
  buildCounterDeleteReaderResponse++;
  if (buildCounterDeleteReaderResponse < 3) {}
  buildCounterDeleteReaderResponse--;
}

core.int buildCounterEntitlement = 0;
api.Entitlement buildEntitlement() {
  final o = api.Entitlement();
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    o.detail = 'foo';
    o.expireTime = 'foo';
    o.productId = 'foo';
    o.subscriptionToken = 'foo';
  }
  buildCounterEntitlement--;
  return o;
}

void checkEntitlement(api.Entitlement o) {
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntitlement--;
}

core.int buildCounterReader = 0;
api.Reader buildReader() {
  final o = api.Reader();
  buildCounterReader++;
  if (buildCounterReader < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
  }
  buildCounterReader--;
  return o;
}

void checkReader(api.Reader o) {
  buildCounterReader++;
  if (buildCounterReader < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterReader--;
}

core.List<api.Entitlement> buildUnnamed0() => [
      buildEntitlement(),
      buildEntitlement(),
    ];

void checkUnnamed0(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0]);
  checkEntitlement(o[1]);
}

core.int buildCounterReaderEntitlements = 0;
api.ReaderEntitlements buildReaderEntitlements() {
  final o = api.ReaderEntitlements();
  buildCounterReaderEntitlements++;
  if (buildCounterReaderEntitlements < 3) {
    o.entitlements = buildUnnamed0();
    o.name = 'foo';
  }
  buildCounterReaderEntitlements--;
  return o;
}

void checkReaderEntitlements(api.ReaderEntitlements o) {
  buildCounterReaderEntitlements++;
  if (buildCounterReaderEntitlements < 3) {
    checkUnnamed0(o.entitlements!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterReaderEntitlements--;
}

void main() {
  unittest.group('obj-schema-DeleteReaderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteReaderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteReaderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteReaderResponse(od);
    });
  });

  unittest.group('obj-schema-Entitlement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitlement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entitlement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntitlement(od);
    });
  });

  unittest.group('obj-schema-Reader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Reader.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReader(od);
    });
  });

  unittest.group('obj-schema-ReaderEntitlements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReaderEntitlements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReaderEntitlements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReaderEntitlements(od);
    });
  });

  unittest.group('resource-PublicationsReadersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SubscriptionLinkingApi(mock).publications.readers;
      final arg_name = 'foo';
      final arg_force = true;
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDeleteReaderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkDeleteReaderResponse(response as api.DeleteReaderResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SubscriptionLinkingApi(mock).publications.readers;
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
        final resp = convert.json.encode(buildReader());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReader(response as api.Reader);
    });

    unittest.test('method--getEntitlements', () async {
      final mock = HttpServerMock();
      final res = api.SubscriptionLinkingApi(mock).publications.readers;
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
        final resp = convert.json.encode(buildReaderEntitlements());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getEntitlements(arg_name, $fields: arg_$fields);
      checkReaderEntitlements(response as api.ReaderEntitlements);
    });

    unittest.test('method--updateEntitlements', () async {
      final mock = HttpServerMock();
      final res = api.SubscriptionLinkingApi(mock).publications.readers;
      final arg_request = buildReaderEntitlements();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReaderEntitlements.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReaderEntitlements(obj);

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
        final resp = convert.json.encode(buildReaderEntitlements());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateEntitlements(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkReaderEntitlements(response as api.ReaderEntitlements);
    });
  });
}
