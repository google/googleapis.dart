// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/licensing/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterLicenseAssignment = 0;
api.LicenseAssignment buildLicenseAssignment() {
  var o = api.LicenseAssignment();
  buildCounterLicenseAssignment++;
  if (buildCounterLicenseAssignment < 3) {
    o.etags = 'foo';
    o.kind = 'foo';
    o.productId = 'foo';
    o.productName = 'foo';
    o.selfLink = 'foo';
    o.skuId = 'foo';
    o.skuName = 'foo';
    o.userId = 'foo';
  }
  buildCounterLicenseAssignment--;
  return o;
}

void checkLicenseAssignment(api.LicenseAssignment o) {
  buildCounterLicenseAssignment++;
  if (buildCounterLicenseAssignment < 3) {
    unittest.expect(o.etags, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productName, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.skuId, unittest.equals('foo'));
    unittest.expect(o.skuName, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterLicenseAssignment--;
}

core.int buildCounterLicenseAssignmentInsert = 0;
api.LicenseAssignmentInsert buildLicenseAssignmentInsert() {
  var o = api.LicenseAssignmentInsert();
  buildCounterLicenseAssignmentInsert++;
  if (buildCounterLicenseAssignmentInsert < 3) {
    o.userId = 'foo';
  }
  buildCounterLicenseAssignmentInsert--;
  return o;
}

void checkLicenseAssignmentInsert(api.LicenseAssignmentInsert o) {
  buildCounterLicenseAssignmentInsert++;
  if (buildCounterLicenseAssignmentInsert < 3) {
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterLicenseAssignmentInsert--;
}

core.List<api.LicenseAssignment> buildUnnamed2876() {
  var o = <api.LicenseAssignment>[];
  o.add(buildLicenseAssignment());
  o.add(buildLicenseAssignment());
  return o;
}

void checkUnnamed2876(core.List<api.LicenseAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLicenseAssignment(o[0] as api.LicenseAssignment);
  checkLicenseAssignment(o[1] as api.LicenseAssignment);
}

core.int buildCounterLicenseAssignmentList = 0;
api.LicenseAssignmentList buildLicenseAssignmentList() {
  var o = api.LicenseAssignmentList();
  buildCounterLicenseAssignmentList++;
  if (buildCounterLicenseAssignmentList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed2876();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterLicenseAssignmentList--;
  return o;
}

void checkLicenseAssignmentList(api.LicenseAssignmentList o) {
  buildCounterLicenseAssignmentList++;
  if (buildCounterLicenseAssignmentList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed2876(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterLicenseAssignmentList--;
}

void main() {
  unittest.group('obj-schema-LicenseAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildLicenseAssignment();
      var od = api.LicenseAssignment.fromJson(o.toJson());
      checkLicenseAssignment(od as api.LicenseAssignment);
    });
  });

  unittest.group('obj-schema-LicenseAssignmentInsert', () {
    unittest.test('to-json--from-json', () {
      var o = buildLicenseAssignmentInsert();
      var od = api.LicenseAssignmentInsert.fromJson(o.toJson());
      checkLicenseAssignmentInsert(od as api.LicenseAssignmentInsert);
    });
  });

  unittest.group('obj-schema-LicenseAssignmentList', () {
    unittest.test('to-json--from-json', () {
      var o = buildLicenseAssignmentList();
      var od = api.LicenseAssignmentList.fromJson(o.toJson());
      checkLicenseAssignmentList(od as api.LicenseAssignmentList);
    });
  });

  unittest.group('resource-LicenseAssignmentsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_productId = 'foo';
      var arg_skuId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sku/"));
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_skuId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/user/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_productId, arg_skuId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_productId = 'foo';
      var arg_skuId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sku/"));
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_skuId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/user/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_productId, arg_skuId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLicenseAssignment(response as api.LicenseAssignment);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_request = buildLicenseAssignmentInsert();
      var arg_productId = 'foo';
      var arg_skuId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LicenseAssignmentInsert.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLicenseAssignmentInsert(obj as api.LicenseAssignmentInsert);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sku/"));
        pathOffset += 5;
        index = path.indexOf('/user', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_skuId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/user"));
        pathOffset += 5;

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
        var resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_productId, arg_skuId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLicenseAssignment(response as api.LicenseAssignment);
      })));
    });

    unittest.test('method--listForProduct', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_productId = 'foo';
      var arg_customerId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLicenseAssignmentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listForProduct(arg_productId, arg_customerId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLicenseAssignmentList(response as api.LicenseAssignmentList);
      })));
    });

    unittest.test('method--listForProductAndSku', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_productId = 'foo';
      var arg_skuId = 'foo';
      var arg_customerId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sku/"));
        pathOffset += 5;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_skuId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLicenseAssignmentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listForProductAndSku(arg_productId, arg_skuId, arg_customerId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLicenseAssignmentList(response as api.LicenseAssignmentList);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_request = buildLicenseAssignment();
      var arg_productId = 'foo';
      var arg_skuId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LicenseAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLicenseAssignment(obj as api.LicenseAssignment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sku/"));
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_skuId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/user/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_productId, arg_skuId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLicenseAssignment(response as api.LicenseAssignment);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.LicensingApi(mock).licenseAssignments;
      var arg_request = buildLicenseAssignment();
      var arg_productId = 'foo';
      var arg_skuId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LicenseAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLicenseAssignment(obj as api.LicenseAssignment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("apps/licensing/v1/product/"));
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sku/"));
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_skuId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/user/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_productId, arg_skuId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLicenseAssignment(response as api.LicenseAssignment);
      })));
    });
  });
}
