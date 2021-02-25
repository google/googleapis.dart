// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/youtubeanalytics/v2.dart' as api;

import '../test_shared.dart';

core.int buildCounterEmptyResponse = 0;
api.EmptyResponse buildEmptyResponse() {
  var o = api.EmptyResponse();
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
    checkErrors(o.errors! as api.Errors);
  }
  buildCounterEmptyResponse--;
}

core.List<core.String> buildUnnamed5392() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5392(core.List<core.String> o) {
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
  var o = api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.argument = buildUnnamed5392();
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
    checkUnnamed5392(o.argument!);
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

core.List<api.ErrorProto> buildUnnamed5393() {
  var o = <api.ErrorProto>[];
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

void checkUnnamed5393(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0] as api.ErrorProto);
  checkErrorProto(o[1] as api.ErrorProto);
}

core.int buildCounterErrors = 0;
api.Errors buildErrors() {
  var o = api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 'foo';
    o.error = buildUnnamed5393();
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
    checkUnnamed5393(o.error!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrors--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  var o = api.Group();
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
    checkGroupContentDetails(o.contentDetails! as api.GroupContentDetails);
    checkErrors(o.errors! as api.Errors);
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
    checkGroupSnippet(o.snippet! as api.GroupSnippet);
  }
  buildCounterGroup--;
}

core.int buildCounterGroupContentDetails = 0;
api.GroupContentDetails buildGroupContentDetails() {
  var o = api.GroupContentDetails();
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
  var o = api.GroupItem();
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
    checkErrors(o.errors! as api.Errors);
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
    checkGroupItemResource(o.resource! as api.GroupItemResource);
  }
  buildCounterGroupItem--;
}

core.int buildCounterGroupItemResource = 0;
api.GroupItemResource buildGroupItemResource() {
  var o = api.GroupItemResource();
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
  var o = api.GroupSnippet();
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

core.List<api.GroupItem> buildUnnamed5394() {
  var o = <api.GroupItem>[];
  o.add(buildGroupItem());
  o.add(buildGroupItem());
  return o;
}

void checkUnnamed5394(core.List<api.GroupItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupItem(o[0] as api.GroupItem);
  checkGroupItem(o[1] as api.GroupItem);
}

core.int buildCounterListGroupItemsResponse = 0;
api.ListGroupItemsResponse buildListGroupItemsResponse() {
  var o = api.ListGroupItemsResponse();
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.items = buildUnnamed5394();
    o.kind = 'foo';
  }
  buildCounterListGroupItemsResponse--;
  return o;
}

void checkListGroupItemsResponse(api.ListGroupItemsResponse o) {
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    checkErrors(o.errors! as api.Errors);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5394(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGroupItemsResponse--;
}

core.List<api.Group> buildUnnamed5395() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed5395(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0] as api.Group);
  checkGroup(o[1] as api.Group);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  var o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.items = buildUnnamed5395();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkErrors(o.errors! as api.Errors);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5395(o.items!);
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

core.List<api.ResultTableColumnHeader> buildUnnamed5396() {
  var o = <api.ResultTableColumnHeader>[];
  o.add(buildResultTableColumnHeader());
  o.add(buildResultTableColumnHeader());
  return o;
}

void checkUnnamed5396(core.List<api.ResultTableColumnHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeader(o[0] as api.ResultTableColumnHeader);
  checkResultTableColumnHeader(o[1] as api.ResultTableColumnHeader);
}

core.List<core.Object> buildUnnamed5397() {
  var o = <core.Object>[];
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

void checkUnnamed5397(core.List<core.Object> o) {
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

core.List<core.List<core.Object>> buildUnnamed5398() {
  var o = <core.List<core.Object>>[];
  o.add(buildUnnamed5397());
  o.add(buildUnnamed5397());
  return o;
}

void checkUnnamed5398(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5397(o[0]);
  checkUnnamed5397(o[1]);
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  var o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.columnHeaders = buildUnnamed5396();
    o.errors = buildErrors();
    o.kind = 'foo';
    o.rows = buildUnnamed5398();
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkUnnamed5396(o.columnHeaders!);
    checkErrors(o.errors! as api.Errors);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5398(o.rows!);
  }
  buildCounterQueryResponse--;
}

core.int buildCounterResultTableColumnHeader = 0;
api.ResultTableColumnHeader buildResultTableColumnHeader() {
  var o = api.ResultTableColumnHeader();
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
    unittest.test('to-json--from-json', () {
      var o = buildEmptyResponse();
      var od = api.EmptyResponse.fromJson(o.toJson());
      checkEmptyResponse(od as api.EmptyResponse);
    });
  });

  unittest.group('obj-schema-ErrorProto', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrorProto();
      var od = api.ErrorProto.fromJson(o.toJson());
      checkErrorProto(od as api.ErrorProto);
    });
  });

  unittest.group('obj-schema-Errors', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrors();
      var od = api.Errors.fromJson(o.toJson());
      checkErrors(od as api.Errors);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od as api.Group);
    });
  });

  unittest.group('obj-schema-GroupContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupContentDetails();
      var od = api.GroupContentDetails.fromJson(o.toJson());
      checkGroupContentDetails(od as api.GroupContentDetails);
    });
  });

  unittest.group('obj-schema-GroupItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupItem();
      var od = api.GroupItem.fromJson(o.toJson());
      checkGroupItem(od as api.GroupItem);
    });
  });

  unittest.group('obj-schema-GroupItemResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupItemResource();
      var od = api.GroupItemResource.fromJson(o.toJson());
      checkGroupItemResource(od as api.GroupItemResource);
    });
  });

  unittest.group('obj-schema-GroupSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupSnippet();
      var od = api.GroupSnippet.fromJson(o.toJson());
      checkGroupSnippet(od as api.GroupSnippet);
    });
  });

  unittest.group('obj-schema-ListGroupItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupItemsResponse();
      var od = api.ListGroupItemsResponse.fromJson(o.toJson());
      checkListGroupItemsResponse(od as api.ListGroupItemsResponse);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupsResponse();
      var od = api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od as api.ListGroupsResponse);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryResponse();
      var od = api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od as api.QueryResponse);
    });
  });

  unittest.group('obj-schema-ResultTableColumnHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildResultTableColumnHeader();
      var od = api.ResultTableColumnHeader.fromJson(o.toJson());
      checkResultTableColumnHeader(od as api.ResultTableColumnHeader);
    });
  });

  unittest.group('resource-GroupItemsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groupItems;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("v2/groupItems"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["id"]!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmptyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              id: arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmptyResponse(response as api.EmptyResponse);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groupItems;
      var arg_request = buildGroupItem();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GroupItem.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroupItem(obj as api.GroupItem);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("v2/groupItems"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroupItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupItem(response as api.GroupItem);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groupItems;
      var arg_groupId = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("v2/groupItems"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["groupId"]!.first,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              groupId: arg_groupId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupItemsResponse(response as api.ListGroupItemsResponse);
      })));
    });
  });

  unittest.group('resource-GroupsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groups;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v2/groups"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["id"]!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmptyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              id: arg_id,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmptyResponse(response as api.EmptyResponse);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v2/groups"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groups;
      var arg_id = 'foo';
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v2/groups"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["id"]!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap["mine"]!.first,
          unittest.equals("$arg_mine"),
        );
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              id: arg_id,
              mine: arg_mine,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response as api.ListGroupsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v2/groups"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["onBehalfOfContentOwner"]!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      var res = api.YouTubeAnalyticsApi(mock).reports;
      var arg_currency = 'foo';
      var arg_dimensions = 'foo';
      var arg_endDate = 'foo';
      var arg_filters = 'foo';
      var arg_ids = 'foo';
      var arg_includeHistoricalChannelData = true;
      var arg_maxResults = 42;
      var arg_metrics = 'foo';
      var arg_sort = 'foo';
      var arg_startDate = 'foo';
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("v2/reports"),
        );
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["currency"]!.first,
          unittest.equals(arg_currency),
        );
        unittest.expect(
          queryMap["dimensions"]!.first,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          queryMap["endDate"]!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap["filters"]!.first,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          queryMap["ids"]!.first,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap["includeHistoricalChannelData"]!.first,
          unittest.equals("$arg_includeHistoricalChannelData"),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["metrics"]!.first,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap["sort"]!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          queryMap["startDate"]!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          core.int.parse(queryMap["startIndex"]!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response as api.QueryResponse);
      })));
    });
  });
}
