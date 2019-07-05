library googleapis.pagespeedonline.v5.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/pagespeedonline/v5.dart' as api;

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

buildUnnamed1622() {
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

checkUnnamed1622(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLighthouseAuditResultV5 = 0;
buildLighthouseAuditResultV5() {
  var o = new api.LighthouseAuditResultV5();
  buildCounterLighthouseAuditResultV5++;
  if (buildCounterLighthouseAuditResultV5 < 3) {
    o.description = "foo";
    o.details = buildUnnamed1622();
    o.displayValue = "foo";
    o.errorMessage = "foo";
    o.explanation = "foo";
    o.id = "foo";
    o.score = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.scoreDisplayMode = "foo";
    o.title = "foo";
    o.warnings = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterLighthouseAuditResultV5--;
  return o;
}

checkLighthouseAuditResultV5(api.LighthouseAuditResultV5 o) {
  buildCounterLighthouseAuditResultV5++;
  if (buildCounterLighthouseAuditResultV5 < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1622(o.details);
    unittest.expect(o.displayValue, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.explanation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    var casted3 = (o.score) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
    unittest.expect(o.scoreDisplayMode, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    var casted4 = (o.warnings) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted4["bool"], unittest.equals(true));
    unittest.expect(casted4["string"], unittest.equals('foo'));
  }
  buildCounterLighthouseAuditResultV5--;
}

core.int buildCounterLighthouseCategoryV5AuditRefs = 0;
buildLighthouseCategoryV5AuditRefs() {
  var o = new api.LighthouseCategoryV5AuditRefs();
  buildCounterLighthouseCategoryV5AuditRefs++;
  if (buildCounterLighthouseCategoryV5AuditRefs < 3) {
    o.group = "foo";
    o.id = "foo";
    o.weight = 42.0;
  }
  buildCounterLighthouseCategoryV5AuditRefs--;
  return o;
}

checkLighthouseCategoryV5AuditRefs(api.LighthouseCategoryV5AuditRefs o) {
  buildCounterLighthouseCategoryV5AuditRefs++;
  if (buildCounterLighthouseCategoryV5AuditRefs < 3) {
    unittest.expect(o.group, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.weight, unittest.equals(42.0));
  }
  buildCounterLighthouseCategoryV5AuditRefs--;
}

buildUnnamed1623() {
  var o = new core.List<api.LighthouseCategoryV5AuditRefs>();
  o.add(buildLighthouseCategoryV5AuditRefs());
  o.add(buildLighthouseCategoryV5AuditRefs());
  return o;
}

checkUnnamed1623(core.List<api.LighthouseCategoryV5AuditRefs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLighthouseCategoryV5AuditRefs(o[0]);
  checkLighthouseCategoryV5AuditRefs(o[1]);
}

core.int buildCounterLighthouseCategoryV5 = 0;
buildLighthouseCategoryV5() {
  var o = new api.LighthouseCategoryV5();
  buildCounterLighthouseCategoryV5++;
  if (buildCounterLighthouseCategoryV5 < 3) {
    o.auditRefs = buildUnnamed1623();
    o.description = "foo";
    o.id = "foo";
    o.manualDescription = "foo";
    o.score = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.title = "foo";
  }
  buildCounterLighthouseCategoryV5--;
  return o;
}

checkLighthouseCategoryV5(api.LighthouseCategoryV5 o) {
  buildCounterLighthouseCategoryV5++;
  if (buildCounterLighthouseCategoryV5 < 3) {
    checkUnnamed1623(o.auditRefs);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.manualDescription, unittest.equals('foo'));
    var casted5 = (o.score) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted5["bool"], unittest.equals(true));
    unittest.expect(casted5["string"], unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLighthouseCategoryV5--;
}

buildUnnamed1624() {
  var o = new core.Map<core.String, api.LighthouseAuditResultV5>();
  o["x"] = buildLighthouseAuditResultV5();
  o["y"] = buildLighthouseAuditResultV5();
  return o;
}

checkUnnamed1624(core.Map<core.String, api.LighthouseAuditResultV5> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLighthouseAuditResultV5(o["x"]);
  checkLighthouseAuditResultV5(o["y"]);
}

core.int buildCounterLighthouseResultV5Categories = 0;
buildLighthouseResultV5Categories() {
  var o = new api.LighthouseResultV5Categories();
  buildCounterLighthouseResultV5Categories++;
  if (buildCounterLighthouseResultV5Categories < 3) {
    o.accessibility = buildLighthouseCategoryV5();
    o.best_practices = buildLighthouseCategoryV5();
    o.performance = buildLighthouseCategoryV5();
    o.pwa = buildLighthouseCategoryV5();
    o.seo = buildLighthouseCategoryV5();
  }
  buildCounterLighthouseResultV5Categories--;
  return o;
}

checkLighthouseResultV5Categories(api.LighthouseResultV5Categories o) {
  buildCounterLighthouseResultV5Categories++;
  if (buildCounterLighthouseResultV5Categories < 3) {
    checkLighthouseCategoryV5(o.accessibility);
    checkLighthouseCategoryV5(o.best_practices);
    checkLighthouseCategoryV5(o.performance);
    checkLighthouseCategoryV5(o.pwa);
    checkLighthouseCategoryV5(o.seo);
  }
  buildCounterLighthouseResultV5Categories--;
}

core.int buildCounterLighthouseResultV5CategoryGroupsValue = 0;
buildLighthouseResultV5CategoryGroupsValue() {
  var o = new api.LighthouseResultV5CategoryGroupsValue();
  buildCounterLighthouseResultV5CategoryGroupsValue++;
  if (buildCounterLighthouseResultV5CategoryGroupsValue < 3) {
    o.description = "foo";
    o.title = "foo";
  }
  buildCounterLighthouseResultV5CategoryGroupsValue--;
  return o;
}

checkLighthouseResultV5CategoryGroupsValue(
    api.LighthouseResultV5CategoryGroupsValue o) {
  buildCounterLighthouseResultV5CategoryGroupsValue++;
  if (buildCounterLighthouseResultV5CategoryGroupsValue < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5CategoryGroupsValue--;
}

buildUnnamed1625() {
  var o =
      new core.Map<core.String, api.LighthouseResultV5CategoryGroupsValue>();
  o["x"] = buildLighthouseResultV5CategoryGroupsValue();
  o["y"] = buildLighthouseResultV5CategoryGroupsValue();
  return o;
}

checkUnnamed1625(
    core.Map<core.String, api.LighthouseResultV5CategoryGroupsValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLighthouseResultV5CategoryGroupsValue(o["x"]);
  checkLighthouseResultV5CategoryGroupsValue(o["y"]);
}

core.int buildCounterLighthouseResultV5ConfigSettings = 0;
buildLighthouseResultV5ConfigSettings() {
  var o = new api.LighthouseResultV5ConfigSettings();
  buildCounterLighthouseResultV5ConfigSettings++;
  if (buildCounterLighthouseResultV5ConfigSettings < 3) {
    o.emulatedFormFactor = "foo";
    o.locale = "foo";
    o.onlyCategories = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterLighthouseResultV5ConfigSettings--;
  return o;
}

checkLighthouseResultV5ConfigSettings(api.LighthouseResultV5ConfigSettings o) {
  buildCounterLighthouseResultV5ConfigSettings++;
  if (buildCounterLighthouseResultV5ConfigSettings < 3) {
    unittest.expect(o.emulatedFormFactor, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    var casted6 = (o.onlyCategories) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted6["bool"], unittest.equals(true));
    unittest.expect(casted6["string"], unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5ConfigSettings--;
}

core.int buildCounterLighthouseResultV5Environment = 0;
buildLighthouseResultV5Environment() {
  var o = new api.LighthouseResultV5Environment();
  buildCounterLighthouseResultV5Environment++;
  if (buildCounterLighthouseResultV5Environment < 3) {
    o.benchmarkIndex = 42.0;
    o.hostUserAgent = "foo";
    o.networkUserAgent = "foo";
  }
  buildCounterLighthouseResultV5Environment--;
  return o;
}

checkLighthouseResultV5Environment(api.LighthouseResultV5Environment o) {
  buildCounterLighthouseResultV5Environment++;
  if (buildCounterLighthouseResultV5Environment < 3) {
    unittest.expect(o.benchmarkIndex, unittest.equals(42.0));
    unittest.expect(o.hostUserAgent, unittest.equals('foo'));
    unittest.expect(o.networkUserAgent, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5Environment--;
}

core.int buildCounterLighthouseResultV5I18nRendererFormattedStrings = 0;
buildLighthouseResultV5I18nRendererFormattedStrings() {
  var o = new api.LighthouseResultV5I18nRendererFormattedStrings();
  buildCounterLighthouseResultV5I18nRendererFormattedStrings++;
  if (buildCounterLighthouseResultV5I18nRendererFormattedStrings < 3) {
    o.auditGroupExpandTooltip = "foo";
    o.crcInitialNavigation = "foo";
    o.crcLongestDurationLabel = "foo";
    o.errorLabel = "foo";
    o.errorMissingAuditInfo = "foo";
    o.labDataTitle = "foo";
    o.lsPerformanceCategoryDescription = "foo";
    o.manualAuditsGroupTitle = "foo";
    o.notApplicableAuditsGroupTitle = "foo";
    o.opportunityResourceColumnLabel = "foo";
    o.opportunitySavingsColumnLabel = "foo";
    o.passedAuditsGroupTitle = "foo";
    o.scorescaleLabel = "foo";
    o.toplevelWarningsMessage = "foo";
    o.varianceDisclaimer = "foo";
    o.warningHeader = "foo";
  }
  buildCounterLighthouseResultV5I18nRendererFormattedStrings--;
  return o;
}

checkLighthouseResultV5I18nRendererFormattedStrings(
    api.LighthouseResultV5I18nRendererFormattedStrings o) {
  buildCounterLighthouseResultV5I18nRendererFormattedStrings++;
  if (buildCounterLighthouseResultV5I18nRendererFormattedStrings < 3) {
    unittest.expect(o.auditGroupExpandTooltip, unittest.equals('foo'));
    unittest.expect(o.crcInitialNavigation, unittest.equals('foo'));
    unittest.expect(o.crcLongestDurationLabel, unittest.equals('foo'));
    unittest.expect(o.errorLabel, unittest.equals('foo'));
    unittest.expect(o.errorMissingAuditInfo, unittest.equals('foo'));
    unittest.expect(o.labDataTitle, unittest.equals('foo'));
    unittest.expect(o.lsPerformanceCategoryDescription, unittest.equals('foo'));
    unittest.expect(o.manualAuditsGroupTitle, unittest.equals('foo'));
    unittest.expect(o.notApplicableAuditsGroupTitle, unittest.equals('foo'));
    unittest.expect(o.opportunityResourceColumnLabel, unittest.equals('foo'));
    unittest.expect(o.opportunitySavingsColumnLabel, unittest.equals('foo'));
    unittest.expect(o.passedAuditsGroupTitle, unittest.equals('foo'));
    unittest.expect(o.scorescaleLabel, unittest.equals('foo'));
    unittest.expect(o.toplevelWarningsMessage, unittest.equals('foo'));
    unittest.expect(o.varianceDisclaimer, unittest.equals('foo'));
    unittest.expect(o.warningHeader, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5I18nRendererFormattedStrings--;
}

core.int buildCounterLighthouseResultV5I18n = 0;
buildLighthouseResultV5I18n() {
  var o = new api.LighthouseResultV5I18n();
  buildCounterLighthouseResultV5I18n++;
  if (buildCounterLighthouseResultV5I18n < 3) {
    o.rendererFormattedStrings =
        buildLighthouseResultV5I18nRendererFormattedStrings();
  }
  buildCounterLighthouseResultV5I18n--;
  return o;
}

checkLighthouseResultV5I18n(api.LighthouseResultV5I18n o) {
  buildCounterLighthouseResultV5I18n++;
  if (buildCounterLighthouseResultV5I18n < 3) {
    checkLighthouseResultV5I18nRendererFormattedStrings(
        o.rendererFormattedStrings);
  }
  buildCounterLighthouseResultV5I18n--;
}

buildUnnamed1626() {
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

checkUnnamed1626(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterLighthouseResultV5RuntimeError = 0;
buildLighthouseResultV5RuntimeError() {
  var o = new api.LighthouseResultV5RuntimeError();
  buildCounterLighthouseResultV5RuntimeError++;
  if (buildCounterLighthouseResultV5RuntimeError < 3) {
    o.code = "foo";
    o.message = "foo";
  }
  buildCounterLighthouseResultV5RuntimeError--;
  return o;
}

checkLighthouseResultV5RuntimeError(api.LighthouseResultV5RuntimeError o) {
  buildCounterLighthouseResultV5RuntimeError++;
  if (buildCounterLighthouseResultV5RuntimeError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5RuntimeError--;
}

buildUnnamed1627() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1627(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLighthouseResultV5StackPacks = 0;
buildLighthouseResultV5StackPacks() {
  var o = new api.LighthouseResultV5StackPacks();
  buildCounterLighthouseResultV5StackPacks++;
  if (buildCounterLighthouseResultV5StackPacks < 3) {
    o.descriptions = buildUnnamed1627();
    o.iconDataURL = "foo";
    o.id = "foo";
    o.title = "foo";
  }
  buildCounterLighthouseResultV5StackPacks--;
  return o;
}

checkLighthouseResultV5StackPacks(api.LighthouseResultV5StackPacks o) {
  buildCounterLighthouseResultV5StackPacks++;
  if (buildCounterLighthouseResultV5StackPacks < 3) {
    checkUnnamed1627(o.descriptions);
    unittest.expect(o.iconDataURL, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5StackPacks--;
}

buildUnnamed1628() {
  var o = new core.List<api.LighthouseResultV5StackPacks>();
  o.add(buildLighthouseResultV5StackPacks());
  o.add(buildLighthouseResultV5StackPacks());
  return o;
}

checkUnnamed1628(core.List<api.LighthouseResultV5StackPacks> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLighthouseResultV5StackPacks(o[0]);
  checkLighthouseResultV5StackPacks(o[1]);
}

core.int buildCounterLighthouseResultV5Timing = 0;
buildLighthouseResultV5Timing() {
  var o = new api.LighthouseResultV5Timing();
  buildCounterLighthouseResultV5Timing++;
  if (buildCounterLighthouseResultV5Timing < 3) {
    o.total = 42.0;
  }
  buildCounterLighthouseResultV5Timing--;
  return o;
}

checkLighthouseResultV5Timing(api.LighthouseResultV5Timing o) {
  buildCounterLighthouseResultV5Timing++;
  if (buildCounterLighthouseResultV5Timing < 3) {
    unittest.expect(o.total, unittest.equals(42.0));
  }
  buildCounterLighthouseResultV5Timing--;
}

core.int buildCounterLighthouseResultV5 = 0;
buildLighthouseResultV5() {
  var o = new api.LighthouseResultV5();
  buildCounterLighthouseResultV5++;
  if (buildCounterLighthouseResultV5 < 3) {
    o.audits = buildUnnamed1624();
    o.categories = buildLighthouseResultV5Categories();
    o.categoryGroups = buildUnnamed1625();
    o.configSettings = buildLighthouseResultV5ConfigSettings();
    o.environment = buildLighthouseResultV5Environment();
    o.fetchTime = "foo";
    o.finalUrl = "foo";
    o.i18n = buildLighthouseResultV5I18n();
    o.lighthouseVersion = "foo";
    o.requestedUrl = "foo";
    o.runWarnings = buildUnnamed1626();
    o.runtimeError = buildLighthouseResultV5RuntimeError();
    o.stackPacks = buildUnnamed1628();
    o.timing = buildLighthouseResultV5Timing();
    o.userAgent = "foo";
  }
  buildCounterLighthouseResultV5--;
  return o;
}

checkLighthouseResultV5(api.LighthouseResultV5 o) {
  buildCounterLighthouseResultV5++;
  if (buildCounterLighthouseResultV5 < 3) {
    checkUnnamed1624(o.audits);
    checkLighthouseResultV5Categories(o.categories);
    checkUnnamed1625(o.categoryGroups);
    checkLighthouseResultV5ConfigSettings(o.configSettings);
    checkLighthouseResultV5Environment(o.environment);
    unittest.expect(o.fetchTime, unittest.equals('foo'));
    unittest.expect(o.finalUrl, unittest.equals('foo'));
    checkLighthouseResultV5I18n(o.i18n);
    unittest.expect(o.lighthouseVersion, unittest.equals('foo'));
    unittest.expect(o.requestedUrl, unittest.equals('foo'));
    checkUnnamed1626(o.runWarnings);
    checkLighthouseResultV5RuntimeError(o.runtimeError);
    checkUnnamed1628(o.stackPacks);
    checkLighthouseResultV5Timing(o.timing);
    unittest.expect(o.userAgent, unittest.equals('foo'));
  }
  buildCounterLighthouseResultV5--;
}

core.int buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions =
    0;
buildPagespeedApiLoadingExperienceV5MetricsValueDistributions() {
  var o = new api.PagespeedApiLoadingExperienceV5MetricsValueDistributions();
  buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions++;
  if (buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions <
      3) {
    o.max = 42;
    o.min = 42;
    o.proportion = 42.0;
  }
  buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions--;
  return o;
}

checkPagespeedApiLoadingExperienceV5MetricsValueDistributions(
    api.PagespeedApiLoadingExperienceV5MetricsValueDistributions o) {
  buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions++;
  if (buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions <
      3) {
    unittest.expect(o.max, unittest.equals(42));
    unittest.expect(o.min, unittest.equals(42));
    unittest.expect(o.proportion, unittest.equals(42.0));
  }
  buildCounterPagespeedApiLoadingExperienceV5MetricsValueDistributions--;
}

buildUnnamed1629() {
  var o = new core
      .List<api.PagespeedApiLoadingExperienceV5MetricsValueDistributions>();
  o.add(buildPagespeedApiLoadingExperienceV5MetricsValueDistributions());
  o.add(buildPagespeedApiLoadingExperienceV5MetricsValueDistributions());
  return o;
}

checkUnnamed1629(
    core.List<api.PagespeedApiLoadingExperienceV5MetricsValueDistributions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiLoadingExperienceV5MetricsValueDistributions(o[0]);
  checkPagespeedApiLoadingExperienceV5MetricsValueDistributions(o[1]);
}

core.int buildCounterPagespeedApiLoadingExperienceV5MetricsValue = 0;
buildPagespeedApiLoadingExperienceV5MetricsValue() {
  var o = new api.PagespeedApiLoadingExperienceV5MetricsValue();
  buildCounterPagespeedApiLoadingExperienceV5MetricsValue++;
  if (buildCounterPagespeedApiLoadingExperienceV5MetricsValue < 3) {
    o.category = "foo";
    o.distributions = buildUnnamed1629();
    o.percentile = 42;
  }
  buildCounterPagespeedApiLoadingExperienceV5MetricsValue--;
  return o;
}

checkPagespeedApiLoadingExperienceV5MetricsValue(
    api.PagespeedApiLoadingExperienceV5MetricsValue o) {
  buildCounterPagespeedApiLoadingExperienceV5MetricsValue++;
  if (buildCounterPagespeedApiLoadingExperienceV5MetricsValue < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed1629(o.distributions);
    unittest.expect(o.percentile, unittest.equals(42));
  }
  buildCounterPagespeedApiLoadingExperienceV5MetricsValue--;
}

buildUnnamed1630() {
  var o = new core
      .Map<core.String, api.PagespeedApiLoadingExperienceV5MetricsValue>();
  o["x"] = buildPagespeedApiLoadingExperienceV5MetricsValue();
  o["y"] = buildPagespeedApiLoadingExperienceV5MetricsValue();
  return o;
}

checkUnnamed1630(
    core.Map<core.String, api.PagespeedApiLoadingExperienceV5MetricsValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPagespeedApiLoadingExperienceV5MetricsValue(o["x"]);
  checkPagespeedApiLoadingExperienceV5MetricsValue(o["y"]);
}

core.int buildCounterPagespeedApiLoadingExperienceV5 = 0;
buildPagespeedApiLoadingExperienceV5() {
  var o = new api.PagespeedApiLoadingExperienceV5();
  buildCounterPagespeedApiLoadingExperienceV5++;
  if (buildCounterPagespeedApiLoadingExperienceV5 < 3) {
    o.id = "foo";
    o.initialUrl = "foo";
    o.metrics = buildUnnamed1630();
    o.overallCategory = "foo";
  }
  buildCounterPagespeedApiLoadingExperienceV5--;
  return o;
}

checkPagespeedApiLoadingExperienceV5(api.PagespeedApiLoadingExperienceV5 o) {
  buildCounterPagespeedApiLoadingExperienceV5++;
  if (buildCounterPagespeedApiLoadingExperienceV5 < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialUrl, unittest.equals('foo'));
    checkUnnamed1630(o.metrics);
    unittest.expect(o.overallCategory, unittest.equals('foo'));
  }
  buildCounterPagespeedApiLoadingExperienceV5--;
}

core.int buildCounterPagespeedApiPagespeedResponseV5Version = 0;
buildPagespeedApiPagespeedResponseV5Version() {
  var o = new api.PagespeedApiPagespeedResponseV5Version();
  buildCounterPagespeedApiPagespeedResponseV5Version++;
  if (buildCounterPagespeedApiPagespeedResponseV5Version < 3) {
    o.major = 42;
    o.minor = 42;
  }
  buildCounterPagespeedApiPagespeedResponseV5Version--;
  return o;
}

checkPagespeedApiPagespeedResponseV5Version(
    api.PagespeedApiPagespeedResponseV5Version o) {
  buildCounterPagespeedApiPagespeedResponseV5Version++;
  if (buildCounterPagespeedApiPagespeedResponseV5Version < 3) {
    unittest.expect(o.major, unittest.equals(42));
    unittest.expect(o.minor, unittest.equals(42));
  }
  buildCounterPagespeedApiPagespeedResponseV5Version--;
}

core.int buildCounterPagespeedApiPagespeedResponseV5 = 0;
buildPagespeedApiPagespeedResponseV5() {
  var o = new api.PagespeedApiPagespeedResponseV5();
  buildCounterPagespeedApiPagespeedResponseV5++;
  if (buildCounterPagespeedApiPagespeedResponseV5 < 3) {
    o.analysisUTCTimestamp = "foo";
    o.captchaResult = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lighthouseResult = buildLighthouseResultV5();
    o.loadingExperience = buildPagespeedApiLoadingExperienceV5();
    o.originLoadingExperience = buildPagespeedApiLoadingExperienceV5();
    o.version = buildPagespeedApiPagespeedResponseV5Version();
  }
  buildCounterPagespeedApiPagespeedResponseV5--;
  return o;
}

checkPagespeedApiPagespeedResponseV5(api.PagespeedApiPagespeedResponseV5 o) {
  buildCounterPagespeedApiPagespeedResponseV5++;
  if (buildCounterPagespeedApiPagespeedResponseV5 < 3) {
    unittest.expect(o.analysisUTCTimestamp, unittest.equals('foo'));
    unittest.expect(o.captchaResult, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLighthouseResultV5(o.lighthouseResult);
    checkPagespeedApiLoadingExperienceV5(o.loadingExperience);
    checkPagespeedApiLoadingExperienceV5(o.originLoadingExperience);
    checkPagespeedApiPagespeedResponseV5Version(o.version);
  }
  buildCounterPagespeedApiPagespeedResponseV5--;
}

buildUnnamed1631() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1631(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-LighthouseAuditResultV5", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseAuditResultV5();
      var od = new api.LighthouseAuditResultV5.fromJson(o.toJson());
      checkLighthouseAuditResultV5(od);
    });
  });

  unittest.group("obj-schema-LighthouseCategoryV5AuditRefs", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseCategoryV5AuditRefs();
      var od = new api.LighthouseCategoryV5AuditRefs.fromJson(o.toJson());
      checkLighthouseCategoryV5AuditRefs(od);
    });
  });

  unittest.group("obj-schema-LighthouseCategoryV5", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseCategoryV5();
      var od = new api.LighthouseCategoryV5.fromJson(o.toJson());
      checkLighthouseCategoryV5(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5Categories", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5Categories();
      var od = new api.LighthouseResultV5Categories.fromJson(o.toJson());
      checkLighthouseResultV5Categories(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5CategoryGroupsValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5CategoryGroupsValue();
      var od =
          new api.LighthouseResultV5CategoryGroupsValue.fromJson(o.toJson());
      checkLighthouseResultV5CategoryGroupsValue(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5ConfigSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5ConfigSettings();
      var od = new api.LighthouseResultV5ConfigSettings.fromJson(o.toJson());
      checkLighthouseResultV5ConfigSettings(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5Environment();
      var od = new api.LighthouseResultV5Environment.fromJson(o.toJson());
      checkLighthouseResultV5Environment(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5I18nRendererFormattedStrings",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5I18nRendererFormattedStrings();
      var od = new api.LighthouseResultV5I18nRendererFormattedStrings.fromJson(
          o.toJson());
      checkLighthouseResultV5I18nRendererFormattedStrings(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5I18n", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5I18n();
      var od = new api.LighthouseResultV5I18n.fromJson(o.toJson());
      checkLighthouseResultV5I18n(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5RuntimeError", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5RuntimeError();
      var od = new api.LighthouseResultV5RuntimeError.fromJson(o.toJson());
      checkLighthouseResultV5RuntimeError(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5StackPacks", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5StackPacks();
      var od = new api.LighthouseResultV5StackPacks.fromJson(o.toJson());
      checkLighthouseResultV5StackPacks(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5Timing", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5Timing();
      var od = new api.LighthouseResultV5Timing.fromJson(o.toJson());
      checkLighthouseResultV5Timing(od);
    });
  });

  unittest.group("obj-schema-LighthouseResultV5", () {
    unittest.test("to-json--from-json", () {
      var o = buildLighthouseResultV5();
      var od = new api.LighthouseResultV5.fromJson(o.toJson());
      checkLighthouseResultV5(od);
    });
  });

  unittest.group(
      "obj-schema-PagespeedApiLoadingExperienceV5MetricsValueDistributions",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiLoadingExperienceV5MetricsValueDistributions();
      var od = new api
              .PagespeedApiLoadingExperienceV5MetricsValueDistributions.fromJson(
          o.toJson());
      checkPagespeedApiLoadingExperienceV5MetricsValueDistributions(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiLoadingExperienceV5MetricsValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiLoadingExperienceV5MetricsValue();
      var od = new api.PagespeedApiLoadingExperienceV5MetricsValue.fromJson(
          o.toJson());
      checkPagespeedApiLoadingExperienceV5MetricsValue(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiLoadingExperienceV5", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiLoadingExperienceV5();
      var od = new api.PagespeedApiLoadingExperienceV5.fromJson(o.toJson());
      checkPagespeedApiLoadingExperienceV5(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV5Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV5Version();
      var od =
          new api.PagespeedApiPagespeedResponseV5Version.fromJson(o.toJson());
      checkPagespeedApiPagespeedResponseV5Version(od);
    });
  });

  unittest.group("obj-schema-PagespeedApiPagespeedResponseV5", () {
    unittest.test("to-json--from-json", () {
      var o = buildPagespeedApiPagespeedResponseV5();
      var od = new api.PagespeedApiPagespeedResponseV5.fromJson(o.toJson());
      checkPagespeedApiPagespeedResponseV5(od);
    });
  });

  unittest.group("resource-PagespeedapiResourceApi", () {
    unittest.test("method--runpagespeed", () {
      var mock = new HttpServerMock();
      api.PagespeedapiResourceApi res =
          new api.PagespeedonlineApi(mock).pagespeedapi;
      var arg_url = "foo";
      var arg_category = buildUnnamed1631();
      var arg_locale = "foo";
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
            unittest.equals("pagespeedonline/v5/"));
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
        unittest.expect(queryMap["category"], unittest.equals(arg_category));
        unittest.expect(queryMap["locale"].first, unittest.equals(arg_locale));
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
        var resp = convert.json.encode(buildPagespeedApiPagespeedResponseV5());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .runpagespeed(arg_url,
              category: arg_category,
              locale: arg_locale,
              strategy: arg_strategy,
              utmCampaign: arg_utmCampaign,
              utmSource: arg_utmSource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPagespeedApiPagespeedResponseV5(response);
      })));
    });
  });
}
