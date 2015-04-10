library googleapis.webmasters.v3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

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

buildUnnamed1402() {
  var o = new core.List<api.WmxSitemap>();
  o.add(buildWmxSitemap());
  o.add(buildWmxSitemap());
  return o;
}

checkUnnamed1402(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0]);
  checkWmxSitemap(o[1]);
}

core.int buildCounterSitemapsListResponse = 0;
buildSitemapsListResponse() {
  var o = new api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed1402();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed1402(o.sitemap);
  }
  buildCounterSitemapsListResponse--;
}

buildUnnamed1403() {
  var o = new core.List<api.WmxSite>();
  o.add(buildWmxSite());
  o.add(buildWmxSite());
  return o;
}

checkUnnamed1403(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0]);
  checkWmxSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
buildSitesListResponse() {
  var o = new api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed1403();
  }
  buildCounterSitesListResponse--;
  return o;
}

checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed1403(o.siteEntry);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterUrlCrawlErrorCount = 0;
buildUrlCrawlErrorCount() {
  var o = new api.UrlCrawlErrorCount();
  buildCounterUrlCrawlErrorCount++;
  if (buildCounterUrlCrawlErrorCount < 3) {
    o.count = "foo";
    o.timestamp = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterUrlCrawlErrorCount--;
  return o;
}

checkUrlCrawlErrorCount(api.UrlCrawlErrorCount o) {
  buildCounterUrlCrawlErrorCount++;
  if (buildCounterUrlCrawlErrorCount < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterUrlCrawlErrorCount--;
}

buildUnnamed1404() {
  var o = new core.List<api.UrlCrawlErrorCount>();
  o.add(buildUrlCrawlErrorCount());
  o.add(buildUrlCrawlErrorCount());
  return o;
}

checkUnnamed1404(core.List<api.UrlCrawlErrorCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlCrawlErrorCount(o[0]);
  checkUrlCrawlErrorCount(o[1]);
}

core.int buildCounterUrlCrawlErrorCountsPerType = 0;
buildUrlCrawlErrorCountsPerType() {
  var o = new api.UrlCrawlErrorCountsPerType();
  buildCounterUrlCrawlErrorCountsPerType++;
  if (buildCounterUrlCrawlErrorCountsPerType < 3) {
    o.category = "foo";
    o.entries = buildUnnamed1404();
    o.platform = "foo";
  }
  buildCounterUrlCrawlErrorCountsPerType--;
  return o;
}

checkUrlCrawlErrorCountsPerType(api.UrlCrawlErrorCountsPerType o) {
  buildCounterUrlCrawlErrorCountsPerType++;
  if (buildCounterUrlCrawlErrorCountsPerType < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed1404(o.entries);
    unittest.expect(o.platform, unittest.equals('foo'));
  }
  buildCounterUrlCrawlErrorCountsPerType--;
}

buildUnnamed1405() {
  var o = new core.List<api.UrlCrawlErrorCountsPerType>();
  o.add(buildUrlCrawlErrorCountsPerType());
  o.add(buildUrlCrawlErrorCountsPerType());
  return o;
}

checkUnnamed1405(core.List<api.UrlCrawlErrorCountsPerType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlCrawlErrorCountsPerType(o[0]);
  checkUrlCrawlErrorCountsPerType(o[1]);
}

core.int buildCounterUrlCrawlErrorsCountsQueryResponse = 0;
buildUrlCrawlErrorsCountsQueryResponse() {
  var o = new api.UrlCrawlErrorsCountsQueryResponse();
  buildCounterUrlCrawlErrorsCountsQueryResponse++;
  if (buildCounterUrlCrawlErrorsCountsQueryResponse < 3) {
    o.countPerTypes = buildUnnamed1405();
  }
  buildCounterUrlCrawlErrorsCountsQueryResponse--;
  return o;
}

checkUrlCrawlErrorsCountsQueryResponse(api.UrlCrawlErrorsCountsQueryResponse o) {
  buildCounterUrlCrawlErrorsCountsQueryResponse++;
  if (buildCounterUrlCrawlErrorsCountsQueryResponse < 3) {
    checkUnnamed1405(o.countPerTypes);
  }
  buildCounterUrlCrawlErrorsCountsQueryResponse--;
}

core.int buildCounterUrlCrawlErrorsSample = 0;
buildUrlCrawlErrorsSample() {
  var o = new api.UrlCrawlErrorsSample();
  buildCounterUrlCrawlErrorsSample++;
  if (buildCounterUrlCrawlErrorsSample < 3) {
    o.firstDetected = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastCrawled = core.DateTime.parse("2002-02-27T14:01:02");
    o.pageUrl = "foo";
    o.responseCode = 42;
    o.urlDetails = buildUrlSampleDetails();
  }
  buildCounterUrlCrawlErrorsSample--;
  return o;
}

checkUrlCrawlErrorsSample(api.UrlCrawlErrorsSample o) {
  buildCounterUrlCrawlErrorsSample++;
  if (buildCounterUrlCrawlErrorsSample < 3) {
    unittest.expect(o.firstDetected, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastCrawled, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.pageUrl, unittest.equals('foo'));
    unittest.expect(o.responseCode, unittest.equals(42));
    checkUrlSampleDetails(o.urlDetails);
  }
  buildCounterUrlCrawlErrorsSample--;
}

buildUnnamed1406() {
  var o = new core.List<api.UrlCrawlErrorsSample>();
  o.add(buildUrlCrawlErrorsSample());
  o.add(buildUrlCrawlErrorsSample());
  return o;
}

checkUnnamed1406(core.List<api.UrlCrawlErrorsSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlCrawlErrorsSample(o[0]);
  checkUrlCrawlErrorsSample(o[1]);
}

core.int buildCounterUrlCrawlErrorsSamplesListResponse = 0;
buildUrlCrawlErrorsSamplesListResponse() {
  var o = new api.UrlCrawlErrorsSamplesListResponse();
  buildCounterUrlCrawlErrorsSamplesListResponse++;
  if (buildCounterUrlCrawlErrorsSamplesListResponse < 3) {
    o.urlCrawlErrorSample = buildUnnamed1406();
  }
  buildCounterUrlCrawlErrorsSamplesListResponse--;
  return o;
}

checkUrlCrawlErrorsSamplesListResponse(api.UrlCrawlErrorsSamplesListResponse o) {
  buildCounterUrlCrawlErrorsSamplesListResponse++;
  if (buildCounterUrlCrawlErrorsSamplesListResponse < 3) {
    checkUnnamed1406(o.urlCrawlErrorSample);
  }
  buildCounterUrlCrawlErrorsSamplesListResponse--;
}

buildUnnamed1407() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1408() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1408(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUrlSampleDetails = 0;
buildUrlSampleDetails() {
  var o = new api.UrlSampleDetails();
  buildCounterUrlSampleDetails++;
  if (buildCounterUrlSampleDetails < 3) {
    o.containingSitemaps = buildUnnamed1407();
    o.linkedFromUrls = buildUnnamed1408();
  }
  buildCounterUrlSampleDetails--;
  return o;
}

checkUrlSampleDetails(api.UrlSampleDetails o) {
  buildCounterUrlSampleDetails++;
  if (buildCounterUrlSampleDetails < 3) {
    checkUnnamed1407(o.containingSitemaps);
    checkUnnamed1408(o.linkedFromUrls);
  }
  buildCounterUrlSampleDetails--;
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

buildUnnamed1409() {
  var o = new core.List<api.WmxSitemapContent>();
  o.add(buildWmxSitemapContent());
  o.add(buildWmxSitemapContent());
  return o;
}

checkUnnamed1409(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0]);
  checkWmxSitemapContent(o[1]);
}

core.int buildCounterWmxSitemap = 0;
buildWmxSitemap() {
  var o = new api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed1409();
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
    checkUnnamed1409(o.contents);
    unittest.expect(o.errors, unittest.equals('foo'));
    unittest.expect(o.isPending, unittest.isTrue);
    unittest.expect(o.isSitemapsIndex, unittest.isTrue);
    unittest.expect(o.lastDownloaded, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastSubmitted, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
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


  unittest.group("obj-schema-UrlCrawlErrorCount", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlCrawlErrorCount();
      var od = new api.UrlCrawlErrorCount.fromJson(o.toJson());
      checkUrlCrawlErrorCount(od);
    });
  });


  unittest.group("obj-schema-UrlCrawlErrorCountsPerType", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlCrawlErrorCountsPerType();
      var od = new api.UrlCrawlErrorCountsPerType.fromJson(o.toJson());
      checkUrlCrawlErrorCountsPerType(od);
    });
  });


  unittest.group("obj-schema-UrlCrawlErrorsCountsQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlCrawlErrorsCountsQueryResponse();
      var od = new api.UrlCrawlErrorsCountsQueryResponse.fromJson(o.toJson());
      checkUrlCrawlErrorsCountsQueryResponse(od);
    });
  });


  unittest.group("obj-schema-UrlCrawlErrorsSample", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlCrawlErrorsSample();
      var od = new api.UrlCrawlErrorsSample.fromJson(o.toJson());
      checkUrlCrawlErrorsSample(od);
    });
  });


  unittest.group("obj-schema-UrlCrawlErrorsSamplesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlCrawlErrorsSamplesListResponse();
      var od = new api.UrlCrawlErrorsSamplesListResponse.fromJson(o.toJson());
      checkUrlCrawlErrorsSamplesListResponse(od);
    });
  });


  unittest.group("obj-schema-UrlSampleDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlSampleDetails();
      var od = new api.UrlSampleDetails.fromJson(o.toJson());
      checkUrlSampleDetails(od);
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


  unittest.group("resource-SitemapsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_feedpath = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_feedpath"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_siteUrl, arg_feedpath).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_feedpath = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_feedpath"));

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
        var resp = convert.JSON.encode(buildWmxSitemap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_siteUrl, arg_feedpath).then(unittest.expectAsync(((api.WmxSitemap response) {
        checkWmxSitemap(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_sitemapIndex = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/sitemaps"));
        pathOffset += 9;

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
        unittest.expect(queryMap["sitemapIndex"].first, unittest.equals(arg_sitemapIndex));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSitemapsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_siteUrl, sitemapIndex: arg_sitemapIndex).then(unittest.expectAsync(((api.SitemapsListResponse response) {
        checkSitemapsListResponse(response);
      })));
    });

    unittest.test("method--submit", () {

      var mock = new HttpServerMock();
      api.SitemapsResourceApi res = new api.WebmastersApi(mock).sitemaps;
      var arg_siteUrl = "foo";
      var arg_feedpath = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/sitemaps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_feedpath"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.submit(arg_siteUrl, arg_feedpath).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-SitesResourceApi", () {
    unittest.test("method--add", () {

      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_siteUrl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.add(arg_siteUrl).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_siteUrl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_siteUrl).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      var arg_siteUrl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));

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
        var resp = convert.JSON.encode(buildWmxSite());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_siteUrl).then(unittest.expectAsync(((api.WmxSite response) {
        checkWmxSite(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.WebmastersApi(mock).sites;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("sites"));
        pathOffset += 5;

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
        var resp = convert.JSON.encode(buildSitesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.SitesListResponse response) {
        checkSitesListResponse(response);
      })));
    });

  });


  unittest.group("resource-UrlcrawlerrorscountsResourceApi", () {
    unittest.test("method--query", () {

      var mock = new HttpServerMock();
      api.UrlcrawlerrorscountsResourceApi res = new api.WebmastersApi(mock).urlcrawlerrorscounts;
      var arg_siteUrl = "foo";
      var arg_category = "foo";
      var arg_latestCountsOnly = true;
      var arg_platform = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/urlCrawlErrorsCounts/query", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 27), unittest.equals("/urlCrawlErrorsCounts/query"));
        pathOffset += 27;

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
        unittest.expect(queryMap["category"].first, unittest.equals(arg_category));
        unittest.expect(queryMap["latestCountsOnly"].first, unittest.equals("$arg_latestCountsOnly"));
        unittest.expect(queryMap["platform"].first, unittest.equals(arg_platform));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlCrawlErrorsCountsQueryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.query(arg_siteUrl, category: arg_category, latestCountsOnly: arg_latestCountsOnly, platform: arg_platform).then(unittest.expectAsync(((api.UrlCrawlErrorsCountsQueryResponse response) {
        checkUrlCrawlErrorsCountsQueryResponse(response);
      })));
    });

  });


  unittest.group("resource-UrlcrawlerrorssamplesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.UrlcrawlerrorssamplesResourceApi res = new api.WebmastersApi(mock).urlcrawlerrorssamples;
      var arg_siteUrl = "foo";
      var arg_url = "foo";
      var arg_category = "foo";
      var arg_platform = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/urlCrawlErrorsSamples/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("/urlCrawlErrorsSamples/"));
        pathOffset += 23;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_url"));

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
        unittest.expect(queryMap["category"].first, unittest.equals(arg_category));
        unittest.expect(queryMap["platform"].first, unittest.equals(arg_platform));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlCrawlErrorsSample());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_siteUrl, arg_url, arg_category, arg_platform).then(unittest.expectAsync(((api.UrlCrawlErrorsSample response) {
        checkUrlCrawlErrorsSample(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.UrlcrawlerrorssamplesResourceApi res = new api.WebmastersApi(mock).urlcrawlerrorssamples;
      var arg_siteUrl = "foo";
      var arg_category = "foo";
      var arg_platform = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/urlCrawlErrorsSamples", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("/urlCrawlErrorsSamples"));
        pathOffset += 22;

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
        unittest.expect(queryMap["category"].first, unittest.equals(arg_category));
        unittest.expect(queryMap["platform"].first, unittest.equals(arg_platform));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlCrawlErrorsSamplesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_siteUrl, arg_category, arg_platform).then(unittest.expectAsync(((api.UrlCrawlErrorsSamplesListResponse response) {
        checkUrlCrawlErrorsSamplesListResponse(response);
      })));
    });

    unittest.test("method--markAsFixed", () {

      var mock = new HttpServerMock();
      api.UrlcrawlerrorssamplesResourceApi res = new api.WebmastersApi(mock).urlcrawlerrorssamples;
      var arg_siteUrl = "foo";
      var arg_url = "foo";
      var arg_category = "foo";
      var arg_platform = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("webmasters/v3/"));
        pathOffset += 14;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("sites/"));
        pathOffset += 6;
        index = path.indexOf("/urlCrawlErrorsSamples/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_siteUrl"));
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("/urlCrawlErrorsSamples/"));
        pathOffset += 23;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_url"));

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
        unittest.expect(queryMap["category"].first, unittest.equals(arg_category));
        unittest.expect(queryMap["platform"].first, unittest.equals(arg_platform));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.markAsFixed(arg_siteUrl, arg_url, arg_category, arg_platform).then(unittest.expectAsync((_) {}));
    });

  });


}

