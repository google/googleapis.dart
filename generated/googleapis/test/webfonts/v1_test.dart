// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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

core.Map<core.String, core.String> buildUnnamed1570() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1570(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed1571() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1571(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1572() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1572(core.List<core.String> o) {
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
  var o = api.Webfont();
  buildCounterWebfont++;
  if (buildCounterWebfont < 3) {
    o.category = 'foo';
    o.family = 'foo';
    o.files = buildUnnamed1570();
    o.kind = 'foo';
    o.lastModified = 'foo';
    o.subsets = buildUnnamed1571();
    o.variants = buildUnnamed1572();
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
    checkUnnamed1570(o.files!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModified!,
      unittest.equals('foo'),
    );
    checkUnnamed1571(o.subsets!);
    checkUnnamed1572(o.variants!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebfont--;
}

core.List<api.Webfont> buildUnnamed1573() {
  var o = <api.Webfont>[];
  o.add(buildWebfont());
  o.add(buildWebfont());
  return o;
}

void checkUnnamed1573(core.List<api.Webfont> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebfont(o[0] as api.Webfont);
  checkWebfont(o[1] as api.Webfont);
}

core.int buildCounterWebfontList = 0;
api.WebfontList buildWebfontList() {
  var o = api.WebfontList();
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    o.items = buildUnnamed1573();
    o.kind = 'foo';
  }
  buildCounterWebfontList--;
  return o;
}

void checkWebfontList(api.WebfontList o) {
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    checkUnnamed1573(o.items!);
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
      var o = buildWebfont();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Webfont.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebfont(od as api.Webfont);
    });
  });

  unittest.group('obj-schema-WebfontList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWebfontList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WebfontList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebfontList(od as api.WebfontList);
    });
  });

  unittest.group('resource-WebfontsResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.WebfontsApi(mock).webfonts;
      var arg_sort = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals("v1/webfonts"),
        );
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["sort"]!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWebfontList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(sort: arg_sort, $fields: arg_$fields);
      checkWebfontList(response as api.WebfontList);
    });
  });
}
