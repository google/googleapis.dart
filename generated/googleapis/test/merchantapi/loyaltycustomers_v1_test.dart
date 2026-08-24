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

import 'package:googleapis/merchantapi/loyaltycustomers_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddressInfo = 0;
api.AddressInfo buildAddressInfo() {
  final o = api.AddressInfo();
  buildCounterAddressInfo++;
  if (buildCounterAddressInfo < 3) {
    o.city = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
    o.postalCode = 'foo';
    o.regionCode = 'foo';
    o.state = 'foo';
  }
  buildCounterAddressInfo--;
  return o;
}

void checkAddressInfo(api.AddressInfo o) {
  buildCounterAddressInfo++;
  if (buildCounterAddressInfo < 3) {
    unittest.expect(o.city!, unittest.equals('foo'));
    unittest.expect(o.familyName!, unittest.equals('foo'));
    unittest.expect(o.givenName!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterAddressInfo--;
}

core.int buildCounterLoyaltyCustomer = 0;
api.LoyaltyCustomer buildLoyaltyCustomer() {
  final o = api.LoyaltyCustomer();
  buildCounterLoyaltyCustomer++;
  if (buildCounterLoyaltyCustomer < 3) {
    o.loyaltyTier = 'foo';
    o.pointBalance = 'foo';
    o.userIdentifier = buildUserIdentifier();
  }
  buildCounterLoyaltyCustomer--;
  return o;
}

void checkLoyaltyCustomer(api.LoyaltyCustomer o) {
  buildCounterLoyaltyCustomer++;
  if (buildCounterLoyaltyCustomer < 3) {
    unittest.expect(o.loyaltyTier!, unittest.equals('foo'));
    unittest.expect(o.pointBalance!, unittest.equals('foo'));
    checkUserIdentifier(o.userIdentifier!);
  }
  buildCounterLoyaltyCustomer--;
}

core.int buildCounterManageLoyaltyCustomerMatchRequest = 0;
api.ManageLoyaltyCustomerMatchRequest buildManageLoyaltyCustomerMatchRequest() {
  final o = api.ManageLoyaltyCustomerMatchRequest();
  buildCounterManageLoyaltyCustomerMatchRequest++;
  if (buildCounterManageLoyaltyCustomerMatchRequest < 3) {
    o.loyaltyCustomer = buildLoyaltyCustomer();
  }
  buildCounterManageLoyaltyCustomerMatchRequest--;
  return o;
}

void checkManageLoyaltyCustomerMatchRequest(
  api.ManageLoyaltyCustomerMatchRequest o,
) {
  buildCounterManageLoyaltyCustomerMatchRequest++;
  if (buildCounterManageLoyaltyCustomerMatchRequest < 3) {
    checkLoyaltyCustomer(o.loyaltyCustomer!);
  }
  buildCounterManageLoyaltyCustomerMatchRequest--;
}

core.int buildCounterManageLoyaltyCustomerMatchResponse = 0;
api.ManageLoyaltyCustomerMatchResponse
buildManageLoyaltyCustomerMatchResponse() {
  final o = api.ManageLoyaltyCustomerMatchResponse();
  buildCounterManageLoyaltyCustomerMatchResponse++;
  if (buildCounterManageLoyaltyCustomerMatchResponse < 3) {
    o.loyaltyCustomer = buildLoyaltyCustomer();
  }
  buildCounterManageLoyaltyCustomerMatchResponse--;
  return o;
}

void checkManageLoyaltyCustomerMatchResponse(
  api.ManageLoyaltyCustomerMatchResponse o,
) {
  buildCounterManageLoyaltyCustomerMatchResponse++;
  if (buildCounterManageLoyaltyCustomerMatchResponse < 3) {
    checkLoyaltyCustomer(o.loyaltyCustomer!);
  }
  buildCounterManageLoyaltyCustomerMatchResponse--;
}

core.int buildCounterUserIdentifier = 0;
api.UserIdentifier buildUserIdentifier() {
  final o = api.UserIdentifier();
  buildCounterUserIdentifier++;
  if (buildCounterUserIdentifier < 3) {
    o.address = buildAddressInfo();
    o.emailAddress = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterUserIdentifier--;
  return o;
}

void checkUserIdentifier(api.UserIdentifier o) {
  buildCounterUserIdentifier++;
  if (buildCounterUserIdentifier < 3) {
    checkAddressInfo(o.address!);
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
  }
  buildCounterUserIdentifier--;
}

void main() {
  unittest.group('obj-schema-AddressInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddressInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddressInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddressInfo(od);
    });
  });

  unittest.group('obj-schema-LoyaltyCustomer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyCustomer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyCustomer(od);
    });
  });

  unittest.group('obj-schema-ManageLoyaltyCustomerMatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManageLoyaltyCustomerMatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManageLoyaltyCustomerMatchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManageLoyaltyCustomerMatchRequest(od);
    });
  });

  unittest.group('obj-schema-ManageLoyaltyCustomerMatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManageLoyaltyCustomerMatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManageLoyaltyCustomerMatchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManageLoyaltyCustomerMatchResponse(od);
    });
  });

  unittest.group('obj-schema-UserIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserIdentifier.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserIdentifier(od);
    });
  });

  unittest.group('resource-AccountsLoyaltyCustomersResource', () {
    unittest.test('method--manage', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.loyaltyCustomers;
      final arg_request = buildManageLoyaltyCustomerMatchRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ManageLoyaltyCustomerMatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkManageLoyaltyCustomerMatchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('loyaltyCustomers/v1/'),
          );
          pathOffset += 20;
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
          final resp = convert.json.encode(
            buildManageLoyaltyCustomerMatchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.manage(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkManageLoyaltyCustomerMatchResponse(
        response as api.ManageLoyaltyCustomerMatchResponse,
      );
    });
  });
}
