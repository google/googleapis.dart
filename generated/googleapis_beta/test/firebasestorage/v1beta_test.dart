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

import 'package:googleapis_beta/firebasestorage/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddFirebaseRequest = 0;
api.AddFirebaseRequest buildAddFirebaseRequest() {
  var o = api.AddFirebaseRequest();
  buildCounterAddFirebaseRequest++;
  if (buildCounterAddFirebaseRequest < 3) {}
  buildCounterAddFirebaseRequest--;
  return o;
}

void checkAddFirebaseRequest(api.AddFirebaseRequest o) {
  buildCounterAddFirebaseRequest++;
  if (buildCounterAddFirebaseRequest < 3) {}
  buildCounterAddFirebaseRequest--;
}

core.int buildCounterBucket = 0;
api.Bucket buildBucket() {
  var o = api.Bucket();
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    o.location = 'foo';
    o.name = 'foo';
    o.reconciling = true;
  }
  buildCounterBucket--;
  return o;
}

void checkBucket(api.Bucket o) {
  buildCounterBucket++;
  if (buildCounterBucket < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
  }
  buildCounterBucket--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.Bucket> buildUnnamed8824() {
  var o = <api.Bucket>[];
  o.add(buildBucket());
  o.add(buildBucket());
  return o;
}

void checkUnnamed8824(core.List<api.Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBucket(o[0] as api.Bucket);
  checkBucket(o[1] as api.Bucket);
}

core.int buildCounterListBucketsResponse = 0;
api.ListBucketsResponse buildListBucketsResponse() {
  var o = api.ListBucketsResponse();
  buildCounterListBucketsResponse++;
  if (buildCounterListBucketsResponse < 3) {
    o.buckets = buildUnnamed8824();
    o.nextPageToken = 'foo';
  }
  buildCounterListBucketsResponse--;
  return o;
}

void checkListBucketsResponse(api.ListBucketsResponse o) {
  buildCounterListBucketsResponse++;
  if (buildCounterListBucketsResponse < 3) {
    checkUnnamed8824(o.buckets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBucketsResponse--;
}

core.int buildCounterRemoveFirebaseRequest = 0;
api.RemoveFirebaseRequest buildRemoveFirebaseRequest() {
  var o = api.RemoveFirebaseRequest();
  buildCounterRemoveFirebaseRequest++;
  if (buildCounterRemoveFirebaseRequest < 3) {}
  buildCounterRemoveFirebaseRequest--;
  return o;
}

void checkRemoveFirebaseRequest(api.RemoveFirebaseRequest o) {
  buildCounterRemoveFirebaseRequest++;
  if (buildCounterRemoveFirebaseRequest < 3) {}
  buildCounterRemoveFirebaseRequest--;
}

void main() {
  unittest.group('obj-schema-AddFirebaseRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAddFirebaseRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AddFirebaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddFirebaseRequest(od as api.AddFirebaseRequest);
    });
  });

  unittest.group('obj-schema-Bucket', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBucket();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Bucket.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBucket(od as api.Bucket);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-ListBucketsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListBucketsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListBucketsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBucketsResponse(od as api.ListBucketsResponse);
    });
  });

  unittest.group('obj-schema-RemoveFirebaseRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRemoveFirebaseRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RemoveFirebaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveFirebaseRequest(od as api.RemoveFirebaseRequest);
    });
  });

  unittest.group('resource-ProjectsBucketsResource', () {
    unittest.test('method--addFirebase', () async {
      var mock = HttpServerMock();
      var res = api.FirebasestorageApi(mock).projects.buckets;
      var arg_request = buildAddFirebaseRequest();
      var arg_bucket = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddFirebaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddFirebaseRequest(obj as api.AddFirebaseRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addFirebase(arg_request, arg_bucket, $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebasestorageApi(mock).projects.buckets;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBucket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBucket(response as api.Bucket);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebasestorageApi(mock).projects.buckets;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListBucketsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBucketsResponse(response as api.ListBucketsResponse);
    });

    unittest.test('method--removeFirebase', () async {
      var mock = HttpServerMock();
      var res = api.FirebasestorageApi(mock).projects.buckets;
      var arg_request = buildRemoveFirebaseRequest();
      var arg_bucket = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveFirebaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveFirebaseRequest(obj as api.RemoveFirebaseRequest);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("v1beta/"),
        );
        pathOffset += 7;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeFirebase(arg_request, arg_bucket,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });
}
