library googleapis_beta.cloudprivatecatalog.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/cloudprivatecatalog/v1beta1.dart' as api;

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

core.int buildCounterGoogleCloudPrivatecatalogV1beta1Catalog = 0;
buildGoogleCloudPrivatecatalogV1beta1Catalog() {
  var o = new api.GoogleCloudPrivatecatalogV1beta1Catalog();
  buildCounterGoogleCloudPrivatecatalogV1beta1Catalog++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1Catalog < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1Catalog--;
  return o;
}

checkGoogleCloudPrivatecatalogV1beta1Catalog(
    api.GoogleCloudPrivatecatalogV1beta1Catalog o) {
  buildCounterGoogleCloudPrivatecatalogV1beta1Catalog++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1Catalog < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1Catalog--;
}

buildUnnamed4824() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4824(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudPrivatecatalogV1beta1Product = 0;
buildGoogleCloudPrivatecatalogV1beta1Product() {
  var o = new api.GoogleCloudPrivatecatalogV1beta1Product();
  buildCounterGoogleCloudPrivatecatalogV1beta1Product++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1Product < 3) {
    o.assetType = "foo";
    o.createTime = "foo";
    o.displayMetadata = buildUnnamed4824();
    o.iconUri = "foo";
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1Product--;
  return o;
}

checkGoogleCloudPrivatecatalogV1beta1Product(
    api.GoogleCloudPrivatecatalogV1beta1Product o) {
  buildCounterGoogleCloudPrivatecatalogV1beta1Product++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1Product < 3) {
    unittest.expect(o.assetType, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4824(o.displayMetadata);
    unittest.expect(o.iconUri, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1Product--;
}

buildUnnamed4825() {
  var o = new core.List<api.GoogleCloudPrivatecatalogV1beta1Catalog>();
  o.add(buildGoogleCloudPrivatecatalogV1beta1Catalog());
  o.add(buildGoogleCloudPrivatecatalogV1beta1Catalog());
  return o;
}

checkUnnamed4825(core.List<api.GoogleCloudPrivatecatalogV1beta1Catalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogV1beta1Catalog(o[0]);
  checkGoogleCloudPrivatecatalogV1beta1Catalog(o[1]);
}

core.int buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse = 0;
buildGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse() {
  var o = new api.GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse();
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse < 3) {
    o.catalogs = buildUnnamed4825();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse(
    api.GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse o) {
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse < 3) {
    checkUnnamed4825(o.catalogs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse--;
}

buildUnnamed4826() {
  var o = new core.List<api.GoogleCloudPrivatecatalogV1beta1Product>();
  o.add(buildGoogleCloudPrivatecatalogV1beta1Product());
  o.add(buildGoogleCloudPrivatecatalogV1beta1Product());
  return o;
}

checkUnnamed4826(core.List<api.GoogleCloudPrivatecatalogV1beta1Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogV1beta1Product(o[0]);
  checkGoogleCloudPrivatecatalogV1beta1Product(o[1]);
}

core.int buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse = 0;
buildGoogleCloudPrivatecatalogV1beta1SearchProductsResponse() {
  var o = new api.GoogleCloudPrivatecatalogV1beta1SearchProductsResponse();
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse < 3) {
    o.nextPageToken = "foo";
    o.products = buildUnnamed4826();
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogV1beta1SearchProductsResponse(
    api.GoogleCloudPrivatecatalogV1beta1SearchProductsResponse o) {
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4826(o.products);
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchProductsResponse--;
}

buildUnnamed4827() {
  var o = new core.List<api.GoogleCloudPrivatecatalogV1beta1Version>();
  o.add(buildGoogleCloudPrivatecatalogV1beta1Version());
  o.add(buildGoogleCloudPrivatecatalogV1beta1Version());
  return o;
}

checkUnnamed4827(core.List<api.GoogleCloudPrivatecatalogV1beta1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPrivatecatalogV1beta1Version(o[0]);
  checkGoogleCloudPrivatecatalogV1beta1Version(o[1]);
}

core.int buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse = 0;
buildGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse() {
  var o = new api.GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse();
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed4827();
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse--;
  return o;
}

checkGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse(
    api.GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse o) {
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4827(o.versions);
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse--;
}

buildUnnamed4828() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4828(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudPrivatecatalogV1beta1Version = 0;
buildGoogleCloudPrivatecatalogV1beta1Version() {
  var o = new api.GoogleCloudPrivatecatalogV1beta1Version();
  buildCounterGoogleCloudPrivatecatalogV1beta1Version++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1Version < 3) {
    o.asset = buildUnnamed4828();
    o.createTime = "foo";
    o.description = "foo";
    o.name = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1Version--;
  return o;
}

checkGoogleCloudPrivatecatalogV1beta1Version(
    api.GoogleCloudPrivatecatalogV1beta1Version o) {
  buildCounterGoogleCloudPrivatecatalogV1beta1Version++;
  if (buildCounterGoogleCloudPrivatecatalogV1beta1Version < 3) {
    checkUnnamed4828(o.asset);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPrivatecatalogV1beta1Version--;
}

main() {
  unittest.group("obj-schema-GoogleCloudPrivatecatalogV1beta1Catalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogV1beta1Catalog();
      var od =
          new api.GoogleCloudPrivatecatalogV1beta1Catalog.fromJson(o.toJson());
      checkGoogleCloudPrivatecatalogV1beta1Catalog(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudPrivatecatalogV1beta1Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogV1beta1Product();
      var od =
          new api.GoogleCloudPrivatecatalogV1beta1Product.fromJson(o.toJson());
      checkGoogleCloudPrivatecatalogV1beta1Product(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogV1beta1SearchProductsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogV1beta1SearchProductsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogV1beta1SearchProductsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogV1beta1SearchProductsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse();
      var od = new api
              .GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse.fromJson(
          o.toJson());
      checkGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudPrivatecatalogV1beta1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPrivatecatalogV1beta1Version();
      var od =
          new api.GoogleCloudPrivatecatalogV1beta1Version.fromJson(o.toJson());
      checkGoogleCloudPrivatecatalogV1beta1Version(od);
    });
  });

  unittest.group("resource-FoldersCatalogsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.FoldersCatalogsResourceApi res =
          new api.CloudprivatecatalogApi(mock).folders.catalogs;
      var arg_resource = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse(response);
      })));
    });
  });

  unittest.group("resource-FoldersProductsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.FoldersProductsResourceApi res =
          new api.CloudprivatecatalogApi(mock).folders.products;
      var arg_resource = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchProductsResponse(response);
      })));
    });
  });

  unittest.group("resource-FoldersVersionsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.FoldersVersionsResourceApi res =
          new api.CloudprivatecatalogApi(mock).folders.versions;
      var arg_resource = "foo";
      var arg_query = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              query: arg_query,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsCatalogsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.OrganizationsCatalogsResourceApi res =
          new api.CloudprivatecatalogApi(mock).organizations.catalogs;
      var arg_resource = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsProductsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.OrganizationsProductsResourceApi res =
          new api.CloudprivatecatalogApi(mock).organizations.products;
      var arg_resource = "foo";
      var arg_query = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              query: arg_query,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchProductsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsVersionsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.OrganizationsVersionsResourceApi res =
          new api.CloudprivatecatalogApi(mock).organizations.versions;
      var arg_resource = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsCatalogsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsCatalogsResourceApi res =
          new api.CloudprivatecatalogApi(mock).projects.catalogs;
      var arg_resource = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsProductsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsProductsResourceApi res =
          new api.CloudprivatecatalogApi(mock).projects.products;
      var arg_resource = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageSize: arg_pageSize,
              query: arg_query,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchProductsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsVersionsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsVersionsResourceApi res =
          new api.CloudprivatecatalogApi(mock).projects.versions;
      var arg_resource = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_resource,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse(response);
      })));
    });
  });
}
