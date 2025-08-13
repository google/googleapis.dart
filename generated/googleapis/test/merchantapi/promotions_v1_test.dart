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

import 'package:googleapis/merchantapi/promotions_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  final o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.brandExclusion = buildUnnamed0();
    o.brandInclusion = buildUnnamed1();
    o.couponValueType = 'foo';
    o.freeGiftDescription = 'foo';
    o.freeGiftItemId = 'foo';
    o.freeGiftValue = buildPrice();
    o.genericRedemptionCode = 'foo';
    o.getThisQuantityDiscounted = 'foo';
    o.itemGroupIdExclusion = buildUnnamed2();
    o.itemGroupIdInclusion = buildUnnamed3();
    o.itemIdExclusion = buildUnnamed4();
    o.itemIdInclusion = buildUnnamed5();
    o.limitQuantity = 'foo';
    o.limitValue = buildPrice();
    o.longTitle = 'foo';
    o.minimumPurchaseAmount = buildPrice();
    o.minimumPurchaseQuantity = 'foo';
    o.moneyOffAmount = buildPrice();
    o.offerType = 'foo';
    o.percentOff = 'foo';
    o.productApplicability = 'foo';
    o.productTypeExclusion = buildUnnamed6();
    o.productTypeInclusion = buildUnnamed7();
    o.promotionDestinations = buildUnnamed8();
    o.promotionDisplayTimePeriod = buildInterval();
    o.promotionEffectiveTimePeriod = buildInterval();
    o.promotionUrl = 'foo';
    o.storeApplicability = 'foo';
    o.storeCodesExclusion = buildUnnamed9();
    o.storeCodesInclusion = buildUnnamed10();
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed0(o.brandExclusion!);
    checkUnnamed1(o.brandInclusion!);
    unittest.expect(o.couponValueType!, unittest.equals('foo'));
    unittest.expect(o.freeGiftDescription!, unittest.equals('foo'));
    unittest.expect(o.freeGiftItemId!, unittest.equals('foo'));
    checkPrice(o.freeGiftValue!);
    unittest.expect(o.genericRedemptionCode!, unittest.equals('foo'));
    unittest.expect(o.getThisQuantityDiscounted!, unittest.equals('foo'));
    checkUnnamed2(o.itemGroupIdExclusion!);
    checkUnnamed3(o.itemGroupIdInclusion!);
    checkUnnamed4(o.itemIdExclusion!);
    checkUnnamed5(o.itemIdInclusion!);
    unittest.expect(o.limitQuantity!, unittest.equals('foo'));
    checkPrice(o.limitValue!);
    unittest.expect(o.longTitle!, unittest.equals('foo'));
    checkPrice(o.minimumPurchaseAmount!);
    unittest.expect(o.minimumPurchaseQuantity!, unittest.equals('foo'));
    checkPrice(o.moneyOffAmount!);
    unittest.expect(o.offerType!, unittest.equals('foo'));
    unittest.expect(o.percentOff!, unittest.equals('foo'));
    unittest.expect(o.productApplicability!, unittest.equals('foo'));
    checkUnnamed6(o.productTypeExclusion!);
    checkUnnamed7(o.productTypeInclusion!);
    checkUnnamed8(o.promotionDestinations!);
    checkInterval(o.promotionDisplayTimePeriod!);
    checkInterval(o.promotionEffectiveTimePeriod!);
    unittest.expect(o.promotionUrl!, unittest.equals('foo'));
    unittest.expect(o.storeApplicability!, unittest.equals('foo'));
    checkUnnamed9(o.storeCodesExclusion!);
    checkUnnamed10(o.storeCodesInclusion!);
  }
  buildCounterAttributes--;
}

core.List<api.CustomAttribute> buildUnnamed11() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed11(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed11();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed11(o.groupValues!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterDestinationStatus = 0;
api.DestinationStatus buildDestinationStatus() {
  final o = api.DestinationStatus();
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    o.reportingContext = 'foo';
    o.status = 'foo';
  }
  buildCounterDestinationStatus--;
  return o;
}

void checkDestinationStatus(api.DestinationStatus o) {
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterDestinationStatus--;
}

core.int buildCounterInsertPromotionRequest = 0;
api.InsertPromotionRequest buildInsertPromotionRequest() {
  final o = api.InsertPromotionRequest();
  buildCounterInsertPromotionRequest++;
  if (buildCounterInsertPromotionRequest < 3) {
    o.dataSource = 'foo';
    o.promotion = buildPromotion();
  }
  buildCounterInsertPromotionRequest--;
  return o;
}

void checkInsertPromotionRequest(api.InsertPromotionRequest o) {
  buildCounterInsertPromotionRequest++;
  if (buildCounterInsertPromotionRequest < 3) {
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    checkPromotion(o.promotion!);
  }
  buildCounterInsertPromotionRequest--;
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

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterItemLevelIssue = 0;
api.ItemLevelIssue buildItemLevelIssue() {
  final o = api.ItemLevelIssue();
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed12();
    o.attribute = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.reportingContext = 'foo';
    o.resolution = 'foo';
    o.severity = 'foo';
  }
  buildCounterItemLevelIssue--;
  return o;
}

void checkItemLevelIssue(api.ItemLevelIssue o) {
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    checkUnnamed12(o.applicableCountries!);
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentation!, unittest.equals('foo'));
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
    unittest.expect(o.resolution!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterItemLevelIssue--;
}

core.List<api.Promotion> buildUnnamed13() => [
  buildPromotion(),
  buildPromotion(),
];

void checkUnnamed13(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterListPromotionsResponse = 0;
api.ListPromotionsResponse buildListPromotionsResponse() {
  final o = api.ListPromotionsResponse();
  buildCounterListPromotionsResponse++;
  if (buildCounterListPromotionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.promotions = buildUnnamed13();
  }
  buildCounterListPromotionsResponse--;
  return o;
}

void checkListPromotionsResponse(api.ListPromotionsResponse o) {
  buildCounterListPromotionsResponse++;
  if (buildCounterListPromotionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.promotions!);
  }
  buildCounterListPromotionsResponse--;
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

core.List<api.CustomAttribute> buildUnnamed14() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed14(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPromotion = 0;
api.Promotion buildPromotion() {
  final o = api.Promotion();
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    o.attributes = buildAttributes();
    o.contentLanguage = 'foo';
    o.customAttributes = buildUnnamed14();
    o.dataSource = 'foo';
    o.name = 'foo';
    o.promotionId = 'foo';
    o.promotionStatus = buildPromotionStatus();
    o.redemptionChannel = buildUnnamed15();
    o.targetCountry = 'foo';
    o.versionNumber = 'foo';
  }
  buildCounterPromotion--;
  return o;
}

void checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkAttributes(o.attributes!);
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    checkUnnamed14(o.customAttributes!);
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.promotionId!, unittest.equals('foo'));
    checkPromotionStatus(o.promotionStatus!);
    checkUnnamed15(o.redemptionChannel!);
    unittest.expect(o.targetCountry!, unittest.equals('foo'));
    unittest.expect(o.versionNumber!, unittest.equals('foo'));
  }
  buildCounterPromotion--;
}

core.List<api.DestinationStatus> buildUnnamed16() => [
  buildDestinationStatus(),
  buildDestinationStatus(),
];

void checkUnnamed16(core.List<api.DestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationStatus(o[0]);
  checkDestinationStatus(o[1]);
}

core.List<api.ItemLevelIssue> buildUnnamed17() => [
  buildItemLevelIssue(),
  buildItemLevelIssue(),
];

void checkUnnamed17(core.List<api.ItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemLevelIssue(o[0]);
  checkItemLevelIssue(o[1]);
}

core.int buildCounterPromotionStatus = 0;
api.PromotionStatus buildPromotionStatus() {
  final o = api.PromotionStatus();
  buildCounterPromotionStatus++;
  if (buildCounterPromotionStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed16();
    o.itemLevelIssues = buildUnnamed17();
    o.lastUpdateDate = 'foo';
  }
  buildCounterPromotionStatus--;
  return o;
}

void checkPromotionStatus(api.PromotionStatus o) {
  buildCounterPromotionStatus++;
  if (buildCounterPromotionStatus < 3) {
    unittest.expect(o.creationDate!, unittest.equals('foo'));
    checkUnnamed16(o.destinationStatuses!);
    checkUnnamed17(o.itemLevelIssues!);
    unittest.expect(o.lastUpdateDate!, unittest.equals('foo'));
  }
  buildCounterPromotionStatus--;
}

void main() {
  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttributes(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-DestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-InsertPromotionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertPromotionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertPromotionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertPromotionRequest(od);
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

  unittest.group('obj-schema-ItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemLevelIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ListPromotionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPromotionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPromotionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPromotionsResponse(od);
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

  unittest.group('obj-schema-Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Promotion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromotion(od);
    });
  });

  unittest.group('obj-schema-PromotionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromotionStatus(od);
    });
  });

  unittest.group('resource-AccountsPromotionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.promotions;
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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('promotions/v1/'),
          );
          pathOffset += 14;
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
          final resp = convert.json.encode(buildPromotion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPromotion(response as api.Promotion);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.promotions;
      final arg_request = buildInsertPromotionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InsertPromotionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInsertPromotionRequest(obj);

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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('promotions/v1/'),
          );
          pathOffset += 14;
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
          final resp = convert.json.encode(buildPromotion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkPromotion(response as api.Promotion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.promotions;
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
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('promotions/v1/'),
          );
          pathOffset += 14;
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
          final resp = convert.json.encode(buildListPromotionsResponse());
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
      checkListPromotionsResponse(response as api.ListPromotionsResponse);
    });
  });
}
