// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
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
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

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

core.List<core.String> buildUnnamed1374() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApiDataRow = 0;
api.ApiDataRow buildApiDataRow() {
  var o = api.ApiDataRow();
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    o.clicks = 42.0;
    o.ctr = 42.0;
    o.impressions = 42.0;
    o.keys = buildUnnamed1374();
    o.position = 42.0;
  }
  buildCounterApiDataRow--;
  return o;
}

void checkApiDataRow(api.ApiDataRow o) {
  buildCounterApiDataRow++;
  if (buildCounterApiDataRow < 3) {
    unittest.expect(o.clicks, unittest.equals(42.0));
    unittest.expect(o.ctr, unittest.equals(42.0));
    unittest.expect(o.impressions, unittest.equals(42.0));
    checkUnnamed1374(o.keys);
    unittest.expect(o.position, unittest.equals(42.0));
  }
  buildCounterApiDataRow--;
}

core.int buildCounterApiDimensionFilter = 0;
api.ApiDimensionFilter buildApiDimensionFilter() {
  var o = api.ApiDimensionFilter();
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    o.dimension = 'foo';
    o.expression = 'foo';
    o.operator = 'foo';
  }
  buildCounterApiDimensionFilter--;
  return o;
}

void checkApiDimensionFilter(api.ApiDimensionFilter o) {
  buildCounterApiDimensionFilter++;
  if (buildCounterApiDimensionFilter < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilter--;
}

core.List<api.ApiDimensionFilter> buildUnnamed1375() {
  var o = <api.ApiDimensionFilter>[];
  o.add(buildApiDimensionFilter());
  o.add(buildApiDimensionFilter());
  return o;
}

void checkUnnamed1375(core.List<api.ApiDimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilter(o[0]);
  checkApiDimensionFilter(o[1]);
}

core.int buildCounterApiDimensionFilterGroup = 0;
api.ApiDimensionFilterGroup buildApiDimensionFilterGroup() {
  var o = api.ApiDimensionFilterGroup();
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    o.filters = buildUnnamed1375();
    o.groupType = 'foo';
  }
  buildCounterApiDimensionFilterGroup--;
  return o;
}

void checkApiDimensionFilterGroup(api.ApiDimensionFilterGroup o) {
  buildCounterApiDimensionFilterGroup++;
  if (buildCounterApiDimensionFilterGroup < 3) {
    checkUnnamed1375(o.filters);
    unittest.expect(o.groupType, unittest.equals('foo'));
  }
  buildCounterApiDimensionFilterGroup--;
}

core.int buildCounterBlockedResource = 0;
api.BlockedResource buildBlockedResource() {
  var o = api.BlockedResource();
  buildCounterBlockedResource++;
  if (buildCounterBlockedResource < 3) {
    o.url = 'foo';
  }
  buildCounterBlockedResource--;
  return o;
}

void checkBlockedResource(api.BlockedResource o) {
  buildCounterBlockedResource++;
  if (buildCounterBlockedResource < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterBlockedResource--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  var o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.data = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterImage--;
}

core.int buildCounterMobileFriendlyIssue = 0;
api.MobileFriendlyIssue buildMobileFriendlyIssue() {
  var o = api.MobileFriendlyIssue();
  buildCounterMobileFriendlyIssue++;
  if (buildCounterMobileFriendlyIssue < 3) {
    o.rule = 'foo';
  }
  buildCounterMobileFriendlyIssue--;
  return o;
}

void checkMobileFriendlyIssue(api.MobileFriendlyIssue o) {
  buildCounterMobileFriendlyIssue++;
  if (buildCounterMobileFriendlyIssue < 3) {
    unittest.expect(o.rule, unittest.equals('foo'));
  }
  buildCounterMobileFriendlyIssue--;
}

core.int buildCounterResourceIssue = 0;
api.ResourceIssue buildResourceIssue() {
  var o = api.ResourceIssue();
  buildCounterResourceIssue++;
  if (buildCounterResourceIssue < 3) {
    o.blockedResource = buildBlockedResource();
  }
  buildCounterResourceIssue--;
  return o;
}

void checkResourceIssue(api.ResourceIssue o) {
  buildCounterResourceIssue++;
  if (buildCounterResourceIssue < 3) {
    checkBlockedResource(o.blockedResource);
  }
  buildCounterResourceIssue--;
}

core.int buildCounterRunMobileFriendlyTestRequest = 0;
api.RunMobileFriendlyTestRequest buildRunMobileFriendlyTestRequest() {
  var o = api.RunMobileFriendlyTestRequest();
  buildCounterRunMobileFriendlyTestRequest++;
  if (buildCounterRunMobileFriendlyTestRequest < 3) {
    o.requestScreenshot = true;
    o.url = 'foo';
  }
  buildCounterRunMobileFriendlyTestRequest--;
  return o;
}

void checkRunMobileFriendlyTestRequest(api.RunMobileFriendlyTestRequest o) {
  buildCounterRunMobileFriendlyTestRequest++;
  if (buildCounterRunMobileFriendlyTestRequest < 3) {
    unittest.expect(o.requestScreenshot, unittest.isTrue);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterRunMobileFriendlyTestRequest--;
}

core.List<api.MobileFriendlyIssue> buildUnnamed1376() {
  var o = <api.MobileFriendlyIssue>[];
  o.add(buildMobileFriendlyIssue());
  o.add(buildMobileFriendlyIssue());
  return o;
}

void checkUnnamed1376(core.List<api.MobileFriendlyIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileFriendlyIssue(o[0]);
  checkMobileFriendlyIssue(o[1]);
}

core.List<api.ResourceIssue> buildUnnamed1377() {
  var o = <api.ResourceIssue>[];
  o.add(buildResourceIssue());
  o.add(buildResourceIssue());
  return o;
}

void checkUnnamed1377(core.List<api.ResourceIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceIssue(o[0]);
  checkResourceIssue(o[1]);
}

core.int buildCounterRunMobileFriendlyTestResponse = 0;
api.RunMobileFriendlyTestResponse buildRunMobileFriendlyTestResponse() {
  var o = api.RunMobileFriendlyTestResponse();
  buildCounterRunMobileFriendlyTestResponse++;
  if (buildCounterRunMobileFriendlyTestResponse < 3) {
    o.mobileFriendliness = 'foo';
    o.mobileFriendlyIssues = buildUnnamed1376();
    o.resourceIssues = buildUnnamed1377();
    o.screenshot = buildImage();
    o.testStatus = buildTestStatus();
  }
  buildCounterRunMobileFriendlyTestResponse--;
  return o;
}

void checkRunMobileFriendlyTestResponse(api.RunMobileFriendlyTestResponse o) {
  buildCounterRunMobileFriendlyTestResponse++;
  if (buildCounterRunMobileFriendlyTestResponse < 3) {
    unittest.expect(o.mobileFriendliness, unittest.equals('foo'));
    checkUnnamed1376(o.mobileFriendlyIssues);
    checkUnnamed1377(o.resourceIssues);
    checkImage(o.screenshot);
    checkTestStatus(o.testStatus);
  }
  buildCounterRunMobileFriendlyTestResponse--;
}

core.List<api.ApiDimensionFilterGroup> buildUnnamed1378() {
  var o = <api.ApiDimensionFilterGroup>[];
  o.add(buildApiDimensionFilterGroup());
  o.add(buildApiDimensionFilterGroup());
  return o;
}

void checkUnnamed1378(core.List<api.ApiDimensionFilterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDimensionFilterGroup(o[0]);
  checkApiDimensionFilterGroup(o[1]);
}

core.List<core.String> buildUnnamed1379() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchAnalyticsQueryRequest = 0;
api.SearchAnalyticsQueryRequest buildSearchAnalyticsQueryRequest() {
  var o = api.SearchAnalyticsQueryRequest();
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    o.aggregationType = 'foo';
    o.dimensionFilterGroups = buildUnnamed1378();
    o.dimensions = buildUnnamed1379();
    o.endDate = 'foo';
    o.rowLimit = 42;
    o.searchType = 'foo';
    o.startDate = 'foo';
    o.startRow = 42;
  }
  buildCounterSearchAnalyticsQueryRequest--;
  return o;
}

void checkSearchAnalyticsQueryRequest(api.SearchAnalyticsQueryRequest o) {
  buildCounterSearchAnalyticsQueryRequest++;
  if (buildCounterSearchAnalyticsQueryRequest < 3) {
    unittest.expect(o.aggregationType, unittest.equals('foo'));
    checkUnnamed1378(o.dimensionFilterGroups);
    checkUnnamed1379(o.dimensions);
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.rowLimit, unittest.equals(42));
    unittest.expect(o.searchType, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.startRow, unittest.equals(42));
  }
  buildCounterSearchAnalyticsQueryRequest--;
}

core.List<api.ApiDataRow> buildUnnamed1380() {
  var o = <api.ApiDataRow>[];
  o.add(buildApiDataRow());
  o.add(buildApiDataRow());
  return o;
}

void checkUnnamed1380(core.List<api.ApiDataRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiDataRow(o[0]);
  checkApiDataRow(o[1]);
}

core.int buildCounterSearchAnalyticsQueryResponse = 0;
api.SearchAnalyticsQueryResponse buildSearchAnalyticsQueryResponse() {
  var o = api.SearchAnalyticsQueryResponse();
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    o.responseAggregationType = 'foo';
    o.rows = buildUnnamed1380();
  }
  buildCounterSearchAnalyticsQueryResponse--;
  return o;
}

void checkSearchAnalyticsQueryResponse(api.SearchAnalyticsQueryResponse o) {
  buildCounterSearchAnalyticsQueryResponse++;
  if (buildCounterSearchAnalyticsQueryResponse < 3) {
    unittest.expect(o.responseAggregationType, unittest.equals('foo'));
    checkUnnamed1380(o.rows);
  }
  buildCounterSearchAnalyticsQueryResponse--;
}

core.List<api.WmxSitemap> buildUnnamed1381() {
  var o = <api.WmxSitemap>[];
  o.add(buildWmxSitemap());
  o.add(buildWmxSitemap());
  return o;
}

void checkUnnamed1381(core.List<api.WmxSitemap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemap(o[0]);
  checkWmxSitemap(o[1]);
}

core.int buildCounterSitemapsListResponse = 0;
api.SitemapsListResponse buildSitemapsListResponse() {
  var o = api.SitemapsListResponse();
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    o.sitemap = buildUnnamed1381();
  }
  buildCounterSitemapsListResponse--;
  return o;
}

void checkSitemapsListResponse(api.SitemapsListResponse o) {
  buildCounterSitemapsListResponse++;
  if (buildCounterSitemapsListResponse < 3) {
    checkUnnamed1381(o.sitemap);
  }
  buildCounterSitemapsListResponse--;
}

core.List<api.WmxSite> buildUnnamed1382() {
  var o = <api.WmxSite>[];
  o.add(buildWmxSite());
  o.add(buildWmxSite());
  return o;
}

void checkUnnamed1382(core.List<api.WmxSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSite(o[0]);
  checkWmxSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
api.SitesListResponse buildSitesListResponse() {
  var o = api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.siteEntry = buildUnnamed1382();
  }
  buildCounterSitesListResponse--;
  return o;
}

void checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    checkUnnamed1382(o.siteEntry);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterTestStatus = 0;
api.TestStatus buildTestStatus() {
  var o = api.TestStatus();
  buildCounterTestStatus++;
  if (buildCounterTestStatus < 3) {
    o.details = 'foo';
    o.status = 'foo';
  }
  buildCounterTestStatus--;
  return o;
}

void checkTestStatus(api.TestStatus o) {
  buildCounterTestStatus++;
  if (buildCounterTestStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterTestStatus--;
}

core.int buildCounterWmxSite = 0;
api.WmxSite buildWmxSite() {
  var o = api.WmxSite();
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    o.permissionLevel = 'foo';
    o.siteUrl = 'foo';
  }
  buildCounterWmxSite--;
  return o;
}

void checkWmxSite(api.WmxSite o) {
  buildCounterWmxSite++;
  if (buildCounterWmxSite < 3) {
    unittest.expect(o.permissionLevel, unittest.equals('foo'));
    unittest.expect(o.siteUrl, unittest.equals('foo'));
  }
  buildCounterWmxSite--;
}

core.List<api.WmxSitemapContent> buildUnnamed1383() {
  var o = <api.WmxSitemapContent>[];
  o.add(buildWmxSitemapContent());
  o.add(buildWmxSitemapContent());
  return o;
}

void checkUnnamed1383(core.List<api.WmxSitemapContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWmxSitemapContent(o[0]);
  checkWmxSitemapContent(o[1]);
}

core.int buildCounterWmxSitemap = 0;
api.WmxSitemap buildWmxSitemap() {
  var o = api.WmxSitemap();
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    o.contents = buildUnnamed1383();
    o.errors = 'foo';
    o.isPending = true;
    o.isSitemapsIndex = true;
    o.lastDownloaded = 'foo';
    o.lastSubmitted = 'foo';
    o.path = 'foo';
    o.type = 'foo';
    o.warnings = 'foo';
  }
  buildCounterWmxSitemap--;
  return o;
}

void checkWmxSitemap(api.WmxSitemap o) {
  buildCounterWmxSitemap++;
  if (buildCounterWmxSitemap < 3) {
    checkUnnamed1383(o.contents);
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
api.WmxSitemapContent buildWmxSitemapContent() {
  var o = api.WmxSitemapContent();
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    o.indexed = 'foo';
    o.submitted = 'foo';
    o.type = 'foo';
  }
  buildCounterWmxSitemapContent--;
  return o;
}

void checkWmxSitemapContent(api.WmxSitemapContent o) {
  buildCounterWmxSitemapContent++;
  if (buildCounterWmxSitemapContent < 3) {
    unittest.expect(o.indexed, unittest.equals('foo'));
    unittest.expect(o.submitted, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterWmxSitemapContent--;
}

void main() {
  unittest.group('obj-schema-ApiDataRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDataRow();
      var od = api.ApiDataRow.fromJson(o.toJson());
      checkApiDataRow(od);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDimensionFilter();
      var od = api.ApiDimensionFilter.fromJson(o.toJson());
      checkApiDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-ApiDimensionFilterGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildApiDimensionFilterGroup();
      var od = api.ApiDimensionFilterGroup.fromJson(o.toJson());
      checkApiDimensionFilterGroup(od);
    });
  });

  unittest.group('obj-schema-BlockedResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildBlockedResource();
      var od = api.BlockedResource.fromJson(o.toJson());
      checkBlockedResource(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () {
      var o = buildImage();
      var od = api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group('obj-schema-MobileFriendlyIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileFriendlyIssue();
      var od = api.MobileFriendlyIssue.fromJson(o.toJson());
      checkMobileFriendlyIssue(od);
    });
  });

  unittest.group('obj-schema-ResourceIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceIssue();
      var od = api.ResourceIssue.fromJson(o.toJson());
      checkResourceIssue(od);
    });
  });

  unittest.group('obj-schema-RunMobileFriendlyTestRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunMobileFriendlyTestRequest();
      var od = api.RunMobileFriendlyTestRequest.fromJson(o.toJson());
      checkRunMobileFriendlyTestRequest(od);
    });
  });

  unittest.group('obj-schema-RunMobileFriendlyTestResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunMobileFriendlyTestResponse();
      var od = api.RunMobileFriendlyTestResponse.fromJson(o.toJson());
      checkRunMobileFriendlyTestResponse(od);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAnalyticsQueryRequest();
      var od = api.SearchAnalyticsQueryRequest.fromJson(o.toJson());
      checkSearchAnalyticsQueryRequest(od);
    });
  });

  unittest.group('obj-schema-SearchAnalyticsQueryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchAnalyticsQueryResponse();
      var od = api.SearchAnalyticsQueryResponse.fromJson(o.toJson());
      checkSearchAnalyticsQueryResponse(od);
    });
  });

  unittest.group('obj-schema-SitemapsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitemapsListResponse();
      var od = api.SitemapsListResponse.fromJson(o.toJson());
      checkSitemapsListResponse(od);
    });
  });

  unittest.group('obj-schema-SitesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitesListResponse();
      var od = api.SitesListResponse.fromJson(o.toJson());
      checkSitesListResponse(od);
    });
  });

  unittest.group('obj-schema-TestStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestStatus();
      var od = api.TestStatus.fromJson(o.toJson());
      checkTestStatus(od);
    });
  });

  unittest.group('obj-schema-WmxSite', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSite();
      var od = api.WmxSite.fromJson(o.toJson());
      checkWmxSite(od);
    });
  });

  unittest.group('obj-schema-WmxSitemap', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSitemap();
      var od = api.WmxSitemap.fromJson(o.toJson());
      checkWmxSitemap(od);
    });
  });

  unittest.group('obj-schema-WmxSitemapContent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWmxSitemapContent();
      var od = api.WmxSitemapContent.fromJson(o.toJson());
      checkWmxSitemapContent(od);
    });
  });

  unittest.group('resource-SearchanalyticsResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.SearchanalyticsResourceApi res =
          api.SearchconsoleApi(mock).searchanalytics;
      var arg_request = buildSearchAnalyticsQueryRequest();
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchAnalyticsQueryRequest.fromJson(json);
        checkSearchAnalyticsQueryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        index = path.indexOf('/searchAnalytics/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/searchAnalytics/query"));
        pathOffset += 22;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchAnalyticsQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchAnalyticsQueryResponse(response);
      })));
    });
  });

  unittest.group('resource-SitemapsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.SearchconsoleApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.SearchconsoleApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWmxSitemap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSitemap(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.SearchconsoleApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_sitemapIndex = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        index = path.indexOf('/sitemaps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/sitemaps"));
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
        unittest.expect(
            queryMap["sitemapIndex"].first, unittest.equals(arg_sitemapIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSitemapsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_siteUrl,
              sitemapIndex: arg_sitemapIndex, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSitemapsListResponse(response);
      })));
    });

    unittest.test('method--submit', () {
      var mock = HttpServerMock();
      api.SitemapsResourceApi res = api.SearchconsoleApi(mock).sitemaps;
      var arg_siteUrl = 'foo';
      var arg_feedpath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        index = path.indexOf('/sitemaps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/sitemaps/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_feedpath'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submit(arg_siteUrl, arg_feedpath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-SitesResourceApi', () {
    unittest.test('method--add', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.SearchconsoleApi(mock).sites;
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.SearchconsoleApi(mock).sites;
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.SearchconsoleApi(mock).sites;
      var arg_siteUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("webmasters/v3/sites/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_siteUrl'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWmxSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_siteUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWmxSite(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.SearchconsoleApi(mock).sites;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("webmasters/v3/sites"));
        pathOffset += 19;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkSitesListResponse(response);
      })));
    });
  });

  unittest.group('resource-UrlTestingToolsMobileFriendlyTestResourceApi', () {
    unittest.test('method--run', () {
      var mock = HttpServerMock();
      api.UrlTestingToolsMobileFriendlyTestResourceApi res =
          api.SearchconsoleApi(mock).urlTestingTools.mobileFriendlyTest;
      var arg_request = buildRunMobileFriendlyTestRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunMobileFriendlyTestRequest.fromJson(json);
        checkRunMobileFriendlyTestRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 41),
            unittest.equals("v1/urlTestingTools/mobileFriendlyTest:run"));
        pathOffset += 41;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRunMobileFriendlyTestResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRunMobileFriendlyTestResponse(response);
      })));
    });
  });
}
