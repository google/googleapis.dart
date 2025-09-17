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

import 'package:googleapis/playgrouping/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Tag> buildUnnamed0() => [buildTag(), buildTag()];

void checkUnnamed0(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterCreateOrUpdateTagsRequest = 0;
api.CreateOrUpdateTagsRequest buildCreateOrUpdateTagsRequest() {
  final o = api.CreateOrUpdateTagsRequest();
  buildCounterCreateOrUpdateTagsRequest++;
  if (buildCounterCreateOrUpdateTagsRequest < 3) {
    o.tags = buildUnnamed0();
  }
  buildCounterCreateOrUpdateTagsRequest--;
  return o;
}

void checkCreateOrUpdateTagsRequest(api.CreateOrUpdateTagsRequest o) {
  buildCounterCreateOrUpdateTagsRequest++;
  if (buildCounterCreateOrUpdateTagsRequest < 3) {
    checkUnnamed0(o.tags!);
  }
  buildCounterCreateOrUpdateTagsRequest--;
}

core.List<api.Tag> buildUnnamed1() => [buildTag(), buildTag()];

void checkUnnamed1(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterCreateOrUpdateTagsResponse = 0;
api.CreateOrUpdateTagsResponse buildCreateOrUpdateTagsResponse() {
  final o = api.CreateOrUpdateTagsResponse();
  buildCounterCreateOrUpdateTagsResponse++;
  if (buildCounterCreateOrUpdateTagsResponse < 3) {
    o.tags = buildUnnamed1();
  }
  buildCounterCreateOrUpdateTagsResponse--;
  return o;
}

void checkCreateOrUpdateTagsResponse(api.CreateOrUpdateTagsResponse o) {
  buildCounterCreateOrUpdateTagsResponse++;
  if (buildCounterCreateOrUpdateTagsResponse < 3) {
    checkUnnamed1(o.tags!);
  }
  buildCounterCreateOrUpdateTagsResponse--;
}

core.int buildCounterTag = 0;
api.Tag buildTag() {
  final o = api.Tag();
  buildCounterTag++;
  if (buildCounterTag < 3) {
    o.booleanValue = true;
    o.int64Value = 'foo';
    o.key = 'foo';
    o.stringValue = 'foo';
    o.timeValue = 'foo';
  }
  buildCounterTag--;
  return o;
}

void checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(o.int64Value!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
    unittest.expect(o.timeValue!, unittest.equals('foo'));
  }
  buildCounterTag--;
}

core.int buildCounterVerifyTokenRequest = 0;
api.VerifyTokenRequest buildVerifyTokenRequest() {
  final o = api.VerifyTokenRequest();
  buildCounterVerifyTokenRequest++;
  if (buildCounterVerifyTokenRequest < 3) {
    o.persona = 'foo';
  }
  buildCounterVerifyTokenRequest--;
  return o;
}

void checkVerifyTokenRequest(api.VerifyTokenRequest o) {
  buildCounterVerifyTokenRequest++;
  if (buildCounterVerifyTokenRequest < 3) {
    unittest.expect(o.persona!, unittest.equals('foo'));
  }
  buildCounterVerifyTokenRequest--;
}

core.int buildCounterVerifyTokenResponse = 0;
api.VerifyTokenResponse buildVerifyTokenResponse() {
  final o = api.VerifyTokenResponse();
  buildCounterVerifyTokenResponse++;
  if (buildCounterVerifyTokenResponse < 3) {}
  buildCounterVerifyTokenResponse--;
  return o;
}

void checkVerifyTokenResponse(api.VerifyTokenResponse o) {
  buildCounterVerifyTokenResponse++;
  if (buildCounterVerifyTokenResponse < 3) {}
  buildCounterVerifyTokenResponse--;
}

void main() {
  unittest.group('obj-schema-CreateOrUpdateTagsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateOrUpdateTagsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateOrUpdateTagsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateOrUpdateTagsRequest(od);
    });
  });

  unittest.group('obj-schema-CreateOrUpdateTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateOrUpdateTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateOrUpdateTagsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateOrUpdateTagsResponse(od);
    });
  });

  unittest.group('obj-schema-Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTag(od);
    });
  });

  unittest.group('obj-schema-VerifyTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerifyTokenRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerifyTokenResponse(od);
    });
  });

  unittest.group('resource-AppsTokensResource', () {
    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.PlayGroupingApi(mock).apps.tokens;
      final arg_request = buildVerifyTokenRequest();
      final arg_appPackage = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VerifyTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVerifyTokenRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildVerifyTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.verify(
        arg_request,
        arg_appPackage,
        arg_token,
        $fields: arg_$fields,
      );
      checkVerifyTokenResponse(response as api.VerifyTokenResponse);
    });
  });

  unittest.group('resource-AppsTokensTagsResource', () {
    unittest.test('method--createOrUpdate', () async {
      final mock = HttpServerMock();
      final res = api.PlayGroupingApi(mock).apps.tokens.tags;
      final arg_request = buildCreateOrUpdateTagsRequest();
      final arg_appPackage = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateOrUpdateTagsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateOrUpdateTagsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCreateOrUpdateTagsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.createOrUpdate(
        arg_request,
        arg_appPackage,
        arg_token,
        $fields: arg_$fields,
      );
      checkCreateOrUpdateTagsResponse(
        response as api.CreateOrUpdateTagsResponse,
      );
    });
  });
}
