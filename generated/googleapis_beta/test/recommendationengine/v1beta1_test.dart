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

import 'package:googleapis_beta/recommendationengine/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object?> buildUnnamed0() => {
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

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed1() => [
      buildUnnamed0(),
      buildUnnamed0(),
    ];

void checkUnnamed1(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed0(o[0]);
  checkUnnamed0(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  final o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed1();
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
    checkUnnamed1(o.extensions!);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1BigQuerySource = 0;
api.GoogleCloudRecommendationengineV1beta1BigQuerySource
    buildGoogleCloudRecommendationengineV1beta1BigQuerySource() {
  final o = api.GoogleCloudRecommendationengineV1beta1BigQuerySource();
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
  final o = api.GoogleCloudRecommendationengineV1beta1Catalog();
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
    checkGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig(
        o.catalogItemLevelConfig!);
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
    buildUnnamed2() => [
          buildGoogleCloudRecommendationengineV1beta1CatalogItem(),
          buildGoogleCloudRecommendationengineV1beta1CatalogItem(),
        ];

void checkUnnamed2(
    core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(o[0]);
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(o[1]);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource =
    0;
api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource
    buildGoogleCloudRecommendationengineV1beta1CatalogInlineSource() {
  final o = api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource <
      3) {
    o.catalogItems = buildUnnamed2();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogInlineSource(
    api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource <
      3) {
    checkUnnamed2(o.catalogItems!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogInlineSource--;
}

core.List<
        api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
    buildUnnamed3() => [
          buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(),
          buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(),
        ];

void checkUnnamed3(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[0]);
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[1]);
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1CatalogItem();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem < 3) {
    o.categoryHierarchies = buildUnnamed3();
    o.description = 'foo';
    o.id = 'foo';
    o.itemAttributes = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
    o.itemGroupId = 'foo';
    o.languageCode = 'foo';
    o.productMetadata =
        buildGoogleCloudRecommendationengineV1beta1ProductCatalogItem();
    o.tags = buildUnnamed4();
    o.title = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogItem(
    api.GoogleCloudRecommendationengineV1beta1CatalogItem o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem < 3) {
    checkUnnamed3(o.categoryHierarchies!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1FeatureMap(o.itemAttributes!);
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1ProductCatalogItem(
        o.productMetadata!);
    checkUnnamed4(o.tags!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItem--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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
  final o =
      api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy();
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy <
      3) {
    o.categories = buildUnnamed5();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(
    api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy o) {
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy <
      3) {
    checkUnnamed5(o.categories!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig =
    0;
api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
    buildGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig() {
  final o = api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig();
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
  final o = api
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
        o.predictionApiKeyRegistration!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1EventDetail();
  buildCounterGoogleCloudRecommendationengineV1beta1EventDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1EventDetail < 3) {
    o.eventAttributes = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
    o.experimentIds = buildUnnamed6();
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
    checkGoogleCloudRecommendationengineV1beta1FeatureMap(o.eventAttributes!);
    checkUnnamed6(o.experimentIds!);
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
    buildUnnamed7() => {
          'x':
              buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList(),
          'y':
              buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList(),
        };

void checkUnnamed7(
    core.Map<core.String,
            api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(o['x']!);
  checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(o['y']!);
}

core.Map<core.String,
        api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>
    buildUnnamed8() => {
          'x': buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(),
          'y': buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(),
        };

void checkUnnamed8(
    core.Map<core.String,
            api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(o['x']!);
  checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(o['y']!);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap = 0;
api.GoogleCloudRecommendationengineV1beta1FeatureMap
    buildGoogleCloudRecommendationengineV1beta1FeatureMap() {
  final o = api.GoogleCloudRecommendationengineV1beta1FeatureMap();
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap < 3) {
    o.categoricalFeatures = buildUnnamed7();
    o.numericalFeatures = buildUnnamed8();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1FeatureMap(
    api.GoogleCloudRecommendationengineV1beta1FeatureMap o) {
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap < 3) {
    checkUnnamed7(o.categoricalFeatures!);
    checkUnnamed8(o.numericalFeatures!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMap--;
}

core.List<core.double> buildUnnamed9() => [
      42.0,
      42.0,
    ];

void checkUnnamed9(core.List<core.double> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList();
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList <
      3) {
    o.value = buildUnnamed9();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(
    api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList o) {
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList <
      3) {
    checkUnnamed9(o.value!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapFloatList--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList();
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList <
      3) {
    o.value = buildUnnamed10();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(
    api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList o) {
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList <
      3) {
    checkUnnamed10(o.value!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1FeatureMapStringList--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1GcsSource();
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1GcsSource < 3) {
    o.inputUris = buildUnnamed11();
    o.jsonSchema = 'foo';
  }
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1GcsSource(
    api.GoogleCloudRecommendationengineV1beta1GcsSource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1GcsSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1GcsSource < 3) {
    checkUnnamed11(o.inputUris!);
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
  final o = api.GoogleCloudRecommendationengineV1beta1Image();
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
  final o =
      api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest();
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
        o.errorsConfig!);
    checkGoogleCloudRecommendationengineV1beta1InputConfig(o.inputConfig!);
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

core.int buildCounterGoogleCloudRecommendationengineV1beta1ImportErrorsConfig =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
    buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig() {
  final o = api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
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

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
    buildGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest() {
  final o = api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest();
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
        o.errorsConfig!);
    checkGoogleCloudRecommendationengineV1beta1InputConfig(o.inputConfig!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1InputConfig = 0;
api.GoogleCloudRecommendationengineV1beta1InputConfig
    buildGoogleCloudRecommendationengineV1beta1InputConfig() {
  final o = api.GoogleCloudRecommendationengineV1beta1InputConfig();
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
    checkGoogleCloudRecommendationengineV1beta1BigQuerySource(
        o.bigQuerySource!);
    checkGoogleCloudRecommendationengineV1beta1CatalogInlineSource(
        o.catalogInlineSource!);
    checkGoogleCloudRecommendationengineV1beta1GcsSource(o.gcsSource!);
    checkGoogleCloudRecommendationengineV1beta1UserEventInlineSource(
        o.userEventInlineSource!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1InputConfig--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem>
    buildUnnamed12() => [
          buildGoogleCloudRecommendationengineV1beta1CatalogItem(),
          buildGoogleCloudRecommendationengineV1beta1CatalogItem(),
        ];

void checkUnnamed12(
    core.List<api.GoogleCloudRecommendationengineV1beta1CatalogItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(o[0]);
  checkGoogleCloudRecommendationengineV1beta1CatalogItem(o[1]);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
    buildGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse() {
  final o =
      api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse <
      3) {
    o.catalogItems = buildUnnamed12();
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
    checkUnnamed12(o.catalogItems!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1Catalog> buildUnnamed13() =>
    [
      buildGoogleCloudRecommendationengineV1beta1Catalog(),
      buildGoogleCloudRecommendationengineV1beta1Catalog(),
    ];

void checkUnnamed13(
    core.List<api.GoogleCloudRecommendationengineV1beta1Catalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1Catalog(o[0]);
  checkGoogleCloudRecommendationengineV1beta1Catalog(o[1]);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse = 0;
api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
    buildGoogleCloudRecommendationengineV1beta1ListCatalogsResponse() {
  final o = api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse <
      3) {
    o.catalogs = buildUnnamed13();
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
    checkUnnamed13(o.catalogs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListCatalogsResponse--;
}

core.List<
        api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>
    buildUnnamed14() => [
          buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(),
          buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(),
        ];

void checkUnnamed14(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(o[0]);
  checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(o[1]);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
    buildGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse() {
  final o = api
      .GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.predictionApiKeyRegistrations = buildUnnamed14();
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
    checkUnnamed14(o.predictionApiKeyRegistrations!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent>
    buildUnnamed15() => [
          buildGoogleCloudRecommendationengineV1beta1UserEvent(),
          buildGoogleCloudRecommendationengineV1beta1UserEvent(),
        ];

void checkUnnamed15(
    core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1UserEvent(o[0]);
  checkGoogleCloudRecommendationengineV1beta1UserEvent(o[1]);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse =
    0;
api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
    buildGoogleCloudRecommendationengineV1beta1ListUserEventsResponse() {
  final o = api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.userEvents = buildUnnamed15();
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
    checkUnnamed15(o.userEvents!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ListUserEventsResponse--;
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1PredictRequest();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest < 3) {
    o.dryRun = true;
    o.filter = 'foo';
    o.labels = buildUnnamed16();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed17();
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
    checkUnnamed16(o.labels!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.params!);
    checkGoogleCloudRecommendationengineV1beta1UserEvent(o.userEvent!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictRequest--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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
    buildUnnamed20() => [
          buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(),
          buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(),
        ];

void checkUnnamed20(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
      o[0]);
  checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
      o[1]);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse = 0;
api.GoogleCloudRecommendationengineV1beta1PredictResponse
    buildGoogleCloudRecommendationengineV1beta1PredictResponse() {
  final o = api.GoogleCloudRecommendationengineV1beta1PredictResponse();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse < 3) {
    o.dryRun = true;
    o.itemsMissingInCatalog = buildUnnamed18();
    o.metadata = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.recommendationToken = 'foo';
    o.results = buildUnnamed20();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PredictResponse(
    api.GoogleCloudRecommendationengineV1beta1PredictResponse o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse < 3) {
    unittest.expect(o.dryRun!, unittest.isTrue);
    checkUnnamed18(o.itemsMissingInCatalog!);
    checkUnnamed19(o.metadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recommendationToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.results!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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
  final o = api
      .GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult();
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult <
      3) {
    o.id = 'foo';
    o.itemMetadata = buildUnnamed21();
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
    checkUnnamed21(o.itemMetadata!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration =
    0;
api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
    buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration() {
  final o =
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

core.Map<core.String, core.double> buildUnnamed22() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed22(core.Map<core.String, core.double> o) {
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

core.List<api.GoogleCloudRecommendationengineV1beta1Image> buildUnnamed23() => [
      buildGoogleCloudRecommendationengineV1beta1Image(),
      buildGoogleCloudRecommendationengineV1beta1Image(),
    ];

void checkUnnamed23(
    core.List<api.GoogleCloudRecommendationengineV1beta1Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1Image(o[0]);
  checkGoogleCloudRecommendationengineV1beta1Image(o[1]);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem =
    0;
api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem
    buildGoogleCloudRecommendationengineV1beta1ProductCatalogItem() {
  final o = api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductCatalogItem <
      3) {
    o.availableQuantity = 'foo';
    o.canonicalProductUri = 'foo';
    o.costs = buildUnnamed22();
    o.currencyCode = 'foo';
    o.exactPrice =
        buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice();
    o.images = buildUnnamed23();
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
    checkUnnamed22(o.costs!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(
        o.exactPrice!);
    checkUnnamed23(o.images!);
    checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange(
        o.priceRange!);
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
  final o =
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
  final o =
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
  final o = api.GoogleCloudRecommendationengineV1beta1ProductDetail();
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
    checkGoogleCloudRecommendationengineV1beta1FeatureMap(o.itemAttributes!);
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
    buildUnnamed24() => [
          buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(),
          buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(),
        ];

void checkUnnamed24(
    core.List<
            api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[0]);
  checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(o[1]);
}

core.List<api.GoogleCloudRecommendationengineV1beta1ProductDetail>
    buildUnnamed25() => [
          buildGoogleCloudRecommendationengineV1beta1ProductDetail(),
          buildGoogleCloudRecommendationengineV1beta1ProductDetail(),
        ];

void checkUnnamed25(
    core.List<api.GoogleCloudRecommendationengineV1beta1ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1ProductDetail(o[0]);
  checkGoogleCloudRecommendationengineV1beta1ProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail =
    0;
api.GoogleCloudRecommendationengineV1beta1ProductEventDetail
    buildGoogleCloudRecommendationengineV1beta1ProductEventDetail() {
  final o = api.GoogleCloudRecommendationengineV1beta1ProductEventDetail();
  buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail <
      3) {
    o.cartId = 'foo';
    o.listId = 'foo';
    o.pageCategories = buildUnnamed24();
    o.productDetails = buildUnnamed25();
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
    checkUnnamed24(o.pageCategories!);
    checkUnnamed25(o.productDetails!);
    checkGoogleCloudRecommendationengineV1beta1PurchaseTransaction(
        o.purchaseTransaction!);
    unittest.expect(
      o.searchQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRecommendationengineV1beta1ProductEventDetail--;
}

core.Map<core.String, core.double> buildUnnamed26() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed26(core.Map<core.String, core.double> o) {
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

core.Map<core.String, core.double> buildUnnamed27() => {
      'x': 42.0,
      'y': 42.0,
    };

void checkUnnamed27(core.Map<core.String, core.double> o) {
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
  final o = api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction();
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction <
      3) {
    o.costs = buildUnnamed26();
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.revenue = 42.0;
    o.taxes = buildUnnamed27();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1PurchaseTransaction(
    api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction o) {
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction <
      3) {
    checkUnnamed26(o.costs!);
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
    checkUnnamed27(o.taxes!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1PurchaseTransaction--;
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
    buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest() {
  final o = api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest();
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

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest =
    0;
api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
    buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest() {
  final o = api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest();
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

core.int buildCounterGoogleCloudRecommendationengineV1beta1UserEvent = 0;
api.GoogleCloudRecommendationengineV1beta1UserEvent
    buildGoogleCloudRecommendationengineV1beta1UserEvent() {
  final o = api.GoogleCloudRecommendationengineV1beta1UserEvent();
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
    checkGoogleCloudRecommendationengineV1beta1EventDetail(o.eventDetail!);
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
        o.productEventDetail!);
    checkGoogleCloudRecommendationengineV1beta1UserInfo(o.userInfo!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEvent--;
}

core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent>
    buildUnnamed28() => [
          buildGoogleCloudRecommendationengineV1beta1UserEvent(),
          buildGoogleCloudRecommendationengineV1beta1UserEvent(),
        ];

void checkUnnamed28(
    core.List<api.GoogleCloudRecommendationengineV1beta1UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRecommendationengineV1beta1UserEvent(o[0]);
  checkGoogleCloudRecommendationengineV1beta1UserEvent(o[1]);
}

core.int
    buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource = 0;
api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource
    buildGoogleCloudRecommendationengineV1beta1UserEventInlineSource() {
  final o = api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource();
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource <
      3) {
    o.userEvents = buildUnnamed28();
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource--;
  return o;
}

void checkGoogleCloudRecommendationengineV1beta1UserEventInlineSource(
    api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource o) {
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource++;
  if (buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource <
      3) {
    checkUnnamed28(o.userEvents!);
  }
  buildCounterGoogleCloudRecommendationengineV1beta1UserEventInlineSource--;
}

core.int buildCounterGoogleCloudRecommendationengineV1beta1UserInfo = 0;
api.GoogleCloudRecommendationengineV1beta1UserInfo
    buildGoogleCloudRecommendationengineV1beta1UserInfo() {
  final o = api.GoogleCloudRecommendationengineV1beta1UserInfo();
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

core.List<api.GoogleLongrunningOperation> buildUnnamed29() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed29(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed29();
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
    checkUnnamed29(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed30();
    o.name = 'foo';
    o.response = buildUnnamed31();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed33() => [
      buildUnnamed32(),
      buildUnnamed32(),
    ];

void checkUnnamed33(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed32(o[0]);
  checkUnnamed32(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed33();
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
    checkUnnamed33(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiHttpBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1BigQuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1BigQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1BigQuerySource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1BigQuerySource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1Catalog',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1Catalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1Catalog.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1Catalog(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CatalogInlineSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1CatalogInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1CatalogInlineSource
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1CatalogInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1CatalogItem',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1CatalogItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1CatalogItem(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1EventDetail',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1EventDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1EventDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1EventDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1FeatureMap',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1FeatureMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1FeatureMap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1FeatureMap(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1FeatureMapFloatList',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1FeatureMapFloatList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1FeatureMapFloatList(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1FeatureMapStringList',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1FeatureMapStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1FeatureMapStringList
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1FeatureMapStringList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1GcsSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1Image();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1Image.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1Image(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportErrorsConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1ImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ImportErrorsConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ImportErrorsConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1InputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1InputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListCatalogsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ListCatalogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ListCatalogsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ListUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ListUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ListUserEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1PredictRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1PredictRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1PredictRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1PredictResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1PredictResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1PredictResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductCatalogItem',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1ProductCatalogItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ProductCatalogItem(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1ProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ProductDetail.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ProductDetail(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1ProductEventDetail',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1ProductEventDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1ProductEventDetail.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1ProductEventDetail(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PurchaseTransaction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1PurchaseTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1PurchaseTransaction
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1PurchaseTransaction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1UserEvent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1UserEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1UserEvent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRecommendationengineV1beta1UserEventInlineSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRecommendationengineV1beta1UserEventInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1UserEventInlineSource
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1UserEventInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRecommendationengineV1beta1UserInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRecommendationengineV1beta1UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRecommendationengineV1beta1UserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRecommendationengineV1beta1UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock).projects.locations.catalogs;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListCatalogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1ListCatalogsResponse(response
          as api.GoogleCloudRecommendationengineV1beta1ListCatalogsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRecommendationengineV1beta1Catalog();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRecommendationengineV1beta1Catalog.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1Catalog(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1Catalog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1Catalog(
          response as api.GoogleCloudRecommendationengineV1beta1Catalog);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsCatalogItemsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1CatalogItem();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1CatalogItem(
          response as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1CatalogItem(
          response as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse(
          response as api
              .GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .catalogItems;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1CatalogItem();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1CatalogItem(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1CatalogItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1CatalogItem(
          response as api.GoogleCloudRecommendationengineV1beta1CatalogItem);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresPlacementsResource', () {
    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .placements;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1PredictRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1PredictRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1PredictRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1PredictResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.predict(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1PredictResponse(response
          as api.GoogleCloudRecommendationengineV1beta1PredictResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .predictionApiKeyRegistrations;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration(
          response as api
              .GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .predictionApiKeyRegistrations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .predictionApiKeyRegistrations;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse(
          response as api
              .GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCatalogsEventStoresUserEventsResource', () {
    unittest.test('method--collect', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      final arg_parent = 'foo';
      final arg_ets = 'foo';
      final arg_uri = 'foo';
      final arg_userEvent = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['ets']!.first,
          unittest.equals(arg_ets),
        );
        unittest.expect(
          queryMap['uri']!.first,
          unittest.equals(arg_uri),
        );
        unittest.expect(
          queryMap['userEvent']!.first,
          unittest.equals(arg_userEvent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.collect(arg_parent,
          ets: arg_ets,
          uri: arg_uri,
          userEvent: arg_userEvent,
          $fields: arg_$fields);
      checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1ImportUserEventsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(
            buildGoogleCloudRecommendationengineV1beta1ListUserEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1ListUserEventsResponse(response
          as api.GoogleCloudRecommendationengineV1beta1ListUserEventsResponse);
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.purge(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--rejoin', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rejoin(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res = api.RecommendationsAIApi(mock)
          .projects
          .locations
          .catalogs
          .eventStores
          .userEvents;
      final arg_request =
          buildGoogleCloudRecommendationengineV1beta1UserEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRecommendationengineV1beta1UserEvent(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildGoogleCloudRecommendationengineV1beta1UserEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.write(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRecommendationengineV1beta1UserEvent(
          response as api.GoogleCloudRecommendationengineV1beta1UserEvent);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommendationsAIApi(mock).projects.locations.catalogs.operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.RecommendationsAIApi(mock).projects.locations.catalogs.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });
}
