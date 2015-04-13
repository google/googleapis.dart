library googleapis.cloudsearch.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/cloudsearch/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed1362() {
  var o = new core.Map<core.String, api.FieldValueList>();
  o["x"] = buildFieldValueList();
  o["y"] = buildFieldValueList();
  return o;
}

checkUnnamed1362(core.Map<core.String, api.FieldValueList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldValueList(o["x"]);
  checkFieldValueList(o["y"]);
}

core.int buildCounterDocument = 0;
buildDocument() {
  var o = new api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.docId = "foo";
    o.fields = buildUnnamed1362();
    o.rank = 42;
  }
  buildCounterDocument--;
  return o;
}

checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(o.docId, unittest.equals('foo'));
    checkUnnamed1362(o.fields);
    unittest.expect(o.rank, unittest.equals(42));
  }
  buildCounterDocument--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

buildUnnamed1363() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1364() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1365() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1365(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1366() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1367() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1368() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1368(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFieldNames = 0;
buildFieldNames() {
  var o = new api.FieldNames();
  buildCounterFieldNames++;
  if (buildCounterFieldNames < 3) {
    o.atomFields = buildUnnamed1363();
    o.dateFields = buildUnnamed1364();
    o.geoFields = buildUnnamed1365();
    o.htmlFields = buildUnnamed1366();
    o.numberFields = buildUnnamed1367();
    o.textFields = buildUnnamed1368();
  }
  buildCounterFieldNames--;
  return o;
}

checkFieldNames(api.FieldNames o) {
  buildCounterFieldNames++;
  if (buildCounterFieldNames < 3) {
    checkUnnamed1363(o.atomFields);
    checkUnnamed1364(o.dateFields);
    checkUnnamed1365(o.geoFields);
    checkUnnamed1366(o.htmlFields);
    checkUnnamed1367(o.numberFields);
    checkUnnamed1368(o.textFields);
  }
  buildCounterFieldNames--;
}

core.int buildCounterFieldValue = 0;
buildFieldValue() {
  var o = new api.FieldValue();
  buildCounterFieldValue++;
  if (buildCounterFieldValue < 3) {
    o.geoValue = "foo";
    o.lang = "foo";
    o.numberValue = 42.0;
    o.stringFormat = "foo";
    o.stringValue = "foo";
    o.timestampValue = "foo";
  }
  buildCounterFieldValue--;
  return o;
}

checkFieldValue(api.FieldValue o) {
  buildCounterFieldValue++;
  if (buildCounterFieldValue < 3) {
    unittest.expect(o.geoValue, unittest.equals('foo'));
    unittest.expect(o.lang, unittest.equals('foo'));
    unittest.expect(o.numberValue, unittest.equals(42.0));
    unittest.expect(o.stringFormat, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterFieldValue--;
}

buildUnnamed1369() {
  var o = new core.List<api.FieldValue>();
  o.add(buildFieldValue());
  o.add(buildFieldValue());
  return o;
}

checkUnnamed1369(core.List<api.FieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldValue(o[0]);
  checkFieldValue(o[1]);
}

core.int buildCounterFieldValueList = 0;
buildFieldValueList() {
  var o = new api.FieldValueList();
  buildCounterFieldValueList++;
  if (buildCounterFieldValueList < 3) {
    o.values = buildUnnamed1369();
  }
  buildCounterFieldValueList--;
  return o;
}

checkFieldValueList(api.FieldValueList o) {
  buildCounterFieldValueList++;
  if (buildCounterFieldValueList < 3) {
    checkUnnamed1369(o.values);
  }
  buildCounterFieldValueList--;
}

core.int buildCounterIndexInfo = 0;
buildIndexInfo() {
  var o = new api.IndexInfo();
  buildCounterIndexInfo++;
  if (buildCounterIndexInfo < 3) {
    o.indexId = "foo";
    o.indexedField = buildFieldNames();
    o.projectId = "foo";
  }
  buildCounterIndexInfo--;
  return o;
}

checkIndexInfo(api.IndexInfo o) {
  buildCounterIndexInfo++;
  if (buildCounterIndexInfo < 3) {
    unittest.expect(o.indexId, unittest.equals('foo'));
    checkFieldNames(o.indexedField);
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterIndexInfo--;
}

buildUnnamed1370() {
  var o = new core.List<api.Document>();
  o.add(buildDocument());
  o.add(buildDocument());
  return o;
}

checkUnnamed1370(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterListDocumentsResponse = 0;
buildListDocumentsResponse() {
  var o = new api.ListDocumentsResponse();
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    o.documents = buildUnnamed1370();
    o.nextPageToken = "foo";
  }
  buildCounterListDocumentsResponse--;
  return o;
}

checkListDocumentsResponse(api.ListDocumentsResponse o) {
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    checkUnnamed1370(o.documents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDocumentsResponse--;
}

buildUnnamed1371() {
  var o = new core.List<api.IndexInfo>();
  o.add(buildIndexInfo());
  o.add(buildIndexInfo());
  return o;
}

checkUnnamed1371(core.List<api.IndexInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexInfo(o[0]);
  checkIndexInfo(o[1]);
}

core.int buildCounterListIndexesResponse = 0;
buildListIndexesResponse() {
  var o = new api.ListIndexesResponse();
  buildCounterListIndexesResponse++;
  if (buildCounterListIndexesResponse < 3) {
    o.indexes = buildUnnamed1371();
    o.nextPageToken = "foo";
  }
  buildCounterListIndexesResponse--;
  return o;
}

checkListIndexesResponse(api.ListIndexesResponse o) {
  buildCounterListIndexesResponse++;
  if (buildCounterListIndexesResponse < 3) {
    checkUnnamed1371(o.indexes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListIndexesResponse--;
}

buildUnnamed1372() {
  var o = new core.List<api.SearchResult>();
  o.add(buildSearchResult());
  o.add(buildSearchResult());
  return o;
}

checkUnnamed1372(core.List<api.SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchResult(o[0]);
  checkSearchResult(o[1]);
}

core.int buildCounterSearchResponse = 0;
buildSearchResponse() {
  var o = new api.SearchResponse();
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    o.matchedCount = "foo";
    o.results = buildUnnamed1372();
  }
  buildCounterSearchResponse--;
  return o;
}

checkSearchResponse(api.SearchResponse o) {
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    unittest.expect(o.matchedCount, unittest.equals('foo'));
    checkUnnamed1372(o.results);
  }
  buildCounterSearchResponse--;
}

buildUnnamed1373() {
  var o = new core.Map<core.String, api.FieldValueList>();
  o["x"] = buildFieldValueList();
  o["y"] = buildFieldValueList();
  return o;
}

checkUnnamed1373(core.Map<core.String, api.FieldValueList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldValueList(o["x"]);
  checkFieldValueList(o["y"]);
}

core.int buildCounterSearchResult = 0;
buildSearchResult() {
  var o = new api.SearchResult();
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    o.docId = "foo";
    o.fields = buildUnnamed1373();
    o.nextPageToken = "foo";
  }
  buildCounterSearchResult--;
  return o;
}

checkSearchResult(api.SearchResult o) {
  buildCounterSearchResult++;
  if (buildCounterSearchResult < 3) {
    unittest.expect(o.docId, unittest.equals('foo'));
    checkUnnamed1373(o.fields);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchResult--;
}

buildUnnamed1374() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocument();
      var od = new api.Document.fromJson(o.toJson());
      checkDocument(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-FieldNames", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldNames();
      var od = new api.FieldNames.fromJson(o.toJson());
      checkFieldNames(od);
    });
  });


  unittest.group("obj-schema-FieldValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldValue();
      var od = new api.FieldValue.fromJson(o.toJson());
      checkFieldValue(od);
    });
  });


  unittest.group("obj-schema-FieldValueList", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldValueList();
      var od = new api.FieldValueList.fromJson(o.toJson());
      checkFieldValueList(od);
    });
  });


  unittest.group("obj-schema-IndexInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIndexInfo();
      var od = new api.IndexInfo.fromJson(o.toJson());
      checkIndexInfo(od);
    });
  });


  unittest.group("obj-schema-ListDocumentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDocumentsResponse();
      var od = new api.ListDocumentsResponse.fromJson(o.toJson());
      checkListDocumentsResponse(od);
    });
  });


  unittest.group("obj-schema-ListIndexesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListIndexesResponse();
      var od = new api.ListIndexesResponse.fromJson(o.toJson());
      checkListIndexesResponse(od);
    });
  });


  unittest.group("obj-schema-SearchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchResponse();
      var od = new api.SearchResponse.fromJson(o.toJson());
      checkSearchResponse(od);
    });
  });


  unittest.group("obj-schema-SearchResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchResult();
      var od = new api.SearchResult.fromJson(o.toJson());
      checkSearchResult(od);
    });
  });


  unittest.group("resource-ProjectsIndexesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsIndexesResourceApi res = new api.CloudsearchApi(mock).projects.indexes;
      var arg_projectId = "foo";
      var arg_indexNamePrefix = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/indexes"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["indexNamePrefix"].first, unittest.equals(arg_indexNamePrefix));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListIndexesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, indexNamePrefix: arg_indexNamePrefix, pageSize: arg_pageSize, pageToken: arg_pageToken, view: arg_view).then(unittest.expectAsync(((api.ListIndexesResponse response) {
        checkListIndexesResponse(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.ProjectsIndexesResourceApi res = new api.CloudsearchApi(mock).projects.indexes;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_query = "foo";
      var arg_fieldExpressions = buildUnnamed1374();
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_offset = 42;
      var arg_matchedCountAccuracy = 42;
      var arg_orderBy = "foo";
      var arg_scorer = "foo";
      var arg_scorerSize = 42;
      var arg_returnFields = buildUnnamed1375();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/indexes/"));
        pathOffset += 9;
        index = path.indexOf("/search", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/search"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fieldExpressions"], unittest.equals(arg_fieldExpressions));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["offset"].first), unittest.equals(arg_offset));
        unittest.expect(core.int.parse(queryMap["matchedCountAccuracy"].first), unittest.equals(arg_matchedCountAccuracy));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["scorer"].first, unittest.equals(arg_scorer));
        unittest.expect(core.int.parse(queryMap["scorerSize"].first), unittest.equals(arg_scorerSize));
        unittest.expect(queryMap["returnFields"], unittest.equals(arg_returnFields));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_projectId, arg_indexId, query: arg_query, fieldExpressions: arg_fieldExpressions, pageSize: arg_pageSize, pageToken: arg_pageToken, offset: arg_offset, matchedCountAccuracy: arg_matchedCountAccuracy, orderBy: arg_orderBy, scorer: arg_scorer, scorerSize: arg_scorerSize, returnFields: arg_returnFields).then(unittest.expectAsync(((api.SearchResponse response) {
        checkSearchResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsIndexesDocumentsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsIndexesDocumentsResourceApi res = new api.CloudsearchApi(mock).projects.indexes.documents;
      var arg_request = buildDocument();
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Document.fromJson(json);
        checkDocument(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/indexes/"));
        pathOffset += 9;
        index = path.indexOf("/documents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/documents"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId, arg_indexId).then(unittest.expectAsync(((api.Document response) {
        checkDocument(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsIndexesDocumentsResourceApi res = new api.CloudsearchApi(mock).projects.indexes.documents;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_docId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/indexes/"));
        pathOffset += 9;
        index = path.indexOf("/documents/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/documents/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_docId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_indexId, arg_docId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsIndexesDocumentsResourceApi res = new api.CloudsearchApi(mock).projects.indexes.documents;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_docId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/indexes/"));
        pathOffset += 9;
        index = path.indexOf("/documents/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/documents/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_docId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_indexId, arg_docId).then(unittest.expectAsync(((api.Document response) {
        checkDocument(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsIndexesDocumentsResourceApi res = new api.CloudsearchApi(mock).projects.indexes.documents;
      var arg_projectId = "foo";
      var arg_indexId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/indexes/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/indexes/"));
        pathOffset += 9;
        index = path.indexOf("/documents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_indexId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/documents"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_indexId, pageSize: arg_pageSize, pageToken: arg_pageToken, view: arg_view).then(unittest.expectAsync(((api.ListDocumentsResponse response) {
        checkListDocumentsResponse(response);
      })));
    });

  });


}

