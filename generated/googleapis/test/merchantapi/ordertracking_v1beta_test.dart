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

import 'package:googleapis/merchantapi/ordertracking_v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDateTime = 0;
api.DateTime buildDateTime() {
  final o = api.DateTime();
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterDateTime--;
  return o;
}

void checkDateTime(api.DateTime o) {
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
    checkTimeZone(o.timeZone!);
    unittest.expect(o.utcOffset!, unittest.equals('foo'));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDateTime--;
}

core.int buildCounterLineItemDetails = 0;
api.LineItemDetails buildLineItemDetails() {
  final o = api.LineItemDetails();
  buildCounterLineItemDetails++;
  if (buildCounterLineItemDetails < 3) {
    o.brand = 'foo';
    o.gtin = 'foo';
    o.lineItemId = 'foo';
    o.mpn = 'foo';
    o.productId = 'foo';
    o.productTitle = 'foo';
    o.quantity = 'foo';
  }
  buildCounterLineItemDetails--;
  return o;
}

void checkLineItemDetails(api.LineItemDetails o) {
  buildCounterLineItemDetails++;
  if (buildCounterLineItemDetails < 3) {
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.lineItemId!, unittest.equals('foo'));
    unittest.expect(o.mpn!, unittest.equals('foo'));
    unittest.expect(o.productId!, unittest.equals('foo'));
    unittest.expect(o.productTitle!, unittest.equals('foo'));
    unittest.expect(o.quantity!, unittest.equals('foo'));
  }
  buildCounterLineItemDetails--;
}

core.List<api.LineItemDetails> buildUnnamed0() => [
  buildLineItemDetails(),
  buildLineItemDetails(),
];

void checkUnnamed0(core.List<api.LineItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLineItemDetails(o[0]);
  checkLineItemDetails(o[1]);
}

core.List<api.ShipmentLineItemMapping> buildUnnamed1() => [
  buildShipmentLineItemMapping(),
  buildShipmentLineItemMapping(),
];

void checkUnnamed1(core.List<api.ShipmentLineItemMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentLineItemMapping(o[0]);
  checkShipmentLineItemMapping(o[1]);
}

core.List<api.ShippingInfo> buildUnnamed2() => [
  buildShippingInfo(),
  buildShippingInfo(),
];

void checkUnnamed2(core.List<api.ShippingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingInfo(o[0]);
  checkShippingInfo(o[1]);
}

core.int buildCounterOrderTrackingSignal = 0;
api.OrderTrackingSignal buildOrderTrackingSignal() {
  final o = api.OrderTrackingSignal();
  buildCounterOrderTrackingSignal++;
  if (buildCounterOrderTrackingSignal < 3) {
    o.customerShippingFee = buildPrice();
    o.deliveryPostalCode = 'foo';
    o.deliveryRegionCode = 'foo';
    o.lineItems = buildUnnamed0();
    o.merchantId = 'foo';
    o.orderCreatedTime = buildDateTime();
    o.orderId = 'foo';
    o.orderTrackingSignalId = 'foo';
    o.shipmentLineItemMapping = buildUnnamed1();
    o.shippingInfo = buildUnnamed2();
  }
  buildCounterOrderTrackingSignal--;
  return o;
}

void checkOrderTrackingSignal(api.OrderTrackingSignal o) {
  buildCounterOrderTrackingSignal++;
  if (buildCounterOrderTrackingSignal < 3) {
    checkPrice(o.customerShippingFee!);
    unittest.expect(o.deliveryPostalCode!, unittest.equals('foo'));
    unittest.expect(o.deliveryRegionCode!, unittest.equals('foo'));
    checkUnnamed0(o.lineItems!);
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    checkDateTime(o.orderCreatedTime!);
    unittest.expect(o.orderId!, unittest.equals('foo'));
    unittest.expect(o.orderTrackingSignalId!, unittest.equals('foo'));
    checkUnnamed1(o.shipmentLineItemMapping!);
    checkUnnamed2(o.shippingInfo!);
  }
  buildCounterOrderTrackingSignal--;
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

core.int buildCounterShipmentLineItemMapping = 0;
api.ShipmentLineItemMapping buildShipmentLineItemMapping() {
  final o = api.ShipmentLineItemMapping();
  buildCounterShipmentLineItemMapping++;
  if (buildCounterShipmentLineItemMapping < 3) {
    o.lineItemId = 'foo';
    o.quantity = 'foo';
    o.shipmentId = 'foo';
  }
  buildCounterShipmentLineItemMapping--;
  return o;
}

void checkShipmentLineItemMapping(api.ShipmentLineItemMapping o) {
  buildCounterShipmentLineItemMapping++;
  if (buildCounterShipmentLineItemMapping < 3) {
    unittest.expect(o.lineItemId!, unittest.equals('foo'));
    unittest.expect(o.quantity!, unittest.equals('foo'));
    unittest.expect(o.shipmentId!, unittest.equals('foo'));
  }
  buildCounterShipmentLineItemMapping--;
}

core.int buildCounterShippingInfo = 0;
api.ShippingInfo buildShippingInfo() {
  final o = api.ShippingInfo();
  buildCounterShippingInfo++;
  if (buildCounterShippingInfo < 3) {
    o.actualDeliveryTime = buildDateTime();
    o.carrier = 'foo';
    o.carrierService = 'foo';
    o.earliestDeliveryPromiseTime = buildDateTime();
    o.latestDeliveryPromiseTime = buildDateTime();
    o.originPostalCode = 'foo';
    o.originRegionCode = 'foo';
    o.shipmentId = 'foo';
    o.shippedTime = buildDateTime();
    o.shippingStatus = 'foo';
    o.trackingId = 'foo';
  }
  buildCounterShippingInfo--;
  return o;
}

void checkShippingInfo(api.ShippingInfo o) {
  buildCounterShippingInfo++;
  if (buildCounterShippingInfo < 3) {
    checkDateTime(o.actualDeliveryTime!);
    unittest.expect(o.carrier!, unittest.equals('foo'));
    unittest.expect(o.carrierService!, unittest.equals('foo'));
    checkDateTime(o.earliestDeliveryPromiseTime!);
    checkDateTime(o.latestDeliveryPromiseTime!);
    unittest.expect(o.originPostalCode!, unittest.equals('foo'));
    unittest.expect(o.originRegionCode!, unittest.equals('foo'));
    unittest.expect(o.shipmentId!, unittest.equals('foo'));
    checkDateTime(o.shippedTime!);
    unittest.expect(o.shippingStatus!, unittest.equals('foo'));
    unittest.expect(o.trackingId!, unittest.equals('foo'));
  }
  buildCounterShippingInfo--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

void main() {
  unittest.group('obj-schema-DateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateTime(od);
    });
  });

  unittest.group('obj-schema-LineItemDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineItemDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineItemDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLineItemDetails(od);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderTrackingSignal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderTrackingSignal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrderTrackingSignal(od);
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

  unittest.group('obj-schema-ShipmentLineItemMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShipmentLineItemMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShipmentLineItemMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShipmentLineItemMapping(od);
    });
  });

  unittest.group('obj-schema-ShippingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShippingInfo(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZone(od);
    });
  });

  unittest.group('resource-AccountsOrderTrackingSignalsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.orderTrackingSignals;
      final arg_request = buildOrderTrackingSignal();
      final arg_parent = 'foo';
      final arg_orderTrackingSignalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OrderTrackingSignal.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOrderTrackingSignal(obj);

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
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('ordertracking/v1beta/'),
          );
          pathOffset += 21;
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
            queryMap['orderTrackingSignalId']!.first,
            unittest.equals(arg_orderTrackingSignalId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOrderTrackingSignal());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        orderTrackingSignalId: arg_orderTrackingSignalId,
        $fields: arg_$fields,
      );
      checkOrderTrackingSignal(response as api.OrderTrackingSignal);
    });
  });
}
