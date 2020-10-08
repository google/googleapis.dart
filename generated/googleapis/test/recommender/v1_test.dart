library googleapis.recommender.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/recommender/v1.dart' as api;

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

core.int buildCounterGoogleCloudRecommenderV1CostProjection = 0;
buildGoogleCloudRecommenderV1CostProjection() {
  var o = new api.GoogleCloudRecommenderV1CostProjection();
  buildCounterGoogleCloudRecommenderV1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1CostProjection < 3) {
    o.cost = buildGoogleTypeMoney();
    o.duration = "foo";
  }
  buildCounterGoogleCloudRecommenderV1CostProjection--;
  return o;
}

checkGoogleCloudRecommenderV1CostProjection(
    api.GoogleCloudRecommenderV1CostProjection o) {
  buildCounterGoogleCloudRecommenderV1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1CostProjection < 3) {
    checkGoogleTypeMoney(o.cost);
    unittest.expect(o.duration, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1CostProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1Impact = 0;
buildGoogleCloudRecommenderV1Impact() {
  var o = new api.GoogleCloudRecommenderV1Impact();
  buildCounterGoogleCloudRecommenderV1Impact++;
  if (buildCounterGoogleCloudRecommenderV1Impact < 3) {
    o.category = "foo";
    o.costProjection = buildGoogleCloudRecommenderV1CostProjection();
  }
  buildCounterGoogleCloudRecommenderV1Impact--;
  return o;
}

checkGoogleCloudRecommenderV1Impact(api.GoogleCloudRecommenderV1Impact o) {
  buildCounterGoogleCloudRecommenderV1Impact++;
  if (buildCounterGoogleCloudRecommenderV1Impact < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1CostProjection(o.costProjection);
  }
  buildCounterGoogleCloudRecommenderV1Impact--;
}

buildUnnamed5279() {
  var o = new core
      .List<api.GoogleCloudRecommenderV1InsightRecommendationReference>();
  o.add(buildGoogleCloudRecommenderV1InsightRecommendationReference());
  o.add(buildGoogleCloudRecommenderV1InsightRecommendationReference());
  return o;
}

checkUnnamed5279(
    core.List<api.GoogleCloudRecommenderV1InsightRecommendationReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1InsightRecommendationReference(o[0]);
  checkGoogleCloudRecommenderV1InsightRecommendationReference(o[1]);
}

buildUnnamed5280() {
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

checkUnnamed5280(core.Map<core.String, core.Object> o) {
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

buildUnnamed5281() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5281(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1Insight = 0;
buildGoogleCloudRecommenderV1Insight() {
  var o = new api.GoogleCloudRecommenderV1Insight();
  buildCounterGoogleCloudRecommenderV1Insight++;
  if (buildCounterGoogleCloudRecommenderV1Insight < 3) {
    o.associatedRecommendations = buildUnnamed5279();
    o.category = "foo";
    o.content = buildUnnamed5280();
    o.description = "foo";
    o.etag = "foo";
    o.insightSubtype = "foo";
    o.lastRefreshTime = "foo";
    o.name = "foo";
    o.observationPeriod = "foo";
    o.stateInfo = buildGoogleCloudRecommenderV1InsightStateInfo();
    o.targetResources = buildUnnamed5281();
  }
  buildCounterGoogleCloudRecommenderV1Insight--;
  return o;
}

checkGoogleCloudRecommenderV1Insight(api.GoogleCloudRecommenderV1Insight o) {
  buildCounterGoogleCloudRecommenderV1Insight++;
  if (buildCounterGoogleCloudRecommenderV1Insight < 3) {
    checkUnnamed5279(o.associatedRecommendations);
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed5280(o.content);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.insightSubtype, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.observationPeriod, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1InsightStateInfo(o.stateInfo);
    checkUnnamed5281(o.targetResources);
  }
  buildCounterGoogleCloudRecommenderV1Insight--;
}

core.int buildCounterGoogleCloudRecommenderV1InsightRecommendationReference = 0;
buildGoogleCloudRecommenderV1InsightRecommendationReference() {
  var o = new api.GoogleCloudRecommenderV1InsightRecommendationReference();
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1InsightRecommendationReference < 3) {
    o.recommendation = "foo";
  }
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference--;
  return o;
}

checkGoogleCloudRecommenderV1InsightRecommendationReference(
    api.GoogleCloudRecommenderV1InsightRecommendationReference o) {
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1InsightRecommendationReference < 3) {
    unittest.expect(o.recommendation, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference--;
}

buildUnnamed5282() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5282(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1InsightStateInfo = 0;
buildGoogleCloudRecommenderV1InsightStateInfo() {
  var o = new api.GoogleCloudRecommenderV1InsightStateInfo();
  buildCounterGoogleCloudRecommenderV1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1InsightStateInfo < 3) {
    o.state = "foo";
    o.stateMetadata = buildUnnamed5282();
  }
  buildCounterGoogleCloudRecommenderV1InsightStateInfo--;
  return o;
}

checkGoogleCloudRecommenderV1InsightStateInfo(
    api.GoogleCloudRecommenderV1InsightStateInfo o) {
  buildCounterGoogleCloudRecommenderV1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1InsightStateInfo < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5282(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1InsightStateInfo--;
}

buildUnnamed5283() {
  var o = new core.List<api.GoogleCloudRecommenderV1Insight>();
  o.add(buildGoogleCloudRecommenderV1Insight());
  o.add(buildGoogleCloudRecommenderV1Insight());
  return o;
}

checkUnnamed5283(core.List<api.GoogleCloudRecommenderV1Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Insight(o[0]);
  checkGoogleCloudRecommenderV1Insight(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1ListInsightsResponse = 0;
buildGoogleCloudRecommenderV1ListInsightsResponse() {
  var o = new api.GoogleCloudRecommenderV1ListInsightsResponse();
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListInsightsResponse < 3) {
    o.insights = buildUnnamed5283();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse--;
  return o;
}

checkGoogleCloudRecommenderV1ListInsightsResponse(
    api.GoogleCloudRecommenderV1ListInsightsResponse o) {
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListInsightsResponse < 3) {
    checkUnnamed5283(o.insights);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse--;
}

buildUnnamed5284() {
  var o = new core.List<api.GoogleCloudRecommenderV1Recommendation>();
  o.add(buildGoogleCloudRecommenderV1Recommendation());
  o.add(buildGoogleCloudRecommenderV1Recommendation());
  return o;
}

checkUnnamed5284(core.List<api.GoogleCloudRecommenderV1Recommendation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Recommendation(o[0]);
  checkGoogleCloudRecommenderV1Recommendation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse = 0;
buildGoogleCloudRecommenderV1ListRecommendationsResponse() {
  var o = new api.GoogleCloudRecommenderV1ListRecommendationsResponse();
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse < 3) {
    o.nextPageToken = "foo";
    o.recommendations = buildUnnamed5284();
  }
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse--;
  return o;
}

checkGoogleCloudRecommenderV1ListRecommendationsResponse(
    api.GoogleCloudRecommenderV1ListRecommendationsResponse o) {
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5284(o.recommendations);
  }
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse--;
}

buildUnnamed5285() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5285(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest = 0;
buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest() {
  var o = new api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest();
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest < 3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5285();
  }
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest--;
  return o;
}

checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
    api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5285(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest--;
}

buildUnnamed5286() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5286(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest =
    0;
buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest() {
  var o = new api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest <
      3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5286();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest--;
  return o;
}

checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5286(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest--;
}

buildUnnamed5287() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5287(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest =
    0;
buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest() {
  var o = new api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest < 3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5287();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest--;
  return o;
}

checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5287(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest--;
}

buildUnnamed5288() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5288(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest = 0;
buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest() {
  var o = new api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest <
      3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5288();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest--;
  return o;
}

checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5288(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest--;
}

buildUnnamed5289() {
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

checkUnnamed5289(core.Map<core.String, core.Object> o) {
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

buildUnnamed5290() {
  var o = new core.Map<core.String, api.GoogleCloudRecommenderV1ValueMatcher>();
  o["x"] = buildGoogleCloudRecommenderV1ValueMatcher();
  o["y"] = buildGoogleCloudRecommenderV1ValueMatcher();
  return o;
}

checkUnnamed5290(
    core.Map<core.String, api.GoogleCloudRecommenderV1ValueMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1ValueMatcher(o["x"]);
  checkGoogleCloudRecommenderV1ValueMatcher(o["y"]);
}

core.int buildCounterGoogleCloudRecommenderV1Operation = 0;
buildGoogleCloudRecommenderV1Operation() {
  var o = new api.GoogleCloudRecommenderV1Operation();
  buildCounterGoogleCloudRecommenderV1Operation++;
  if (buildCounterGoogleCloudRecommenderV1Operation < 3) {
    o.action = "foo";
    o.path = "foo";
    o.pathFilters = buildUnnamed5289();
    o.pathValueMatchers = buildUnnamed5290();
    o.resource = "foo";
    o.resourceType = "foo";
    o.sourcePath = "foo";
    o.sourceResource = "foo";
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.valueMatcher = buildGoogleCloudRecommenderV1ValueMatcher();
  }
  buildCounterGoogleCloudRecommenderV1Operation--;
  return o;
}

checkGoogleCloudRecommenderV1Operation(
    api.GoogleCloudRecommenderV1Operation o) {
  buildCounterGoogleCloudRecommenderV1Operation++;
  if (buildCounterGoogleCloudRecommenderV1Operation < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    checkUnnamed5289(o.pathFilters);
    checkUnnamed5290(o.pathValueMatchers);
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.sourcePath, unittest.equals('foo'));
    unittest.expect(o.sourceResource, unittest.equals('foo'));
    var casted5 = (o.value) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted5["bool"], unittest.equals(true));
    unittest.expect(casted5["string"], unittest.equals('foo'));
    checkGoogleCloudRecommenderV1ValueMatcher(o.valueMatcher);
  }
  buildCounterGoogleCloudRecommenderV1Operation--;
}

buildUnnamed5291() {
  var o = new core.List<api.GoogleCloudRecommenderV1Operation>();
  o.add(buildGoogleCloudRecommenderV1Operation());
  o.add(buildGoogleCloudRecommenderV1Operation());
  return o;
}

checkUnnamed5291(core.List<api.GoogleCloudRecommenderV1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Operation(o[0]);
  checkGoogleCloudRecommenderV1Operation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1OperationGroup = 0;
buildGoogleCloudRecommenderV1OperationGroup() {
  var o = new api.GoogleCloudRecommenderV1OperationGroup();
  buildCounterGoogleCloudRecommenderV1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1OperationGroup < 3) {
    o.operations = buildUnnamed5291();
  }
  buildCounterGoogleCloudRecommenderV1OperationGroup--;
  return o;
}

checkGoogleCloudRecommenderV1OperationGroup(
    api.GoogleCloudRecommenderV1OperationGroup o) {
  buildCounterGoogleCloudRecommenderV1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1OperationGroup < 3) {
    checkUnnamed5291(o.operations);
  }
  buildCounterGoogleCloudRecommenderV1OperationGroup--;
}

buildUnnamed5292() {
  var o = new core.List<api.GoogleCloudRecommenderV1Impact>();
  o.add(buildGoogleCloudRecommenderV1Impact());
  o.add(buildGoogleCloudRecommenderV1Impact());
  return o;
}

checkUnnamed5292(core.List<api.GoogleCloudRecommenderV1Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Impact(o[0]);
  checkGoogleCloudRecommenderV1Impact(o[1]);
}

buildUnnamed5293() {
  var o = new core
      .List<api.GoogleCloudRecommenderV1RecommendationInsightReference>();
  o.add(buildGoogleCloudRecommenderV1RecommendationInsightReference());
  o.add(buildGoogleCloudRecommenderV1RecommendationInsightReference());
  return o;
}

checkUnnamed5293(
    core.List<api.GoogleCloudRecommenderV1RecommendationInsightReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1RecommendationInsightReference(o[0]);
  checkGoogleCloudRecommenderV1RecommendationInsightReference(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1Recommendation = 0;
buildGoogleCloudRecommenderV1Recommendation() {
  var o = new api.GoogleCloudRecommenderV1Recommendation();
  buildCounterGoogleCloudRecommenderV1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1Recommendation < 3) {
    o.additionalImpact = buildUnnamed5292();
    o.associatedInsights = buildUnnamed5293();
    o.content = buildGoogleCloudRecommenderV1RecommendationContent();
    o.description = "foo";
    o.etag = "foo";
    o.lastRefreshTime = "foo";
    o.name = "foo";
    o.primaryImpact = buildGoogleCloudRecommenderV1Impact();
    o.recommenderSubtype = "foo";
    o.stateInfo = buildGoogleCloudRecommenderV1RecommendationStateInfo();
  }
  buildCounterGoogleCloudRecommenderV1Recommendation--;
  return o;
}

checkGoogleCloudRecommenderV1Recommendation(
    api.GoogleCloudRecommenderV1Recommendation o) {
  buildCounterGoogleCloudRecommenderV1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1Recommendation < 3) {
    checkUnnamed5292(o.additionalImpact);
    checkUnnamed5293(o.associatedInsights);
    checkGoogleCloudRecommenderV1RecommendationContent(o.content);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1Impact(o.primaryImpact);
    unittest.expect(o.recommenderSubtype, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1RecommendationStateInfo(o.stateInfo);
  }
  buildCounterGoogleCloudRecommenderV1Recommendation--;
}

buildUnnamed5294() {
  var o = new core.List<api.GoogleCloudRecommenderV1OperationGroup>();
  o.add(buildGoogleCloudRecommenderV1OperationGroup());
  o.add(buildGoogleCloudRecommenderV1OperationGroup());
  return o;
}

checkUnnamed5294(core.List<api.GoogleCloudRecommenderV1OperationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1OperationGroup(o[0]);
  checkGoogleCloudRecommenderV1OperationGroup(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationContent = 0;
buildGoogleCloudRecommenderV1RecommendationContent() {
  var o = new api.GoogleCloudRecommenderV1RecommendationContent();
  buildCounterGoogleCloudRecommenderV1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationContent < 3) {
    o.operationGroups = buildUnnamed5294();
  }
  buildCounterGoogleCloudRecommenderV1RecommendationContent--;
  return o;
}

checkGoogleCloudRecommenderV1RecommendationContent(
    api.GoogleCloudRecommenderV1RecommendationContent o) {
  buildCounterGoogleCloudRecommenderV1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationContent < 3) {
    checkUnnamed5294(o.operationGroups);
  }
  buildCounterGoogleCloudRecommenderV1RecommendationContent--;
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationInsightReference = 0;
buildGoogleCloudRecommenderV1RecommendationInsightReference() {
  var o = new api.GoogleCloudRecommenderV1RecommendationInsightReference();
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationInsightReference < 3) {
    o.insight = "foo";
  }
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference--;
  return o;
}

checkGoogleCloudRecommenderV1RecommendationInsightReference(
    api.GoogleCloudRecommenderV1RecommendationInsightReference o) {
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationInsightReference < 3) {
    unittest.expect(o.insight, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference--;
}

buildUnnamed5295() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5295(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationStateInfo = 0;
buildGoogleCloudRecommenderV1RecommendationStateInfo() {
  var o = new api.GoogleCloudRecommenderV1RecommendationStateInfo();
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationStateInfo < 3) {
    o.state = "foo";
    o.stateMetadata = buildUnnamed5295();
  }
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo--;
  return o;
}

checkGoogleCloudRecommenderV1RecommendationStateInfo(
    api.GoogleCloudRecommenderV1RecommendationStateInfo o) {
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationStateInfo < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5295(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo--;
}

core.int buildCounterGoogleCloudRecommenderV1ValueMatcher = 0;
buildGoogleCloudRecommenderV1ValueMatcher() {
  var o = new api.GoogleCloudRecommenderV1ValueMatcher();
  buildCounterGoogleCloudRecommenderV1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1ValueMatcher < 3) {
    o.matchesPattern = "foo";
  }
  buildCounterGoogleCloudRecommenderV1ValueMatcher--;
  return o;
}

checkGoogleCloudRecommenderV1ValueMatcher(
    api.GoogleCloudRecommenderV1ValueMatcher o) {
  buildCounterGoogleCloudRecommenderV1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1ValueMatcher < 3) {
    unittest.expect(o.matchesPattern, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1ValueMatcher--;
}

core.int buildCounterGoogleTypeMoney = 0;
buildGoogleTypeMoney() {
  var o = new api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

main() {
  unittest.group("obj-schema-GoogleCloudRecommenderV1CostProjection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1CostProjection();
      var od =
          new api.GoogleCloudRecommenderV1CostProjection.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1CostProjection(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1Impact", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1Impact();
      var od = new api.GoogleCloudRecommenderV1Impact.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Impact(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1Insight", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1Insight();
      var od = new api.GoogleCloudRecommenderV1Insight.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Insight(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1InsightRecommendationReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1InsightRecommendationReference();
      var od = new api
              .GoogleCloudRecommenderV1InsightRecommendationReference.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1InsightRecommendationReference(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1InsightStateInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1InsightStateInfo();
      var od =
          new api.GoogleCloudRecommenderV1InsightStateInfo.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1InsightStateInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1ListInsightsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1ListInsightsResponse();
      var od = new api.GoogleCloudRecommenderV1ListInsightsResponse.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1ListInsightsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1ListRecommendationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1ListRecommendationsResponse();
      var od =
          new api.GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1MarkInsightAcceptedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var od =
          new api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1MarkRecommendationClaimedRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var od = new api
              .GoogleCloudRecommenderV1MarkRecommendationClaimedRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1MarkRecommendationFailedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var od = new api
              .GoogleCloudRecommenderV1MarkRecommendationFailedRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1MarkRecommendationSucceededRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var od = new api
              .GoogleCloudRecommenderV1MarkRecommendationSucceededRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1Operation();
      var od = new api.GoogleCloudRecommenderV1Operation.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Operation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1OperationGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1OperationGroup();
      var od =
          new api.GoogleCloudRecommenderV1OperationGroup.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1OperationGroup(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1Recommendation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1Recommendation();
      var od =
          new api.GoogleCloudRecommenderV1Recommendation.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Recommendation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1RecommendationContent",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1RecommendationContent();
      var od = new api.GoogleCloudRecommenderV1RecommendationContent.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1RecommendationContent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1RecommendationInsightReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1RecommendationInsightReference();
      var od = new api
              .GoogleCloudRecommenderV1RecommendationInsightReference.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1RecommendationInsightReference(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1RecommendationStateInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1RecommendationStateInfo();
      var od = new api.GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1RecommendationStateInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1ValueMatcher", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1ValueMatcher();
      var od =
          new api.GoogleCloudRecommenderV1ValueMatcher.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1ValueMatcher(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeMoney", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeMoney();
      var od = new api.GoogleTypeMoney.fromJson(o.toJson());
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group("resource-ProjectsLocationsInsightTypesInsightsResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInsightTypesInsightsResourceApi res =
          new api.RecommenderApi(mock).projects.locations.insightTypes.insights;
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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInsightTypesInsightsResourceApi res =
          new api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListInsightsResponse(response);
      })));
    });

    unittest.test("method--markAccepted", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInsightTypesInsightsResourceApi res =
          new api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(obj);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAccepted(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsRecommendersRecommendationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRecommendersRecommendationsResourceApi res =
          new api.RecommenderApi(mock)
              .projects
              .locations
              .recommenders
              .recommendations;
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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRecommendersRecommendationsResourceApi res =
          new api.RecommenderApi(mock)
              .projects
              .locations
              .recommenders
              .recommendations;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListRecommendationsResponse(response);
      })));
    });

    unittest.test("method--markClaimed", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRecommendersRecommendationsResourceApi res =
          new api.RecommenderApi(mock)
              .projects
              .locations
              .recommenders
              .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1MarkRecommendationClaimedRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markClaimed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(response);
      })));
    });

    unittest.test("method--markFailed", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRecommendersRecommendationsResourceApi res =
          new api.RecommenderApi(mock)
              .projects
              .locations
              .recommenders
              .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1MarkRecommendationFailedRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markFailed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(response);
      })));
    });

    unittest.test("method--markSucceeded", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsRecommendersRecommendationsResourceApi res =
          new api.RecommenderApi(mock)
              .projects
              .locations
              .recommenders
              .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1MarkRecommendationSucceededRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markSucceeded(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(response);
      })));
    });
  });
}
