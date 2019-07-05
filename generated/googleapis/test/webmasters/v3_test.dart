library googleapis.webmasters.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/webmasters/v3.dart' as api;

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

buildUnnamed0() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApiDataRow = 0;
buildApiDataRow() {
  var o = new api.ApiDataRow();
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    o.clicks = 42.0;
    o.ctr = 42.0;
    o.impressions = 42.0;
    o.keys = buildUnnamed0();
    o.position = 42.0;
  }
  buildCounterApiDataRow--;
  return o;
}

checkApiDataRow(api.ApiDataRow o) {
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    unittest.expect(o.clicks, unittest.equals(42.0));
    unittest.expect(o.ctr, unittest.equals(42.0));
    unittest.expect(o.impressions, unittest.equals(42.0));
    checkUnnamed0(o.keys);
    unittest.expect(o.position, unittest.equals(42.0));
  }
  buildCounterApiDataRow--;
}

core.int buildCounterApiDimensionFilter = 0;
buildApiDimensionFilter() {
  var o = new api.ApiDimensionFilter();
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    o.dimension = "foo";
    o.expression = "foo";
    o.operator = "foo";
  }
  buildCounterApiDimensionFilter--;
  return o;
}

checkApiDimensionFilter(api.ApiDimensionFilter o) {
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilter--;
}

buildUnnamed1() {
  var o = new core.List<api.ApiDimensionFilter>();
  o.add(buildApiDimensionFilter());
  o.add(buildApiDimensionFilter());
  return o;
}

checkUnnamed1(core.List<api.ApiDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilter(o[0]);
  checkApiDimensionFilter(o[1]);
}

core.int buildCounterApiDimensionFilterGroup = 0;
buildApiDimensionFilterGroup() {
  var o = new api.ApiDimensionFilterGroup();
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    o.filters = buildUnnamed1();
    o.groupType = "foo";
  }
  buildCounterApiDimensionFilterGroup--;
  return o;
}

checkApiDimensionFilterGroup(api.ApiDimensionFilterGroup o) {
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    checkUnnamed1(o.filters);
    unittest.expect(o.groupType, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilterGroup--;
}

buildUnnamed2() {
  var o = new core.List<api.ApiDimensionFilterGroup>();
  o.add(buildApiDimensionFilterGroup());
  o.add(buildApiDimensionFilterGroup());
  return o;
}

checkUnnamed2(core.List<api.ApiDimensionFilterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilterGroup(o[0]);
  checkApiDimensionFilterGroup(o[1]);
}

buildUnnamed3() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchAnalyticsQueryRequest = 0;
buildSearchAnalyticsQueryRequest() {
  var o = new api.SearchAnalyticsQueryRequest();
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    o.aggregationType = "foo";
    o.dimensionFilterGroups = buildUnnamed2();
    o.dimensions = buildUnnamed3();
    o.endDate = "foo";
    o.rowLimit = 42;
    o.searchType = "foo";
    o.startDate = "foo";
    o.startRow = 42;
  }
  buildCounterSearchAnalyticsQueryRequest--;
  return o;
}

checkSearchAnalyticsQueryRequest(api.SearchAnalyticsQueryRequest o) {
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    unittest.expect(o.aggregationType, unittest.equals('foo'));
    checkUnnamed2(o.dimensionFilterGroups);
    checkUnnamed3(o.dimensions);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.rowLimit, unittest.equals(42));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterSearchAnalyticsQueryRequest--;
}

buildUnnamed4() {
  var o = new core.List<api.ApiDataRow>();
  o.add(buildApiDataRow());
  o.add(buildApiDataRow());
  return o;
}

checkUnnamed4(core.List<api.ApiDataRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDataRow(o[0]);
  checkApiDataRow(o[1]);
}

core.int buildCounterSearchAnalyticsQueryResponse = 0;
buildSearchAnalyticsQueryResponse() {
  var o = new api.SearchAnalyticsQueryResponse();
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    o.responseAggregationType = "foo";
    o.rows = buildUnnamed4();
  }
  buildCounterSearchAnalyticsQueryResponse--;
  return o;
}

checkSearchAnalyticsQueryResponse(api.SearchAnalyticsQueryResponse o) {
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    unittest.expect(o.responseAggregationType, unittest.equals('foo'));
    checkUnnamed4(o.rows);
  }
  buildCounterSearchAnalyticsQueryResponse--;
}

buildUnnamed5() {
  var o = new core.List<api.WmxSitemap>();
  o.add(buildWmxSitemap());
  o.add(buildWmxSitemap());
  return o;
}

checkUnnamed5(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0]);
  checkWmxSitemap(o[1]);
}

core.int buildCounterSitemapsListResponse = 0;
buildSitemapsListResponse() {
  var o = new api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed5();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed5(o.sitemap);
  }
  buildCounterSitemapsListResponse--;
}

buildUnnamed6() {
  var o = new core.List<api.WmxSite>();
  o.add(buildWmxSite());
  o.add(buildWmxSite());
  return o;
}

checkUnnamed6(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0]);
  checkWmxSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
buildSitesListResponse() {
  var o = new api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed6();
  }
  buildCounterSitesListResponse--;
  return o;
}

checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed6(o.siteEntry);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterWmxSite = 0;
buildWmxSite() {
  var o = new api.WmxSite();
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    o.permissionLevel = "foo";
    o.siteUrl = "foo";
  }
  buildCounterWmxSite--;
  return o;
}

checkWmxSite(api.WmxSite o) {
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    unittest.expect(o.permissionLevel, unittest.equals('foo'));
    unittest.expect(o.siteUrl, unittest.equals('foo'));
  }
  buildCounterWmxSite--;
}

buildUnnamed7() {
  var o = new core.List<api.WmxSitemapContent>();
  o.add(buildWmxSitemapContent());
  o.add(buildWmxSitemapContent());
  return o;
}

checkUnnamed7(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0]);
  checkWmxSitemapContent(o[1]);
}

core.int buildCounterWmxSitemap = 0;
buildWmxSitemap() {
  var o = new api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed7();
    o.errors = "foo";
    o.isPending = true;
    o.isSitemapsIndex = true;
    o.lastDownloaded = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastSubmitted = core.DateTime.parse("2002-02-27T14:01:02");
    o.path = "foo";
    o.type = "foo";
    o.warnings = "foo";
  }
  buildCounterWmxSitemap--;
  return o;
}

checkWmxSitemap(api.WmxSitemap o) {
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    checkUnnamed7(o.contents);
    unittest.expect(o.errors, unittest.equals('foo'));
    unittest.expect(o.isPending, unittest.isTrue);
    unittest.expect(o.isSitemapsIndex, unittest.isTrue);
    unittest.expect(o.lastDownloaded,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastSubmitted,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.warnings, unittest.equals('foo'));
  }
  buildCounterWmxSitemap--;
}

core.int buildCounterWmxSitemapContent = 0;
buildWmxSitemapContent() {
  var o = new api.WmxSitemapContent();
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    o.indexed = "foo";
    o.submitted = "foo";
    o.type = "foo";
  }
  buildCounterWmxSitemapContent--;
  return o;
}

checkWmxSitemapContent(api.WmxSitemapContent o) {
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    unittest.expect(o.indexed, unittest.equals('foo'));
    unittest.expect(o.submitted, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterWmxSitemapContent--;
}

main() {
  unittest.group("obj-schema-ApiDataRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiDataRow();
      var od = new api.ApiDataRow.fromJson(o.toJson());
      checkApiDataRow(od);
    });
  });

  unittest.group("obj-schema-ApiDimensionFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiDimensionFilter();
      var od = new api.ApiDimensionFilter.fromJson(o.toJson());
      checkApiDimensionFilter(od);
    });
  });

  unittest.group("obj-schema-ApiDimensionFilterGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiDimensionFilterGroup();
      var od = new api.ApiDimensionFilterGroup.fromJson(o.toJson());
      checkApiDimensionFilterGroup(od);
    });
  });

  unittest.group("obj-schema-SearchAnalyticsQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAnalyticsQueryRequest();
      var od = new api.SearchAnalyticsQueryRequest.fromJson(o.toJson());
      checkSearchAnalyticsQueryRequest(od);
    });
  });

  unittest.group("obj-schema-SearchAnalyticsQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAnalyticsQueryResponse();
      var od = new api.SearchAnalyticsQueryResponse.fromJson(o.toJson());
      checkSearchAnalyticsQueryResponse(od);
    });
  });

  unittest.group("obj-schema-SitemapsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSitemapsListResponse();
      var od = new api.SitemapsListResponse.fromJson(o.toJson());
      checkSitemapsListResponse(od);
    });
  });

  unittest.group("obj-schema-SitesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSitesListResponse();
      var od = new api.SitesListResponse.fromJson(o.toJson());
      checkSitesListResponse(od);
    });
  });

  unittest.group("obj-schema-WmxSite", () {
    unittest.test("to-json--from-json", () {
      var o = buildWmxSite();
      var od = new api.WmxSite.fromJson(o.toJson());
      checkWmxSite(od);
    });
  });

  unittest.group("obj-schema-WmxSitemap", () {
    unittest.test("to-json--from-json", () {
      var o = buildWmxSitemap();
      var od = new api.WmxSitemap.fromJson(o.toJson());
      checkWmxSitemap(od);
    });
  });

  unittest.group("obj-schema-WmxSitemapContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildWmxSitemapContent();
      var od = new api.WmxSitemapContent.fromJson(o.toJson());
      checkWmxSitemapContent(od);
    });
  });

  unittest.group("resource-SearchanalyticsResourceApi", () {
    unittest.test("method--query", () {
      var mock = new HttpServerMock();
      api.SearchanalyticsResourceApi res =
          new api.WebmastersApi(mock).searchanalytics;
      var arg_request = buildSearchAnalyticsQueryRequest();
      var arg_siteUrl = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchAnalyticsQueryRequest.fromJson(json);
        checkSearchAnalyticsQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/searchAnalytics/query", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/searchAnalytics/query"));
        pathOffset += 22;

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
        var resp = convert.json.encode(buildSearchAnalyticsQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAnalyticsQueryResponse(response);
      })));
    });
  });

  unittest.group("resource-SitemapsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_feedpath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_feedpath"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_feedpath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_feedpath"));

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
        var resp = convert.json.encode(buildWmxSitemap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSitemap(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_sitemapIndex = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/sitemaps"));
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
            queryMap["sitemapIndex"].first, unittest.equals(arg_sitemapIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSitemapsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_siteUrl,
              sitemapIndex: arg_sitemapIndex, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSitemapsListResponse(response);
      })));
    });

    unittest.test("method--submit", () {
      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_feedpath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_feedpath"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submit(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-SitesResourceApi", () {
    unittest.test("method--add", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_siteUrl = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_siteUrl = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_siteUrl = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));

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
        var resp = convert.json.encode(buildWmxSite());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSite(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("sites"));
        pathOffset += 5;

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
        var resp = convert.json.encode(buildSitesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkSitesListResponse(response);
      })));
    });
  });
}
