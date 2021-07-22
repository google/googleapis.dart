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

import 'package:googleapis/acceleratedmobilepageurl/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAmpUrl = 0;
api.AmpUrl buildAmpUrl() {
  final o = api.AmpUrl();
  buildCounterAmpUrl++;
  if (buildCounterAmpUrl < 3) {
    o.ampUrl = 'foo';
    o.cdnAmpUrl = 'foo';
    o.originalUrl = 'foo';
  }
  buildCounterAmpUrl--;
  return o;
}

void checkAmpUrl(api.AmpUrl o) {
  buildCounterAmpUrl++;
  if (buildCounterAmpUrl < 3) {
    unittest.expect(
      o.ampUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cdnAmpUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAmpUrl--;
}

core.int buildCounterAmpUrlError = 0;
api.AmpUrlError buildAmpUrlError() {
  final o = api.AmpUrlError();
  buildCounterAmpUrlError++;
  if (buildCounterAmpUrlError < 3) {
    o.errorCode = 'foo';
    o.errorMessage = 'foo';
    o.originalUrl = 'foo';
  }
  buildCounterAmpUrlError--;
  return o;
}

void checkAmpUrlError(api.AmpUrlError o) {
  buildCounterAmpUrlError++;
  if (buildCounterAmpUrlError < 3) {
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAmpUrlError--;
}

core.List<core.String> buildUnnamed4508() => [
      'foo',
      'foo',
    ];

void checkUnnamed4508(core.List<core.String> o) {
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

core.int buildCounterBatchGetAmpUrlsRequest = 0;
api.BatchGetAmpUrlsRequest buildBatchGetAmpUrlsRequest() {
  final o = api.BatchGetAmpUrlsRequest();
  buildCounterBatchGetAmpUrlsRequest++;
  if (buildCounterBatchGetAmpUrlsRequest < 3) {
    o.lookupStrategy = 'foo';
    o.urls = buildUnnamed4508();
  }
  buildCounterBatchGetAmpUrlsRequest--;
  return o;
}

void checkBatchGetAmpUrlsRequest(api.BatchGetAmpUrlsRequest o) {
  buildCounterBatchGetAmpUrlsRequest++;
  if (buildCounterBatchGetAmpUrlsRequest < 3) {
    unittest.expect(
      o.lookupStrategy!,
      unittest.equals('foo'),
    );
    checkUnnamed4508(o.urls!);
  }
  buildCounterBatchGetAmpUrlsRequest--;
}

core.List<api.AmpUrl> buildUnnamed4509() => [
      buildAmpUrl(),
      buildAmpUrl(),
    ];

void checkUnnamed4509(core.List<api.AmpUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAmpUrl(o[0]);
  checkAmpUrl(o[1]);
}

core.List<api.AmpUrlError> buildUnnamed4510() => [
      buildAmpUrlError(),
      buildAmpUrlError(),
    ];

void checkUnnamed4510(core.List<api.AmpUrlError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAmpUrlError(o[0]);
  checkAmpUrlError(o[1]);
}

core.int buildCounterBatchGetAmpUrlsResponse = 0;
api.BatchGetAmpUrlsResponse buildBatchGetAmpUrlsResponse() {
  final o = api.BatchGetAmpUrlsResponse();
  buildCounterBatchGetAmpUrlsResponse++;
  if (buildCounterBatchGetAmpUrlsResponse < 3) {
    o.ampUrls = buildUnnamed4509();
    o.urlErrors = buildUnnamed4510();
  }
  buildCounterBatchGetAmpUrlsResponse--;
  return o;
}

void checkBatchGetAmpUrlsResponse(api.BatchGetAmpUrlsResponse o) {
  buildCounterBatchGetAmpUrlsResponse++;
  if (buildCounterBatchGetAmpUrlsResponse < 3) {
    checkUnnamed4509(o.ampUrls!);
    checkUnnamed4510(o.urlErrors!);
  }
  buildCounterBatchGetAmpUrlsResponse--;
}

void main() {
  unittest.group('obj-schema-AmpUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmpUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AmpUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAmpUrl(od);
    });
  });

  unittest.group('obj-schema-AmpUrlError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmpUrlError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AmpUrlError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAmpUrlError(od);
    });
  });

  unittest.group('obj-schema-BatchGetAmpUrlsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetAmpUrlsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetAmpUrlsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetAmpUrlsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchGetAmpUrlsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetAmpUrlsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetAmpUrlsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetAmpUrlsResponse(od);
    });
  });

  unittest.group('resource-AmpUrlsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.AcceleratedmobilepageurlApi(mock).ampUrls;
      final arg_request = buildBatchGetAmpUrlsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchGetAmpUrlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchGetAmpUrlsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v1/ampUrls:batchGet'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildBatchGetAmpUrlsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_request, $fields: arg_$fields);
      checkBatchGetAmpUrlsResponse(response as api.BatchGetAmpUrlsResponse);
    });
  });
}
