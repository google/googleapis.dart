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

import 'package:googleapis/youtubeanalytics/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterEmptyResponse = 0;
api.EmptyResponse buildEmptyResponse() {
  final o = api.EmptyResponse();
  buildCounterEmptyResponse++;
  if (buildCounterEmptyResponse < 3) {
    o.errors = buildErrors();
  }
  buildCounterEmptyResponse--;
  return o;
}

void checkEmptyResponse(api.EmptyResponse o) {
  buildCounterEmptyResponse++;
  if (buildCounterEmptyResponse < 3) {
    checkErrors(o.errors!);
  }
  buildCounterEmptyResponse--;
}

core.List<core.String> buildUnnamed6252() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterErrorProto = 0;
api.ErrorProto buildErrorProto() {
  final o = api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.argument = buildUnnamed6252();
    o.code = 'foo';
    o.debugInfo = 'foo';
    o.domain = 'foo';
    o.externalErrorMessage = 'foo';
    o.location = 'foo';
    o.locationType = 'foo';
  }
  buildCounterErrorProto--;
  return o;
}

void checkErrorProto(api.ErrorProto o) {
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    checkUnnamed6252(o.argument!);
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.debugInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalErrorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrorProto--;
}

core.List<api.ErrorProto> buildUnnamed6253() {
  final o = <api.ErrorProto>[];
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

void checkUnnamed6253(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterErrors = 0;
api.Errors buildErrors() {
  final o = api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 'foo';
    o.error = buildUnnamed6253();
    o.requestId = 'foo';
  }
  buildCounterErrors--;
  return o;
}

void checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed6253(o.error!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrors--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.contentDetails = buildGroupContentDetails();
    o.errors = buildErrors();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.snippet = buildGroupSnippet();
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    checkGroupContentDetails(o.contentDetails!);
    checkErrors(o.errors!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkGroupSnippet(o.snippet!);
  }
  buildCounterGroup--;
}

core.int buildCounterGroupContentDetails = 0;
api.GroupContentDetails buildGroupContentDetails() {
  final o = api.GroupContentDetails();
  buildCounterGroupContentDetails++;
  if (buildCounterGroupContentDetails < 3) {
    o.itemCount = 'foo';
    o.itemType = 'foo';
  }
  buildCounterGroupContentDetails--;
  return o;
}

void checkGroupContentDetails(api.GroupContentDetails o) {
  buildCounterGroupContentDetails++;
  if (buildCounterGroupContentDetails < 3) {
    unittest.expect(
      o.itemCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupContentDetails--;
}

core.int buildCounterGroupItem = 0;
api.GroupItem buildGroupItem() {
  final o = api.GroupItem();
  buildCounterGroupItem++;
  if (buildCounterGroupItem < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.groupId = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.resource = buildGroupItemResource();
  }
  buildCounterGroupItem--;
  return o;
}

void checkGroupItem(api.GroupItem o) {
  buildCounterGroupItem++;
  if (buildCounterGroupItem < 3) {
    checkErrors(o.errors!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkGroupItemResource(o.resource!);
  }
  buildCounterGroupItem--;
}

core.int buildCounterGroupItemResource = 0;
api.GroupItemResource buildGroupItemResource() {
  final o = api.GroupItemResource();
  buildCounterGroupItemResource++;
  if (buildCounterGroupItemResource < 3) {
    o.id = 'foo';
    o.kind = 'foo';
  }
  buildCounterGroupItemResource--;
  return o;
}

void checkGroupItemResource(api.GroupItemResource o) {
  buildCounterGroupItemResource++;
  if (buildCounterGroupItemResource < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupItemResource--;
}

core.int buildCounterGroupSnippet = 0;
api.GroupSnippet buildGroupSnippet() {
  final o = api.GroupSnippet();
  buildCounterGroupSnippet++;
  if (buildCounterGroupSnippet < 3) {
    o.publishedAt = 'foo';
    o.title = 'foo';
  }
  buildCounterGroupSnippet--;
  return o;
}

void checkGroupSnippet(api.GroupSnippet o) {
  buildCounterGroupSnippet++;
  if (buildCounterGroupSnippet < 3) {
    unittest.expect(
      o.publishedAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupSnippet--;
}

core.List<api.GroupItem> buildUnnamed6254() {
  final o = <api.GroupItem>[];
  o.add(buildGroupItem());
  o.add(buildGroupItem());
  return o;
}

void checkUnnamed6254(core.List<api.GroupItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupItem(o[0]);
  checkGroupItem(o[1]);
}

core.int buildCounterListGroupItemsResponse = 0;
api.ListGroupItemsResponse buildListGroupItemsResponse() {
  final o = api.ListGroupItemsResponse();
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.items = buildUnnamed6254();
    o.kind = 'foo';
  }
  buildCounterListGroupItemsResponse--;
  return o;
}

void checkListGroupItemsResponse(api.ListGroupItemsResponse o) {
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    checkErrors(o.errors!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed6254(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGroupItemsResponse--;
}

core.List<api.Group> buildUnnamed6255() {
  final o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed6255(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.items = buildUnnamed6255();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkErrors(o.errors!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed6255(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGroupsResponse--;
}

core.List<api.ResultTableColumnHeader> buildUnnamed6256() {
  final o = <api.ResultTableColumnHeader>[];
  o.add(buildResultTableColumnHeader());
  o.add(buildResultTableColumnHeader());
  return o;
}

void checkUnnamed6256(core.List<api.ResultTableColumnHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeader(o[0]);
  checkResultTableColumnHeader(o[1]);
}

core.List<core.Object> buildUnnamed6257() {
  final o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed6257(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.List<core.Object>> buildUnnamed6258() {
  final o = <core.List<core.Object>>[];
  o.add(buildUnnamed6257());
  o.add(buildUnnamed6257());
  return o;
}

void checkUnnamed6258(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6257(o[0]);
  checkUnnamed6257(o[1]);
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  final o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.columnHeaders = buildUnnamed6256();
    o.errors = buildErrors();
    o.kind = 'foo';
    o.rows = buildUnnamed6258();
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkUnnamed6256(o.columnHeaders!);
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed6258(o.rows!);
  }
  buildCounterQueryResponse--;
}

core.int buildCounterResultTableColumnHeader = 0;
api.ResultTableColumnHeader buildResultTableColumnHeader() {
  final o = api.ResultTableColumnHeader();
  buildCounterResultTableColumnHeader++;
  if (buildCounterResultTableColumnHeader < 3) {
    o.columnType = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterResultTableColumnHeader--;
  return o;
}

void checkResultTableColumnHeader(api.ResultTableColumnHeader o) {
  buildCounterResultTableColumnHeader++;
  if (buildCounterResultTableColumnHeader < 3) {
    unittest.expect(
      o.columnType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterResultTableColumnHeader--;
}

void main() {
  unittest.group('obj-schema-EmptyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmptyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmptyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmptyResponse(od);
    });
  });

  unittest.group('obj-schema-ErrorProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorProto.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorProto(od);
    });
  });

  unittest.group('obj-schema-Errors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Errors.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrors(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GroupContentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupContentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupContentDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupContentDetails(od);
    });
  });

  unittest.group('obj-schema-GroupItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GroupItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroupItem(od);
    });
  });

  unittest.group('obj-schema-GroupItemResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupItemResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupItemResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupItemResource(od);
    });
  });

  unittest.group('obj-schema-GroupSnippet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupSnippet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupSnippet(od);
    });
  });

  unittest.group('obj-schema-ListGroupItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryResponse(od);
    });
  });

  unittest.group('obj-schema-ResultTableColumnHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultTableColumnHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultTableColumnHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultTableColumnHeader(od);
    });
  });

  unittest.group('resource-GroupItemsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groupItems;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v2/groupItems'),
        );
        pathOffset += 13;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmptyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          id: arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkEmptyResponse(response as api.EmptyResponse);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groupItems;
      final arg_request = buildGroupItem();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GroupItem.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroupItem(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v2/groupItems'),
        );
        pathOffset += 13;

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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGroupItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkGroupItem(response as api.GroupItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groupItems;
      final arg_groupId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v2/groupItems'),
        );
        pathOffset += 13;

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
          queryMap['groupId']!.first,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGroupItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          groupId: arg_groupId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkListGroupItemsResponse(response as api.ListGroupItemsResponse);
    });
  });

  unittest.group('resource-GroupsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groups;
      final arg_id = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v2/groups'),
        );
        pathOffset += 9;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmptyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          id: arg_id,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkEmptyResponse(response as api.EmptyResponse);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groups;
      final arg_request = buildGroup();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v2/groups'),
        );
        pathOffset += 9;

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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groups;
      final arg_id = 'foo';
      final arg_mine = true;
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v2/groups'),
        );
        pathOffset += 9;

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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['mine']!.first,
          unittest.equals('$arg_mine'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
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
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          id: arg_id,
          mine: arg_mine,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).groups;
      final arg_request = buildGroup();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v2/groups'),
        );
        pathOffset += 9;

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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkGroup(response as api.Group);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeAnalyticsApi(mock).reports;
      final arg_currency = 'foo';
      final arg_dimensions = 'foo';
      final arg_endDate = 'foo';
      final arg_filters = 'foo';
      final arg_ids = 'foo';
      final arg_includeHistoricalChannelData = true;
      final arg_maxResults = 42;
      final arg_metrics = 'foo';
      final arg_sort = 'foo';
      final arg_startDate = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v2/reports'),
        );
        pathOffset += 10;

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
          queryMap['currency']!.first,
          unittest.equals(arg_currency),
        );
        unittest.expect(
          queryMap['dimensions']!.first,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['filters']!.first,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          queryMap['ids']!.first,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['includeHistoricalChannelData']!.first,
          unittest.equals('$arg_includeHistoricalChannelData'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['metrics']!.first,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.query(
          currency: arg_currency,
          dimensions: arg_dimensions,
          endDate: arg_endDate,
          filters: arg_filters,
          ids: arg_ids,
          includeHistoricalChannelData: arg_includeHistoricalChannelData,
          maxResults: arg_maxResults,
          metrics: arg_metrics,
          sort: arg_sort,
          startDate: arg_startDate,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkQueryResponse(response as api.QueryResponse);
    });
  });
}
