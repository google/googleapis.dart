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

import 'package:googleapis/licensing/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
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

core.int buildCounterLicenseAssignment = 0;
api.LicenseAssignment buildLicenseAssignment() {
  final o = api.LicenseAssignment();
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
    unittest.expect(
      o.etags!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skuId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skuName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLicenseAssignment--;
}

core.int buildCounterLicenseAssignmentInsert = 0;
api.LicenseAssignmentInsert buildLicenseAssignmentInsert() {
  final o = api.LicenseAssignmentInsert();
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
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLicenseAssignmentInsert--;
}

core.List<api.LicenseAssignment> buildUnnamed4055() => [
      buildLicenseAssignment(),
      buildLicenseAssignment(),
    ];

void checkUnnamed4055(core.List<api.LicenseAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLicenseAssignment(o[0]);
  checkLicenseAssignment(o[1]);
}

core.int buildCounterLicenseAssignmentList = 0;
api.LicenseAssignmentList buildLicenseAssignmentList() {
  final o = api.LicenseAssignmentList();
  buildCounterLicenseAssignmentList++;
  if (buildCounterLicenseAssignmentList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4055();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterLicenseAssignmentList--;
  return o;
}

void checkLicenseAssignmentList(api.LicenseAssignmentList o) {
  buildCounterLicenseAssignmentList++;
  if (buildCounterLicenseAssignmentList < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed4055(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterLicenseAssignmentList--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-LicenseAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLicenseAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LicenseAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLicenseAssignment(od);
    });
  });

  unittest.group('obj-schema-LicenseAssignmentInsert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLicenseAssignmentInsert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LicenseAssignmentInsert.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLicenseAssignmentInsert(od);
    });
  });

  unittest.group('obj-schema-LicenseAssignmentList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLicenseAssignmentList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LicenseAssignmentList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLicenseAssignmentList(od);
    });
  });

  unittest.group('resource-LicenseAssignmentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_productId = 'foo';
      final arg_skuId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/sku/'),
        );
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_skuId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/user/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_productId, arg_skuId, arg_userId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_productId = 'foo';
      final arg_skuId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/sku/'),
        );
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_skuId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/user/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_productId, arg_skuId, arg_userId,
          $fields: arg_$fields);
      checkLicenseAssignment(response as api.LicenseAssignment);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_request = buildLicenseAssignmentInsert();
      final arg_productId = 'foo';
      final arg_skuId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LicenseAssignmentInsert.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLicenseAssignmentInsert(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/sku/'),
        );
        pathOffset += 5;
        index = path.indexOf('/user', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_skuId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/user'),
        );
        pathOffset += 5;

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
        final resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_productId, arg_skuId,
          $fields: arg_$fields);
      checkLicenseAssignment(response as api.LicenseAssignment);
    });

    unittest.test('method--listForProduct', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_productId = 'foo';
      final arg_customerId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLicenseAssignmentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listForProduct(arg_productId, arg_customerId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLicenseAssignmentList(response as api.LicenseAssignmentList);
    });

    unittest.test('method--listForProductAndSku', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_productId = 'foo';
      final arg_skuId = 'foo';
      final arg_customerId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/sku/'),
        );
        pathOffset += 5;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_skuId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLicenseAssignmentList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listForProductAndSku(
          arg_productId, arg_skuId, arg_customerId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLicenseAssignmentList(response as api.LicenseAssignmentList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_request = buildLicenseAssignment();
      final arg_productId = 'foo';
      final arg_skuId = 'foo';
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LicenseAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLicenseAssignment(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/sku/'),
        );
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_skuId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/user/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_productId, arg_skuId, arg_userId,
          $fields: arg_$fields);
      checkLicenseAssignment(response as api.LicenseAssignment);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.LicensingApi(mock).licenseAssignments;
      final arg_request = buildLicenseAssignment();
      final arg_productId = 'foo';
      final arg_skuId = 'foo';
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LicenseAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLicenseAssignment(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('apps/licensing/v1/product/'),
        );
        pathOffset += 26;
        index = path.indexOf('/sku/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/sku/'),
        );
        pathOffset += 5;
        index = path.indexOf('/user/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_skuId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/user/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = convert.json.encode(buildLicenseAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_productId, arg_skuId, arg_userId,
          $fields: arg_$fields);
      checkLicenseAssignment(response as api.LicenseAssignment);
    });
  });
}
