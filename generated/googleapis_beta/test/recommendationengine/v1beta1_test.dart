// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/recommendationengine/v1beta1.dart' as api;

import '../test_shared.dart';

core.Map<core.String, core.Object> buildUnnamed7892() {
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

void checkUnnamed7892(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7893() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7892());
  o.add(buildUnnamed7892());
  return o;
}

void checkUnnamed7893(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7892(o[0]);
  checkUnnamed7892(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  var o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed7893();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

void checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed7893(o.extensions!);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata = 0;
api.GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata
    buildGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata() {
  var o = api.GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata();
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata <
      3) {}
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata--;
  return o;
}

void checkGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata(
    api.GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata o) {
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata <
      3) {}
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse = 0;
api.GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse
    buildGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse() {
  var o = api.GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse();
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse <
      3) {
    o.rejoinedUserEventsCount = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse(
    api.GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse o) {
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse <
      3) {
    unittest.expect(
      o.rejoinedUserEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse--;
}

core.int buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata = 0;
api.GoogleCloudRecommendationengineV1alphaTuningMetadata
    buildGoogleCloudRecommendationengineV1alphaTuningMetadata() {
  var o = api.GoogleCloudRecommendationengineV1alphaTuningMetadata();
  buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata < 3) {
    o.recommendationModel = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata--;
  return o;
}

void checkGoogleCloudRecommendationengineV1alphaTuningMetadata(
    api.GoogleCloudRecommendationengineV1alphaTuningMetadata o) {
  buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata < 3) {
    unittest.expect(
      o.recommendationModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1alphaTuningMetadata--;
}

core.int buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse = 0;
api.GoogleCloudRecommendationengineV1alphaTuningResponse
    buildGoogleCloudRecommendationengineV1alphaTuningResponse() {
  var o = api.GoogleCloudRecommendationengineV1alphaTuningResponse();
  buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse < 3) {}
  buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1alphaTuningResponse(
    api.GoogleCloudRecommendationengineV1alphaTuningResponse o) {
  buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse < 3) {}
  buildCounterGoogleCloudRecommendationengineV1alphaTuningResponse--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource = 0;
api.GoogleCloudRecommendationengineV1beta1BigQuerySource
    buildGoogleCloudRecommendationengineV1beta1BigQuerySource() {
  var o = api.GoogleCloudRecommendationengineV1beta1BigQuerySource();
  buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource < 3) {
    o.dataSchema = 'foo';
    o.datasetId = 'foo';
    o.gcsStagingDir = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1BigQuerySource(
    api.GoogleCloudRecommendationengineV1beta1BigQuerySource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource < 3) {
    unittest.expect(
      o.dataSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsStagingDir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1Catalog = 0;
api.GoogleCloudRecommendationengineV1beta1Catalog
    buildGoogleCloudRecommendationengineV1beta1Catalog() {
  var o = api.GoogleCloudRecommendationengineV1beta1Catalog();
  buildCounterGoogleCloudRecommendationengineV1beta1Catalog++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1Catalog < 3) {
    o.catalogItemLevelConfig =
        buildGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig();
    o.defaultEventStoreId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1Catalog--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1Catalog(
    api.GoogleCloudRecommendationengineV1beta1Catalog o) {
  buildCounterGoogleCloudRecommendationengineV1beta1Catalog++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1Catalog < 3) {
    checkGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig(o
            .catalogItemLevelConfig!
        as api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig);
    unittest.expect(
      o.defaultEventStoreId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1Catalog--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem>
    buildUnnamed7894() {
  var o = <api.GoogleCloudRecommendationengineV1beta1CatalogItem>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
  o.add(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
  return o;
}

void checkUnnamed7894(
    core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(
      o[0] as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(
      o[1] as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource =
    0;
api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource
    buildGoogleCloudRecommendationengineV1beta1CatalogInlineSource() {
  var o = api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource <
      3) {
    o.catalogItems = buildUnnamed7894();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogInlineSource(
    api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource <
      3) {
    checkUnnamed7894(o.catalogItems!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource--;
}

core.List<
        api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
    buildUnnamed7895() {
  var o = <
      api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>[];
  o.add(
      buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy());
  o.add(
      buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy());
  return o;
}

void checkUnnamed7895(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[0]
      as api
          .GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy);
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[1]
      as api
          .GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy);
}

core.List<core.String> buildUnnamed7896() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7896(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem = 0;
api.GoogleCloudRecommendationengineV1beta1CatalogItem
    buildGoogleCloudRecommendationengineV1beta1CatalogItem() {
  var o = api.GoogleCloudRecommendationengineV1beta1CatalogItem();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem < 3) {
    o.categoryHierarchies = buildUnnamed7895();
    o.description = 'foo';
    o.id = 'foo';
    o.itemAttributes = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
    o.itemGroupId = 'foo';
    o.languageCode = 'foo';
    o.productMetadata =
        buildGoogleCloudRecommendationengineV1beta1ProductCatalogItem();
    o.tags = buildUnnamed7896();
    o.title = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogItem(
    api.GoogleCloudRecommendationengineV1beta1CatalogItem o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem < 3) {
    checkUnnamed7895(o.categoryHierarchies!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1FeatureMap(o.itemAttributes!
        as api.GoogleCloudRecommendationengineV1beta1FeatureMap);
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1ProductCatalogItem(
        o.productMetadata!
            as api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem);
    checkUnnamed7896(o.tags!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem--;
}

core.List<core.String> buildUnnamed7897() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7897(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy =
    0;
api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
    buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy() {
  var o =
      api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy <
      3) {
    o.categories = buildUnnamed7897();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(
    api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy <
      3) {
    checkUnnamed7897(o.categories!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig =
    0;
api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
    buildGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig() {
  var o = api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig <
      3) {
    o.eventItemLevel = 'foo';
    o.predictItemLevel = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig(
    api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig <
      3) {
    unittest.expect(
      o.eventItemLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predictItemLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
    buildGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest() {
  var o = api
      .GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest <
      3) {
    o.predictionApiKeyRegistration =
        buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest(
    api.GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
        o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest <
      3) {
    checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(
        o.predictionApiKeyRegistration! as api
            .GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest--;
}

core.List<core.String> buildUnnamed7898() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7898(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecommendationengineV1beta1EventDetail = 0;
api.GoogleCloudRecommendationengineV1beta1EventDetail
    buildGoogleCloudRecommendationengineV1beta1EventDetail() {
  var o = api.GoogleCloudRecommendationengineV1beta1EventDetail();
  buildCounterGoogleCloudRecommendationengineV1beta1EventDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1EventDetail < 3) {
    o.eventAttributes = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
    o.experimentIds = buildUnnamed7898();
    o.pageViewId = 'foo';
    o.recommendationToken = 'foo';
    o.referrerUri = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1EventDetail--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1EventDetail(
    api.GoogleCloudRecommendationengineV1beta1EventDetail o) {
  buildCounterGoogleCloudRecommendationengineV1beta1EventDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1EventDetail < 3) {
    checkGoogleCloudRecommendationengineV1beta1FeatureMap(o.eventAttributes!
        as api.GoogleCloudRecommendationengineV1beta1FeatureMap);
    checkUnnamed7898(o.experimentIds!);
    unittest.expect(
      o.pageViewId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recommendationToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referrerUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1EventDetail--;
}

core.Map<core.String,
        api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList>
    buildUnnamed7899() {
  var o = <core.String,
      api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList>{};
  o['x'] = buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList();
  o['y'] = buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList();
  return o;
}

void checkUnnamed7899(
    core.Map<core.String,
            api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(o['x']!
      as api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList);
  checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(o['y']!
      as api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList);
}

core.Map<core.String,
        api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>
    buildUnnamed7900() {
  var o = <core.String,
      api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>{};
  o['x'] = buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList();
  o['y'] = buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList();
  return o;
}

void checkUnnamed7900(
    core.Map<core.String,
            api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(
      o['x']! as api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList);
  checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(
      o['y']! as api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap = 0;
api.GoogleCloudRecommendationengineV1beta1FeatureMap
    buildGoogleCloudRecommendationengineV1beta1FeatureMap() {
  var o = api.GoogleCloudRecommendationengineV1beta1FeatureMap();
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap < 3) {
    o.categoricalFeatures = buildUnnamed7899();
    o.numericalFeatures = buildUnnamed7900();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1FeatureMap(
    api.GoogleCloudRecommendationengineV1beta1FeatureMap o) {
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap < 3) {
    checkUnnamed7899(o.categoricalFeatures!);
    checkUnnamed7900(o.numericalFeatures!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap--;
}

core.List<core.double> buildUnnamed7901() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed7901(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList =
    0;
api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
    buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList() {
  var o = api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList();
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList <
      3) {
    o.value = buildUnnamed7901();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(
    api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList o) {
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList <
      3) {
    checkUnnamed7901(o.value!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList--;
}

core.List<core.String> buildUnnamed7902() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7902(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList = 0;
api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList
    buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList() {
  var o = api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList();
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList <
      3) {
    o.value = buildUnnamed7902();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(
    api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList o) {
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList <
      3) {
    checkUnnamed7902(o.value!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList--;
}

core.List<core.String> buildUnnamed7903() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7903(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRecommendationengineV1beta1GcsSource = 0;
api.GoogleCloudRecommendationengineV1beta1GcsSource
    buildGoogleCloudRecommendationengineV1beta1GcsSource() {
  var o = api.GoogleCloudRecommendationengineV1beta1GcsSource();
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1GcsSource < 3) {
    o.inputUris = buildUnnamed7903();
    o.jsonSchema = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1GcsSource(
    api.GoogleCloudRecommendationengineV1beta1GcsSource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1GcsSource < 3) {
    checkUnnamed7903(o.inputUris!);
    unittest.expect(
      o.jsonSchema!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1Image = 0;
api.GoogleCloudRecommendationengineV1beta1Image
    buildGoogleCloudRecommendationengineV1beta1Image() {
  var o = api.GoogleCloudRecommendationengineV1beta1Image();
  buildCounterGoogleCloudRecommendationengineV1beta1Image++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1Image < 3) {
    o.height = 42;
    o.uri = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudRecommendationengineV1beta1Image--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1Image(
    api.GoogleCloudRecommendationengineV1beta1Image o) {
  buildCounterGoogleCloudRecommendationengineV1beta1Image++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1Image < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1Image--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
    buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest() {
  var o = api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest <
      3) {
    o.errorsConfig =
        buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRecommendationengineV1beta1InputConfig();
    o.requestId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest(
    api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest <
      3) {
    checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(
        o.errorsConfig!
            as api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig);
    checkGoogleCloudRecommendationengineV1beta1InputConfig(o.inputConfig!
        as api.GoogleCloudRecommendationengineV1beta1InputConfig);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7904() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7904(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse
    buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse() {
  var o =
      api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse <
      3) {
    o.errorSamples = buildUnnamed7904();
    o.errorsConfig =
        buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse(
    api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse <
      3) {
    checkUnnamed7904(o.errorSamples!);
    checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(
        o.errorsConfig!
            as api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
    buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig() {
  var o = api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
  buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig <
      3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(
    api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig <
      3) {
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata = 0;
api.GoogleCloudRecommendationengineV1beta1ImportMetadata
    buildGoogleCloudRecommendationengineV1beta1ImportMetadata() {
  var o = api.GoogleCloudRecommendationengineV1beta1ImportMetadata();
  buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata < 3) {
    o.createTime = 'foo';
    o.failureCount = 'foo';
    o.operationName = 'foo';
    o.requestId = 'foo';
    o.successCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ImportMetadata(
    api.GoogleCloudRecommendationengineV1beta1ImportMetadata o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.successCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportMetadata--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
    buildGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest() {
  var o = api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest <
      3) {
    o.errorsConfig =
        buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRecommendationengineV1beta1InputConfig();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest(
    api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest <
      3) {
    checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(
        o.errorsConfig!
            as api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig);
    checkGoogleCloudRecommendationengineV1beta1InputConfig(o.inputConfig!
        as api.GoogleCloudRecommendationengineV1beta1InputConfig);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7905() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7905(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse
    buildGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse <
      3) {
    o.errorSamples = buildUnnamed7905();
    o.errorsConfig =
        buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
    o.importSummary =
        buildGoogleCloudRecommendationengineV1beta1UserEventImportSummary();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse(
    api.GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse <
      3) {
    checkUnnamed7905(o.errorSamples!);
    checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(
        o.errorsConfig!
            as api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig);
    checkGoogleCloudRecommendationengineV1beta1UserEventImportSummary(o
            .importSummary!
        as api.GoogleCloudRecommendationengineV1beta1UserEventImportSummary);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1InputConfig = 0;
api.GoogleCloudRecommendationengineV1beta1InputConfig
    buildGoogleCloudRecommendationengineV1beta1InputConfig() {
  var o = api.GoogleCloudRecommendationengineV1beta1InputConfig();
  buildCounterGoogleCloudRecommendationengineV1beta1InputConfig++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1InputConfig < 3) {
    o.bigQuerySource =
        buildGoogleCloudRecommendationengineV1beta1BigQuerySource();
    o.catalogInlineSource =
        buildGoogleCloudRecommendationengineV1beta1CatalogInlineSource();
    o.gcsSource = buildGoogleCloudRecommendationengineV1beta1GcsSource();
    o.userEventInlineSource =
        buildGoogleCloudRecommendationengineV1beta1UserEventInlineSource();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1InputConfig--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1InputConfig(
    api.GoogleCloudRecommendationengineV1beta1InputConfig o) {
  buildCounterGoogleCloudRecommendationengineV1beta1InputConfig++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1InputConfig < 3) {
    checkGoogleCloudRecommendationengineV1beta1BigQuerySource(o.bigQuerySource!
        as api.GoogleCloudRecommendationengineV1beta1BigQuerySource);
    checkGoogleCloudRecommendationengineV1beta1CatalogInlineSource(
        o.catalogInlineSource!
            as api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource);
    checkGoogleCloudRecommendationengineV1beta1GcsSource(
        o.gcsSource! as api.GoogleCloudRecommendationengineV1beta1GcsSource);
    checkGoogleCloudRecommendationengineV1beta1UserEventInlineSource(
        o.userEventInlineSource!
            as api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1InputConfig--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem>
    buildUnnamed7906() {
  var o = <api.GoogleCloudRecommendationengineV1beta1CatalogItem>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
  o.add(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
  return o;
}

void checkUnnamed7906(
    core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(
      o[0] as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(
      o[1] as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
    buildGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse <
      3) {
    o.catalogItems = buildUnnamed7906();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse(
    api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse <
      3) {
    checkUnnamed7906(o.catalogItems!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1Catalog>
    buildUnnamed7907() {
  var o = <api.GoogleCloudRecommendationengineV1beta1Catalog>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1Catalog());
  o.add(buildGoogleCloudRecommendationengineV1beta1Catalog());
  return o;
}

void checkUnnamed7907(
    core.List<api.GoogleCloudRecommendationengineV1beta1Catalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1Catalog(
      o[0] as api.GoogleCloudRecommendationengineV1beta1Catalog);
  checkGoogleCloudRecommendationengineV1beta1Catalog(
      o[1] as api.GoogleCloudRecommendationengineV1beta1Catalog);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse = 0;
api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
    buildGoogleCloudRecommendationengineV1beta1ListCatalogsResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse <
      3) {
    o.catalogs = buildUnnamed7907();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ListCatalogsResponse(
    api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse <
      3) {
    checkUnnamed7907(o.catalogs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse--;
}

core.List<
        api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>
    buildUnnamed7908() {
  var o = <
      api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>[];
  o.add(
      buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration());
  o.add(
      buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration());
  return o;
}

void checkUnnamed7908(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(o[0]
      as api
          .GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration);
  checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(o[1]
      as api
          .GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
    buildGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse() {
  var o = api
      .GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.predictionApiKeyRegistrations = buildUnnamed7908();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse(
    api.GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
        o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7908(o.predictionApiKeyRegistrations!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent>
    buildUnnamed7909() {
  var o = <api.GoogleCloudRecommendationengineV1beta1UserEvent>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1UserEvent());
  o.add(buildGoogleCloudRecommendationengineV1beta1UserEvent());
  return o;
}

void checkUnnamed7909(
    core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1UserEvent(
      o[0] as api.GoogleCloudRecommendationengineV1beta1UserEvent);
  checkGoogleCloudRecommendationengineV1beta1UserEvent(
      o[1] as api.GoogleCloudRecommendationengineV1beta1UserEvent);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
    buildGoogleCloudRecommendationengineV1beta1ListUserEventsResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.userEvents = buildUnnamed7909();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ListUserEventsResponse(
    api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7909(o.userEvents!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7910() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7910(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed7911() {
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

void checkUnnamed7911(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest = 0;
api.GoogleCloudRecommendationengineV1beta1PredictRequest
    buildGoogleCloudRecommendationengineV1beta1PredictRequest() {
  var o = api.GoogleCloudRecommendationengineV1beta1PredictRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest < 3) {
    o.dryRun = true;
    o.filter = 'foo';
    o.labels = buildUnnamed7910();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed7911();
    o.userEvent = buildGoogleCloudRecommendationengineV1beta1UserEvent();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PredictRequest(
    api.GoogleCloudRecommendationengineV1beta1PredictRequest o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest < 3) {
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkUnnamed7910(o.labels!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7911(o.params!);
    checkGoogleCloudRecommendationengineV1beta1UserEvent(
        o.userEvent! as api.GoogleCloudRecommendationengineV1beta1UserEvent);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest--;
}

core.List<core.String> buildUnnamed7912() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7912(core.List<core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed7913() {
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

void checkUnnamed7913(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
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
  var casted6 = (o['y']!) as core.Map;
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
}

core.List<
        api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>
    buildUnnamed7914() {
  var o = <
      api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>[];
  o.add(
      buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult());
  o.add(
      buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult());
  return o;
}

void checkUnnamed7914(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
      o[0] as api
          .GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult);
  checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
      o[1] as api
          .GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse = 0;
api.GoogleCloudRecommendationengineV1beta1PredictResponse
    buildGoogleCloudRecommendationengineV1beta1PredictResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1PredictResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse < 3) {
    o.dryRun = true;
    o.itemsMissingInCatalog = buildUnnamed7912();
    o.metadata = buildUnnamed7913();
    o.nextPageToken = 'foo';
    o.recommendationToken = 'foo';
    o.results = buildUnnamed7914();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PredictResponse(
    api.GoogleCloudRecommendationengineV1beta1PredictResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse < 3) {
    unittest.expect(o.dryRun!, unittest.isTrue);
    checkUnnamed7912(o.itemsMissingInCatalog!);
    checkUnnamed7913(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recommendationToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7914(o.results!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7915() {
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

void checkUnnamed7915(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
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
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult =
    0;
api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
    buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult() {
  var o = api
      .GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult <
      3) {
    o.id = 'foo';
    o.itemMetadata = buildUnnamed7915();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
    api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
        o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult <
      3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7915(o.itemMetadata!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration =
    0;
api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
    buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration() {
  var o =
      api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration <
      3) {
    o.apiKey = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(
    api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration <
      3) {
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration--;
}

core.Map<core.String, core.double> buildUnnamed7916() {
  var o = <core.String, core.double>{};
  o['x'] = 42.0;
  o['y'] = 42.0;
  return o;
}

void checkUnnamed7916(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.List<api.GoogleCloudRecommendationengineV1beta1Image> buildUnnamed7917() {
  var o = <api.GoogleCloudRecommendationengineV1beta1Image>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1Image());
  o.add(buildGoogleCloudRecommendationengineV1beta1Image());
  return o;
}

void checkUnnamed7917(
    core.List<api.GoogleCloudRecommendationengineV1beta1Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1Image(
      o[0] as api.GoogleCloudRecommendationengineV1beta1Image);
  checkGoogleCloudRecommendationengineV1beta1Image(
      o[1] as api.GoogleCloudRecommendationengineV1beta1Image);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem =
    0;
api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem
    buildGoogleCloudRecommendationengineV1beta1ProductCatalogItem() {
  var o = api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem <
      3) {
    o.availableQuantity = 'foo';
    o.canonicalProductUri = 'foo';
    o.costs = buildUnnamed7916();
    o.currencyCode = 'foo';
    o.exactPrice =
        buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice();
    o.images = buildUnnamed7917();
    o.priceRange =
        buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange();
    o.stockState = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ProductCatalogItem(
    api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem <
      3) {
    unittest.expect(
      o.availableQuantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canonicalProductUri!,
      unittest.equals('foo'),
    );
    checkUnnamed7916(o.costs!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(
        o.exactPrice! as api
            .GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice);
    checkUnnamed7917(o.images!);
    checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange(
        o.priceRange! as api
            .GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange);
    unittest.expect(
      o.stockState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice =
    0;
api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
    buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice() {
  var o =
      api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice <
      3) {
    o.displayPrice = 42.0;
    o.originalPrice = 42.0;
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(
    api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice <
      3) {
    unittest.expect(
      o.displayPrice!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.originalPrice!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange =
    0;
api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
    buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange() {
  var o =
      api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange <
      3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange(
    api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange <
      3) {
    unittest.expect(
      o.max!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail = 0;
api.GoogleCloudRecommendationengineV1beta1ProductDetail
    buildGoogleCloudRecommendationengineV1beta1ProductDetail() {
  var o = api.GoogleCloudRecommendationengineV1beta1ProductDetail();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail < 3) {
    o.availableQuantity = 42;
    o.currencyCode = 'foo';
    o.displayPrice = 42.0;
    o.id = 'foo';
    o.itemAttributes = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
    o.originalPrice = 42.0;
    o.quantity = 42;
    o.stockState = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ProductDetail(
    api.GoogleCloudRecommendationengineV1beta1ProductDetail o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail < 3) {
    unittest.expect(
      o.availableQuantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayPrice!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1FeatureMap(o.itemAttributes!
        as api.GoogleCloudRecommendationengineV1beta1FeatureMap);
    unittest.expect(
      o.originalPrice!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stockState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductDetail--;
}

core.List<
        api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
    buildUnnamed7918() {
  var o = <
      api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>[];
  o.add(
      buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy());
  o.add(
      buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy());
  return o;
}

void checkUnnamed7918(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[0]
      as api
          .GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy);
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[1]
      as api
          .GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy);
}

core.List<api.GoogleCloudRecommendationengineV1beta1ProductDetail>
    buildUnnamed7919() {
  var o = <api.GoogleCloudRecommendationengineV1beta1ProductDetail>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1ProductDetail());
  o.add(buildGoogleCloudRecommendationengineV1beta1ProductDetail());
  return o;
}

void checkUnnamed7919(
    core.List<api.GoogleCloudRecommendationengineV1beta1ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1ProductDetail(
      o[0] as api.GoogleCloudRecommendationengineV1beta1ProductDetail);
  checkGoogleCloudRecommendationengineV1beta1ProductDetail(
      o[1] as api.GoogleCloudRecommendationengineV1beta1ProductDetail);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail =
    0;
api.GoogleCloudRecommendationengineV1beta1ProductEventDetail
    buildGoogleCloudRecommendationengineV1beta1ProductEventDetail() {
  var o = api.GoogleCloudRecommendationengineV1beta1ProductEventDetail();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail <
      3) {
    o.cartId = 'foo';
    o.listId = 'foo';
    o.pageCategories = buildUnnamed7918();
    o.productDetails = buildUnnamed7919();
    o.purchaseTransaction =
        buildGoogleCloudRecommendationengineV1beta1PurchaseTransaction();
    o.searchQuery = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1ProductEventDetail(
    api.GoogleCloudRecommendationengineV1beta1ProductEventDetail o) {
  buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail <
      3) {
    unittest.expect(
      o.cartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listId!,
      unittest.equals('foo'),
    );
    checkUnnamed7918(o.pageCategories!);
    checkUnnamed7919(o.productDetails!);
    checkGoogleCloudRecommendationengineV1beta1PurchaseTransaction(
        o.purchaseTransaction!
            as api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction);
    unittest.expect(
      o.searchQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail--;
}

core.Map<core.String, core.double> buildUnnamed7920() {
  var o = <core.String, core.double>{};
  o['x'] = 42.0;
  o['y'] = 42.0;
  return o;
}

void checkUnnamed7920(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.Map<core.String, core.double> buildUnnamed7921() {
  var o = <core.String, core.double>{};
  o['x'] = 42.0;
  o['y'] = 42.0;
  return o;
}

void checkUnnamed7921(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42.0),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction =
    0;
api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction
    buildGoogleCloudRecommendationengineV1beta1PurchaseTransaction() {
  var o = api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction();
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction <
      3) {
    o.costs = buildUnnamed7920();
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.revenue = 42.0;
    o.taxes = buildUnnamed7921();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PurchaseTransaction(
    api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction <
      3) {
    checkUnnamed7920(o.costs!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revenue!,
      unittest.equals(42.0),
    );
    checkUnnamed7921(o.taxes!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata =
    0;
api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata
    buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata() {
  var o = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata();
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata <
      3) {
    o.createTime = 'foo';
    o.operationName = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata(
    api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata <
      3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
    buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest() {
  var o = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest <
      3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest(
    api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest <
      3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent>
    buildUnnamed7922() {
  var o = <api.GoogleCloudRecommendationengineV1beta1UserEvent>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1UserEvent());
  o.add(buildGoogleCloudRecommendationengineV1beta1UserEvent());
  return o;
}

void checkUnnamed7922(
    core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1UserEvent(
      o[0] as api.GoogleCloudRecommendationengineV1beta1UserEvent);
  checkGoogleCloudRecommendationengineV1beta1UserEvent(
      o[1] as api.GoogleCloudRecommendationengineV1beta1UserEvent);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse
    buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse <
      3) {
    o.purgedEventsCount = 'foo';
    o.userEventsSample = buildUnnamed7922();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse(
    api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse <
      3) {
    unittest.expect(
      o.purgedEventsCount!,
      unittest.equals('foo'),
    );
    checkUnnamed7922(o.userEventsSample!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata =
    0;
api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata
    buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata() {
  var o = api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata();
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata <
      3) {}
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata(
    api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata o) {
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata <
      3) {}
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
    buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest() {
  var o = api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest <
      3) {
    o.userEventRejoinScope = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest(
    api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest o) {
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest <
      3) {
    unittest.expect(
      o.userEventRejoinScope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse
    buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse() {
  var o = api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse <
      3) {
    o.rejoinedUserEventsCount = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse(
    api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse <
      3) {
    unittest.expect(
      o.rejoinedUserEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1UserEvent = 0;
api.GoogleCloudRecommendationengineV1beta1UserEvent
    buildGoogleCloudRecommendationengineV1beta1UserEvent() {
  var o = api.GoogleCloudRecommendationengineV1beta1UserEvent();
  buildCounterGoogleCloudRecommendationengineV1beta1UserEvent++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEvent < 3) {
    o.eventDetail = buildGoogleCloudRecommendationengineV1beta1EventDetail();
    o.eventSource = 'foo';
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.productEventDetail =
        buildGoogleCloudRecommendationengineV1beta1ProductEventDetail();
    o.userInfo = buildGoogleCloudRecommendationengineV1beta1UserInfo();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEvent--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1UserEvent(
    api.GoogleCloudRecommendationengineV1beta1UserEvent o) {
  buildCounterGoogleCloudRecommendationengineV1beta1UserEvent++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEvent < 3) {
    checkGoogleCloudRecommendationengineV1beta1EventDetail(o.eventDetail!
        as api.GoogleCloudRecommendationengineV1beta1EventDetail);
    unittest.expect(
      o.eventSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1ProductEventDetail(
        o.productEventDetail!
            as api.GoogleCloudRecommendationengineV1beta1ProductEventDetail);
    checkGoogleCloudRecommendationengineV1beta1UserInfo(
        o.userInfo! as api.GoogleCloudRecommendationengineV1beta1UserInfo);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEvent--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary =
    0;
api.GoogleCloudRecommendationengineV1beta1UserEventImportSummary
    buildGoogleCloudRecommendationengineV1beta1UserEventImportSummary() {
  var o = api.GoogleCloudRecommendationengineV1beta1UserEventImportSummary();
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary <
      3) {
    o.joinedEventsCount = 'foo';
    o.unjoinedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1UserEventImportSummary(
    api.GoogleCloudRecommendationengineV1beta1UserEventImportSummary o) {
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary <
      3) {
    unittest.expect(
      o.joinedEventsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unjoinedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventImportSummary--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent>
    buildUnnamed7923() {
  var o = <api.GoogleCloudRecommendationengineV1beta1UserEvent>[];
  o.add(buildGoogleCloudRecommendationengineV1beta1UserEvent());
  o.add(buildGoogleCloudRecommendationengineV1beta1UserEvent());
  return o;
}

void checkUnnamed7923(
    core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1UserEvent(
      o[0] as api.GoogleCloudRecommendationengineV1beta1UserEvent);
  checkGoogleCloudRecommendationengineV1beta1UserEvent(
      o[1] as api.GoogleCloudRecommendationengineV1beta1UserEvent);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource = 0;
api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource
    buildGoogleCloudRecommendationengineV1beta1UserEventInlineSource() {
  var o = api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource();
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource <
      3) {
    o.userEvents = buildUnnamed7923();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1UserEventInlineSource(
    api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource <
      3) {
    checkUnnamed7923(o.userEvents!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1UserInfo = 0;
api.GoogleCloudRecommendationengineV1beta1UserInfo
    buildGoogleCloudRecommendationengineV1beta1UserInfo() {
  var o = api.GoogleCloudRecommendationengineV1beta1UserInfo();
  buildCounterGoogleCloudRecommendationengineV1beta1UserInfo++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserInfo < 3) {
    o.directUserRequest = true;
    o.ipAddress = 'foo';
    o.userAgent = 'foo';
    o.userId = 'foo';
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserInfo--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1UserInfo(
    api.GoogleCloudRecommendationengineV1beta1UserInfo o) {
  buildCounterGoogleCloudRecommendationengineV1beta1UserInfo++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserInfo < 3) {
    unittest.expect(o.directUserRequest!, unittest.isTrue);
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserInfo--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed7924() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed7924(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7924();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7924(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7925() {
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

void checkUnnamed7925(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7926() {
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

void checkUnnamed7926(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed7925();
    o.name = 'foo';
    o.response = buildUnnamed7926();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed7925(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7926(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed7927() {
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

void checkUnnamed7927(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7928() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7927());
  o.add(buildUnnamed7927());
  return o;
}

void checkUnnamed7928(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7927(o[0]);
  checkUnnamed7927(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7928();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed7928(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleApiHttpBody();
      var od = api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od as api.GoogleApiHttpBody);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata();
      var od = api.GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata(od
          as api.GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse();
      var od = api.GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1alphaRejoinCatalogResponse(od
          as api.GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1alphaTuningMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1alphaTuningMetadata();
      var od =
          api.GoogleCloudRecommendationengineV1alphaTuningMetadata.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1alphaTuningMetadata(
          od as api.GoogleCloudRecommendationengineV1alphaTuningMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1alphaTuningResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1alphaTuningResponse();
      var od =
          api.GoogleCloudRecommendationengineV1alphaTuningResponse.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1alphaTuningResponse(
          od as api.GoogleCloudRecommendationengineV1alphaTuningResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1BigQuerySource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1BigQuerySource();
      var od =
          api.GoogleCloudRecommendationengineV1beta1BigQuerySource.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1BigQuerySource(
          od as api.GoogleCloudRecommendationengineV1beta1BigQuerySource);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1Catalog',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1Catalog();
      var od = api.GoogleCloudRecommendationengineV1beta1Catalog.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1Catalog(
          od as api.GoogleCloudRecommendationengineV1beta1Catalog);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CatalogInlineSource',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1CatalogInlineSource();
      var od = api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1CatalogInlineSource(
          od as api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1CatalogItem',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1CatalogItem();
      var od = api.GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1CatalogItem(
          od as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy();
      var od =
          api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(od
          as api
              .GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig();
      var od = api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig(od
          as api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest();
      var od =
          api.GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest(
          od as api
              .GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1EventDetail',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1EventDetail();
      var od = api.GoogleCloudRecommendationengineV1beta1EventDetail.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1EventDetail(
          od as api.GoogleCloudRecommendationengineV1beta1EventDetail);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1FeatureMap',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
      var od = api.GoogleCloudRecommendationengineV1beta1FeatureMap.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1FeatureMap(
          od as api.GoogleCloudRecommendationengineV1beta1FeatureMap);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1FeatureMapFloatList',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList();
      var od = api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(
          od as api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1FeatureMapStringList',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList();
      var od = api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(
          od as api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1GcsSource',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1GcsSource();
      var od = api.GoogleCloudRecommendationengineV1beta1GcsSource.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1GcsSource(
          od as api.GoogleCloudRecommendationengineV1beta1GcsSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1Image', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1Image();
      var od =
          api.GoogleCloudRecommendationengineV1beta1Image.fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1Image(
          od as api.GoogleCloudRecommendationengineV1beta1Image);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest(od
          as api
              .GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse(od
          as api
              .GoogleCloudRecommendationengineV1beta1ImportCatalogItemsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportErrorsConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(
          od as api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1ImportMetadata();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ImportMetadata.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ImportMetadata(
          od as api.GoogleCloudRecommendationengineV1beta1ImportMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest();
      var od = api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest(od
          as api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ImportUserEventsResponse(od
          as api
              .GoogleCloudRecommendationengineV1beta1ImportUserEventsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1InputConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1InputConfig();
      var od = api.GoogleCloudRecommendationengineV1beta1InputConfig.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1InputConfig(
          od as api.GoogleCloudRecommendationengineV1beta1InputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse(od
          as api
              .GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListCatalogsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1ListCatalogsResponse();
      var od = api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ListCatalogsResponse(
          od as api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse(
          od as api
              .GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ListUserEventsResponse();
      var od = api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ListUserEventsResponse(od
          as api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1PredictRequest();
      var od =
          api.GoogleCloudRecommendationengineV1beta1PredictRequest.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PredictRequest(
          od as api.GoogleCloudRecommendationengineV1beta1PredictRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1PredictResponse();
      var od =
          api.GoogleCloudRecommendationengineV1beta1PredictResponse.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PredictResponse(
          od as api.GoogleCloudRecommendationengineV1beta1PredictResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult();
      var od =
          api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
          od as api
              .GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration();
      var od =
          api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(od
          as api
              .GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductCatalogItem',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1ProductCatalogItem();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ProductCatalogItem(
          od as api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(od
          as api
              .GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange(od
          as api
              .GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1ProductDetail();
      var od = api.GoogleCloudRecommendationengineV1beta1ProductDetail.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ProductDetail(
          od as api.GoogleCloudRecommendationengineV1beta1ProductDetail);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductEventDetail',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1ProductEventDetail();
      var od =
          api.GoogleCloudRecommendationengineV1beta1ProductEventDetail.fromJson(
              o.toJson());
      checkGoogleCloudRecommendationengineV1beta1ProductEventDetail(
          od as api.GoogleCloudRecommendationengineV1beta1ProductEventDetail);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PurchaseTransaction',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1PurchaseTransaction();
      var od = api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PurchaseTransaction(
          od as api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata();
      var od = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata(od
          as api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest();
      var od = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest(od
          as api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse();
      var od = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse(od
          as api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata();
      var od =
          api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata(od
          as api
              .GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest();
      var od = api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest(od
          as api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse();
      var od =
          api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse
              .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse(od
          as api
              .GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1UserEvent',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1UserEvent();
      var od = api.GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1UserEvent(
          od as api.GoogleCloudRecommendationengineV1beta1UserEvent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1UserEventImportSummary',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1UserEventImportSummary();
      var od = api.GoogleCloudRecommendationengineV1beta1UserEventImportSummary
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1UserEventImportSummary(od
          as api.GoogleCloudRecommendationengineV1beta1UserEventImportSummary);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1UserEventInlineSource',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudRecommendationengineV1beta1UserEventInlineSource();
      var od = api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource
          .fromJson(o.toJson());
      checkGoogleCloudRecommendationengineV1beta1UserEventInlineSource(od
          as api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1UserInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudRecommendationengineV1beta1UserInfo();
      var od = api.GoogleCloudRecommendationengineV1beta1UserInfo.fromJson(
          o.toJson());
      checkGoogleCloudRecommendationengineV1beta1UserInfo(
          od as api.GoogleCloudRecommendationengineV1beta1UserInfo);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock).projects.locations.catalogs;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListCatalogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1ListCatalogsResponse(response
            as api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock).projects.locations.catalogs;
      var arg_request = buildGoogleCloudRecommendationengineV1beta1Catalog();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommendationengineV1beta1Catalog.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1Catalog(
            obj as api.GoogleCloudRecommendationengineV1beta1Catalog);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1Catalog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1Catalog(
            response as api.GoogleCloudRecommendationengineV1beta1Catalog);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsCatalogItemsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1CatalogItem();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(
            obj as api.GoogleCloudRecommendationengineV1beta1CatalogItem);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(
            response as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(
            response as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
      })));
    });

    unittest.test('method--import', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest(obj
            as api
                .GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse(
            response as api
                .GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1CatalogItem();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(
            obj as api.GoogleCloudRecommendationengineV1beta1CatalogItem);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(
            response as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresOperationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .operations;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresPlacementsResource', () {
    unittest.test('method--predict', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .placements;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1PredictRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1PredictRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1PredictRequest(
            obj as api.GoogleCloudRecommendationengineV1beta1PredictRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1PredictResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .predict(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1PredictResponse(response
            as api.GoogleCloudRecommendationengineV1beta1PredictResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .predictionApiKeyRegistrations;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest(
            obj as api
                .GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(
            response as api
                .GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .predictionApiKeyRegistrations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .predictionApiKeyRegistrations;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse(
            response as api
                .GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresUserEventsResource', () {
    unittest.test('method--collect', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      var arg_parent = 'foo';
      var arg_ets = 'foo';
      var arg_uri = 'foo';
      var arg_userEvent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["ets"]!.first,
          unittest.equals(arg_ets),
        );
        unittest.expect(
          queryMap["uri"]!.first,
          unittest.equals(arg_uri),
        );
        unittest.expect(
          queryMap["userEvent"]!.first,
          unittest.equals(arg_userEvent),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .collect(arg_parent,
              ets: arg_ets,
              uri: arg_uri,
              userEvent: arg_userEvent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
      })));
    });

    unittest.test('method--import', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest(obj
            as api
                .GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListUserEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1ListUserEventsResponse(
            response as api
                .GoogleCloudRecommendationengineV1beta1ListUserEventsResponse);
      })));
    });

    unittest.test('method--purge', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest(obj
            as api
                .GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .purge(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--rejoin', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      var arg_request =
          buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest(obj
            as api
                .GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rejoin(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--write', () {
      var mock = HttpServerMock();
      var res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      var arg_request = buildGoogleCloudRecommendationengineV1beta1UserEvent();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1UserEvent(
            obj as api.GoogleCloudRecommendationengineV1beta1UserEvent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1UserEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .write(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudRecommendationengineV1beta1UserEvent(
            response as api.GoogleCloudRecommendationengineV1beta1UserEvent);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsOperationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.RecommendationsAIApi(mock).projects.locations.catalogs.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.RecommendationsAIApi(mock).projects.locations.catalogs.operations;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });
}
