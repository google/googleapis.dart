// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/recommender/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleCloudRecommenderV1CostProjection = 0;
api.GoogleCloudRecommenderV1CostProjection
    buildGoogleCloudRecommenderV1CostProjection() {
  var o = api.GoogleCloudRecommenderV1CostProjection();
  buildCounterGoogleCloudRecommenderV1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1CostProjection < 3) {
    o.cost = buildGoogleTypeMoney();
    o.duration = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1CostProjection--;
  return o;
}

void checkGoogleCloudRecommenderV1CostProjection(
    api.GoogleCloudRecommenderV1CostProjection o) {
  buildCounterGoogleCloudRecommenderV1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1CostProjection < 3) {
    checkGoogleTypeMoney(o.cost as api.GoogleTypeMoney);
    unittest.expect(o.duration, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1CostProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1Impact = 0;
api.GoogleCloudRecommenderV1Impact buildGoogleCloudRecommenderV1Impact() {
  var o = api.GoogleCloudRecommenderV1Impact();
  buildCounterGoogleCloudRecommenderV1Impact++;
  if (buildCounterGoogleCloudRecommenderV1Impact < 3) {
    o.category = 'foo';
    o.costProjection = buildGoogleCloudRecommenderV1CostProjection();
  }
  buildCounterGoogleCloudRecommenderV1Impact--;
  return o;
}

void checkGoogleCloudRecommenderV1Impact(api.GoogleCloudRecommenderV1Impact o) {
  buildCounterGoogleCloudRecommenderV1Impact++;
  if (buildCounterGoogleCloudRecommenderV1Impact < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1CostProjection(
        o.costProjection as api.GoogleCloudRecommenderV1CostProjection);
  }
  buildCounterGoogleCloudRecommenderV1Impact--;
}

core.List<api.GoogleCloudRecommenderV1InsightRecommendationReference>
    buildUnnamed6781() {
  var o = <api.GoogleCloudRecommenderV1InsightRecommendationReference>[];
  o.add(buildGoogleCloudRecommenderV1InsightRecommendationReference());
  o.add(buildGoogleCloudRecommenderV1InsightRecommendationReference());
  return o;
}

void checkUnnamed6781(
    core.List<api.GoogleCloudRecommenderV1InsightRecommendationReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1InsightRecommendationReference(
      o[0] as api.GoogleCloudRecommenderV1InsightRecommendationReference);
  checkGoogleCloudRecommenderV1InsightRecommendationReference(
      o[1] as api.GoogleCloudRecommenderV1InsightRecommendationReference);
}

core.Map<core.String, core.Object> buildUnnamed6782() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6782(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6783() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6783(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1Insight = 0;
api.GoogleCloudRecommenderV1Insight buildGoogleCloudRecommenderV1Insight() {
  var o = api.GoogleCloudRecommenderV1Insight();
  buildCounterGoogleCloudRecommenderV1Insight++;
  if (buildCounterGoogleCloudRecommenderV1Insight < 3) {
    o.associatedRecommendations = buildUnnamed6781();
    o.category = 'foo';
    o.content = buildUnnamed6782();
    o.description = 'foo';
    o.etag = 'foo';
    o.insightSubtype = 'foo';
    o.lastRefreshTime = 'foo';
    o.name = 'foo';
    o.observationPeriod = 'foo';
    o.stateInfo = buildGoogleCloudRecommenderV1InsightStateInfo();
    o.targetResources = buildUnnamed6783();
  }
  buildCounterGoogleCloudRecommenderV1Insight--;
  return o;
}

void checkGoogleCloudRecommenderV1Insight(
    api.GoogleCloudRecommenderV1Insight o) {
  buildCounterGoogleCloudRecommenderV1Insight++;
  if (buildCounterGoogleCloudRecommenderV1Insight < 3) {
    checkUnnamed6781(o.associatedRecommendations);
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed6782(o.content);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.insightSubtype, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.observationPeriod, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1InsightStateInfo(
        o.stateInfo as api.GoogleCloudRecommenderV1InsightStateInfo);
    checkUnnamed6783(o.targetResources);
  }
  buildCounterGoogleCloudRecommenderV1Insight--;
}

core.int buildCounterGoogleCloudRecommenderV1InsightRecommendationReference = 0;
api.GoogleCloudRecommenderV1InsightRecommendationReference
    buildGoogleCloudRecommenderV1InsightRecommendationReference() {
  var o = api.GoogleCloudRecommenderV1InsightRecommendationReference();
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1InsightRecommendationReference < 3) {
    o.recommendation = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference--;
  return o;
}

void checkGoogleCloudRecommenderV1InsightRecommendationReference(
    api.GoogleCloudRecommenderV1InsightRecommendationReference o) {
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1InsightRecommendationReference < 3) {
    unittest.expect(o.recommendation, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference--;
}

core.Map<core.String, core.String> buildUnnamed6784() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6784(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1InsightStateInfo = 0;
api.GoogleCloudRecommenderV1InsightStateInfo
    buildGoogleCloudRecommenderV1InsightStateInfo() {
  var o = api.GoogleCloudRecommenderV1InsightStateInfo();
  buildCounterGoogleCloudRecommenderV1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1InsightStateInfo < 3) {
    o.state = 'foo';
    o.stateMetadata = buildUnnamed6784();
  }
  buildCounterGoogleCloudRecommenderV1InsightStateInfo--;
  return o;
}

void checkGoogleCloudRecommenderV1InsightStateInfo(
    api.GoogleCloudRecommenderV1InsightStateInfo o) {
  buildCounterGoogleCloudRecommenderV1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1InsightStateInfo < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed6784(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1InsightStateInfo--;
}

core.List<api.GoogleCloudRecommenderV1Insight> buildUnnamed6785() {
  var o = <api.GoogleCloudRecommenderV1Insight>[];
  o.add(buildGoogleCloudRecommenderV1Insight());
  o.add(buildGoogleCloudRecommenderV1Insight());
  return o;
}

void checkUnnamed6785(core.List<api.GoogleCloudRecommenderV1Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Insight(
      o[0] as api.GoogleCloudRecommenderV1Insight);
  checkGoogleCloudRecommenderV1Insight(
      o[1] as api.GoogleCloudRecommenderV1Insight);
}

core.int buildCounterGoogleCloudRecommenderV1ListInsightsResponse = 0;
api.GoogleCloudRecommenderV1ListInsightsResponse
    buildGoogleCloudRecommenderV1ListInsightsResponse() {
  var o = api.GoogleCloudRecommenderV1ListInsightsResponse();
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListInsightsResponse < 3) {
    o.insights = buildUnnamed6785();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1ListInsightsResponse(
    api.GoogleCloudRecommenderV1ListInsightsResponse o) {
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListInsightsResponse < 3) {
    checkUnnamed6785(o.insights);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse--;
}

core.List<api.GoogleCloudRecommenderV1Recommendation> buildUnnamed6786() {
  var o = <api.GoogleCloudRecommenderV1Recommendation>[];
  o.add(buildGoogleCloudRecommenderV1Recommendation());
  o.add(buildGoogleCloudRecommenderV1Recommendation());
  return o;
}

void checkUnnamed6786(core.List<api.GoogleCloudRecommenderV1Recommendation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Recommendation(
      o[0] as api.GoogleCloudRecommenderV1Recommendation);
  checkGoogleCloudRecommenderV1Recommendation(
      o[1] as api.GoogleCloudRecommenderV1Recommendation);
}

core.int buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse = 0;
api.GoogleCloudRecommenderV1ListRecommendationsResponse
    buildGoogleCloudRecommenderV1ListRecommendationsResponse() {
  var o = api.GoogleCloudRecommenderV1ListRecommendationsResponse();
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.recommendations = buildUnnamed6786();
  }
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1ListRecommendationsResponse(
    api.GoogleCloudRecommenderV1ListRecommendationsResponse o) {
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6786(o.recommendations);
  }
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6787() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6787(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest = 0;
api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest
    buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest() {
  var o = api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest();
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest < 3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed6787();
  }
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
    api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6787(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest--;
}

core.Map<core.String, core.String> buildUnnamed6788() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6788(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest =
    0;
api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
    buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest() {
  var o = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed6788();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6788(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest--;
}

core.Map<core.String, core.String> buildUnnamed6789() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6789(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest =
    0;
api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
    buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest() {
  var o = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest < 3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed6789();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6789(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest--;
}

core.Map<core.String, core.String> buildUnnamed6790() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6790(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest = 0;
api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
    buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest() {
  var o = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed6790();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest <
      3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6790(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest--;
}

core.Map<core.String, core.Object> buildUnnamed6791() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6791(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRecommenderV1ValueMatcher>
    buildUnnamed6792() {
  var o = <core.String, api.GoogleCloudRecommenderV1ValueMatcher>{};
  o['x'] = buildGoogleCloudRecommenderV1ValueMatcher();
  o['y'] = buildGoogleCloudRecommenderV1ValueMatcher();
  return o;
}

void checkUnnamed6792(
    core.Map<core.String, api.GoogleCloudRecommenderV1ValueMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1ValueMatcher(
      o['x'] as api.GoogleCloudRecommenderV1ValueMatcher);
  checkGoogleCloudRecommenderV1ValueMatcher(
      o['y'] as api.GoogleCloudRecommenderV1ValueMatcher);
}

core.int buildCounterGoogleCloudRecommenderV1Operation = 0;
api.GoogleCloudRecommenderV1Operation buildGoogleCloudRecommenderV1Operation() {
  var o = api.GoogleCloudRecommenderV1Operation();
  buildCounterGoogleCloudRecommenderV1Operation++;
  if (buildCounterGoogleCloudRecommenderV1Operation < 3) {
    o.action = 'foo';
    o.path = 'foo';
    o.pathFilters = buildUnnamed6791();
    o.pathValueMatchers = buildUnnamed6792();
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.sourcePath = 'foo';
    o.sourceResource = 'foo';
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

void checkGoogleCloudRecommenderV1Operation(
    api.GoogleCloudRecommenderV1Operation o) {
  buildCounterGoogleCloudRecommenderV1Operation++;
  if (buildCounterGoogleCloudRecommenderV1Operation < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    checkUnnamed6791(o.pathFilters);
    checkUnnamed6792(o.pathValueMatchers);
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.sourcePath, unittest.equals('foo'));
    unittest.expect(o.sourceResource, unittest.equals('foo'));
    var casted5 = (o.value) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted5['bool'], unittest.equals(true));
    unittest.expect(casted5['string'], unittest.equals('foo'));
    checkGoogleCloudRecommenderV1ValueMatcher(
        o.valueMatcher as api.GoogleCloudRecommenderV1ValueMatcher);
  }
  buildCounterGoogleCloudRecommenderV1Operation--;
}

core.List<api.GoogleCloudRecommenderV1Operation> buildUnnamed6793() {
  var o = <api.GoogleCloudRecommenderV1Operation>[];
  o.add(buildGoogleCloudRecommenderV1Operation());
  o.add(buildGoogleCloudRecommenderV1Operation());
  return o;
}

void checkUnnamed6793(core.List<api.GoogleCloudRecommenderV1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Operation(
      o[0] as api.GoogleCloudRecommenderV1Operation);
  checkGoogleCloudRecommenderV1Operation(
      o[1] as api.GoogleCloudRecommenderV1Operation);
}

core.int buildCounterGoogleCloudRecommenderV1OperationGroup = 0;
api.GoogleCloudRecommenderV1OperationGroup
    buildGoogleCloudRecommenderV1OperationGroup() {
  var o = api.GoogleCloudRecommenderV1OperationGroup();
  buildCounterGoogleCloudRecommenderV1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1OperationGroup < 3) {
    o.operations = buildUnnamed6793();
  }
  buildCounterGoogleCloudRecommenderV1OperationGroup--;
  return o;
}

void checkGoogleCloudRecommenderV1OperationGroup(
    api.GoogleCloudRecommenderV1OperationGroup o) {
  buildCounterGoogleCloudRecommenderV1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1OperationGroup < 3) {
    checkUnnamed6793(o.operations);
  }
  buildCounterGoogleCloudRecommenderV1OperationGroup--;
}

core.List<api.GoogleCloudRecommenderV1Impact> buildUnnamed6794() {
  var o = <api.GoogleCloudRecommenderV1Impact>[];
  o.add(buildGoogleCloudRecommenderV1Impact());
  o.add(buildGoogleCloudRecommenderV1Impact());
  return o;
}

void checkUnnamed6794(core.List<api.GoogleCloudRecommenderV1Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Impact(
      o[0] as api.GoogleCloudRecommenderV1Impact);
  checkGoogleCloudRecommenderV1Impact(
      o[1] as api.GoogleCloudRecommenderV1Impact);
}

core.List<api.GoogleCloudRecommenderV1RecommendationInsightReference>
    buildUnnamed6795() {
  var o = <api.GoogleCloudRecommenderV1RecommendationInsightReference>[];
  o.add(buildGoogleCloudRecommenderV1RecommendationInsightReference());
  o.add(buildGoogleCloudRecommenderV1RecommendationInsightReference());
  return o;
}

void checkUnnamed6795(
    core.List<api.GoogleCloudRecommenderV1RecommendationInsightReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1RecommendationInsightReference(
      o[0] as api.GoogleCloudRecommenderV1RecommendationInsightReference);
  checkGoogleCloudRecommenderV1RecommendationInsightReference(
      o[1] as api.GoogleCloudRecommenderV1RecommendationInsightReference);
}

core.int buildCounterGoogleCloudRecommenderV1Recommendation = 0;
api.GoogleCloudRecommenderV1Recommendation
    buildGoogleCloudRecommenderV1Recommendation() {
  var o = api.GoogleCloudRecommenderV1Recommendation();
  buildCounterGoogleCloudRecommenderV1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1Recommendation < 3) {
    o.additionalImpact = buildUnnamed6794();
    o.associatedInsights = buildUnnamed6795();
    o.content = buildGoogleCloudRecommenderV1RecommendationContent();
    o.description = 'foo';
    o.etag = 'foo';
    o.lastRefreshTime = 'foo';
    o.name = 'foo';
    o.primaryImpact = buildGoogleCloudRecommenderV1Impact();
    o.recommenderSubtype = 'foo';
    o.stateInfo = buildGoogleCloudRecommenderV1RecommendationStateInfo();
  }
  buildCounterGoogleCloudRecommenderV1Recommendation--;
  return o;
}

void checkGoogleCloudRecommenderV1Recommendation(
    api.GoogleCloudRecommenderV1Recommendation o) {
  buildCounterGoogleCloudRecommenderV1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1Recommendation < 3) {
    checkUnnamed6794(o.additionalImpact);
    checkUnnamed6795(o.associatedInsights);
    checkGoogleCloudRecommenderV1RecommendationContent(
        o.content as api.GoogleCloudRecommenderV1RecommendationContent);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1Impact(
        o.primaryImpact as api.GoogleCloudRecommenderV1Impact);
    unittest.expect(o.recommenderSubtype, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1RecommendationStateInfo(
        o.stateInfo as api.GoogleCloudRecommenderV1RecommendationStateInfo);
  }
  buildCounterGoogleCloudRecommenderV1Recommendation--;
}

core.List<api.GoogleCloudRecommenderV1OperationGroup> buildUnnamed6796() {
  var o = <api.GoogleCloudRecommenderV1OperationGroup>[];
  o.add(buildGoogleCloudRecommenderV1OperationGroup());
  o.add(buildGoogleCloudRecommenderV1OperationGroup());
  return o;
}

void checkUnnamed6796(core.List<api.GoogleCloudRecommenderV1OperationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1OperationGroup(
      o[0] as api.GoogleCloudRecommenderV1OperationGroup);
  checkGoogleCloudRecommenderV1OperationGroup(
      o[1] as api.GoogleCloudRecommenderV1OperationGroup);
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationContent = 0;
api.GoogleCloudRecommenderV1RecommendationContent
    buildGoogleCloudRecommenderV1RecommendationContent() {
  var o = api.GoogleCloudRecommenderV1RecommendationContent();
  buildCounterGoogleCloudRecommenderV1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationContent < 3) {
    o.operationGroups = buildUnnamed6796();
  }
  buildCounterGoogleCloudRecommenderV1RecommendationContent--;
  return o;
}

void checkGoogleCloudRecommenderV1RecommendationContent(
    api.GoogleCloudRecommenderV1RecommendationContent o) {
  buildCounterGoogleCloudRecommenderV1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationContent < 3) {
    checkUnnamed6796(o.operationGroups);
  }
  buildCounterGoogleCloudRecommenderV1RecommendationContent--;
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationInsightReference = 0;
api.GoogleCloudRecommenderV1RecommendationInsightReference
    buildGoogleCloudRecommenderV1RecommendationInsightReference() {
  var o = api.GoogleCloudRecommenderV1RecommendationInsightReference();
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationInsightReference < 3) {
    o.insight = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference--;
  return o;
}

void checkGoogleCloudRecommenderV1RecommendationInsightReference(
    api.GoogleCloudRecommenderV1RecommendationInsightReference o) {
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationInsightReference < 3) {
    unittest.expect(o.insight, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference--;
}

core.Map<core.String, core.String> buildUnnamed6797() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6797(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationStateInfo = 0;
api.GoogleCloudRecommenderV1RecommendationStateInfo
    buildGoogleCloudRecommenderV1RecommendationStateInfo() {
  var o = api.GoogleCloudRecommenderV1RecommendationStateInfo();
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationStateInfo < 3) {
    o.state = 'foo';
    o.stateMetadata = buildUnnamed6797();
  }
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo--;
  return o;
}

void checkGoogleCloudRecommenderV1RecommendationStateInfo(
    api.GoogleCloudRecommenderV1RecommendationStateInfo o) {
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationStateInfo < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed6797(o.stateMetadata);
  }
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo--;
}

core.int buildCounterGoogleCloudRecommenderV1ValueMatcher = 0;
api.GoogleCloudRecommenderV1ValueMatcher
    buildGoogleCloudRecommenderV1ValueMatcher() {
  var o = api.GoogleCloudRecommenderV1ValueMatcher();
  buildCounterGoogleCloudRecommenderV1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1ValueMatcher < 3) {
    o.matchesPattern = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1ValueMatcher--;
  return o;
}

void checkGoogleCloudRecommenderV1ValueMatcher(
    api.GoogleCloudRecommenderV1ValueMatcher o) {
  buildCounterGoogleCloudRecommenderV1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1ValueMatcher < 3) {
    unittest.expect(o.matchesPattern, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1ValueMatcher--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  var o = api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

void checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudRecommenderV1CostProjection', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1CostProjection();
      var od = api.GoogleCloudRecommenderV1CostProjection.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1CostProjection(
          od as api.GoogleCloudRecommenderV1CostProjection);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Impact', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1Impact();
      var od = api.GoogleCloudRecommenderV1Impact.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Impact(
          od as api.GoogleCloudRecommenderV1Impact);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Insight', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1Insight();
      var od = api.GoogleCloudRecommenderV1Insight.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Insight(
          od as api.GoogleCloudRecommenderV1Insight);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1InsightRecommendationReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1InsightRecommendationReference();
      var od =
          api.GoogleCloudRecommenderV1InsightRecommendationReference.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1InsightRecommendationReference(
          od as api.GoogleCloudRecommenderV1InsightRecommendationReference);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1InsightStateInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1InsightStateInfo();
      var od =
          api.GoogleCloudRecommenderV1InsightStateInfo.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1InsightStateInfo(
          od as api.GoogleCloudRecommenderV1InsightStateInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1ListInsightsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1ListInsightsResponse();
      var od =
          api.GoogleCloudRecommenderV1ListInsightsResponse.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1ListInsightsResponse(
          od as api.GoogleCloudRecommenderV1ListInsightsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1ListRecommendationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1ListRecommendationsResponse();
      var od = api.GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(
          od as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkInsightAcceptedRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var od = api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
          od as api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkRecommendationClaimedRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var od =
          api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(
          od as api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkRecommendationFailedRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var od =
          api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
          od as api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkRecommendationSucceededRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var od = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
          .fromJson(o.toJson());
      checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(
          od as api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1Operation();
      var od = api.GoogleCloudRecommenderV1Operation.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Operation(
          od as api.GoogleCloudRecommenderV1Operation);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1OperationGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1OperationGroup();
      var od = api.GoogleCloudRecommenderV1OperationGroup.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1OperationGroup(
          od as api.GoogleCloudRecommenderV1OperationGroup);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Recommendation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1Recommendation();
      var od = api.GoogleCloudRecommenderV1Recommendation.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1Recommendation(
          od as api.GoogleCloudRecommenderV1Recommendation);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1RecommendationContent',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1RecommendationContent();
      var od = api.GoogleCloudRecommenderV1RecommendationContent.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1RecommendationContent(
          od as api.GoogleCloudRecommenderV1RecommendationContent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1RecommendationInsightReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1RecommendationInsightReference();
      var od =
          api.GoogleCloudRecommenderV1RecommendationInsightReference.fromJson(
              o.toJson());
      checkGoogleCloudRecommenderV1RecommendationInsightReference(
          od as api.GoogleCloudRecommenderV1RecommendationInsightReference);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1RecommendationStateInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1RecommendationStateInfo();
      var od = api.GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(
          o.toJson());
      checkGoogleCloudRecommenderV1RecommendationStateInfo(
          od as api.GoogleCloudRecommenderV1RecommendationStateInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1ValueMatcher', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommenderV1ValueMatcher();
      var od = api.GoogleCloudRecommenderV1ValueMatcher.fromJson(o.toJson());
      checkGoogleCloudRecommenderV1ValueMatcher(
          od as api.GoogleCloudRecommenderV1ValueMatcher);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeMoney();
      var od = api.GoogleTypeMoney.fromJson(o.toJson());
      checkGoogleTypeMoney(od as api.GoogleTypeMoney);
    });
  });

  unittest.group(
      'resource-BillingAccountsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .insightTypes
          .insights;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .insightTypes
          .insights;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListInsightsResponse(
            response as api.GoogleCloudRecommenderV1ListInsightsResponse);
      })));
    });

    unittest.test('method--markAccepted', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .insightTypes
          .insights;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
            obj as api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAccepted(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });
  });

  unittest.group(
      'resource-BillingAccountsLocationsRecommendersRecommendationsResource',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListRecommendationsResponse(response
            as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
      })));
    });

    unittest.test('method--markClaimed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markClaimed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markFailed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
            obj as api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markFailed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markSucceeded', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markSucceeded(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });
  });

  unittest.group('resource-FoldersLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListInsightsResponse(
            response as api.GoogleCloudRecommenderV1ListInsightsResponse);
      })));
    });

    unittest.test('method--markAccepted', () {
      var mock = HttpServerMock();
      var res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
            obj as api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAccepted(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });
  });

  unittest.group('resource-FoldersLocationsRecommendersRecommendationsResource',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListRecommendationsResponse(response
            as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
      })));
    });

    unittest.test('method--markClaimed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markClaimed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markFailed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
            obj as api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markFailed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markSucceeded', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markSucceeded(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });
  });

  unittest.group('resource-OrganizationsLocationsInsightTypesInsightsResource',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .insightTypes
          .insights;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .insightTypes
          .insights;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListInsightsResponse(
            response as api.GoogleCloudRecommenderV1ListInsightsResponse);
      })));
    });

    unittest.test('method--markAccepted', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .insightTypes
          .insights;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
            obj as api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAccepted(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListRecommendationsResponse(response
            as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
      })));
    });

    unittest.test('method--markClaimed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markClaimed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markFailed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
            obj as api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markFailed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markSucceeded', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markSucceeded(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListInsightsResponse(
            response as api.GoogleCloudRecommenderV1ListInsightsResponse);
      })));
    });

    unittest.test('method--markAccepted', () {
      var mock = HttpServerMock();
      var res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
            obj as api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markAccepted(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Insight(
            response as api.GoogleCloudRecommenderV1Insight);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1ListRecommendationsResponse(response
            as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
      })));
    });

    unittest.test('method--markClaimed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markClaimed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markFailed', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
            obj as api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markFailed(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });

    unittest.test('method--markSucceeded', () {
      var mock = HttpServerMock();
      var res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      var arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj
            as api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .markSucceeded(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommenderV1Recommendation(
            response as api.GoogleCloudRecommenderV1Recommendation);
      })));
    });
  });
}
