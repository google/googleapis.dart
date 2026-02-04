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

import 'package:googleapis/merchantapi/inventories_v1.dart' as api;
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

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.int buildCounterInventoryLoyaltyProgram = 0;
api.InventoryLoyaltyProgram buildInventoryLoyaltyProgram() {
  final o = api.InventoryLoyaltyProgram();
  buildCounterInventoryLoyaltyProgram++;
  if (buildCounterInventoryLoyaltyProgram < 3) {
    o.cashbackForFutureUse = buildPrice();
    o.loyaltyPoints = 'foo';
    o.memberPriceEffectiveInterval = buildInterval();
    o.price = buildPrice();
    o.programLabel = 'foo';
    o.shippingLabel = 'foo';
    o.tierLabel = 'foo';
  }
  buildCounterInventoryLoyaltyProgram--;
  return o;
}

void checkInventoryLoyaltyProgram(api.InventoryLoyaltyProgram o) {
  buildCounterInventoryLoyaltyProgram++;
  if (buildCounterInventoryLoyaltyProgram < 3) {
    checkPrice(o.cashbackForFutureUse!);
    unittest.expect(o.loyaltyPoints!, unittest.equals('foo'));
    checkInterval(o.memberPriceEffectiveInterval!);
    checkPrice(o.price!);
    unittest.expect(o.programLabel!, unittest.equals('foo'));
    unittest.expect(o.shippingLabel!, unittest.equals('foo'));
    unittest.expect(o.tierLabel!, unittest.equals('foo'));
  }
  buildCounterInventoryLoyaltyProgram--;
}

core.List<api.LocalInventory> buildUnnamed0() => [
  buildLocalInventory(),
  buildLocalInventory(),
];

void checkUnnamed0(core.List<api.LocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalInventory(o[0]);
  checkLocalInventory(o[1]);
}

core.int buildCounterListLocalInventoriesResponse = 0;
api.ListLocalInventoriesResponse buildListLocalInventoriesResponse() {
  final o = api.ListLocalInventoriesResponse();
  buildCounterListLocalInventoriesResponse++;
  if (buildCounterListLocalInventoriesResponse < 3) {
    o.localInventories = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocalInventoriesResponse--;
  return o;
}

void checkListLocalInventoriesResponse(api.ListLocalInventoriesResponse o) {
  buildCounterListLocalInventoriesResponse++;
  if (buildCounterListLocalInventoriesResponse < 3) {
    checkUnnamed0(o.localInventories!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocalInventoriesResponse--;
}

core.List<api.RegionalInventory> buildUnnamed1() => [
  buildRegionalInventory(),
  buildRegionalInventory(),
];

void checkUnnamed1(core.List<api.RegionalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalInventory(o[0]);
  checkRegionalInventory(o[1]);
}

core.int buildCounterListRegionalInventoriesResponse = 0;
api.ListRegionalInventoriesResponse buildListRegionalInventoriesResponse() {
  final o = api.ListRegionalInventoriesResponse();
  buildCounterListRegionalInventoriesResponse++;
  if (buildCounterListRegionalInventoriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.regionalInventories = buildUnnamed1();
  }
  buildCounterListRegionalInventoriesResponse--;
  return o;
}

void checkListRegionalInventoriesResponse(
  api.ListRegionalInventoriesResponse o,
) {
  buildCounterListRegionalInventoriesResponse++;
  if (buildCounterListRegionalInventoriesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed1(o.regionalInventories!);
  }
  buildCounterListRegionalInventoriesResponse--;
}

core.int buildCounterLocalInventory = 0;
api.LocalInventory buildLocalInventory() {
  final o = api.LocalInventory();
  buildCounterLocalInventory++;
  if (buildCounterLocalInventory < 3) {
    o.account = 'foo';
    o.localInventoryAttributes = buildLocalInventoryAttributes();
    o.name = 'foo';
    o.storeCode = 'foo';
  }
  buildCounterLocalInventory--;
  return o;
}

void checkLocalInventory(api.LocalInventory o) {
  buildCounterLocalInventory++;
  if (buildCounterLocalInventory < 3) {
    unittest.expect(o.account!, unittest.equals('foo'));
    checkLocalInventoryAttributes(o.localInventoryAttributes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.storeCode!, unittest.equals('foo'));
  }
  buildCounterLocalInventory--;
}

core.List<api.InventoryLoyaltyProgram> buildUnnamed2() => [
  buildInventoryLoyaltyProgram(),
  buildInventoryLoyaltyProgram(),
];

void checkUnnamed2(core.List<api.InventoryLoyaltyProgram> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryLoyaltyProgram(o[0]);
  checkInventoryLoyaltyProgram(o[1]);
}

core.int buildCounterLocalInventoryAttributes = 0;
api.LocalInventoryAttributes buildLocalInventoryAttributes() {
  final o = api.LocalInventoryAttributes();
  buildCounterLocalInventoryAttributes++;
  if (buildCounterLocalInventoryAttributes < 3) {
    o.availability = 'foo';
    o.instoreProductLocation = 'foo';
    o.loyaltyPrograms = buildUnnamed2();
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = buildInterval();
  }
  buildCounterLocalInventoryAttributes--;
  return o;
}

void checkLocalInventoryAttributes(api.LocalInventoryAttributes o) {
  buildCounterLocalInventoryAttributes++;
  if (buildCounterLocalInventoryAttributes < 3) {
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.instoreProductLocation!, unittest.equals('foo'));
    checkUnnamed2(o.loyaltyPrograms!);
    unittest.expect(o.pickupMethod!, unittest.equals('foo'));
    unittest.expect(o.pickupSla!, unittest.equals('foo'));
    checkPrice(o.price!);
    unittest.expect(o.quantity!, unittest.equals('foo'));
    checkPrice(o.salePrice!);
    checkInterval(o.salePriceEffectiveDate!);
  }
  buildCounterLocalInventoryAttributes--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 'foo';
    o.currencyCode = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterRegionalInventory = 0;
api.RegionalInventory buildRegionalInventory() {
  final o = api.RegionalInventory();
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    o.account = 'foo';
    o.name = 'foo';
    o.region = 'foo';
    o.regionalInventoryAttributes = buildRegionalInventoryAttributes();
  }
  buildCounterRegionalInventory--;
  return o;
}

void checkRegionalInventory(api.RegionalInventory o) {
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    unittest.expect(o.account!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    checkRegionalInventoryAttributes(o.regionalInventoryAttributes!);
  }
  buildCounterRegionalInventory--;
}

core.List<api.InventoryLoyaltyProgram> buildUnnamed3() => [
  buildInventoryLoyaltyProgram(),
  buildInventoryLoyaltyProgram(),
];

void checkUnnamed3(core.List<api.InventoryLoyaltyProgram> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryLoyaltyProgram(o[0]);
  checkInventoryLoyaltyProgram(o[1]);
}

core.int buildCounterRegionalInventoryAttributes = 0;
api.RegionalInventoryAttributes buildRegionalInventoryAttributes() {
  final o = api.RegionalInventoryAttributes();
  buildCounterRegionalInventoryAttributes++;
  if (buildCounterRegionalInventoryAttributes < 3) {
    o.availability = 'foo';
    o.loyaltyPrograms = buildUnnamed3();
    o.price = buildPrice();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = buildInterval();
  }
  buildCounterRegionalInventoryAttributes--;
  return o;
}

void checkRegionalInventoryAttributes(api.RegionalInventoryAttributes o) {
  buildCounterRegionalInventoryAttributes++;
  if (buildCounterRegionalInventoryAttributes < 3) {
    unittest.expect(o.availability!, unittest.equals('foo'));
    checkUnnamed3(o.loyaltyPrograms!);
    checkPrice(o.price!);
    checkPrice(o.salePrice!);
    checkInterval(o.salePriceEffectiveDate!);
  }
  buildCounterRegionalInventoryAttributes--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-InventoryLoyaltyProgram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryLoyaltyProgram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryLoyaltyProgram.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventoryLoyaltyProgram(od);
    });
  });

  unittest.group('obj-schema-ListLocalInventoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocalInventoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocalInventoriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocalInventoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRegionalInventoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRegionalInventoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRegionalInventoriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRegionalInventoriesResponse(od);
    });
  });

  unittest.group('obj-schema-LocalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalInventory(od);
    });
  });

  unittest.group('obj-schema-LocalInventoryAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalInventoryAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalInventoryAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalInventoryAttributes(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Price.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-RegionalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegionalInventory(od);
    });
  });

  unittest.group('obj-schema-RegionalInventoryAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalInventoryAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalInventoryAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegionalInventoryAttributes(od);
    });
  });

  unittest.group('resource-AccountsProductsLocalInventoriesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products.localInventories;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('inventories/v1/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products.localInventories;
      final arg_request = buildLocalInventory();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LocalInventory.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLocalInventory(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('inventories/v1/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildLocalInventory());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkLocalInventory(response as api.LocalInventory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products.localInventories;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('inventories/v1/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildListLocalInventoriesResponse());
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
      checkListLocalInventoriesResponse(
        response as api.ListLocalInventoriesResponse,
      );
    });
  });

  unittest.group('resource-AccountsProductsRegionalInventoriesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products.regionalInventories;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('inventories/v1/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products.regionalInventories;
      final arg_request = buildRegionalInventory();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RegionalInventory.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRegionalInventory(obj);

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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('inventories/v1/'),
          );
          pathOffset += 15;
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
          final resp = convert.json.encode(buildRegionalInventory());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkRegionalInventory(response as api.RegionalInventory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products.regionalInventories;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('inventories/v1/'),
          );
          pathOffset += 15;
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
            buildListRegionalInventoriesResponse(),
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
      checkListRegionalInventoriesResponse(
        response as api.ListRegionalInventoriesResponse,
      );
    });
  });
}
