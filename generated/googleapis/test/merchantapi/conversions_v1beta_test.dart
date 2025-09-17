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

import 'package:googleapis/merchantapi/conversions_v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ConversionType> buildUnnamed0() => [
  buildConversionType(),
  buildConversionType(),
];

void checkUnnamed0(core.List<api.ConversionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionType(o[0]);
  checkConversionType(o[1]);
}

core.int buildCounterAttributionSettings = 0;
api.AttributionSettings buildAttributionSettings() {
  final o = api.AttributionSettings();
  buildCounterAttributionSettings++;
  if (buildCounterAttributionSettings < 3) {
    o.attributionLookbackWindowDays = 42;
    o.attributionModel = 'foo';
    o.conversionType = buildUnnamed0();
  }
  buildCounterAttributionSettings--;
  return o;
}

void checkAttributionSettings(api.AttributionSettings o) {
  buildCounterAttributionSettings++;
  if (buildCounterAttributionSettings < 3) {
    unittest.expect(o.attributionLookbackWindowDays!, unittest.equals(42));
    unittest.expect(o.attributionModel!, unittest.equals('foo'));
    checkUnnamed0(o.conversionType!);
  }
  buildCounterAttributionSettings--;
}

core.int buildCounterConversionSource = 0;
api.ConversionSource buildConversionSource() {
  final o = api.ConversionSource();
  buildCounterConversionSource++;
  if (buildCounterConversionSource < 3) {
    o.controller = 'foo';
    o.expireTime = 'foo';
    o.googleAnalyticsLink = buildGoogleAnalyticsLink();
    o.merchantCenterDestination = buildMerchantCenterDestination();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterConversionSource--;
  return o;
}

void checkConversionSource(api.ConversionSource o) {
  buildCounterConversionSource++;
  if (buildCounterConversionSource < 3) {
    unittest.expect(o.controller!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkGoogleAnalyticsLink(o.googleAnalyticsLink!);
    checkMerchantCenterDestination(o.merchantCenterDestination!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterConversionSource--;
}

core.int buildCounterConversionType = 0;
api.ConversionType buildConversionType() {
  final o = api.ConversionType();
  buildCounterConversionType++;
  if (buildCounterConversionType < 3) {
    o.name = 'foo';
    o.report = true;
  }
  buildCounterConversionType--;
  return o;
}

void checkConversionType(api.ConversionType o) {
  buildCounterConversionType++;
  if (buildCounterConversionType < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.report!, unittest.isTrue);
  }
  buildCounterConversionType--;
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

core.int buildCounterGoogleAnalyticsLink = 0;
api.GoogleAnalyticsLink buildGoogleAnalyticsLink() {
  final o = api.GoogleAnalyticsLink();
  buildCounterGoogleAnalyticsLink++;
  if (buildCounterGoogleAnalyticsLink < 3) {
    o.attributionSettings = buildAttributionSettings();
    o.property = 'foo';
    o.propertyId = 'foo';
  }
  buildCounterGoogleAnalyticsLink--;
  return o;
}

void checkGoogleAnalyticsLink(api.GoogleAnalyticsLink o) {
  buildCounterGoogleAnalyticsLink++;
  if (buildCounterGoogleAnalyticsLink < 3) {
    checkAttributionSettings(o.attributionSettings!);
    unittest.expect(o.property!, unittest.equals('foo'));
    unittest.expect(o.propertyId!, unittest.equals('foo'));
  }
  buildCounterGoogleAnalyticsLink--;
}

core.List<api.ConversionSource> buildUnnamed1() => [
  buildConversionSource(),
  buildConversionSource(),
];

void checkUnnamed1(core.List<api.ConversionSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionSource(o[0]);
  checkConversionSource(o[1]);
}

core.int buildCounterListConversionSourcesResponse = 0;
api.ListConversionSourcesResponse buildListConversionSourcesResponse() {
  final o = api.ListConversionSourcesResponse();
  buildCounterListConversionSourcesResponse++;
  if (buildCounterListConversionSourcesResponse < 3) {
    o.conversionSources = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListConversionSourcesResponse--;
  return o;
}

void checkListConversionSourcesResponse(api.ListConversionSourcesResponse o) {
  buildCounterListConversionSourcesResponse++;
  if (buildCounterListConversionSourcesResponse < 3) {
    checkUnnamed1(o.conversionSources!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConversionSourcesResponse--;
}

core.int buildCounterMerchantCenterDestination = 0;
api.MerchantCenterDestination buildMerchantCenterDestination() {
  final o = api.MerchantCenterDestination();
  buildCounterMerchantCenterDestination++;
  if (buildCounterMerchantCenterDestination < 3) {
    o.attributionSettings = buildAttributionSettings();
    o.currencyCode = 'foo';
    o.destination = 'foo';
    o.displayName = 'foo';
  }
  buildCounterMerchantCenterDestination--;
  return o;
}

void checkMerchantCenterDestination(api.MerchantCenterDestination o) {
  buildCounterMerchantCenterDestination++;
  if (buildCounterMerchantCenterDestination < 3) {
    checkAttributionSettings(o.attributionSettings!);
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterMerchantCenterDestination--;
}

core.int buildCounterUndeleteConversionSourceRequest = 0;
api.UndeleteConversionSourceRequest buildUndeleteConversionSourceRequest() {
  final o = api.UndeleteConversionSourceRequest();
  buildCounterUndeleteConversionSourceRequest++;
  if (buildCounterUndeleteConversionSourceRequest < 3) {}
  buildCounterUndeleteConversionSourceRequest--;
  return o;
}

void checkUndeleteConversionSourceRequest(
  api.UndeleteConversionSourceRequest o,
) {
  buildCounterUndeleteConversionSourceRequest++;
  if (buildCounterUndeleteConversionSourceRequest < 3) {}
  buildCounterUndeleteConversionSourceRequest--;
}

void main() {
  unittest.group('obj-schema-AttributionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttributionSettings(od);
    });
  });

  unittest.group('obj-schema-ConversionSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConversionSource(od);
    });
  });

  unittest.group('obj-schema-ConversionType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConversionType(od);
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

  unittest.group('obj-schema-GoogleAnalyticsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAnalyticsLink(od);
    });
  });

  unittest.group('obj-schema-ListConversionSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConversionSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConversionSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConversionSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-MerchantCenterDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantCenterDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantCenterDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantCenterDestination(od);
    });
  });

  unittest.group('obj-schema-UndeleteConversionSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteConversionSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteConversionSourceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUndeleteConversionSourceRequest(od);
    });
  });

  unittest.group('resource-AccountsConversionSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.conversionSources;
      final arg_request = buildConversionSource();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConversionSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConversionSource(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('conversions/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildConversionSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkConversionSource(response as api.ConversionSource);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.conversionSources;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('conversions/v1beta/'),
          );
          pathOffset += 19;
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
      final res = api.MerchantApi(mock).accounts.conversionSources;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('conversions/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildConversionSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConversionSource(response as api.ConversionSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.conversionSources;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('conversions/v1beta/'),
          );
          pathOffset += 19;
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
            queryMap['showDeleted']!.first,
            unittest.equals('$arg_showDeleted'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListConversionSourcesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        showDeleted: arg_showDeleted,
        $fields: arg_$fields,
      );
      checkListConversionSourcesResponse(
        response as api.ListConversionSourcesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.conversionSources;
      final arg_request = buildConversionSource();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ConversionSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConversionSource(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('conversions/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildConversionSource());
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
      checkConversionSource(response as api.ConversionSource);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.conversionSources;
      final arg_request = buildUndeleteConversionSourceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UndeleteConversionSourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUndeleteConversionSourceRequest(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('conversions/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildConversionSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.undelete(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkConversionSource(response as api.ConversionSource);
    });
  });
}
