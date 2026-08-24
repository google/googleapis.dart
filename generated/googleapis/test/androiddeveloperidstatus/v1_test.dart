// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/androiddeveloperidstatus/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterPackageRegistrationStatus = 0;
api.PackageRegistrationStatus buildPackageRegistrationStatus() {
  final o = api.PackageRegistrationStatus();
  buildCounterPackageRegistrationStatus++;
  if (buildCounterPackageRegistrationStatus < 3) {
    o.certificateFingerprint = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterPackageRegistrationStatus--;
  return o;
}

void checkPackageRegistrationStatus(api.PackageRegistrationStatus o) {
  buildCounterPackageRegistrationStatus++;
  if (buildCounterPackageRegistrationStatus < 3) {
    unittest.expect(o.certificateFingerprint!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterPackageRegistrationStatus--;
}

void main() {
  unittest.group('obj-schema-PackageRegistrationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageRegistrationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageRegistrationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageRegistrationStatus(od);
    });
  });

  unittest.group('resource-PackagesPackageRegistrationStatusResource', () {
    unittest.test('method--check', () async {
      final mock = HttpServerMock();
      final res = api.AndroidDeveloperIDStatusApi(
        mock,
      ).packages.packageRegistrationStatus;
      final arg_name = 'foo';
      final arg_certificateFingerprint = 'foo';
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
            queryMap['certificateFingerprint']!.first,
            unittest.equals(arg_certificateFingerprint),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPackageRegistrationStatus());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.check(
        arg_name,
        certificateFingerprint: arg_certificateFingerprint,
        $fields: arg_$fields,
      );
      checkPackageRegistrationStatus(response as api.PackageRegistrationStatus);
    });
  });
}
