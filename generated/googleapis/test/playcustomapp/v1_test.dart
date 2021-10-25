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

import 'package:googleapis/playcustomapp/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Organization> buildUnnamed0() => [
      buildOrganization(),
      buildOrganization(),
    ];

void checkUnnamed0(core.List<api.Organization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrganization(o[0]);
  checkOrganization(o[1]);
}

core.int buildCounterCustomApp = 0;
api.CustomApp buildCustomApp() {
  final o = api.CustomApp();
  buildCounterCustomApp++;
  if (buildCounterCustomApp < 3) {
    o.languageCode = 'foo';
    o.organizations = buildUnnamed0();
    o.packageName = 'foo';
    o.title = 'foo';
  }
  buildCounterCustomApp--;
  return o;
}

void checkCustomApp(api.CustomApp o) {
  buildCounterCustomApp++;
  if (buildCounterCustomApp < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.organizations!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomApp--;
}

core.int buildCounterOrganization = 0;
api.Organization buildOrganization() {
  final o = api.Organization();
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    o.organizationId = 'foo';
    o.organizationName = 'foo';
  }
  buildCounterOrganization--;
  return o;
}

void checkOrganization(api.Organization o) {
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    unittest.expect(
      o.organizationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationName!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrganization--;
}

void main() {
  unittest.group('obj-schema-CustomApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CustomApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomApp(od);
    });
  });

  unittest.group('obj-schema-Organization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrganization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Organization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrganization(od);
    });
  });

  unittest.group('resource-AccountsCustomAppsResource', () {
    unittest.test('method--create', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.PlaycustomappApi(mock).accounts.customApps;
      final arg_request = buildCustomApp();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.CustomApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomApp(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('playcustomapp/v1/accounts/'),
        );
        pathOffset += 26;
        index = path.indexOf('/customApps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_account'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/customApps'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildCustomApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_account, $fields: arg_$fields);
      checkCustomApp(response as api.CustomApp);
    });
  });
}
