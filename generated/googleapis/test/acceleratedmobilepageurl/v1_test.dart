// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/acceleratedmobilepageurl/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAmpUrl = 0;
api.AmpUrl buildAmpUrl() {
  var o = api.AmpUrl();
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
    unittest.expect(o.ampUrl, unittest.equals('foo'));
    unittest.expect(o.cdnAmpUrl, unittest.equals('foo'));
    unittest.expect(o.originalUrl, unittest.equals('foo'));
  }
  buildCounterAmpUrl--;
}

core.int buildCounterAmpUrlError = 0;
api.AmpUrlError buildAmpUrlError() {
  var o = api.AmpUrlError();
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
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.originalUrl, unittest.equals('foo'));
  }
  buildCounterAmpUrlError--;
}

core.List<core.String> buildUnnamed3591() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3591(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchGetAmpUrlsRequest = 0;
api.BatchGetAmpUrlsRequest buildBatchGetAmpUrlsRequest() {
  var o = api.BatchGetAmpUrlsRequest();
  buildCounterBatchGetAmpUrlsRequest++;
  if (buildCounterBatchGetAmpUrlsRequest < 3) {
    o.lookupStrategy = 'foo';
    o.urls = buildUnnamed3591();
  }
  buildCounterBatchGetAmpUrlsRequest--;
  return o;
}

void checkBatchGetAmpUrlsRequest(api.BatchGetAmpUrlsRequest o) {
  buildCounterBatchGetAmpUrlsRequest++;
  if (buildCounterBatchGetAmpUrlsRequest < 3) {
    unittest.expect(o.lookupStrategy, unittest.equals('foo'));
    checkUnnamed3591(o.urls);
  }
  buildCounterBatchGetAmpUrlsRequest--;
}

core.List<api.AmpUrl> buildUnnamed3592() {
  var o = <api.AmpUrl>[];
  o.add(buildAmpUrl());
  o.add(buildAmpUrl());
  return o;
}

void checkUnnamed3592(core.List<api.AmpUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAmpUrl(o[0] as api.AmpUrl);
  checkAmpUrl(o[1] as api.AmpUrl);
}

core.List<api.AmpUrlError> buildUnnamed3593() {
  var o = <api.AmpUrlError>[];
  o.add(buildAmpUrlError());
  o.add(buildAmpUrlError());
  return o;
}

void checkUnnamed3593(core.List<api.AmpUrlError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAmpUrlError(o[0] as api.AmpUrlError);
  checkAmpUrlError(o[1] as api.AmpUrlError);
}

core.int buildCounterBatchGetAmpUrlsResponse = 0;
api.BatchGetAmpUrlsResponse buildBatchGetAmpUrlsResponse() {
  var o = api.BatchGetAmpUrlsResponse();
  buildCounterBatchGetAmpUrlsResponse++;
  if (buildCounterBatchGetAmpUrlsResponse < 3) {
    o.ampUrls = buildUnnamed3592();
    o.urlErrors = buildUnnamed3593();
  }
  buildCounterBatchGetAmpUrlsResponse--;
  return o;
}

void checkBatchGetAmpUrlsResponse(api.BatchGetAmpUrlsResponse o) {
  buildCounterBatchGetAmpUrlsResponse++;
  if (buildCounterBatchGetAmpUrlsResponse < 3) {
    checkUnnamed3592(o.ampUrls);
    checkUnnamed3593(o.urlErrors);
  }
  buildCounterBatchGetAmpUrlsResponse--;
}

void main() {
  unittest.group('obj-schema-AmpUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildAmpUrl();
      var od = api.AmpUrl.fromJson(o.toJson());
      checkAmpUrl(od as api.AmpUrl);
    });
  });

  unittest.group('obj-schema-AmpUrlError', () {
    unittest.test('to-json--from-json', () {
      var o = buildAmpUrlError();
      var od = api.AmpUrlError.fromJson(o.toJson());
      checkAmpUrlError(od as api.AmpUrlError);
    });
  });

  unittest.group('obj-schema-BatchGetAmpUrlsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetAmpUrlsRequest();
      var od = api.BatchGetAmpUrlsRequest.fromJson(o.toJson());
      checkBatchGetAmpUrlsRequest(od as api.BatchGetAmpUrlsRequest);
    });
  });

  unittest.group('obj-schema-BatchGetAmpUrlsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetAmpUrlsResponse();
      var od = api.BatchGetAmpUrlsResponse.fromJson(o.toJson());
      checkBatchGetAmpUrlsResponse(od as api.BatchGetAmpUrlsResponse);
    });
  });

  unittest.group('resource-AmpUrlsResource', () {
    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      var res = api.AcceleratedmobilepageurlApi(mock).ampUrls;
      var arg_request = buildBatchGetAmpUrlsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchGetAmpUrlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchGetAmpUrlsRequest(obj as api.BatchGetAmpUrlsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/ampUrls:batchGet"));
        pathOffset += 19;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchGetAmpUrlsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetAmpUrlsResponse(response as api.BatchGetAmpUrlsResponse);
      })));
    });
  });
}
