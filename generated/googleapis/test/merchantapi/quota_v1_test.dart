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

import 'package:googleapis/merchantapi/quota_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountLimit = 0;
api.AccountLimit buildAccountLimit() {
  final o = api.AccountLimit();
  buildCounterAccountLimit++;
  if (buildCounterAccountLimit < 3) {
    o.name = 'foo';
    o.products = buildProductLimit();
  }
  buildCounterAccountLimit--;
  return o;
}

void checkAccountLimit(api.AccountLimit o) {
  buildCounterAccountLimit++;
  if (buildCounterAccountLimit < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProductLimit(o.products!);
  }
  buildCounterAccountLimit--;
}

core.List<api.AccountLimit> buildUnnamed0() => [
  buildAccountLimit(),
  buildAccountLimit(),
];

void checkUnnamed0(core.List<api.AccountLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountLimit(o[0]);
  checkAccountLimit(o[1]);
}

core.int buildCounterListAccountLimitsResponse = 0;
api.ListAccountLimitsResponse buildListAccountLimitsResponse() {
  final o = api.ListAccountLimitsResponse();
  buildCounterListAccountLimitsResponse++;
  if (buildCounterListAccountLimitsResponse < 3) {
    o.accountLimits = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountLimitsResponse--;
  return o;
}

void checkListAccountLimitsResponse(api.ListAccountLimitsResponse o) {
  buildCounterListAccountLimitsResponse++;
  if (buildCounterListAccountLimitsResponse < 3) {
    checkUnnamed0(o.accountLimits!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountLimitsResponse--;
}

core.List<api.QuotaGroup> buildUnnamed1() => [
  buildQuotaGroup(),
  buildQuotaGroup(),
];

void checkUnnamed1(core.List<api.QuotaGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaGroup(o[0]);
  checkQuotaGroup(o[1]);
}

core.int buildCounterListQuotaGroupsResponse = 0;
api.ListQuotaGroupsResponse buildListQuotaGroupsResponse() {
  final o = api.ListQuotaGroupsResponse();
  buildCounterListQuotaGroupsResponse++;
  if (buildCounterListQuotaGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.quotaGroups = buildUnnamed1();
  }
  buildCounterListQuotaGroupsResponse--;
  return o;
}

void checkListQuotaGroupsResponse(api.ListQuotaGroupsResponse o) {
  buildCounterListQuotaGroupsResponse++;
  if (buildCounterListQuotaGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed1(o.quotaGroups!);
  }
  buildCounterListQuotaGroupsResponse--;
}

core.int buildCounterMethodDetails = 0;
api.MethodDetails buildMethodDetails() {
  final o = api.MethodDetails();
  buildCounterMethodDetails++;
  if (buildCounterMethodDetails < 3) {
    o.method = 'foo';
    o.path = 'foo';
    o.subapi = 'foo';
    o.version = 'foo';
  }
  buildCounterMethodDetails--;
  return o;
}

void checkMethodDetails(api.MethodDetails o) {
  buildCounterMethodDetails++;
  if (buildCounterMethodDetails < 3) {
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.subapi!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterMethodDetails--;
}

core.int buildCounterProductLimit = 0;
api.ProductLimit buildProductLimit() {
  final o = api.ProductLimit();
  buildCounterProductLimit++;
  if (buildCounterProductLimit < 3) {
    o.limit = 'foo';
    o.scope = 'foo';
  }
  buildCounterProductLimit--;
  return o;
}

void checkProductLimit(api.ProductLimit o) {
  buildCounterProductLimit++;
  if (buildCounterProductLimit < 3) {
    unittest.expect(o.limit!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
  }
  buildCounterProductLimit--;
}

core.List<api.MethodDetails> buildUnnamed2() => [
  buildMethodDetails(),
  buildMethodDetails(),
];

void checkUnnamed2(core.List<api.MethodDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethodDetails(o[0]);
  checkMethodDetails(o[1]);
}

core.int buildCounterQuotaGroup = 0;
api.QuotaGroup buildQuotaGroup() {
  final o = api.QuotaGroup();
  buildCounterQuotaGroup++;
  if (buildCounterQuotaGroup < 3) {
    o.methodDetails = buildUnnamed2();
    o.name = 'foo';
    o.quotaLimit = 'foo';
    o.quotaMinuteLimit = 'foo';
    o.quotaUsage = 'foo';
  }
  buildCounterQuotaGroup--;
  return o;
}

void checkQuotaGroup(api.QuotaGroup o) {
  buildCounterQuotaGroup++;
  if (buildCounterQuotaGroup < 3) {
    checkUnnamed2(o.methodDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.quotaLimit!, unittest.equals('foo'));
    unittest.expect(o.quotaMinuteLimit!, unittest.equals('foo'));
    unittest.expect(o.quotaUsage!, unittest.equals('foo'));
  }
  buildCounterQuotaGroup--;
}

void main() {
  unittest.group('obj-schema-AccountLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountLimit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountLimit(od);
    });
  });

  unittest.group('obj-schema-ListAccountLimitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountLimitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountLimitsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountLimitsResponse(od);
    });
  });

  unittest.group('obj-schema-ListQuotaGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListQuotaGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListQuotaGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListQuotaGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-MethodDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethodDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MethodDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMethodDetails(od);
    });
  });

  unittest.group('obj-schema-ProductLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductLimit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductLimit(od);
    });
  });

  unittest.group('obj-schema-QuotaGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuotaGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuotaGroup(od);
    });
  });

  unittest.group('resource-AccountsLimitsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.limits;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('quota/v1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildAccountLimit());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccountLimit(response as api.AccountLimit);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.limits;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('quota/v1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListAccountLimitsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAccountLimitsResponse(response as api.ListAccountLimitsResponse);
    });
  });

  unittest.group('resource-AccountsQuotasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.quotas;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('quota/v1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListQuotaGroupsResponse());
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
      checkListQuotaGroupsResponse(response as api.ListQuotaGroupsResponse);
    });
  });
}
