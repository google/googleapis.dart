library googleapis.pagespeedonline.v4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/pagespeedonline/v4.dart' as api;

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

core.int buildCounterPagespeedApiFormatStringV4ArgsRects = 0;
buildPagespeedApiFormatStringV4ArgsRects() {
  var o = new api.PagespeedApiFormatStringV4ArgsRects();
  buildCounterPagespeedApiFormatStringV4ArgsRects++;
  if (buildCounterPagespeedApiFormatStringV4ArgsRects < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterPagespeedApiFormatStringV4ArgsRects--;
  return o;
}

checkPagespeedApiFormatStringV4ArgsRects(
    api.PagespeedApiFormatStringV4ArgsRects o) {
  buildCounterPagespeedApiFormatStringV4ArgsRects++;
  if (buildCounterPagespeedApiFormatStringV4ArgsRects < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPagespeedApiFormatStringV4ArgsRects--;
}

buildUnnamed2067() {
  var o = new core.List<api.PagespeedApiFormatStringV4ArgsRects>();
  o.add(buildPagespeedApiFormatStringV4ArgsRects());
  o.add(buildPagespeedApiFormatStringV4ArgsRects());
  return o;
}

checkUnnamed2067(core.List<api.PagespeedApiFormatStringV4ArgsRects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiFormatStringV4ArgsRects(o[0]);
  checkPagespeedApiFormatStringV4ArgsRects(o[1]);
}

core.int buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects = 0;
buildPagespeedApiFormatStringV4ArgsSecondaryRects() {
  var o = new api.PagespeedApiFormatStringV4ArgsSecondaryRects();
  buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects++;
  if (buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects--;
  return o;
}

checkPagespeedApiFormatStringV4ArgsSecondaryRects(
    api.PagespeedApiFormatStringV4ArgsSecondaryRects o) {
  buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects++;
  if (buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPagespeedApiFormatStringV4ArgsSecondaryRects--;
}

buildUnnamed2068() {
  var o = new core.List<api.PagespeedApiFormatStringV4ArgsSecondaryRects>();
  o.add(buildPagespeedApiFormatStringV4ArgsSecondaryRects());
  o.add(buildPagespeedApiFormatStringV4ArgsSecondaryRects());
  return o;
}

checkUnnamed2068(
    core.List<api.PagespeedApiFormatStringV4ArgsSecondaryRects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiFormatStringV4ArgsSecondaryRects(o[0]);
  checkPagespeedApiFormatStringV4ArgsSecondaryRects(o[1]);
}

core.int buildCounterPagespeedApiFormatStringV4Args = 0;
buildPagespeedApiFormatStringV4Args() {
  var o = new api.PagespeedApiFormatStringV4Args();
  buildCounterPagespeedApiFormatStringV4Args++;
  if (buildCounterPagespeedApiFormatStringV4Args < 3) {
    o.key = "foo";
    o.rects = buildUnnamed2067();
    o.secondaryRects = buildUnnamed2068();
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterPagespeedApiFormatStringV4Args--;
  return o;
}

checkPagespeedApiFormatStringV4Args(api.PagespeedApiFormatStringV4Args o) {
  buildCounterPagespeedApiFormatStringV4Args++;
  if (buildCounterPagespeedApiFormatStringV4Args < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed2067(o.rects);
    checkUnnamed2068(o.secondaryRects);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPagespeedApiFormatStringV4Args--;
}

buildUnnamed2069() {
  var o = new core.List<api.PagespeedApiFormatStringV4Args>();
  o.add(buildPagespeedApiFormatStringV4Args());
  o.add(buildPagespeedApiFormatStringV4Args());
  return o;
}

checkUnnamed2069(core.List<api.PagespeedApiFormatStringV4Args> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiFormatStringV4Args(o[0]);
  checkPagespeedApiFormatStringV4Args(o[1]);
}

core.int buildCounterPagespeedApiFormatStringV4 = 0;
buildPagespeedApiFormatStringV4() {
  var o = new api.PagespeedApiFormatStringV4();
  buildCounterPagespeedApiFormatStringV4++;
  if (buildCounterPagespeedApiFormatStringV4 < 3) {
    o.args = buildUnnamed2069();
    o.format = "foo";
  }
  buildCounterPagespeedApiFormatStringV4--;
  return o;
}

checkPagespeedApiFormatStringV4(api.PagespeedApiFormatStringV4 o) {
  buildCounterPagespeedApiFormatStringV4++;
  if (buildCounterPagespeedApiFormatStringV4 < 3) {
    checkUnnamed2069(o.args);
    unittest.expect(o.format, unittest.equals('foo'));
  }
  buildCounterPagespeedApiFormatStringV4--;
}

core.int buildCounterPagespeedApiImageV4PageRect = 0;
buildPagespeedApiImageV4PageRect() {
  var o = new api.PagespeedApiImageV4PageRect();
  buildCounterPagespeedApiImageV4PageRect++;
  if (buildCounterPagespeedApiImageV4PageRect < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterPagespeedApiImageV4PageRect--;
  return o;
}

checkPagespeedApiImageV4PageRect(api.PagespeedApiImageV4PageRect o) {
  buildCounterPagespeedApiImageV4PageRect++;
  if (buildCounterPagespeedApiImageV4PageRect < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPagespeedApiImageV4PageRect--;
}

core.int buildCounterPagespeedApiImageV4 = 0;
buildPagespeedApiImageV4() {
  var o = new api.PagespeedApiImageV4();
  buildCounterPagespeedApiImageV4++;
  if (buildCounterPagespeedApiImageV4 < 3) {
    o.data = "foo";
    o.height = 42;
    o.key = "foo";
    o.mimeType = "foo";
    o.pageRect = buildPagespeedApiImageV4PageRect();
    o.width = 42;
  }
  buildCounterPagespeedApiImageV4--;
  return o;
}

checkPagespeedApiImageV4(api.PagespeedApiImageV4 o) {
  buildCounterPagespeedApiImageV4++;
  if (buildCounterPagespeedApiImageV4 < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    checkPagespeedApiImageV4PageRect(o.pageRect);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPagespeedApiImageV4--;
}

buildUnnamed2070() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2070(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2071() {
  var o = new core.List<api.PagespeedApiFormatStringV4>();
  o.add(buildPagespeedApiFormatStringV4());
  o.add(buildPagespeedApiFormatStringV4());
  return o;
}

checkUnnamed2071(core.List<api.PagespeedApiFormatStringV4> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiFormatStringV4(o[0]);
  checkPagespeedApiFormatStringV4(o[1]);
}

core.int
    buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls =
    0;
buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls() {
  var o = new api
      .PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls();
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls <
      3) {
    o.details = buildUnnamed2071();
    o.result = buildPagespeedApiFormatStringV4();
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls--;
  return o;
}

checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls(
    api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls
        o) {
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls <
      3) {
    checkUnnamed2071(o.details);
    checkPagespeedApiFormatStringV4(o.result);
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls--;
}

buildUnnamed2072() {
  var o = new core.List<
      api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls>();
  o.add(
      buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls());
  o.add(
      buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls());
  return o;
}

checkUnnamed2072(
    core.List<
            api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls(
      o[0]);
  checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls(
      o[1]);
}

core.int
    buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks =
    0;
buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks() {
  var o = new api
      .PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks();
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks <
      3) {
    o.header = buildPagespeedApiFormatStringV4();
    o.urls = buildUnnamed2072();
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks--;
  return o;
}

checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks(
    api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks
        o) {
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks <
      3) {
    checkPagespeedApiFormatStringV4(o.header);
    checkUnnamed2072(o.urls);
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks--;
}

buildUnnamed2073() {
  var o = new core.List<
      api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks>();
  o.add(
      buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks());
  o.add(
      buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks());
  return o;
}

checkUnnamed2073(
    core.List<
            api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks(
      o[0]);
  checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks(
      o[1]);
}

core.int
    buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue =
    0;
buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue() {
  var o =
      new api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue();
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue <
      3) {
    o.beta = true;
    o.groups = buildUnnamed2070();
    o.localizedRuleName = "foo";
    o.ruleImpact = 42.0;
    o.summary = buildPagespeedApiFormatStringV4();
    o.urlBlocks = buildUnnamed2073();
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue--;
  return o;
}

checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue(
    api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue o) {
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue <
      3) {
    unittest.expect(o.beta, unittest.isTrue);
    checkUnnamed2070(o.groups);
    unittest.expect(o.localizedRuleName, unittest.equals('foo'));
    unittest.expect(o.ruleImpact, unittest.equals(42.0));
    checkPagespeedApiFormatStringV4(o.summary);
    checkUnnamed2073(o.urlBlocks);
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue--;
}

buildUnnamed2074() {
  var o = new core.Map<core.String,
      api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue>();
  o["x"] =
      buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue();
  o["y"] =
      buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue();
  return o;
}

checkUnnamed2074(
    core.Map<core.String,
            api.PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue(o["x"]);
  checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue(o["y"]);
}

core.int buildCounterPagespeedApiPagespeedResponseV4FormattedResults = 0;
buildPagespeedApiPagespeedResponseV4FormattedResults() {
  var o = new api.PagespeedApiPagespeedResponseV4FormattedResults();
  buildCounterPagespeedApiPagespeedResponseV4FormattedResults++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResults < 3) {
    o.locale = "foo";
    o.ruleResults = buildUnnamed2074();
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResults--;
  return o;
}

checkPagespeedApiPagespeedResponseV4FormattedResults(
    api.PagespeedApiPagespeedResponseV4FormattedResults o) {
  buildCounterPagespeedApiPagespeedResponseV4FormattedResults++;
  if (buildCounterPagespeedApiPagespeedResponseV4FormattedResults < 3) {
    unittest.expect(o.locale, unittest.equals('foo'));
    checkUnnamed2074(o.ruleResults);
  }
  buildCounterPagespeedApiPagespeedResponseV4FormattedResults--;
}

buildUnnamed2075() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2075(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions =
    0;
buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions() {
  var o = new api
      .PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions();
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions++;
  if (buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions <
      3) {
    o.max = 42;
    o.min = 42;
    o.proportion = 42.0;
  }
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions--;
  return o;
}

checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions(
    api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions
        o) {
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions++;
  if (buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions <
      3) {
    unittest.expect(o.max, unittest.equals(42));
    unittest.expect(o.min, unittest.equals(42));
    unittest.expect(o.proportion, unittest.equals(42.0));
  }
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions--;
}

buildUnnamed2076() {
  var o = new core.List<
      api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions>();
  o.add(
      buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions());
  o.add(
      buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions());
  return o;
}

checkUnnamed2076(
    core.List<
            api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions(
      o[0]);
  checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions(
      o[1]);
}

core.int
    buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue =
    0;
buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue() {
  var o =
      new api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue();
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue++;
  if (buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue <
      3) {
    o.category = "foo";
    o.distributions = buildUnnamed2076();
    o.median = 42;
  }
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue--;
  return o;
}

checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue(
    api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue o) {
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue++;
  if (buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue <
      3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed2076(o.distributions);
    unittest.expect(o.median, unittest.equals(42));
  }
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue--;
}

buildUnnamed2077() {
  var o = new core.Map<core.String,
      api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue>();
  o["x"] = buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue();
  o["y"] = buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue();
  return o;
}

checkUnnamed2077(
    core.Map<core.String,
            api.PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue(o["x"]);
  checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue(o["y"]);
}

core.int buildCounterPagespeedApiPagespeedResponseV4LoadingExperience = 0;
buildPagespeedApiPagespeedResponseV4LoadingExperience() {
  var o = new api.PagespeedApiPagespeedResponseV4LoadingExperience();
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperience++;
  if (buildCounterPagespeedApiPagespeedResponseV4LoadingExperience < 3) {
    o.id = "foo";
    o.initialUrl = "foo";
    o.metrics = buildUnnamed2077();
    o.overallCategory = "foo";
  }
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperience--;
  return o;
}

checkPagespeedApiPagespeedResponseV4LoadingExperience(
    api.PagespeedApiPagespeedResponseV4LoadingExperience o) {
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperience++;
  if (buildCounterPagespeedApiPagespeedResponseV4LoadingExperience < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialUrl, unittest.equals('foo'));
    checkUnnamed2077(o.metrics);
    unittest.expect(o.overallCategory, unittest.equals('foo'));
  }
  buildCounterPagespeedApiPagespeedResponseV4LoadingExperience--;
}

buildUnnamed2078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2079() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPagespeedApiPagespeedResponseV4PageStats = 0;
buildPagespeedApiPagespeedResponseV4PageStats() {
  var o = new api.PagespeedApiPagespeedResponseV4PageStats();
  buildCounterPagespeedApiPagespeedResponseV4PageStats++;
  if (buildCounterPagespeedApiPagespeedResponseV4PageStats < 3) {
    o.cms = "foo";
    o.cssResponseBytes = "foo";
    o.flashResponseBytes = "foo";
    o.htmlResponseBytes = "foo";
    o.imageResponseBytes = "foo";
    o.javascriptResponseBytes = "foo";
    o.numRenderBlockingRoundTrips = 42;
    o.numTotalRoundTrips = 42;
    o.numberCssResources = 42;
    o.numberHosts = 42;
    o.numberJsResources = 42;
    o.numberResources = 42;
    o.numberRobotedResources = 42;
    o.numberStaticResources = 42;
    o.numberTransientFetchFailureResources = 42;
    o.otherResponseBytes = "foo";
    o.overTheWireResponseBytes = "foo";
    o.robotedUrls = buildUnnamed2078();
    o.textResponseBytes = "foo";
    o.totalRequestBytes = "foo";
    o.transientFetchFailureUrls = buildUnnamed2079();
  }
  buildCounterPagespeedApiPagespeedResponseV4PageStats--;
  return o;
}

checkPagespeedApiPagespeedResponseV4PageStats(
    api.PagespeedApiPagespeedResponseV4PageStats o) {
  buildCounterPagespeedApiPagespeedResponseV4PageStats++;
  if (buildCounterPagespeedApiPagespeedResponseV4PageStats < 3) {
    unittest.expect(o.cms, unittest.equals('foo'));
    unittest.expect(o.cssResponseBytes, unittest.equals('foo'));
    unittest.expect(o.flashResponseBytes, unittest.equals('foo'));
    unittest.expect(o.htmlResponseBytes, unittest.equals('foo'));
    unittest.expect(o.imageResponseBytes, unittest.equals('foo'));
    unittest.expect(o.javascriptResponseBytes, unittest.equals('foo'));
    unittest.expect(o.numRenderBlockingRoundTrips, unittest.equals(42));
    unittest.expect(o.numTotalRoundTrips, unittest.equals(42));
    unittest.expect(o.numberCssResources, unittest.equals(42));
    unittest.expect(o.numberHosts, unittest.equals(42));
    unittest.expect(o.numberJsResources, unittest.equals(42));
    unittest.expect(o.numberResources, unittest.equals(42));
    unittest.expect(o.numberRobotedResources, unittest.equals(42));
    unittest.expect(o.numberStaticResources, unittest.equals(42));
    unittest.expect(
        o.numberTransientFetchFailureResources, unittest.equals(42));
    unittest.expect(o.otherResponseBytes, unittest.equals('foo'));
    unittest.expect(o.overTheWireResponseBytes, unittest.equals('foo'));
    checkUnnamed2078(o.robotedUrls);
    unittest.expect(o.textResponseBytes, unittest.equals('foo'));
    unittest.expect(o.totalRequestBytes, unittest.equals('foo'));
    checkUnnamed2079(o.transientFetchFailureUrls);
  }
  buildCounterPagespeedApiPagespeedResponseV4PageStats--;
}

core.int buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue = 0;
buildPagespeedApiPagespeedResponseV4RuleGroupsValue() {
  var o = new api.PagespeedApiPagespeedResponseV4RuleGroupsValue();
  buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue++;
  if (buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue < 3) {
    o.pass = true;
    o.score = 42;
  }
  buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue--;
  return o;
}

checkPagespeedApiPagespeedResponseV4RuleGroupsValue(
    api.PagespeedApiPagespeedResponseV4RuleGroupsValue o) {
  buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue++;
  if (buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue < 3) {
    unittest.expect(o.pass, unittest.isTrue);
    unittest.expect(o.score, unittest.equals(42));
  }
  buildCounterPagespeedApiPagespeedResponseV4RuleGroupsValue--;
}

buildUnnamed2080() {
  var o = new core
      .Map<core.String, api.PagespeedApiPagespeedResponseV4RuleGroupsValue>();
  o["x"] = buildPagespeedApiPagespeedResponseV4RuleGroupsValue();
  o["y"] = buildPagespeedApiPagespeedResponseV4RuleGroupsValue();
  return o;
}

checkUnnamed2080(
    core.Map<core.String, api.PagespeedApiPagespeedResponseV4RuleGroupsValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiPagespeedResponseV4RuleGroupsValue(o["x"]);
  checkPagespeedApiPagespeedResponseV4RuleGroupsValue(o["y"]);
}

buildUnnamed2081() {
  var o = new core.List<api.PagespeedApiImageV4>();
  o.add(buildPagespeedApiImageV4());
  o.add(buildPagespeedApiImageV4());
  return o;
}

checkUnnamed2081(core.List<api.PagespeedApiImageV4> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiImageV4(o[0]);
  checkPagespeedApiImageV4(o[1]);
}

core.int buildCounterPagespeedApiPagespeedResponseV4Version = 0;
buildPagespeedApiPagespeedResponseV4Version() {
  var o = new api.PagespeedApiPagespeedResponseV4Version();
  buildCounterPagespeedApiPagespeedResponseV4Version++;
  if (buildCounterPagespeedApiPagespeedResponseV4Version < 3) {
    o.major = 42;
    o.minor = 42;
  }
  buildCounterPagespeedApiPagespeedResponseV4Version--;
  return o;
}

checkPagespeedApiPagespeedResponseV4Version(
    api.PagespeedApiPagespeedResponseV4Version o) {
  buildCounterPagespeedApiPagespeedResponseV4Version++;
  if (buildCounterPagespeedApiPagespeedResponseV4Version < 3) {
    unittest.expect(o.major, unittest.equals(42));
    unittest.expect(o.minor, unittest.equals(42));
  }
  buildCounterPagespeedApiPagespeedResponseV4Version--;
}

core.int buildCounterPagespeedApiPagespeedResponseV4 = 0;
buildPagespeedApiPagespeedResponseV4() {
  var o = new api.PagespeedApiPagespeedResponseV4();
  buildCounterPagespeedApiPagespeedResponseV4++;
  if (buildCounterPagespeedApiPagespeedResponseV4 < 3) {
    o.captchaResult = "foo";
    o.formattedResults = buildPagespeedApiPagespeedResponseV4FormattedResults();
    o.id = "foo";
    o.invalidRules = buildUnnamed2075();
    o.kind = "foo";
    o.loadingExperience =
        buildPagespeedApiPagespeedResponseV4LoadingExperience();
    o.pageStats = buildPagespeedApiPagespeedResponseV4PageStats();
    o.responseCode = 42;
    o.ruleGroups = buildUnnamed2080();
    o.screenshot = buildPagespeedApiImageV4();
    o.snapshots = buildUnnamed2081();
    o.title = "foo";
    o.version = buildPagespeedApiPagespeedResponseV4Version();
  }
  buildCounterPagespeedApiPagespeedResponseV4--;
  return o;
}

checkPagespeedApiPagespeedResponseV4(api.PagespeedApiPagespeedResponseV4 o) {
  buildCounterPagespeedApiPagespeedResponseV4++;
  if (buildCounterPagespeedApiPagespeedResponseV4 < 3) {
    unittest.expect(o.captchaResult, unittest.equals('foo'));
    checkPagespeedApiPagespeedResponseV4FormattedResults(o.formattedResults);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2075(o.invalidRules);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPagespeedApiPagespeedResponseV4LoadingExperience(o.loadingExperience);
    checkPagespeedApiPagespeedResponseV4PageStats(o.pageStats);
    unittest.expect(o.responseCode, unittest.equals(42));
    checkUnnamed2080(o.ruleGroups);
    checkPagespeedApiImageV4(o.screenshot);
    checkUnnamed2081(o.snapshots);
    unittest.expect(o.title, unittest.equals('foo'));
    checkPagespeedApiPagespeedResponseV4Version(o.version);
  }
  buildCounterPagespeedApiPagespeedResponseV4--;
}

buildUnnamed2082() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2082(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-PagespeedApiFormatStringV4ArgsRects", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiFormatStringV4ArgsRects();
      var od = new api.PagespeedApiFormatStringV4ArgsRects.fromJson(o.toJson());
      checkPagespeedApiFormatStringV4ArgsRects(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiFormatStringV4ArgsSecondaryRects", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiFormatStringV4ArgsSecondaryRects();
      var od = new api.PagespeedApiFormatStringV4ArgsSecondaryRects.fromJson(
          o.toJson());
      checkPagespeedApiFormatStringV4ArgsSecondaryRects(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiFormatStringV4Args", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiFormatStringV4Args();
      var od = new api.PagespeedApiFormatStringV4Args.fromJson(o.toJson());
      checkPagespeedApiFormatStringV4Args(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiFormatStringV4", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiFormatStringV4();
      var od = new api.PagespeedApiFormatStringV4.fromJson(o.toJson());
      checkPagespeedApiFormatStringV4(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiImageV4PageRect", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiImageV4PageRect();
      var od = new api.PagespeedApiImageV4PageRect.fromJson(o.toJson());
      checkPagespeedApiImageV4PageRect(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiImageV4", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiImageV4();
      var od = new api.PagespeedApiImageV4.fromJson(o.toJson());
      checkPagespeedApiImageV4(od);
    });
  });

  unittest.group(
      "obj-schema-PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls();
      var od = new api
              .PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocksUrls(
          od);
    });
  });

  unittest.group(
      "obj-schema-PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks();
      var od = new api
              .PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValueUrlBlocks(
          od);
    });
  });

  unittest.group(
      "obj-schema-PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue();
      var od = new api
              .PagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4FormattedResultsRuleResultsValue(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV4FormattedResults",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV4FormattedResults();
      var od = new api.PagespeedApiPagespeedResponseV4FormattedResults.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4FormattedResults(od);
    });
  });

  unittest.group(
      "obj-schema-PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions();
      var od = new api
              .PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValueDistributions(
          od);
    });
  });

  unittest.group(
      "obj-schema-PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue();
      var od = new api
              .PagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4LoadingExperienceMetricsValue(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV4LoadingExperience",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV4LoadingExperience();
      var od =
          new api.PagespeedApiPagespeedResponseV4LoadingExperience.fromJson(
              o.toJson());
      checkPagespeedApiPagespeedResponseV4LoadingExperience(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV4PageStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV4PageStats();
      var od =
          new api.PagespeedApiPagespeedResponseV4PageStats.fromJson(o.toJson());
      checkPagespeedApiPagespeedResponseV4PageStats(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV4RuleGroupsValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV4RuleGroupsValue();
      var od = new api.PagespeedApiPagespeedResponseV4RuleGroupsValue.fromJson(
          o.toJson());
      checkPagespeedApiPagespeedResponseV4RuleGroupsValue(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV4Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV4Version();
      var od =
          new api.PagespeedApiPagespeedResponseV4Version.fromJson(o.toJson());
      checkPagespeedApiPagespeedResponseV4Version(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV4", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV4();
      var od = new api.PagespeedApiPagespeedResponseV4.fromJson(o.toJson());
      checkPagespeedApiPagespeedResponseV4(od);
    });
  });

  unittest.group("resource-PagespeedapiResourceApi", () {
    unittest.test("method--runpagespeed", () {
      var mock = new HttpServerMock();
      api.PagespeedapiResourceApi res =
          new api.PagespeedonlineApi(mock).pagespeedapi;
      var arg_url = "foo";
      var arg_filterThirdPartyResources = true;
      var arg_locale = "foo";
      var arg_rule = buildUnnamed2082();
      var arg_screenshot = true;
      var arg_snapshots = true;
      var arg_strategy = "foo";
      var arg_utmCampaign = "foo";
      var arg_utmSource = "foo";
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
            unittest.equals("pagespeedonline/v4/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("runPagespeed"));
        pathOffset += 12;

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
        unittest.expect(queryMap["url"].first, unittest.equals(arg_url));
        unittest.expect(queryMap["filter_third_party_resources"].first,
            unittest.equals("$arg_filterThirdPartyResources"));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
        unittest.expect(queryMap["rule"], unittest.equals(arg_rule));
        unittest.expect(
            queryMap["screenshot"].first, unittest.equals("$arg_screenshot"));
        unittest.expect(
            queryMap["snapshots"].first, unittest.equals("$arg_snapshots"));
        unittest.expect(
            queryMap["strategy"].first, unittest.equals(arg_strategy));
        unittest.expect(
            queryMap["utm_campaign"].first, unittest.equals(arg_utmCampaign));
        unittest.expect(
            queryMap["utm_source"].first, unittest.equals(arg_utmSource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPagespeedApiPagespeedResponseV4());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runpagespeed(arg_url,
              filterThirdPartyResources: arg_filterThirdPartyResources,
              locale: arg_locale,
              rule: arg_rule,
              screenshot: arg_screenshot,
              snapshots: arg_snapshots,
              strategy: arg_strategy,
              utmCampaign: arg_utmCampaign,
              utmSource: arg_utmSource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPagespeedApiPagespeedResponseV4(response);
      })));
    });
  });
}
