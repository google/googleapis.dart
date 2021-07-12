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

import 'package:googleapis/webfonts/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed1764() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1764(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed1765() => [
      'foo',
      'foo',
    ];

void checkUnnamed1765(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1766() => [
      'foo',
      'foo',
    ];

void checkUnnamed1766(core.List<core.String> o) {
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

core.int buildCounterWebfont = 0;
api.Webfont buildWebfont() {
  final o = api.Webfont();
  buildCounterWebfont++;
  if (buildCounterWebfont < 3) {
    o.category = 'foo';
    o.family = 'foo';
    o.files = buildUnnamed1764();
    o.kind = 'foo';
    o.lastModified = 'foo';
    o.subsets = buildUnnamed1765();
    o.variants = buildUnnamed1766();
    o.version = 'foo';
  }
  buildCounterWebfont--;
  return o;
}

void checkWebfont(api.Webfont o) {
  buildCounterWebfont++;
  if (buildCounterWebfont < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.family!,
      unittest.equals('foo'),
    );
    checkUnnamed1764(o.files!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModified!,
      unittest.equals('foo'),
    );
    checkUnnamed1765(o.subsets!);
    checkUnnamed1766(o.variants!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebfont--;
}

core.List<api.Webfont> buildUnnamed1767() => [
      buildWebfont(),
      buildWebfont(),
    ];

void checkUnnamed1767(core.List<api.Webfont> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebfont(o[0]);
  checkWebfont(o[1]);
}

core.int buildCounterWebfontList = 0;
api.WebfontList buildWebfontList() {
  final o = api.WebfontList();
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    o.items = buildUnnamed1767();
    o.kind = 'foo';
  }
  buildCounterWebfontList--;
  return o;
}

void checkWebfontList(api.WebfontList o) {
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    checkUnnamed1767(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebfontList--;
}

void main() {
  unittest.group('obj-schema-Webfont', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebfont();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Webfont.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebfont(od);
    });
  });

  unittest.group('obj-schema-WebfontList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebfontList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebfontList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebfontList(od);
    });
  });

  unittest.group('resource-WebfontsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebfontsApi(mock).webfonts;
      final arg_sort = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/webfonts'),
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
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildWebfontList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(sort: arg_sort, $fields: arg_$fields);
      checkWebfontList(response as api.WebfontList);
    });
  });
}
