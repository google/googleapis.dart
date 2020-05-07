library googleapis_beta.recommender.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/recommender/v1beta1.dart' as api;

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

core.int buildCounterGoogleCloudRecommenderV1beta1CostProjection = 0;
buildGoogleCloudRecommenderV1beta1CostProjection() {
  var o = new api.GoogleCloudRecommenderV1beta1CostProjection();
  buildCounterGoogleCloudRecommenderV1beta1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1CostProjection < 3) {
    o.cost = buildGoogleTypeMoney();
    o.duration = "foo";
  }
  buildCounterGoogleCloudRecommenderV1beta1CostProjection--;
  return o;
}

checkGoogleCloudRecommenderV1beta1CostProjection(
    api.GoogleCloudRecommenderV1beta1CostProjection o) {
  buildCounterGoogleCloudRecommenderV1beta1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1CostProjection < 3) {
    checkGoogleTypeMoney(o.cost);
    unittest.expect(o.duration, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1CostProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1Impact = 0;
buildGoogleCloudRecommenderV1beta1Impact() {
  var o = new api.GoogleCloudRecommenderV1beta1Impact();
  buildCounterGoogleCloudRecommenderV1beta1Impact++;
  if (buildCounterGoogleCloudRecommenderV1beta1Impact < 3) {
    o.category = "foo";
    o.costProjection = buildGoogleCloudRecommenderV1beta1CostProjection();
  }
  buildCounterGoogleCloudRecommenderV1beta1Impact--;
  return o;
}

checkGoogleCloudRecommenderV1beta1Impact(
    api.GoogleCloudRecommenderV1beta1Impact o) {
  buildCounterGoogleCloudRecommenderV1beta1Impact++;
  if (buildCounterGoogleCloudRecommenderV1beta1Impact < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1CostProjection(o.costProjection);
  }
  buildCounterGoogleCloudRecommenderV1beta1Impact--;
}

buildUnnamed5838() {
  var o = new core
      .List<api.GoogleCloudRecommenderV1beta1InsightRecommendationReference>();
  o.add(buildGoogleCloudRecommenderV1beta1InsightRecommendationReference());
  o.add(buildGoogleCloudRecommenderV1beta1InsightRecommendationReference());
  return o;
}

checkUnnamed5838(
    core.List<api.GoogleCloudRecommenderV1beta1InsightRecommendationReference>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(o[0]);
  checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(o[1]);
}

buildUnnamed5839() {
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

checkUnnamed5839(core.Map<core.String, core.Object> o) {
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

buildUnnamed5840() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5840(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1Insight = 0;
buildGoogleCloudRecommenderV1beta1Insight() {
  var o = new api.GoogleCloudRecommenderV1beta1Insight();
  buildCounterGoogleCloudRecommenderV1beta1Insight++;
  if (buildCounterGoogleCloudRecommenderV1beta1Insight < 3) {
    o.associatedRecommendations = buildUnnamed5838();
    o.category = "foo";
    o.content = buildUnnamed5839();
    o.description = "foo";
    o.etag = "foo";
    o.insightSubtype = "foo";
    o.lastRefreshTime = "foo";
    o.name = "foo";
    o.observationPeriod = "foo";
    o.stateInfo = buildGoogleCloudRecommenderV1beta1InsightStateInfo();
    o.targetResources = buildUnnamed5840();
  }
  buildCounterGoogleCloudRecommenderV1beta1Insight--;
  return o;
}

checkGoogleCloudRecommenderV1beta1Insight(
    api.GoogleCloudRecommenderV1beta1Insight o) {
  buildCounterGoogleCloudRecommenderV1beta1Insight++;
  if (buildCounterGoogleCloudRecommenderV1beta1Insight < 3) {
    checkUnnamed5838(o.associatedRecommendations);
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed5839(o.content);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.insightSubtype, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.observationPeriod, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1InsightStateInfo(o.stateInfo);
    checkUnnamed5840(o.targetResources);
  }
  buildCounterGoogleCloudRecommenderV1beta1Insight--;
}

core.int
    buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference = 0;
buildGoogleCloudRecommenderV1beta1InsightRecommendationReference() {
  var o = new api.GoogleCloudRecommenderV1beta1InsightRecommendationReference();
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference <
      3) {
    o.recommendation = "foo";
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference--;
  return o;
}

checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(
    api.GoogleCloudRecommenderV1beta1InsightRecommendationReference o) {
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference <
      3) {
    unittest.expect(o.recommendation, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference--;
}

buildUnnamed5841() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5841(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo = 0;
buildGoogleCloudRecommenderV1beta1InsightStateInfo() {
  var o = new api.GoogleCloudRecommenderV1beta1InsightStateInfo();
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo < 3) {
    o.state = "foo";
    o.stateMetadata = buildUnnamed5841();
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo--;
  return o;
}

checkGoogleCloudRecommenderV1beta1InsightStateInfo(
    api.GoogleCloudRecommenderV1beta1InsightStateInfo o) {
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5841(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo--;
}

buildUnnamed5842() {
  var o = new core.List<api.GoogleCloudRecommenderV1beta1Insight>();
  o.add(buildGoogleCloudRecommenderV1beta1Insight());
  o.add(buildGoogleCloudRecommenderV1beta1Insight());
  return o;
}

checkUnnamed5842(core.List<api.GoogleCloudRecommenderV1beta1Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Insight(o[0]);
  checkGoogleCloudRecommenderV1beta1Insight(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse = 0;
buildGoogleCloudRecommenderV1beta1ListInsightsResponse() {
  var o = new api.GoogleCloudRecommenderV1beta1ListInsightsResponse();
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse < 3) {
    o.insights = buildUnnamed5842();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse--;
  return o;
}

checkGoogleCloudRecommenderV1beta1ListInsightsResponse(
    api.GoogleCloudRecommenderV1beta1ListInsightsResponse o) {
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse < 3) {
    checkUnnamed5842(o.insights);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse--;
}

buildUnnamed5843() {
  var o = new core.List<api.GoogleCloudRecommenderV1beta1Recommendation>();
  o.add(buildGoogleCloudRecommenderV1beta1Recommendation());
  o.add(buildGoogleCloudRecommenderV1beta1Recommendation());
  return o;
}

checkUnnamed5843(core.List<api.GoogleCloudRecommenderV1beta1Recommendation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Recommendation(o[0]);
  checkGoogleCloudRecommenderV1beta1Recommendation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse =
    0;
buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse() {
  var o = new api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse();
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse <
      3) {
    o.nextPageToken = "foo";
    o.recommendations = buildUnnamed5843();
  }
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse--;
  return o;
}

checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(
    api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse o) {
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse <
      3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5843(o.recommendations);
  }
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse--;
}

buildUnnamed5844() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5844(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest =
    0;
buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest() {
  var o = new api.GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest < 3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5844();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest--;
  return o;
}

checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(
    api.GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest o) {
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5844(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest--;
}

buildUnnamed5845() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5845(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest =
    0;
buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest() {
  var o =
      new api.GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest <
      3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5845();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest--;
  return o;
}

checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(
    api.GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest o) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5845(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest--;
}

buildUnnamed5846() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5846(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest =
    0;
buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest() {
  var o =
      new api.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest <
      3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5846();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest--;
  return o;
}

checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(
    api.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest o) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5846(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest--;
}

buildUnnamed5847() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5847(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest =
    0;
buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest() {
  var o =
      new api.GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest <
      3) {
    o.etag = "foo";
    o.stateMetadata = buildUnnamed5847();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest--;
  return o;
}

checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
    api.GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest o) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5847(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest--;
}

buildUnnamed5848() {
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

checkUnnamed5848(core.Map<core.String, core.Object> o) {
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

buildUnnamed5849() {
  var o = new core
      .Map<core.String, api.GoogleCloudRecommenderV1beta1ValueMatcher>();
  o["x"] = buildGoogleCloudRecommenderV1beta1ValueMatcher();
  o["y"] = buildGoogleCloudRecommenderV1beta1ValueMatcher();
  return o;
}

checkUnnamed5849(
    core.Map<core.String, api.GoogleCloudRecommenderV1beta1ValueMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1ValueMatcher(o["x"]);
  checkGoogleCloudRecommenderV1beta1ValueMatcher(o["y"]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1Operation = 0;
buildGoogleCloudRecommenderV1beta1Operation() {
  var o = new api.GoogleCloudRecommenderV1beta1Operation();
  buildCounterGoogleCloudRecommenderV1beta1Operation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Operation < 3) {
    o.action = "foo";
    o.path = "foo";
    o.pathFilters = buildUnnamed5848();
    o.pathValueMatchers = buildUnnamed5849();
    o.resource = "foo";
    o.resourceType = "foo";
    o.sourcePath = "foo";
    o.sourceResource = "foo";
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.valueMatcher = buildGoogleCloudRecommenderV1beta1ValueMatcher();
  }
  buildCounterGoogleCloudRecommenderV1beta1Operation--;
  return o;
}

checkGoogleCloudRecommenderV1beta1Operation(
    api.GoogleCloudRecommenderV1beta1Operation o) {
  buildCounterGoogleCloudRecommenderV1beta1Operation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Operation < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    checkUnnamed5848(o.pathFilters);
    checkUnnamed5849(o.pathValueMatchers);
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.sourcePath, unittest.equals('foo'));
    unittest.expect(o.sourceResource, unittest.equals('foo'));
    var casted5 = (o.value) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted5["bool"], unittest.equals(true));
    unittest.expect(casted5["string"], unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1ValueMatcher(o.valueMatcher);
  }
  buildCounterGoogleCloudRecommenderV1beta1Operation--;
}

buildUnnamed5850() {
  var o = new core.List<api.GoogleCloudRecommenderV1beta1Operation>();
  o.add(buildGoogleCloudRecommenderV1beta1Operation());
  o.add(buildGoogleCloudRecommenderV1beta1Operation());
  return o;
}

checkUnnamed5850(core.List<api.GoogleCloudRecommenderV1beta1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Operation(o[0]);
  checkGoogleCloudRecommenderV1beta1Operation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1OperationGroup = 0;
buildGoogleCloudRecommenderV1beta1OperationGroup() {
  var o = new api.GoogleCloudRecommenderV1beta1OperationGroup();
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1beta1OperationGroup < 3) {
    o.operations = buildUnnamed5850();
  }
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup--;
  return o;
}

checkGoogleCloudRecommenderV1beta1OperationGroup(
    api.GoogleCloudRecommenderV1beta1OperationGroup o) {
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1beta1OperationGroup < 3) {
    checkUnnamed5850(o.operations);
  }
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup--;
}

buildUnnamed5851() {
  var o = new core.List<api.GoogleCloudRecommenderV1beta1Impact>();
  o.add(buildGoogleCloudRecommenderV1beta1Impact());
  o.add(buildGoogleCloudRecommenderV1beta1Impact());
  return o;
}

checkUnnamed5851(core.List<api.GoogleCloudRecommenderV1beta1Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Impact(o[0]);
  checkGoogleCloudRecommenderV1beta1Impact(o[1]);
}

buildUnnamed5852() {
  var o = new core
      .List<api.GoogleCloudRecommenderV1beta1RecommendationInsightReference>();
  o.add(buildGoogleCloudRecommenderV1beta1RecommendationInsightReference());
  o.add(buildGoogleCloudRecommenderV1beta1RecommendationInsightReference());
  return o;
}

checkUnnamed5852(
    core.List<api.GoogleCloudRecommenderV1beta1RecommendationInsightReference>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(o[0]);
  checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1Recommendation = 0;
buildGoogleCloudRecommenderV1beta1Recommendation() {
  var o = new api.GoogleCloudRecommenderV1beta1Recommendation();
  buildCounterGoogleCloudRecommenderV1beta1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Recommendation < 3) {
    o.additionalImpact = buildUnnamed5851();
    o.associatedInsights = buildUnnamed5852();
    o.content = buildGoogleCloudRecommenderV1beta1RecommendationContent();
    o.description = "foo";
    o.etag = "foo";
    o.lastRefreshTime = "foo";
    o.name = "foo";
    o.primaryImpact = buildGoogleCloudRecommenderV1beta1Impact();
    o.recommenderSubtype = "foo";
    o.stateInfo = buildGoogleCloudRecommenderV1beta1RecommendationStateInfo();
  }
  buildCounterGoogleCloudRecommenderV1beta1Recommendation--;
  return o;
}

checkGoogleCloudRecommenderV1beta1Recommendation(
    api.GoogleCloudRecommenderV1beta1Recommendation o) {
  buildCounterGoogleCloudRecommenderV1beta1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Recommendation < 3) {
    checkUnnamed5851(o.additionalImpact);
    checkUnnamed5852(o.associatedInsights);
    checkGoogleCloudRecommenderV1beta1RecommendationContent(o.content);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1Impact(o.primaryImpact);
    unittest.expect(o.recommenderSubtype, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1RecommendationStateInfo(o.stateInfo);
  }
  buildCounterGoogleCloudRecommenderV1beta1Recommendation--;
}

buildUnnamed5853() {
  var o = new core.List<api.GoogleCloudRecommenderV1beta1OperationGroup>();
  o.add(buildGoogleCloudRecommenderV1beta1OperationGroup());
  o.add(buildGoogleCloudRecommenderV1beta1OperationGroup());
  return o;
}

checkUnnamed5853(core.List<api.GoogleCloudRecommenderV1beta1OperationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1OperationGroup(o[0]);
  checkGoogleCloudRecommenderV1beta1OperationGroup(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommendationContent = 0;
buildGoogleCloudRecommenderV1beta1RecommendationContent() {
  var o = new api.GoogleCloudRecommenderV1beta1RecommendationContent();
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationContent < 3) {
    o.operationGroups = buildUnnamed5853();
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent--;
  return o;
}

checkGoogleCloudRecommenderV1beta1RecommendationContent(
    api.GoogleCloudRecommenderV1beta1RecommendationContent o) {
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationContent < 3) {
    checkUnnamed5853(o.operationGroups);
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent--;
}

core.int
    buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference = 0;
buildGoogleCloudRecommenderV1beta1RecommendationInsightReference() {
  var o = new api.GoogleCloudRecommenderV1beta1RecommendationInsightReference();
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference <
      3) {
    o.insight = "foo";
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference--;
  return o;
}

checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(
    api.GoogleCloudRecommenderV1beta1RecommendationInsightReference o) {
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference <
      3) {
    unittest.expect(o.insight, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference--;
}

buildUnnamed5854() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5854(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo = 0;
buildGoogleCloudRecommenderV1beta1RecommendationStateInfo() {
  var o = new api.GoogleCloudRecommenderV1beta1RecommendationStateInfo();
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo < 3) {
    o.state = "foo";
    o.stateMetadata = buildUnnamed5854();
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo--;
  return o;
}

checkGoogleCloudRecommenderV1beta1RecommendationStateInfo(
    api.GoogleCloudRecommenderV1beta1RecommendationStateInfo o) {
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5854(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1ValueMatcher = 0;
buildGoogleCloudRecommenderV1beta1ValueMatcher() {
  var o = new api.GoogleCloudRecommenderV1beta1ValueMatcher();
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1beta1ValueMatcher < 3) {
    o.matchesPattern = "foo";
  }
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher--;
  return o;
}

checkGoogleCloudRecommenderV1beta1ValueMatcher(
    api.GoogleCloudRecommenderV1beta1ValueMatcher o) {
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1beta1ValueMatcher < 3) {
    unittest.expect(o.matchesPattern, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher--;
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
  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1CostProjection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1CostProjection();
      var od = new api.GoogleCloudRecommenderV1beta1CostProjection.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1CostProjection(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1Impact", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1Impact();
      var od = new api.GoogleCloudRecommenderV1beta1Impact.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1beta1Impact(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1Insight", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1Insight();
      var od =
          new api.GoogleCloudRecommenderV1beta1Insight.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1beta1Insight(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1InsightRecommendationReference",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudRecommenderV1beta1InsightRecommendationReference();
      var od = new api
              .GoogleCloudRecommenderV1beta1InsightRecommendationReference.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1InsightStateInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1InsightStateInfo();
      var od = new api.GoogleCloudRecommenderV1beta1InsightStateInfo.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1InsightStateInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1ListInsightsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1ListInsightsResponse();
      var od =
          new api.GoogleCloudRecommenderV1beta1ListInsightsResponse.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1beta1ListInsightsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1ListRecommendationsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse();
      var od = new api
              .GoogleCloudRecommenderV1beta1ListRecommendationsResponse.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
      var od = new api
              .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
      var od = new api
              .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
      var od = new api
              .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
      var od = new api
              .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1Operation();
      var od =
          new api.GoogleCloudRecommenderV1beta1Operation.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1beta1Operation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1OperationGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1OperationGroup();
      var od = new api.GoogleCloudRecommenderV1beta1OperationGroup.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1OperationGroup(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1Recommendation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1Recommendation();
      var od = new api.GoogleCloudRecommenderV1beta1Recommendation.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1Recommendation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1RecommendationContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1RecommendationContent();
      var od =
          new api.GoogleCloudRecommenderV1beta1RecommendationContent.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1beta1RecommendationContent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1RecommendationInsightReference",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudRecommenderV1beta1RecommendationInsightReference();
      var od = new api
              .GoogleCloudRecommenderV1beta1RecommendationInsightReference.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudRecommenderV1beta1RecommendationStateInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1RecommendationStateInfo();
      var od =
          new api.GoogleCloudRecommenderV1beta1RecommendationStateInfo.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1beta1RecommendationStateInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudRecommenderV1beta1ValueMatcher", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudRecommenderV1beta1ValueMatcher();
      var od = new api.GoogleCloudRecommenderV1beta1ValueMatcher.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1beta1ValueMatcher(od);
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1beta1Insight());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1Insight(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInsightTypesInsightsResourceApi res =
          new api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1beta1ListInsightsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1ListInsightsResponse(response);
      })));
    });

    unittest.test("method--markAccepted", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInsightTypesInsightsResourceApi res =
          new api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_request =
          buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1beta1Insight());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAccepted(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1Insight(response);
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1beta1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1Recommendation(response);
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
      var arg_filter = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(response);
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
          buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1beta1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markClaimed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1Recommendation(response);
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
          buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1beta1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markFailed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1Recommendation(response);
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
          buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
            json);
        checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
            obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1beta1Recommendation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markSucceeded(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1beta1Recommendation(response);
      })));
    });
  });
}
