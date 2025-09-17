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

import 'package:googleapis/marketingplatformadmin/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnalyticsAccountLink = 0;
api.AnalyticsAccountLink buildAnalyticsAccountLink() {
  final o = api.AnalyticsAccountLink();
  buildCounterAnalyticsAccountLink++;
  if (buildCounterAnalyticsAccountLink < 3) {
    o.analyticsAccount = 'foo';
    o.displayName = 'foo';
    o.linkVerificationState = 'foo';
    o.name = 'foo';
  }
  buildCounterAnalyticsAccountLink--;
  return o;
}

void checkAnalyticsAccountLink(api.AnalyticsAccountLink o) {
  buildCounterAnalyticsAccountLink++;
  if (buildCounterAnalyticsAccountLink < 3) {
    unittest.expect(o.analyticsAccount!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.linkVerificationState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAnalyticsAccountLink--;
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

core.List<api.AnalyticsAccountLink> buildUnnamed0() => [
  buildAnalyticsAccountLink(),
  buildAnalyticsAccountLink(),
];

void checkUnnamed0(core.List<api.AnalyticsAccountLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnalyticsAccountLink(o[0]);
  checkAnalyticsAccountLink(o[1]);
}

core.int buildCounterListAnalyticsAccountLinksResponse = 0;
api.ListAnalyticsAccountLinksResponse buildListAnalyticsAccountLinksResponse() {
  final o = api.ListAnalyticsAccountLinksResponse();
  buildCounterListAnalyticsAccountLinksResponse++;
  if (buildCounterListAnalyticsAccountLinksResponse < 3) {
    o.analyticsAccountLinks = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListAnalyticsAccountLinksResponse--;
  return o;
}

void checkListAnalyticsAccountLinksResponse(
  api.ListAnalyticsAccountLinksResponse o,
) {
  buildCounterListAnalyticsAccountLinksResponse++;
  if (buildCounterListAnalyticsAccountLinksResponse < 3) {
    checkUnnamed0(o.analyticsAccountLinks!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAnalyticsAccountLinksResponse--;
}

core.int buildCounterOrganization = 0;
api.Organization buildOrganization() {
  final o = api.Organization();
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterOrganization--;
  return o;
}

void checkOrganization(api.Organization o) {
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterOrganization--;
}

core.int buildCounterSetPropertyServiceLevelRequest = 0;
api.SetPropertyServiceLevelRequest buildSetPropertyServiceLevelRequest() {
  final o = api.SetPropertyServiceLevelRequest();
  buildCounterSetPropertyServiceLevelRequest++;
  if (buildCounterSetPropertyServiceLevelRequest < 3) {
    o.analyticsProperty = 'foo';
    o.serviceLevel = 'foo';
  }
  buildCounterSetPropertyServiceLevelRequest--;
  return o;
}

void checkSetPropertyServiceLevelRequest(api.SetPropertyServiceLevelRequest o) {
  buildCounterSetPropertyServiceLevelRequest++;
  if (buildCounterSetPropertyServiceLevelRequest < 3) {
    unittest.expect(o.analyticsProperty!, unittest.equals('foo'));
    unittest.expect(o.serviceLevel!, unittest.equals('foo'));
  }
  buildCounterSetPropertyServiceLevelRequest--;
}

core.int buildCounterSetPropertyServiceLevelResponse = 0;
api.SetPropertyServiceLevelResponse buildSetPropertyServiceLevelResponse() {
  final o = api.SetPropertyServiceLevelResponse();
  buildCounterSetPropertyServiceLevelResponse++;
  if (buildCounterSetPropertyServiceLevelResponse < 3) {}
  buildCounterSetPropertyServiceLevelResponse--;
  return o;
}

void checkSetPropertyServiceLevelResponse(
  api.SetPropertyServiceLevelResponse o,
) {
  buildCounterSetPropertyServiceLevelResponse++;
  if (buildCounterSetPropertyServiceLevelResponse < 3) {}
  buildCounterSetPropertyServiceLevelResponse--;
}

void main() {
  unittest.group('obj-schema-AnalyticsAccountLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyticsAccountLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyticsAccountLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyticsAccountLink(od);
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

  unittest.group('obj-schema-ListAnalyticsAccountLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAnalyticsAccountLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAnalyticsAccountLinksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAnalyticsAccountLinksResponse(od);
    });
  });

  unittest.group('obj-schema-Organization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrganization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Organization.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrganization(od);
    });
  });

  unittest.group('obj-schema-SetPropertyServiceLevelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetPropertyServiceLevelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetPropertyServiceLevelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetPropertyServiceLevelRequest(od);
    });
  });

  unittest.group('obj-schema-SetPropertyServiceLevelResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetPropertyServiceLevelResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetPropertyServiceLevelResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetPropertyServiceLevelResponse(od);
    });
  });

  unittest.group('resource-OrganizationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleMarketingPlatformAdminApi(mock).organizations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildOrganization());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOrganization(response as api.Organization);
    });
  });

  unittest.group('resource-OrganizationsAnalyticsAccountLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleMarketingPlatformAdminApi(
            mock,
          ).organizations.analyticsAccountLinks;
      final arg_request = buildAnalyticsAccountLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnalyticsAccountLink.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnalyticsAccountLink(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildAnalyticsAccountLink());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAnalyticsAccountLink(response as api.AnalyticsAccountLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleMarketingPlatformAdminApi(
            mock,
          ).organizations.analyticsAccountLinks;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleMarketingPlatformAdminApi(
            mock,
          ).organizations.analyticsAccountLinks;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildListAnalyticsAccountLinksResponse(),
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
      checkListAnalyticsAccountLinksResponse(
        response as api.ListAnalyticsAccountLinksResponse,
      );
    });

    unittest.test('method--setPropertyServiceLevel', () async {
      final mock = HttpServerMock();
      final res =
          api.GoogleMarketingPlatformAdminApi(
            mock,
          ).organizations.analyticsAccountLinks;
      final arg_request = buildSetPropertyServiceLevelRequest();
      final arg_analyticsAccountLink = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetPropertyServiceLevelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetPropertyServiceLevelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
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
            buildSetPropertyServiceLevelResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setPropertyServiceLevel(
        arg_request,
        arg_analyticsAccountLink,
        $fields: arg_$fields,
      );
      checkSetPropertyServiceLevelResponse(
        response as api.SetPropertyServiceLevelResponse,
      );
    });
  });
}
