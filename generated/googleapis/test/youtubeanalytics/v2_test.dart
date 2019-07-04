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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterEmptyResponse = 0;
buildEmptyResponse() {
  var o = new api.EmptyResponse();
  buildCounterEmptyResponse++;
  if (buildCounterEmptyResponse < 3) {
    o.errors = buildErrors();
  }
  buildCounterEmptyResponse--;
  return o;
}

checkEmptyResponse(api.EmptyResponse o) {
  buildCounterEmptyResponse++;
  if (buildCounterEmptyResponse < 3) {
    checkErrors(o.errors);
  }
  buildCounterEmptyResponse--;
}

buildUnnamed2442() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2442(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterErrorProto = 0;
buildErrorProto() {
  var o = new api.ErrorProto();
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    o.argument = buildUnnamed2442();
    o.code = "foo";
    o.debugInfo = "foo";
    o.domain = "foo";
    o.externalErrorMessage = "foo";
    o.location = "foo";
    o.locationType = "foo";
  }
  buildCounterErrorProto--;
  return o;
}

checkErrorProto(api.ErrorProto o) {
  buildCounterErrorProto++;
  if (buildCounterErrorProto < 3) {
    checkUnnamed2442(o.argument);
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.debugInfo, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.externalErrorMessage, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.locationType, unittest.equals('foo'));
  }
  buildCounterErrorProto--;
}

buildUnnamed2443() {
  var o = new core.List<api.ErrorProto>();
  o.add(buildErrorProto());
  o.add(buildErrorProto());
  return o;
}

checkUnnamed2443(core.List<api.ErrorProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorProto(o[0]);
  checkErrorProto(o[1]);
}

core.int buildCounterErrors = 0;
buildErrors() {
  var o = new api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = "foo";
    o.error = buildUnnamed2443();
    o.requestId = "foo";
  }
  buildCounterErrors--;
  return o;
}

checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2443(o.error);
    unittest.expect(o.requestId, unittest.equals('foo'));
  }
  buildCounterErrors--;
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.contentDetails = buildGroupContentDetails();
    o.errors = buildErrors();
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.snippet = buildGroupSnippet();
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
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
buildGroupContentDetails() {
  var o = new api.GroupContentDetails();
  buildCounterGroupContentDetails++;
  if (buildCounterGroupContentDetails < 3) {
    o.itemCount = "foo";
    o.itemType = "foo";
  }
  buildCounterGroupContentDetails--;
  return o;
}

checkGroupContentDetails(api.GroupContentDetails o) {
  buildCounterGroupContentDetails++;
  if (buildCounterGroupContentDetails < 3) {
    unittest.expect(o.itemCount, unittest.equals('foo'));
    unittest.expect(o.itemType, unittest.equals('foo'));
  }
  buildCounterGroupContentDetails--;
}

core.int buildCounterGroupItem = 0;
buildGroupItem() {
  var o = new api.GroupItem();
  buildCounterGroupItem++;
  if (buildCounterGroupItem < 3) {
    o.errors = buildErrors();
    o.etag = "foo";
    o.groupId = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.resource = buildGroupItemResource();
  }
  buildCounterGroupItem--;
  return o;
}

checkGroupItem(api.GroupItem o) {
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
buildGroupItemResource() {
  var o = new api.GroupItemResource();
  buildCounterGroupItemResource++;
  if (buildCounterGroupItemResource < 3) {
    o.id = "foo";
    o.kind = "foo";
  }
  buildCounterGroupItemResource--;
  return o;
}

checkGroupItemResource(api.GroupItemResource o) {
  buildCounterGroupItemResource++;
  if (buildCounterGroupItemResource < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterGroupItemResource--;
}

core.int buildCounterGroupSnippet = 0;
buildGroupSnippet() {
  var o = new api.GroupSnippet();
  buildCounterGroupSnippet++;
  if (buildCounterGroupSnippet < 3) {
    o.publishedAt = "foo";
    o.title = "foo";
  }
  buildCounterGroupSnippet--;
  return o;
}

checkGroupSnippet(api.GroupSnippet o) {
  buildCounterGroupSnippet++;
  if (buildCounterGroupSnippet < 3) {
    unittest.expect(o.publishedAt, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGroupSnippet--;
}

buildUnnamed2444() {
  var o = new core.List<api.GroupItem>();
  o.add(buildGroupItem());
  o.add(buildGroupItem());
  return o;
}

checkUnnamed2444(core.List<api.GroupItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupItem(o[0]);
  checkGroupItem(o[1]);
}

core.int buildCounterListGroupItemsResponse = 0;
buildListGroupItemsResponse() {
  var o = new api.ListGroupItemsResponse();
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    o.errors = buildErrors();
    o.etag = "foo";
    o.items = buildUnnamed2444();
    o.kind = "foo";
  }
  buildCounterListGroupItemsResponse--;
  return o;
}

checkListGroupItemsResponse(api.ListGroupItemsResponse o) {
  buildCounterListGroupItemsResponse++;
  if (buildCounterListGroupItemsResponse < 3) {
    checkErrors(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed2444(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterListGroupItemsResponse--;
}

buildUnnamed2445() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed2445(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
buildListGroupsResponse() {
  var o = new api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.errors = buildErrors();
    o.etag = "foo";
    o.items = buildUnnamed2445();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterListGroupsResponse--;
  return o;
}

checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkErrors(o.errors);
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed2445(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

buildUnnamed2446() {
  var o = new core.List<api.ResultTableColumnHeader>();
  o.add(buildResultTableColumnHeader());
  o.add(buildResultTableColumnHeader());
  return o;
}

checkUnnamed2446(core.List<api.ResultTableColumnHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultTableColumnHeader(o[0]);
  checkResultTableColumnHeader(o[1]);
}

buildUnnamed2447() {
  var o = new core.List<core.Object>();
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

checkUnnamed2447(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed2448() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed2447());
  o.add(buildUnnamed2447());
  return o;
}

checkUnnamed2448(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2447(o[0]);
  checkUnnamed2447(o[1]);
}

core.int buildCounterQueryResponse = 0;
buildQueryResponse() {
  var o = new api.QueryResponse();
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    o.columnHeaders = buildUnnamed2446();
    o.errors = buildErrors();
    o.kind = "foo";
    o.rows = buildUnnamed2448();
  }
  buildCounterQueryResponse--;
  return o;
}

checkQueryResponse(api.QueryResponse o) {
  buildCounterQueryResponse++;
  if (buildCounterQueryResponse < 3) {
    checkUnnamed2446(o.columnHeaders);
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2448(o.rows);
  }
  buildCounterQueryResponse--;
}

core.int buildCounterResultTableColumnHeader = 0;
buildResultTableColumnHeader() {
  var o = new api.ResultTableColumnHeader();
  buildCounterResultTableColumnHeader++;
  if (buildCounterResultTableColumnHeader < 3) {
    o.columnType = "foo";
    o.dataType = "foo";
    o.name = "foo";
  }
  buildCounterResultTableColumnHeader--;
  return o;
}

checkResultTableColumnHeader(api.ResultTableColumnHeader o) {
  buildCounterResultTableColumnHeader++;
  if (buildCounterResultTableColumnHeader < 3) {
    unittest.expect(o.columnType, unittest.equals('foo'));
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterResultTableColumnHeader--;
}

main() {
  unittest.group("obj-schema-EmptyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmptyResponse();
      var od = new api.EmptyResponse.fromJson(o.toJson());
      checkEmptyResponse(od);
    });
  });

  unittest.group("obj-schema-ErrorProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorProto();
      var od = new api.ErrorProto.fromJson(o.toJson());
      checkErrorProto(od);
    });
  });

  unittest.group("obj-schema-Errors", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrors();
      var od = new api.Errors.fromJson(o.toJson());
      checkErrors(od);
    });
  });

  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group("obj-schema-GroupContentDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupContentDetails();
      var od = new api.GroupContentDetails.fromJson(o.toJson());
      checkGroupContentDetails(od);
    });
  });

  unittest.group("obj-schema-GroupItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupItem();
      var od = new api.GroupItem.fromJson(o.toJson());
      checkGroupItem(od);
    });
  });

  unittest.group("obj-schema-GroupItemResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupItemResource();
      var od = new api.GroupItemResource.fromJson(o.toJson());
      checkGroupItemResource(od);
    });
  });

  unittest.group("obj-schema-GroupSnippet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupSnippet();
      var od = new api.GroupSnippet.fromJson(o.toJson());
      checkGroupSnippet(od);
    });
  });

  unittest.group("obj-schema-ListGroupItemsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGroupItemsResponse();
      var od = new api.ListGroupItemsResponse.fromJson(o.toJson());
      checkListGroupItemsResponse(od);
    });
  });

  unittest.group("obj-schema-ListGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGroupsResponse();
      var od = new api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-QueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResponse();
      var od = new api.QueryResponse.fromJson(o.toJson());
      checkQueryResponse(od);
    });
  });

  unittest.group("obj-schema-ResultTableColumnHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultTableColumnHeader();
      var od = new api.ResultTableColumnHeader.fromJson(o.toJson());
      checkResultTableColumnHeader(od);
    });
  });

  unittest.group("resource-GroupItemsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GroupItemsResourceApi res =
          new api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v2/groupItems"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmptyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              id: arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmptyResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.GroupItemsResourceApi res =
          new api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_request = buildGroupItem();
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GroupItem.fromJson(json);
        checkGroupItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v2/groupItems"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGroupItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupItem(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GroupItemsResourceApi res =
          new api.YoutubeAnalyticsApi(mock).groupItems;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_groupId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v2/groupItems"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(
            queryMap["groupId"].first, unittest.equals(arg_groupId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGroupItemsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              groupId: arg_groupId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupItemsResponse(response);
      })));
    });
  });

  unittest.group("resource-GroupsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmptyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              id: arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmptyResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_id = "foo";
      var arg_mine = true;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["mine"].first, unittest.equals("$arg_mine"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              id: arg_id,
              mine: arg_mine,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.YoutubeAnalyticsApi(mock).groups;
      var arg_request = buildGroup();
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v2/groups"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-ReportsResourceApi", () {
    unittest.test("method--query", () {
      var mock = new HttpServerMock();
      api.ReportsResourceApi res = new api.YoutubeAnalyticsApi(mock).reports;
      var arg_ids = "foo";
      var arg_includeHistoricalChannelData = true;
      var arg_currency = "foo";
      var arg_startIndex = 42;
      var arg_dimensions = "foo";
      var arg_endDate = "foo";
      var arg_maxResults = 42;
      var arg_filters = "foo";
      var arg_sort = "foo";
      var arg_startDate = "foo";
      var arg_metrics = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v2/reports"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ids"].first, unittest.equals(arg_ids));
        unittest.expect(queryMap["includeHistoricalChannelData"].first,
            unittest.equals("$arg_includeHistoricalChannelData"));
        unittest.expect(
            queryMap["currency"].first, unittest.equals(arg_currency));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(
            queryMap["dimensions"].first, unittest.equals(arg_dimensions));
        unittest.expect(
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["filters"].first, unittest.equals(arg_filters));
        unittest.expect(queryMap["sort"].first, unittest.equals(arg_sort));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(
            queryMap["metrics"].first, unittest.equals(arg_metrics));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(
              ids: arg_ids,
              includeHistoricalChannelData: arg_includeHistoricalChannelData,
              currency: arg_currency,
              startIndex: arg_startIndex,
              dimensions: arg_dimensions,
              endDate: arg_endDate,
              maxResults: arg_maxResults,
              filters: arg_filters,
              sort: arg_sort,
              startDate: arg_startDate,
              metrics: arg_metrics,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryResponse(response);
      })));
    });
  });
}
