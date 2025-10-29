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

import 'package:googleapis/appsmarket/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Editions> buildUnnamed0() => [buildEditions(), buildEditions()];

void checkUnnamed0(core.List<api.Editions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEditions(o[0]);
  checkEditions(o[1]);
}

core.int buildCounterCustomerLicense = 0;
api.CustomerLicense buildCustomerLicense() {
  final o = api.CustomerLicense();
  buildCounterCustomerLicense++;
  if (buildCounterCustomerLicense < 3) {
    o.applicationId = 'foo';
    o.customerId = 'foo';
    o.editions = buildUnnamed0();
    o.id = 'foo';
    o.kind = 'foo';
    o.state = 'foo';
  }
  buildCounterCustomerLicense--;
  return o;
}

void checkCustomerLicense(api.CustomerLicense o) {
  buildCounterCustomerLicense++;
  if (buildCounterCustomerLicense < 3) {
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    unittest.expect(o.customerId!, unittest.equals('foo'));
    checkUnnamed0(o.editions!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterCustomerLicense--;
}

core.int buildCounterEditions = 0;
api.Editions buildEditions() {
  final o = api.Editions();
  buildCounterEditions++;
  if (buildCounterEditions < 3) {
    o.assignedSeats = 42;
    o.editionId = 'foo';
    o.seatCount = 42;
  }
  buildCounterEditions--;
  return o;
}

void checkEditions(api.Editions o) {
  buildCounterEditions++;
  if (buildCounterEditions < 3) {
    unittest.expect(o.assignedSeats!, unittest.equals(42));
    unittest.expect(o.editionId!, unittest.equals('foo'));
    unittest.expect(o.seatCount!, unittest.equals(42));
  }
  buildCounterEditions--;
}

core.int buildCounterUserLicense = 0;
api.UserLicense buildUserLicense() {
  final o = api.UserLicense();
  buildCounterUserLicense++;
  if (buildCounterUserLicense < 3) {
    o.applicationId = 'foo';
    o.customerId = 'foo';
    o.editionId = 'foo';
    o.enabled = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.state = 'foo';
    o.userId = 'foo';
  }
  buildCounterUserLicense--;
  return o;
}

void checkUserLicense(api.UserLicense o) {
  buildCounterUserLicense++;
  if (buildCounterUserLicense < 3) {
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    unittest.expect(o.customerId!, unittest.equals('foo'));
    unittest.expect(o.editionId!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterUserLicense--;
}

void main() {
  unittest.group('obj-schema-CustomerLicense', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerLicense.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomerLicense(od);
    });
  });

  unittest.group('obj-schema-Editions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Editions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEditions(od);
    });
  });

  unittest.group('obj-schema-UserLicense', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserLicense.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserLicense(od);
    });
  });

  unittest.group('resource-CustomerLicenseResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GSuiteMarketplaceApi(mock).customerLicense;
      final arg_applicationId = 'foo';
      final arg_customerId = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('appsmarket/v2/customerLicense/'),
          );
          pathOffset += 30;
          index = path.indexOf('/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_applicationId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_customerId'));

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
          final resp = convert.json.encode(buildCustomerLicense());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_applicationId,
        arg_customerId,
        $fields: arg_$fields,
      );
      checkCustomerLicense(response as api.CustomerLicense);
    });
  });

  unittest.group('resource-UserLicenseResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GSuiteMarketplaceApi(mock).userLicense;
      final arg_applicationId = 'foo';
      final arg_userId = 'foo';
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
            unittest.equals('appsmarket/v2/userLicense/'),
          );
          pathOffset += 26;
          index = path.indexOf('/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_applicationId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_userId'));

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
          final resp = convert.json.encode(buildUserLicense());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_applicationId,
        arg_userId,
        $fields: arg_$fields,
      );
      checkUserLicense(response as api.UserLicense);
    });
  });
}
