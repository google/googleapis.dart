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

import 'package:googleapis/retail/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object?> buildUnnamed0() => {
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

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed1(o.extensions!);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2AddCatalogAttributeRequest
buildGoogleCloudRetailV2AddCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2AddCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest < 3) {
    o.catalogAttribute = buildGoogleCloudRetailV2CatalogAttribute();
  }
  buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2AddCatalogAttributeRequest(
  api.GoogleCloudRetailV2AddCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest < 3) {
    checkGoogleCloudRetailV2CatalogAttribute(o.catalogAttribute!);
  }
  buildCounterGoogleCloudRetailV2AddCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2AddControlRequest = 0;
api.GoogleCloudRetailV2AddControlRequest
buildGoogleCloudRetailV2AddControlRequest() {
  final o = api.GoogleCloudRetailV2AddControlRequest();
  buildCounterGoogleCloudRetailV2AddControlRequest++;
  if (buildCounterGoogleCloudRetailV2AddControlRequest < 3) {
    o.controlId = 'foo';
  }
  buildCounterGoogleCloudRetailV2AddControlRequest--;
  return o;
}

void checkGoogleCloudRetailV2AddControlRequest(
  api.GoogleCloudRetailV2AddControlRequest o,
) {
  buildCounterGoogleCloudRetailV2AddControlRequest++;
  if (buildCounterGoogleCloudRetailV2AddControlRequest < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2AddControlRequest--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2AddFulfillmentPlacesRequest
buildGoogleCloudRetailV2AddFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2AddFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest < 3) {
    o.addTime = 'foo';
    o.allowMissing = true;
    o.placeIds = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2AddFulfillmentPlacesRequest(
  api.GoogleCloudRetailV2AddFulfillmentPlacesRequest o,
) {
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest < 3) {
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed2(o.placeIds!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest--;
}

core.List<api.GoogleCloudRetailV2LocalInventory> buildUnnamed3() => [
  buildGoogleCloudRetailV2LocalInventory(),
  buildGoogleCloudRetailV2LocalInventory(),
];

void checkUnnamed3(core.List<api.GoogleCloudRetailV2LocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2LocalInventory(o[0]);
  checkGoogleCloudRetailV2LocalInventory(o[1]);
}

core.int buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest = 0;
api.GoogleCloudRetailV2AddLocalInventoriesRequest
buildGoogleCloudRetailV2AddLocalInventoriesRequest() {
  final o = api.GoogleCloudRetailV2AddLocalInventoriesRequest();
  buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest < 3) {
    o.addMask = 'foo';
    o.addTime = 'foo';
    o.allowMissing = true;
    o.localInventories = buildUnnamed3();
  }
  buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest--;
  return o;
}

void checkGoogleCloudRetailV2AddLocalInventoriesRequest(
  api.GoogleCloudRetailV2AddLocalInventoriesRequest o,
) {
  buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest < 3) {
    unittest.expect(o.addMask!, unittest.equals('foo'));
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed3(o.localInventories!);
  }
  buildCounterGoogleCloudRetailV2AddLocalInventoriesRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2CatalogAttribute>
buildUnnamed4() => {
  'x': buildGoogleCloudRetailV2CatalogAttribute(),
  'y': buildGoogleCloudRetailV2CatalogAttribute(),
};

void checkUnnamed4(
  core.Map<core.String, api.GoogleCloudRetailV2CatalogAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CatalogAttribute(o['x']!);
  checkGoogleCloudRetailV2CatalogAttribute(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2AttributesConfig = 0;
api.GoogleCloudRetailV2AttributesConfig
buildGoogleCloudRetailV2AttributesConfig() {
  final o = api.GoogleCloudRetailV2AttributesConfig();
  buildCounterGoogleCloudRetailV2AttributesConfig++;
  if (buildCounterGoogleCloudRetailV2AttributesConfig < 3) {
    o.attributeConfigLevel = 'foo';
    o.catalogAttributes = buildUnnamed4();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2AttributesConfig--;
  return o;
}

void checkGoogleCloudRetailV2AttributesConfig(
  api.GoogleCloudRetailV2AttributesConfig o,
) {
  buildCounterGoogleCloudRetailV2AttributesConfig++;
  if (buildCounterGoogleCloudRetailV2AttributesConfig < 3) {
    unittest.expect(o.attributeConfigLevel!, unittest.equals('foo'));
    checkUnnamed4(o.catalogAttributes!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2AttributesConfig--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2Audience = 0;
api.GoogleCloudRetailV2Audience buildGoogleCloudRetailV2Audience() {
  final o = api.GoogleCloudRetailV2Audience();
  buildCounterGoogleCloudRetailV2Audience++;
  if (buildCounterGoogleCloudRetailV2Audience < 3) {
    o.ageGroups = buildUnnamed5();
    o.genders = buildUnnamed6();
  }
  buildCounterGoogleCloudRetailV2Audience--;
  return o;
}

void checkGoogleCloudRetailV2Audience(api.GoogleCloudRetailV2Audience o) {
  buildCounterGoogleCloudRetailV2Audience++;
  if (buildCounterGoogleCloudRetailV2Audience < 3) {
    checkUnnamed5(o.ageGroups!);
    checkUnnamed6(o.genders!);
  }
  buildCounterGoogleCloudRetailV2Audience--;
}

core.List<api.GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest>
buildUnnamed7() => [
  buildGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest(),
  buildGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest(),
];

void checkUnnamed7(
  core.List<api.GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest(o[0]);
  checkGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest = 0;
api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest
buildGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest() {
  final o =
      api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest();
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest++;
  if (buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest <
      3) {
    o.requests = buildUnnamed7();
  }
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest--;
  return o;
}

void checkGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest(
  api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest o,
) {
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest++;
  if (buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest <
      3) {
    checkUnnamed7(o.requests!);
  }
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest--;
}

core.List<api.GoogleCloudRetailV2GenerativeQuestionConfig> buildUnnamed8() => [
  buildGoogleCloudRetailV2GenerativeQuestionConfig(),
  buildGoogleCloudRetailV2GenerativeQuestionConfig(),
];

void checkUnnamed8(
  core.List<api.GoogleCloudRetailV2GenerativeQuestionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2GenerativeQuestionConfig(o[0]);
  checkGoogleCloudRetailV2GenerativeQuestionConfig(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse = 0;
api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse
buildGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse() {
  final o =
      api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse();
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse <
      3) {
    o.generativeQuestionConfigs = buildUnnamed8();
  }
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse(
  api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse <
      3) {
    checkUnnamed8(o.generativeQuestionConfigs!);
  }
  buildCounterGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse--;
}

core.int buildCounterGoogleCloudRetailV2BigQuerySource = 0;
api.GoogleCloudRetailV2BigQuerySource buildGoogleCloudRetailV2BigQuerySource() {
  final o = api.GoogleCloudRetailV2BigQuerySource();
  buildCounterGoogleCloudRetailV2BigQuerySource++;
  if (buildCounterGoogleCloudRetailV2BigQuerySource < 3) {
    o.dataSchema = 'foo';
    o.datasetId = 'foo';
    o.gcsStagingDir = 'foo';
    o.partitionDate = buildGoogleTypeDate();
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterGoogleCloudRetailV2BigQuerySource--;
  return o;
}

void checkGoogleCloudRetailV2BigQuerySource(
  api.GoogleCloudRetailV2BigQuerySource o,
) {
  buildCounterGoogleCloudRetailV2BigQuerySource++;
  if (buildCounterGoogleCloudRetailV2BigQuerySource < 3) {
    unittest.expect(o.dataSchema!, unittest.equals('foo'));
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.gcsStagingDir!, unittest.equals('foo'));
    checkGoogleTypeDate(o.partitionDate!);
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.tableId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2BigQuerySource--;
}

core.int buildCounterGoogleCloudRetailV2Catalog = 0;
api.GoogleCloudRetailV2Catalog buildGoogleCloudRetailV2Catalog() {
  final o = api.GoogleCloudRetailV2Catalog();
  buildCounterGoogleCloudRetailV2Catalog++;
  if (buildCounterGoogleCloudRetailV2Catalog < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.productLevelConfig = buildGoogleCloudRetailV2ProductLevelConfig();
  }
  buildCounterGoogleCloudRetailV2Catalog--;
  return o;
}

void checkGoogleCloudRetailV2Catalog(api.GoogleCloudRetailV2Catalog o) {
  buildCounterGoogleCloudRetailV2Catalog++;
  if (buildCounterGoogleCloudRetailV2Catalog < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2ProductLevelConfig(o.productLevelConfig!);
  }
  buildCounterGoogleCloudRetailV2Catalog--;
}

core.int buildCounterGoogleCloudRetailV2CatalogAttribute = 0;
api.GoogleCloudRetailV2CatalogAttribute
buildGoogleCloudRetailV2CatalogAttribute() {
  final o = api.GoogleCloudRetailV2CatalogAttribute();
  buildCounterGoogleCloudRetailV2CatalogAttribute++;
  if (buildCounterGoogleCloudRetailV2CatalogAttribute < 3) {
    o.dynamicFacetableOption = 'foo';
    o.exactSearchableOption = 'foo';
    o.facetConfig = buildGoogleCloudRetailV2CatalogAttributeFacetConfig();
    o.inUse = true;
    o.indexableOption = 'foo';
    o.key = 'foo';
    o.retrievableOption = 'foo';
    o.searchableOption = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2CatalogAttribute--;
  return o;
}

void checkGoogleCloudRetailV2CatalogAttribute(
  api.GoogleCloudRetailV2CatalogAttribute o,
) {
  buildCounterGoogleCloudRetailV2CatalogAttribute++;
  if (buildCounterGoogleCloudRetailV2CatalogAttribute < 3) {
    unittest.expect(o.dynamicFacetableOption!, unittest.equals('foo'));
    unittest.expect(o.exactSearchableOption!, unittest.equals('foo'));
    checkGoogleCloudRetailV2CatalogAttributeFacetConfig(o.facetConfig!);
    unittest.expect(o.inUse!, unittest.isTrue);
    unittest.expect(o.indexableOption!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.retrievableOption!, unittest.equals('foo'));
    unittest.expect(o.searchableOption!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2CatalogAttribute--;
}

core.List<api.GoogleCloudRetailV2Interval> buildUnnamed9() => [
  buildGoogleCloudRetailV2Interval(),
  buildGoogleCloudRetailV2Interval(),
];

void checkUnnamed9(core.List<api.GoogleCloudRetailV2Interval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Interval(o[0]);
  checkGoogleCloudRetailV2Interval(o[1]);
}

core.List<api.GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues>
buildUnnamed10() => [
  buildGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues(),
  buildGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues(),
];

void checkUnnamed10(
  core.List<
    api.GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues(o[0]);
  checkGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues(o[1]);
}

core.List<api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue>
buildUnnamed11() => [
  buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue(),
  buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue(),
];

void checkUnnamed11(
  core.List<api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue(o[0]);
  checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue(o[1]);
}

core.int buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig = 0;
api.GoogleCloudRetailV2CatalogAttributeFacetConfig
buildGoogleCloudRetailV2CatalogAttributeFacetConfig() {
  final o = api.GoogleCloudRetailV2CatalogAttributeFacetConfig();
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig < 3) {
    o.facetIntervals = buildUnnamed9();
    o.ignoredFacetValues = buildUnnamed10();
    o.mergedFacet =
        buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet();
    o.mergedFacetValues = buildUnnamed11();
    o.rerankConfig =
        buildGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig();
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig--;
  return o;
}

void checkGoogleCloudRetailV2CatalogAttributeFacetConfig(
  api.GoogleCloudRetailV2CatalogAttributeFacetConfig o,
) {
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig < 3) {
    checkUnnamed9(o.facetIntervals!);
    checkUnnamed10(o.ignoredFacetValues!);
    checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet(
      o.mergedFacet!,
    );
    checkUnnamed11(o.mergedFacetValues!);
    checkGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig(
      o.rerankConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfig--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues =
    0;
api.GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues
buildGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues() {
  final o =
      api.GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues();
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues <
      3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.values = buildUnnamed12();
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues--;
  return o;
}

void checkGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues(
  api.GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues o,
) {
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues <
      3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkUnnamed12(o.values!);
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues--;
}

core.int buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet =
    0;
api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet
buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet() {
  final o = api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet();
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet <
      3) {
    o.mergedFacetKey = 'foo';
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet--;
  return o;
}

void checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet(
  api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet o,
) {
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet <
      3) {
    unittest.expect(o.mergedFacetKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue = 0;
api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue
buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue() {
  final o =
      api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue();
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue <
      3) {
    o.mergedValue = 'foo';
    o.values = buildUnnamed13();
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue(
  api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue o,
) {
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue <
      3) {
    unittest.expect(o.mergedValue!, unittest.equals('foo'));
    checkUnnamed13(o.values!);
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig = 0;
api.GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig
buildGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig() {
  final o = api.GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig();
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig <
      3) {
    o.facetValues = buildUnnamed14();
    o.rerankFacet = true;
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig--;
  return o;
}

void checkGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig(
  api.GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig o,
) {
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig++;
  if (buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig <
      3) {
    checkUnnamed14(o.facetValues!);
    unittest.expect(o.rerankFacet!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig--;
}

core.int buildCounterGoogleCloudRetailV2CollectUserEventRequest = 0;
api.GoogleCloudRetailV2CollectUserEventRequest
buildGoogleCloudRetailV2CollectUserEventRequest() {
  final o = api.GoogleCloudRetailV2CollectUserEventRequest();
  buildCounterGoogleCloudRetailV2CollectUserEventRequest++;
  if (buildCounterGoogleCloudRetailV2CollectUserEventRequest < 3) {
    o.ets = 'foo';
    o.prebuiltRule = 'foo';
    o.rawJson = 'foo';
    o.uri = 'foo';
    o.userEvent = 'foo';
  }
  buildCounterGoogleCloudRetailV2CollectUserEventRequest--;
  return o;
}

void checkGoogleCloudRetailV2CollectUserEventRequest(
  api.GoogleCloudRetailV2CollectUserEventRequest o,
) {
  buildCounterGoogleCloudRetailV2CollectUserEventRequest++;
  if (buildCounterGoogleCloudRetailV2CollectUserEventRequest < 3) {
    unittest.expect(o.ets!, unittest.equals('foo'));
    unittest.expect(o.prebuiltRule!, unittest.equals('foo'));
    unittest.expect(o.rawJson!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.userEvent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2CollectUserEventRequest--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2ColorInfo = 0;
api.GoogleCloudRetailV2ColorInfo buildGoogleCloudRetailV2ColorInfo() {
  final o = api.GoogleCloudRetailV2ColorInfo();
  buildCounterGoogleCloudRetailV2ColorInfo++;
  if (buildCounterGoogleCloudRetailV2ColorInfo < 3) {
    o.colorFamilies = buildUnnamed15();
    o.colors = buildUnnamed16();
  }
  buildCounterGoogleCloudRetailV2ColorInfo--;
  return o;
}

void checkGoogleCloudRetailV2ColorInfo(api.GoogleCloudRetailV2ColorInfo o) {
  buildCounterGoogleCloudRetailV2ColorInfo++;
  if (buildCounterGoogleCloudRetailV2ColorInfo < 3) {
    checkUnnamed15(o.colorFamilies!);
    checkUnnamed16(o.colors!);
  }
  buildCounterGoogleCloudRetailV2ColorInfo--;
}

core.Map<
  core.String,
  api.GoogleCloudRetailV2CompleteQueryResponseAttributeResult
>
buildUnnamed17() => {
  'x': buildGoogleCloudRetailV2CompleteQueryResponseAttributeResult(),
  'y': buildGoogleCloudRetailV2CompleteQueryResponseAttributeResult(),
};

void checkUnnamed17(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2CompleteQueryResponseAttributeResult
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CompleteQueryResponseAttributeResult(o['x']!);
  checkGoogleCloudRetailV2CompleteQueryResponseAttributeResult(o['y']!);
}

core.List<api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult>
buildUnnamed18() => [
  buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult(),
  buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult(),
];

void checkUnnamed18(
  core.List<api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(o[0]);
  checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(o[1]);
}

core.List<api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult>
buildUnnamed19() => [
  buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(),
  buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(),
];

void checkUnnamed19(
  core.List<api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(o[0]);
  checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2CompleteQueryResponse = 0;
api.GoogleCloudRetailV2CompleteQueryResponse
buildGoogleCloudRetailV2CompleteQueryResponse() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponse();
  buildCounterGoogleCloudRetailV2CompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponse < 3) {
    o.attributeResults = buildUnnamed17();
    o.attributionToken = 'foo';
    o.completionResults = buildUnnamed18();
    o.recentSearchResults = buildUnnamed19();
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponse--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponse(
  api.GoogleCloudRetailV2CompleteQueryResponse o,
) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponse < 3) {
    checkUnnamed17(o.attributeResults!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkUnnamed18(o.completionResults!);
    checkUnnamed19(o.recentSearchResults!);
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponse--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult =
    0;
api.GoogleCloudRetailV2CompleteQueryResponseAttributeResult
buildGoogleCloudRetailV2CompleteQueryResponseAttributeResult() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponseAttributeResult();
  buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult < 3) {
    o.suggestions = buildUnnamed20();
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponseAttributeResult(
  api.GoogleCloudRetailV2CompleteQueryResponseAttributeResult o,
) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult < 3) {
    checkUnnamed20(o.suggestions!);
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseAttributeResult--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
buildUnnamed21() => {
  'x': buildGoogleCloudRetailV2CustomAttribute(),
  'y': buildGoogleCloudRetailV2CustomAttribute(),
};

void checkUnnamed21(
  core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult =
    0;
api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult
buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult();
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult <
      3) {
    o.attributes = buildUnnamed21();
    o.suggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(
  api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult o,
) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult <
      3) {
    checkUnnamed21(o.attributes!);
    unittest.expect(o.suggestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult--;
}

core.int
buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult = 0;
api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult();
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult <
      3) {
    o.recentSearch = 'foo';
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(
  api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult o,
) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult <
      3) {
    unittest.expect(o.recentSearch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult--;
}

core.int buildCounterGoogleCloudRetailV2CompletionConfig = 0;
api.GoogleCloudRetailV2CompletionConfig
buildGoogleCloudRetailV2CompletionConfig() {
  final o = api.GoogleCloudRetailV2CompletionConfig();
  buildCounterGoogleCloudRetailV2CompletionConfig++;
  if (buildCounterGoogleCloudRetailV2CompletionConfig < 3) {
    o.allowlistInputConfig =
        buildGoogleCloudRetailV2CompletionDataInputConfig();
    o.autoLearning = true;
    o.denylistInputConfig = buildGoogleCloudRetailV2CompletionDataInputConfig();
    o.lastAllowlistImportOperation = 'foo';
    o.lastDenylistImportOperation = 'foo';
    o.lastSuggestionsImportOperation = 'foo';
    o.matchingOrder = 'foo';
    o.maxSuggestions = 42;
    o.minPrefixLength = 42;
    o.name = 'foo';
    o.suggestionsInputConfig =
        buildGoogleCloudRetailV2CompletionDataInputConfig();
  }
  buildCounterGoogleCloudRetailV2CompletionConfig--;
  return o;
}

void checkGoogleCloudRetailV2CompletionConfig(
  api.GoogleCloudRetailV2CompletionConfig o,
) {
  buildCounterGoogleCloudRetailV2CompletionConfig++;
  if (buildCounterGoogleCloudRetailV2CompletionConfig < 3) {
    checkGoogleCloudRetailV2CompletionDataInputConfig(o.allowlistInputConfig!);
    unittest.expect(o.autoLearning!, unittest.isTrue);
    checkGoogleCloudRetailV2CompletionDataInputConfig(o.denylistInputConfig!);
    unittest.expect(o.lastAllowlistImportOperation!, unittest.equals('foo'));
    unittest.expect(o.lastDenylistImportOperation!, unittest.equals('foo'));
    unittest.expect(o.lastSuggestionsImportOperation!, unittest.equals('foo'));
    unittest.expect(o.matchingOrder!, unittest.equals('foo'));
    unittest.expect(o.maxSuggestions!, unittest.equals(42));
    unittest.expect(o.minPrefixLength!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2CompletionDataInputConfig(
      o.suggestionsInputConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2CompletionConfig--;
}

core.int buildCounterGoogleCloudRetailV2CompletionDataInputConfig = 0;
api.GoogleCloudRetailV2CompletionDataInputConfig
buildGoogleCloudRetailV2CompletionDataInputConfig() {
  final o = api.GoogleCloudRetailV2CompletionDataInputConfig();
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2CompletionDataInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2BigQuerySource();
  }
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2CompletionDataInputConfig(
  api.GoogleCloudRetailV2CompletionDataInputConfig o,
) {
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2CompletionDataInputConfig < 3) {
    checkGoogleCloudRetailV2BigQuerySource(o.bigQuerySource!);
  }
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2CompletionDetail = 0;
api.GoogleCloudRetailV2CompletionDetail
buildGoogleCloudRetailV2CompletionDetail() {
  final o = api.GoogleCloudRetailV2CompletionDetail();
  buildCounterGoogleCloudRetailV2CompletionDetail++;
  if (buildCounterGoogleCloudRetailV2CompletionDetail < 3) {
    o.completionAttributionToken = 'foo';
    o.selectedPosition = 42;
    o.selectedSuggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2CompletionDetail--;
  return o;
}

void checkGoogleCloudRetailV2CompletionDetail(
  api.GoogleCloudRetailV2CompletionDetail o,
) {
  buildCounterGoogleCloudRetailV2CompletionDetail++;
  if (buildCounterGoogleCloudRetailV2CompletionDetail < 3) {
    unittest.expect(o.completionAttributionToken!, unittest.equals('foo'));
    unittest.expect(o.selectedPosition!, unittest.equals(42));
    unittest.expect(o.selectedSuggestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2CompletionDetail--;
}

core.List<api.GoogleCloudRetailV2ConditionTimeRange> buildUnnamed22() => [
  buildGoogleCloudRetailV2ConditionTimeRange(),
  buildGoogleCloudRetailV2ConditionTimeRange(),
];

void checkUnnamed22(core.List<api.GoogleCloudRetailV2ConditionTimeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ConditionTimeRange(o[0]);
  checkGoogleCloudRetailV2ConditionTimeRange(o[1]);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2ConditionQueryTerm> buildUnnamed24() => [
  buildGoogleCloudRetailV2ConditionQueryTerm(),
  buildGoogleCloudRetailV2ConditionQueryTerm(),
];

void checkUnnamed24(core.List<api.GoogleCloudRetailV2ConditionQueryTerm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ConditionQueryTerm(o[0]);
  checkGoogleCloudRetailV2ConditionQueryTerm(o[1]);
}

core.int buildCounterGoogleCloudRetailV2Condition = 0;
api.GoogleCloudRetailV2Condition buildGoogleCloudRetailV2Condition() {
  final o = api.GoogleCloudRetailV2Condition();
  buildCounterGoogleCloudRetailV2Condition++;
  if (buildCounterGoogleCloudRetailV2Condition < 3) {
    o.activeTimeRange = buildUnnamed22();
    o.pageCategories = buildUnnamed23();
    o.queryTerms = buildUnnamed24();
  }
  buildCounterGoogleCloudRetailV2Condition--;
  return o;
}

void checkGoogleCloudRetailV2Condition(api.GoogleCloudRetailV2Condition o) {
  buildCounterGoogleCloudRetailV2Condition++;
  if (buildCounterGoogleCloudRetailV2Condition < 3) {
    checkUnnamed22(o.activeTimeRange!);
    checkUnnamed23(o.pageCategories!);
    checkUnnamed24(o.queryTerms!);
  }
  buildCounterGoogleCloudRetailV2Condition--;
}

core.int buildCounterGoogleCloudRetailV2ConditionQueryTerm = 0;
api.GoogleCloudRetailV2ConditionQueryTerm
buildGoogleCloudRetailV2ConditionQueryTerm() {
  final o = api.GoogleCloudRetailV2ConditionQueryTerm();
  buildCounterGoogleCloudRetailV2ConditionQueryTerm++;
  if (buildCounterGoogleCloudRetailV2ConditionQueryTerm < 3) {
    o.fullMatch = true;
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConditionQueryTerm--;
  return o;
}

void checkGoogleCloudRetailV2ConditionQueryTerm(
  api.GoogleCloudRetailV2ConditionQueryTerm o,
) {
  buildCounterGoogleCloudRetailV2ConditionQueryTerm++;
  if (buildCounterGoogleCloudRetailV2ConditionQueryTerm < 3) {
    unittest.expect(o.fullMatch!, unittest.isTrue);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConditionQueryTerm--;
}

core.int buildCounterGoogleCloudRetailV2ConditionTimeRange = 0;
api.GoogleCloudRetailV2ConditionTimeRange
buildGoogleCloudRetailV2ConditionTimeRange() {
  final o = api.GoogleCloudRetailV2ConditionTimeRange();
  buildCounterGoogleCloudRetailV2ConditionTimeRange++;
  if (buildCounterGoogleCloudRetailV2ConditionTimeRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConditionTimeRange--;
  return o;
}

void checkGoogleCloudRetailV2ConditionTimeRange(
  api.GoogleCloudRetailV2ConditionTimeRange o,
) {
  buildCounterGoogleCloudRetailV2ConditionTimeRange++;
  if (buildCounterGoogleCloudRetailV2ConditionTimeRange < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConditionTimeRange--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2Control = 0;
api.GoogleCloudRetailV2Control buildGoogleCloudRetailV2Control() {
  final o = api.GoogleCloudRetailV2Control();
  buildCounterGoogleCloudRetailV2Control++;
  if (buildCounterGoogleCloudRetailV2Control < 3) {
    o.associatedServingConfigIds = buildUnnamed25();
    o.displayName = 'foo';
    o.name = 'foo';
    o.rule = buildGoogleCloudRetailV2Rule();
    o.searchSolutionUseCase = buildUnnamed26();
    o.solutionTypes = buildUnnamed27();
  }
  buildCounterGoogleCloudRetailV2Control--;
  return o;
}

void checkGoogleCloudRetailV2Control(api.GoogleCloudRetailV2Control o) {
  buildCounterGoogleCloudRetailV2Control++;
  if (buildCounterGoogleCloudRetailV2Control < 3) {
    checkUnnamed25(o.associatedServingConfigIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2Rule(o.rule!);
    checkUnnamed26(o.searchSolutionUseCase!);
    checkUnnamed27(o.solutionTypes!);
  }
  buildCounterGoogleCloudRetailV2Control--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig = 0;
api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig
buildGoogleCloudRetailV2ConversationalSearchCustomizationConfig() {
  final o = api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig();
  buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig <
      3) {
    o.catalog = 'foo';
    o.intentClassificationConfig =
        buildGoogleCloudRetailV2IntentClassificationConfig();
    o.retailerDisplayName = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchCustomizationConfig(
  api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig <
      3) {
    unittest.expect(o.catalog!, unittest.equals('foo'));
    checkGoogleCloudRetailV2IntentClassificationConfig(
      o.intentClassificationConfig!,
    );
    unittest.expect(o.retailerDisplayName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchCustomizationConfig--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2SafetySetting> buildUnnamed29() => [
  buildGoogleCloudRetailV2SafetySetting(),
  buildGoogleCloudRetailV2SafetySetting(),
];

void checkUnnamed29(core.List<api.GoogleCloudRetailV2SafetySetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SafetySetting(o[0]);
  checkGoogleCloudRetailV2SafetySetting(o[1]);
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2ConversationalSearchRequest = 0;
api.GoogleCloudRetailV2ConversationalSearchRequest
buildGoogleCloudRetailV2ConversationalSearchRequest() {
  final o = api.GoogleCloudRetailV2ConversationalSearchRequest();
  buildCounterGoogleCloudRetailV2ConversationalSearchRequest++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequest < 3) {
    o.branch = 'foo';
    o.conversationId = 'foo';
    o.conversationalFilteringSpec =
        buildGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec();
    o.pageCategories = buildUnnamed28();
    o.query = 'foo';
    o.safetySettings = buildUnnamed29();
    o.searchParams =
        buildGoogleCloudRetailV2ConversationalSearchRequestSearchParams();
    o.userInfo = buildGoogleCloudRetailV2UserInfo();
    o.userLabels = buildUnnamed30();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequest--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchRequest(
  api.GoogleCloudRetailV2ConversationalSearchRequest o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchRequest++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequest < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec(
      o.conversationalFilteringSpec!,
    );
    checkUnnamed28(o.pageCategories!);
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed29(o.safetySettings!);
    checkGoogleCloudRetailV2ConversationalSearchRequestSearchParams(
      o.searchParams!,
    );
    checkGoogleCloudRetailV2UserInfo(o.userInfo!);
    checkUnnamed30(o.userLabels!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequest--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec =
    0;
api.GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec
buildGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec() {
  final o =
      api.GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec();
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec <
      3) {
    o.conversationalFilteringMode = 'foo';
    o.enableConversationalFiltering = true;
    o.userAnswer =
        buildGoogleCloudRetailV2ConversationalSearchRequestUserAnswer();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec--;
  return o;
}

void
checkGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec(
  api.GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec
  o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec <
      3) {
    unittest.expect(o.conversationalFilteringMode!, unittest.equals('foo'));
    unittest.expect(o.enableConversationalFiltering!, unittest.isTrue);
    checkGoogleCloudRetailV2ConversationalSearchRequestUserAnswer(
      o.userAnswer!,
    );
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams = 0;
api.GoogleCloudRetailV2ConversationalSearchRequestSearchParams
buildGoogleCloudRetailV2ConversationalSearchRequestSearchParams() {
  final o = api.GoogleCloudRetailV2ConversationalSearchRequestSearchParams();
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams <
      3) {
    o.boostSpec = buildGoogleCloudRetailV2SearchRequestBoostSpec();
    o.canonicalFilter = 'foo';
    o.filter = 'foo';
    o.sortBy = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchRequestSearchParams(
  api.GoogleCloudRetailV2ConversationalSearchRequestSearchParams o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams <
      3) {
    checkGoogleCloudRetailV2SearchRequestBoostSpec(o.boostSpec!);
    unittest.expect(o.canonicalFilter!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.sortBy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestSearchParams--;
}

core.int buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer =
    0;
api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswer
buildGoogleCloudRetailV2ConversationalSearchRequestUserAnswer() {
  final o = api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswer();
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer <
      3) {
    o.selectedAnswer =
        buildGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer();
    o.textAnswer = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchRequestUserAnswer(
  api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswer o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer <
      3) {
    checkGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer(
      o.selectedAnswer!,
    );
    unittest.expect(o.textAnswer!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswer--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer =
    0;
api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer
buildGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer() {
  final o =
      api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer();
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer <
      3) {
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer(
  api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer <
      3) {
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer--;
}

core.List<api.GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch>
buildUnnamed31() => [
  buildGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch(),
  buildGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch(),
];

void checkUnnamed31(
  core.List<api.GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch(o[0]);
  checkGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch(o[1]);
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2ConversationalSearchResponse = 0;
api.GoogleCloudRetailV2ConversationalSearchResponse
buildGoogleCloudRetailV2ConversationalSearchResponse() {
  final o = api.GoogleCloudRetailV2ConversationalSearchResponse();
  buildCounterGoogleCloudRetailV2ConversationalSearchResponse++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponse < 3) {
    o.conversationId = 'foo';
    o.conversationalFilteringResult =
        buildGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult();
    o.conversationalTextResponse = 'foo';
    o.followupQuestion =
        buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion();
    o.refinedSearch = buildUnnamed31();
    o.state = 'foo';
    o.userQueryTypes = buildUnnamed32();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponse--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchResponse(
  api.GoogleCloudRetailV2ConversationalSearchResponse o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchResponse++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponse < 3) {
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult(
      o.conversationalFilteringResult!,
    );
    unittest.expect(o.conversationalTextResponse!, unittest.equals('foo'));
    checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion(
      o.followupQuestion!,
    );
    checkUnnamed31(o.refinedSearch!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed32(o.userQueryTypes!);
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponse--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult =
    0;
api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult
buildGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult() {
  final o =
      api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult();
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult <
      3) {
    o.additionalFilter =
        buildGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter();
    o.followupQuestion =
        buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult--;
  return o;
}

void
checkGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult(
  api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult
  o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult <
      3) {
    checkGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter(
      o.additionalFilter!,
    );
    checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion(
      o.followupQuestion!,
    );
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter =
    0;
api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter
buildGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter() {
  final o =
      api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter();
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter <
      3) {
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter--;
  return o;
}

void
checkGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter(
  api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter
  o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter <
      3) {
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter--;
}

core.List<
  api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer
>
buildUnnamed33() => [
  buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer(),
  buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer(),
];

void checkUnnamed33(
  core.List<
    api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer(
    o[0],
  );
  checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer(
    o[1],
  );
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion = 0;
api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion
buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion() {
  final o =
      api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion();
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion <
      3) {
    o.followupQuestion = 'foo';
    o.suggestedAnswers = buildUnnamed33();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion(
  api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion <
      3) {
    unittest.expect(o.followupQuestion!, unittest.equals('foo'));
    checkUnnamed33(o.suggestedAnswers!);
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer =
    0;
api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer
buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer() {
  final o =
      api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer();
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer <
      3) {
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer(
  api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer <
      3) {
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer--;
}

core.int
buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch = 0;
api.GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch
buildGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch() {
  final o = api.GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch();
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch <
      3) {
    o.query = 'foo';
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch--;
  return o;
}

void checkGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch(
  api.GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch o,
) {
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch++;
  if (buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch <
      3) {
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch--;
}

core.List<core.double> buildUnnamed34() => [42.0, 42.0];

void checkUnnamed34(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2CustomAttribute = 0;
api.GoogleCloudRetailV2CustomAttribute
buildGoogleCloudRetailV2CustomAttribute() {
  final o = api.GoogleCloudRetailV2CustomAttribute();
  buildCounterGoogleCloudRetailV2CustomAttribute++;
  if (buildCounterGoogleCloudRetailV2CustomAttribute < 3) {
    o.indexable = true;
    o.numbers = buildUnnamed34();
    o.searchable = true;
    o.text = buildUnnamed35();
  }
  buildCounterGoogleCloudRetailV2CustomAttribute--;
  return o;
}

void checkGoogleCloudRetailV2CustomAttribute(
  api.GoogleCloudRetailV2CustomAttribute o,
) {
  buildCounterGoogleCloudRetailV2CustomAttribute++;
  if (buildCounterGoogleCloudRetailV2CustomAttribute < 3) {
    unittest.expect(o.indexable!, unittest.isTrue);
    checkUnnamed34(o.numbers!);
    unittest.expect(o.searchable!, unittest.isTrue);
    checkUnnamed35(o.text!);
  }
  buildCounterGoogleCloudRetailV2CustomAttribute--;
}

core.List<core.double> buildUnnamed36() => [42.0, 42.0];

void checkUnnamed36(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudRetailV2DoubleList = 0;
api.GoogleCloudRetailV2DoubleList buildGoogleCloudRetailV2DoubleList() {
  final o = api.GoogleCloudRetailV2DoubleList();
  buildCounterGoogleCloudRetailV2DoubleList++;
  if (buildCounterGoogleCloudRetailV2DoubleList < 3) {
    o.values = buildUnnamed36();
  }
  buildCounterGoogleCloudRetailV2DoubleList--;
  return o;
}

void checkGoogleCloudRetailV2DoubleList(api.GoogleCloudRetailV2DoubleList o) {
  buildCounterGoogleCloudRetailV2DoubleList++;
  if (buildCounterGoogleCloudRetailV2DoubleList < 3) {
    checkUnnamed36(o.values!);
  }
  buildCounterGoogleCloudRetailV2DoubleList--;
}

core.int buildCounterGoogleCloudRetailV2ExperimentInfo = 0;
api.GoogleCloudRetailV2ExperimentInfo buildGoogleCloudRetailV2ExperimentInfo() {
  final o = api.GoogleCloudRetailV2ExperimentInfo();
  buildCounterGoogleCloudRetailV2ExperimentInfo++;
  if (buildCounterGoogleCloudRetailV2ExperimentInfo < 3) {
    o.experiment = 'foo';
    o.servingConfigExperiment =
        buildGoogleCloudRetailV2ExperimentInfoServingConfigExperiment();
  }
  buildCounterGoogleCloudRetailV2ExperimentInfo--;
  return o;
}

void checkGoogleCloudRetailV2ExperimentInfo(
  api.GoogleCloudRetailV2ExperimentInfo o,
) {
  buildCounterGoogleCloudRetailV2ExperimentInfo++;
  if (buildCounterGoogleCloudRetailV2ExperimentInfo < 3) {
    unittest.expect(o.experiment!, unittest.equals('foo'));
    checkGoogleCloudRetailV2ExperimentInfoServingConfigExperiment(
      o.servingConfigExperiment!,
    );
  }
  buildCounterGoogleCloudRetailV2ExperimentInfo--;
}

core.int buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment =
    0;
api.GoogleCloudRetailV2ExperimentInfoServingConfigExperiment
buildGoogleCloudRetailV2ExperimentInfoServingConfigExperiment() {
  final o = api.GoogleCloudRetailV2ExperimentInfoServingConfigExperiment();
  buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment++;
  if (buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment <
      3) {
    o.experimentServingConfig = 'foo';
    o.originalServingConfig = 'foo';
  }
  buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment--;
  return o;
}

void checkGoogleCloudRetailV2ExperimentInfoServingConfigExperiment(
  api.GoogleCloudRetailV2ExperimentInfoServingConfigExperiment o,
) {
  buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment++;
  if (buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment <
      3) {
    unittest.expect(o.experimentServingConfig!, unittest.equals('foo'));
    unittest.expect(o.originalServingConfig!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ExperimentInfoServingConfigExperiment--;
}

core.int buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest = 0;
api.GoogleCloudRetailV2ExportAnalyticsMetricsRequest
buildGoogleCloudRetailV2ExportAnalyticsMetricsRequest() {
  final o = api.GoogleCloudRetailV2ExportAnalyticsMetricsRequest();
  buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest++;
  if (buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2OutputConfig();
  }
  buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest--;
  return o;
}

void checkGoogleCloudRetailV2ExportAnalyticsMetricsRequest(
  api.GoogleCloudRetailV2ExportAnalyticsMetricsRequest o,
) {
  buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest++;
  if (buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2ExportAnalyticsMetricsRequest--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2FulfillmentInfo = 0;
api.GoogleCloudRetailV2FulfillmentInfo
buildGoogleCloudRetailV2FulfillmentInfo() {
  final o = api.GoogleCloudRetailV2FulfillmentInfo();
  buildCounterGoogleCloudRetailV2FulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2FulfillmentInfo < 3) {
    o.placeIds = buildUnnamed37();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2FulfillmentInfo--;
  return o;
}

void checkGoogleCloudRetailV2FulfillmentInfo(
  api.GoogleCloudRetailV2FulfillmentInfo o,
) {
  buildCounterGoogleCloudRetailV2FulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2FulfillmentInfo < 3) {
    checkUnnamed37(o.placeIds!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2FulfillmentInfo--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2GcsSource = 0;
api.GoogleCloudRetailV2GcsSource buildGoogleCloudRetailV2GcsSource() {
  final o = api.GoogleCloudRetailV2GcsSource();
  buildCounterGoogleCloudRetailV2GcsSource++;
  if (buildCounterGoogleCloudRetailV2GcsSource < 3) {
    o.dataSchema = 'foo';
    o.inputUris = buildUnnamed38();
  }
  buildCounterGoogleCloudRetailV2GcsSource--;
  return o;
}

void checkGoogleCloudRetailV2GcsSource(api.GoogleCloudRetailV2GcsSource o) {
  buildCounterGoogleCloudRetailV2GcsSource++;
  if (buildCounterGoogleCloudRetailV2GcsSource < 3) {
    unittest.expect(o.dataSchema!, unittest.equals('foo'));
    checkUnnamed38(o.inputUris!);
  }
  buildCounterGoogleCloudRetailV2GcsSource--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2GenerativeQuestionConfig = 0;
api.GoogleCloudRetailV2GenerativeQuestionConfig
buildGoogleCloudRetailV2GenerativeQuestionConfig() {
  final o = api.GoogleCloudRetailV2GenerativeQuestionConfig();
  buildCounterGoogleCloudRetailV2GenerativeQuestionConfig++;
  if (buildCounterGoogleCloudRetailV2GenerativeQuestionConfig < 3) {
    o.allowedInConversation = true;
    o.catalog = 'foo';
    o.exampleValues = buildUnnamed39();
    o.facet = 'foo';
    o.finalQuestion = 'foo';
    o.frequency = 42.0;
    o.generatedQuestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2GenerativeQuestionConfig--;
  return o;
}

void checkGoogleCloudRetailV2GenerativeQuestionConfig(
  api.GoogleCloudRetailV2GenerativeQuestionConfig o,
) {
  buildCounterGoogleCloudRetailV2GenerativeQuestionConfig++;
  if (buildCounterGoogleCloudRetailV2GenerativeQuestionConfig < 3) {
    unittest.expect(o.allowedInConversation!, unittest.isTrue);
    unittest.expect(o.catalog!, unittest.equals('foo'));
    checkUnnamed39(o.exampleValues!);
    unittest.expect(o.facet!, unittest.equals('foo'));
    unittest.expect(o.finalQuestion!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals(42.0));
    unittest.expect(o.generatedQuestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2GenerativeQuestionConfig--;
}

core.int buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig = 0;
api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig
buildGoogleCloudRetailV2GenerativeQuestionsFeatureConfig() {
  final o = api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig();
  buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig++;
  if (buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig < 3) {
    o.catalog = 'foo';
    o.featureEnabled = true;
    o.minimumProducts = 42;
  }
  buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig--;
  return o;
}

void checkGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(
  api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig o,
) {
  buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig++;
  if (buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig < 3) {
    unittest.expect(o.catalog!, unittest.equals('foo'));
    unittest.expect(o.featureEnabled!, unittest.isTrue);
    unittest.expect(o.minimumProducts!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2GenerativeQuestionsFeatureConfig--;
}

core.int buildCounterGoogleCloudRetailV2GetDefaultBranchResponse = 0;
api.GoogleCloudRetailV2GetDefaultBranchResponse
buildGoogleCloudRetailV2GetDefaultBranchResponse() {
  final o = api.GoogleCloudRetailV2GetDefaultBranchResponse();
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2GetDefaultBranchResponse < 3) {
    o.branch = 'foo';
    o.note = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse--;
  return o;
}

void checkGoogleCloudRetailV2GetDefaultBranchResponse(
  api.GoogleCloudRetailV2GetDefaultBranchResponse o,
) {
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2GetDefaultBranchResponse < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.note!, unittest.equals('foo'));
    unittest.expect(o.setTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse--;
}

core.int buildCounterGoogleCloudRetailV2Image = 0;
api.GoogleCloudRetailV2Image buildGoogleCloudRetailV2Image() {
  final o = api.GoogleCloudRetailV2Image();
  buildCounterGoogleCloudRetailV2Image++;
  if (buildCounterGoogleCloudRetailV2Image < 3) {
    o.height = 42;
    o.uri = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudRetailV2Image--;
  return o;
}

void checkGoogleCloudRetailV2Image(api.GoogleCloudRetailV2Image o) {
  buildCounterGoogleCloudRetailV2Image++;
  if (buildCounterGoogleCloudRetailV2Image < 3) {
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2Image--;
}

core.int buildCounterGoogleCloudRetailV2ImportCompletionDataRequest = 0;
api.GoogleCloudRetailV2ImportCompletionDataRequest
buildGoogleCloudRetailV2ImportCompletionDataRequest() {
  final o = api.GoogleCloudRetailV2ImportCompletionDataRequest();
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2ImportCompletionDataRequest < 3) {
    o.inputConfig = buildGoogleCloudRetailV2CompletionDataInputConfig();
    o.notificationPubsubTopic = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest--;
  return o;
}

void checkGoogleCloudRetailV2ImportCompletionDataRequest(
  api.GoogleCloudRetailV2ImportCompletionDataRequest o,
) {
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2ImportCompletionDataRequest < 3) {
    checkGoogleCloudRetailV2CompletionDataInputConfig(o.inputConfig!);
    unittest.expect(o.notificationPubsubTopic!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest--;
}

core.int buildCounterGoogleCloudRetailV2ImportErrorsConfig = 0;
api.GoogleCloudRetailV2ImportErrorsConfig
buildGoogleCloudRetailV2ImportErrorsConfig() {
  final o = api.GoogleCloudRetailV2ImportErrorsConfig();
  buildCounterGoogleCloudRetailV2ImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2ImportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2ImportErrorsConfig(
  api.GoogleCloudRetailV2ImportErrorsConfig o,
) {
  buildCounterGoogleCloudRetailV2ImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2ImportErrorsConfig < 3) {
    unittest.expect(o.gcsPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2ImportProductsRequest = 0;
api.GoogleCloudRetailV2ImportProductsRequest
buildGoogleCloudRetailV2ImportProductsRequest() {
  final o = api.GoogleCloudRetailV2ImportProductsRequest();
  buildCounterGoogleCloudRetailV2ImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportProductsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2ProductInputConfig();
    o.notificationPubsubTopic = 'foo';
    o.reconciliationMode = 'foo';
    o.requestId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2ImportProductsRequest(
  api.GoogleCloudRetailV2ImportProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2ImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportProductsRequest < 3) {
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2ProductInputConfig(o.inputConfig!);
    unittest.expect(o.notificationPubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.reconciliationMode!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ImportProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2ImportUserEventsRequest = 0;
api.GoogleCloudRetailV2ImportUserEventsRequest
buildGoogleCloudRetailV2ImportUserEventsRequest() {
  final o = api.GoogleCloudRetailV2ImportUserEventsRequest();
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportUserEventsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2UserEventInputConfig();
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2ImportUserEventsRequest(
  api.GoogleCloudRetailV2ImportUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportUserEventsRequest < 3) {
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2UserEventInputConfig(o.inputConfig!);
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2IntentClassificationConfigExample>
buildUnnamed42() => [
  buildGoogleCloudRetailV2IntentClassificationConfigExample(),
  buildGoogleCloudRetailV2IntentClassificationConfigExample(),
];

void checkUnnamed42(
  core.List<api.GoogleCloudRetailV2IntentClassificationConfigExample> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2IntentClassificationConfigExample(o[0]);
  checkGoogleCloudRetailV2IntentClassificationConfigExample(o[1]);
}

core.int buildCounterGoogleCloudRetailV2IntentClassificationConfig = 0;
api.GoogleCloudRetailV2IntentClassificationConfig
buildGoogleCloudRetailV2IntentClassificationConfig() {
  final o = api.GoogleCloudRetailV2IntentClassificationConfig();
  buildCounterGoogleCloudRetailV2IntentClassificationConfig++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfig < 3) {
    o.blocklistKeywords = buildUnnamed40();
    o.disabledIntentTypes = buildUnnamed41();
    o.example = buildUnnamed42();
    o.inlineSource =
        buildGoogleCloudRetailV2IntentClassificationConfigInlineSource();
    o.modelPreamble = 'foo';
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfig--;
  return o;
}

void checkGoogleCloudRetailV2IntentClassificationConfig(
  api.GoogleCloudRetailV2IntentClassificationConfig o,
) {
  buildCounterGoogleCloudRetailV2IntentClassificationConfig++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfig < 3) {
    checkUnnamed40(o.blocklistKeywords!);
    checkUnnamed41(o.disabledIntentTypes!);
    checkUnnamed42(o.example!);
    checkGoogleCloudRetailV2IntentClassificationConfigInlineSource(
      o.inlineSource!,
    );
    unittest.expect(o.modelPreamble!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfig--;
}

core.int buildCounterGoogleCloudRetailV2IntentClassificationConfigExample = 0;
api.GoogleCloudRetailV2IntentClassificationConfigExample
buildGoogleCloudRetailV2IntentClassificationConfigExample() {
  final o = api.GoogleCloudRetailV2IntentClassificationConfigExample();
  buildCounterGoogleCloudRetailV2IntentClassificationConfigExample++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfigExample < 3) {
    o.classifiedPositive = true;
    o.intentType = 'foo';
    o.query = 'foo';
    o.reason = 'foo';
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfigExample--;
  return o;
}

void checkGoogleCloudRetailV2IntentClassificationConfigExample(
  api.GoogleCloudRetailV2IntentClassificationConfigExample o,
) {
  buildCounterGoogleCloudRetailV2IntentClassificationConfigExample++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfigExample < 3) {
    unittest.expect(o.classifiedPositive!, unittest.isTrue);
    unittest.expect(o.intentType!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfigExample--;
}

core.int
buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent = 0;
api.GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent
buildGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent() {
  final o =
      api.GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent();
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent <
      3) {
    o.intentType = 'foo';
    o.operation = 'foo';
    o.query = 'foo';
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent--;
  return o;
}

void checkGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent(
  api.GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent o,
) {
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent <
      3) {
    unittest.expect(o.intentType!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent--;
}

core.List<api.GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent>
buildUnnamed43() => [
  buildGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent(),
  buildGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent(),
];

void checkUnnamed43(
  core.List<api.GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent(o[0]);
  checkGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent(o[1]);
}

core.int buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource =
    0;
api.GoogleCloudRetailV2IntentClassificationConfigInlineSource
buildGoogleCloudRetailV2IntentClassificationConfigInlineSource() {
  final o = api.GoogleCloudRetailV2IntentClassificationConfigInlineSource();
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource <
      3) {
    o.inlineForceIntents = buildUnnamed43();
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2IntentClassificationConfigInlineSource(
  api.GoogleCloudRetailV2IntentClassificationConfigInlineSource o,
) {
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource++;
  if (buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource <
      3) {
    checkUnnamed43(o.inlineForceIntents!);
  }
  buildCounterGoogleCloudRetailV2IntentClassificationConfigInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2Interval = 0;
api.GoogleCloudRetailV2Interval buildGoogleCloudRetailV2Interval() {
  final o = api.GoogleCloudRetailV2Interval();
  buildCounterGoogleCloudRetailV2Interval++;
  if (buildCounterGoogleCloudRetailV2Interval < 3) {
    o.exclusiveMaximum = 42.0;
    o.exclusiveMinimum = 42.0;
    o.maximum = 42.0;
    o.minimum = 42.0;
  }
  buildCounterGoogleCloudRetailV2Interval--;
  return o;
}

void checkGoogleCloudRetailV2Interval(api.GoogleCloudRetailV2Interval o) {
  buildCounterGoogleCloudRetailV2Interval++;
  if (buildCounterGoogleCloudRetailV2Interval < 3) {
    unittest.expect(o.exclusiveMaximum!, unittest.equals(42.0));
    unittest.expect(o.exclusiveMinimum!, unittest.equals(42.0));
    unittest.expect(o.maximum!, unittest.equals(42.0));
    unittest.expect(o.minimum!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRetailV2Interval--;
}

core.List<api.GoogleCloudRetailV2Catalog> buildUnnamed44() => [
  buildGoogleCloudRetailV2Catalog(),
  buildGoogleCloudRetailV2Catalog(),
];

void checkUnnamed44(core.List<api.GoogleCloudRetailV2Catalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Catalog(o[0]);
  checkGoogleCloudRetailV2Catalog(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListCatalogsResponse = 0;
api.GoogleCloudRetailV2ListCatalogsResponse
buildGoogleCloudRetailV2ListCatalogsResponse() {
  final o = api.GoogleCloudRetailV2ListCatalogsResponse();
  buildCounterGoogleCloudRetailV2ListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2ListCatalogsResponse < 3) {
    o.catalogs = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2ListCatalogsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListCatalogsResponse(
  api.GoogleCloudRetailV2ListCatalogsResponse o,
) {
  buildCounterGoogleCloudRetailV2ListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2ListCatalogsResponse < 3) {
    checkUnnamed44(o.catalogs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ListCatalogsResponse--;
}

core.List<api.GoogleCloudRetailV2Control> buildUnnamed45() => [
  buildGoogleCloudRetailV2Control(),
  buildGoogleCloudRetailV2Control(),
];

void checkUnnamed45(core.List<api.GoogleCloudRetailV2Control> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Control(o[0]);
  checkGoogleCloudRetailV2Control(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListControlsResponse = 0;
api.GoogleCloudRetailV2ListControlsResponse
buildGoogleCloudRetailV2ListControlsResponse() {
  final o = api.GoogleCloudRetailV2ListControlsResponse();
  buildCounterGoogleCloudRetailV2ListControlsResponse++;
  if (buildCounterGoogleCloudRetailV2ListControlsResponse < 3) {
    o.controls = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2ListControlsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListControlsResponse(
  api.GoogleCloudRetailV2ListControlsResponse o,
) {
  buildCounterGoogleCloudRetailV2ListControlsResponse++;
  if (buildCounterGoogleCloudRetailV2ListControlsResponse < 3) {
    checkUnnamed45(o.controls!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ListControlsResponse--;
}

core.List<api.GoogleCloudRetailV2GenerativeQuestionConfig> buildUnnamed46() => [
  buildGoogleCloudRetailV2GenerativeQuestionConfig(),
  buildGoogleCloudRetailV2GenerativeQuestionConfig(),
];

void checkUnnamed46(
  core.List<api.GoogleCloudRetailV2GenerativeQuestionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2GenerativeQuestionConfig(o[0]);
  checkGoogleCloudRetailV2GenerativeQuestionConfig(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse =
    0;
api.GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse
buildGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse() {
  final o = api.GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse();
  buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse <
      3) {
    o.generativeQuestionConfigs = buildUnnamed46();
  }
  buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse(
  api.GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse <
      3) {
    checkUnnamed46(o.generativeQuestionConfigs!);
  }
  buildCounterGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse--;
}

core.List<api.GoogleCloudRetailV2Model> buildUnnamed47() => [
  buildGoogleCloudRetailV2Model(),
  buildGoogleCloudRetailV2Model(),
];

void checkUnnamed47(core.List<api.GoogleCloudRetailV2Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Model(o[0]);
  checkGoogleCloudRetailV2Model(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListModelsResponse = 0;
api.GoogleCloudRetailV2ListModelsResponse
buildGoogleCloudRetailV2ListModelsResponse() {
  final o = api.GoogleCloudRetailV2ListModelsResponse();
  buildCounterGoogleCloudRetailV2ListModelsResponse++;
  if (buildCounterGoogleCloudRetailV2ListModelsResponse < 3) {
    o.models = buildUnnamed47();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2ListModelsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListModelsResponse(
  api.GoogleCloudRetailV2ListModelsResponse o,
) {
  buildCounterGoogleCloudRetailV2ListModelsResponse++;
  if (buildCounterGoogleCloudRetailV2ListModelsResponse < 3) {
    checkUnnamed47(o.models!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ListModelsResponse--;
}

core.List<api.GoogleCloudRetailV2Product> buildUnnamed48() => [
  buildGoogleCloudRetailV2Product(),
  buildGoogleCloudRetailV2Product(),
];

void checkUnnamed48(core.List<api.GoogleCloudRetailV2Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Product(o[0]);
  checkGoogleCloudRetailV2Product(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListProductsResponse = 0;
api.GoogleCloudRetailV2ListProductsResponse
buildGoogleCloudRetailV2ListProductsResponse() {
  final o = api.GoogleCloudRetailV2ListProductsResponse();
  buildCounterGoogleCloudRetailV2ListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed48();
  }
  buildCounterGoogleCloudRetailV2ListProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListProductsResponse(
  api.GoogleCloudRetailV2ListProductsResponse o,
) {
  buildCounterGoogleCloudRetailV2ListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ListProductsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed48(o.products!);
  }
  buildCounterGoogleCloudRetailV2ListProductsResponse--;
}

core.List<api.GoogleCloudRetailV2ServingConfig> buildUnnamed49() => [
  buildGoogleCloudRetailV2ServingConfig(),
  buildGoogleCloudRetailV2ServingConfig(),
];

void checkUnnamed49(core.List<api.GoogleCloudRetailV2ServingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ServingConfig(o[0]);
  checkGoogleCloudRetailV2ServingConfig(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListServingConfigsResponse = 0;
api.GoogleCloudRetailV2ListServingConfigsResponse
buildGoogleCloudRetailV2ListServingConfigsResponse() {
  final o = api.GoogleCloudRetailV2ListServingConfigsResponse();
  buildCounterGoogleCloudRetailV2ListServingConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2ListServingConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.servingConfigs = buildUnnamed49();
  }
  buildCounterGoogleCloudRetailV2ListServingConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListServingConfigsResponse(
  api.GoogleCloudRetailV2ListServingConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2ListServingConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2ListServingConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed49(o.servingConfigs!);
  }
  buildCounterGoogleCloudRetailV2ListServingConfigsResponse--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
buildUnnamed50() => {
  'x': buildGoogleCloudRetailV2CustomAttribute(),
  'y': buildGoogleCloudRetailV2CustomAttribute(),
};

void checkUnnamed50(
  core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2LocalInventory = 0;
api.GoogleCloudRetailV2LocalInventory buildGoogleCloudRetailV2LocalInventory() {
  final o = api.GoogleCloudRetailV2LocalInventory();
  buildCounterGoogleCloudRetailV2LocalInventory++;
  if (buildCounterGoogleCloudRetailV2LocalInventory < 3) {
    o.attributes = buildUnnamed50();
    o.fulfillmentTypes = buildUnnamed51();
    o.placeId = 'foo';
    o.priceInfo = buildGoogleCloudRetailV2PriceInfo();
  }
  buildCounterGoogleCloudRetailV2LocalInventory--;
  return o;
}

void checkGoogleCloudRetailV2LocalInventory(
  api.GoogleCloudRetailV2LocalInventory o,
) {
  buildCounterGoogleCloudRetailV2LocalInventory++;
  if (buildCounterGoogleCloudRetailV2LocalInventory < 3) {
    checkUnnamed50(o.attributes!);
    checkUnnamed51(o.fulfillmentTypes!);
    unittest.expect(o.placeId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2PriceInfo(o.priceInfo!);
  }
  buildCounterGoogleCloudRetailV2LocalInventory--;
}

core.List<api.GoogleCloudRetailV2ModelServingConfigList> buildUnnamed52() => [
  buildGoogleCloudRetailV2ModelServingConfigList(),
  buildGoogleCloudRetailV2ModelServingConfigList(),
];

void checkUnnamed52(
  core.List<api.GoogleCloudRetailV2ModelServingConfigList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ModelServingConfigList(o[0]);
  checkGoogleCloudRetailV2ModelServingConfigList(o[1]);
}

core.int buildCounterGoogleCloudRetailV2Model = 0;
api.GoogleCloudRetailV2Model buildGoogleCloudRetailV2Model() {
  final o = api.GoogleCloudRetailV2Model();
  buildCounterGoogleCloudRetailV2Model++;
  if (buildCounterGoogleCloudRetailV2Model < 3) {
    o.createTime = 'foo';
    o.dataState = 'foo';
    o.displayName = 'foo';
    o.filteringOption = 'foo';
    o.lastTuneTime = 'foo';
    o.modelFeaturesConfig = buildGoogleCloudRetailV2ModelModelFeaturesConfig();
    o.name = 'foo';
    o.optimizationObjective = 'foo';
    o.periodicTuningState = 'foo';
    o.servingConfigLists = buildUnnamed52();
    o.servingState = 'foo';
    o.trainingState = 'foo';
    o.tuningOperation = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2Model--;
  return o;
}

void checkGoogleCloudRetailV2Model(api.GoogleCloudRetailV2Model o) {
  buildCounterGoogleCloudRetailV2Model++;
  if (buildCounterGoogleCloudRetailV2Model < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dataState!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filteringOption!, unittest.equals('foo'));
    unittest.expect(o.lastTuneTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2ModelModelFeaturesConfig(o.modelFeaturesConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.optimizationObjective!, unittest.equals('foo'));
    unittest.expect(o.periodicTuningState!, unittest.equals('foo'));
    checkUnnamed52(o.servingConfigLists!);
    unittest.expect(o.servingState!, unittest.equals('foo'));
    unittest.expect(o.trainingState!, unittest.equals('foo'));
    unittest.expect(o.tuningOperation!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2Model--;
}

core.int
buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig = 0;
api.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig
buildGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig() {
  final o =
      api.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig();
  buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig <
      3) {
    o.contextProductsType = 'foo';
  }
  buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig--;
  return o;
}

void checkGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig(
  api.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig o,
) {
  buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig <
      3) {
    unittest.expect(o.contextProductsType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig--;
}

core.int buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig = 0;
api.GoogleCloudRetailV2ModelModelFeaturesConfig
buildGoogleCloudRetailV2ModelModelFeaturesConfig() {
  final o = api.GoogleCloudRetailV2ModelModelFeaturesConfig();
  buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig < 3) {
    o.frequentlyBoughtTogetherConfig =
        buildGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig();
  }
  buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig--;
  return o;
}

void checkGoogleCloudRetailV2ModelModelFeaturesConfig(
  api.GoogleCloudRetailV2ModelModelFeaturesConfig o,
) {
  buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig < 3) {
    checkGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig(
      o.frequentlyBoughtTogetherConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2ModelModelFeaturesConfig--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2ModelServingConfigList = 0;
api.GoogleCloudRetailV2ModelServingConfigList
buildGoogleCloudRetailV2ModelServingConfigList() {
  final o = api.GoogleCloudRetailV2ModelServingConfigList();
  buildCounterGoogleCloudRetailV2ModelServingConfigList++;
  if (buildCounterGoogleCloudRetailV2ModelServingConfigList < 3) {
    o.servingConfigIds = buildUnnamed53();
  }
  buildCounterGoogleCloudRetailV2ModelServingConfigList--;
  return o;
}

void checkGoogleCloudRetailV2ModelServingConfigList(
  api.GoogleCloudRetailV2ModelServingConfigList o,
) {
  buildCounterGoogleCloudRetailV2ModelServingConfigList++;
  if (buildCounterGoogleCloudRetailV2ModelServingConfigList < 3) {
    checkUnnamed53(o.servingConfigIds!);
  }
  buildCounterGoogleCloudRetailV2ModelServingConfigList--;
}

core.int buildCounterGoogleCloudRetailV2OutputConfig = 0;
api.GoogleCloudRetailV2OutputConfig buildGoogleCloudRetailV2OutputConfig() {
  final o = api.GoogleCloudRetailV2OutputConfig();
  buildCounterGoogleCloudRetailV2OutputConfig++;
  if (buildCounterGoogleCloudRetailV2OutputConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudRetailV2OutputConfigBigQueryDestination();
    o.gcsDestination = buildGoogleCloudRetailV2OutputConfigGcsDestination();
  }
  buildCounterGoogleCloudRetailV2OutputConfig--;
  return o;
}

void checkGoogleCloudRetailV2OutputConfig(
  api.GoogleCloudRetailV2OutputConfig o,
) {
  buildCounterGoogleCloudRetailV2OutputConfig++;
  if (buildCounterGoogleCloudRetailV2OutputConfig < 3) {
    checkGoogleCloudRetailV2OutputConfigBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkGoogleCloudRetailV2OutputConfigGcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudRetailV2OutputConfig--;
}

core.int buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination = 0;
api.GoogleCloudRetailV2OutputConfigBigQueryDestination
buildGoogleCloudRetailV2OutputConfigBigQueryDestination() {
  final o = api.GoogleCloudRetailV2OutputConfigBigQueryDestination();
  buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination < 3) {
    o.datasetId = 'foo';
    o.tableIdPrefix = 'foo';
    o.tableType = 'foo';
  }
  buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination--;
  return o;
}

void checkGoogleCloudRetailV2OutputConfigBigQueryDestination(
  api.GoogleCloudRetailV2OutputConfigBigQueryDestination o,
) {
  buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination < 3) {
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.tableIdPrefix!, unittest.equals('foo'));
    unittest.expect(o.tableType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2OutputConfigBigQueryDestination--;
}

core.int buildCounterGoogleCloudRetailV2OutputConfigGcsDestination = 0;
api.GoogleCloudRetailV2OutputConfigGcsDestination
buildGoogleCloudRetailV2OutputConfigGcsDestination() {
  final o = api.GoogleCloudRetailV2OutputConfigGcsDestination();
  buildCounterGoogleCloudRetailV2OutputConfigGcsDestination++;
  if (buildCounterGoogleCloudRetailV2OutputConfigGcsDestination < 3) {
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2OutputConfigGcsDestination--;
  return o;
}

void checkGoogleCloudRetailV2OutputConfigGcsDestination(
  api.GoogleCloudRetailV2OutputConfigGcsDestination o,
) {
  buildCounterGoogleCloudRetailV2OutputConfigGcsDestination++;
  if (buildCounterGoogleCloudRetailV2OutputConfigGcsDestination < 3) {
    unittest.expect(o.outputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2OutputConfigGcsDestination--;
}

core.List<api.GoogleCloudRetailV2ProductDetail> buildUnnamed54() => [
  buildGoogleCloudRetailV2ProductDetail(),
  buildGoogleCloudRetailV2ProductDetail(),
];

void checkUnnamed54(core.List<api.GoogleCloudRetailV2ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ProductDetail(o[0]);
  checkGoogleCloudRetailV2ProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2PanelInfo = 0;
api.GoogleCloudRetailV2PanelInfo buildGoogleCloudRetailV2PanelInfo() {
  final o = api.GoogleCloudRetailV2PanelInfo();
  buildCounterGoogleCloudRetailV2PanelInfo++;
  if (buildCounterGoogleCloudRetailV2PanelInfo < 3) {
    o.attributionToken = 'foo';
    o.displayName = 'foo';
    o.panelId = 'foo';
    o.panelPosition = 42;
    o.productDetails = buildUnnamed54();
    o.totalPanels = 42;
  }
  buildCounterGoogleCloudRetailV2PanelInfo--;
  return o;
}

void checkGoogleCloudRetailV2PanelInfo(api.GoogleCloudRetailV2PanelInfo o) {
  buildCounterGoogleCloudRetailV2PanelInfo++;
  if (buildCounterGoogleCloudRetailV2PanelInfo < 3) {
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.panelId!, unittest.equals('foo'));
    unittest.expect(o.panelPosition!, unittest.equals(42));
    checkUnnamed54(o.productDetails!);
    unittest.expect(o.totalPanels!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2PanelInfo--;
}

core.int buildCounterGoogleCloudRetailV2PauseModelRequest = 0;
api.GoogleCloudRetailV2PauseModelRequest
buildGoogleCloudRetailV2PauseModelRequest() {
  final o = api.GoogleCloudRetailV2PauseModelRequest();
  buildCounterGoogleCloudRetailV2PauseModelRequest++;
  if (buildCounterGoogleCloudRetailV2PauseModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2PauseModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2PauseModelRequest(
  api.GoogleCloudRetailV2PauseModelRequest o,
) {
  buildCounterGoogleCloudRetailV2PauseModelRequest++;
  if (buildCounterGoogleCloudRetailV2PauseModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2PauseModelRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2PinControlMetadataProductPins>
buildUnnamed55() => {
  'x': buildGoogleCloudRetailV2PinControlMetadataProductPins(),
  'y': buildGoogleCloudRetailV2PinControlMetadataProductPins(),
};

void checkUnnamed55(
  core.Map<core.String, api.GoogleCloudRetailV2PinControlMetadataProductPins> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2PinControlMetadataProductPins(o['x']!);
  checkGoogleCloudRetailV2PinControlMetadataProductPins(o['y']!);
}

core.Map<core.String, api.GoogleCloudRetailV2PinControlMetadataProductPins>
buildUnnamed56() => {
  'x': buildGoogleCloudRetailV2PinControlMetadataProductPins(),
  'y': buildGoogleCloudRetailV2PinControlMetadataProductPins(),
};

void checkUnnamed56(
  core.Map<core.String, api.GoogleCloudRetailV2PinControlMetadataProductPins> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2PinControlMetadataProductPins(o['x']!);
  checkGoogleCloudRetailV2PinControlMetadataProductPins(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2PinControlMetadata = 0;
api.GoogleCloudRetailV2PinControlMetadata
buildGoogleCloudRetailV2PinControlMetadata() {
  final o = api.GoogleCloudRetailV2PinControlMetadata();
  buildCounterGoogleCloudRetailV2PinControlMetadata++;
  if (buildCounterGoogleCloudRetailV2PinControlMetadata < 3) {
    o.allMatchedPins = buildUnnamed55();
    o.droppedPins = buildUnnamed56();
  }
  buildCounterGoogleCloudRetailV2PinControlMetadata--;
  return o;
}

void checkGoogleCloudRetailV2PinControlMetadata(
  api.GoogleCloudRetailV2PinControlMetadata o,
) {
  buildCounterGoogleCloudRetailV2PinControlMetadata++;
  if (buildCounterGoogleCloudRetailV2PinControlMetadata < 3) {
    checkUnnamed55(o.allMatchedPins!);
    checkUnnamed56(o.droppedPins!);
  }
  buildCounterGoogleCloudRetailV2PinControlMetadata--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2PinControlMetadataProductPins = 0;
api.GoogleCloudRetailV2PinControlMetadataProductPins
buildGoogleCloudRetailV2PinControlMetadataProductPins() {
  final o = api.GoogleCloudRetailV2PinControlMetadataProductPins();
  buildCounterGoogleCloudRetailV2PinControlMetadataProductPins++;
  if (buildCounterGoogleCloudRetailV2PinControlMetadataProductPins < 3) {
    o.productId = buildUnnamed57();
  }
  buildCounterGoogleCloudRetailV2PinControlMetadataProductPins--;
  return o;
}

void checkGoogleCloudRetailV2PinControlMetadataProductPins(
  api.GoogleCloudRetailV2PinControlMetadataProductPins o,
) {
  buildCounterGoogleCloudRetailV2PinControlMetadataProductPins++;
  if (buildCounterGoogleCloudRetailV2PinControlMetadataProductPins < 3) {
    checkUnnamed57(o.productId!);
  }
  buildCounterGoogleCloudRetailV2PinControlMetadataProductPins--;
}

core.Map<core.String, core.String> buildUnnamed58() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed58(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed59() => {
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

void checkUnnamed59(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2PredictRequest = 0;
api.GoogleCloudRetailV2PredictRequest buildGoogleCloudRetailV2PredictRequest() {
  final o = api.GoogleCloudRetailV2PredictRequest();
  buildCounterGoogleCloudRetailV2PredictRequest++;
  if (buildCounterGoogleCloudRetailV2PredictRequest < 3) {
    o.filter = 'foo';
    o.labels = buildUnnamed58();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed59();
    o.userEvent = buildGoogleCloudRetailV2UserEvent();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2PredictRequest--;
  return o;
}

void checkGoogleCloudRetailV2PredictRequest(
  api.GoogleCloudRetailV2PredictRequest o,
) {
  buildCounterGoogleCloudRetailV2PredictRequest++;
  if (buildCounterGoogleCloudRetailV2PredictRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed58(o.labels!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkUnnamed59(o.params!);
    checkGoogleCloudRetailV2UserEvent(o.userEvent!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PredictRequest--;
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2PredictResponsePredictionResult>
buildUnnamed61() => [
  buildGoogleCloudRetailV2PredictResponsePredictionResult(),
  buildGoogleCloudRetailV2PredictResponsePredictionResult(),
];

void checkUnnamed61(
  core.List<api.GoogleCloudRetailV2PredictResponsePredictionResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2PredictResponsePredictionResult(o[0]);
  checkGoogleCloudRetailV2PredictResponsePredictionResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2PredictResponse = 0;
api.GoogleCloudRetailV2PredictResponse
buildGoogleCloudRetailV2PredictResponse() {
  final o = api.GoogleCloudRetailV2PredictResponse();
  buildCounterGoogleCloudRetailV2PredictResponse++;
  if (buildCounterGoogleCloudRetailV2PredictResponse < 3) {
    o.attributionToken = 'foo';
    o.missingIds = buildUnnamed60();
    o.results = buildUnnamed61();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2PredictResponse--;
  return o;
}

void checkGoogleCloudRetailV2PredictResponse(
  api.GoogleCloudRetailV2PredictResponse o,
) {
  buildCounterGoogleCloudRetailV2PredictResponse++;
  if (buildCounterGoogleCloudRetailV2PredictResponse < 3) {
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkUnnamed60(o.missingIds!);
    checkUnnamed61(o.results!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PredictResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2PredictResponsePredictionResult = 0;
api.GoogleCloudRetailV2PredictResponsePredictionResult
buildGoogleCloudRetailV2PredictResponsePredictionResult() {
  final o = api.GoogleCloudRetailV2PredictResponsePredictionResult();
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2PredictResponsePredictionResult < 3) {
    o.id = 'foo';
    o.metadata = buildUnnamed62();
  }
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult--;
  return o;
}

void checkGoogleCloudRetailV2PredictResponsePredictionResult(
  api.GoogleCloudRetailV2PredictResponsePredictionResult o,
) {
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2PredictResponsePredictionResult < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed62(o.metadata!);
  }
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult--;
}

core.int buildCounterGoogleCloudRetailV2PriceInfo = 0;
api.GoogleCloudRetailV2PriceInfo buildGoogleCloudRetailV2PriceInfo() {
  final o = api.GoogleCloudRetailV2PriceInfo();
  buildCounterGoogleCloudRetailV2PriceInfo++;
  if (buildCounterGoogleCloudRetailV2PriceInfo < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.originalPrice = 42.0;
    o.price = 42.0;
    o.priceEffectiveTime = 'foo';
    o.priceExpireTime = 'foo';
    o.priceRange = buildGoogleCloudRetailV2PriceInfoPriceRange();
  }
  buildCounterGoogleCloudRetailV2PriceInfo--;
  return o;
}

void checkGoogleCloudRetailV2PriceInfo(api.GoogleCloudRetailV2PriceInfo o) {
  buildCounterGoogleCloudRetailV2PriceInfo++;
  if (buildCounterGoogleCloudRetailV2PriceInfo < 3) {
    unittest.expect(o.cost!, unittest.equals(42.0));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.originalPrice!, unittest.equals(42.0));
    unittest.expect(o.price!, unittest.equals(42.0));
    unittest.expect(o.priceEffectiveTime!, unittest.equals('foo'));
    unittest.expect(o.priceExpireTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2PriceInfoPriceRange(o.priceRange!);
  }
  buildCounterGoogleCloudRetailV2PriceInfo--;
}

core.int buildCounterGoogleCloudRetailV2PriceInfoPriceRange = 0;
api.GoogleCloudRetailV2PriceInfoPriceRange
buildGoogleCloudRetailV2PriceInfoPriceRange() {
  final o = api.GoogleCloudRetailV2PriceInfoPriceRange();
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2PriceInfoPriceRange < 3) {
    o.originalPrice = buildGoogleCloudRetailV2Interval();
    o.price = buildGoogleCloudRetailV2Interval();
  }
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange--;
  return o;
}

void checkGoogleCloudRetailV2PriceInfoPriceRange(
  api.GoogleCloudRetailV2PriceInfoPriceRange o,
) {
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2PriceInfoPriceRange < 3) {
    checkGoogleCloudRetailV2Interval(o.originalPrice!);
    checkGoogleCloudRetailV2Interval(o.price!);
  }
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
buildUnnamed63() => {
  'x': buildGoogleCloudRetailV2CustomAttribute(),
  'y': buildGoogleCloudRetailV2CustomAttribute(),
};

void checkUnnamed63(
  core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed65() => ['foo', 'foo'];

void checkUnnamed65(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2FulfillmentInfo> buildUnnamed68() => [
  buildGoogleCloudRetailV2FulfillmentInfo(),
  buildGoogleCloudRetailV2FulfillmentInfo(),
];

void checkUnnamed68(core.List<api.GoogleCloudRetailV2FulfillmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2FulfillmentInfo(o[0]);
  checkGoogleCloudRetailV2FulfillmentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2Image> buildUnnamed69() => [
  buildGoogleCloudRetailV2Image(),
  buildGoogleCloudRetailV2Image(),
];

void checkUnnamed69(core.List<api.GoogleCloudRetailV2Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Image(o[0]);
  checkGoogleCloudRetailV2Image(o[1]);
}

core.List<api.GoogleCloudRetailV2LocalInventory> buildUnnamed70() => [
  buildGoogleCloudRetailV2LocalInventory(),
  buildGoogleCloudRetailV2LocalInventory(),
];

void checkUnnamed70(core.List<api.GoogleCloudRetailV2LocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2LocalInventory(o[0]);
  checkGoogleCloudRetailV2LocalInventory(o[1]);
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2Promotion> buildUnnamed73() => [
  buildGoogleCloudRetailV2Promotion(),
  buildGoogleCloudRetailV2Promotion(),
];

void checkUnnamed73(core.List<api.GoogleCloudRetailV2Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Promotion(o[0]);
  checkGoogleCloudRetailV2Promotion(o[1]);
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2Product> buildUnnamed76() => [
  buildGoogleCloudRetailV2Product(),
  buildGoogleCloudRetailV2Product(),
];

void checkUnnamed76(core.List<api.GoogleCloudRetailV2Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Product(o[0]);
  checkGoogleCloudRetailV2Product(o[1]);
}

core.int buildCounterGoogleCloudRetailV2Product = 0;
api.GoogleCloudRetailV2Product buildGoogleCloudRetailV2Product() {
  final o = api.GoogleCloudRetailV2Product();
  buildCounterGoogleCloudRetailV2Product++;
  if (buildCounterGoogleCloudRetailV2Product < 3) {
    o.attributes = buildUnnamed63();
    o.audience = buildGoogleCloudRetailV2Audience();
    o.availability = 'foo';
    o.availableQuantity = 42;
    o.availableTime = 'foo';
    o.brands = buildUnnamed64();
    o.categories = buildUnnamed65();
    o.collectionMemberIds = buildUnnamed66();
    o.colorInfo = buildGoogleCloudRetailV2ColorInfo();
    o.conditions = buildUnnamed67();
    o.description = 'foo';
    o.expireTime = 'foo';
    o.fulfillmentInfo = buildUnnamed68();
    o.gtin = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed69();
    o.languageCode = 'foo';
    o.localInventories = buildUnnamed70();
    o.materials = buildUnnamed71();
    o.name = 'foo';
    o.patterns = buildUnnamed72();
    o.priceInfo = buildGoogleCloudRetailV2PriceInfo();
    o.primaryProductId = 'foo';
    o.promotions = buildUnnamed73();
    o.publishTime = 'foo';
    o.rating = buildGoogleCloudRetailV2Rating();
    o.retrievableFields = 'foo';
    o.sizes = buildUnnamed74();
    o.tags = buildUnnamed75();
    o.title = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
    o.variants = buildUnnamed76();
  }
  buildCounterGoogleCloudRetailV2Product--;
  return o;
}

void checkGoogleCloudRetailV2Product(api.GoogleCloudRetailV2Product o) {
  buildCounterGoogleCloudRetailV2Product++;
  if (buildCounterGoogleCloudRetailV2Product < 3) {
    checkUnnamed63(o.attributes!);
    checkGoogleCloudRetailV2Audience(o.audience!);
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.availableQuantity!, unittest.equals(42));
    unittest.expect(o.availableTime!, unittest.equals('foo'));
    checkUnnamed64(o.brands!);
    checkUnnamed65(o.categories!);
    checkUnnamed66(o.collectionMemberIds!);
    checkGoogleCloudRetailV2ColorInfo(o.colorInfo!);
    checkUnnamed67(o.conditions!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed68(o.fulfillmentInfo!);
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed69(o.images!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed70(o.localInventories!);
    checkUnnamed71(o.materials!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed72(o.patterns!);
    checkGoogleCloudRetailV2PriceInfo(o.priceInfo!);
    unittest.expect(o.primaryProductId!, unittest.equals('foo'));
    checkUnnamed73(o.promotions!);
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2Rating(o.rating!);
    unittest.expect(o.retrievableFields!, unittest.equals('foo'));
    checkUnnamed74(o.sizes!);
    checkUnnamed75(o.tags!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkUnnamed76(o.variants!);
  }
  buildCounterGoogleCloudRetailV2Product--;
}

core.int buildCounterGoogleCloudRetailV2ProductAttributeInterval = 0;
api.GoogleCloudRetailV2ProductAttributeInterval
buildGoogleCloudRetailV2ProductAttributeInterval() {
  final o = api.GoogleCloudRetailV2ProductAttributeInterval();
  buildCounterGoogleCloudRetailV2ProductAttributeInterval++;
  if (buildCounterGoogleCloudRetailV2ProductAttributeInterval < 3) {
    o.interval = buildGoogleCloudRetailV2Interval();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2ProductAttributeInterval--;
  return o;
}

void checkGoogleCloudRetailV2ProductAttributeInterval(
  api.GoogleCloudRetailV2ProductAttributeInterval o,
) {
  buildCounterGoogleCloudRetailV2ProductAttributeInterval++;
  if (buildCounterGoogleCloudRetailV2ProductAttributeInterval < 3) {
    checkGoogleCloudRetailV2Interval(o.interval!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ProductAttributeInterval--;
}

core.int buildCounterGoogleCloudRetailV2ProductAttributeValue = 0;
api.GoogleCloudRetailV2ProductAttributeValue
buildGoogleCloudRetailV2ProductAttributeValue() {
  final o = api.GoogleCloudRetailV2ProductAttributeValue();
  buildCounterGoogleCloudRetailV2ProductAttributeValue++;
  if (buildCounterGoogleCloudRetailV2ProductAttributeValue < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2ProductAttributeValue--;
  return o;
}

void checkGoogleCloudRetailV2ProductAttributeValue(
  api.GoogleCloudRetailV2ProductAttributeValue o,
) {
  buildCounterGoogleCloudRetailV2ProductAttributeValue++;
  if (buildCounterGoogleCloudRetailV2ProductAttributeValue < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ProductAttributeValue--;
}

core.int buildCounterGoogleCloudRetailV2ProductDetail = 0;
api.GoogleCloudRetailV2ProductDetail buildGoogleCloudRetailV2ProductDetail() {
  final o = api.GoogleCloudRetailV2ProductDetail();
  buildCounterGoogleCloudRetailV2ProductDetail++;
  if (buildCounterGoogleCloudRetailV2ProductDetail < 3) {
    o.product = buildGoogleCloudRetailV2Product();
    o.quantity = 42;
  }
  buildCounterGoogleCloudRetailV2ProductDetail--;
  return o;
}

void checkGoogleCloudRetailV2ProductDetail(
  api.GoogleCloudRetailV2ProductDetail o,
) {
  buildCounterGoogleCloudRetailV2ProductDetail++;
  if (buildCounterGoogleCloudRetailV2ProductDetail < 3) {
    checkGoogleCloudRetailV2Product(o.product!);
    unittest.expect(o.quantity!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2ProductDetail--;
}

core.List<api.GoogleCloudRetailV2Product> buildUnnamed77() => [
  buildGoogleCloudRetailV2Product(),
  buildGoogleCloudRetailV2Product(),
];

void checkUnnamed77(core.List<api.GoogleCloudRetailV2Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Product(o[0]);
  checkGoogleCloudRetailV2Product(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ProductInlineSource = 0;
api.GoogleCloudRetailV2ProductInlineSource
buildGoogleCloudRetailV2ProductInlineSource() {
  final o = api.GoogleCloudRetailV2ProductInlineSource();
  buildCounterGoogleCloudRetailV2ProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2ProductInlineSource < 3) {
    o.products = buildUnnamed77();
  }
  buildCounterGoogleCloudRetailV2ProductInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2ProductInlineSource(
  api.GoogleCloudRetailV2ProductInlineSource o,
) {
  buildCounterGoogleCloudRetailV2ProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2ProductInlineSource < 3) {
    checkUnnamed77(o.products!);
  }
  buildCounterGoogleCloudRetailV2ProductInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2ProductInputConfig = 0;
api.GoogleCloudRetailV2ProductInputConfig
buildGoogleCloudRetailV2ProductInputConfig() {
  final o = api.GoogleCloudRetailV2ProductInputConfig();
  buildCounterGoogleCloudRetailV2ProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2ProductInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2BigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2GcsSource();
    o.productInlineSource = buildGoogleCloudRetailV2ProductInlineSource();
  }
  buildCounterGoogleCloudRetailV2ProductInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2ProductInputConfig(
  api.GoogleCloudRetailV2ProductInputConfig o,
) {
  buildCounterGoogleCloudRetailV2ProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2ProductInputConfig < 3) {
    checkGoogleCloudRetailV2BigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2GcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2ProductInlineSource(o.productInlineSource!);
  }
  buildCounterGoogleCloudRetailV2ProductInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2ProductLevelConfig = 0;
api.GoogleCloudRetailV2ProductLevelConfig
buildGoogleCloudRetailV2ProductLevelConfig() {
  final o = api.GoogleCloudRetailV2ProductLevelConfig();
  buildCounterGoogleCloudRetailV2ProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2ProductLevelConfig < 3) {
    o.ingestionProductType = 'foo';
    o.merchantCenterProductIdField = 'foo';
  }
  buildCounterGoogleCloudRetailV2ProductLevelConfig--;
  return o;
}

void checkGoogleCloudRetailV2ProductLevelConfig(
  api.GoogleCloudRetailV2ProductLevelConfig o,
) {
  buildCounterGoogleCloudRetailV2ProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2ProductLevelConfig < 3) {
    unittest.expect(o.ingestionProductType!, unittest.equals('foo'));
    unittest.expect(o.merchantCenterProductIdField!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ProductLevelConfig--;
}

core.int buildCounterGoogleCloudRetailV2Promotion = 0;
api.GoogleCloudRetailV2Promotion buildGoogleCloudRetailV2Promotion() {
  final o = api.GoogleCloudRetailV2Promotion();
  buildCounterGoogleCloudRetailV2Promotion++;
  if (buildCounterGoogleCloudRetailV2Promotion < 3) {
    o.promotionId = 'foo';
  }
  buildCounterGoogleCloudRetailV2Promotion--;
  return o;
}

void checkGoogleCloudRetailV2Promotion(api.GoogleCloudRetailV2Promotion o) {
  buildCounterGoogleCloudRetailV2Promotion++;
  if (buildCounterGoogleCloudRetailV2Promotion < 3) {
    unittest.expect(o.promotionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2Promotion--;
}

core.int buildCounterGoogleCloudRetailV2PurchaseTransaction = 0;
api.GoogleCloudRetailV2PurchaseTransaction
buildGoogleCloudRetailV2PurchaseTransaction() {
  final o = api.GoogleCloudRetailV2PurchaseTransaction();
  buildCounterGoogleCloudRetailV2PurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2PurchaseTransaction < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.revenue = 42.0;
    o.tax = 42.0;
  }
  buildCounterGoogleCloudRetailV2PurchaseTransaction--;
  return o;
}

void checkGoogleCloudRetailV2PurchaseTransaction(
  api.GoogleCloudRetailV2PurchaseTransaction o,
) {
  buildCounterGoogleCloudRetailV2PurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2PurchaseTransaction < 3) {
    unittest.expect(o.cost!, unittest.equals(42.0));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.revenue!, unittest.equals(42.0));
    unittest.expect(o.tax!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRetailV2PurchaseTransaction--;
}

core.int buildCounterGoogleCloudRetailV2PurgeProductsRequest = 0;
api.GoogleCloudRetailV2PurgeProductsRequest
buildGoogleCloudRetailV2PurgeProductsRequest() {
  final o = api.GoogleCloudRetailV2PurgeProductsRequest();
  buildCounterGoogleCloudRetailV2PurgeProductsRequest++;
  if (buildCounterGoogleCloudRetailV2PurgeProductsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2PurgeProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2PurgeProductsRequest(
  api.GoogleCloudRetailV2PurgeProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2PurgeProductsRequest++;
  if (buildCounterGoogleCloudRetailV2PurgeProductsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PurgeProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2PurgeUserEventsRequest = 0;
api.GoogleCloudRetailV2PurgeUserEventsRequest
buildGoogleCloudRetailV2PurgeUserEventsRequest() {
  final o = api.GoogleCloudRetailV2PurgeUserEventsRequest();
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2PurgeUserEventsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2PurgeUserEventsRequest(
  api.GoogleCloudRetailV2PurgeUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2PurgeUserEventsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest--;
}

core.List<core.int> buildUnnamed78() => [42, 42];

void checkUnnamed78(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudRetailV2Rating = 0;
api.GoogleCloudRetailV2Rating buildGoogleCloudRetailV2Rating() {
  final o = api.GoogleCloudRetailV2Rating();
  buildCounterGoogleCloudRetailV2Rating++;
  if (buildCounterGoogleCloudRetailV2Rating < 3) {
    o.averageRating = 42.0;
    o.ratingCount = 42;
    o.ratingHistogram = buildUnnamed78();
  }
  buildCounterGoogleCloudRetailV2Rating--;
  return o;
}

void checkGoogleCloudRetailV2Rating(api.GoogleCloudRetailV2Rating o) {
  buildCounterGoogleCloudRetailV2Rating++;
  if (buildCounterGoogleCloudRetailV2Rating < 3) {
    unittest.expect(o.averageRating!, unittest.equals(42.0));
    unittest.expect(o.ratingCount!, unittest.equals(42));
    checkUnnamed78(o.ratingHistogram!);
  }
  buildCounterGoogleCloudRetailV2Rating--;
}

core.int buildCounterGoogleCloudRetailV2RejoinUserEventsRequest = 0;
api.GoogleCloudRetailV2RejoinUserEventsRequest
buildGoogleCloudRetailV2RejoinUserEventsRequest() {
  final o = api.GoogleCloudRetailV2RejoinUserEventsRequest();
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsRequest < 3) {
    o.userEventRejoinScope = 'foo';
  }
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2RejoinUserEventsRequest(
  api.GoogleCloudRetailV2RejoinUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsRequest < 3) {
    unittest.expect(o.userEventRejoinScope!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest--;
}

core.int buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2RemoveCatalogAttributeRequest
buildGoogleCloudRetailV2RemoveCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2RemoveCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest < 3) {
    o.key = 'foo';
  }
  buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2RemoveCatalogAttributeRequest(
  api.GoogleCloudRetailV2RemoveCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RemoveCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2RemoveControlRequest = 0;
api.GoogleCloudRetailV2RemoveControlRequest
buildGoogleCloudRetailV2RemoveControlRequest() {
  final o = api.GoogleCloudRetailV2RemoveControlRequest();
  buildCounterGoogleCloudRetailV2RemoveControlRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveControlRequest < 3) {
    o.controlId = 'foo';
  }
  buildCounterGoogleCloudRetailV2RemoveControlRequest--;
  return o;
}

void checkGoogleCloudRetailV2RemoveControlRequest(
  api.GoogleCloudRetailV2RemoveControlRequest o,
) {
  buildCounterGoogleCloudRetailV2RemoveControlRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveControlRequest < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RemoveControlRequest--;
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest
buildGoogleCloudRetailV2RemoveFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed79();
    o.removeTime = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2RemoveFulfillmentPlacesRequest(
  api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest o,
) {
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed79(o.placeIds!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest--;
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest = 0;
api.GoogleCloudRetailV2RemoveLocalInventoriesRequest
buildGoogleCloudRetailV2RemoveLocalInventoriesRequest() {
  final o = api.GoogleCloudRetailV2RemoveLocalInventoriesRequest();
  buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed80();
    o.removeTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest--;
  return o;
}

void checkGoogleCloudRetailV2RemoveLocalInventoriesRequest(
  api.GoogleCloudRetailV2RemoveLocalInventoriesRequest o,
) {
  buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed80(o.placeIds!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RemoveLocalInventoriesRequest--;
}

core.int buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2ReplaceCatalogAttributeRequest
buildGoogleCloudRetailV2ReplaceCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2ReplaceCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest < 3) {
    o.catalogAttribute = buildGoogleCloudRetailV2CatalogAttribute();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2ReplaceCatalogAttributeRequest(
  api.GoogleCloudRetailV2ReplaceCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest < 3) {
    checkGoogleCloudRetailV2CatalogAttribute(o.catalogAttribute!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2ReplaceCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2ResumeModelRequest = 0;
api.GoogleCloudRetailV2ResumeModelRequest
buildGoogleCloudRetailV2ResumeModelRequest() {
  final o = api.GoogleCloudRetailV2ResumeModelRequest();
  buildCounterGoogleCloudRetailV2ResumeModelRequest++;
  if (buildCounterGoogleCloudRetailV2ResumeModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2ResumeModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2ResumeModelRequest(
  api.GoogleCloudRetailV2ResumeModelRequest o,
) {
  buildCounterGoogleCloudRetailV2ResumeModelRequest++;
  if (buildCounterGoogleCloudRetailV2ResumeModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2ResumeModelRequest--;
}

core.int buildCounterGoogleCloudRetailV2Rule = 0;
api.GoogleCloudRetailV2Rule buildGoogleCloudRetailV2Rule() {
  final o = api.GoogleCloudRetailV2Rule();
  buildCounterGoogleCloudRetailV2Rule++;
  if (buildCounterGoogleCloudRetailV2Rule < 3) {
    o.boostAction = buildGoogleCloudRetailV2RuleBoostAction();
    o.condition = buildGoogleCloudRetailV2Condition();
    o.doNotAssociateAction = buildGoogleCloudRetailV2RuleDoNotAssociateAction();
    o.filterAction = buildGoogleCloudRetailV2RuleFilterAction();
    o.forceReturnFacetAction =
        buildGoogleCloudRetailV2RuleForceReturnFacetAction();
    o.ignoreAction = buildGoogleCloudRetailV2RuleIgnoreAction();
    o.onewaySynonymsAction = buildGoogleCloudRetailV2RuleOnewaySynonymsAction();
    o.pinAction = buildGoogleCloudRetailV2RulePinAction();
    o.redirectAction = buildGoogleCloudRetailV2RuleRedirectAction();
    o.removeFacetAction = buildGoogleCloudRetailV2RuleRemoveFacetAction();
    o.replacementAction = buildGoogleCloudRetailV2RuleReplacementAction();
    o.twowaySynonymsAction = buildGoogleCloudRetailV2RuleTwowaySynonymsAction();
  }
  buildCounterGoogleCloudRetailV2Rule--;
  return o;
}

void checkGoogleCloudRetailV2Rule(api.GoogleCloudRetailV2Rule o) {
  buildCounterGoogleCloudRetailV2Rule++;
  if (buildCounterGoogleCloudRetailV2Rule < 3) {
    checkGoogleCloudRetailV2RuleBoostAction(o.boostAction!);
    checkGoogleCloudRetailV2Condition(o.condition!);
    checkGoogleCloudRetailV2RuleDoNotAssociateAction(o.doNotAssociateAction!);
    checkGoogleCloudRetailV2RuleFilterAction(o.filterAction!);
    checkGoogleCloudRetailV2RuleForceReturnFacetAction(
      o.forceReturnFacetAction!,
    );
    checkGoogleCloudRetailV2RuleIgnoreAction(o.ignoreAction!);
    checkGoogleCloudRetailV2RuleOnewaySynonymsAction(o.onewaySynonymsAction!);
    checkGoogleCloudRetailV2RulePinAction(o.pinAction!);
    checkGoogleCloudRetailV2RuleRedirectAction(o.redirectAction!);
    checkGoogleCloudRetailV2RuleRemoveFacetAction(o.removeFacetAction!);
    checkGoogleCloudRetailV2RuleReplacementAction(o.replacementAction!);
    checkGoogleCloudRetailV2RuleTwowaySynonymsAction(o.twowaySynonymsAction!);
  }
  buildCounterGoogleCloudRetailV2Rule--;
}

core.int buildCounterGoogleCloudRetailV2RuleBoostAction = 0;
api.GoogleCloudRetailV2RuleBoostAction
buildGoogleCloudRetailV2RuleBoostAction() {
  final o = api.GoogleCloudRetailV2RuleBoostAction();
  buildCounterGoogleCloudRetailV2RuleBoostAction++;
  if (buildCounterGoogleCloudRetailV2RuleBoostAction < 3) {
    o.boost = 42.0;
    o.productsFilter = 'foo';
  }
  buildCounterGoogleCloudRetailV2RuleBoostAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleBoostAction(
  api.GoogleCloudRetailV2RuleBoostAction o,
) {
  buildCounterGoogleCloudRetailV2RuleBoostAction++;
  if (buildCounterGoogleCloudRetailV2RuleBoostAction < 3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    unittest.expect(o.productsFilter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RuleBoostAction--;
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction = 0;
api.GoogleCloudRetailV2RuleDoNotAssociateAction
buildGoogleCloudRetailV2RuleDoNotAssociateAction() {
  final o = api.GoogleCloudRetailV2RuleDoNotAssociateAction();
  buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction++;
  if (buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction < 3) {
    o.doNotAssociateTerms = buildUnnamed81();
    o.queryTerms = buildUnnamed82();
    o.terms = buildUnnamed83();
  }
  buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleDoNotAssociateAction(
  api.GoogleCloudRetailV2RuleDoNotAssociateAction o,
) {
  buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction++;
  if (buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction < 3) {
    checkUnnamed81(o.doNotAssociateTerms!);
    checkUnnamed82(o.queryTerms!);
    checkUnnamed83(o.terms!);
  }
  buildCounterGoogleCloudRetailV2RuleDoNotAssociateAction--;
}

core.int buildCounterGoogleCloudRetailV2RuleFilterAction = 0;
api.GoogleCloudRetailV2RuleFilterAction
buildGoogleCloudRetailV2RuleFilterAction() {
  final o = api.GoogleCloudRetailV2RuleFilterAction();
  buildCounterGoogleCloudRetailV2RuleFilterAction++;
  if (buildCounterGoogleCloudRetailV2RuleFilterAction < 3) {
    o.filter = 'foo';
  }
  buildCounterGoogleCloudRetailV2RuleFilterAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleFilterAction(
  api.GoogleCloudRetailV2RuleFilterAction o,
) {
  buildCounterGoogleCloudRetailV2RuleFilterAction++;
  if (buildCounterGoogleCloudRetailV2RuleFilterAction < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RuleFilterAction--;
}

core.List<
  api.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment
>
buildUnnamed84() => [
  buildGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(),
  buildGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(),
];

void checkUnnamed84(
  core.List<
    api.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(
    o[0],
  );
  checkGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(
    o[1],
  );
}

core.int buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction = 0;
api.GoogleCloudRetailV2RuleForceReturnFacetAction
buildGoogleCloudRetailV2RuleForceReturnFacetAction() {
  final o = api.GoogleCloudRetailV2RuleForceReturnFacetAction();
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction++;
  if (buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction < 3) {
    o.facetPositionAdjustments = buildUnnamed84();
  }
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleForceReturnFacetAction(
  api.GoogleCloudRetailV2RuleForceReturnFacetAction o,
) {
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction++;
  if (buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction < 3) {
    checkUnnamed84(o.facetPositionAdjustments!);
  }
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetAction--;
}

core.int
buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment =
    0;
api.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment
buildGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment() {
  final o =
      api.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment();
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment++;
  if (buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment <
      3) {
    o.attributeName = 'foo';
    o.position = 42;
  }
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment--;
  return o;
}

void checkGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(
  api.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment o,
) {
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment++;
  if (buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment <
      3) {
    unittest.expect(o.attributeName!, unittest.equals('foo'));
    unittest.expect(o.position!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment--;
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RuleIgnoreAction = 0;
api.GoogleCloudRetailV2RuleIgnoreAction
buildGoogleCloudRetailV2RuleIgnoreAction() {
  final o = api.GoogleCloudRetailV2RuleIgnoreAction();
  buildCounterGoogleCloudRetailV2RuleIgnoreAction++;
  if (buildCounterGoogleCloudRetailV2RuleIgnoreAction < 3) {
    o.ignoreTerms = buildUnnamed85();
  }
  buildCounterGoogleCloudRetailV2RuleIgnoreAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleIgnoreAction(
  api.GoogleCloudRetailV2RuleIgnoreAction o,
) {
  buildCounterGoogleCloudRetailV2RuleIgnoreAction++;
  if (buildCounterGoogleCloudRetailV2RuleIgnoreAction < 3) {
    checkUnnamed85(o.ignoreTerms!);
  }
  buildCounterGoogleCloudRetailV2RuleIgnoreAction--;
}

core.List<core.String> buildUnnamed86() => ['foo', 'foo'];

void checkUnnamed86(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction = 0;
api.GoogleCloudRetailV2RuleOnewaySynonymsAction
buildGoogleCloudRetailV2RuleOnewaySynonymsAction() {
  final o = api.GoogleCloudRetailV2RuleOnewaySynonymsAction();
  buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction < 3) {
    o.onewayTerms = buildUnnamed86();
    o.queryTerms = buildUnnamed87();
    o.synonyms = buildUnnamed88();
  }
  buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleOnewaySynonymsAction(
  api.GoogleCloudRetailV2RuleOnewaySynonymsAction o,
) {
  buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction < 3) {
    checkUnnamed86(o.onewayTerms!);
    checkUnnamed87(o.queryTerms!);
    checkUnnamed88(o.synonyms!);
  }
  buildCounterGoogleCloudRetailV2RuleOnewaySynonymsAction--;
}

core.Map<core.String, core.String> buildUnnamed89() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed89(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RulePinAction = 0;
api.GoogleCloudRetailV2RulePinAction buildGoogleCloudRetailV2RulePinAction() {
  final o = api.GoogleCloudRetailV2RulePinAction();
  buildCounterGoogleCloudRetailV2RulePinAction++;
  if (buildCounterGoogleCloudRetailV2RulePinAction < 3) {
    o.pinMap = buildUnnamed89();
  }
  buildCounterGoogleCloudRetailV2RulePinAction--;
  return o;
}

void checkGoogleCloudRetailV2RulePinAction(
  api.GoogleCloudRetailV2RulePinAction o,
) {
  buildCounterGoogleCloudRetailV2RulePinAction++;
  if (buildCounterGoogleCloudRetailV2RulePinAction < 3) {
    checkUnnamed89(o.pinMap!);
  }
  buildCounterGoogleCloudRetailV2RulePinAction--;
}

core.int buildCounterGoogleCloudRetailV2RuleRedirectAction = 0;
api.GoogleCloudRetailV2RuleRedirectAction
buildGoogleCloudRetailV2RuleRedirectAction() {
  final o = api.GoogleCloudRetailV2RuleRedirectAction();
  buildCounterGoogleCloudRetailV2RuleRedirectAction++;
  if (buildCounterGoogleCloudRetailV2RuleRedirectAction < 3) {
    o.redirectUri = 'foo';
  }
  buildCounterGoogleCloudRetailV2RuleRedirectAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleRedirectAction(
  api.GoogleCloudRetailV2RuleRedirectAction o,
) {
  buildCounterGoogleCloudRetailV2RuleRedirectAction++;
  if (buildCounterGoogleCloudRetailV2RuleRedirectAction < 3) {
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RuleRedirectAction--;
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RuleRemoveFacetAction = 0;
api.GoogleCloudRetailV2RuleRemoveFacetAction
buildGoogleCloudRetailV2RuleRemoveFacetAction() {
  final o = api.GoogleCloudRetailV2RuleRemoveFacetAction();
  buildCounterGoogleCloudRetailV2RuleRemoveFacetAction++;
  if (buildCounterGoogleCloudRetailV2RuleRemoveFacetAction < 3) {
    o.attributeNames = buildUnnamed90();
  }
  buildCounterGoogleCloudRetailV2RuleRemoveFacetAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleRemoveFacetAction(
  api.GoogleCloudRetailV2RuleRemoveFacetAction o,
) {
  buildCounterGoogleCloudRetailV2RuleRemoveFacetAction++;
  if (buildCounterGoogleCloudRetailV2RuleRemoveFacetAction < 3) {
    checkUnnamed90(o.attributeNames!);
  }
  buildCounterGoogleCloudRetailV2RuleRemoveFacetAction--;
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RuleReplacementAction = 0;
api.GoogleCloudRetailV2RuleReplacementAction
buildGoogleCloudRetailV2RuleReplacementAction() {
  final o = api.GoogleCloudRetailV2RuleReplacementAction();
  buildCounterGoogleCloudRetailV2RuleReplacementAction++;
  if (buildCounterGoogleCloudRetailV2RuleReplacementAction < 3) {
    o.queryTerms = buildUnnamed91();
    o.replacementTerm = 'foo';
    o.term = 'foo';
  }
  buildCounterGoogleCloudRetailV2RuleReplacementAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleReplacementAction(
  api.GoogleCloudRetailV2RuleReplacementAction o,
) {
  buildCounterGoogleCloudRetailV2RuleReplacementAction++;
  if (buildCounterGoogleCloudRetailV2RuleReplacementAction < 3) {
    checkUnnamed91(o.queryTerms!);
    unittest.expect(o.replacementTerm!, unittest.equals('foo'));
    unittest.expect(o.term!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2RuleReplacementAction--;
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction = 0;
api.GoogleCloudRetailV2RuleTwowaySynonymsAction
buildGoogleCloudRetailV2RuleTwowaySynonymsAction() {
  final o = api.GoogleCloudRetailV2RuleTwowaySynonymsAction();
  buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction < 3) {
    o.synonyms = buildUnnamed92();
  }
  buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction--;
  return o;
}

void checkGoogleCloudRetailV2RuleTwowaySynonymsAction(
  api.GoogleCloudRetailV2RuleTwowaySynonymsAction o,
) {
  buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction < 3) {
    checkUnnamed92(o.synonyms!);
  }
  buildCounterGoogleCloudRetailV2RuleTwowaySynonymsAction--;
}

core.int buildCounterGoogleCloudRetailV2SafetySetting = 0;
api.GoogleCloudRetailV2SafetySetting buildGoogleCloudRetailV2SafetySetting() {
  final o = api.GoogleCloudRetailV2SafetySetting();
  buildCounterGoogleCloudRetailV2SafetySetting++;
  if (buildCounterGoogleCloudRetailV2SafetySetting < 3) {
    o.category = 'foo';
    o.method = 'foo';
    o.threshold = 'foo';
  }
  buildCounterGoogleCloudRetailV2SafetySetting--;
  return o;
}

void checkGoogleCloudRetailV2SafetySetting(
  api.GoogleCloudRetailV2SafetySetting o,
) {
  buildCounterGoogleCloudRetailV2SafetySetting++;
  if (buildCounterGoogleCloudRetailV2SafetySetting < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.threshold!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SafetySetting--;
}

core.List<api.GoogleCloudRetailV2SearchRequestFacetSpec> buildUnnamed93() => [
  buildGoogleCloudRetailV2SearchRequestFacetSpec(),
  buildGoogleCloudRetailV2SearchRequestFacetSpec(),
];

void checkUnnamed93(
  core.List<api.GoogleCloudRetailV2SearchRequestFacetSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchRequestFacetSpec(o[0]);
  checkGoogleCloudRetailV2SearchRequestFacetSpec(o[1]);
}

core.Map<core.String, core.String> buildUnnamed94() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed94(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed95() => ['foo', 'foo'];

void checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRetailV2StringList> buildUnnamed96() => {
  'x': buildGoogleCloudRetailV2StringList(),
  'y': buildGoogleCloudRetailV2StringList(),
};

void checkUnnamed96(
  core.Map<core.String, api.GoogleCloudRetailV2StringList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2StringList(o['x']!);
  checkGoogleCloudRetailV2StringList(o['y']!);
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2SearchRequest = 0;
api.GoogleCloudRetailV2SearchRequest buildGoogleCloudRetailV2SearchRequest() {
  final o = api.GoogleCloudRetailV2SearchRequest();
  buildCounterGoogleCloudRetailV2SearchRequest++;
  if (buildCounterGoogleCloudRetailV2SearchRequest < 3) {
    o.boostSpec = buildGoogleCloudRetailV2SearchRequestBoostSpec();
    o.branch = 'foo';
    o.canonicalFilter = 'foo';
    o.conversationalSearchSpec =
        buildGoogleCloudRetailV2SearchRequestConversationalSearchSpec();
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec();
    o.entity = 'foo';
    o.facetSpecs = buildUnnamed93();
    o.filter = 'foo';
    o.labels = buildUnnamed94();
    o.languageCode = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed95();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.personalizationSpec =
        buildGoogleCloudRetailV2SearchRequestPersonalizationSpec();
    o.placeId = 'foo';
    o.query = 'foo';
    o.queryExpansionSpec =
        buildGoogleCloudRetailV2SearchRequestQueryExpansionSpec();
    o.regionCode = 'foo';
    o.searchMode = 'foo';
    o.spellCorrectionSpec =
        buildGoogleCloudRetailV2SearchRequestSpellCorrectionSpec();
    o.tileNavigationSpec =
        buildGoogleCloudRetailV2SearchRequestTileNavigationSpec();
    o.userAttributes = buildUnnamed96();
    o.userInfo = buildGoogleCloudRetailV2UserInfo();
    o.variantRollupKeys = buildUnnamed97();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequest--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequest(
  api.GoogleCloudRetailV2SearchRequest o,
) {
  buildCounterGoogleCloudRetailV2SearchRequest++;
  if (buildCounterGoogleCloudRetailV2SearchRequest < 3) {
    checkGoogleCloudRetailV2SearchRequestBoostSpec(o.boostSpec!);
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.canonicalFilter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2SearchRequestConversationalSearchSpec(
      o.conversationalSearchSpec!,
    );
    checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(o.dynamicFacetSpec!);
    unittest.expect(o.entity!, unittest.equals('foo'));
    checkUnnamed93(o.facetSpecs!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed94(o.labels!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals(42));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed95(o.pageCategories!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2SearchRequestPersonalizationSpec(
      o.personalizationSpec!,
    );
    unittest.expect(o.placeId!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    checkGoogleCloudRetailV2SearchRequestQueryExpansionSpec(
      o.queryExpansionSpec!,
    );
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.searchMode!, unittest.equals('foo'));
    checkGoogleCloudRetailV2SearchRequestSpellCorrectionSpec(
      o.spellCorrectionSpec!,
    );
    checkGoogleCloudRetailV2SearchRequestTileNavigationSpec(
      o.tileNavigationSpec!,
    );
    checkUnnamed96(o.userAttributes!);
    checkGoogleCloudRetailV2UserInfo(o.userInfo!);
    checkUnnamed97(o.variantRollupKeys!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchRequest--;
}

core.List<api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>
buildUnnamed98() => [
  buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(),
  buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(),
];

void checkUnnamed98(
  core.List<api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchRequestBoostSpec = 0;
api.GoogleCloudRetailV2SearchRequestBoostSpec
buildGoogleCloudRetailV2SearchRequestBoostSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestBoostSpec();
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed98();
    o.skipBoostSpecValidation = true;
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestBoostSpec(
  api.GoogleCloudRetailV2SearchRequestBoostSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpec < 3) {
    checkUnnamed98(o.conditionBoostSpecs!);
    unittest.expect(o.skipBoostSpecValidation!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec--;
}

core.int
buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec = 0;
api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec();
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec <
      3) {
    o.boost = 42.0;
    o.condition = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(
  api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec <
      3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec =
    0;
api.GoogleCloudRetailV2SearchRequestConversationalSearchSpec
buildGoogleCloudRetailV2SearchRequestConversationalSearchSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestConversationalSearchSpec();
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec <
      3) {
    o.conversationId = 'foo';
    o.followupConversationRequested = true;
    o.userAnswer =
        buildGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer();
  }
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestConversationalSearchSpec(
  api.GoogleCloudRetailV2SearchRequestConversationalSearchSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec <
      3) {
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.followupConversationRequested!, unittest.isTrue);
    checkGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer(
      o.userAnswer!,
    );
  }
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpec--;
}

core.int
buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer =
    0;
api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer
buildGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer() {
  final o =
      api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer();
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer++;
  if (buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer <
      3) {
    o.selectedAnswer =
        buildGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
    o.textAnswer = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer(
  api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer++;
  if (buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer <
      3) {
    checkGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
      o.selectedAnswer!,
    );
    unittest.expect(o.textAnswer!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer--;
}

core.List<api.GoogleCloudRetailV2ProductAttributeValue> buildUnnamed99() => [
  buildGoogleCloudRetailV2ProductAttributeValue(),
  buildGoogleCloudRetailV2ProductAttributeValue(),
];

void checkUnnamed99(core.List<api.GoogleCloudRetailV2ProductAttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ProductAttributeValue(o[0]);
  checkGoogleCloudRetailV2ProductAttributeValue(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer =
    0;
api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
buildGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer() {
  final o =
      api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer <
      3) {
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
    o.productAttributeValues = buildUnnamed99();
  }
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
  api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer <
      3) {
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
    checkUnnamed99(o.productAttributeValues!);
  }
  buildCounterGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec = 0;
api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec
buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec();
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(
  api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec--;
}

core.List<core.String> buildUnnamed100() => ['foo', 'foo'];

void checkUnnamed100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2SearchRequestFacetSpec = 0;
api.GoogleCloudRetailV2SearchRequestFacetSpec
buildGoogleCloudRetailV2SearchRequestFacetSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestFacetSpec();
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpec < 3) {
    o.enableDynamicPosition = true;
    o.excludedFilterKeys = buildUnnamed100();
    o.facetKey = buildGoogleCloudRetailV2SearchRequestFacetSpecFacetKey();
    o.limit = 42;
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestFacetSpec(
  api.GoogleCloudRetailV2SearchRequestFacetSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpec < 3) {
    unittest.expect(o.enableDynamicPosition!, unittest.isTrue);
    checkUnnamed100(o.excludedFilterKeys!);
    checkGoogleCloudRetailV2SearchRequestFacetSpecFacetKey(o.facetKey!);
    unittest.expect(o.limit!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec--;
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2Interval> buildUnnamed102() => [
  buildGoogleCloudRetailV2Interval(),
  buildGoogleCloudRetailV2Interval(),
];

void checkUnnamed102(core.List<api.GoogleCloudRetailV2Interval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Interval(o[0]);
  checkGoogleCloudRetailV2Interval(o[1]);
}

core.List<core.String> buildUnnamed103() => ['foo', 'foo'];

void checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed104() => ['foo', 'foo'];

void checkUnnamed104(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey = 0;
api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey
buildGoogleCloudRetailV2SearchRequestFacetSpecFacetKey() {
  final o = api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey();
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey < 3) {
    o.caseInsensitive = true;
    o.contains = buildUnnamed101();
    o.intervals = buildUnnamed102();
    o.key = 'foo';
    o.orderBy = 'foo';
    o.prefixes = buildUnnamed103();
    o.query = 'foo';
    o.restrictedValues = buildUnnamed104();
    o.returnMinMax = true;
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestFacetSpecFacetKey(
  api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey < 3) {
    unittest.expect(o.caseInsensitive!, unittest.isTrue);
    checkUnnamed101(o.contains!);
    checkUnnamed102(o.intervals!);
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed103(o.prefixes!);
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed104(o.restrictedValues!);
    unittest.expect(o.returnMinMax!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec = 0;
api.GoogleCloudRetailV2SearchRequestPersonalizationSpec
buildGoogleCloudRetailV2SearchRequestPersonalizationSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestPersonalizationSpec();
  buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestPersonalizationSpec(
  api.GoogleCloudRetailV2SearchRequestPersonalizationSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchRequestPersonalizationSpec--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec = 0;
api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec
buildGoogleCloudRetailV2SearchRequestQueryExpansionSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec();
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec < 3) {
    o.condition = 'foo';
    o.pinUnexpandedResults = true;
  }
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestQueryExpansionSpec(
  api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.pinUnexpandedResults!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec = 0;
api.GoogleCloudRetailV2SearchRequestSpellCorrectionSpec
buildGoogleCloudRetailV2SearchRequestSpellCorrectionSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestSpellCorrectionSpec();
  buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestSpellCorrectionSpec(
  api.GoogleCloudRetailV2SearchRequestSpellCorrectionSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchRequestSpellCorrectionSpec--;
}

core.List<api.GoogleCloudRetailV2Tile> buildUnnamed105() => [
  buildGoogleCloudRetailV2Tile(),
  buildGoogleCloudRetailV2Tile(),
];

void checkUnnamed105(core.List<api.GoogleCloudRetailV2Tile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Tile(o[0]);
  checkGoogleCloudRetailV2Tile(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec = 0;
api.GoogleCloudRetailV2SearchRequestTileNavigationSpec
buildGoogleCloudRetailV2SearchRequestTileNavigationSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestTileNavigationSpec();
  buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec < 3) {
    o.appliedTiles = buildUnnamed105();
    o.tileNavigationRequested = true;
  }
  buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestTileNavigationSpec(
  api.GoogleCloudRetailV2SearchRequestTileNavigationSpec o,
) {
  buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec < 3) {
    checkUnnamed105(o.appliedTiles!);
    unittest.expect(o.tileNavigationRequested!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2SearchRequestTileNavigationSpec--;
}

core.List<core.String> buildUnnamed106() => ['foo', 'foo'];

void checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2ExperimentInfo> buildUnnamed107() => [
  buildGoogleCloudRetailV2ExperimentInfo(),
  buildGoogleCloudRetailV2ExperimentInfo(),
];

void checkUnnamed107(core.List<api.GoogleCloudRetailV2ExperimentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ExperimentInfo(o[0]);
  checkGoogleCloudRetailV2ExperimentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2SearchResponseFacet> buildUnnamed108() => [
  buildGoogleCloudRetailV2SearchResponseFacet(),
  buildGoogleCloudRetailV2SearchResponseFacet(),
];

void checkUnnamed108(core.List<api.GoogleCloudRetailV2SearchResponseFacet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseFacet(o[0]);
  checkGoogleCloudRetailV2SearchResponseFacet(o[1]);
}

core.List<api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>
buildUnnamed109() => [
  buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(),
  buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(),
];

void checkUnnamed109(
  core.List<api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.List<api.GoogleCloudRetailV2SearchResponseSearchResult>
buildUnnamed110() => [
  buildGoogleCloudRetailV2SearchResponseSearchResult(),
  buildGoogleCloudRetailV2SearchResponseSearchResult(),
];

void checkUnnamed110(
  core.List<api.GoogleCloudRetailV2SearchResponseSearchResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseSearchResult(o[0]);
  checkGoogleCloudRetailV2SearchResponseSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchResponse = 0;
api.GoogleCloudRetailV2SearchResponse buildGoogleCloudRetailV2SearchResponse() {
  final o = api.GoogleCloudRetailV2SearchResponse();
  buildCounterGoogleCloudRetailV2SearchResponse++;
  if (buildCounterGoogleCloudRetailV2SearchResponse < 3) {
    o.appliedControls = buildUnnamed106();
    o.attributionToken = 'foo';
    o.conversationalSearchResult =
        buildGoogleCloudRetailV2SearchResponseConversationalSearchResult();
    o.correctedQuery = 'foo';
    o.experimentInfo = buildUnnamed107();
    o.facets = buildUnnamed108();
    o.invalidConditionBoostSpecs = buildUnnamed109();
    o.nextPageToken = 'foo';
    o.pinControlMetadata = buildGoogleCloudRetailV2PinControlMetadata();
    o.queryExpansionInfo =
        buildGoogleCloudRetailV2SearchResponseQueryExpansionInfo();
    o.redirectUri = 'foo';
    o.results = buildUnnamed110();
    o.tileNavigationResult =
        buildGoogleCloudRetailV2SearchResponseTileNavigationResult();
    o.totalSize = 42;
  }
  buildCounterGoogleCloudRetailV2SearchResponse--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponse(
  api.GoogleCloudRetailV2SearchResponse o,
) {
  buildCounterGoogleCloudRetailV2SearchResponse++;
  if (buildCounterGoogleCloudRetailV2SearchResponse < 3) {
    checkUnnamed106(o.appliedControls!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2SearchResponseConversationalSearchResult(
      o.conversationalSearchResult!,
    );
    unittest.expect(o.correctedQuery!, unittest.equals('foo'));
    checkUnnamed107(o.experimentInfo!);
    checkUnnamed108(o.facets!);
    checkUnnamed109(o.invalidConditionBoostSpecs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2PinControlMetadata(o.pinControlMetadata!);
    checkGoogleCloudRetailV2SearchResponseQueryExpansionInfo(
      o.queryExpansionInfo!,
    );
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
    checkUnnamed110(o.results!);
    checkGoogleCloudRetailV2SearchResponseTileNavigationResult(
      o.tileNavigationResult!,
    );
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2SearchResponse--;
}

core.List<
  api.GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter
>
buildUnnamed111() => [
  buildGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(),
  buildGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(),
];

void checkUnnamed111(
  core.List<
    api.GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(
    o[0],
  );
  checkGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(
    o[1],
  );
}

core.List<
  api.GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer
>
buildUnnamed112() => [
  buildGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer(),
  buildGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer(),
];

void checkUnnamed112(
  core.List<
    api.GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer(
    o[0],
  );
  checkGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer(
    o[1],
  );
}

core.int
buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult = 0;
api.GoogleCloudRetailV2SearchResponseConversationalSearchResult
buildGoogleCloudRetailV2SearchResponseConversationalSearchResult() {
  final o = api.GoogleCloudRetailV2SearchResponseConversationalSearchResult();
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult <
      3) {
    o.additionalFilter =
        buildGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter();
    o.additionalFilters = buildUnnamed111();
    o.conversationId = 'foo';
    o.followupQuestion = 'foo';
    o.refinedQuery = 'foo';
    o.suggestedAnswers = buildUnnamed112();
  }
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseConversationalSearchResult(
  api.GoogleCloudRetailV2SearchResponseConversationalSearchResult o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult <
      3) {
    checkGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(
      o.additionalFilter!,
    );
    checkUnnamed111(o.additionalFilters!);
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.followupQuestion!, unittest.equals('foo'));
    unittest.expect(o.refinedQuery!, unittest.equals('foo'));
    checkUnnamed112(o.suggestedAnswers!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResult--;
}

core.int
buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter =
    0;
api.GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter
buildGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter() {
  final o =
      api.GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter();
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter <
      3) {
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter--;
  return o;
}

void
checkGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(
  api.GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter
  o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter <
      3) {
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter--;
}

core.int
buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer =
    0;
api.GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer
buildGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer() {
  final o =
      api.GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer();
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer <
      3) {
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer(
  api.GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer <
      3) {
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer--;
}

core.List<api.GoogleCloudRetailV2SearchResponseFacetFacetValue>
buildUnnamed113() => [
  buildGoogleCloudRetailV2SearchResponseFacetFacetValue(),
  buildGoogleCloudRetailV2SearchResponseFacetFacetValue(),
];

void checkUnnamed113(
  core.List<api.GoogleCloudRetailV2SearchResponseFacetFacetValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseFacetFacetValue(o[0]);
  checkGoogleCloudRetailV2SearchResponseFacetFacetValue(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchResponseFacet = 0;
api.GoogleCloudRetailV2SearchResponseFacet
buildGoogleCloudRetailV2SearchResponseFacet() {
  final o = api.GoogleCloudRetailV2SearchResponseFacet();
  buildCounterGoogleCloudRetailV2SearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacet < 3) {
    o.dynamicFacet = true;
    o.key = 'foo';
    o.values = buildUnnamed113();
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacet--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseFacet(
  api.GoogleCloudRetailV2SearchResponseFacet o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacet < 3) {
    unittest.expect(o.dynamicFacet!, unittest.isTrue);
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed113(o.values!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacet--;
}

core.int buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue = 0;
api.GoogleCloudRetailV2SearchResponseFacetFacetValue
buildGoogleCloudRetailV2SearchResponseFacetFacetValue() {
  final o = api.GoogleCloudRetailV2SearchResponseFacetFacetValue();
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue < 3) {
    o.count = 'foo';
    o.interval = buildGoogleCloudRetailV2Interval();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseFacetFacetValue(
  api.GoogleCloudRetailV2SearchResponseFacetFacetValue o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    checkGoogleCloudRetailV2Interval(o.interval!);
    unittest.expect(o.maxValue!, unittest.equals(42.0));
    unittest.expect(o.minValue!, unittest.equals(42.0));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue--;
}

core.int buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo = 0;
api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo
buildGoogleCloudRetailV2SearchResponseQueryExpansionInfo() {
  final o = api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo();
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo < 3) {
    o.expandedQuery = true;
    o.pinnedResultCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseQueryExpansionInfo(
  api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo < 3) {
    unittest.expect(o.expandedQuery!, unittest.isTrue);
    unittest.expect(o.pinnedResultCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo--;
}

core.Map<core.String, core.String> buildUnnamed114() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed114(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRetailV2DoubleList> buildUnnamed115() => {
  'x': buildGoogleCloudRetailV2DoubleList(),
  'y': buildGoogleCloudRetailV2DoubleList(),
};

void checkUnnamed115(
  core.Map<core.String, api.GoogleCloudRetailV2DoubleList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2DoubleList(o['x']!);
  checkGoogleCloudRetailV2DoubleList(o['y']!);
}

core.List<core.String> buildUnnamed116() => ['foo', 'foo'];

void checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed117() => {
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

void checkUnnamed117(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2SearchResponseSearchResult = 0;
api.GoogleCloudRetailV2SearchResponseSearchResult
buildGoogleCloudRetailV2SearchResponseSearchResult() {
  final o = api.GoogleCloudRetailV2SearchResponseSearchResult();
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseSearchResult < 3) {
    o.id = 'foo';
    o.matchingVariantCount = 42;
    o.matchingVariantFields = buildUnnamed114();
    o.modelScores = buildUnnamed115();
    o.personalLabels = buildUnnamed116();
    o.product = buildGoogleCloudRetailV2Product();
    o.variantRollupValues = buildUnnamed117();
  }
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseSearchResult(
  api.GoogleCloudRetailV2SearchResponseSearchResult o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseSearchResult < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.matchingVariantCount!, unittest.equals(42));
    checkUnnamed114(o.matchingVariantFields!);
    checkUnnamed115(o.modelScores!);
    checkUnnamed116(o.personalLabels!);
    checkGoogleCloudRetailV2Product(o.product!);
    checkUnnamed117(o.variantRollupValues!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult--;
}

core.List<api.GoogleCloudRetailV2Tile> buildUnnamed118() => [
  buildGoogleCloudRetailV2Tile(),
  buildGoogleCloudRetailV2Tile(),
];

void checkUnnamed118(core.List<api.GoogleCloudRetailV2Tile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Tile(o[0]);
  checkGoogleCloudRetailV2Tile(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult = 0;
api.GoogleCloudRetailV2SearchResponseTileNavigationResult
buildGoogleCloudRetailV2SearchResponseTileNavigationResult() {
  final o = api.GoogleCloudRetailV2SearchResponseTileNavigationResult();
  buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult < 3) {
    o.tiles = buildUnnamed118();
  }
  buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseTileNavigationResult(
  api.GoogleCloudRetailV2SearchResponseTileNavigationResult o,
) {
  buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult < 3) {
    checkUnnamed118(o.tiles!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseTileNavigationResult--;
}

core.List<core.String> buildUnnamed119() => ['foo', 'foo'];

void checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed120() => ['foo', 'foo'];

void checkUnnamed120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed121() => ['foo', 'foo'];

void checkUnnamed121(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed122() => ['foo', 'foo'];

void checkUnnamed122(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed123() => ['foo', 'foo'];

void checkUnnamed123(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed124() => ['foo', 'foo'];

void checkUnnamed124(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed125() => ['foo', 'foo'];

void checkUnnamed125(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed126() => ['foo', 'foo'];

void checkUnnamed126(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed127() => ['foo', 'foo'];

void checkUnnamed127(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed128() => ['foo', 'foo'];

void checkUnnamed128(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2ServingConfig = 0;
api.GoogleCloudRetailV2ServingConfig buildGoogleCloudRetailV2ServingConfig() {
  final o = api.GoogleCloudRetailV2ServingConfig();
  buildCounterGoogleCloudRetailV2ServingConfig++;
  if (buildCounterGoogleCloudRetailV2ServingConfig < 3) {
    o.boostControlIds = buildUnnamed119();
    o.displayName = 'foo';
    o.diversityLevel = 'foo';
    o.diversityType = 'foo';
    o.doNotAssociateControlIds = buildUnnamed120();
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec();
    o.enableCategoryFilterLevel = 'foo';
    o.facetControlIds = buildUnnamed121();
    o.filterControlIds = buildUnnamed122();
    o.ignoreControlIds = buildUnnamed123();
    o.ignoreRecsDenylist = true;
    o.modelId = 'foo';
    o.name = 'foo';
    o.onewaySynonymsControlIds = buildUnnamed124();
    o.personalizationSpec =
        buildGoogleCloudRetailV2SearchRequestPersonalizationSpec();
    o.priceRerankingLevel = 'foo';
    o.redirectControlIds = buildUnnamed125();
    o.replacementControlIds = buildUnnamed126();
    o.solutionTypes = buildUnnamed127();
    o.twowaySynonymsControlIds = buildUnnamed128();
  }
  buildCounterGoogleCloudRetailV2ServingConfig--;
  return o;
}

void checkGoogleCloudRetailV2ServingConfig(
  api.GoogleCloudRetailV2ServingConfig o,
) {
  buildCounterGoogleCloudRetailV2ServingConfig++;
  if (buildCounterGoogleCloudRetailV2ServingConfig < 3) {
    checkUnnamed119(o.boostControlIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.diversityLevel!, unittest.equals('foo'));
    unittest.expect(o.diversityType!, unittest.equals('foo'));
    checkUnnamed120(o.doNotAssociateControlIds!);
    checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(o.dynamicFacetSpec!);
    unittest.expect(o.enableCategoryFilterLevel!, unittest.equals('foo'));
    checkUnnamed121(o.facetControlIds!);
    checkUnnamed122(o.filterControlIds!);
    checkUnnamed123(o.ignoreControlIds!);
    unittest.expect(o.ignoreRecsDenylist!, unittest.isTrue);
    unittest.expect(o.modelId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed124(o.onewaySynonymsControlIds!);
    checkGoogleCloudRetailV2SearchRequestPersonalizationSpec(
      o.personalizationSpec!,
    );
    unittest.expect(o.priceRerankingLevel!, unittest.equals('foo'));
    checkUnnamed125(o.redirectControlIds!);
    checkUnnamed126(o.replacementControlIds!);
    checkUnnamed127(o.solutionTypes!);
    checkUnnamed128(o.twowaySynonymsControlIds!);
  }
  buildCounterGoogleCloudRetailV2ServingConfig--;
}

core.int buildCounterGoogleCloudRetailV2SetDefaultBranchRequest = 0;
api.GoogleCloudRetailV2SetDefaultBranchRequest
buildGoogleCloudRetailV2SetDefaultBranchRequest() {
  final o = api.GoogleCloudRetailV2SetDefaultBranchRequest();
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2SetDefaultBranchRequest < 3) {
    o.branchId = 'foo';
    o.force = true;
    o.note = 'foo';
  }
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest--;
  return o;
}

void checkGoogleCloudRetailV2SetDefaultBranchRequest(
  api.GoogleCloudRetailV2SetDefaultBranchRequest o,
) {
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2SetDefaultBranchRequest < 3) {
    unittest.expect(o.branchId!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.note!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest--;
}

core.int buildCounterGoogleCloudRetailV2SetInventoryRequest = 0;
api.GoogleCloudRetailV2SetInventoryRequest
buildGoogleCloudRetailV2SetInventoryRequest() {
  final o = api.GoogleCloudRetailV2SetInventoryRequest();
  buildCounterGoogleCloudRetailV2SetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2SetInventoryRequest < 3) {
    o.allowMissing = true;
    o.inventory = buildGoogleCloudRetailV2Product();
    o.setMask = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2SetInventoryRequest--;
  return o;
}

void checkGoogleCloudRetailV2SetInventoryRequest(
  api.GoogleCloudRetailV2SetInventoryRequest o,
) {
  buildCounterGoogleCloudRetailV2SetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2SetInventoryRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkGoogleCloudRetailV2Product(o.inventory!);
    unittest.expect(o.setMask!, unittest.equals('foo'));
    unittest.expect(o.setTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2SetInventoryRequest--;
}

core.List<core.String> buildUnnamed129() => ['foo', 'foo'];

void checkUnnamed129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2StringList = 0;
api.GoogleCloudRetailV2StringList buildGoogleCloudRetailV2StringList() {
  final o = api.GoogleCloudRetailV2StringList();
  buildCounterGoogleCloudRetailV2StringList++;
  if (buildCounterGoogleCloudRetailV2StringList < 3) {
    o.values = buildUnnamed129();
  }
  buildCounterGoogleCloudRetailV2StringList--;
  return o;
}

void checkGoogleCloudRetailV2StringList(api.GoogleCloudRetailV2StringList o) {
  buildCounterGoogleCloudRetailV2StringList++;
  if (buildCounterGoogleCloudRetailV2StringList < 3) {
    checkUnnamed129(o.values!);
  }
  buildCounterGoogleCloudRetailV2StringList--;
}

core.int buildCounterGoogleCloudRetailV2Tile = 0;
api.GoogleCloudRetailV2Tile buildGoogleCloudRetailV2Tile() {
  final o = api.GoogleCloudRetailV2Tile();
  buildCounterGoogleCloudRetailV2Tile++;
  if (buildCounterGoogleCloudRetailV2Tile < 3) {
    o.productAttributeInterval =
        buildGoogleCloudRetailV2ProductAttributeInterval();
    o.productAttributeValue = buildGoogleCloudRetailV2ProductAttributeValue();
    o.representativeProductId = 'foo';
  }
  buildCounterGoogleCloudRetailV2Tile--;
  return o;
}

void checkGoogleCloudRetailV2Tile(api.GoogleCloudRetailV2Tile o) {
  buildCounterGoogleCloudRetailV2Tile++;
  if (buildCounterGoogleCloudRetailV2Tile < 3) {
    checkGoogleCloudRetailV2ProductAttributeInterval(
      o.productAttributeInterval!,
    );
    checkGoogleCloudRetailV2ProductAttributeValue(o.productAttributeValue!);
    unittest.expect(o.representativeProductId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2Tile--;
}

core.int buildCounterGoogleCloudRetailV2TuneModelRequest = 0;
api.GoogleCloudRetailV2TuneModelRequest
buildGoogleCloudRetailV2TuneModelRequest() {
  final o = api.GoogleCloudRetailV2TuneModelRequest();
  buildCounterGoogleCloudRetailV2TuneModelRequest++;
  if (buildCounterGoogleCloudRetailV2TuneModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2TuneModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2TuneModelRequest(
  api.GoogleCloudRetailV2TuneModelRequest o,
) {
  buildCounterGoogleCloudRetailV2TuneModelRequest++;
  if (buildCounterGoogleCloudRetailV2TuneModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2TuneModelRequest--;
}

core.int buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest =
    0;
api.GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest
buildGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest() {
  final o = api.GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest();
  buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest++;
  if (buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest <
      3) {
    o.generativeQuestionConfig =
        buildGoogleCloudRetailV2GenerativeQuestionConfig();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest--;
  return o;
}

void checkGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest(
  api.GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest o,
) {
  buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest++;
  if (buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest <
      3) {
    checkGoogleCloudRetailV2GenerativeQuestionConfig(
      o.generativeQuestionConfig!,
    );
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
buildUnnamed130() => {
  'x': buildGoogleCloudRetailV2CustomAttribute(),
  'y': buildGoogleCloudRetailV2CustomAttribute(),
};

void checkUnnamed130(
  core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed131() => ['foo', 'foo'];

void checkUnnamed131(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed132() => ['foo', 'foo'];

void checkUnnamed132(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2PanelInfo> buildUnnamed133() => [
  buildGoogleCloudRetailV2PanelInfo(),
  buildGoogleCloudRetailV2PanelInfo(),
];

void checkUnnamed133(core.List<api.GoogleCloudRetailV2PanelInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2PanelInfo(o[0]);
  checkGoogleCloudRetailV2PanelInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2ProductDetail> buildUnnamed134() => [
  buildGoogleCloudRetailV2ProductDetail(),
  buildGoogleCloudRetailV2ProductDetail(),
];

void checkUnnamed134(core.List<api.GoogleCloudRetailV2ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ProductDetail(o[0]);
  checkGoogleCloudRetailV2ProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2UserEvent = 0;
api.GoogleCloudRetailV2UserEvent buildGoogleCloudRetailV2UserEvent() {
  final o = api.GoogleCloudRetailV2UserEvent();
  buildCounterGoogleCloudRetailV2UserEvent++;
  if (buildCounterGoogleCloudRetailV2UserEvent < 3) {
    o.attributes = buildUnnamed130();
    o.attributionToken = 'foo';
    o.cartId = 'foo';
    o.completionDetail = buildGoogleCloudRetailV2CompletionDetail();
    o.entity = 'foo';
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.experimentIds = buildUnnamed131();
    o.filter = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed132();
    o.pageViewId = 'foo';
    o.panels = buildUnnamed133();
    o.productDetails = buildUnnamed134();
    o.purchaseTransaction = buildGoogleCloudRetailV2PurchaseTransaction();
    o.referrerUri = 'foo';
    o.searchQuery = 'foo';
    o.sessionId = 'foo';
    o.uri = 'foo';
    o.userInfo = buildGoogleCloudRetailV2UserInfo();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2UserEvent--;
  return o;
}

void checkGoogleCloudRetailV2UserEvent(api.GoogleCloudRetailV2UserEvent o) {
  buildCounterGoogleCloudRetailV2UserEvent++;
  if (buildCounterGoogleCloudRetailV2UserEvent < 3) {
    checkUnnamed130(o.attributes!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    unittest.expect(o.cartId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2CompletionDetail(o.completionDetail!);
    unittest.expect(o.entity!, unittest.equals('foo'));
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
    checkUnnamed131(o.experimentIds!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals(42));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed132(o.pageCategories!);
    unittest.expect(o.pageViewId!, unittest.equals('foo'));
    checkUnnamed133(o.panels!);
    checkUnnamed134(o.productDetails!);
    checkGoogleCloudRetailV2PurchaseTransaction(o.purchaseTransaction!);
    unittest.expect(o.referrerUri!, unittest.equals('foo'));
    unittest.expect(o.searchQuery!, unittest.equals('foo'));
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkGoogleCloudRetailV2UserInfo(o.userInfo!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2UserEvent--;
}

core.List<api.GoogleCloudRetailV2UserEvent> buildUnnamed135() => [
  buildGoogleCloudRetailV2UserEvent(),
  buildGoogleCloudRetailV2UserEvent(),
];

void checkUnnamed135(core.List<api.GoogleCloudRetailV2UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2UserEvent(o[0]);
  checkGoogleCloudRetailV2UserEvent(o[1]);
}

core.int buildCounterGoogleCloudRetailV2UserEventInlineSource = 0;
api.GoogleCloudRetailV2UserEventInlineSource
buildGoogleCloudRetailV2UserEventInlineSource() {
  final o = api.GoogleCloudRetailV2UserEventInlineSource();
  buildCounterGoogleCloudRetailV2UserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2UserEventInlineSource < 3) {
    o.userEvents = buildUnnamed135();
  }
  buildCounterGoogleCloudRetailV2UserEventInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2UserEventInlineSource(
  api.GoogleCloudRetailV2UserEventInlineSource o,
) {
  buildCounterGoogleCloudRetailV2UserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2UserEventInlineSource < 3) {
    checkUnnamed135(o.userEvents!);
  }
  buildCounterGoogleCloudRetailV2UserEventInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2UserEventInputConfig = 0;
api.GoogleCloudRetailV2UserEventInputConfig
buildGoogleCloudRetailV2UserEventInputConfig() {
  final o = api.GoogleCloudRetailV2UserEventInputConfig();
  buildCounterGoogleCloudRetailV2UserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2UserEventInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2BigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2GcsSource();
    o.userEventInlineSource = buildGoogleCloudRetailV2UserEventInlineSource();
  }
  buildCounterGoogleCloudRetailV2UserEventInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2UserEventInputConfig(
  api.GoogleCloudRetailV2UserEventInputConfig o,
) {
  buildCounterGoogleCloudRetailV2UserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2UserEventInputConfig < 3) {
    checkGoogleCloudRetailV2BigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2GcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2UserEventInlineSource(o.userEventInlineSource!);
  }
  buildCounterGoogleCloudRetailV2UserEventInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2UserInfo = 0;
api.GoogleCloudRetailV2UserInfo buildGoogleCloudRetailV2UserInfo() {
  final o = api.GoogleCloudRetailV2UserInfo();
  buildCounterGoogleCloudRetailV2UserInfo++;
  if (buildCounterGoogleCloudRetailV2UserInfo < 3) {
    o.directUserRequest = true;
    o.ipAddress = 'foo';
    o.userAgent = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudRetailV2UserInfo--;
  return o;
}

void checkGoogleCloudRetailV2UserInfo(api.GoogleCloudRetailV2UserInfo o) {
  buildCounterGoogleCloudRetailV2UserInfo++;
  if (buildCounterGoogleCloudRetailV2UserInfo < 3) {
    unittest.expect(o.directUserRequest!, unittest.isTrue);
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.userAgent!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2UserInfo--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed136() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed136(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed137() => ['foo', 'foo'];

void checkUnnamed137(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed136();
    o.unreachable = buildUnnamed137();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed136(o.operations!);
    checkUnnamed137(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed138() => {
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

void checkUnnamed138(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed139() => {
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

void checkUnnamed139(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed138();
    o.name = 'foo';
    o.response = buildUnnamed139();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed138(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed139(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed140() => {
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

void checkUnnamed140(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed141() => [
  buildUnnamed140(),
  buildUnnamed140(),
];

void checkUnnamed141(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed140(o[0]);
  checkUnnamed140(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed141();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed141(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.List<core.String> buildUnnamed142() => ['foo', 'foo'];

void checkUnnamed142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiHttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2AddCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2AddCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2AddCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2AddCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2AddControlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2AddControlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2AddControlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2AddControlRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2AddFulfillmentPlacesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2AddFulfillmentPlacesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2AddFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2AddFulfillmentPlacesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2AddLocalInventoriesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2AddLocalInventoriesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2AddLocalInventoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2AddLocalInventoriesRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2AttributesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2AttributesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2AttributesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2AttributesConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Audience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Audience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Audience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Audience(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2BigQuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2BigQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2BigQuerySource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2BigQuerySource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Catalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Catalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Catalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Catalog(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CatalogAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CatalogAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CatalogAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CatalogAttribute(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CatalogAttributeFacetConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2CatalogAttributeFacetConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2CatalogAttributeFacetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2CatalogAttributeFacetConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CatalogAttributeFacetConfigIgnoredFacetValues(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CatalogAttributeFacetConfigRerankConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2CollectUserEventRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CollectUserEventRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CollectUserEventRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CollectUserEventRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ColorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CompleteQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompleteQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompleteQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CompleteQueryResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CompleteQueryResponseAttributeResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CompleteQueryResponseAttributeResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CompleteQueryResponseAttributeResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CompleteQueryResponseAttributeResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CompleteQueryResponseCompletionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2CompletionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompletionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompletionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CompletionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CompletionDataInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompletionDataInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompletionDataInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CompletionDataInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CompletionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompletionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompletionDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CompletionDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Condition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Condition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Condition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ConditionQueryTerm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ConditionQueryTerm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ConditionQueryTerm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ConditionQueryTerm(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ConditionTimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ConditionTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ConditionTimeRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ConditionTimeRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Control', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Control();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Control.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Control(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchCustomizationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchCustomizationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchCustomizationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2ConversationalSearchRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2ConversationalSearchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2ConversationalSearchRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchRequestConversationalFilteringSpec(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchRequestSearchParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchRequestSearchParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchRequestSearchParams.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchRequestSearchParams(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchRequestUserAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchRequestUserAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchRequestUserAnswer(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchRequestUserAnswerSelectedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2ConversationalSearchResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2ConversationalSearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2ConversationalSearchResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResult(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchResponseConversationalFilteringResultAdditionalFilter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestion(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchResponseFollowupQuestionSuggestedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ConversationalSearchResponseRefinedSearch.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ConversationalSearchResponseRefinedSearch(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CustomAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2CustomAttribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2DoubleList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2DoubleList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2DoubleList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2DoubleList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ExperimentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ExperimentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ExperimentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ExperimentInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ExperimentInfoServingConfigExperiment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ExperimentInfoServingConfigExperiment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ExperimentInfoServingConfigExperiment.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ExperimentInfoServingConfigExperiment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ExportAnalyticsMetricsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2ExportAnalyticsMetricsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ExportAnalyticsMetricsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ExportAnalyticsMetricsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2FulfillmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2FulfillmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2FulfillmentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2FulfillmentInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2GcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2GenerativeQuestionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2GenerativeQuestionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2GenerativeQuestionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2GenerativeQuestionConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2GenerativeQuestionsFeatureConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2GenerativeQuestionsFeatureConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2GetDefaultBranchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2GetDefaultBranchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2GetDefaultBranchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2GetDefaultBranchResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Image();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Image.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Image(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ImportCompletionDataRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2ImportCompletionDataRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2ImportCompletionDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2ImportCompletionDataRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2ImportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportErrorsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ImportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportProductsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ImportProductsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportUserEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportUserEventsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ImportUserEventsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2IntentClassificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2IntentClassificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2IntentClassificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2IntentClassificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2IntentClassificationConfigExample',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2IntentClassificationConfigExample();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2IntentClassificationConfigExample.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2IntentClassificationConfigExample(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2IntentClassificationConfigInlineForceIntent.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2IntentClassificationConfigInlineForceIntent(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2IntentClassificationConfigInlineSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2IntentClassificationConfigInlineSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2IntentClassificationConfigInlineSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2IntentClassificationConfigInlineSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Interval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Interval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ListCatalogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListCatalogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListCatalogsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ListCatalogsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ListControlsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListControlsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListControlsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ListControlsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2ListModelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListModelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ListModelsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListProductsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ListProductsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ListServingConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2ListServingConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2ListServingConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2ListServingConfigsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2LocalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2LocalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2LocalInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2LocalInventory(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Model', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Model();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Model.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Model(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2ModelModelFeaturesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ModelModelFeaturesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ModelModelFeaturesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ModelModelFeaturesConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ModelServingConfigList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ModelServingConfigList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ModelServingConfigList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ModelServingConfigList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2OutputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2OutputConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2OutputConfigBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2OutputConfigBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2OutputConfigBigQueryDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2OutputConfigBigQueryDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2OutputConfigGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2OutputConfigGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2OutputConfigGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2OutputConfigGcsDestination(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2PanelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PanelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PanelInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PanelInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PauseModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PauseModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PauseModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PauseModelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PinControlMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PinControlMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PinControlMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PinControlMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2PinControlMetadataProductPins',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2PinControlMetadataProductPins();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2PinControlMetadataProductPins.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2PinControlMetadataProductPins(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2PredictRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PredictRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PredictRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PredictRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PredictResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PredictResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PredictResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PredictResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2PredictResponsePredictionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2PredictResponsePredictionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2PredictResponsePredictionResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2PredictResponsePredictionResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2PriceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PriceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PriceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PriceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PriceInfoPriceRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PriceInfoPriceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PriceInfoPriceRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PriceInfoPriceRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Product.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductAttributeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductAttributeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductAttributeInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ProductAttributeInterval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductAttributeValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ProductAttributeValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ProductDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ProductInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ProductInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductLevelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductLevelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductLevelConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ProductLevelConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Promotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Promotion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Promotion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurchaseTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurchaseTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurchaseTransaction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PurchaseTransaction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurgeProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurgeProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurgeProductsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PurgeProductsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurgeUserEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurgeUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurgeUserEventsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2PurgeUserEventsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Rating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Rating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Rating.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Rating(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RejoinUserEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RejoinUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RejoinUserEventsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RejoinUserEventsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2RemoveCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2RemoveCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2RemoveCatalogAttributeRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2RemoveCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2RemoveControlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RemoveControlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RemoveControlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RemoveControlRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2RemoveFulfillmentPlacesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2RemoveFulfillmentPlacesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2RemoveFulfillmentPlacesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2RemoveLocalInventoriesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2RemoveLocalInventoriesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2RemoveLocalInventoriesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2RemoveLocalInventoriesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2ReplaceCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2ReplaceCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2ReplaceCatalogAttributeRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2ReplaceCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2ResumeModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ResumeModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ResumeModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ResumeModelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Rule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Rule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Rule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleBoostAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleBoostAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleBoostAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleBoostAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleDoNotAssociateAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleDoNotAssociateAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleDoNotAssociateAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleDoNotAssociateAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleFilterAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleFilterAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleFilterAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleFilterAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2RuleForceReturnFacetAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2RuleForceReturnFacetAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2RuleForceReturnFacetAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2RuleForceReturnFacetAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2RuleIgnoreAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleIgnoreAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleIgnoreAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleIgnoreAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleOnewaySynonymsAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleOnewaySynonymsAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleOnewaySynonymsAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleOnewaySynonymsAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RulePinAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RulePinAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RulePinAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RulePinAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleRedirectAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleRedirectAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleRedirectAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleRedirectAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleRemoveFacetAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleRemoveFacetAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleRemoveFacetAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleRemoveFacetAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleReplacementAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleReplacementAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleReplacementAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleReplacementAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RuleTwowaySynonymsAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RuleTwowaySynonymsAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RuleTwowaySynonymsAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2RuleTwowaySynonymsAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SafetySetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SafetySetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SafetySetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SafetySetting(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SearchRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequestBoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestBoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestBoostSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SearchRequestBoostSpec(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestConversationalSearchSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchRequestConversationalSearchSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestConversationalSearchSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestConversationalSearchSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestDynamicFacetSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequestFacetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestFacetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestFacetSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SearchRequestFacetSpec(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestFacetSpecFacetKey',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchRequestFacetSpecFacetKey();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestFacetSpecFacetKey(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestPersonalizationSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchRequestPersonalizationSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestPersonalizationSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestPersonalizationSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestQueryExpansionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchRequestQueryExpansionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestQueryExpansionSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestSpellCorrectionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchRequestSpellCorrectionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestSpellCorrectionSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestSpellCorrectionSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchRequestTileNavigationSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchRequestTileNavigationSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchRequestTileNavigationSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchRequestTileNavigationSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2SearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SearchResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseConversationalSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchResponseConversationalSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchResponseConversationalSearchResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchResponseConversationalSearchResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchResponseConversationalSearchResultAdditionalFilter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchResponseConversationalSearchResultSuggestedAnswer(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2SearchResponseFacet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponseFacet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchResponseFacet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SearchResponseFacet(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseFacetFacetValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchResponseFacetFacetValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchResponseFacetFacetValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchResponseFacetFacetValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseQueryExpansionInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchResponseQueryExpansionInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchResponseQueryExpansionInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchResponseSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2SearchResponseSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2SearchResponseSearchResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2SearchResponseTileNavigationResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2SearchResponseTileNavigationResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2SearchResponseTileNavigationResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2SearchResponseTileNavigationResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2ServingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ServingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ServingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2ServingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SetDefaultBranchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SetDefaultBranchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SetDefaultBranchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SetDefaultBranchRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SetInventoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SetInventoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SetInventoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2SetInventoryRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2StringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2StringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2StringList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Tile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Tile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Tile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2Tile(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2TuneModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2TuneModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2TuneModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2TuneModelRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudRetailV2UpdateGenerativeQuestionConfigRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2UserEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2UserEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserEventInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEventInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEventInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2UserEventInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserEventInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEventInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEventInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2UserEventInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsResource', () {
    unittest.test('method--completeQuery', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_catalog = 'foo';
      final arg_dataset = 'foo';
      final arg_deviceType = 'foo';
      final arg_enableAttributeSuggestions = true;
      final arg_entity = 'foo';
      final arg_languageCodes = buildUnnamed142();
      final arg_maxSuggestions = 42;
      final arg_query = 'foo';
      final arg_visitorId = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['dataset']!.first,
            unittest.equals(arg_dataset),
          );
          unittest.expect(
            queryMap['deviceType']!.first,
            unittest.equals(arg_deviceType),
          );
          unittest.expect(
            queryMap['enableAttributeSuggestions']!.first,
            unittest.equals('$arg_enableAttributeSuggestions'),
          );
          unittest.expect(
            queryMap['entity']!.first,
            unittest.equals(arg_entity),
          );
          unittest.expect(
            queryMap['languageCodes']!,
            unittest.equals(arg_languageCodes),
          );
          unittest.expect(
            core.int.parse(queryMap['maxSuggestions']!.first),
            unittest.equals(arg_maxSuggestions),
          );
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['visitorId']!.first,
            unittest.equals(arg_visitorId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2CompleteQueryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.completeQuery(
        arg_catalog,
        dataset: arg_dataset,
        deviceType: arg_deviceType,
        enableAttributeSuggestions: arg_enableAttributeSuggestions,
        entity: arg_entity,
        languageCodes: arg_languageCodes,
        maxSuggestions: arg_maxSuggestions,
        query: arg_query,
        visitorId: arg_visitorId,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2CompleteQueryResponse(
        response as api.GoogleCloudRetailV2CompleteQueryResponse,
      );
    });

    unittest.test('method--exportAnalyticsMetrics', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2ExportAnalyticsMetricsRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2ExportAnalyticsMetricsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2ExportAnalyticsMetricsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportAnalyticsMetrics(
        arg_request,
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--getAttributesConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2AttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAttributesConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2AttributesConfig(
        response as api.GoogleCloudRetailV2AttributesConfig,
      );
    });

    unittest.test('method--getCompletionConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2CompletionConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCompletionConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2CompletionConfig(
        response as api.GoogleCloudRetailV2CompletionConfig,
      );
    });

    unittest.test('method--getConversationalSearchCustomizationConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ConversationalSearchCustomizationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConversationalSearchCustomizationConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ConversationalSearchCustomizationConfig(
        response
            as api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig,
      );
    });

    unittest.test('method--getDefaultBranch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_catalog = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2GetDefaultBranchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDefaultBranch(
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2GetDefaultBranchResponse(
        response as api.GoogleCloudRetailV2GetDefaultBranchResponse,
      );
    });

    unittest.test('method--getGenerativeQuestionFeature', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_catalog = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getGenerativeQuestionFeature(
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(
        response as api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ListCatalogsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ListCatalogsResponse(
        response as api.GoogleCloudRetailV2ListCatalogsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2Catalog();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Catalog.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Catalog(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2Catalog());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Catalog(
        response as api.GoogleCloudRetailV2Catalog,
      );
    });

    unittest.test('method--setDefaultBranch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2SetDefaultBranchRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2SetDefaultBranchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2SetDefaultBranchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setDefaultBranch(
        arg_request,
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--updateAttributesConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2AttributesConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2AttributesConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2AttributesConfig(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2AttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateAttributesConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2AttributesConfig(
        response as api.GoogleCloudRetailV2AttributesConfig,
      );
    });

    unittest.test('method--updateCompletionConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2CompletionConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2CompletionConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2CompletionConfig(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2CompletionConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateCompletionConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2CompletionConfig(
        response as api.GoogleCloudRetailV2CompletionConfig,
      );
    });

    unittest.test(
      'method--updateConversationalSearchCustomizationConfig',
      () async {
        final mock = HttpServerMock();
        final res = api.CloudRetailApi(mock).projects.locations.catalogs;
        final arg_request =
            buildGoogleCloudRetailV2ConversationalSearchCustomizationConfig();
        final arg_catalog = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj =
                api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig.fromJson(
                  json as core.Map<core.String, core.dynamic>,
                );
            checkGoogleCloudRetailV2ConversationalSearchCustomizationConfig(
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
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v2/'),
            );
            pathOffset += 3;
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudRetailV2ConversationalSearchCustomizationConfig(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res
            .updateConversationalSearchCustomizationConfig(
              arg_request,
              arg_catalog,
              updateMask: arg_updateMask,
              $fields: arg_$fields,
            );
        checkGoogleCloudRetailV2ConversationalSearchCustomizationConfig(
          response
              as api.GoogleCloudRetailV2ConversationalSearchCustomizationConfig,
        );
      },
    );

    unittest.test('method--updateGenerativeQuestion', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2GenerativeQuestionConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2GenerativeQuestionConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2GenerativeQuestionConfig(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2GenerativeQuestionConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateGenerativeQuestion(
        arg_request,
        arg_catalog,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2GenerativeQuestionConfig(
        response as api.GoogleCloudRetailV2GenerativeQuestionConfig,
      );
    });

    unittest.test('method--updateGenerativeQuestionFeature', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2GenerativeQuestionsFeatureConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateGenerativeQuestionFeature(
        arg_request,
        arg_catalog,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2GenerativeQuestionsFeatureConfig(
        response as api.GoogleCloudRetailV2GenerativeQuestionsFeatureConfig,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsAttributesConfigResource', () {
    unittest.test('method--addCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.attributesConfig;
      final arg_request = buildGoogleCloudRetailV2AddCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2AddCatalogAttributeRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2AddCatalogAttributeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2AttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addCatalogAttribute(
        arg_request,
        arg_attributesConfig,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2AttributesConfig(
        response as api.GoogleCloudRetailV2AttributesConfig,
      );
    });

    unittest.test('method--removeCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2RemoveCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2RemoveCatalogAttributeRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2RemoveCatalogAttributeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2AttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeCatalogAttribute(
        arg_request,
        arg_attributesConfig,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2AttributesConfig(
        response as api.GoogleCloudRetailV2AttributesConfig,
      );
    });

    unittest.test('method--replaceCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2ReplaceCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2ReplaceCatalogAttributeRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2ReplaceCatalogAttributeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2AttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.replaceCatalogAttribute(
        arg_request,
        arg_attributesConfig,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2AttributesConfig(
        response as api.GoogleCloudRetailV2AttributesConfig,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsCatalogsBranchesOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.CloudRetailApi(
          mock,
        ).projects.locations.catalogs.branches.operations;
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
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v2/'),
            );
            pathOffset += 3;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsCatalogsBranchesProductsResource', () {
    unittest.test('method--addFulfillmentPlaces', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2AddFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2AddFulfillmentPlacesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2AddFulfillmentPlacesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addFulfillmentPlaces(
        arg_request,
        arg_product,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--addLocalInventories', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2AddLocalInventoriesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2AddLocalInventoriesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2AddLocalInventoriesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addLocalInventories(
        arg_request,
        arg_product,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2Product();
      final arg_parent = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Product.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Product(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['productId']!.first,
            unittest.equals(arg_productId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2Product());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        productId: arg_productId,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Product(
        response as api.GoogleCloudRetailV2Product,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2Product());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2Product(
        response as api.GoogleCloudRetailV2Product,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2ImportProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2ImportProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2ImportProductsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2ListProductsResponse(),
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
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ListProductsResponse(
        response as api.GoogleCloudRetailV2ListProductsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2Product();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Product.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Product(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2Product());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Product(
        response as api.GoogleCloudRetailV2Product,
      );
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2PurgeProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2PurgeProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2PurgeProductsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.purge(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--removeFulfillmentPlaces', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request =
          buildGoogleCloudRetailV2RemoveFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2RemoveFulfillmentPlacesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeFulfillmentPlaces(
        arg_request,
        arg_product,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--removeLocalInventories', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request =
          buildGoogleCloudRetailV2RemoveLocalInventoriesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2RemoveLocalInventoriesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2RemoveLocalInventoriesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeLocalInventories(
        arg_request,
        arg_product,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setInventory', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2SetInventoryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2SetInventoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2SetInventoryRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setInventory(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsCompletionDataResource', () {
    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.completionData;
      final arg_request = buildGoogleCloudRetailV2ImportCompletionDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2ImportCompletionDataRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2ImportCompletionDataRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsControlsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
      final arg_request = buildGoogleCloudRetailV2Control();
      final arg_parent = 'foo';
      final arg_controlId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Control.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Control(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['controlId']!.first,
            unittest.equals(arg_controlId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2Control());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        controlId: arg_controlId,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Control(
        response as api.GoogleCloudRetailV2Control,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2Control());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2Control(
        response as api.GoogleCloudRetailV2Control,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ListControlsResponse(),
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
      checkGoogleCloudRetailV2ListControlsResponse(
        response as api.GoogleCloudRetailV2ListControlsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
      final arg_request = buildGoogleCloudRetailV2Control();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Control.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Control(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2Control());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Control(
        response as api.GoogleCloudRetailV2Control,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsGenerativeQuestionResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.generativeQuestion;
      final arg_request =
          buildGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsRequest(
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchUpdate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse(
        response
            as api.GoogleCloudRetailV2BatchUpdateGenerativeQuestionConfigsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsCatalogsGenerativeQuestionsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.CloudRetailApi(
          mock,
        ).projects.locations.catalogs.generativeQuestions;
        final arg_parent = 'foo';
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
              path.substring(pathOffset, pathOffset + 3),
              unittest.equals('v2/'),
            );
            pathOffset += 3;
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
              buildGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(arg_parent, $fields: arg_$fields);
        checkGoogleCloudRetailV2ListGenerativeQuestionConfigsResponse(
          response
              as api.GoogleCloudRetailV2ListGenerativeQuestionConfigsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsCatalogsModelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2Model();
      final arg_parent = 'foo';
      final arg_dryRun = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Model.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Model(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['dryRun']!.first,
            unittest.equals('$arg_dryRun'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        dryRun: arg_dryRun,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2Model());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2Model(response as api.GoogleCloudRetailV2Model);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ListModelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ListModelsResponse(
        response as api.GoogleCloudRetailV2ListModelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2Model();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2Model.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2Model(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2Model());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Model(response as api.GoogleCloudRetailV2Model);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2PauseModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2PauseModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2PauseModelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2Model());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pause(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Model(response as api.GoogleCloudRetailV2Model);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2ResumeModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2ResumeModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2ResumeModelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2Model());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2Model(response as api.GoogleCloudRetailV2Model);
    });

    unittest.test('method--tune', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2TuneModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2TuneModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2TuneModelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.tune(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsPlacementsResource', () {
    unittest.test('method--conversationalSearch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2ConversationalSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2ConversationalSearchRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2ConversationalSearchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ConversationalSearchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.conversationalSearch(
        arg_request,
        arg_placement,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ConversationalSearchResponse(
        response as api.GoogleCloudRetailV2ConversationalSearchResponse,
      );
    });

    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2PredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2PredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2PredictRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2PredictResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.predict(
        arg_request,
        arg_placement,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2PredictResponse(
        response as api.GoogleCloudRetailV2PredictResponse,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2SearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2SearchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2SearchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_placement,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2SearchResponse(
        response as api.GoogleCloudRetailV2SearchResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsServingConfigsResource', () {
    unittest.test('method--addControl', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2AddControlRequest();
      final arg_servingConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2AddControlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2AddControlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addControl(
        arg_request,
        arg_servingConfig,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ServingConfig(
        response as api.GoogleCloudRetailV2ServingConfig,
      );
    });

    unittest.test('method--conversationalSearch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2ConversationalSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudRetailV2ConversationalSearchRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudRetailV2ConversationalSearchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ConversationalSearchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.conversationalSearch(
        arg_request,
        arg_placement,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ConversationalSearchResponse(
        response as api.GoogleCloudRetailV2ConversationalSearchResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2ServingConfig();
      final arg_parent = 'foo';
      final arg_servingConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2ServingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2ServingConfig(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['servingConfigId']!.first,
            unittest.equals(arg_servingConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2ServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        servingConfigId: arg_servingConfigId,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ServingConfig(
        response as api.GoogleCloudRetailV2ServingConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2ServingConfig(
        response as api.GoogleCloudRetailV2ServingConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ListServingConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ListServingConfigsResponse(
        response as api.GoogleCloudRetailV2ListServingConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2ServingConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2ServingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2ServingConfig(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2ServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ServingConfig(
        response as api.GoogleCloudRetailV2ServingConfig,
      );
    });

    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2PredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2PredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2PredictRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2PredictResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.predict(
        arg_request,
        arg_placement,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2PredictResponse(
        response as api.GoogleCloudRetailV2PredictResponse,
      );
    });

    unittest.test('method--removeControl', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2RemoveControlRequest();
      final arg_servingConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2RemoveControlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2RemoveControlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2ServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeControl(
        arg_request,
        arg_servingConfig,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2ServingConfig(
        response as api.GoogleCloudRetailV2ServingConfig,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2SearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2SearchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudRetailV2SearchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_request,
        arg_placement,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2SearchResponse(
        response as api.GoogleCloudRetailV2SearchResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsUserEventsResource', () {
    unittest.test('method--collect', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2CollectUserEventRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2CollectUserEventRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2CollectUserEventRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleApiHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.collect(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2ImportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2ImportUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2ImportUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2PurgeUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2PurgeUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2PurgeUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.purge(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--rejoin', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2RejoinUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2RejoinUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2RejoinUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rejoin(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(
        mock,
      ).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2UserEvent();
      final arg_parent = 'foo';
      final arg_writeAsync = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2UserEvent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2UserEvent(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['writeAsync']!.first,
            unittest.equals('$arg_writeAsync'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudRetailV2UserEvent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.write(
        arg_request,
        arg_parent,
        writeAsync: arg_writeAsync,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2UserEvent(
        response as api.GoogleCloudRetailV2UserEvent,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v2/'),
          );
          pathOffset += 3;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });
}
