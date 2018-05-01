library googleapis.poly.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/poly/v1.dart' as api;

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

buildUnnamed183() {
  var o = new core.List<api.Format>();
  o.add(buildFormat());
  o.add(buildFormat());
  return o;
}

checkUnnamed183(core.List<api.Format> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFormat(o[0]);
  checkFormat(o[1]);
}

core.int buildCounterAsset = 0;
buildAsset() {
  var o = new api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.authorName = "foo";
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.formats = buildUnnamed183();
    o.isCurated = true;
    o.license = "foo";
    o.metadata = "foo";
    o.name = "foo";
    o.presentationParams = buildPresentationParams();
    o.thumbnail = buildFile();
    o.updateTime = "foo";
    o.visibility = "foo";
  }
  buildCounterAsset--;
  return o;
}

checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    unittest.expect(o.authorName, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed183(o.formats);
    unittest.expect(o.isCurated, unittest.isTrue);
    unittest.expect(o.license, unittest.equals('foo'));
    unittest.expect(o.metadata, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPresentationParams(o.presentationParams);
    checkFile(o.thumbnail);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.contentType = "foo";
    o.relativePath = "foo";
    o.url = "foo";
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.relativePath, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterFile--;
}

buildUnnamed184() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed184(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFormat = 0;
buildFormat() {
  var o = new api.Format();
  buildCounterFormat++;
  if (buildCounterFormat < 3) {
    o.formatComplexity = buildFormatComplexity();
    o.formatType = "foo";
    o.resources = buildUnnamed184();
    o.root = buildFile();
  }
  buildCounterFormat--;
  return o;
}

checkFormat(api.Format o) {
  buildCounterFormat++;
  if (buildCounterFormat < 3) {
    checkFormatComplexity(o.formatComplexity);
    unittest.expect(o.formatType, unittest.equals('foo'));
    checkUnnamed184(o.resources);
    checkFile(o.root);
  }
  buildCounterFormat--;
}

core.int buildCounterFormatComplexity = 0;
buildFormatComplexity() {
  var o = new api.FormatComplexity();
  buildCounterFormatComplexity++;
  if (buildCounterFormatComplexity < 3) {
    o.lodHint = 42;
    o.triangleCount = "foo";
  }
  buildCounterFormatComplexity--;
  return o;
}

checkFormatComplexity(api.FormatComplexity o) {
  buildCounterFormatComplexity++;
  if (buildCounterFormatComplexity < 3) {
    unittest.expect(o.lodHint, unittest.equals(42));
    unittest.expect(o.triangleCount, unittest.equals('foo'));
  }
  buildCounterFormatComplexity--;
}

buildUnnamed185() {
  var o = new core.List<api.Asset>();
  o.add(buildAsset());
  o.add(buildAsset());
  return o;
}

checkUnnamed185(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterListAssetsResponse = 0;
buildListAssetsResponse() {
  var o = new api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.assets = buildUnnamed185();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListAssetsResponse--;
  return o;
}

checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed185(o.assets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListAssetsResponse--;
}

buildUnnamed186() {
  var o = new core.List<api.Asset>();
  o.add(buildAsset());
  o.add(buildAsset());
  return o;
}

checkUnnamed186(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterListLikedAssetsResponse = 0;
buildListLikedAssetsResponse() {
  var o = new api.ListLikedAssetsResponse();
  buildCounterListLikedAssetsResponse++;
  if (buildCounterListLikedAssetsResponse < 3) {
    o.assets = buildUnnamed186();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListLikedAssetsResponse--;
  return o;
}

checkListLikedAssetsResponse(api.ListLikedAssetsResponse o) {
  buildCounterListLikedAssetsResponse++;
  if (buildCounterListLikedAssetsResponse < 3) {
    checkUnnamed186(o.assets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListLikedAssetsResponse--;
}

buildUnnamed187() {
  var o = new core.List<api.UserAsset>();
  o.add(buildUserAsset());
  o.add(buildUserAsset());
  return o;
}

checkUnnamed187(core.List<api.UserAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserAsset(o[0]);
  checkUserAsset(o[1]);
}

core.int buildCounterListUserAssetsResponse = 0;
buildListUserAssetsResponse() {
  var o = new api.ListUserAssetsResponse();
  buildCounterListUserAssetsResponse++;
  if (buildCounterListUserAssetsResponse < 3) {
    o.nextPageToken = "foo";
    o.totalSize = 42;
    o.userAssets = buildUnnamed187();
  }
  buildCounterListUserAssetsResponse--;
  return o;
}

checkListUserAssetsResponse(api.ListUserAssetsResponse o) {
  buildCounterListUserAssetsResponse++;
  if (buildCounterListUserAssetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
    checkUnnamed187(o.userAssets);
  }
  buildCounterListUserAssetsResponse--;
}

core.int buildCounterPresentationParams = 0;
buildPresentationParams() {
  var o = new api.PresentationParams();
  buildCounterPresentationParams++;
  if (buildCounterPresentationParams < 3) {
    o.colorSpace = "foo";
    o.orientingRotation = buildQuaternion();
  }
  buildCounterPresentationParams--;
  return o;
}

checkPresentationParams(api.PresentationParams o) {
  buildCounterPresentationParams++;
  if (buildCounterPresentationParams < 3) {
    unittest.expect(o.colorSpace, unittest.equals('foo'));
    checkQuaternion(o.orientingRotation);
  }
  buildCounterPresentationParams--;
}

core.int buildCounterQuaternion = 0;
buildQuaternion() {
  var o = new api.Quaternion();
  buildCounterQuaternion++;
  if (buildCounterQuaternion < 3) {
    o.w = 42.0;
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterQuaternion--;
  return o;
}

checkQuaternion(api.Quaternion o) {
  buildCounterQuaternion++;
  if (buildCounterQuaternion < 3) {
    unittest.expect(o.w, unittest.equals(42.0));
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterQuaternion--;
}

core.int buildCounterUserAsset = 0;
buildUserAsset() {
  var o = new api.UserAsset();
  buildCounterUserAsset++;
  if (buildCounterUserAsset < 3) {
    o.asset = buildAsset();
  }
  buildCounterUserAsset--;
  return o;
}

checkUserAsset(api.UserAsset o) {
  buildCounterUserAsset++;
  if (buildCounterUserAsset < 3) {
    checkAsset(o.asset);
  }
  buildCounterUserAsset--;
}

main() {
  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = new api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group("obj-schema-Format", () {
    unittest.test("to-json--from-json", () {
      var o = buildFormat();
      var od = new api.Format.fromJson(o.toJson());
      checkFormat(od);
    });
  });

  unittest.group("obj-schema-FormatComplexity", () {
    unittest.test("to-json--from-json", () {
      var o = buildFormatComplexity();
      var od = new api.FormatComplexity.fromJson(o.toJson());
      checkFormatComplexity(od);
    });
  });

  unittest.group("obj-schema-ListAssetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAssetsResponse();
      var od = new api.ListAssetsResponse.fromJson(o.toJson());
      checkListAssetsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLikedAssetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLikedAssetsResponse();
      var od = new api.ListLikedAssetsResponse.fromJson(o.toJson());
      checkListLikedAssetsResponse(od);
    });
  });

  unittest.group("obj-schema-ListUserAssetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListUserAssetsResponse();
      var od = new api.ListUserAssetsResponse.fromJson(o.toJson());
      checkListUserAssetsResponse(od);
    });
  });

  unittest.group("obj-schema-PresentationParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildPresentationParams();
      var od = new api.PresentationParams.fromJson(o.toJson());
      checkPresentationParams(od);
    });
  });

  unittest.group("obj-schema-Quaternion", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuaternion();
      var od = new api.Quaternion.fromJson(o.toJson());
      checkQuaternion(od);
    });
  });

  unittest.group("obj-schema-UserAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserAsset();
      var od = new api.UserAsset.fromJson(o.toJson());
      checkUserAsset(od);
    });
  });

  unittest.group("resource-AssetsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AssetsResourceApi res = new api.PolyApi(mock).assets;
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
        var resp = convert.json.encode(buildAsset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsset(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AssetsResourceApi res = new api.PolyApi(mock).assets;
      var arg_category = "foo";
      var arg_maxComplexity = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_keywords = "foo";
      var arg_orderBy = "foo";
      var arg_format = "foo";
      var arg_curated = true;
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
            unittest.equals("v1/assets"));
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
        unittest.expect(
            queryMap["category"].first, unittest.equals(arg_category));
        unittest.expect(queryMap["maxComplexity"].first,
            unittest.equals(arg_maxComplexity));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["keywords"].first, unittest.equals(arg_keywords));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(
            queryMap["curated"].first, unittest.equals("$arg_curated"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAssetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              category: arg_category,
              maxComplexity: arg_maxComplexity,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              keywords: arg_keywords,
              orderBy: arg_orderBy,
              format: arg_format,
              curated: arg_curated,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAssetsResponse(response);
      })));
    });
  });

  unittest.group("resource-UsersAssetsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersAssetsResourceApi res = new api.PolyApi(mock).users.assets;
      var arg_name = "foo";
      var arg_orderBy = "foo";
      var arg_format = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_visibility = "foo";
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
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListUserAssetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              orderBy: arg_orderBy,
              format: arg_format,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              visibility: arg_visibility,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUserAssetsResponse(response);
      })));
    });
  });

  unittest.group("resource-UsersLikedassetsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersLikedassetsResourceApi res =
          new api.PolyApi(mock).users.likedassets;
      var arg_name = "foo";
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_format = "foo";
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
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLikedAssetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              format: arg_format,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLikedAssetsResponse(response);
      })));
    });
  });
}
