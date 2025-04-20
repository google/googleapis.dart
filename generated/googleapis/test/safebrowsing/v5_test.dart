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
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/safebrowsing/v5.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail>
    buildUnnamed0() => [
          buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail(),
          buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail(),
        ];

void checkUnnamed0(
    core.List<api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(o[0]);
  checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV5FullHash = 0;
api.GoogleSecuritySafebrowsingV5FullHash
    buildGoogleSecuritySafebrowsingV5FullHash() {
  final o = api.GoogleSecuritySafebrowsingV5FullHash();
  buildCounterGoogleSecuritySafebrowsingV5FullHash++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHash < 3) {
    o.fullHash = 'foo';
    o.fullHashDetails = buildUnnamed0();
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHash--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5FullHash(
    api.GoogleSecuritySafebrowsingV5FullHash o) {
  buildCounterGoogleSecuritySafebrowsingV5FullHash++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHash < 3) {
    unittest.expect(
      o.fullHash!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.fullHashDetails!);
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHash--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail = 0;
api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail() {
  final o = api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail();
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail < 3) {
    o.attributes = buildUnnamed1();
    o.threatType = 'foo';
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(
    api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail o) {
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail++;
  if (buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail < 3) {
    checkUnnamed1(o.attributes!);
    unittest.expect(
      o.threatType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleSecuritySafebrowsingV5FullHashFullHashDetail--;
}

core.List<api.GoogleSecuritySafebrowsingV5FullHash> buildUnnamed2() => [
      buildGoogleSecuritySafebrowsingV5FullHash(),
      buildGoogleSecuritySafebrowsingV5FullHash(),
    ];

void checkUnnamed2(core.List<api.GoogleSecuritySafebrowsingV5FullHash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleSecuritySafebrowsingV5FullHash(o[0]);
  checkGoogleSecuritySafebrowsingV5FullHash(o[1]);
}

core.int buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse = 0;
api.GoogleSecuritySafebrowsingV5SearchHashesResponse
    buildGoogleSecuritySafebrowsingV5SearchHashesResponse() {
  final o = api.GoogleSecuritySafebrowsingV5SearchHashesResponse();
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse < 3) {
    o.cacheDuration = 'foo';
    o.fullHashes = buildUnnamed2();
  }
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse--;
  return o;
}

void checkGoogleSecuritySafebrowsingV5SearchHashesResponse(
    api.GoogleSecuritySafebrowsingV5SearchHashesResponse o) {
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse++;
  if (buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse < 3) {
    unittest.expect(
      o.cacheDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.fullHashes!);
  }
  buildCounterGoogleSecuritySafebrowsingV5SearchHashesResponse--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5FullHash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5FullHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5FullHash.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5FullHash(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleSecuritySafebrowsingV5FullHashFullHashDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5FullHashFullHashDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleSecuritySafebrowsingV5FullHashFullHashDetail.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5FullHashFullHashDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleSecuritySafebrowsingV5SearchHashesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSecuritySafebrowsingV5SearchHashesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSecuritySafebrowsingV5SearchHashesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleSecuritySafebrowsingV5SearchHashesResponse(od);
    });
  });

  unittest.group('resource-HashesResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.SafebrowsingApi(mock).hashes;
      final arg_hashPrefixes = buildUnnamed3();
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v5/hashes:search'),
        );
        pathOffset += 16;

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
          queryMap['hashPrefixes']!,
          unittest.equals(arg_hashPrefixes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleSecuritySafebrowsingV5SearchHashesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          hashPrefixes: arg_hashPrefixes, $fields: arg_$fields);
      checkGoogleSecuritySafebrowsingV5SearchHashesResponse(
          response as api.GoogleSecuritySafebrowsingV5SearchHashesResponse);
    });
  });
}
