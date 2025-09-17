// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/recommender/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudLocationLocation> buildUnnamed0() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed0(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
  api.GoogleCloudLocationListLocationsResponse o,
) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed0(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed1();
    o.locationId = 'foo';
    o.metadata = buildUnnamed2();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed2(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1CostProjection = 0;
api.GoogleCloudRecommenderV1beta1CostProjection
buildGoogleCloudRecommenderV1beta1CostProjection() {
  final o = api.GoogleCloudRecommenderV1beta1CostProjection();
  buildCounterGoogleCloudRecommenderV1beta1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1CostProjection < 3) {
    o.cost = buildGoogleTypeMoney();
    o.costInLocalCurrency = buildGoogleTypeMoney();
    o.duration = 'foo';
    o.pricingType = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1CostProjection--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1CostProjection(
  api.GoogleCloudRecommenderV1beta1CostProjection o,
) {
  buildCounterGoogleCloudRecommenderV1beta1CostProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1CostProjection < 3) {
    checkGoogleTypeMoney(o.cost!);
    checkGoogleTypeMoney(o.costInLocalCurrency!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.pricingType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1CostProjection--;
}

core.List<api.GoogleCloudRecommenderV1beta1Impact> buildUnnamed3() => [
  buildGoogleCloudRecommenderV1beta1Impact(),
  buildGoogleCloudRecommenderV1beta1Impact(),
];

void checkUnnamed3(core.List<api.GoogleCloudRecommenderV1beta1Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Impact(o[0]);
  checkGoogleCloudRecommenderV1beta1Impact(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1Impact = 0;
api.GoogleCloudRecommenderV1beta1Impact
buildGoogleCloudRecommenderV1beta1Impact() {
  final o = api.GoogleCloudRecommenderV1beta1Impact();
  buildCounterGoogleCloudRecommenderV1beta1Impact++;
  if (buildCounterGoogleCloudRecommenderV1beta1Impact < 3) {
    o.category = 'foo';
    o.costProjection = buildGoogleCloudRecommenderV1beta1CostProjection();
    o.impactComponents = buildUnnamed3();
    o.reliabilityProjection =
        buildGoogleCloudRecommenderV1beta1ReliabilityProjection();
    o.securityProjection =
        buildGoogleCloudRecommenderV1beta1SecurityProjection();
    o.service = 'foo';
    o.sustainabilityProjection =
        buildGoogleCloudRecommenderV1beta1SustainabilityProjection();
  }
  buildCounterGoogleCloudRecommenderV1beta1Impact--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1Impact(
  api.GoogleCloudRecommenderV1beta1Impact o,
) {
  buildCounterGoogleCloudRecommenderV1beta1Impact++;
  if (buildCounterGoogleCloudRecommenderV1beta1Impact < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1CostProjection(o.costProjection!);
    checkUnnamed3(o.impactComponents!);
    checkGoogleCloudRecommenderV1beta1ReliabilityProjection(
      o.reliabilityProjection!,
    );
    checkGoogleCloudRecommenderV1beta1SecurityProjection(o.securityProjection!);
    unittest.expect(o.service!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1SustainabilityProjection(
      o.sustainabilityProjection!,
    );
  }
  buildCounterGoogleCloudRecommenderV1beta1Impact--;
}

core.List<api.GoogleCloudRecommenderV1beta1InsightRecommendationReference>
buildUnnamed4() => [
  buildGoogleCloudRecommenderV1beta1InsightRecommendationReference(),
  buildGoogleCloudRecommenderV1beta1InsightRecommendationReference(),
];

void checkUnnamed4(
  core.List<api.GoogleCloudRecommenderV1beta1InsightRecommendationReference> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(o[0]);
  checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1Insight = 0;
api.GoogleCloudRecommenderV1beta1Insight
buildGoogleCloudRecommenderV1beta1Insight() {
  final o = api.GoogleCloudRecommenderV1beta1Insight();
  buildCounterGoogleCloudRecommenderV1beta1Insight++;
  if (buildCounterGoogleCloudRecommenderV1beta1Insight < 3) {
    o.associatedRecommendations = buildUnnamed4();
    o.category = 'foo';
    o.content = buildUnnamed5();
    o.description = 'foo';
    o.etag = 'foo';
    o.insightSubtype = 'foo';
    o.lastRefreshTime = 'foo';
    o.name = 'foo';
    o.observationPeriod = 'foo';
    o.severity = 'foo';
    o.stateInfo = buildGoogleCloudRecommenderV1beta1InsightStateInfo();
    o.targetResources = buildUnnamed6();
  }
  buildCounterGoogleCloudRecommenderV1beta1Insight--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1Insight(
  api.GoogleCloudRecommenderV1beta1Insight o,
) {
  buildCounterGoogleCloudRecommenderV1beta1Insight++;
  if (buildCounterGoogleCloudRecommenderV1beta1Insight < 3) {
    checkUnnamed4(o.associatedRecommendations!);
    unittest.expect(o.category!, unittest.equals('foo'));
    checkUnnamed5(o.content!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.insightSubtype!, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.observationPeriod!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1InsightStateInfo(o.stateInfo!);
    checkUnnamed6(o.targetResources!);
  }
  buildCounterGoogleCloudRecommenderV1beta1Insight--;
}

core.int
buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference = 0;
api.GoogleCloudRecommenderV1beta1InsightRecommendationReference
buildGoogleCloudRecommenderV1beta1InsightRecommendationReference() {
  final o = api.GoogleCloudRecommenderV1beta1InsightRecommendationReference();
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference <
      3) {
    o.recommendation = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(
  api.GoogleCloudRecommenderV1beta1InsightRecommendationReference o,
) {
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference <
      3) {
    unittest.expect(o.recommendation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightRecommendationReference--;
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo = 0;
api.GoogleCloudRecommenderV1beta1InsightStateInfo
buildGoogleCloudRecommenderV1beta1InsightStateInfo() {
  final o = api.GoogleCloudRecommenderV1beta1InsightStateInfo();
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo < 3) {
    o.state = 'foo';
    o.stateMetadata = buildUnnamed7();
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1InsightStateInfo(
  api.GoogleCloudRecommenderV1beta1InsightStateInfo o,
) {
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed7(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightStateInfo--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1InsightType = 0;
api.GoogleCloudRecommenderV1beta1InsightType
buildGoogleCloudRecommenderV1beta1InsightType() {
  final o = api.GoogleCloudRecommenderV1beta1InsightType();
  buildCounterGoogleCloudRecommenderV1beta1InsightType++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightType < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightType--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1InsightType(
  api.GoogleCloudRecommenderV1beta1InsightType o,
) {
  buildCounterGoogleCloudRecommenderV1beta1InsightType++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightType < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightType--;
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig = 0;
api.GoogleCloudRecommenderV1beta1InsightTypeConfig
buildGoogleCloudRecommenderV1beta1InsightTypeConfig() {
  final o = api.GoogleCloudRecommenderV1beta1InsightTypeConfig();
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig < 3) {
    o.annotations = buildUnnamed8();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.insightTypeGenerationConfig =
        buildGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig();
    o.name = 'foo';
    o.revisionId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
  api.GoogleCloudRecommenderV1beta1InsightTypeConfig o,
) {
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig < 3) {
    checkUnnamed8(o.annotations!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig(
      o.insightTypeGenerationConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig =
    0;
api.GoogleCloudRecommenderV1beta1InsightTypeGenerationConfig
buildGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig() {
  final o = api.GoogleCloudRecommenderV1beta1InsightTypeGenerationConfig();
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig <
      3) {
    o.params = buildUnnamed9();
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig(
  api.GoogleCloudRecommenderV1beta1InsightTypeGenerationConfig o,
) {
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig <
      3) {
    checkUnnamed9(o.params!);
  }
  buildCounterGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig--;
}

core.List<api.GoogleCloudRecommenderV1beta1InsightType> buildUnnamed10() => [
  buildGoogleCloudRecommenderV1beta1InsightType(),
  buildGoogleCloudRecommenderV1beta1InsightType(),
];

void checkUnnamed10(core.List<api.GoogleCloudRecommenderV1beta1InsightType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1InsightType(o[0]);
  checkGoogleCloudRecommenderV1beta1InsightType(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse = 0;
api.GoogleCloudRecommenderV1beta1ListInsightTypesResponse
buildGoogleCloudRecommenderV1beta1ListInsightTypesResponse() {
  final o = api.GoogleCloudRecommenderV1beta1ListInsightTypesResponse();
  buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse < 3) {
    o.insightTypes = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1ListInsightTypesResponse(
  api.GoogleCloudRecommenderV1beta1ListInsightTypesResponse o,
) {
  buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse < 3) {
    checkUnnamed10(o.insightTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1ListInsightTypesResponse--;
}

core.List<api.GoogleCloudRecommenderV1beta1Insight> buildUnnamed11() => [
  buildGoogleCloudRecommenderV1beta1Insight(),
  buildGoogleCloudRecommenderV1beta1Insight(),
];

void checkUnnamed11(core.List<api.GoogleCloudRecommenderV1beta1Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Insight(o[0]);
  checkGoogleCloudRecommenderV1beta1Insight(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse = 0;
api.GoogleCloudRecommenderV1beta1ListInsightsResponse
buildGoogleCloudRecommenderV1beta1ListInsightsResponse() {
  final o = api.GoogleCloudRecommenderV1beta1ListInsightsResponse();
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse < 3) {
    o.insights = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1ListInsightsResponse(
  api.GoogleCloudRecommenderV1beta1ListInsightsResponse o,
) {
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse < 3) {
    checkUnnamed11(o.insights!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1ListInsightsResponse--;
}

core.List<api.GoogleCloudRecommenderV1beta1Recommendation> buildUnnamed12() => [
  buildGoogleCloudRecommenderV1beta1Recommendation(),
  buildGoogleCloudRecommenderV1beta1Recommendation(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudRecommenderV1beta1Recommendation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Recommendation(o[0]);
  checkGoogleCloudRecommenderV1beta1Recommendation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse =
    0;
api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse
buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse() {
  final o = api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse();
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.recommendations = buildUnnamed12();
  }
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(
  api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse o,
) {
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.recommendations!);
  }
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendationsResponse--;
}

core.List<api.GoogleCloudRecommenderV1beta1RecommenderType> buildUnnamed13() =>
    [
      buildGoogleCloudRecommenderV1beta1RecommenderType(),
      buildGoogleCloudRecommenderV1beta1RecommenderType(),
    ];

void checkUnnamed13(
  core.List<api.GoogleCloudRecommenderV1beta1RecommenderType> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1RecommenderType(o[0]);
  checkGoogleCloudRecommenderV1beta1RecommenderType(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse = 0;
api.GoogleCloudRecommenderV1beta1ListRecommendersResponse
buildGoogleCloudRecommenderV1beta1ListRecommendersResponse() {
  final o = api.GoogleCloudRecommenderV1beta1ListRecommendersResponse();
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse < 3) {
    o.nextPageToken = 'foo';
    o.recommenders = buildUnnamed13();
  }
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1ListRecommendersResponse(
  api.GoogleCloudRecommenderV1beta1ListRecommendersResponse o,
) {
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse++;
  if (buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.recommenders!);
  }
  buildCounterGoogleCloudRecommenderV1beta1ListRecommendersResponse--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest =
    0;
api.GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest
buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest() {
  final o = api.GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest < 3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed14();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(
  api.GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest o,
) {
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed14(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest--;
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest = 0;
api.GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest
buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest() {
  final o = api.GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed15();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(
  api.GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest o,
) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest <
      3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed15(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest--;
}

core.int
buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest = 0;
api.GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest
buildGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest() {
  final o =
      api.GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest <
      3) {
    o.etag = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest(
  api.GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest o,
) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest <
      3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest = 0;
api.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest
buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest() {
  final o = api.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed16();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(
  api.GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest o,
) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest <
      3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed16(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest--;
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest = 0;
api.GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest
buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest() {
  final o =
      api.GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed17();
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
  api.GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest o,
) {
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest <
      3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed17(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRecommenderV1beta1ValueMatcher>
buildUnnamed19() => {
  'x': buildGoogleCloudRecommenderV1beta1ValueMatcher(),
  'y': buildGoogleCloudRecommenderV1beta1ValueMatcher(),
};

void checkUnnamed19(
  core.Map<core.String, api.GoogleCloudRecommenderV1beta1ValueMatcher> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1ValueMatcher(o['x']!);
  checkGoogleCloudRecommenderV1beta1ValueMatcher(o['y']!);
}

core.int buildCounterGoogleCloudRecommenderV1beta1Operation = 0;
api.GoogleCloudRecommenderV1beta1Operation
buildGoogleCloudRecommenderV1beta1Operation() {
  final o = api.GoogleCloudRecommenderV1beta1Operation();
  buildCounterGoogleCloudRecommenderV1beta1Operation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Operation < 3) {
    o.action = 'foo';
    o.path = 'foo';
    o.pathFilters = buildUnnamed18();
    o.pathValueMatchers = buildUnnamed19();
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.sourcePath = 'foo';
    o.sourceResource = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.valueMatcher = buildGoogleCloudRecommenderV1beta1ValueMatcher();
  }
  buildCounterGoogleCloudRecommenderV1beta1Operation--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1Operation(
  api.GoogleCloudRecommenderV1beta1Operation o,
) {
  buildCounterGoogleCloudRecommenderV1beta1Operation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Operation < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    checkUnnamed18(o.pathFilters!);
    checkUnnamed19(o.pathValueMatchers!);
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.sourcePath!, unittest.equals('foo'));
    unittest.expect(o.sourceResource!, unittest.equals('foo'));
    var casted9 = (o.value!) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted9['bool'], unittest.equals(true));
    unittest.expect(casted9['string'], unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1ValueMatcher(o.valueMatcher!);
  }
  buildCounterGoogleCloudRecommenderV1beta1Operation--;
}

core.List<api.GoogleCloudRecommenderV1beta1Operation> buildUnnamed20() => [
  buildGoogleCloudRecommenderV1beta1Operation(),
  buildGoogleCloudRecommenderV1beta1Operation(),
];

void checkUnnamed20(core.List<api.GoogleCloudRecommenderV1beta1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Operation(o[0]);
  checkGoogleCloudRecommenderV1beta1Operation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1beta1OperationGroup = 0;
api.GoogleCloudRecommenderV1beta1OperationGroup
buildGoogleCloudRecommenderV1beta1OperationGroup() {
  final o = api.GoogleCloudRecommenderV1beta1OperationGroup();
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1beta1OperationGroup < 3) {
    o.operations = buildUnnamed20();
  }
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1OperationGroup(
  api.GoogleCloudRecommenderV1beta1OperationGroup o,
) {
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1beta1OperationGroup < 3) {
    checkUnnamed20(o.operations!);
  }
  buildCounterGoogleCloudRecommenderV1beta1OperationGroup--;
}

core.List<api.GoogleCloudRecommenderV1beta1Impact> buildUnnamed21() => [
  buildGoogleCloudRecommenderV1beta1Impact(),
  buildGoogleCloudRecommenderV1beta1Impact(),
];

void checkUnnamed21(core.List<api.GoogleCloudRecommenderV1beta1Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1Impact(o[0]);
  checkGoogleCloudRecommenderV1beta1Impact(o[1]);
}

core.List<api.GoogleCloudRecommenderV1beta1RecommendationInsightReference>
buildUnnamed22() => [
  buildGoogleCloudRecommenderV1beta1RecommendationInsightReference(),
  buildGoogleCloudRecommenderV1beta1RecommendationInsightReference(),
];

void checkUnnamed22(
  core.List<api.GoogleCloudRecommenderV1beta1RecommendationInsightReference> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(o[0]);
  checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(o[1]);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1Recommendation = 0;
api.GoogleCloudRecommenderV1beta1Recommendation
buildGoogleCloudRecommenderV1beta1Recommendation() {
  final o = api.GoogleCloudRecommenderV1beta1Recommendation();
  buildCounterGoogleCloudRecommenderV1beta1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Recommendation < 3) {
    o.additionalImpact = buildUnnamed21();
    o.associatedInsights = buildUnnamed22();
    o.content = buildGoogleCloudRecommenderV1beta1RecommendationContent();
    o.description = 'foo';
    o.etag = 'foo';
    o.lastRefreshTime = 'foo';
    o.name = 'foo';
    o.primaryImpact = buildGoogleCloudRecommenderV1beta1Impact();
    o.priority = 'foo';
    o.recommenderSubtype = 'foo';
    o.stateInfo = buildGoogleCloudRecommenderV1beta1RecommendationStateInfo();
    o.targetResources = buildUnnamed23();
    o.xorGroupId = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1Recommendation--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1Recommendation(
  api.GoogleCloudRecommenderV1beta1Recommendation o,
) {
  buildCounterGoogleCloudRecommenderV1beta1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1beta1Recommendation < 3) {
    checkUnnamed21(o.additionalImpact!);
    checkUnnamed22(o.associatedInsights!);
    checkGoogleCloudRecommenderV1beta1RecommendationContent(o.content!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.lastRefreshTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1Impact(o.primaryImpact!);
    unittest.expect(o.priority!, unittest.equals('foo'));
    unittest.expect(o.recommenderSubtype!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1RecommendationStateInfo(o.stateInfo!);
    checkUnnamed23(o.targetResources!);
    unittest.expect(o.xorGroupId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1Recommendation--;
}

core.List<api.GoogleCloudRecommenderV1beta1OperationGroup> buildUnnamed24() => [
  buildGoogleCloudRecommenderV1beta1OperationGroup(),
  buildGoogleCloudRecommenderV1beta1OperationGroup(),
];

void checkUnnamed24(
  core.List<api.GoogleCloudRecommenderV1beta1OperationGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1beta1OperationGroup(o[0]);
  checkGoogleCloudRecommenderV1beta1OperationGroup(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
  var casted11 = (o['y']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommendationContent = 0;
api.GoogleCloudRecommenderV1beta1RecommendationContent
buildGoogleCloudRecommenderV1beta1RecommendationContent() {
  final o = api.GoogleCloudRecommenderV1beta1RecommendationContent();
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationContent < 3) {
    o.operationGroups = buildUnnamed24();
    o.overview = buildUnnamed25();
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1RecommendationContent(
  api.GoogleCloudRecommenderV1beta1RecommendationContent o,
) {
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationContent < 3) {
    checkUnnamed24(o.operationGroups!);
    checkUnnamed25(o.overview!);
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationContent--;
}

core.int
buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference = 0;
api.GoogleCloudRecommenderV1beta1RecommendationInsightReference
buildGoogleCloudRecommenderV1beta1RecommendationInsightReference() {
  final o = api.GoogleCloudRecommenderV1beta1RecommendationInsightReference();
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference <
      3) {
    o.insight = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(
  api.GoogleCloudRecommenderV1beta1RecommendationInsightReference o,
) {
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference <
      3) {
    unittest.expect(o.insight!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationInsightReference--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo = 0;
api.GoogleCloudRecommenderV1beta1RecommendationStateInfo
buildGoogleCloudRecommenderV1beta1RecommendationStateInfo() {
  final o = api.GoogleCloudRecommenderV1beta1RecommendationStateInfo();
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo < 3) {
    o.state = 'foo';
    o.stateMetadata = buildUnnamed26();
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1RecommendationStateInfo(
  api.GoogleCloudRecommenderV1beta1RecommendationStateInfo o,
) {
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed26(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommendationStateInfo--;
}

core.Map<core.String, core.String> buildUnnamed27() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed27(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig = 0;
api.GoogleCloudRecommenderV1beta1RecommenderConfig
buildGoogleCloudRecommenderV1beta1RecommenderConfig() {
  final o = api.GoogleCloudRecommenderV1beta1RecommenderConfig();
  buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig < 3) {
    o.annotations = buildUnnamed27();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.recommenderGenerationConfig =
        buildGoogleCloudRecommenderV1beta1RecommenderGenerationConfig();
    o.revisionId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1RecommenderConfig(
  api.GoogleCloudRecommenderV1beta1RecommenderConfig o,
) {
  buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig < 3) {
    checkUnnamed27(o.annotations!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRecommenderV1beta1RecommenderGenerationConfig(
      o.recommenderGenerationConfig!,
    );
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommenderConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
  var casted13 = (o['y']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig =
    0;
api.GoogleCloudRecommenderV1beta1RecommenderGenerationConfig
buildGoogleCloudRecommenderV1beta1RecommenderGenerationConfig() {
  final o = api.GoogleCloudRecommenderV1beta1RecommenderGenerationConfig();
  buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig <
      3) {
    o.params = buildUnnamed28();
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1RecommenderGenerationConfig(
  api.GoogleCloudRecommenderV1beta1RecommenderGenerationConfig o,
) {
  buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig <
      3) {
    checkUnnamed28(o.params!);
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommenderGenerationConfig--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1RecommenderType = 0;
api.GoogleCloudRecommenderV1beta1RecommenderType
buildGoogleCloudRecommenderV1beta1RecommenderType() {
  final o = api.GoogleCloudRecommenderV1beta1RecommenderType();
  buildCounterGoogleCloudRecommenderV1beta1RecommenderType++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommenderType < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommenderType--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1RecommenderType(
  api.GoogleCloudRecommenderV1beta1RecommenderType o,
) {
  buildCounterGoogleCloudRecommenderV1beta1RecommenderType++;
  if (buildCounterGoogleCloudRecommenderV1beta1RecommenderType < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1RecommenderType--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
  var casted15 = (o['y']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection = 0;
api.GoogleCloudRecommenderV1beta1ReliabilityProjection
buildGoogleCloudRecommenderV1beta1ReliabilityProjection() {
  final o = api.GoogleCloudRecommenderV1beta1ReliabilityProjection();
  buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection < 3) {
    o.details = buildUnnamed29();
    o.risks = buildUnnamed30();
  }
  buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1ReliabilityProjection(
  api.GoogleCloudRecommenderV1beta1ReliabilityProjection o,
) {
  buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection < 3) {
    checkUnnamed29(o.details!);
    checkUnnamed30(o.risks!);
  }
  buildCounterGoogleCloudRecommenderV1beta1ReliabilityProjection--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted16 = (o['x']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
  var casted17 = (o['y']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRecommenderV1beta1SecurityProjection = 0;
api.GoogleCloudRecommenderV1beta1SecurityProjection
buildGoogleCloudRecommenderV1beta1SecurityProjection() {
  final o = api.GoogleCloudRecommenderV1beta1SecurityProjection();
  buildCounterGoogleCloudRecommenderV1beta1SecurityProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1SecurityProjection < 3) {
    o.details = buildUnnamed31();
  }
  buildCounterGoogleCloudRecommenderV1beta1SecurityProjection--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1SecurityProjection(
  api.GoogleCloudRecommenderV1beta1SecurityProjection o,
) {
  buildCounterGoogleCloudRecommenderV1beta1SecurityProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1SecurityProjection < 3) {
    checkUnnamed31(o.details!);
  }
  buildCounterGoogleCloudRecommenderV1beta1SecurityProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection = 0;
api.GoogleCloudRecommenderV1beta1SustainabilityProjection
buildGoogleCloudRecommenderV1beta1SustainabilityProjection() {
  final o = api.GoogleCloudRecommenderV1beta1SustainabilityProjection();
  buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection < 3) {
    o.duration = 'foo';
    o.kgCO2e = 42.0;
  }
  buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1SustainabilityProjection(
  api.GoogleCloudRecommenderV1beta1SustainabilityProjection o,
) {
  buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection++;
  if (buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection < 3) {
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.kgCO2e!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRecommenderV1beta1SustainabilityProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1beta1ValueMatcher = 0;
api.GoogleCloudRecommenderV1beta1ValueMatcher
buildGoogleCloudRecommenderV1beta1ValueMatcher() {
  final o = api.GoogleCloudRecommenderV1beta1ValueMatcher();
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1beta1ValueMatcher < 3) {
    o.matchesPattern = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher--;
  return o;
}

void checkGoogleCloudRecommenderV1beta1ValueMatcher(
  api.GoogleCloudRecommenderV1beta1ValueMatcher o,
) {
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher++;
  if (buildCounterGoogleCloudRecommenderV1beta1ValueMatcher < 3) {
    unittest.expect(o.matchesPattern!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRecommenderV1beta1ValueMatcher--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  final o = api.GoogleTypeMoney();
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
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1CostProjection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1CostProjection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1CostProjection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1CostProjection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1Impact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1Impact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1Impact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1Impact(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1Insight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1Insight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1Insight(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1InsightRecommendationReference',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1InsightRecommendationReference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1InsightRecommendationReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1InsightRecommendationReference(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1InsightStateInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1InsightStateInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRecommenderV1beta1InsightStateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1InsightStateInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1InsightType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1InsightType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1InsightType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1InsightType(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1InsightTypeConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1InsightTypeConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRecommenderV1beta1InsightTypeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1InsightTypeConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1InsightTypeGenerationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1InsightTypeGenerationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1InsightTypeGenerationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1ListInsightTypesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1ListInsightTypesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1ListInsightTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1ListInsightTypesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1ListInsightsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1ListInsightsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1ListInsightsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1ListInsightsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1ListRecommendationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1ListRecommendationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1ListRecommendersResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1ListRecommendersResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1ListRecommendersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1ListRecommendersResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1Operation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1Operation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1OperationGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1OperationGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1OperationGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1OperationGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1Recommendation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1Recommendation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1Recommendation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1RecommendationContent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1RecommendationContent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1RecommendationContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1RecommendationContent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1RecommendationInsightReference',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1RecommendationInsightReference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1RecommendationInsightReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1RecommendationInsightReference(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1RecommendationStateInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1RecommendationStateInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1RecommendationStateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1RecommendationStateInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1RecommenderConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1RecommenderConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRecommenderV1beta1RecommenderConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1RecommenderConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1RecommenderGenerationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRecommenderV1beta1RecommenderGenerationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1RecommenderGenerationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1RecommenderGenerationConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1RecommenderType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1RecommenderType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1RecommenderType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1RecommenderType(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1ReliabilityProjection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1ReliabilityProjection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1ReliabilityProjection.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1ReliabilityProjection(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1SecurityProjection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1SecurityProjection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRecommenderV1beta1SecurityProjection.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1SecurityProjection(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRecommenderV1beta1SustainabilityProjection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRecommenderV1beta1SustainabilityProjection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRecommenderV1beta1SustainabilityProjection.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRecommenderV1beta1SustainabilityProjection(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRecommenderV1beta1ValueMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1beta1ValueMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1beta1ValueMatcher.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRecommenderV1beta1ValueMatcher(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('resource-BillingAccountsLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).billingAccounts.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed32();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-BillingAccountsLocationsInsightTypesResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).billingAccounts.locations.insightTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1InsightTypeConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
        response as api.GoogleCloudRecommenderV1beta1InsightTypeConfig,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).billingAccounts.locations.insightTypes;
      final arg_request = buildGoogleCloudRecommenderV1beta1InsightTypeConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1InsightTypeConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1InsightTypeConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1InsightTypeConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
        response as api.GoogleCloudRecommenderV1beta1InsightTypeConfig,
      );
    });
  });

  unittest.group('resource-BillingAccountsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.insightTypes.insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.insightTypes.insights;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListInsightsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListInsightsResponse(
        response as api.GoogleCloudRecommenderV1beta1ListInsightsResponse,
      );
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.insightTypes.insights;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markAccepted(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });
  });

  unittest.group('resource-BillingAccountsLocationsRecommendersResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).billingAccounts.locations.recommenders;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1RecommenderConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1RecommenderConfig(
        response as api.GoogleCloudRecommenderV1beta1RecommenderConfig,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).billingAccounts.locations.recommenders;
      final arg_request = buildGoogleCloudRecommenderV1beta1RecommenderConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1RecommenderConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1RecommenderConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1RecommenderConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1RecommenderConfig(
        response as api.GoogleCloudRecommenderV1beta1RecommenderConfig,
      );
    });
  });

  unittest.group('resource-BillingAccountsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.recommenders.recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.recommenders.recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(
        response
            as api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse,
      );
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markClaimed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markDismissed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markDismissed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markFailed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).billingAccounts.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markSucceeded(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });
  });

  unittest.group('resource-FoldersLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).folders.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed33();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-FoldersLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListInsightsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListInsightsResponse(
        response as api.GoogleCloudRecommenderV1beta1ListInsightsResponse,
      );
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markAccepted(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });
  });

  unittest.group('resource-FoldersLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).folders.locations.recommenders.recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).folders.locations.recommenders.recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(
        response
            as api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse,
      );
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).folders.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markClaimed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markDismissed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).folders.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markDismissed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).folders.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markFailed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).folders.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markSucceeded(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });
  });

  unittest.group('resource-InsightTypesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).insightTypes;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('v1beta1/insightTypes'),
          );
          pathOffset += 20;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListInsightTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListInsightTypesResponse(
        response as api.GoogleCloudRecommenderV1beta1ListInsightTypesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).organizations.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed34();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsInsightTypesResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).organizations.locations.insightTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1InsightTypeConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
        response as api.GoogleCloudRecommenderV1beta1InsightTypeConfig,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).organizations.locations.insightTypes;
      final arg_request = buildGoogleCloudRecommenderV1beta1InsightTypeConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1InsightTypeConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1InsightTypeConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1InsightTypeConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
        response as api.GoogleCloudRecommenderV1beta1InsightTypeConfig,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.insightTypes.insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.insightTypes.insights;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListInsightsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListInsightsResponse(
        response as api.GoogleCloudRecommenderV1beta1ListInsightsResponse,
      );
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.insightTypes.insights;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markAccepted(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsRecommendersResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).organizations.locations.recommenders;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1RecommenderConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1RecommenderConfig(
        response as api.GoogleCloudRecommenderV1beta1RecommenderConfig,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).organizations.locations.recommenders;
      final arg_request = buildGoogleCloudRecommenderV1beta1RecommenderConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1RecommenderConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1RecommenderConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1RecommenderConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1RecommenderConfig(
        response as api.GoogleCloudRecommenderV1beta1RecommenderConfig,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.recommenders.recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.recommenders.recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(
        response
            as api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse,
      );
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markClaimed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markDismissed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markDismissed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markFailed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).organizations.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markSucceeded(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed35();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsInsightTypesResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).projects.locations.insightTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1InsightTypeConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
        response as api.GoogleCloudRecommenderV1beta1InsightTypeConfig,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).projects.locations.insightTypes;
      final arg_request = buildGoogleCloudRecommenderV1beta1InsightTypeConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1InsightTypeConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1InsightTypeConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1InsightTypeConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1InsightTypeConfig(
        response as api.GoogleCloudRecommenderV1beta1InsightTypeConfig,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListInsightsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListInsightsResponse(
        response as api.GoogleCloudRecommenderV1beta1ListInsightsResponse,
      );
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkInsightAcceptedRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Insight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markAccepted(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Insight(
        response as api.GoogleCloudRecommenderV1beta1Insight,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsRecommendersResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).projects.locations.recommenders;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1RecommenderConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1RecommenderConfig(
        response as api.GoogleCloudRecommenderV1beta1RecommenderConfig,
      );
    });

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).projects.locations.recommenders;
      final arg_request = buildGoogleCloudRecommenderV1beta1RecommenderConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1RecommenderConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1RecommenderConfig(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1RecommenderConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1RecommenderConfig(
        response as api.GoogleCloudRecommenderV1beta1RecommenderConfig,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).projects.locations.recommenders.recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).projects.locations.recommenders.recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListRecommendationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListRecommendationsResponse(
        response
            as api.GoogleCloudRecommenderV1beta1ListRecommendationsResponse,
      );
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).projects.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationClaimedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markClaimed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markDismissed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).projects.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationDismissedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markDismissed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).projects.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationFailedRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markFailed(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(
            mock,
          ).projects.locations.recommenders.recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRecommenderV1beta1MarkRecommendationSucceededRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1Recommendation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.markSucceeded(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1Recommendation(
        response as api.GoogleCloudRecommenderV1beta1Recommendation,
      );
    });
  });

  unittest.group('resource-RecommendersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock).recommenders;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('v1beta1/recommenders'),
          );
          pathOffset += 20;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRecommenderV1beta1ListRecommendersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRecommenderV1beta1ListRecommendersResponse(
        response as api.GoogleCloudRecommenderV1beta1ListRecommendersResponse,
      );
    });
  });
}
