// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/recommender/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudRecommenderV1CostProjection = 0;
api.GoogleCloudRecommenderV1CostProjection
    buildGoogleCloudRecommenderV1CostProjection() {
  final o = api.GoogleCloudRecommenderV1CostProjection();
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
    checkGoogleTypeMoney(o.cost!);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommenderV1CostProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1Impact = 0;
api.GoogleCloudRecommenderV1Impact buildGoogleCloudRecommenderV1Impact() {
  final o = api.GoogleCloudRecommenderV1Impact();
  buildCounterGoogleCloudRecommenderV1Impact++;
  if (buildCounterGoogleCloudRecommenderV1Impact < 3) {
    o.category = 'foo';
    o.costProjection = buildGoogleCloudRecommenderV1CostProjection();
    o.securityProjection = buildGoogleCloudRecommenderV1SecurityProjection();
  }
  buildCounterGoogleCloudRecommenderV1Impact--;
  return o;
}

void checkGoogleCloudRecommenderV1Impact(api.GoogleCloudRecommenderV1Impact o) {
  buildCounterGoogleCloudRecommenderV1Impact++;
  if (buildCounterGoogleCloudRecommenderV1Impact < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommenderV1CostProjection(o.costProjection!);
    checkGoogleCloudRecommenderV1SecurityProjection(o.securityProjection!);
  }
  buildCounterGoogleCloudRecommenderV1Impact--;
}

core.List<api.GoogleCloudRecommenderV1InsightRecommendationReference>
    buildUnnamed7735() => [
          buildGoogleCloudRecommenderV1InsightRecommendationReference(),
          buildGoogleCloudRecommenderV1InsightRecommendationReference(),
        ];

void checkUnnamed7735(
    core.List<api.GoogleCloudRecommenderV1InsightRecommendationReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1InsightRecommendationReference(o[0]);
  checkGoogleCloudRecommenderV1InsightRecommendationReference(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed7736() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7736(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7737() => [
      'foo',
      'foo',
    ];

void checkUnnamed7737(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1Insight = 0;
api.GoogleCloudRecommenderV1Insight buildGoogleCloudRecommenderV1Insight() {
  final o = api.GoogleCloudRecommenderV1Insight();
  buildCounterGoogleCloudRecommenderV1Insight++;
  if (buildCounterGoogleCloudRecommenderV1Insight < 3) {
    o.associatedRecommendations = buildUnnamed7735();
    o.category = 'foo';
    o.content = buildUnnamed7736();
    o.description = 'foo';
    o.etag = 'foo';
    o.insightSubtype = 'foo';
    o.lastRefreshTime = 'foo';
    o.name = 'foo';
    o.observationPeriod = 'foo';
    o.severity = 'foo';
    o.stateInfo = buildGoogleCloudRecommenderV1InsightStateInfo();
    o.targetResources = buildUnnamed7737();
  }
  buildCounterGoogleCloudRecommenderV1Insight--;
  return o;
}

void checkGoogleCloudRecommenderV1Insight(
    api.GoogleCloudRecommenderV1Insight o) {
  buildCounterGoogleCloudRecommenderV1Insight++;
  if (buildCounterGoogleCloudRecommenderV1Insight < 3) {
    checkUnnamed7735(o.associatedRecommendations!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkUnnamed7736(o.content!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insightSubtype!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.observationPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommenderV1InsightStateInfo(o.stateInfo!);
    checkUnnamed7737(o.targetResources!);
  }
  buildCounterGoogleCloudRecommenderV1Insight--;
}

core.int buildCounterGoogleCloudRecommenderV1InsightRecommendationReference = 0;
api.GoogleCloudRecommenderV1InsightRecommendationReference
    buildGoogleCloudRecommenderV1InsightRecommendationReference() {
  final o = api.GoogleCloudRecommenderV1InsightRecommendationReference();
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
    unittest.expect(
      o.recommendation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommenderV1InsightRecommendationReference--;
}

core.Map<core.String, core.String> buildUnnamed7738() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7738(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1InsightStateInfo = 0;
api.GoogleCloudRecommenderV1InsightStateInfo
    buildGoogleCloudRecommenderV1InsightStateInfo() {
  final o = api.GoogleCloudRecommenderV1InsightStateInfo();
  buildCounterGoogleCloudRecommenderV1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1InsightStateInfo < 3) {
    o.state = 'foo';
    o.stateMetadata = buildUnnamed7738();
  }
  buildCounterGoogleCloudRecommenderV1InsightStateInfo--;
  return o;
}

void checkGoogleCloudRecommenderV1InsightStateInfo(
    api.GoogleCloudRecommenderV1InsightStateInfo o) {
  buildCounterGoogleCloudRecommenderV1InsightStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1InsightStateInfo < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed7738(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1InsightStateInfo--;
}

core.List<api.GoogleCloudRecommenderV1Insight> buildUnnamed7739() => [
      buildGoogleCloudRecommenderV1Insight(),
      buildGoogleCloudRecommenderV1Insight(),
    ];

void checkUnnamed7739(core.List<api.GoogleCloudRecommenderV1Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Insight(o[0]);
  checkGoogleCloudRecommenderV1Insight(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1ListInsightsResponse = 0;
api.GoogleCloudRecommenderV1ListInsightsResponse
    buildGoogleCloudRecommenderV1ListInsightsResponse() {
  final o = api.GoogleCloudRecommenderV1ListInsightsResponse();
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListInsightsResponse < 3) {
    o.insights = buildUnnamed7739();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1ListInsightsResponse(
    api.GoogleCloudRecommenderV1ListInsightsResponse o) {
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListInsightsResponse < 3) {
    checkUnnamed7739(o.insights!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommenderV1ListInsightsResponse--;
}

core.List<api.GoogleCloudRecommenderV1Recommendation> buildUnnamed7740() => [
      buildGoogleCloudRecommenderV1Recommendation(),
      buildGoogleCloudRecommenderV1Recommendation(),
    ];

void checkUnnamed7740(core.List<api.GoogleCloudRecommenderV1Recommendation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Recommendation(o[0]);
  checkGoogleCloudRecommenderV1Recommendation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse = 0;
api.GoogleCloudRecommenderV1ListRecommendationsResponse
    buildGoogleCloudRecommenderV1ListRecommendationsResponse() {
  final o = api.GoogleCloudRecommenderV1ListRecommendationsResponse();
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.recommendations = buildUnnamed7740();
  }
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse--;
  return o;
}

void checkGoogleCloudRecommenderV1ListRecommendationsResponse(
    api.GoogleCloudRecommenderV1ListRecommendationsResponse o) {
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse++;
  if (buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7740(o.recommendations!);
  }
  buildCounterGoogleCloudRecommenderV1ListRecommendationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7741() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7741(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest = 0;
api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest
    buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest() {
  final o = api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest();
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest < 3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed7741();
  }
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(
    api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed7741(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1MarkInsightAcceptedRequest--;
}

core.Map<core.String, core.String> buildUnnamed7742() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7742(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest =
    0;
api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
    buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest() {
  final o = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed7742();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest <
      3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed7742(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationClaimedRequest--;
}

core.Map<core.String, core.String> buildUnnamed7743() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7743(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest =
    0;
api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
    buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest() {
  final o = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest < 3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed7743();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed7743(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationFailedRequest--;
}

core.Map<core.String, core.String> buildUnnamed7744() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7744(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int
    buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest = 0;
api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
    buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest() {
  final o = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest <
      3) {
    o.etag = 'foo';
    o.stateMetadata = buildUnnamed7744();
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest--;
  return o;
}

void checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(
    api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest o) {
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest++;
  if (buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest <
      3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed7744(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1MarkRecommendationSucceededRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7745() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7745(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, api.GoogleCloudRecommenderV1ValueMatcher>
    buildUnnamed7746() => {
          'x': buildGoogleCloudRecommenderV1ValueMatcher(),
          'y': buildGoogleCloudRecommenderV1ValueMatcher(),
        };

void checkUnnamed7746(
    core.Map<core.String, api.GoogleCloudRecommenderV1ValueMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1ValueMatcher(o['x']!);
  checkGoogleCloudRecommenderV1ValueMatcher(o['y']!);
}

core.int buildCounterGoogleCloudRecommenderV1Operation = 0;
api.GoogleCloudRecommenderV1Operation buildGoogleCloudRecommenderV1Operation() {
  final o = api.GoogleCloudRecommenderV1Operation();
  buildCounterGoogleCloudRecommenderV1Operation++;
  if (buildCounterGoogleCloudRecommenderV1Operation < 3) {
    o.action = 'foo';
    o.path = 'foo';
    o.pathFilters = buildUnnamed7745();
    o.pathValueMatchers = buildUnnamed7746();
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
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkUnnamed7745(o.pathFilters!);
    checkUnnamed7746(o.pathValueMatchers!);
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourcePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceResource!,
      unittest.equals('foo'),
    );
    var casted5 = (o.value!) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(
      casted5['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted5['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted5['string'],
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommenderV1ValueMatcher(o.valueMatcher!);
  }
  buildCounterGoogleCloudRecommenderV1Operation--;
}

core.List<api.GoogleCloudRecommenderV1Operation> buildUnnamed7747() => [
      buildGoogleCloudRecommenderV1Operation(),
      buildGoogleCloudRecommenderV1Operation(),
    ];

void checkUnnamed7747(core.List<api.GoogleCloudRecommenderV1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Operation(o[0]);
  checkGoogleCloudRecommenderV1Operation(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1OperationGroup = 0;
api.GoogleCloudRecommenderV1OperationGroup
    buildGoogleCloudRecommenderV1OperationGroup() {
  final o = api.GoogleCloudRecommenderV1OperationGroup();
  buildCounterGoogleCloudRecommenderV1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1OperationGroup < 3) {
    o.operations = buildUnnamed7747();
  }
  buildCounterGoogleCloudRecommenderV1OperationGroup--;
  return o;
}

void checkGoogleCloudRecommenderV1OperationGroup(
    api.GoogleCloudRecommenderV1OperationGroup o) {
  buildCounterGoogleCloudRecommenderV1OperationGroup++;
  if (buildCounterGoogleCloudRecommenderV1OperationGroup < 3) {
    checkUnnamed7747(o.operations!);
  }
  buildCounterGoogleCloudRecommenderV1OperationGroup--;
}

core.List<api.GoogleCloudRecommenderV1Impact> buildUnnamed7748() => [
      buildGoogleCloudRecommenderV1Impact(),
      buildGoogleCloudRecommenderV1Impact(),
    ];

void checkUnnamed7748(core.List<api.GoogleCloudRecommenderV1Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1Impact(o[0]);
  checkGoogleCloudRecommenderV1Impact(o[1]);
}

core.List<api.GoogleCloudRecommenderV1RecommendationInsightReference>
    buildUnnamed7749() => [
          buildGoogleCloudRecommenderV1RecommendationInsightReference(),
          buildGoogleCloudRecommenderV1RecommendationInsightReference(),
        ];

void checkUnnamed7749(
    core.List<api.GoogleCloudRecommenderV1RecommendationInsightReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1RecommendationInsightReference(o[0]);
  checkGoogleCloudRecommenderV1RecommendationInsightReference(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1Recommendation = 0;
api.GoogleCloudRecommenderV1Recommendation
    buildGoogleCloudRecommenderV1Recommendation() {
  final o = api.GoogleCloudRecommenderV1Recommendation();
  buildCounterGoogleCloudRecommenderV1Recommendation++;
  if (buildCounterGoogleCloudRecommenderV1Recommendation < 3) {
    o.additionalImpact = buildUnnamed7748();
    o.associatedInsights = buildUnnamed7749();
    o.content = buildGoogleCloudRecommenderV1RecommendationContent();
    o.description = 'foo';
    o.etag = 'foo';
    o.lastRefreshTime = 'foo';
    o.name = 'foo';
    o.primaryImpact = buildGoogleCloudRecommenderV1Impact();
    o.priority = 'foo';
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
    checkUnnamed7748(o.additionalImpact!);
    checkUnnamed7749(o.associatedInsights!);
    checkGoogleCloudRecommenderV1RecommendationContent(o.content!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommenderV1Impact(o.primaryImpact!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recommenderSubtype!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommenderV1RecommendationStateInfo(o.stateInfo!);
  }
  buildCounterGoogleCloudRecommenderV1Recommendation--;
}

core.List<api.GoogleCloudRecommenderV1OperationGroup> buildUnnamed7750() => [
      buildGoogleCloudRecommenderV1OperationGroup(),
      buildGoogleCloudRecommenderV1OperationGroup(),
    ];

void checkUnnamed7750(core.List<api.GoogleCloudRecommenderV1OperationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommenderV1OperationGroup(o[0]);
  checkGoogleCloudRecommenderV1OperationGroup(o[1]);
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationContent = 0;
api.GoogleCloudRecommenderV1RecommendationContent
    buildGoogleCloudRecommenderV1RecommendationContent() {
  final o = api.GoogleCloudRecommenderV1RecommendationContent();
  buildCounterGoogleCloudRecommenderV1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationContent < 3) {
    o.operationGroups = buildUnnamed7750();
  }
  buildCounterGoogleCloudRecommenderV1RecommendationContent--;
  return o;
}

void checkGoogleCloudRecommenderV1RecommendationContent(
    api.GoogleCloudRecommenderV1RecommendationContent o) {
  buildCounterGoogleCloudRecommenderV1RecommendationContent++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationContent < 3) {
    checkUnnamed7750(o.operationGroups!);
  }
  buildCounterGoogleCloudRecommenderV1RecommendationContent--;
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationInsightReference = 0;
api.GoogleCloudRecommenderV1RecommendationInsightReference
    buildGoogleCloudRecommenderV1RecommendationInsightReference() {
  final o = api.GoogleCloudRecommenderV1RecommendationInsightReference();
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
    unittest.expect(
      o.insight!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommenderV1RecommendationInsightReference--;
}

core.Map<core.String, core.String> buildUnnamed7751() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7751(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1RecommendationStateInfo = 0;
api.GoogleCloudRecommenderV1RecommendationStateInfo
    buildGoogleCloudRecommenderV1RecommendationStateInfo() {
  final o = api.GoogleCloudRecommenderV1RecommendationStateInfo();
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationStateInfo < 3) {
    o.state = 'foo';
    o.stateMetadata = buildUnnamed7751();
  }
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo--;
  return o;
}

void checkGoogleCloudRecommenderV1RecommendationStateInfo(
    api.GoogleCloudRecommenderV1RecommendationStateInfo o) {
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo++;
  if (buildCounterGoogleCloudRecommenderV1RecommendationStateInfo < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed7751(o.stateMetadata!);
  }
  buildCounterGoogleCloudRecommenderV1RecommendationStateInfo--;
}

core.Map<core.String, core.Object> buildUnnamed7752() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7752(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o['x']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
  var casted7 = (o['y']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRecommenderV1SecurityProjection = 0;
api.GoogleCloudRecommenderV1SecurityProjection
    buildGoogleCloudRecommenderV1SecurityProjection() {
  final o = api.GoogleCloudRecommenderV1SecurityProjection();
  buildCounterGoogleCloudRecommenderV1SecurityProjection++;
  if (buildCounterGoogleCloudRecommenderV1SecurityProjection < 3) {
    o.details = buildUnnamed7752();
  }
  buildCounterGoogleCloudRecommenderV1SecurityProjection--;
  return o;
}

void checkGoogleCloudRecommenderV1SecurityProjection(
    api.GoogleCloudRecommenderV1SecurityProjection o) {
  buildCounterGoogleCloudRecommenderV1SecurityProjection++;
  if (buildCounterGoogleCloudRecommenderV1SecurityProjection < 3) {
    checkUnnamed7752(o.details!);
  }
  buildCounterGoogleCloudRecommenderV1SecurityProjection--;
}

core.int buildCounterGoogleCloudRecommenderV1ValueMatcher = 0;
api.GoogleCloudRecommenderV1ValueMatcher
    buildGoogleCloudRecommenderV1ValueMatcher() {
  final o = api.GoogleCloudRecommenderV1ValueMatcher();
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
    unittest.expect(
      o.matchesPattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommenderV1ValueMatcher--;
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
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeMoney--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudRecommenderV1CostProjection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1CostProjection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1CostProjection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1CostProjection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Impact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1Impact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1Impact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1Impact(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1Insight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1Insight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1Insight(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1InsightRecommendationReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1InsightRecommendationReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommenderV1InsightRecommendationReference.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1InsightRecommendationReference(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1InsightStateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1InsightStateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1InsightStateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1InsightStateInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1ListInsightsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1ListInsightsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1ListInsightsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1ListInsightsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1ListRecommendationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1ListRecommendationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommenderV1ListRecommendationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkInsightAcceptedRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkRecommendationClaimedRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkRecommendationFailedRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1MarkRecommendationSucceededRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1Operation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1Operation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1Operation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1OperationGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1OperationGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1OperationGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1OperationGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1Recommendation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1Recommendation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1Recommendation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1Recommendation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1RecommendationContent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1RecommendationContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1RecommendationContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1RecommendationContent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommenderV1RecommendationInsightReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1RecommendationInsightReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommenderV1RecommendationInsightReference.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1RecommendationInsightReference(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1RecommendationStateInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1RecommendationStateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1RecommendationStateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1RecommendationStateInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1SecurityProjection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1SecurityProjection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1SecurityProjection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1SecurityProjection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommenderV1ValueMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommenderV1ValueMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommenderV1ValueMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommenderV1ValueMatcher(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group(
      'resource-BillingAccountsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .insightTypes
          .insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .insightTypes
          .insights;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListInsightsResponse(
          response as api.GoogleCloudRecommenderV1ListInsightsResponse);
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .insightTypes
          .insights;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markAccepted(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
    });
  });

  unittest.group(
      'resource-BillingAccountsLocationsRecommendersRecommendationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(
          response as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markClaimed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markFailed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .billingAccounts
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markSucceeded(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });
  });

  unittest.group('resource-FoldersLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListInsightsResponse(
          response as api.GoogleCloudRecommenderV1ListInsightsResponse);
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).folders.locations.insightTypes.insights;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markAccepted(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
    });
  });

  unittest.group('resource-FoldersLocationsRecommendersRecommendationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(
          response as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markClaimed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markFailed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .folders
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markSucceeded(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });
  });

  unittest.group('resource-OrganizationsLocationsInsightTypesInsightsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .insightTypes
          .insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .insightTypes
          .insights;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListInsightsResponse(
          response as api.GoogleCloudRecommenderV1ListInsightsResponse);
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .insightTypes
          .insights;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markAccepted(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(
          response as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markClaimed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markFailed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .organizations
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markSucceeded(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });
  });

  unittest.group('resource-ProjectsLocationsInsightTypesInsightsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListInsightsResponse(
          response as api.GoogleCloudRecommenderV1ListInsightsResponse);
    });

    unittest.test('method--markAccepted', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommenderApi(mock).projects.locations.insightTypes.insights;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkInsightAcceptedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkInsightAcceptedRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkInsightAcceptedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Insight());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markAccepted(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Insight(
          response as api.GoogleCloudRecommenderV1Insight);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRecommendersRecommendationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommenderV1ListRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommenderV1ListRecommendationsResponse(
          response as api.GoogleCloudRecommenderV1ListRecommendationsResponse);
    });

    unittest.test('method--markClaimed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationClaimedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationClaimedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markClaimed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markFailed', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationFailedRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommenderV1MarkRecommendationFailedRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationFailedRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markFailed(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });

    unittest.test('method--markSucceeded', () async {
      final mock = HttpServerMock();
      final res = api.RecommenderApi(mock)
          .projects
          .locations
          .recommenders
          .recommendations;
      final arg_request =
          buildGoogleCloudRecommenderV1MarkRecommendationSucceededRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommenderV1MarkRecommendationSucceededRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRecommenderV1Recommendation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.markSucceeded(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommenderV1Recommendation(
          response as api.GoogleCloudRecommenderV1Recommendation);
    });
  });
}
