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

import 'package:googleapis/authorizedbuyersmarketplace/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActivateDataSegmentRequest = 0;
api.ActivateDataSegmentRequest buildActivateDataSegmentRequest() {
  final o = api.ActivateDataSegmentRequest();
  buildCounterActivateDataSegmentRequest++;
  if (buildCounterActivateDataSegmentRequest < 3) {}
  buildCounterActivateDataSegmentRequest--;
  return o;
}

void checkActivateDataSegmentRequest(api.ActivateDataSegmentRequest o) {
  buildCounterActivateDataSegmentRequest++;
  if (buildCounterActivateDataSegmentRequest < 3) {}
  buildCounterActivateDataSegmentRequest--;
}

core.int buildCounterDataSegment = 0;
api.DataSegment buildDataSegment() {
  final o = api.DataSegment();
  buildCounterDataSegment++;
  if (buildCounterDataSegment < 3) {
    o.cpmFee = buildMoney();
    o.createTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDataSegment--;
  return o;
}

void checkDataSegment(api.DataSegment o) {
  buildCounterDataSegment++;
  if (buildCounterDataSegment < 3) {
    checkMoney(o.cpmFee!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDataSegment--;
}

core.int buildCounterDeactivateDataSegmentRequest = 0;
api.DeactivateDataSegmentRequest buildDeactivateDataSegmentRequest() {
  final o = api.DeactivateDataSegmentRequest();
  buildCounterDeactivateDataSegmentRequest++;
  if (buildCounterDeactivateDataSegmentRequest < 3) {}
  buildCounterDeactivateDataSegmentRequest--;
  return o;
}

void checkDeactivateDataSegmentRequest(api.DeactivateDataSegmentRequest o) {
  buildCounterDeactivateDataSegmentRequest++;
  if (buildCounterDeactivateDataSegmentRequest < 3) {}
  buildCounterDeactivateDataSegmentRequest--;
}

core.List<api.DataSegment> buildUnnamed0() => [
  buildDataSegment(),
  buildDataSegment(),
];

void checkUnnamed0(core.List<api.DataSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSegment(o[0]);
  checkDataSegment(o[1]);
}

core.int buildCounterListDataSegmentsResponse = 0;
api.ListDataSegmentsResponse buildListDataSegmentsResponse() {
  final o = api.ListDataSegmentsResponse();
  buildCounterListDataSegmentsResponse++;
  if (buildCounterListDataSegmentsResponse < 3) {
    o.dataSegments = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataSegmentsResponse--;
  return o;
}

void checkListDataSegmentsResponse(api.ListDataSegmentsResponse o) {
  buildCounterListDataSegmentsResponse++;
  if (buildCounterListDataSegmentsResponse < 3) {
    checkUnnamed0(o.dataSegments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDataSegmentsResponse--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

void main() {
  unittest.group('obj-schema-ActivateDataSegmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateDataSegmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateDataSegmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivateDataSegmentRequest(od);
    });
  });

  unittest.group('obj-schema-DataSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSegment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataSegment(od);
    });
  });

  unittest.group('obj-schema-DeactivateDataSegmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateDataSegmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateDataSegmentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeactivateDataSegmentRequest(od);
    });
  });

  unittest.group('obj-schema-ListDataSegmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSegmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSegmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDataSegmentsResponse(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
    });
  });

  unittest.group('resource-CuratorsDataSegmentsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).curators.dataSegments;
      final arg_request = buildActivateDataSegmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ActivateDataSegmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkActivateDataSegmentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.activate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).curators.dataSegments;
      final arg_request = buildDataSegment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataSegment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataSegment(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).curators.dataSegments;
      final arg_request = buildDeactivateDataSegmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeactivateDataSegmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeactivateDataSegmentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deactivate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).curators.dataSegments;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataSegment(response as api.DataSegment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).curators.dataSegments;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildListDataSegmentsResponse());
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
      checkListDataSegmentsResponse(response as api.ListDataSegmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).curators.dataSegments;
      final arg_request = buildDataSegment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataSegment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataSegment(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDataSegment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkDataSegment(response as api.DataSegment);
    });
  });
}
