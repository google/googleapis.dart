// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/cloudproductregistry/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.LogicalProductVariant> buildUnnamed0() => [
  buildLogicalProductVariant(),
  buildLogicalProductVariant(),
];

void checkUnnamed0(core.List<api.LogicalProductVariant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogicalProductVariant(o[0]);
  checkLogicalProductVariant(o[1]);
}

core.int buildCounterListLogicalProductVariantsResponse = 0;
api.ListLogicalProductVariantsResponse
buildListLogicalProductVariantsResponse() {
  final o = api.ListLogicalProductVariantsResponse();
  buildCounterListLogicalProductVariantsResponse++;
  if (buildCounterListLogicalProductVariantsResponse < 3) {
    o.logicalProductVariants = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListLogicalProductVariantsResponse--;
  return o;
}

void checkListLogicalProductVariantsResponse(
  api.ListLogicalProductVariantsResponse o,
) {
  buildCounterListLogicalProductVariantsResponse++;
  if (buildCounterListLogicalProductVariantsResponse < 3) {
    checkUnnamed0(o.logicalProductVariants!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLogicalProductVariantsResponse--;
}

core.List<api.LogicalProduct> buildUnnamed1() => [
  buildLogicalProduct(),
  buildLogicalProduct(),
];

void checkUnnamed1(core.List<api.LogicalProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogicalProduct(o[0]);
  checkLogicalProduct(o[1]);
}

core.int buildCounterListLogicalProductsResponse = 0;
api.ListLogicalProductsResponse buildListLogicalProductsResponse() {
  final o = api.ListLogicalProductsResponse();
  buildCounterListLogicalProductsResponse++;
  if (buildCounterListLogicalProductsResponse < 3) {
    o.logicalProducts = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListLogicalProductsResponse--;
  return o;
}

void checkListLogicalProductsResponse(api.ListLogicalProductsResponse o) {
  buildCounterListLogicalProductsResponse++;
  if (buildCounterListLogicalProductsResponse < 3) {
    checkUnnamed1(o.logicalProducts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLogicalProductsResponse--;
}

core.List<api.ProductSuite> buildUnnamed2() => [
  buildProductSuite(),
  buildProductSuite(),
];

void checkUnnamed2(core.List<api.ProductSuite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductSuite(o[0]);
  checkProductSuite(o[1]);
}

core.int buildCounterListProductSuitesResponse = 0;
api.ListProductSuitesResponse buildListProductSuitesResponse() {
  final o = api.ListProductSuitesResponse();
  buildCounterListProductSuitesResponse++;
  if (buildCounterListProductSuitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.productSuites = buildUnnamed2();
  }
  buildCounterListProductSuitesResponse--;
  return o;
}

void checkListProductSuitesResponse(api.ListProductSuitesResponse o) {
  buildCounterListProductSuitesResponse++;
  if (buildCounterListProductSuitesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.productSuites!);
  }
  buildCounterListProductSuitesResponse--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLogicalProduct = 0;
api.LogicalProduct buildLogicalProduct() {
  final o = api.LogicalProduct();
  buildCounterLogicalProduct++;
  if (buildCounterLogicalProduct < 3) {
    o.lifecycleState = 'foo';
    o.name = 'foo';
    o.productSuite = 'foo';
    o.replaced = true;
    o.replacement = 'foo';
    o.title = 'foo';
    o.variants = buildUnnamed3();
  }
  buildCounterLogicalProduct--;
  return o;
}

void checkLogicalProduct(api.LogicalProduct o) {
  buildCounterLogicalProduct++;
  if (buildCounterLogicalProduct < 3) {
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.productSuite!, unittest.equals('foo'));
    unittest.expect(o.replaced!, unittest.isTrue);
    unittest.expect(o.replacement!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    checkUnnamed3(o.variants!);
  }
  buildCounterLogicalProduct--;
}

core.int buildCounterLogicalProductVariant = 0;
api.LogicalProductVariant buildLogicalProductVariant() {
  final o = api.LogicalProductVariant();
  buildCounterLogicalProductVariant++;
  if (buildCounterLogicalProductVariant < 3) {
    o.lifecycleState = 'foo';
    o.name = 'foo';
    o.replaced = true;
    o.replacement = 'foo';
    o.title = 'foo';
  }
  buildCounterLogicalProductVariant--;
  return o;
}

void checkLogicalProductVariant(api.LogicalProductVariant o) {
  buildCounterLogicalProductVariant++;
  if (buildCounterLogicalProductVariant < 3) {
    unittest.expect(o.lifecycleState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.replaced!, unittest.isTrue);
    unittest.expect(o.replacement!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterLogicalProductVariant--;
}

core.int buildCounterLookupEntityResponse = 0;
api.LookupEntityResponse buildLookupEntityResponse() {
  final o = api.LookupEntityResponse();
  buildCounterLookupEntityResponse++;
  if (buildCounterLookupEntityResponse < 3) {
    o.logicalProduct = buildLogicalProduct();
    o.logicalProductVariant = buildLogicalProductVariant();
    o.productSuite = buildProductSuite();
  }
  buildCounterLookupEntityResponse--;
  return o;
}

void checkLookupEntityResponse(api.LookupEntityResponse o) {
  buildCounterLookupEntityResponse++;
  if (buildCounterLookupEntityResponse < 3) {
    checkLogicalProduct(o.logicalProduct!);
    checkLogicalProductVariant(o.logicalProductVariant!);
    checkProductSuite(o.productSuite!);
  }
  buildCounterLookupEntityResponse--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductSuite = 0;
api.ProductSuite buildProductSuite() {
  final o = api.ProductSuite();
  buildCounterProductSuite++;
  if (buildCounterProductSuite < 3) {
    o.logicalProducts = buildUnnamed4();
    o.name = 'foo';
    o.replaced = true;
    o.replacement = 'foo';
    o.title = 'foo';
  }
  buildCounterProductSuite--;
  return o;
}

void checkProductSuite(api.ProductSuite o) {
  buildCounterProductSuite++;
  if (buildCounterProductSuite < 3) {
    checkUnnamed4(o.logicalProducts!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.replaced!, unittest.isTrue);
    unittest.expect(o.replacement!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterProductSuite--;
}

void main() {
  unittest.group('obj-schema-ListLogicalProductVariantsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLogicalProductVariantsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLogicalProductVariantsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLogicalProductVariantsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLogicalProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLogicalProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLogicalProductsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLogicalProductsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductSuitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductSuitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductSuitesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProductSuitesResponse(od);
    });
  });

  unittest.group('obj-schema-LogicalProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogicalProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogicalProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLogicalProduct(od);
    });
  });

  unittest.group('obj-schema-LogicalProductVariant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogicalProductVariant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogicalProductVariant.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLogicalProductVariant(od);
    });
  });

  unittest.group('obj-schema-LookupEntityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupEntityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupEntityResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupEntityResponse(od);
    });
  });

  unittest.group('obj-schema-ProductSuite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSuite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSuite.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductSuite(od);
    });
  });

  unittest.group('resource-LogicalProductsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).logicalProducts;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildLogicalProduct());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLogicalProduct(response as api.LogicalProduct);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).logicalProducts;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/logicalProducts'),
          );
          pathOffset += 18;

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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLogicalProductsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLogicalProductsResponse(
        response as api.ListLogicalProductsResponse,
      );
    });

    unittest.test('method--lookupEntity', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).logicalProducts;
      final arg_lookupUri = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildLookupEntityResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupEntity(
        arg_lookupUri,
        $fields: arg_$fields,
      );
      checkLookupEntityResponse(response as api.LookupEntityResponse);
    });
  });

  unittest.group('resource-LogicalProductsVariantsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).logicalProducts.variants;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildLogicalProductVariant());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLogicalProductVariant(response as api.LogicalProductVariant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).logicalProducts.variants;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListLogicalProductVariantsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLogicalProductVariantsResponse(
        response as api.ListLogicalProductVariantsResponse,
      );
    });

    unittest.test('method--lookupEntity', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).logicalProducts.variants;
      final arg_lookupUri = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildLookupEntityResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupEntity(
        arg_lookupUri,
        $fields: arg_$fields,
      );
      checkLookupEntityResponse(response as api.LookupEntityResponse);
    });
  });

  unittest.group('resource-ProductSuitesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).productSuites;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildProductSuite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProductSuite(response as api.ProductSuite);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).productSuites;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1/productSuites'),
          );
          pathOffset += 16;

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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListProductSuitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListProductSuitesResponse(response as api.ListProductSuitesResponse);
    });

    unittest.test('method--lookupEntity', () async {
      final mock = HttpServerMock();
      final res = api.CloudProductRegistryApi(mock).productSuites;
      final arg_lookupUri = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildLookupEntityResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupEntity(
        arg_lookupUri,
        $fields: arg_$fields,
      );
      checkLookupEntityResponse(response as api.LookupEntityResponse);
    });
  });
}
