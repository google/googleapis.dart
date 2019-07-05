library googleapis.libraryagent.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/libraryagent/v1.dart' as api;

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

core.int buildCounterGoogleExampleLibraryagentV1Book = 0;
buildGoogleExampleLibraryagentV1Book() {
  var o = new api.GoogleExampleLibraryagentV1Book();
  buildCounterGoogleExampleLibraryagentV1Book++;
  if (buildCounterGoogleExampleLibraryagentV1Book < 3) {
    o.author = "foo";
    o.name = "foo";
    o.read = true;
    o.title = "foo";
  }
  buildCounterGoogleExampleLibraryagentV1Book--;
  return o;
}

checkGoogleExampleLibraryagentV1Book(api.GoogleExampleLibraryagentV1Book o) {
  buildCounterGoogleExampleLibraryagentV1Book++;
  if (buildCounterGoogleExampleLibraryagentV1Book < 3) {
    unittest.expect(o.author, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.read, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleExampleLibraryagentV1Book--;
}

buildUnnamed4658() {
  var o = new core.List<api.GoogleExampleLibraryagentV1Book>();
  o.add(buildGoogleExampleLibraryagentV1Book());
  o.add(buildGoogleExampleLibraryagentV1Book());
  return o;
}

checkUnnamed4658(core.List<api.GoogleExampleLibraryagentV1Book> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleExampleLibraryagentV1Book(o[0]);
  checkGoogleExampleLibraryagentV1Book(o[1]);
}

core.int buildCounterGoogleExampleLibraryagentV1ListBooksResponse = 0;
buildGoogleExampleLibraryagentV1ListBooksResponse() {
  var o = new api.GoogleExampleLibraryagentV1ListBooksResponse();
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListBooksResponse < 3) {
    o.books = buildUnnamed4658();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse--;
  return o;
}

checkGoogleExampleLibraryagentV1ListBooksResponse(
    api.GoogleExampleLibraryagentV1ListBooksResponse o) {
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListBooksResponse < 3) {
    checkUnnamed4658(o.books);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse--;
}

buildUnnamed4659() {
  var o = new core.List<api.GoogleExampleLibraryagentV1Shelf>();
  o.add(buildGoogleExampleLibraryagentV1Shelf());
  o.add(buildGoogleExampleLibraryagentV1Shelf());
  return o;
}

checkUnnamed4659(core.List<api.GoogleExampleLibraryagentV1Shelf> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleExampleLibraryagentV1Shelf(o[0]);
  checkGoogleExampleLibraryagentV1Shelf(o[1]);
}

core.int buildCounterGoogleExampleLibraryagentV1ListShelvesResponse = 0;
buildGoogleExampleLibraryagentV1ListShelvesResponse() {
  var o = new api.GoogleExampleLibraryagentV1ListShelvesResponse();
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListShelvesResponse < 3) {
    o.nextPageToken = "foo";
    o.shelves = buildUnnamed4659();
  }
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse--;
  return o;
}

checkGoogleExampleLibraryagentV1ListShelvesResponse(
    api.GoogleExampleLibraryagentV1ListShelvesResponse o) {
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListShelvesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4659(o.shelves);
  }
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse--;
}

core.int buildCounterGoogleExampleLibraryagentV1Shelf = 0;
buildGoogleExampleLibraryagentV1Shelf() {
  var o = new api.GoogleExampleLibraryagentV1Shelf();
  buildCounterGoogleExampleLibraryagentV1Shelf++;
  if (buildCounterGoogleExampleLibraryagentV1Shelf < 3) {
    o.name = "foo";
    o.theme = "foo";
  }
  buildCounterGoogleExampleLibraryagentV1Shelf--;
  return o;
}

checkGoogleExampleLibraryagentV1Shelf(api.GoogleExampleLibraryagentV1Shelf o) {
  buildCounterGoogleExampleLibraryagentV1Shelf++;
  if (buildCounterGoogleExampleLibraryagentV1Shelf < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.theme, unittest.equals('foo'));
  }
  buildCounterGoogleExampleLibraryagentV1Shelf--;
}

main() {
  unittest.group("obj-schema-GoogleExampleLibraryagentV1Book", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleExampleLibraryagentV1Book();
      var od = new api.GoogleExampleLibraryagentV1Book.fromJson(o.toJson());
      checkGoogleExampleLibraryagentV1Book(od);
    });
  });

  unittest.group("obj-schema-GoogleExampleLibraryagentV1ListBooksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleExampleLibraryagentV1ListBooksResponse();
      var od = new api.GoogleExampleLibraryagentV1ListBooksResponse.fromJson(
          o.toJson());
      checkGoogleExampleLibraryagentV1ListBooksResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleExampleLibraryagentV1ListShelvesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleExampleLibraryagentV1ListShelvesResponse();
      var od = new api.GoogleExampleLibraryagentV1ListShelvesResponse.fromJson(
          o.toJson());
      checkGoogleExampleLibraryagentV1ListShelvesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleExampleLibraryagentV1Shelf", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleExampleLibraryagentV1Shelf();
      var od = new api.GoogleExampleLibraryagentV1Shelf.fromJson(o.toJson());
      checkGoogleExampleLibraryagentV1Shelf(od);
    });
  });

  unittest.group("resource-ShelvesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ShelvesResourceApi res = new api.LibraryagentApi(mock).shelves;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Shelf());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Shelf(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ShelvesResourceApi res = new api.LibraryagentApi(mock).shelves;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            unittest.equals("v1/shelves"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleExampleLibraryagentV1ListShelvesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1ListShelvesResponse(response);
      })));
    });
  });

  unittest.group("resource-ShelvesBooksResourceApi", () {
    unittest.test("method--borrow", () {
      var mock = new HttpServerMock();
      api.ShelvesBooksResourceApi res =
          new api.LibraryagentApi(mock).shelves.books;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Book());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .borrow(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Book(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ShelvesBooksResourceApi res =
          new api.LibraryagentApi(mock).shelves.books;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Book());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Book(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ShelvesBooksResourceApi res =
          new api.LibraryagentApi(mock).shelves.books;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleExampleLibraryagentV1ListBooksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1ListBooksResponse(response);
      })));
    });

    unittest.test("method--return_", () {
      var mock = new HttpServerMock();
      api.ShelvesBooksResourceApi res =
          new api.LibraryagentApi(mock).shelves.books;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Book());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .return_(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Book(response);
      })));
    });
  });
}
