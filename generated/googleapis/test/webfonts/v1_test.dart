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

import 'package:googleapis/webfonts/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAxis = 0;
api.Axis buildAxis() {
  final o = api.Axis();
  buildCounterAxis++;
  if (buildCounterAxis < 3) {
    o.end = 42.0;
    o.start = 42.0;
    o.tag = 'foo';
  }
  buildCounterAxis--;
  return o;
}

void checkAxis(api.Axis o) {
  buildCounterAxis++;
  if (buildCounterAxis < 3) {
    unittest.expect(
      o.end!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterAxis--;
}

core.List<api.Axis> buildUnnamed0() => [
      buildAxis(),
      buildAxis(),
    ];

void checkUnnamed0(core.List<api.Axis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAxis(o[0]);
  checkAxis(o[1]);
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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
    o.axes = buildUnnamed0();
    o.category = 'foo';
    o.colorCapabilities = buildUnnamed1();
    o.family = 'foo';
    o.files = buildUnnamed2();
    o.kind = 'foo';
    o.lastModified = 'foo';
    o.menu = 'foo';
    o.subsets = buildUnnamed3();
    o.variants = buildUnnamed4();
    o.version = 'foo';
  }
  buildCounterWebfont--;
  return o;
}

void checkWebfont(api.Webfont o) {
  buildCounterWebfont++;
  if (buildCounterWebfont < 3) {
    checkUnnamed0(o.axes!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.colorCapabilities!);
    unittest.expect(
      o.family!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.files!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModified!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.menu!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.subsets!);
    checkUnnamed4(o.variants!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebfont--;
}

core.List<api.Webfont> buildUnnamed5() => [
      buildWebfont(),
      buildWebfont(),
    ];

void checkUnnamed5(core.List<api.Webfont> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebfont(o[0]);
  checkWebfont(o[1]);
}

core.int buildCounterWebfontList = 0;
api.WebfontList buildWebfontList() {
  final o = api.WebfontList();
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    o.items = buildUnnamed5();
    o.kind = 'foo';
  }
  buildCounterWebfontList--;
  return o;
}

void checkWebfontList(api.WebfontList o) {
  buildCounterWebfontList++;
  if (buildCounterWebfontList < 3) {
    checkUnnamed5(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebfontList--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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
  unittest.group('obj-schema-Axis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAxis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Axis.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAxis(od);
    });
  });

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
      final arg_capability = buildUnnamed6();
      final arg_category = 'foo';
      final arg_family = buildUnnamed7();
      final arg_sort = 'foo';
      final arg_subset = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/webfonts'),
        );
        pathOffset += 11;

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
          queryMap['capability']!,
          unittest.equals(arg_capability),
        );
        unittest.expect(
          queryMap['category']!.first,
          unittest.equals(arg_category),
        );
        unittest.expect(
          queryMap['family']!,
          unittest.equals(arg_family),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          queryMap['subset']!.first,
          unittest.equals(arg_subset),
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
      final response = await res.list(
          capability: arg_capability,
          category: arg_category,
          family: arg_family,
          sort: arg_sort,
          subset: arg_subset,
          $fields: arg_$fields);
      checkWebfontList(response as api.WebfontList);
    });
  });
}
