// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/mybusinessplaceactions/v1.dart' as api;
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

core.List<api.PlaceActionLink> buildUnnamed6649() => [
      buildPlaceActionLink(),
      buildPlaceActionLink(),
    ];

void checkUnnamed6649(core.List<api.PlaceActionLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaceActionLink(o[0]);
  checkPlaceActionLink(o[1]);
}

core.int buildCounterListPlaceActionLinksResponse = 0;
api.ListPlaceActionLinksResponse buildListPlaceActionLinksResponse() {
  final o = api.ListPlaceActionLinksResponse();
  buildCounterListPlaceActionLinksResponse++;
  if (buildCounterListPlaceActionLinksResponse < 3) {
    o.nextPageToken = 'foo';
    o.placeActionLinks = buildUnnamed6649();
  }
  buildCounterListPlaceActionLinksResponse--;
  return o;
}

void checkListPlaceActionLinksResponse(api.ListPlaceActionLinksResponse o) {
  buildCounterListPlaceActionLinksResponse++;
  if (buildCounterListPlaceActionLinksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6649(o.placeActionLinks!);
  }
  buildCounterListPlaceActionLinksResponse--;
}

core.List<api.PlaceActionTypeMetadata> buildUnnamed6650() => [
      buildPlaceActionTypeMetadata(),
      buildPlaceActionTypeMetadata(),
    ];

void checkUnnamed6650(core.List<api.PlaceActionTypeMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaceActionTypeMetadata(o[0]);
  checkPlaceActionTypeMetadata(o[1]);
}

core.int buildCounterListPlaceActionTypeMetadataResponse = 0;
api.ListPlaceActionTypeMetadataResponse
    buildListPlaceActionTypeMetadataResponse() {
  final o = api.ListPlaceActionTypeMetadataResponse();
  buildCounterListPlaceActionTypeMetadataResponse++;
  if (buildCounterListPlaceActionTypeMetadataResponse < 3) {
    o.nextPageToken = 'foo';
    o.placeActionTypeMetadata = buildUnnamed6650();
  }
  buildCounterListPlaceActionTypeMetadataResponse--;
  return o;
}

void checkListPlaceActionTypeMetadataResponse(
    api.ListPlaceActionTypeMetadataResponse o) {
  buildCounterListPlaceActionTypeMetadataResponse++;
  if (buildCounterListPlaceActionTypeMetadataResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6650(o.placeActionTypeMetadata!);
  }
  buildCounterListPlaceActionTypeMetadataResponse--;
}

core.int buildCounterPlaceActionLink = 0;
api.PlaceActionLink buildPlaceActionLink() {
  final o = api.PlaceActionLink();
  buildCounterPlaceActionLink++;
  if (buildCounterPlaceActionLink < 3) {
    o.createTime = 'foo';
    o.isEditable = true;
    o.isPreferred = true;
    o.name = 'foo';
    o.placeActionType = 'foo';
    o.providerType = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterPlaceActionLink--;
  return o;
}

void checkPlaceActionLink(api.PlaceActionLink o) {
  buildCounterPlaceActionLink++;
  if (buildCounterPlaceActionLink < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isEditable!, unittest.isTrue);
    unittest.expect(o.isPreferred!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeActionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaceActionLink--;
}

core.int buildCounterPlaceActionTypeMetadata = 0;
api.PlaceActionTypeMetadata buildPlaceActionTypeMetadata() {
  final o = api.PlaceActionTypeMetadata();
  buildCounterPlaceActionTypeMetadata++;
  if (buildCounterPlaceActionTypeMetadata < 3) {
    o.displayName = 'foo';
    o.placeActionType = 'foo';
  }
  buildCounterPlaceActionTypeMetadata--;
  return o;
}

void checkPlaceActionTypeMetadata(api.PlaceActionTypeMetadata o) {
  buildCounterPlaceActionTypeMetadata++;
  if (buildCounterPlaceActionTypeMetadata < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeActionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaceActionTypeMetadata--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ListPlaceActionLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlaceActionLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlaceActionLinksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPlaceActionLinksResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlaceActionTypeMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlaceActionTypeMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlaceActionTypeMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPlaceActionTypeMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-PlaceActionLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaceActionLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaceActionLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaceActionLink(od);
    });
  });

  unittest.group('obj-schema-PlaceActionTypeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaceActionTypeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaceActionTypeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaceActionTypeMetadata(od);
    });
  });

  unittest.group('resource-LocationsPlaceActionLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessPlaceActionsApi(mock).locations.placeActionLinks;
      final arg_request = buildPlaceActionLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlaceActionLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlaceActionLink(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaceActionLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkPlaceActionLink(response as api.PlaceActionLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessPlaceActionsApi(mock).locations.placeActionLinks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessPlaceActionsApi(mock).locations.placeActionLinks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaceActionLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPlaceActionLink(response as api.PlaceActionLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessPlaceActionsApi(mock).locations.placeActionLinks;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPlaceActionLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPlaceActionLinksResponse(
          response as api.ListPlaceActionLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessPlaceActionsApi(mock).locations.placeActionLinks;
      final arg_request = buildPlaceActionLink();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlaceActionLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlaceActionLink(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlaceActionLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkPlaceActionLink(response as api.PlaceActionLink);
    });
  });

  unittest.group('resource-PlaceActionTypeMetadataResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessPlaceActionsApi(mock).placeActionTypeMetadata;
      final arg_filter = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v1/placeActionTypeMetadata'),
        );
        pathOffset += 26;

        final query = (req.url).query;
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListPlaceActionTypeMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPlaceActionTypeMetadataResponse(
          response as api.ListPlaceActionTypeMetadataResponse);
    });
  });
}
