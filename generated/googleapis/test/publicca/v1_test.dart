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

import 'package:googleapis/publicca/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterExternalAccountKey = 0;
api.ExternalAccountKey buildExternalAccountKey() {
  final o = api.ExternalAccountKey();
  buildCounterExternalAccountKey++;
  if (buildCounterExternalAccountKey < 3) {
    o.b64MacKey = 'foo';
    o.keyId = 'foo';
    o.name = 'foo';
  }
  buildCounterExternalAccountKey--;
  return o;
}

void checkExternalAccountKey(api.ExternalAccountKey o) {
  buildCounterExternalAccountKey++;
  if (buildCounterExternalAccountKey < 3) {
    unittest.expect(
      o.b64MacKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalAccountKey--;
}

void main() {
  unittest.group('obj-schema-ExternalAccountKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalAccountKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalAccountKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalAccountKey(od);
    });
  });

  unittest.group('resource-ProjectsLocationsExternalAccountKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PublicCertificateAuthorityApi(mock)
          .projects
          .locations
          .externalAccountKeys;
      final arg_request = buildExternalAccountKey();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExternalAccountKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExternalAccountKey(obj);

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
        final resp = convert.json.encode(buildExternalAccountKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkExternalAccountKey(response as api.ExternalAccountKey);
    });
  });
}
