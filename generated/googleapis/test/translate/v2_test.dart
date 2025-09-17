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

import 'package:googleapis/translate/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDetectLanguageRequest = 0;
api.DetectLanguageRequest buildDetectLanguageRequest() {
  final o = api.DetectLanguageRequest();
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    o.q = buildUnnamed0();
  }
  buildCounterDetectLanguageRequest--;
  return o;
}

void checkDetectLanguageRequest(api.DetectLanguageRequest o) {
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    checkUnnamed0(o.q!);
  }
  buildCounterDetectLanguageRequest--;
}

core.List<api.DetectionsResource> buildUnnamed1() => [
  buildDetectionsResource(),
  buildDetectionsResource(),
];

void checkUnnamed1(core.List<api.DetectionsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectionsResource(o[0]);
  checkDetectionsResource(o[1]);
}

core.int buildCounterDetectionsListResponse = 0;
api.DetectionsListResponse buildDetectionsListResponse() {
  final o = api.DetectionsListResponse();
  buildCounterDetectionsListResponse++;
  if (buildCounterDetectionsListResponse < 3) {
    o.detections = buildUnnamed1();
  }
  buildCounterDetectionsListResponse--;
  return o;
}

void checkDetectionsListResponse(api.DetectionsListResponse o) {
  buildCounterDetectionsListResponse++;
  if (buildCounterDetectionsListResponse < 3) {
    checkUnnamed1(o.detections!);
  }
  buildCounterDetectionsListResponse--;
}

core.int buildCounterDetectionsResourceElement = 0;
api.DetectionsResourceElement buildDetectionsResourceElement() {
  final o = api.DetectionsResourceElement();
  buildCounterDetectionsResourceElement++;
  if (buildCounterDetectionsResourceElement < 3) {
    o.confidence = 42.0;
    o.isReliable = true;
    o.language = 'foo';
  }
  buildCounterDetectionsResourceElement--;
  return o;
}

void checkDetectionsResourceElement(api.DetectionsResourceElement o) {
  buildCounterDetectionsResourceElement++;
  if (buildCounterDetectionsResourceElement < 3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.isReliable!, unittest.isTrue);
    unittest.expect(o.language!, unittest.equals('foo'));
  }
  buildCounterDetectionsResourceElement--;
}

api.DetectionsResource buildDetectionsResource() {
  return [buildDetectionsResourceElement(), buildDetectionsResourceElement()];
}

void checkDetectionsResource(api.DetectionsResource o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectionsResourceElement(o[0]);
  checkDetectionsResourceElement(o[1]);
}

core.List<api.LanguagesResource> buildUnnamed2() => [
  buildLanguagesResource(),
  buildLanguagesResource(),
];

void checkUnnamed2(core.List<api.LanguagesResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguagesResource(o[0]);
  checkLanguagesResource(o[1]);
}

core.int buildCounterLanguagesListResponse = 0;
api.LanguagesListResponse buildLanguagesListResponse() {
  final o = api.LanguagesListResponse();
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    o.languages = buildUnnamed2();
  }
  buildCounterLanguagesListResponse--;
  return o;
}

void checkLanguagesListResponse(api.LanguagesListResponse o) {
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    checkUnnamed2(o.languages!);
  }
  buildCounterLanguagesListResponse--;
}

core.int buildCounterLanguagesResource = 0;
api.LanguagesResource buildLanguagesResource() {
  final o = api.LanguagesResource();
  buildCounterLanguagesResource++;
  if (buildCounterLanguagesResource < 3) {
    o.language = 'foo';
    o.name = 'foo';
  }
  buildCounterLanguagesResource--;
  return o;
}

void checkLanguagesResource(api.LanguagesResource o) {
  buildCounterLanguagesResource++;
  if (buildCounterLanguagesResource < 3) {
    unittest.expect(o.language!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLanguagesResource--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTranslateTextRequest = 0;
api.TranslateTextRequest buildTranslateTextRequest() {
  final o = api.TranslateTextRequest();
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    o.format = 'foo';
    o.model = 'foo';
    o.q = buildUnnamed3();
    o.source = 'foo';
    o.target = 'foo';
  }
  buildCounterTranslateTextRequest--;
  return o;
}

void checkTranslateTextRequest(api.TranslateTextRequest o) {
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    checkUnnamed3(o.q!);
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.target!, unittest.equals('foo'));
  }
  buildCounterTranslateTextRequest--;
}

core.List<api.TranslationsResource> buildUnnamed4() => [
  buildTranslationsResource(),
  buildTranslationsResource(),
];

void checkUnnamed4(core.List<api.TranslationsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslationsResource(o[0]);
  checkTranslationsResource(o[1]);
}

core.int buildCounterTranslationsListResponse = 0;
api.TranslationsListResponse buildTranslationsListResponse() {
  final o = api.TranslationsListResponse();
  buildCounterTranslationsListResponse++;
  if (buildCounterTranslationsListResponse < 3) {
    o.translations = buildUnnamed4();
  }
  buildCounterTranslationsListResponse--;
  return o;
}

void checkTranslationsListResponse(api.TranslationsListResponse o) {
  buildCounterTranslationsListResponse++;
  if (buildCounterTranslationsListResponse < 3) {
    checkUnnamed4(o.translations!);
  }
  buildCounterTranslationsListResponse--;
}

core.int buildCounterTranslationsResource = 0;
api.TranslationsResource buildTranslationsResource() {
  final o = api.TranslationsResource();
  buildCounterTranslationsResource++;
  if (buildCounterTranslationsResource < 3) {
    o.detectedSourceLanguage = 'foo';
    o.model = 'foo';
    o.translatedText = 'foo';
  }
  buildCounterTranslationsResource--;
  return o;
}

void checkTranslationsResource(api.TranslationsResource o) {
  buildCounterTranslationsResource++;
  if (buildCounterTranslationsResource < 3) {
    unittest.expect(o.detectedSourceLanguage!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.translatedText!, unittest.equals('foo'));
  }
  buildCounterTranslationsResource--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-DetectLanguageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectLanguageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectLanguageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetectLanguageRequest(od);
    });
  });

  unittest.group('obj-schema-DetectionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectionsListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetectionsListResponse(od);
    });
  });

  unittest.group('obj-schema-DetectionsResourceElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectionsResourceElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectionsResourceElement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetectionsResourceElement(od);
    });
  });

  unittest.group('obj-schema-DetectionsResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectionsResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          (oJson as core.List)
              .map(
                (value) => api.DetectionsResourceElement.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList();
      checkDetectionsResource(od);
    });
  });

  unittest.group('obj-schema-LanguagesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguagesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguagesListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLanguagesListResponse(od);
    });
  });

  unittest.group('obj-schema-LanguagesResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguagesResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguagesResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLanguagesResource(od);
    });
  });

  unittest.group('obj-schema-TranslateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslateTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTranslateTextRequest(od);
    });
  });

  unittest.group('obj-schema-TranslationsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslationsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslationsListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTranslationsListResponse(od);
    });
  });

  unittest.group('obj-schema-TranslationsResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslationsResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslationsResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTranslationsResource(od);
    });
  });

  unittest.group('resource-DetectionsResource_1', () {
    unittest.test('method--detect', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).detections;
      final arg_request = buildDetectLanguageRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DetectLanguageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDetectLanguageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('language/translate/'),
          );
          pathOffset += 19;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v2/detect'),
          );
          pathOffset += 9;

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
          final resp = convert.json.encode({
            'data': buildDetectionsListResponse(),
          });
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.detect(arg_request, $fields: arg_$fields);
      checkDetectionsListResponse(response as api.DetectionsListResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).detections;
      final arg_q = buildUnnamed5();
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('language/translate/'),
          );
          pathOffset += 19;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v2/detect'),
          );
          pathOffset += 9;

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
          unittest.expect(queryMap['q']!, unittest.equals(arg_q));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode({
            'data': buildDetectionsListResponse(),
          });
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_q, $fields: arg_$fields);
      checkDetectionsListResponse(response as api.DetectionsListResponse);
    });
  });

  unittest.group('resource-LanguagesResource_1', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).languages;
      final arg_model = 'foo';
      final arg_target = 'foo';
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('language/translate/'),
          );
          pathOffset += 19;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v2/languages'),
          );
          pathOffset += 12;

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
          unittest.expect(queryMap['model']!.first, unittest.equals(arg_model));
          unittest.expect(
            queryMap['target']!.first,
            unittest.equals(arg_target),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode({
            'data': buildLanguagesListResponse(),
          });
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        model: arg_model,
        target: arg_target,
        $fields: arg_$fields,
      );
      checkLanguagesListResponse(response as api.LanguagesListResponse);
    });
  });

  unittest.group('resource-TranslationsResource_1', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).translations;
      final arg_q = buildUnnamed6();
      final arg_target = 'foo';
      final arg_cid = buildUnnamed7();
      final arg_format = 'foo';
      final arg_model = 'foo';
      final arg_source = 'foo';
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('language/translate/'),
          );
          pathOffset += 19;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 2),
            unittest.equals('v2'),
          );
          pathOffset += 2;

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
          unittest.expect(queryMap['q']!, unittest.equals(arg_q));
          unittest.expect(
            queryMap['target']!.first,
            unittest.equals(arg_target),
          );
          unittest.expect(queryMap['cid']!, unittest.equals(arg_cid));
          unittest.expect(
            queryMap['format']!.first,
            unittest.equals(arg_format),
          );
          unittest.expect(queryMap['model']!.first, unittest.equals(arg_model));
          unittest.expect(
            queryMap['source']!.first,
            unittest.equals(arg_source),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode({
            'data': buildTranslationsListResponse(),
          });
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_q,
        arg_target,
        cid: arg_cid,
        format: arg_format,
        model: arg_model,
        source: arg_source,
        $fields: arg_$fields,
      );
      checkTranslationsListResponse(response as api.TranslationsListResponse);
    });

    unittest.test('method--translate', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).translations;
      final arg_request = buildTranslateTextRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TranslateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTranslateTextRequest(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('language/translate/'),
          );
          pathOffset += 19;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 2),
            unittest.equals('v2'),
          );
          pathOffset += 2;

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
          final resp = convert.json.encode({
            'data': buildTranslationsListResponse(),
          });
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.translate(arg_request, $fields: arg_$fields);
      checkTranslationsListResponse(response as api.TranslationsListResponse);
    });
  });
}
