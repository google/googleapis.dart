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

import 'package:googleapis/sts/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleIdentityStsV1ExchangeTokenRequest = 0;
api.GoogleIdentityStsV1ExchangeTokenRequest
    buildGoogleIdentityStsV1ExchangeTokenRequest() {
  final o = api.GoogleIdentityStsV1ExchangeTokenRequest();
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenRequest < 3) {
    o.audience = 'foo';
    o.grantType = 'foo';
    o.options = 'foo';
    o.requestedTokenType = 'foo';
    o.scope = 'foo';
    o.subjectToken = 'foo';
    o.subjectTokenType = 'foo';
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest--;
  return o;
}

void checkGoogleIdentityStsV1ExchangeTokenRequest(
    api.GoogleIdentityStsV1ExchangeTokenRequest o) {
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenRequest < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.grantType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.options!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedTokenType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectTokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest--;
}

core.int buildCounterGoogleIdentityStsV1ExchangeTokenResponse = 0;
api.GoogleIdentityStsV1ExchangeTokenResponse
    buildGoogleIdentityStsV1ExchangeTokenResponse() {
  final o = api.GoogleIdentityStsV1ExchangeTokenResponse();
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenResponse < 3) {
    o.accessToken = 'foo';
    o.expiresIn = 42;
    o.issuedTokenType = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse--;
  return o;
}

void checkGoogleIdentityStsV1ExchangeTokenResponse(
    api.GoogleIdentityStsV1ExchangeTokenResponse o) {
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenResponse < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.issuedTokenType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse--;
}

core.int buildCounterGoogleIdentityStsV1IntrospectTokenRequest = 0;
api.GoogleIdentityStsV1IntrospectTokenRequest
    buildGoogleIdentityStsV1IntrospectTokenRequest() {
  final o = api.GoogleIdentityStsV1IntrospectTokenRequest();
  buildCounterGoogleIdentityStsV1IntrospectTokenRequest++;
  if (buildCounterGoogleIdentityStsV1IntrospectTokenRequest < 3) {
    o.token = 'foo';
    o.tokenTypeHint = 'foo';
  }
  buildCounterGoogleIdentityStsV1IntrospectTokenRequest--;
  return o;
}

void checkGoogleIdentityStsV1IntrospectTokenRequest(
    api.GoogleIdentityStsV1IntrospectTokenRequest o) {
  buildCounterGoogleIdentityStsV1IntrospectTokenRequest++;
  if (buildCounterGoogleIdentityStsV1IntrospectTokenRequest < 3) {
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenTypeHint!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1IntrospectTokenRequest--;
}

core.int buildCounterGoogleIdentityStsV1IntrospectTokenResponse = 0;
api.GoogleIdentityStsV1IntrospectTokenResponse
    buildGoogleIdentityStsV1IntrospectTokenResponse() {
  final o = api.GoogleIdentityStsV1IntrospectTokenResponse();
  buildCounterGoogleIdentityStsV1IntrospectTokenResponse++;
  if (buildCounterGoogleIdentityStsV1IntrospectTokenResponse < 3) {
    o.active = true;
    o.clientId = 'foo';
    o.exp = 'foo';
    o.iat = 'foo';
    o.iss = 'foo';
    o.scope = 'foo';
    o.sub = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleIdentityStsV1IntrospectTokenResponse--;
  return o;
}

void checkGoogleIdentityStsV1IntrospectTokenResponse(
    api.GoogleIdentityStsV1IntrospectTokenResponse o) {
  buildCounterGoogleIdentityStsV1IntrospectTokenResponse++;
  if (buildCounterGoogleIdentityStsV1IntrospectTokenResponse < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iss!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sub!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1IntrospectTokenResponse--;
}

void main() {
  unittest.group('obj-schema-GoogleIdentityStsV1ExchangeTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1ExchangeTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1ExchangeTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1ExchangeTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1ExchangeTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1ExchangeTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1ExchangeTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1ExchangeTokenResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1IntrospectTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1IntrospectTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1IntrospectTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1IntrospectTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1IntrospectTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1IntrospectTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1IntrospectTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1IntrospectTokenResponse(od);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--introspect', () async {
      final mock = HttpServerMock();
      final res = api.CloudSecurityTokenApi(mock).v1;
      final arg_request = buildGoogleIdentityStsV1IntrospectTokenRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIdentityStsV1IntrospectTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIdentityStsV1IntrospectTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/introspect'),
        );
        pathOffset += 13;

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
        final resp = convert.json
            .encode(buildGoogleIdentityStsV1IntrospectTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.introspect(arg_request, $fields: arg_$fields);
      checkGoogleIdentityStsV1IntrospectTokenResponse(
          response as api.GoogleIdentityStsV1IntrospectTokenResponse);
    });

    unittest.test('method--token', () async {
      final mock = HttpServerMock();
      final res = api.CloudSecurityTokenApi(mock).v1;
      final arg_request = buildGoogleIdentityStsV1ExchangeTokenRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIdentityStsV1ExchangeTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIdentityStsV1ExchangeTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/token'),
        );
        pathOffset += 8;

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
        final resp = convert.json
            .encode(buildGoogleIdentityStsV1ExchangeTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.token(arg_request, $fields: arg_$fields);
      checkGoogleIdentityStsV1ExchangeTokenResponse(
          response as api.GoogleIdentityStsV1ExchangeTokenResponse);
    });
  });
}
