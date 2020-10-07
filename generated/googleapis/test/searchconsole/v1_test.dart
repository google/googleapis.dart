library googleapis.searchconsole.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/searchconsole/v1.dart' as api;

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

buildUnnamed4587() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4587(core.List<core.String> o) {
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
    o.keys = buildUnnamed4587();
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
    checkUnnamed4587(o.keys);
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

buildUnnamed4588() {
  var o = new core.List<api.ApiDimensionFilter>();
  o.add(buildApiDimensionFilter());
  o.add(buildApiDimensionFilter());
  return o;
}

checkUnnamed4588(core.List<api.ApiDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilter(o[0]);
  checkApiDimensionFilter(o[1]);
}

core.int buildCounterApiDimensionFilterGroup = 0;
buildApiDimensionFilterGroup() {
  var o = new api.ApiDimensionFilterGroup();
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    o.filters = buildUnnamed4588();
    o.groupType = "foo";
  }
  buildCounterApiDimensionFilterGroup--;
  return o;
}

checkApiDimensionFilterGroup(api.ApiDimensionFilterGroup o) {
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    checkUnnamed4588(o.filters);
    unittest.expect(o.groupType, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilterGroup--;
}

core.int buildCounterBlockedResource = 0;
buildBlockedResource() {
  var o = new api.BlockedResource();
  buildCounterBlockedResource++;
  if (buildCounterBlockedResource < 3) {
    o.url = "foo";
  }
  buildCounterBlockedResource--;
  return o;
}

checkBlockedResource(api.BlockedResource o) {
  buildCounterBlockedResource++;
  if (buildCounterBlockedResource < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterBlockedResource--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.data = "foo";
    o.mimeType = "foo";
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterImage--;
}

core.int buildCounterMobileFriendlyIssue = 0;
buildMobileFriendlyIssue() {
  var o = new api.MobileFriendlyIssue();
  buildCounterMobileFriendlyIssue++;
  if (buildCounterMobileFriendlyIssue < 3) {
    o.rule = "foo";
  }
  buildCounterMobileFriendlyIssue--;
  return o;
}

checkMobileFriendlyIssue(api.MobileFriendlyIssue o) {
  buildCounterMobileFriendlyIssue++;
  if (buildCounterMobileFriendlyIssue < 3) {
    unittest.expect(o.rule, unittest.equals('foo'));
  }
  buildCounterMobileFriendlyIssue--;
}

core.int buildCounterResourceIssue = 0;
buildResourceIssue() {
  var o = new api.ResourceIssue();
  buildCounterResourceIssue++;
  if (buildCounterResourceIssue < 3) {
    o.blockedResource = buildBlockedResource();
  }
  buildCounterResourceIssue--;
  return o;
}

checkResourceIssue(api.ResourceIssue o) {
  buildCounterResourceIssue++;
  if (buildCounterResourceIssue < 3) {
    checkBlockedResource(o.blockedResource);
  }
  buildCounterResourceIssue--;
}

core.int buildCounterRunMobileFriendlyTestRequest = 0;
buildRunMobileFriendlyTestRequest() {
  var o = new api.RunMobileFriendlyTestRequest();
  buildCounterRunMobileFriendlyTestRequest++;
  if (buildCounterRunMobileFriendlyTestRequest < 3) {
    o.requestScreenshot = true;
    o.url = "foo";
  }
  buildCounterRunMobileFriendlyTestRequest--;
  return o;
}

checkRunMobileFriendlyTestRequest(api.RunMobileFriendlyTestRequest o) {
  buildCounterRunMobileFriendlyTestRequest++;
  if (buildCounterRunMobileFriendlyTestRequest < 3) {
    unittest.expect(o.requestScreenshot, unittest.isTrue);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterRunMobileFriendlyTestRequest--;
}

buildUnnamed4589() {
  var o = new core.List<api.MobileFriendlyIssue>();
  o.add(buildMobileFriendlyIssue());
  o.add(buildMobileFriendlyIssue());
  return o;
}

checkUnnamed4589(core.List<api.MobileFriendlyIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileFriendlyIssue(o[0]);
  checkMobileFriendlyIssue(o[1]);
}

buildUnnamed4590() {
  var o = new core.List<api.ResourceIssue>();
  o.add(buildResourceIssue());
  o.add(buildResourceIssue());
  return o;
}

checkUnnamed4590(core.List<api.ResourceIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceIssue(o[0]);
  checkResourceIssue(o[1]);
}

core.int buildCounterRunMobileFriendlyTestResponse = 0;
buildRunMobileFriendlyTestResponse() {
  var o = new api.RunMobileFriendlyTestResponse();
  buildCounterRunMobileFriendlyTestResponse++;
  if (buildCounterRunMobileFriendlyTestResponse < 3) {
    o.mobileFriendliness = "foo";
    o.mobileFriendlyIssues = buildUnnamed4589();
    o.resourceIssues = buildUnnamed4590();
    o.screenshot = buildImage();
    o.testStatus = buildTestStatus();
  }
  buildCounterRunMobileFriendlyTestResponse--;
  return o;
}

checkRunMobileFriendlyTestResponse(api.RunMobileFriendlyTestResponse o) {
  buildCounterRunMobileFriendlyTestResponse++;
  if (buildCounterRunMobileFriendlyTestResponse < 3) {
    unittest.expect(o.mobileFriendliness, unittest.equals('foo'));
    checkUnnamed4589(o.mobileFriendlyIssues);
    checkUnnamed4590(o.resourceIssues);
    checkImage(o.screenshot);
    checkTestStatus(o.testStatus);
  }
  buildCounterRunMobileFriendlyTestResponse--;
}

buildUnnamed4591() {
  var o = new core.List<api.ApiDimensionFilterGroup>();
  o.add(buildApiDimensionFilterGroup());
  o.add(buildApiDimensionFilterGroup());
  return o;
}

checkUnnamed4591(core.List<api.ApiDimensionFilterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilterGroup(o[0]);
  checkApiDimensionFilterGroup(o[1]);
}

buildUnnamed4592() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4592(core.List<core.String> o) {
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
    o.dimensionFilterGroups = buildUnnamed4591();
    o.dimensions = buildUnnamed4592();
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
    checkUnnamed4591(o.dimensionFilterGroups);
    checkUnnamed4592(o.dimensions);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.rowLimit, unittest.equals(42));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterSearchAnalyticsQueryRequest--;
}

buildUnnamed4593() {
  var o = new core.List<api.ApiDataRow>();
  o.add(buildApiDataRow());
  o.add(buildApiDataRow());
  return o;
}

checkUnnamed4593(core.List<api.ApiDataRow> o) {
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
    o.rows = buildUnnamed4593();
  }
  buildCounterSearchAnalyticsQueryResponse--;
  return o;
}

checkSearchAnalyticsQueryResponse(api.SearchAnalyticsQueryResponse o) {
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    unittest.expect(o.responseAggregationType, unittest.equals('foo'));
    checkUnnamed4593(o.rows);
  }
  buildCounterSearchAnalyticsQueryResponse--;
}

buildUnnamed4594() {
  var o = new core.List<api.WmxSitemap>();
  o.add(buildWmxSitemap());
  o.add(buildWmxSitemap());
  return o;
}

checkUnnamed4594(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0]);
  checkWmxSitemap(o[1]);
}

core.int buildCounterSitemapsListResponse = 0;
buildSitemapsListResponse() {
  var o = new api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed4594();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed4594(o.sitemap);
  }
  buildCounterSitemapsListResponse--;
}

buildUnnamed4595() {
  var o = new core.List<api.WmxSite>();
  o.add(buildWmxSite());
  o.add(buildWmxSite());
  return o;
}

checkUnnamed4595(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0]);
  checkWmxSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
buildSitesListResponse() {
  var o = new api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed4595();
  }
  buildCounterSitesListResponse--;
  return o;
}

checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed4595(o.siteEntry);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterTestStatus = 0;
buildTestStatus() {
  var o = new api.TestStatus();
  buildCounterTestStatus++;
  if (buildCounterTestStatus < 3) {
    o.details = "foo";
    o.status = "foo";
  }
  buildCounterTestStatus--;
  return o;
}

checkTestStatus(api.TestStatus o) {
  buildCounterTestStatus++;
  if (buildCounterTestStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterTestStatus--;
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

buildUnnamed4596() {
  var o = new core.List<api.WmxSitemapContent>();
  o.add(buildWmxSitemapContent());
  o.add(buildWmxSitemapContent());
  return o;
}

checkUnnamed4596(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0]);
  checkWmxSitemapContent(o[1]);
}

core.int buildCounterWmxSitemap = 0;
buildWmxSitemap() {
  var o = new api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed4596();
    o.errors = "foo";
    o.isPending = true;
    o.isSitemapsIndex = true;
    o.lastDownloaded = "foo";
    o.lastSubmitted = "foo";
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
    checkUnnamed4596(o.contents);
    unittest.expect(o.errors, unittest.equals('foo'));
    unittest.expect(o.isPending, unittest.isTrue);
    unittest.expect(o.isSitemapsIndex, unittest.isTrue);
    unittest.expect(o.lastDownloaded, unittest.equals('foo'));
    unittest.expect(o.lastSubmitted, unittest.equals('foo'));
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

  unittest.group("obj-schema-BlockedResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildBlockedResource();
      var od = new api.BlockedResource.fromJson(o.toJson());
      checkBlockedResource(od);
    });
  });

  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group("obj-schema-MobileFriendlyIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileFriendlyIssue();
      var od = new api.MobileFriendlyIssue.fromJson(o.toJson());
      checkMobileFriendlyIssue(od);
    });
  });

  unittest.group("obj-schema-ResourceIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceIssue();
      var od = new api.ResourceIssue.fromJson(o.toJson());
      checkResourceIssue(od);
    });
  });

  unittest.group("obj-schema-RunMobileFriendlyTestRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunMobileFriendlyTestRequest();
      var od = new api.RunMobileFriendlyTestRequest.fromJson(o.toJson());
      checkRunMobileFriendlyTestRequest(od);
    });
  });

  unittest.group("obj-schema-RunMobileFriendlyTestResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRunMobileFriendlyTestResponse();
      var od = new api.RunMobileFriendlyTestResponse.fromJson(o.toJson());
      checkRunMobileFriendlyTestResponse(od);
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

  unittest.group("obj-schema-TestStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestStatus();
      var od = new api.TestStatus.fromJson(o.toJson());
      checkTestStatus(od);
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
          new api.SearchconsoleApi(mock).searchanalytics;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitemapsResourceApi res = new api.SearchconsoleApi(mock).sitemaps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitemapsResourceApi res = new api.SearchconsoleApi(mock).sitemaps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitemapsResourceApi res = new api.SearchconsoleApi(mock).sitemaps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitemapsResourceApi res = new api.SearchconsoleApi(mock).sitemaps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitesResourceApi res = new api.SearchconsoleApi(mock).sites;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitesResourceApi res = new api.SearchconsoleApi(mock).sites;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitesResourceApi res = new api.SearchconsoleApi(mock).sites;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
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
      api.SitesResourceApi res = new api.SearchconsoleApi(mock).sites;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("webmasters/v3/sites"));
        pathOffset += 19;

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

  unittest.group("resource-UrlTestingToolsMobileFriendlyTestResourceApi", () {
    unittest.test("method--run", () {
      var mock = new HttpServerMock();
      api.UrlTestingToolsMobileFriendlyTestResourceApi res =
          new api.SearchconsoleApi(mock).urlTestingTools.mobileFriendlyTest;
      var arg_request = buildRunMobileFriendlyTestRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RunMobileFriendlyTestRequest.fromJson(json);
        checkRunMobileFriendlyTestRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 41),
            unittest.equals("v1/urlTestingTools/mobileFriendlyTest:run"));
        pathOffset += 41;

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
        var resp = convert.json.encode(buildRunMobileFriendlyTestResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunMobileFriendlyTestResponse(response);
      })));
    });
  });
}
