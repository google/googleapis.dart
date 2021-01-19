// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.youtubeAnalytics.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/youtubeanalytics/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

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
    checkErrors(o.errors);
  }
  buildCounterEmptyResponse--;
}

core.List<core.String> buildUnnamed4836() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4836(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterErrorProto = 0;
api.ErrorProto buildErrorProto() {
  var o = api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.argument = buildUnnamed4836();
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
    checkUnnamed4836(o.argument);
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.debugInfo, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.externalErrorMessage, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.locationType, unittest.equals('foo'));
  }
  buildCounterErrorProto--;
}

core.List<api.ErrorProto> buildUnnamed4837() {
  var o = <api.ErrorProto>[];
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

void checkUnnamed4837(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterErrors = 0;
api.Errors buildErrors() {
  var o = api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 'foo';
    o.error = buildUnnamed4837();
    o.requestId = 'foo';
  }
  buildCounterErrors--;
  return o;
}

void checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed4837(o.error);
    unittest.expect(o.requestId, unittest.equals('foo'));
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
    checkGroupContentDetails(o.contentDetails);
    checkErrors(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGroupSnippet(o.snippet);
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
    unittest.expect(o.itemCount, unittest.equals('foo'));
    unittest.expect(o.itemType, unittest.equals('foo'));
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
    checkErrors(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGroupItemResource(o.resource);
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
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
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGroupSnippet--;
}

core.List<api.GroupItem> buildUnnamed4838() {
  var o = <api.GroupItem>[];
  o.add(buildGroupItem());
  o.add(buildGroupItem());
  return o;
}

void checkUnnamed4838(core.List<api.GroupItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupItem(o[0]);
  checkGroupItem(o[1]);
}

core.int buildCounterListGroupItemsResponse = 0;
api.ListGroupItemsResponse buildListGroupItemsResponse() {
  var o = api.ListGroupItemsResponse();
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.items = buildUnnamed4838();
    o.kind = 'foo';
  }
  buildCounterListGroupItemsResponse--;
  return o;
}

void checkListGroupItemsResponse(api.ListGroupItemsResponse o) {
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    checkErrors(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4838(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterListGroupItemsResponse--;
}

core.List<api.Group> buildUnnamed4839() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed4839(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  var o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.errors = buildErrors();
    o.etag = 'foo';
    o.items = buildUnnamed4839();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkErrors(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4839(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

core.List<api.ResultTableColumnHeader> buildUnnamed4840() {
  var o = <api.ResultTableColumnHeader>[];
  o.add(buildResultTableColumnHeader());
  o.add(buildResultTableColumnHeader());
  return o;
}

void checkUnnamed4840(core.List<api.ResultTableColumnHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeader(o[0]);
  checkResultTableColumnHeader(o[1]);
}

core.List<core.Object> buildUnnamed4841() {
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

void checkUnnamed4841(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.List<core.Object>> buildUnnamed4842() {
  var o = <core.List<core.Object>>[];
  o.add(buildUnnamed4841());
  o.add(buildUnnamed4841());
  return o;
}

void checkUnnamed4842(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4841(o[0]);
  checkUnnamed4841(o[1]);
}

core.int buildCounterQueryResponse = 0;
api.QueryResponse buildQueryResponse() {
  var o = api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.columnHeaders = buildUnnamed4840();
    o.errors = buildErrors();
    o.kind = 'foo';
    o.rows = buildUnnamed4842();
  }
  buildCounterQueryResponse--;
  return o;
}

void checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkUnnamed4840(o.columnHeaders);
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4842(o.rows);
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
    unittest.expect(o.columnType, unittest.equals('foo'));
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterResultTableColumnHeader--;
}

void main() {
  unittest.group('obj-schema-EmptyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmptyResponse();
      var od = api.EmptyResponse.fromJson(o.toJson());
      checkEmptyResponse(od);
    });
  });

  unittest.group('obj-schema-ErrorProto', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrorProto();
      var od = api.ErrorProto.fromJson(o.toJson());
      checkErrorProto(od);
    });
  });

  unittest.group('obj-schema-Errors', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrors();
      var od = api.Errors.fromJson(o.toJson());
      checkErrors(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GroupContentDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupContentDetails();
      var od = api.GroupContentDetails.fromJson(o.toJson());
      checkGroupContentDetails(od);
    });
  });

  unittest.group('obj-schema-GroupItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupItem();
      var od = api.GroupItem.fromJson(o.toJson());
      checkGroupItem(od);
    });
  });

  unittest.group('obj-schema-GroupItemResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupItemResource();
      var od = api.GroupItemResource.fromJson(o.toJson());
      checkGroupItemResource(od);
    });
  });

  unittest.group('obj-schema-GroupSnippet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupSnippet();
      var od = api.GroupSnippet.fromJson(o.toJson());
      checkGroupSnippet(od);
    });
  });

  unittest.group('obj-schema-ListGroupItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupItemsResponse();
      var od = api.ListGroupItemsResponse.fromJson(o.toJson());
      checkListGroupItemsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupsResponse();
      var od = api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-QueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryResponse();
      var od = api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od);
    });
  });

  unittest.group('obj-schema-ResultTableColumnHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildResultTableColumnHeader();
      var od = api.ResultTableColumnHeader.fromJson(o.toJson());
      checkResultTableColumnHeader(od);
    });
  });

  unittest.group('resource-GroupItemsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.GroupItemsResourceApi res = api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v2/groupItems"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

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
        checkEmptyResponse(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.GroupItemsResourceApi res = api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_request = buildGroupItem();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GroupItem.fromJson(json);
        checkGroupItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v2/groupItems"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

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
        checkGroupItem(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.GroupItemsResourceApi res = api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_groupId = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v2/groupItems"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["groupId"].first, unittest.equals(arg_groupId));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

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
        checkListGroupItemsResponse(response);
      })));
    });
  });

  unittest.group('resource-GroupsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.GroupsResourceApi res = api.YoutubeAnalyticsApi(mock).groups;
      var arg_id = 'foo';
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

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
        checkEmptyResponse(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.GroupsResourceApi res = api.YoutubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

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
        checkGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.GroupsResourceApi res = api.YoutubeAnalyticsApi(mock).groups;
      var arg_mine = true;
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_id = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              mine: arg_mine,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              id: arg_id,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.GroupsResourceApi res = api.YoutubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

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
        checkGroup(response);
      })));
    });
  });

  unittest.group('resource-ReportsResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.YoutubeAnalyticsApi(mock).reports;
      var arg_startIndex = 42;
      var arg_metrics = 'foo';
      var arg_sort = 'foo';
      var arg_includeHistoricalChannelData = true;
      var arg_dimensions = 'foo';
      var arg_filters = 'foo';
      var arg_maxResults = 42;
      var arg_currency = 'foo';
      var arg_endDate = 'foo';
      var arg_startDate = 'foo';
      var arg_ids = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v2/reports"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(
            queryMap["metrics"].first, unittest.equals(arg_metrics));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(queryMap["includeHistoricalChannelData"].first,
            unittest.equals("$arg_includeHistoricalChannelData"));
        unittest.expect(
            queryMap["dimensions"].first, unittest.equals(arg_dimensions));
        unittest.expect(
            queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["currency"].first, unittest.equals(arg_currency));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(
              startIndex: arg_startIndex,
              metrics: arg_metrics,
              sort: arg_sort,
              includeHistoricalChannelData: arg_includeHistoricalChannelData,
              dimensions: arg_dimensions,
              filters: arg_filters,
              maxResults: arg_maxResults,
              currency: arg_currency,
              endDate: arg_endDate,
              startDate: arg_startDate,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response);
      })));
    });
  });
}
