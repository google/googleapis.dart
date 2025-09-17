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

import 'package:googleapis/merchantapi/lfp_v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCountrySettings = 0;
api.CountrySettings buildCountrySettings() {
  final o = api.CountrySettings();
  buildCounterCountrySettings++;
  if (buildCounterCountrySettings < 3) {
    o.freeLocalListingsEnabled = true;
    o.instockServingVerificationState = 'foo';
    o.inventoryVerificationState = 'foo';
    o.localInventoryAdsEnabled = true;
    o.pickupServingVerificationState = 'foo';
    o.productPageType = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterCountrySettings--;
  return o;
}

void checkCountrySettings(api.CountrySettings o) {
  buildCounterCountrySettings++;
  if (buildCounterCountrySettings < 3) {
    unittest.expect(o.freeLocalListingsEnabled!, unittest.isTrue);
    unittest.expect(o.instockServingVerificationState!, unittest.equals('foo'));
    unittest.expect(o.inventoryVerificationState!, unittest.equals('foo'));
    unittest.expect(o.localInventoryAdsEnabled!, unittest.isTrue);
    unittest.expect(o.pickupServingVerificationState!, unittest.equals('foo'));
    unittest.expect(o.productPageType!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterCountrySettings--;
}

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

core.int buildCounterInventoryStats = 0;
api.InventoryStats buildInventoryStats() {
  final o = api.InventoryStats();
  buildCounterInventoryStats++;
  if (buildCounterInventoryStats < 3) {
    o.submittedEntries = 'foo';
    o.submittedInStockEntries = 'foo';
    o.submittedProducts = 'foo';
    o.unsubmittedEntries = 'foo';
  }
  buildCounterInventoryStats--;
  return o;
}

void checkInventoryStats(api.InventoryStats o) {
  buildCounterInventoryStats++;
  if (buildCounterInventoryStats < 3) {
    unittest.expect(o.submittedEntries!, unittest.equals('foo'));
    unittest.expect(o.submittedInStockEntries!, unittest.equals('foo'));
    unittest.expect(o.submittedProducts!, unittest.equals('foo'));
    unittest.expect(o.unsubmittedEntries!, unittest.equals('foo'));
  }
  buildCounterInventoryStats--;
}

core.int buildCounterLfpInventory = 0;
api.LfpInventory buildLfpInventory() {
  final o = api.LfpInventory();
  buildCounterLfpInventory++;
  if (buildCounterLfpInventory < 3) {
    o.availability = 'foo';
    o.collectionTime = 'foo';
    o.contentLanguage = 'foo';
    o.feedLabel = 'foo';
    o.gtin = 'foo';
    o.name = 'foo';
    o.offerId = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.regionCode = 'foo';
    o.storeCode = 'foo';
    o.targetAccount = 'foo';
  }
  buildCounterLfpInventory--;
  return o;
}

void checkLfpInventory(api.LfpInventory o) {
  buildCounterLfpInventory++;
  if (buildCounterLfpInventory < 3) {
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.collectionTime!, unittest.equals('foo'));
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    unittest.expect(o.pickupMethod!, unittest.equals('foo'));
    unittest.expect(o.pickupSla!, unittest.equals('foo'));
    checkPrice(o.price!);
    unittest.expect(o.quantity!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.storeCode!, unittest.equals('foo'));
    unittest.expect(o.targetAccount!, unittest.equals('foo'));
  }
  buildCounterLfpInventory--;
}

core.List<api.CountrySettings> buildUnnamed0() => [
  buildCountrySettings(),
  buildCountrySettings(),
];

void checkUnnamed0(core.List<api.CountrySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCountrySettings(o[0]);
  checkCountrySettings(o[1]);
}

core.List<api.LfpStoreState> buildUnnamed1() => [
  buildLfpStoreState(),
  buildLfpStoreState(),
];

void checkUnnamed1(core.List<api.LfpStoreState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfpStoreState(o[0]);
  checkLfpStoreState(o[1]);
}

core.int buildCounterLfpMerchantState = 0;
api.LfpMerchantState buildLfpMerchantState() {
  final o = api.LfpMerchantState();
  buildCounterLfpMerchantState++;
  if (buildCounterLfpMerchantState < 3) {
    o.countrySettings = buildUnnamed0();
    o.inventoryStats = buildInventoryStats();
    o.linkedGbps = 'foo';
    o.name = 'foo';
    o.storeStates = buildUnnamed1();
  }
  buildCounterLfpMerchantState--;
  return o;
}

void checkLfpMerchantState(api.LfpMerchantState o) {
  buildCounterLfpMerchantState++;
  if (buildCounterLfpMerchantState < 3) {
    checkUnnamed0(o.countrySettings!);
    checkInventoryStats(o.inventoryStats!);
    unittest.expect(o.linkedGbps!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.storeStates!);
  }
  buildCounterLfpMerchantState--;
}

core.int buildCounterLfpSale = 0;
api.LfpSale buildLfpSale() {
  final o = api.LfpSale();
  buildCounterLfpSale++;
  if (buildCounterLfpSale < 3) {
    o.contentLanguage = 'foo';
    o.feedLabel = 'foo';
    o.gtin = 'foo';
    o.name = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.regionCode = 'foo';
    o.saleTime = 'foo';
    o.storeCode = 'foo';
    o.targetAccount = 'foo';
    o.uid = 'foo';
  }
  buildCounterLfpSale--;
  return o;
}

void checkLfpSale(api.LfpSale o) {
  buildCounterLfpSale++;
  if (buildCounterLfpSale < 3) {
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    checkPrice(o.price!);
    unittest.expect(o.quantity!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.saleTime!, unittest.equals('foo'));
    unittest.expect(o.storeCode!, unittest.equals('foo'));
    unittest.expect(o.targetAccount!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
  }
  buildCounterLfpSale--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLfpStore = 0;
api.LfpStore buildLfpStore() {
  final o = api.LfpStore();
  buildCounterLfpStore++;
  if (buildCounterLfpStore < 3) {
    o.gcidCategory = buildUnnamed2();
    o.matchingState = 'foo';
    o.matchingStateHint = 'foo';
    o.name = 'foo';
    o.phoneNumber = 'foo';
    o.placeId = 'foo';
    o.storeAddress = 'foo';
    o.storeCode = 'foo';
    o.storeName = 'foo';
    o.targetAccount = 'foo';
    o.websiteUri = 'foo';
  }
  buildCounterLfpStore--;
  return o;
}

void checkLfpStore(api.LfpStore o) {
  buildCounterLfpStore++;
  if (buildCounterLfpStore < 3) {
    checkUnnamed2(o.gcidCategory!);
    unittest.expect(o.matchingState!, unittest.equals('foo'));
    unittest.expect(o.matchingStateHint!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.placeId!, unittest.equals('foo'));
    unittest.expect(o.storeAddress!, unittest.equals('foo'));
    unittest.expect(o.storeCode!, unittest.equals('foo'));
    unittest.expect(o.storeName!, unittest.equals('foo'));
    unittest.expect(o.targetAccount!, unittest.equals('foo'));
    unittest.expect(o.websiteUri!, unittest.equals('foo'));
  }
  buildCounterLfpStore--;
}

core.int buildCounterLfpStoreState = 0;
api.LfpStoreState buildLfpStoreState() {
  final o = api.LfpStoreState();
  buildCounterLfpStoreState++;
  if (buildCounterLfpStoreState < 3) {
    o.matchingState = 'foo';
    o.matchingStateHint = 'foo';
    o.storeCode = 'foo';
  }
  buildCounterLfpStoreState--;
  return o;
}

void checkLfpStoreState(api.LfpStoreState o) {
  buildCounterLfpStoreState++;
  if (buildCounterLfpStoreState < 3) {
    unittest.expect(o.matchingState!, unittest.equals('foo'));
    unittest.expect(o.matchingStateHint!, unittest.equals('foo'));
    unittest.expect(o.storeCode!, unittest.equals('foo'));
  }
  buildCounterLfpStoreState--;
}

core.List<api.LfpStore> buildUnnamed3() => [buildLfpStore(), buildLfpStore()];

void checkUnnamed3(core.List<api.LfpStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfpStore(o[0]);
  checkLfpStore(o[1]);
}

core.int buildCounterListLfpStoresResponse = 0;
api.ListLfpStoresResponse buildListLfpStoresResponse() {
  final o = api.ListLfpStoresResponse();
  buildCounterListLfpStoresResponse++;
  if (buildCounterListLfpStoresResponse < 3) {
    o.lfpStores = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListLfpStoresResponse--;
  return o;
}

void checkListLfpStoresResponse(api.ListLfpStoresResponse o) {
  buildCounterListLfpStoresResponse++;
  if (buildCounterListLfpStoresResponse < 3) {
    checkUnnamed3(o.lfpStores!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLfpStoresResponse--;
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

void main() {
  unittest.group('obj-schema-CountrySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCountrySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CountrySettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCountrySettings(od);
    });
  });

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

  unittest.group('obj-schema-InventoryStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventoryStats(od);
    });
  });

  unittest.group('obj-schema-LfpInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpInventory(od);
    });
  });

  unittest.group('obj-schema-LfpMerchantState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpMerchantState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpMerchantState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpMerchantState(od);
    });
  });

  unittest.group('obj-schema-LfpSale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpSale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpSale.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpSale(od);
    });
  });

  unittest.group('obj-schema-LfpStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpStore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpStore(od);
    });
  });

  unittest.group('obj-schema-LfpStoreState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpStoreState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpStoreState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpStoreState(od);
    });
  });

  unittest.group('obj-schema-ListLfpStoresResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLfpStoresResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLfpStoresResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLfpStoresResponse(od);
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

  unittest.group('resource-AccountsLfpInventoriesResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpInventories;
      final arg_request = buildLfpInventory();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfpInventory.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfpInventory(obj);

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
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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
          final resp = convert.json.encode(buildLfpInventory());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkLfpInventory(response as api.LfpInventory);
    });
  });

  unittest.group('resource-AccountsLfpMerchantStatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpMerchantStates;
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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
          final resp = convert.json.encode(buildLfpMerchantState());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLfpMerchantState(response as api.LfpMerchantState);
    });
  });

  unittest.group('resource-AccountsLfpSalesResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpSales;
      final arg_request = buildLfpSale();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfpSale.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfpSale(obj);

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
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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
          final resp = convert.json.encode(buildLfpSale());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkLfpSale(response as api.LfpSale);
    });
  });

  unittest.group('resource-AccountsLfpStoresResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpStores;
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpStores;
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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
          final resp = convert.json.encode(buildLfpStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLfpStore(response as api.LfpStore);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpStores;
      final arg_request = buildLfpStore();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfpStore.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfpStore(obj);

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
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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
          final resp = convert.json.encode(buildLfpStore());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkLfpStore(response as api.LfpStore);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.lfpStores;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_targetAccount = 'foo';
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
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('lfp/v1beta/'),
          );
          pathOffset += 11;
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
            queryMap['targetAccount']!.first,
            unittest.equals(arg_targetAccount),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLfpStoresResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        targetAccount: arg_targetAccount,
        $fields: arg_$fields,
      );
      checkListLfpStoresResponse(response as api.ListLfpStoresResponse);
    });
  });
}
