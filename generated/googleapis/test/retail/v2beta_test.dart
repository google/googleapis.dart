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

import 'package:googleapis/retail/v2beta.dart' as api;
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

core.int buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2betaAddCatalogAttributeRequest
buildGoogleCloudRetailV2betaAddCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2betaAddCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest < 3) {
    o.catalogAttribute = buildGoogleCloudRetailV2betaCatalogAttribute();
  }
  buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaAddCatalogAttributeRequest(
  api.GoogleCloudRetailV2betaAddCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest < 3) {
    checkGoogleCloudRetailV2betaCatalogAttribute(o.catalogAttribute!);
  }
  buildCounterGoogleCloudRetailV2betaAddCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaAddControlRequest = 0;
api.GoogleCloudRetailV2betaAddControlRequest
buildGoogleCloudRetailV2betaAddControlRequest() {
  final o = api.GoogleCloudRetailV2betaAddControlRequest();
  buildCounterGoogleCloudRetailV2betaAddControlRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddControlRequest < 3) {
    o.controlId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaAddControlRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaAddControlRequest(
  api.GoogleCloudRetailV2betaAddControlRequest o,
) {
  buildCounterGoogleCloudRetailV2betaAddControlRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddControlRequest < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaAddControlRequest--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2betaAddFulfillmentPlacesRequest
buildGoogleCloudRetailV2betaAddFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2betaAddFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest < 3) {
    o.addTime = 'foo';
    o.allowMissing = true;
    o.placeIds = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaAddFulfillmentPlacesRequest(
  api.GoogleCloudRetailV2betaAddFulfillmentPlacesRequest o,
) {
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest < 3) {
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed2(o.placeIds!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesRequest--;
}

core.List<api.GoogleCloudRetailV2betaLocalInventory> buildUnnamed3() => [
  buildGoogleCloudRetailV2betaLocalInventory(),
  buildGoogleCloudRetailV2betaLocalInventory(),
];

void checkUnnamed3(core.List<api.GoogleCloudRetailV2betaLocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaLocalInventory(o[0]);
  checkGoogleCloudRetailV2betaLocalInventory(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest = 0;
api.GoogleCloudRetailV2betaAddLocalInventoriesRequest
buildGoogleCloudRetailV2betaAddLocalInventoriesRequest() {
  final o = api.GoogleCloudRetailV2betaAddLocalInventoriesRequest();
  buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest < 3) {
    o.addMask = 'foo';
    o.addTime = 'foo';
    o.allowMissing = true;
    o.localInventories = buildUnnamed3();
  }
  buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaAddLocalInventoriesRequest(
  api.GoogleCloudRetailV2betaAddLocalInventoriesRequest o,
) {
  buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest < 3) {
    unittest.expect(o.addMask!, unittest.equals('foo'));
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed3(o.localInventories!);
  }
  buildCounterGoogleCloudRetailV2betaAddLocalInventoriesRequest--;
}

core.List<api.GoogleCloudRetailV2betaAlertConfigAlertPolicy> buildUnnamed4() =>
    [
      buildGoogleCloudRetailV2betaAlertConfigAlertPolicy(),
      buildGoogleCloudRetailV2betaAlertConfigAlertPolicy(),
    ];

void checkUnnamed4(
  core.List<api.GoogleCloudRetailV2betaAlertConfigAlertPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaAlertConfigAlertPolicy(o[0]);
  checkGoogleCloudRetailV2betaAlertConfigAlertPolicy(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaAlertConfig = 0;
api.GoogleCloudRetailV2betaAlertConfig
buildGoogleCloudRetailV2betaAlertConfig() {
  final o = api.GoogleCloudRetailV2betaAlertConfig();
  buildCounterGoogleCloudRetailV2betaAlertConfig++;
  if (buildCounterGoogleCloudRetailV2betaAlertConfig < 3) {
    o.alertPolicies = buildUnnamed4();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaAlertConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaAlertConfig(
  api.GoogleCloudRetailV2betaAlertConfig o,
) {
  buildCounterGoogleCloudRetailV2betaAlertConfig++;
  if (buildCounterGoogleCloudRetailV2betaAlertConfig < 3) {
    checkUnnamed4(o.alertPolicies!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaAlertConfig--;
}

core.List<api.GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient>
buildUnnamed5() => [
  buildGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient(),
  buildGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient(o[0]);
  checkGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy = 0;
api.GoogleCloudRetailV2betaAlertConfigAlertPolicy
buildGoogleCloudRetailV2betaAlertConfigAlertPolicy() {
  final o = api.GoogleCloudRetailV2betaAlertConfigAlertPolicy();
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy++;
  if (buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy < 3) {
    o.alertGroup = 'foo';
    o.enrollStatus = 'foo';
    o.recipients = buildUnnamed5();
  }
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy--;
  return o;
}

void checkGoogleCloudRetailV2betaAlertConfigAlertPolicy(
  api.GoogleCloudRetailV2betaAlertConfigAlertPolicy o,
) {
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy++;
  if (buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy < 3) {
    unittest.expect(o.alertGroup!, unittest.equals('foo'));
    unittest.expect(o.enrollStatus!, unittest.equals('foo'));
    checkUnnamed5(o.recipients!);
  }
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicy--;
}

core.int buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient = 0;
api.GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient
buildGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient() {
  final o = api.GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient();
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient++;
  if (buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient < 3) {
    o.emailAddress = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient--;
  return o;
}

void checkGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient(
  api.GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient o,
) {
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient++;
  if (buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient < 3) {
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient--;
}

core.Map<core.String, api.GoogleCloudRetailV2betaCatalogAttribute>
buildUnnamed6() => {
  'x': buildGoogleCloudRetailV2betaCatalogAttribute(),
  'y': buildGoogleCloudRetailV2betaCatalogAttribute(),
};

void checkUnnamed6(
  core.Map<core.String, api.GoogleCloudRetailV2betaCatalogAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCatalogAttribute(o['x']!);
  checkGoogleCloudRetailV2betaCatalogAttribute(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2betaAttributesConfig = 0;
api.GoogleCloudRetailV2betaAttributesConfig
buildGoogleCloudRetailV2betaAttributesConfig() {
  final o = api.GoogleCloudRetailV2betaAttributesConfig();
  buildCounterGoogleCloudRetailV2betaAttributesConfig++;
  if (buildCounterGoogleCloudRetailV2betaAttributesConfig < 3) {
    o.attributeConfigLevel = 'foo';
    o.catalogAttributes = buildUnnamed6();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaAttributesConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaAttributesConfig(
  api.GoogleCloudRetailV2betaAttributesConfig o,
) {
  buildCounterGoogleCloudRetailV2betaAttributesConfig++;
  if (buildCounterGoogleCloudRetailV2betaAttributesConfig < 3) {
    unittest.expect(o.attributeConfigLevel!, unittest.equals('foo'));
    checkUnnamed6(o.catalogAttributes!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaAttributesConfig--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaAudience = 0;
api.GoogleCloudRetailV2betaAudience buildGoogleCloudRetailV2betaAudience() {
  final o = api.GoogleCloudRetailV2betaAudience();
  buildCounterGoogleCloudRetailV2betaAudience++;
  if (buildCounterGoogleCloudRetailV2betaAudience < 3) {
    o.ageGroups = buildUnnamed7();
    o.genders = buildUnnamed8();
  }
  buildCounterGoogleCloudRetailV2betaAudience--;
  return o;
}

void checkGoogleCloudRetailV2betaAudience(
  api.GoogleCloudRetailV2betaAudience o,
) {
  buildCounterGoogleCloudRetailV2betaAudience++;
  if (buildCounterGoogleCloudRetailV2betaAudience < 3) {
    checkUnnamed7(o.ageGroups!);
    checkUnnamed8(o.genders!);
  }
  buildCounterGoogleCloudRetailV2betaAudience--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest = 0;
api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest
buildGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest() {
  final o = api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest();
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest++;
  if (buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest <
      3) {
    o.attributeKeys = buildUnnamed9();
  }
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest(
  api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest o,
) {
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest++;
  if (buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest <
      3) {
    checkUnnamed9(o.attributeKeys!);
  }
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse = 0;
api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse
buildGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse() {
  final o = api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse();
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse++;
  if (buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse <
      3) {
    o.deletedCatalogAttributes = buildUnnamed10();
    o.resetCatalogAttributes = buildUnnamed11();
  }
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse(
  api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse o,
) {
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse++;
  if (buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse <
      3) {
    checkUnnamed10(o.deletedCatalogAttributes!);
    checkUnnamed11(o.resetCatalogAttributes!);
  }
  buildCounterGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse--;
}

core.List<api.GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest>
buildUnnamed12() => [
  buildGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest(),
  buildGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest(o[0]);
  checkGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest =
    0;
api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest
buildGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest() {
  final o =
      api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest();
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest++;
  if (buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest <
      3) {
    o.requests = buildUnnamed12();
  }
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest(
  api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest++;
  if (buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest <
      3) {
    checkUnnamed12(o.requests!);
  }
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest--;
}

core.List<api.GoogleCloudRetailV2betaGenerativeQuestionConfig>
buildUnnamed13() => [
  buildGoogleCloudRetailV2betaGenerativeQuestionConfig(),
  buildGoogleCloudRetailV2betaGenerativeQuestionConfig(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudRetailV2betaGenerativeQuestionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaGenerativeQuestionConfig(o[0]);
  checkGoogleCloudRetailV2betaGenerativeQuestionConfig(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse =
    0;
api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse
buildGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse() {
  final o =
      api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse();
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse <
      3) {
    o.generativeQuestionConfigs = buildUnnamed13();
  }
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse(
  api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse <
      3) {
    checkUnnamed13(o.generativeQuestionConfigs!);
  }
  buildCounterGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaBigQuerySource = 0;
api.GoogleCloudRetailV2betaBigQuerySource
buildGoogleCloudRetailV2betaBigQuerySource() {
  final o = api.GoogleCloudRetailV2betaBigQuerySource();
  buildCounterGoogleCloudRetailV2betaBigQuerySource++;
  if (buildCounterGoogleCloudRetailV2betaBigQuerySource < 3) {
    o.dataSchema = 'foo';
    o.datasetId = 'foo';
    o.gcsStagingDir = 'foo';
    o.partitionDate = buildGoogleTypeDate();
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaBigQuerySource--;
  return o;
}

void checkGoogleCloudRetailV2betaBigQuerySource(
  api.GoogleCloudRetailV2betaBigQuerySource o,
) {
  buildCounterGoogleCloudRetailV2betaBigQuerySource++;
  if (buildCounterGoogleCloudRetailV2betaBigQuerySource < 3) {
    unittest.expect(o.dataSchema!, unittest.equals('foo'));
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.gcsStagingDir!, unittest.equals('foo'));
    checkGoogleTypeDate(o.partitionDate!);
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.tableId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaBigQuerySource--;
}

core.int buildCounterGoogleCloudRetailV2betaCatalog = 0;
api.GoogleCloudRetailV2betaCatalog buildGoogleCloudRetailV2betaCatalog() {
  final o = api.GoogleCloudRetailV2betaCatalog();
  buildCounterGoogleCloudRetailV2betaCatalog++;
  if (buildCounterGoogleCloudRetailV2betaCatalog < 3) {
    o.displayName = 'foo';
    o.merchantCenterLinkingConfig =
        buildGoogleCloudRetailV2betaMerchantCenterLinkingConfig();
    o.name = 'foo';
    o.productLevelConfig = buildGoogleCloudRetailV2betaProductLevelConfig();
  }
  buildCounterGoogleCloudRetailV2betaCatalog--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalog(api.GoogleCloudRetailV2betaCatalog o) {
  buildCounterGoogleCloudRetailV2betaCatalog++;
  if (buildCounterGoogleCloudRetailV2betaCatalog < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaMerchantCenterLinkingConfig(
      o.merchantCenterLinkingConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaProductLevelConfig(o.productLevelConfig!);
  }
  buildCounterGoogleCloudRetailV2betaCatalog--;
}

core.int buildCounterGoogleCloudRetailV2betaCatalogAttribute = 0;
api.GoogleCloudRetailV2betaCatalogAttribute
buildGoogleCloudRetailV2betaCatalogAttribute() {
  final o = api.GoogleCloudRetailV2betaCatalogAttribute();
  buildCounterGoogleCloudRetailV2betaCatalogAttribute++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttribute < 3) {
    o.dynamicFacetableOption = 'foo';
    o.exactSearchableOption = 'foo';
    o.facetConfig = buildGoogleCloudRetailV2betaCatalogAttributeFacetConfig();
    o.inUse = true;
    o.indexableOption = 'foo';
    o.key = 'foo';
    o.recommendationsFilteringOption = 'foo';
    o.retrievableOption = 'foo';
    o.searchableOption = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttribute--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalogAttribute(
  api.GoogleCloudRetailV2betaCatalogAttribute o,
) {
  buildCounterGoogleCloudRetailV2betaCatalogAttribute++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttribute < 3) {
    unittest.expect(o.dynamicFacetableOption!, unittest.equals('foo'));
    unittest.expect(o.exactSearchableOption!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaCatalogAttributeFacetConfig(o.facetConfig!);
    unittest.expect(o.inUse!, unittest.isTrue);
    unittest.expect(o.indexableOption!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.recommendationsFilteringOption!, unittest.equals('foo'));
    unittest.expect(o.retrievableOption!, unittest.equals('foo'));
    unittest.expect(o.searchableOption!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttribute--;
}

core.List<api.GoogleCloudRetailV2betaInterval> buildUnnamed14() => [
  buildGoogleCloudRetailV2betaInterval(),
  buildGoogleCloudRetailV2betaInterval(),
];

void checkUnnamed14(core.List<api.GoogleCloudRetailV2betaInterval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaInterval(o[0]);
  checkGoogleCloudRetailV2betaInterval(o[1]);
}

core.List<
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues
>
buildUnnamed15() => [
  buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues(),
  buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues(),
];

void checkUnnamed15(
  core.List<
    api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues(
    o[0],
  );
  checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues(
    o[1],
  );
}

core.List<
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue
>
buildUnnamed16() => [
  buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue(),
  buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue(),
];

void checkUnnamed16(
  core.List<
    api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue(o[0]);
  checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig = 0;
api.GoogleCloudRetailV2betaCatalogAttributeFacetConfig
buildGoogleCloudRetailV2betaCatalogAttributeFacetConfig() {
  final o = api.GoogleCloudRetailV2betaCatalogAttributeFacetConfig();
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig < 3) {
    o.facetIntervals = buildUnnamed14();
    o.ignoredFacetValues = buildUnnamed15();
    o.mergedFacet =
        buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet();
    o.mergedFacetValues = buildUnnamed16();
    o.rerankConfig =
        buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig();
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalogAttributeFacetConfig(
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfig o,
) {
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig < 3) {
    checkUnnamed14(o.facetIntervals!);
    checkUnnamed15(o.ignoredFacetValues!);
    checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet(
      o.mergedFacet!,
    );
    checkUnnamed16(o.mergedFacetValues!);
    checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig(
      o.rerankConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfig--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues =
    0;
api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues
buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues() {
  final o =
      api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues();
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues <
      3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.values = buildUnnamed17();
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues(
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues o,
) {
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues <
      3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkUnnamed17(o.values!);
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues--;
}

core.int
buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet = 0;
api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet
buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet() {
  final o = api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet();
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet <
      3) {
    o.mergedFacetKey = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet(
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet o,
) {
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet <
      3) {
    unittest.expect(o.mergedFacetKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue =
    0;
api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue
buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue() {
  final o =
      api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue();
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue <
      3) {
    o.mergedValue = 'foo';
    o.values = buildUnnamed18();
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue(
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue o,
) {
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue <
      3) {
    unittest.expect(o.mergedValue!, unittest.equals('foo'));
    checkUnnamed18(o.values!);
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig = 0;
api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig
buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig() {
  final o =
      api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig();
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig <
      3) {
    o.facetValues = buildUnnamed19();
    o.rerankFacet = true;
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig(
  api.GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig o,
) {
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig++;
  if (buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig <
      3) {
    checkUnnamed19(o.facetValues!);
    unittest.expect(o.rerankFacet!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaCollectUserEventRequest = 0;
api.GoogleCloudRetailV2betaCollectUserEventRequest
buildGoogleCloudRetailV2betaCollectUserEventRequest() {
  final o = api.GoogleCloudRetailV2betaCollectUserEventRequest();
  buildCounterGoogleCloudRetailV2betaCollectUserEventRequest++;
  if (buildCounterGoogleCloudRetailV2betaCollectUserEventRequest < 3) {
    o.ets = 'foo';
    o.prebuiltRule = 'foo';
    o.rawJson = 'foo';
    o.uri = 'foo';
    o.userEvent = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaCollectUserEventRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaCollectUserEventRequest(
  api.GoogleCloudRetailV2betaCollectUserEventRequest o,
) {
  buildCounterGoogleCloudRetailV2betaCollectUserEventRequest++;
  if (buildCounterGoogleCloudRetailV2betaCollectUserEventRequest < 3) {
    unittest.expect(o.ets!, unittest.equals('foo'));
    unittest.expect(o.prebuiltRule!, unittest.equals('foo'));
    unittest.expect(o.rawJson!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.userEvent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaCollectUserEventRequest--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaColorInfo = 0;
api.GoogleCloudRetailV2betaColorInfo buildGoogleCloudRetailV2betaColorInfo() {
  final o = api.GoogleCloudRetailV2betaColorInfo();
  buildCounterGoogleCloudRetailV2betaColorInfo++;
  if (buildCounterGoogleCloudRetailV2betaColorInfo < 3) {
    o.colorFamilies = buildUnnamed20();
    o.colors = buildUnnamed21();
  }
  buildCounterGoogleCloudRetailV2betaColorInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaColorInfo(
  api.GoogleCloudRetailV2betaColorInfo o,
) {
  buildCounterGoogleCloudRetailV2betaColorInfo++;
  if (buildCounterGoogleCloudRetailV2betaColorInfo < 3) {
    checkUnnamed20(o.colorFamilies!);
    checkUnnamed21(o.colors!);
  }
  buildCounterGoogleCloudRetailV2betaColorInfo--;
}

core.Map<
  core.String,
  api.GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult
>
buildUnnamed22() => {
  'x': buildGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult(),
  'y': buildGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult(),
};

void checkUnnamed22(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult(o['x']!);
  checkGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult(o['y']!);
}

core.List<api.GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult>
buildUnnamed23() => [
  buildGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult(),
  buildGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult(),
];

void checkUnnamed23(
  core.List<api.GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult(o[0]);
  checkGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult(o[1]);
}

core.List<api.GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult>
buildUnnamed24() => [
  buildGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult(),
  buildGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult(),
];

void checkUnnamed24(
  core.List<api.GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult(o[0]);
  checkGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaCompleteQueryResponse = 0;
api.GoogleCloudRetailV2betaCompleteQueryResponse
buildGoogleCloudRetailV2betaCompleteQueryResponse() {
  final o = api.GoogleCloudRetailV2betaCompleteQueryResponse();
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponse < 3) {
    o.attributeResults = buildUnnamed22();
    o.attributionToken = 'foo';
    o.completionResults = buildUnnamed23();
    o.recentSearchResults = buildUnnamed24();
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaCompleteQueryResponse(
  api.GoogleCloudRetailV2betaCompleteQueryResponse o,
) {
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponse < 3) {
    checkUnnamed22(o.attributeResults!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkUnnamed23(o.completionResults!);
    checkUnnamed24(o.recentSearchResults!);
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponse--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult = 0;
api.GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult
buildGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult() {
  final o = api.GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult();
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult <
      3) {
    o.suggestions = buildUnnamed25();
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult--;
  return o;
}

void checkGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult(
  api.GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult o,
) {
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult <
      3) {
    checkUnnamed25(o.suggestions!);
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult--;
}

core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute>
buildUnnamed26() => {
  'x': buildGoogleCloudRetailV2betaCustomAttribute(),
  'y': buildGoogleCloudRetailV2betaCustomAttribute(),
};

void checkUnnamed26(
  core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2betaCustomAttribute(o['y']!);
}

core.int
buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult = 0;
api.GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult
buildGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult() {
  final o = api.GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult();
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult <
      3) {
    o.attributes = buildUnnamed26();
    o.suggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult--;
  return o;
}

void checkGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult(
  api.GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult o,
) {
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult <
      3) {
    checkUnnamed26(o.attributes!);
    unittest.expect(o.suggestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult--;
}

core.int
buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult = 0;
api.GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult
buildGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult() {
  final o =
      api.GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult();
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult <
      3) {
    o.recentSearch = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult(
  api.GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult o,
) {
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult <
      3) {
    unittest.expect(o.recentSearch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult--;
}

core.int buildCounterGoogleCloudRetailV2betaCompletionConfig = 0;
api.GoogleCloudRetailV2betaCompletionConfig
buildGoogleCloudRetailV2betaCompletionConfig() {
  final o = api.GoogleCloudRetailV2betaCompletionConfig();
  buildCounterGoogleCloudRetailV2betaCompletionConfig++;
  if (buildCounterGoogleCloudRetailV2betaCompletionConfig < 3) {
    o.allowlistInputConfig =
        buildGoogleCloudRetailV2betaCompletionDataInputConfig();
    o.autoLearning = true;
    o.denylistInputConfig =
        buildGoogleCloudRetailV2betaCompletionDataInputConfig();
    o.lastAllowlistImportOperation = 'foo';
    o.lastDenylistImportOperation = 'foo';
    o.lastSuggestionsImportOperation = 'foo';
    o.matchingOrder = 'foo';
    o.maxSuggestions = 42;
    o.minPrefixLength = 42;
    o.name = 'foo';
    o.suggestionsInputConfig =
        buildGoogleCloudRetailV2betaCompletionDataInputConfig();
  }
  buildCounterGoogleCloudRetailV2betaCompletionConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaCompletionConfig(
  api.GoogleCloudRetailV2betaCompletionConfig o,
) {
  buildCounterGoogleCloudRetailV2betaCompletionConfig++;
  if (buildCounterGoogleCloudRetailV2betaCompletionConfig < 3) {
    checkGoogleCloudRetailV2betaCompletionDataInputConfig(
      o.allowlistInputConfig!,
    );
    unittest.expect(o.autoLearning!, unittest.isTrue);
    checkGoogleCloudRetailV2betaCompletionDataInputConfig(
      o.denylistInputConfig!,
    );
    unittest.expect(o.lastAllowlistImportOperation!, unittest.equals('foo'));
    unittest.expect(o.lastDenylistImportOperation!, unittest.equals('foo'));
    unittest.expect(o.lastSuggestionsImportOperation!, unittest.equals('foo'));
    unittest.expect(o.matchingOrder!, unittest.equals('foo'));
    unittest.expect(o.maxSuggestions!, unittest.equals(42));
    unittest.expect(o.minPrefixLength!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaCompletionDataInputConfig(
      o.suggestionsInputConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2betaCompletionConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig = 0;
api.GoogleCloudRetailV2betaCompletionDataInputConfig
buildGoogleCloudRetailV2betaCompletionDataInputConfig() {
  final o = api.GoogleCloudRetailV2betaCompletionDataInputConfig();
  buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2betaBigQuerySource();
  }
  buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaCompletionDataInputConfig(
  api.GoogleCloudRetailV2betaCompletionDataInputConfig o,
) {
  buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig < 3) {
    checkGoogleCloudRetailV2betaBigQuerySource(o.bigQuerySource!);
  }
  buildCounterGoogleCloudRetailV2betaCompletionDataInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaCompletionDetail = 0;
api.GoogleCloudRetailV2betaCompletionDetail
buildGoogleCloudRetailV2betaCompletionDetail() {
  final o = api.GoogleCloudRetailV2betaCompletionDetail();
  buildCounterGoogleCloudRetailV2betaCompletionDetail++;
  if (buildCounterGoogleCloudRetailV2betaCompletionDetail < 3) {
    o.completionAttributionToken = 'foo';
    o.selectedPosition = 42;
    o.selectedSuggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaCompletionDetail--;
  return o;
}

void checkGoogleCloudRetailV2betaCompletionDetail(
  api.GoogleCloudRetailV2betaCompletionDetail o,
) {
  buildCounterGoogleCloudRetailV2betaCompletionDetail++;
  if (buildCounterGoogleCloudRetailV2betaCompletionDetail < 3) {
    unittest.expect(o.completionAttributionToken!, unittest.equals('foo'));
    unittest.expect(o.selectedPosition!, unittest.equals(42));
    unittest.expect(o.selectedSuggestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaCompletionDetail--;
}

core.List<api.GoogleCloudRetailV2betaConditionTimeRange> buildUnnamed27() => [
  buildGoogleCloudRetailV2betaConditionTimeRange(),
  buildGoogleCloudRetailV2betaConditionTimeRange(),
];

void checkUnnamed27(
  core.List<api.GoogleCloudRetailV2betaConditionTimeRange> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaConditionTimeRange(o[0]);
  checkGoogleCloudRetailV2betaConditionTimeRange(o[1]);
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaConditionQueryTerm> buildUnnamed29() => [
  buildGoogleCloudRetailV2betaConditionQueryTerm(),
  buildGoogleCloudRetailV2betaConditionQueryTerm(),
];

void checkUnnamed29(
  core.List<api.GoogleCloudRetailV2betaConditionQueryTerm> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaConditionQueryTerm(o[0]);
  checkGoogleCloudRetailV2betaConditionQueryTerm(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaCondition = 0;
api.GoogleCloudRetailV2betaCondition buildGoogleCloudRetailV2betaCondition() {
  final o = api.GoogleCloudRetailV2betaCondition();
  buildCounterGoogleCloudRetailV2betaCondition++;
  if (buildCounterGoogleCloudRetailV2betaCondition < 3) {
    o.activeTimeRange = buildUnnamed27();
    o.pageCategories = buildUnnamed28();
    o.queryTerms = buildUnnamed29();
  }
  buildCounterGoogleCloudRetailV2betaCondition--;
  return o;
}

void checkGoogleCloudRetailV2betaCondition(
  api.GoogleCloudRetailV2betaCondition o,
) {
  buildCounterGoogleCloudRetailV2betaCondition++;
  if (buildCounterGoogleCloudRetailV2betaCondition < 3) {
    checkUnnamed27(o.activeTimeRange!);
    checkUnnamed28(o.pageCategories!);
    checkUnnamed29(o.queryTerms!);
  }
  buildCounterGoogleCloudRetailV2betaCondition--;
}

core.int buildCounterGoogleCloudRetailV2betaConditionQueryTerm = 0;
api.GoogleCloudRetailV2betaConditionQueryTerm
buildGoogleCloudRetailV2betaConditionQueryTerm() {
  final o = api.GoogleCloudRetailV2betaConditionQueryTerm();
  buildCounterGoogleCloudRetailV2betaConditionQueryTerm++;
  if (buildCounterGoogleCloudRetailV2betaConditionQueryTerm < 3) {
    o.fullMatch = true;
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaConditionQueryTerm--;
  return o;
}

void checkGoogleCloudRetailV2betaConditionQueryTerm(
  api.GoogleCloudRetailV2betaConditionQueryTerm o,
) {
  buildCounterGoogleCloudRetailV2betaConditionQueryTerm++;
  if (buildCounterGoogleCloudRetailV2betaConditionQueryTerm < 3) {
    unittest.expect(o.fullMatch!, unittest.isTrue);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaConditionQueryTerm--;
}

core.int buildCounterGoogleCloudRetailV2betaConditionTimeRange = 0;
api.GoogleCloudRetailV2betaConditionTimeRange
buildGoogleCloudRetailV2betaConditionTimeRange() {
  final o = api.GoogleCloudRetailV2betaConditionTimeRange();
  buildCounterGoogleCloudRetailV2betaConditionTimeRange++;
  if (buildCounterGoogleCloudRetailV2betaConditionTimeRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaConditionTimeRange--;
  return o;
}

void checkGoogleCloudRetailV2betaConditionTimeRange(
  api.GoogleCloudRetailV2betaConditionTimeRange o,
) {
  buildCounterGoogleCloudRetailV2betaConditionTimeRange++;
  if (buildCounterGoogleCloudRetailV2betaConditionTimeRange < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaConditionTimeRange--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaControl = 0;
api.GoogleCloudRetailV2betaControl buildGoogleCloudRetailV2betaControl() {
  final o = api.GoogleCloudRetailV2betaControl();
  buildCounterGoogleCloudRetailV2betaControl++;
  if (buildCounterGoogleCloudRetailV2betaControl < 3) {
    o.associatedServingConfigIds = buildUnnamed30();
    o.displayName = 'foo';
    o.facetSpec = buildGoogleCloudRetailV2betaSearchRequestFacetSpec();
    o.name = 'foo';
    o.rule = buildGoogleCloudRetailV2betaRule();
    o.searchSolutionUseCase = buildUnnamed31();
    o.solutionTypes = buildUnnamed32();
  }
  buildCounterGoogleCloudRetailV2betaControl--;
  return o;
}

void checkGoogleCloudRetailV2betaControl(api.GoogleCloudRetailV2betaControl o) {
  buildCounterGoogleCloudRetailV2betaControl++;
  if (buildCounterGoogleCloudRetailV2betaControl < 3) {
    checkUnnamed30(o.associatedServingConfigIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaSearchRequestFacetSpec(o.facetSpec!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaRule(o.rule!);
    checkUnnamed31(o.searchSolutionUseCase!);
    checkUnnamed32(o.solutionTypes!);
  }
  buildCounterGoogleCloudRetailV2betaControl--;
}

core.int
buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig = 0;
api.GoogleCloudRetailV2betaConversationalSearchCustomizationConfig
buildGoogleCloudRetailV2betaConversationalSearchCustomizationConfig() {
  final o =
      api.GoogleCloudRetailV2betaConversationalSearchCustomizationConfig();
  buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig++;
  if (buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig <
      3) {
    o.catalog = 'foo';
    o.intentClassificationConfig =
        buildGoogleCloudRetailV2betaIntentClassificationConfig();
    o.retailerDisplayName = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(
  api.GoogleCloudRetailV2betaConversationalSearchCustomizationConfig o,
) {
  buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig++;
  if (buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig <
      3) {
    unittest.expect(o.catalog!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaIntentClassificationConfig(
      o.intentClassificationConfig!,
    );
    unittest.expect(o.retailerDisplayName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaConversationalSearchCustomizationConfig--;
}

core.List<core.double> buildUnnamed33() => [42.0, 42.0];

void checkUnnamed33(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaCustomAttribute = 0;
api.GoogleCloudRetailV2betaCustomAttribute
buildGoogleCloudRetailV2betaCustomAttribute() {
  final o = api.GoogleCloudRetailV2betaCustomAttribute();
  buildCounterGoogleCloudRetailV2betaCustomAttribute++;
  if (buildCounterGoogleCloudRetailV2betaCustomAttribute < 3) {
    o.indexable = true;
    o.numbers = buildUnnamed33();
    o.searchable = true;
    o.text = buildUnnamed34();
  }
  buildCounterGoogleCloudRetailV2betaCustomAttribute--;
  return o;
}

void checkGoogleCloudRetailV2betaCustomAttribute(
  api.GoogleCloudRetailV2betaCustomAttribute o,
) {
  buildCounterGoogleCloudRetailV2betaCustomAttribute++;
  if (buildCounterGoogleCloudRetailV2betaCustomAttribute < 3) {
    unittest.expect(o.indexable!, unittest.isTrue);
    checkUnnamed33(o.numbers!);
    unittest.expect(o.searchable!, unittest.isTrue);
    checkUnnamed34(o.text!);
  }
  buildCounterGoogleCloudRetailV2betaCustomAttribute--;
}

core.List<core.double> buildUnnamed35() => [42.0, 42.0];

void checkUnnamed35(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudRetailV2betaDoubleList = 0;
api.GoogleCloudRetailV2betaDoubleList buildGoogleCloudRetailV2betaDoubleList() {
  final o = api.GoogleCloudRetailV2betaDoubleList();
  buildCounterGoogleCloudRetailV2betaDoubleList++;
  if (buildCounterGoogleCloudRetailV2betaDoubleList < 3) {
    o.values = buildUnnamed35();
  }
  buildCounterGoogleCloudRetailV2betaDoubleList--;
  return o;
}

void checkGoogleCloudRetailV2betaDoubleList(
  api.GoogleCloudRetailV2betaDoubleList o,
) {
  buildCounterGoogleCloudRetailV2betaDoubleList++;
  if (buildCounterGoogleCloudRetailV2betaDoubleList < 3) {
    checkUnnamed35(o.values!);
  }
  buildCounterGoogleCloudRetailV2betaDoubleList--;
}

core.int buildCounterGoogleCloudRetailV2betaExperimentInfo = 0;
api.GoogleCloudRetailV2betaExperimentInfo
buildGoogleCloudRetailV2betaExperimentInfo() {
  final o = api.GoogleCloudRetailV2betaExperimentInfo();
  buildCounterGoogleCloudRetailV2betaExperimentInfo++;
  if (buildCounterGoogleCloudRetailV2betaExperimentInfo < 3) {
    o.experiment = 'foo';
    o.servingConfigExperiment =
        buildGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment();
  }
  buildCounterGoogleCloudRetailV2betaExperimentInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaExperimentInfo(
  api.GoogleCloudRetailV2betaExperimentInfo o,
) {
  buildCounterGoogleCloudRetailV2betaExperimentInfo++;
  if (buildCounterGoogleCloudRetailV2betaExperimentInfo < 3) {
    unittest.expect(o.experiment!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment(
      o.servingConfigExperiment!,
    );
  }
  buildCounterGoogleCloudRetailV2betaExperimentInfo--;
}

core.int
buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment = 0;
api.GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment
buildGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment() {
  final o = api.GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment();
  buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment++;
  if (buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment <
      3) {
    o.experimentServingConfig = 'foo';
    o.originalServingConfig = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment--;
  return o;
}

void checkGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment(
  api.GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment o,
) {
  buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment++;
  if (buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment <
      3) {
    unittest.expect(o.experimentServingConfig!, unittest.equals('foo'));
    unittest.expect(o.originalServingConfig!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment--;
}

core.int buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest = 0;
api.GoogleCloudRetailV2betaExportAnalyticsMetricsRequest
buildGoogleCloudRetailV2betaExportAnalyticsMetricsRequest() {
  final o = api.GoogleCloudRetailV2betaExportAnalyticsMetricsRequest();
  buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest++;
  if (buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2betaOutputConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaExportAnalyticsMetricsRequest(
  api.GoogleCloudRetailV2betaExportAnalyticsMetricsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest++;
  if (buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaOutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportAnalyticsMetricsRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaExportProductsRequest = 0;
api.GoogleCloudRetailV2betaExportProductsRequest
buildGoogleCloudRetailV2betaExportProductsRequest() {
  final o = api.GoogleCloudRetailV2betaExportProductsRequest();
  buildCounterGoogleCloudRetailV2betaExportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2betaExportProductsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2betaOutputConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaExportProductsRequest(
  api.GoogleCloudRetailV2betaExportProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaExportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2betaExportProductsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaOutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaExportUserEventsRequest = 0;
api.GoogleCloudRetailV2betaExportUserEventsRequest
buildGoogleCloudRetailV2betaExportUserEventsRequest() {
  final o = api.GoogleCloudRetailV2betaExportUserEventsRequest();
  buildCounterGoogleCloudRetailV2betaExportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaExportUserEventsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2betaOutputConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaExportUserEventsRequest(
  api.GoogleCloudRetailV2betaExportUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaExportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaExportUserEventsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaOutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportUserEventsRequest--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaFulfillmentInfo = 0;
api.GoogleCloudRetailV2betaFulfillmentInfo
buildGoogleCloudRetailV2betaFulfillmentInfo() {
  final o = api.GoogleCloudRetailV2betaFulfillmentInfo();
  buildCounterGoogleCloudRetailV2betaFulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2betaFulfillmentInfo < 3) {
    o.placeIds = buildUnnamed36();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaFulfillmentInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaFulfillmentInfo(
  api.GoogleCloudRetailV2betaFulfillmentInfo o,
) {
  buildCounterGoogleCloudRetailV2betaFulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2betaFulfillmentInfo < 3) {
    checkUnnamed36(o.placeIds!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaFulfillmentInfo--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaGcsSource = 0;
api.GoogleCloudRetailV2betaGcsSource buildGoogleCloudRetailV2betaGcsSource() {
  final o = api.GoogleCloudRetailV2betaGcsSource();
  buildCounterGoogleCloudRetailV2betaGcsSource++;
  if (buildCounterGoogleCloudRetailV2betaGcsSource < 3) {
    o.dataSchema = 'foo';
    o.inputUris = buildUnnamed37();
  }
  buildCounterGoogleCloudRetailV2betaGcsSource--;
  return o;
}

void checkGoogleCloudRetailV2betaGcsSource(
  api.GoogleCloudRetailV2betaGcsSource o,
) {
  buildCounterGoogleCloudRetailV2betaGcsSource++;
  if (buildCounterGoogleCloudRetailV2betaGcsSource < 3) {
    unittest.expect(o.dataSchema!, unittest.equals('foo'));
    checkUnnamed37(o.inputUris!);
  }
  buildCounterGoogleCloudRetailV2betaGcsSource--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig = 0;
api.GoogleCloudRetailV2betaGenerativeQuestionConfig
buildGoogleCloudRetailV2betaGenerativeQuestionConfig() {
  final o = api.GoogleCloudRetailV2betaGenerativeQuestionConfig();
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig++;
  if (buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig < 3) {
    o.allowedInConversation = true;
    o.catalog = 'foo';
    o.exampleValues = buildUnnamed38();
    o.facet = 'foo';
    o.finalQuestion = 'foo';
    o.frequency = 42.0;
    o.generatedQuestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaGenerativeQuestionConfig(
  api.GoogleCloudRetailV2betaGenerativeQuestionConfig o,
) {
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig++;
  if (buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig < 3) {
    unittest.expect(o.allowedInConversation!, unittest.isTrue);
    unittest.expect(o.catalog!, unittest.equals('foo'));
    checkUnnamed38(o.exampleValues!);
    unittest.expect(o.facet!, unittest.equals('foo'));
    unittest.expect(o.finalQuestion!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals(42.0));
    unittest.expect(o.generatedQuestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig =
    0;
api.GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig
buildGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig() {
  final o = api.GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig();
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig++;
  if (buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig < 3) {
    o.catalog = 'foo';
    o.featureEnabled = true;
    o.minimumProducts = 42;
  }
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(
  api.GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig o,
) {
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig++;
  if (buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig < 3) {
    unittest.expect(o.catalog!, unittest.equals('foo'));
    unittest.expect(o.featureEnabled!, unittest.isTrue);
    unittest.expect(o.minimumProducts!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse = 0;
api.GoogleCloudRetailV2betaGetDefaultBranchResponse
buildGoogleCloudRetailV2betaGetDefaultBranchResponse() {
  final o = api.GoogleCloudRetailV2betaGetDefaultBranchResponse();
  buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse < 3) {
    o.branch = 'foo';
    o.note = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaGetDefaultBranchResponse(
  api.GoogleCloudRetailV2betaGetDefaultBranchResponse o,
) {
  buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.note!, unittest.equals('foo'));
    unittest.expect(o.setTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaGetDefaultBranchResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaImage = 0;
api.GoogleCloudRetailV2betaImage buildGoogleCloudRetailV2betaImage() {
  final o = api.GoogleCloudRetailV2betaImage();
  buildCounterGoogleCloudRetailV2betaImage++;
  if (buildCounterGoogleCloudRetailV2betaImage < 3) {
    o.height = 42;
    o.uri = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudRetailV2betaImage--;
  return o;
}

void checkGoogleCloudRetailV2betaImage(api.GoogleCloudRetailV2betaImage o) {
  buildCounterGoogleCloudRetailV2betaImage++;
  if (buildCounterGoogleCloudRetailV2betaImage < 3) {
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaImage--;
}

core.int buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest = 0;
api.GoogleCloudRetailV2betaImportCompletionDataRequest
buildGoogleCloudRetailV2betaImportCompletionDataRequest() {
  final o = api.GoogleCloudRetailV2betaImportCompletionDataRequest();
  buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest < 3) {
    o.inputConfig = buildGoogleCloudRetailV2betaCompletionDataInputConfig();
    o.notificationPubsubTopic = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaImportCompletionDataRequest(
  api.GoogleCloudRetailV2betaImportCompletionDataRequest o,
) {
  buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest < 3) {
    checkGoogleCloudRetailV2betaCompletionDataInputConfig(o.inputConfig!);
    unittest.expect(o.notificationPubsubTopic!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaImportCompletionDataRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaImportErrorsConfig = 0;
api.GoogleCloudRetailV2betaImportErrorsConfig
buildGoogleCloudRetailV2betaImportErrorsConfig() {
  final o = api.GoogleCloudRetailV2betaImportErrorsConfig();
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2betaImportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaImportErrorsConfig(
  api.GoogleCloudRetailV2betaImportErrorsConfig o,
) {
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2betaImportErrorsConfig < 3) {
    unittest.expect(o.gcsPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaImportProductsRequest = 0;
api.GoogleCloudRetailV2betaImportProductsRequest
buildGoogleCloudRetailV2betaImportProductsRequest() {
  final o = api.GoogleCloudRetailV2betaImportProductsRequest();
  buildCounterGoogleCloudRetailV2betaImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2betaImportProductsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2betaImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2betaProductInputConfig();
    o.notificationPubsubTopic = 'foo';
    o.reconciliationMode = 'foo';
    o.requestId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaImportProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaImportProductsRequest(
  api.GoogleCloudRetailV2betaImportProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2betaImportProductsRequest < 3) {
    checkGoogleCloudRetailV2betaImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2betaProductInputConfig(o.inputConfig!);
    unittest.expect(o.notificationPubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.reconciliationMode!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaImportProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaImportUserEventsRequest = 0;
api.GoogleCloudRetailV2betaImportUserEventsRequest
buildGoogleCloudRetailV2betaImportUserEventsRequest() {
  final o = api.GoogleCloudRetailV2betaImportUserEventsRequest();
  buildCounterGoogleCloudRetailV2betaImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaImportUserEventsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2betaImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2betaUserEventInputConfig();
  }
  buildCounterGoogleCloudRetailV2betaImportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaImportUserEventsRequest(
  api.GoogleCloudRetailV2betaImportUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaImportUserEventsRequest < 3) {
    checkGoogleCloudRetailV2betaImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2betaUserEventInputConfig(o.inputConfig!);
  }
  buildCounterGoogleCloudRetailV2betaImportUserEventsRequest--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaIntentClassificationConfigExample>
buildUnnamed41() => [
  buildGoogleCloudRetailV2betaIntentClassificationConfigExample(),
  buildGoogleCloudRetailV2betaIntentClassificationConfigExample(),
];

void checkUnnamed41(
  core.List<api.GoogleCloudRetailV2betaIntentClassificationConfigExample> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaIntentClassificationConfigExample(o[0]);
  checkGoogleCloudRetailV2betaIntentClassificationConfigExample(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaIntentClassificationConfig = 0;
api.GoogleCloudRetailV2betaIntentClassificationConfig
buildGoogleCloudRetailV2betaIntentClassificationConfig() {
  final o = api.GoogleCloudRetailV2betaIntentClassificationConfig();
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfig++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfig < 3) {
    o.blocklistKeywords = buildUnnamed39();
    o.disabledIntentTypes = buildUnnamed40();
    o.example = buildUnnamed41();
    o.inlineSource =
        buildGoogleCloudRetailV2betaIntentClassificationConfigInlineSource();
    o.modelPreamble = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaIntentClassificationConfig(
  api.GoogleCloudRetailV2betaIntentClassificationConfig o,
) {
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfig++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfig < 3) {
    checkUnnamed39(o.blocklistKeywords!);
    checkUnnamed40(o.disabledIntentTypes!);
    checkUnnamed41(o.example!);
    checkGoogleCloudRetailV2betaIntentClassificationConfigInlineSource(
      o.inlineSource!,
    );
    unittest.expect(o.modelPreamble!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample =
    0;
api.GoogleCloudRetailV2betaIntentClassificationConfigExample
buildGoogleCloudRetailV2betaIntentClassificationConfigExample() {
  final o = api.GoogleCloudRetailV2betaIntentClassificationConfigExample();
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample <
      3) {
    o.classifiedPositive = true;
    o.intentType = 'foo';
    o.query = 'foo';
    o.reason = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample--;
  return o;
}

void checkGoogleCloudRetailV2betaIntentClassificationConfigExample(
  api.GoogleCloudRetailV2betaIntentClassificationConfigExample o,
) {
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample <
      3) {
    unittest.expect(o.classifiedPositive!, unittest.isTrue);
    unittest.expect(o.intentType!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigExample--;
}

core.int
buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent =
    0;
api.GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent
buildGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent() {
  final o =
      api.GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent();
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent <
      3) {
    o.intentType = 'foo';
    o.operation = 'foo';
    o.query = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent--;
  return o;
}

void checkGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent(
  api.GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent o,
) {
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent <
      3) {
    unittest.expect(o.intentType!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent--;
}

core.List<
  api.GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent
>
buildUnnamed42() => [
  buildGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent(),
  buildGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent(),
];

void checkUnnamed42(
  core.List<
    api.GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent(o[0]);
  checkGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource = 0;
api.GoogleCloudRetailV2betaIntentClassificationConfigInlineSource
buildGoogleCloudRetailV2betaIntentClassificationConfigInlineSource() {
  final o = api.GoogleCloudRetailV2betaIntentClassificationConfigInlineSource();
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource <
      3) {
    o.inlineForceIntents = buildUnnamed42();
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2betaIntentClassificationConfigInlineSource(
  api.GoogleCloudRetailV2betaIntentClassificationConfigInlineSource o,
) {
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource++;
  if (buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource <
      3) {
    checkUnnamed42(o.inlineForceIntents!);
  }
  buildCounterGoogleCloudRetailV2betaIntentClassificationConfigInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2betaInterval = 0;
api.GoogleCloudRetailV2betaInterval buildGoogleCloudRetailV2betaInterval() {
  final o = api.GoogleCloudRetailV2betaInterval();
  buildCounterGoogleCloudRetailV2betaInterval++;
  if (buildCounterGoogleCloudRetailV2betaInterval < 3) {
    o.exclusiveMaximum = 42.0;
    o.exclusiveMinimum = 42.0;
    o.maximum = 42.0;
    o.minimum = 42.0;
  }
  buildCounterGoogleCloudRetailV2betaInterval--;
  return o;
}

void checkGoogleCloudRetailV2betaInterval(
  api.GoogleCloudRetailV2betaInterval o,
) {
  buildCounterGoogleCloudRetailV2betaInterval++;
  if (buildCounterGoogleCloudRetailV2betaInterval < 3) {
    unittest.expect(o.exclusiveMaximum!, unittest.equals(42.0));
    unittest.expect(o.exclusiveMinimum!, unittest.equals(42.0));
    unittest.expect(o.maximum!, unittest.equals(42.0));
    unittest.expect(o.minimum!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRetailV2betaInterval--;
}

core.List<api.GoogleCloudRetailV2betaCatalog> buildUnnamed43() => [
  buildGoogleCloudRetailV2betaCatalog(),
  buildGoogleCloudRetailV2betaCatalog(),
];

void checkUnnamed43(core.List<api.GoogleCloudRetailV2betaCatalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCatalog(o[0]);
  checkGoogleCloudRetailV2betaCatalog(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaListCatalogsResponse = 0;
api.GoogleCloudRetailV2betaListCatalogsResponse
buildGoogleCloudRetailV2betaListCatalogsResponse() {
  final o = api.GoogleCloudRetailV2betaListCatalogsResponse();
  buildCounterGoogleCloudRetailV2betaListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListCatalogsResponse < 3) {
    o.catalogs = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaListCatalogsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaListCatalogsResponse(
  api.GoogleCloudRetailV2betaListCatalogsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListCatalogsResponse < 3) {
    checkUnnamed43(o.catalogs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaListCatalogsResponse--;
}

core.List<api.GoogleCloudRetailV2betaControl> buildUnnamed44() => [
  buildGoogleCloudRetailV2betaControl(),
  buildGoogleCloudRetailV2betaControl(),
];

void checkUnnamed44(core.List<api.GoogleCloudRetailV2betaControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaControl(o[0]);
  checkGoogleCloudRetailV2betaControl(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaListControlsResponse = 0;
api.GoogleCloudRetailV2betaListControlsResponse
buildGoogleCloudRetailV2betaListControlsResponse() {
  final o = api.GoogleCloudRetailV2betaListControlsResponse();
  buildCounterGoogleCloudRetailV2betaListControlsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListControlsResponse < 3) {
    o.controls = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaListControlsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaListControlsResponse(
  api.GoogleCloudRetailV2betaListControlsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaListControlsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListControlsResponse < 3) {
    checkUnnamed44(o.controls!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaListControlsResponse--;
}

core.List<api.GoogleCloudRetailV2betaGenerativeQuestionConfig>
buildUnnamed45() => [
  buildGoogleCloudRetailV2betaGenerativeQuestionConfig(),
  buildGoogleCloudRetailV2betaGenerativeQuestionConfig(),
];

void checkUnnamed45(
  core.List<api.GoogleCloudRetailV2betaGenerativeQuestionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaGenerativeQuestionConfig(o[0]);
  checkGoogleCloudRetailV2betaGenerativeQuestionConfig(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse = 0;
api.GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse
buildGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse() {
  final o = api.GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse();
  buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse <
      3) {
    o.generativeQuestionConfigs = buildUnnamed45();
  }
  buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse(
  api.GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse <
      3) {
    checkUnnamed45(o.generativeQuestionConfigs!);
  }
  buildCounterGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse--;
}

core.List<api.GoogleCloudRetailV2betaModel> buildUnnamed46() => [
  buildGoogleCloudRetailV2betaModel(),
  buildGoogleCloudRetailV2betaModel(),
];

void checkUnnamed46(core.List<api.GoogleCloudRetailV2betaModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaModel(o[0]);
  checkGoogleCloudRetailV2betaModel(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaListModelsResponse = 0;
api.GoogleCloudRetailV2betaListModelsResponse
buildGoogleCloudRetailV2betaListModelsResponse() {
  final o = api.GoogleCloudRetailV2betaListModelsResponse();
  buildCounterGoogleCloudRetailV2betaListModelsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListModelsResponse < 3) {
    o.models = buildUnnamed46();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaListModelsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaListModelsResponse(
  api.GoogleCloudRetailV2betaListModelsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaListModelsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListModelsResponse < 3) {
    checkUnnamed46(o.models!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaListModelsResponse--;
}

core.List<api.GoogleCloudRetailV2betaProduct> buildUnnamed47() => [
  buildGoogleCloudRetailV2betaProduct(),
  buildGoogleCloudRetailV2betaProduct(),
];

void checkUnnamed47(core.List<api.GoogleCloudRetailV2betaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaProduct(o[0]);
  checkGoogleCloudRetailV2betaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaListProductsResponse = 0;
api.GoogleCloudRetailV2betaListProductsResponse
buildGoogleCloudRetailV2betaListProductsResponse() {
  final o = api.GoogleCloudRetailV2betaListProductsResponse();
  buildCounterGoogleCloudRetailV2betaListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed47();
  }
  buildCounterGoogleCloudRetailV2betaListProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaListProductsResponse(
  api.GoogleCloudRetailV2betaListProductsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListProductsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed47(o.products!);
  }
  buildCounterGoogleCloudRetailV2betaListProductsResponse--;
}

core.List<api.GoogleCloudRetailV2betaServingConfig> buildUnnamed48() => [
  buildGoogleCloudRetailV2betaServingConfig(),
  buildGoogleCloudRetailV2betaServingConfig(),
];

void checkUnnamed48(core.List<api.GoogleCloudRetailV2betaServingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaServingConfig(o[0]);
  checkGoogleCloudRetailV2betaServingConfig(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaListServingConfigsResponse = 0;
api.GoogleCloudRetailV2betaListServingConfigsResponse
buildGoogleCloudRetailV2betaListServingConfigsResponse() {
  final o = api.GoogleCloudRetailV2betaListServingConfigsResponse();
  buildCounterGoogleCloudRetailV2betaListServingConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListServingConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.servingConfigs = buildUnnamed48();
  }
  buildCounterGoogleCloudRetailV2betaListServingConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaListServingConfigsResponse(
  api.GoogleCloudRetailV2betaListServingConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2betaListServingConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2betaListServingConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed48(o.servingConfigs!);
  }
  buildCounterGoogleCloudRetailV2betaListServingConfigsResponse--;
}

core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute>
buildUnnamed49() => {
  'x': buildGoogleCloudRetailV2betaCustomAttribute(),
  'y': buildGoogleCloudRetailV2betaCustomAttribute(),
};

void checkUnnamed49(
  core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2betaCustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaLocalInventory = 0;
api.GoogleCloudRetailV2betaLocalInventory
buildGoogleCloudRetailV2betaLocalInventory() {
  final o = api.GoogleCloudRetailV2betaLocalInventory();
  buildCounterGoogleCloudRetailV2betaLocalInventory++;
  if (buildCounterGoogleCloudRetailV2betaLocalInventory < 3) {
    o.attributes = buildUnnamed49();
    o.fulfillmentTypes = buildUnnamed50();
    o.placeId = 'foo';
    o.priceInfo = buildGoogleCloudRetailV2betaPriceInfo();
  }
  buildCounterGoogleCloudRetailV2betaLocalInventory--;
  return o;
}

void checkGoogleCloudRetailV2betaLocalInventory(
  api.GoogleCloudRetailV2betaLocalInventory o,
) {
  buildCounterGoogleCloudRetailV2betaLocalInventory++;
  if (buildCounterGoogleCloudRetailV2betaLocalInventory < 3) {
    checkUnnamed49(o.attributes!);
    checkUnnamed50(o.fulfillmentTypes!);
    unittest.expect(o.placeId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaPriceInfo(o.priceInfo!);
  }
  buildCounterGoogleCloudRetailV2betaLocalInventory--;
}

core.int buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter = 0;
api.GoogleCloudRetailV2betaMerchantCenterFeedFilter
buildGoogleCloudRetailV2betaMerchantCenterFeedFilter() {
  final o = api.GoogleCloudRetailV2betaMerchantCenterFeedFilter();
  buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter++;
  if (buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter < 3) {
    o.dataSourceId = 'foo';
    o.primaryFeedId = 'foo';
    o.primaryFeedName = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter--;
  return o;
}

void checkGoogleCloudRetailV2betaMerchantCenterFeedFilter(
  api.GoogleCloudRetailV2betaMerchantCenterFeedFilter o,
) {
  buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter++;
  if (buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter < 3) {
    unittest.expect(o.dataSourceId!, unittest.equals('foo'));
    unittest.expect(o.primaryFeedId!, unittest.equals('foo'));
    unittest.expect(o.primaryFeedName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaMerchantCenterFeedFilter--;
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaMerchantCenterFeedFilter>
buildUnnamed52() => [
  buildGoogleCloudRetailV2betaMerchantCenterFeedFilter(),
  buildGoogleCloudRetailV2betaMerchantCenterFeedFilter(),
];

void checkUnnamed52(
  core.List<api.GoogleCloudRetailV2betaMerchantCenterFeedFilter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaMerchantCenterFeedFilter(o[0]);
  checkGoogleCloudRetailV2betaMerchantCenterFeedFilter(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaMerchantCenterLink = 0;
api.GoogleCloudRetailV2betaMerchantCenterLink
buildGoogleCloudRetailV2betaMerchantCenterLink() {
  final o = api.GoogleCloudRetailV2betaMerchantCenterLink();
  buildCounterGoogleCloudRetailV2betaMerchantCenterLink++;
  if (buildCounterGoogleCloudRetailV2betaMerchantCenterLink < 3) {
    o.branchId = 'foo';
    o.destinations = buildUnnamed51();
    o.feeds = buildUnnamed52();
    o.languageCode = 'foo';
    o.merchantCenterAccountId = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaMerchantCenterLink--;
  return o;
}

void checkGoogleCloudRetailV2betaMerchantCenterLink(
  api.GoogleCloudRetailV2betaMerchantCenterLink o,
) {
  buildCounterGoogleCloudRetailV2betaMerchantCenterLink++;
  if (buildCounterGoogleCloudRetailV2betaMerchantCenterLink < 3) {
    unittest.expect(o.branchId!, unittest.equals('foo'));
    checkUnnamed51(o.destinations!);
    checkUnnamed52(o.feeds!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.merchantCenterAccountId!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaMerchantCenterLink--;
}

core.List<api.GoogleCloudRetailV2betaMerchantCenterLink> buildUnnamed53() => [
  buildGoogleCloudRetailV2betaMerchantCenterLink(),
  buildGoogleCloudRetailV2betaMerchantCenterLink(),
];

void checkUnnamed53(
  core.List<api.GoogleCloudRetailV2betaMerchantCenterLink> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaMerchantCenterLink(o[0]);
  checkGoogleCloudRetailV2betaMerchantCenterLink(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig = 0;
api.GoogleCloudRetailV2betaMerchantCenterLinkingConfig
buildGoogleCloudRetailV2betaMerchantCenterLinkingConfig() {
  final o = api.GoogleCloudRetailV2betaMerchantCenterLinkingConfig();
  buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig++;
  if (buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig < 3) {
    o.links = buildUnnamed53();
  }
  buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaMerchantCenterLinkingConfig(
  api.GoogleCloudRetailV2betaMerchantCenterLinkingConfig o,
) {
  buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig++;
  if (buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig < 3) {
    checkUnnamed53(o.links!);
  }
  buildCounterGoogleCloudRetailV2betaMerchantCenterLinkingConfig--;
}

core.List<api.GoogleCloudRetailV2betaModelServingConfigList> buildUnnamed54() =>
    [
      buildGoogleCloudRetailV2betaModelServingConfigList(),
      buildGoogleCloudRetailV2betaModelServingConfigList(),
    ];

void checkUnnamed54(
  core.List<api.GoogleCloudRetailV2betaModelServingConfigList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaModelServingConfigList(o[0]);
  checkGoogleCloudRetailV2betaModelServingConfigList(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaModel = 0;
api.GoogleCloudRetailV2betaModel buildGoogleCloudRetailV2betaModel() {
  final o = api.GoogleCloudRetailV2betaModel();
  buildCounterGoogleCloudRetailV2betaModel++;
  if (buildCounterGoogleCloudRetailV2betaModel < 3) {
    o.createTime = 'foo';
    o.dataState = 'foo';
    o.displayName = 'foo';
    o.filteringOption = 'foo';
    o.lastTuneTime = 'foo';
    o.modelFeaturesConfig =
        buildGoogleCloudRetailV2betaModelModelFeaturesConfig();
    o.name = 'foo';
    o.optimizationObjective = 'foo';
    o.periodicTuningState = 'foo';
    o.servingConfigLists = buildUnnamed54();
    o.servingState = 'foo';
    o.trainingState = 'foo';
    o.tuningOperation = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaModel--;
  return o;
}

void checkGoogleCloudRetailV2betaModel(api.GoogleCloudRetailV2betaModel o) {
  buildCounterGoogleCloudRetailV2betaModel++;
  if (buildCounterGoogleCloudRetailV2betaModel < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dataState!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filteringOption!, unittest.equals('foo'));
    unittest.expect(o.lastTuneTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaModelModelFeaturesConfig(
      o.modelFeaturesConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.optimizationObjective!, unittest.equals('foo'));
    unittest.expect(o.periodicTuningState!, unittest.equals('foo'));
    checkUnnamed54(o.servingConfigLists!);
    unittest.expect(o.servingState!, unittest.equals('foo'));
    unittest.expect(o.trainingState!, unittest.equals('foo'));
    unittest.expect(o.tuningOperation!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaModel--;
}

core.int
buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig =
    0;
api.GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig
buildGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig() {
  final o =
      api.GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig();
  buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig <
      3) {
    o.contextProductsType = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig(
  api.GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig o,
) {
  buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig <
      3) {
    unittest.expect(o.contextProductsType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig = 0;
api.GoogleCloudRetailV2betaModelModelFeaturesConfig
buildGoogleCloudRetailV2betaModelModelFeaturesConfig() {
  final o = api.GoogleCloudRetailV2betaModelModelFeaturesConfig();
  buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig < 3) {
    o.frequentlyBoughtTogetherConfig =
        buildGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig();
  }
  buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaModelModelFeaturesConfig(
  api.GoogleCloudRetailV2betaModelModelFeaturesConfig o,
) {
  buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig < 3) {
    checkGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig(
      o.frequentlyBoughtTogetherConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2betaModelModelFeaturesConfig--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaModelServingConfigList = 0;
api.GoogleCloudRetailV2betaModelServingConfigList
buildGoogleCloudRetailV2betaModelServingConfigList() {
  final o = api.GoogleCloudRetailV2betaModelServingConfigList();
  buildCounterGoogleCloudRetailV2betaModelServingConfigList++;
  if (buildCounterGoogleCloudRetailV2betaModelServingConfigList < 3) {
    o.servingConfigIds = buildUnnamed55();
  }
  buildCounterGoogleCloudRetailV2betaModelServingConfigList--;
  return o;
}

void checkGoogleCloudRetailV2betaModelServingConfigList(
  api.GoogleCloudRetailV2betaModelServingConfigList o,
) {
  buildCounterGoogleCloudRetailV2betaModelServingConfigList++;
  if (buildCounterGoogleCloudRetailV2betaModelServingConfigList < 3) {
    checkUnnamed55(o.servingConfigIds!);
  }
  buildCounterGoogleCloudRetailV2betaModelServingConfigList--;
}

core.int buildCounterGoogleCloudRetailV2betaOutputConfig = 0;
api.GoogleCloudRetailV2betaOutputConfig
buildGoogleCloudRetailV2betaOutputConfig() {
  final o = api.GoogleCloudRetailV2betaOutputConfig();
  buildCounterGoogleCloudRetailV2betaOutputConfig++;
  if (buildCounterGoogleCloudRetailV2betaOutputConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudRetailV2betaOutputConfigBigQueryDestination();
    o.gcsDestination = buildGoogleCloudRetailV2betaOutputConfigGcsDestination();
  }
  buildCounterGoogleCloudRetailV2betaOutputConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaOutputConfig(
  api.GoogleCloudRetailV2betaOutputConfig o,
) {
  buildCounterGoogleCloudRetailV2betaOutputConfig++;
  if (buildCounterGoogleCloudRetailV2betaOutputConfig < 3) {
    checkGoogleCloudRetailV2betaOutputConfigBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkGoogleCloudRetailV2betaOutputConfigGcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudRetailV2betaOutputConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination = 0;
api.GoogleCloudRetailV2betaOutputConfigBigQueryDestination
buildGoogleCloudRetailV2betaOutputConfigBigQueryDestination() {
  final o = api.GoogleCloudRetailV2betaOutputConfigBigQueryDestination();
  buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination < 3) {
    o.datasetId = 'foo';
    o.tableIdPrefix = 'foo';
    o.tableType = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination--;
  return o;
}

void checkGoogleCloudRetailV2betaOutputConfigBigQueryDestination(
  api.GoogleCloudRetailV2betaOutputConfigBigQueryDestination o,
) {
  buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination < 3) {
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.tableIdPrefix!, unittest.equals('foo'));
    unittest.expect(o.tableType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaOutputConfigBigQueryDestination--;
}

core.int buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination = 0;
api.GoogleCloudRetailV2betaOutputConfigGcsDestination
buildGoogleCloudRetailV2betaOutputConfigGcsDestination() {
  final o = api.GoogleCloudRetailV2betaOutputConfigGcsDestination();
  buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination++;
  if (buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination < 3) {
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination--;
  return o;
}

void checkGoogleCloudRetailV2betaOutputConfigGcsDestination(
  api.GoogleCloudRetailV2betaOutputConfigGcsDestination o,
) {
  buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination++;
  if (buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination < 3) {
    unittest.expect(o.outputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaOutputConfigGcsDestination--;
}

core.List<api.GoogleCloudRetailV2betaProductDetail> buildUnnamed56() => [
  buildGoogleCloudRetailV2betaProductDetail(),
  buildGoogleCloudRetailV2betaProductDetail(),
];

void checkUnnamed56(core.List<api.GoogleCloudRetailV2betaProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaProductDetail(o[0]);
  checkGoogleCloudRetailV2betaProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaPanelInfo = 0;
api.GoogleCloudRetailV2betaPanelInfo buildGoogleCloudRetailV2betaPanelInfo() {
  final o = api.GoogleCloudRetailV2betaPanelInfo();
  buildCounterGoogleCloudRetailV2betaPanelInfo++;
  if (buildCounterGoogleCloudRetailV2betaPanelInfo < 3) {
    o.attributionToken = 'foo';
    o.displayName = 'foo';
    o.panelId = 'foo';
    o.panelPosition = 42;
    o.productDetails = buildUnnamed56();
    o.totalPanels = 42;
  }
  buildCounterGoogleCloudRetailV2betaPanelInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaPanelInfo(
  api.GoogleCloudRetailV2betaPanelInfo o,
) {
  buildCounterGoogleCloudRetailV2betaPanelInfo++;
  if (buildCounterGoogleCloudRetailV2betaPanelInfo < 3) {
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.panelId!, unittest.equals('foo'));
    unittest.expect(o.panelPosition!, unittest.equals(42));
    checkUnnamed56(o.productDetails!);
    unittest.expect(o.totalPanels!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaPanelInfo--;
}

core.int buildCounterGoogleCloudRetailV2betaPauseModelRequest = 0;
api.GoogleCloudRetailV2betaPauseModelRequest
buildGoogleCloudRetailV2betaPauseModelRequest() {
  final o = api.GoogleCloudRetailV2betaPauseModelRequest();
  buildCounterGoogleCloudRetailV2betaPauseModelRequest++;
  if (buildCounterGoogleCloudRetailV2betaPauseModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2betaPauseModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaPauseModelRequest(
  api.GoogleCloudRetailV2betaPauseModelRequest o,
) {
  buildCounterGoogleCloudRetailV2betaPauseModelRequest++;
  if (buildCounterGoogleCloudRetailV2betaPauseModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2betaPauseModelRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2betaPinControlMetadataProductPins>
buildUnnamed57() => {
  'x': buildGoogleCloudRetailV2betaPinControlMetadataProductPins(),
  'y': buildGoogleCloudRetailV2betaPinControlMetadataProductPins(),
};

void checkUnnamed57(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2betaPinControlMetadataProductPins
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaPinControlMetadataProductPins(o['x']!);
  checkGoogleCloudRetailV2betaPinControlMetadataProductPins(o['y']!);
}

core.Map<core.String, api.GoogleCloudRetailV2betaPinControlMetadataProductPins>
buildUnnamed58() => {
  'x': buildGoogleCloudRetailV2betaPinControlMetadataProductPins(),
  'y': buildGoogleCloudRetailV2betaPinControlMetadataProductPins(),
};

void checkUnnamed58(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2betaPinControlMetadataProductPins
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaPinControlMetadataProductPins(o['x']!);
  checkGoogleCloudRetailV2betaPinControlMetadataProductPins(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2betaPinControlMetadata = 0;
api.GoogleCloudRetailV2betaPinControlMetadata
buildGoogleCloudRetailV2betaPinControlMetadata() {
  final o = api.GoogleCloudRetailV2betaPinControlMetadata();
  buildCounterGoogleCloudRetailV2betaPinControlMetadata++;
  if (buildCounterGoogleCloudRetailV2betaPinControlMetadata < 3) {
    o.allMatchedPins = buildUnnamed57();
    o.droppedPins = buildUnnamed58();
  }
  buildCounterGoogleCloudRetailV2betaPinControlMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaPinControlMetadata(
  api.GoogleCloudRetailV2betaPinControlMetadata o,
) {
  buildCounterGoogleCloudRetailV2betaPinControlMetadata++;
  if (buildCounterGoogleCloudRetailV2betaPinControlMetadata < 3) {
    checkUnnamed57(o.allMatchedPins!);
    checkUnnamed58(o.droppedPins!);
  }
  buildCounterGoogleCloudRetailV2betaPinControlMetadata--;
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins = 0;
api.GoogleCloudRetailV2betaPinControlMetadataProductPins
buildGoogleCloudRetailV2betaPinControlMetadataProductPins() {
  final o = api.GoogleCloudRetailV2betaPinControlMetadataProductPins();
  buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins++;
  if (buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins < 3) {
    o.productId = buildUnnamed59();
  }
  buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins--;
  return o;
}

void checkGoogleCloudRetailV2betaPinControlMetadataProductPins(
  api.GoogleCloudRetailV2betaPinControlMetadataProductPins o,
) {
  buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins++;
  if (buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins < 3) {
    checkUnnamed59(o.productId!);
  }
  buildCounterGoogleCloudRetailV2betaPinControlMetadataProductPins--;
}

core.Map<core.String, core.String> buildUnnamed60() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed60(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2betaPredictRequest = 0;
api.GoogleCloudRetailV2betaPredictRequest
buildGoogleCloudRetailV2betaPredictRequest() {
  final o = api.GoogleCloudRetailV2betaPredictRequest();
  buildCounterGoogleCloudRetailV2betaPredictRequest++;
  if (buildCounterGoogleCloudRetailV2betaPredictRequest < 3) {
    o.filter = 'foo';
    o.labels = buildUnnamed60();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed61();
    o.userEvent = buildGoogleCloudRetailV2betaUserEvent();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2betaPredictRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaPredictRequest(
  api.GoogleCloudRetailV2betaPredictRequest o,
) {
  buildCounterGoogleCloudRetailV2betaPredictRequest++;
  if (buildCounterGoogleCloudRetailV2betaPredictRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed60(o.labels!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkUnnamed61(o.params!);
    checkGoogleCloudRetailV2betaUserEvent(o.userEvent!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaPredictRequest--;
}

core.List<core.String> buildUnnamed62() => ['foo', 'foo'];

void checkUnnamed62(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaPredictResponsePredictionResult>
buildUnnamed63() => [
  buildGoogleCloudRetailV2betaPredictResponsePredictionResult(),
  buildGoogleCloudRetailV2betaPredictResponsePredictionResult(),
];

void checkUnnamed63(
  core.List<api.GoogleCloudRetailV2betaPredictResponsePredictionResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaPredictResponsePredictionResult(o[0]);
  checkGoogleCloudRetailV2betaPredictResponsePredictionResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaPredictResponse = 0;
api.GoogleCloudRetailV2betaPredictResponse
buildGoogleCloudRetailV2betaPredictResponse() {
  final o = api.GoogleCloudRetailV2betaPredictResponse();
  buildCounterGoogleCloudRetailV2betaPredictResponse++;
  if (buildCounterGoogleCloudRetailV2betaPredictResponse < 3) {
    o.attributionToken = 'foo';
    o.missingIds = buildUnnamed62();
    o.results = buildUnnamed63();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2betaPredictResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaPredictResponse(
  api.GoogleCloudRetailV2betaPredictResponse o,
) {
  buildCounterGoogleCloudRetailV2betaPredictResponse++;
  if (buildCounterGoogleCloudRetailV2betaPredictResponse < 3) {
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkUnnamed62(o.missingIds!);
    checkUnnamed63(o.results!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaPredictResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult = 0;
api.GoogleCloudRetailV2betaPredictResponsePredictionResult
buildGoogleCloudRetailV2betaPredictResponsePredictionResult() {
  final o = api.GoogleCloudRetailV2betaPredictResponsePredictionResult();
  buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult < 3) {
    o.id = 'foo';
    o.metadata = buildUnnamed64();
  }
  buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult--;
  return o;
}

void checkGoogleCloudRetailV2betaPredictResponsePredictionResult(
  api.GoogleCloudRetailV2betaPredictResponsePredictionResult o,
) {
  buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed64(o.metadata!);
  }
  buildCounterGoogleCloudRetailV2betaPredictResponsePredictionResult--;
}

core.int buildCounterGoogleCloudRetailV2betaPriceInfo = 0;
api.GoogleCloudRetailV2betaPriceInfo buildGoogleCloudRetailV2betaPriceInfo() {
  final o = api.GoogleCloudRetailV2betaPriceInfo();
  buildCounterGoogleCloudRetailV2betaPriceInfo++;
  if (buildCounterGoogleCloudRetailV2betaPriceInfo < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.originalPrice = 42.0;
    o.price = 42.0;
    o.priceEffectiveTime = 'foo';
    o.priceExpireTime = 'foo';
    o.priceRange = buildGoogleCloudRetailV2betaPriceInfoPriceRange();
  }
  buildCounterGoogleCloudRetailV2betaPriceInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaPriceInfo(
  api.GoogleCloudRetailV2betaPriceInfo o,
) {
  buildCounterGoogleCloudRetailV2betaPriceInfo++;
  if (buildCounterGoogleCloudRetailV2betaPriceInfo < 3) {
    unittest.expect(o.cost!, unittest.equals(42.0));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.originalPrice!, unittest.equals(42.0));
    unittest.expect(o.price!, unittest.equals(42.0));
    unittest.expect(o.priceEffectiveTime!, unittest.equals('foo'));
    unittest.expect(o.priceExpireTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaPriceInfoPriceRange(o.priceRange!);
  }
  buildCounterGoogleCloudRetailV2betaPriceInfo--;
}

core.int buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange = 0;
api.GoogleCloudRetailV2betaPriceInfoPriceRange
buildGoogleCloudRetailV2betaPriceInfoPriceRange() {
  final o = api.GoogleCloudRetailV2betaPriceInfoPriceRange();
  buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange < 3) {
    o.originalPrice = buildGoogleCloudRetailV2betaInterval();
    o.price = buildGoogleCloudRetailV2betaInterval();
  }
  buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange--;
  return o;
}

void checkGoogleCloudRetailV2betaPriceInfoPriceRange(
  api.GoogleCloudRetailV2betaPriceInfoPriceRange o,
) {
  buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange < 3) {
    checkGoogleCloudRetailV2betaInterval(o.originalPrice!);
    checkGoogleCloudRetailV2betaInterval(o.price!);
  }
  buildCounterGoogleCloudRetailV2betaPriceInfoPriceRange--;
}

core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute>
buildUnnamed65() => {
  'x': buildGoogleCloudRetailV2betaCustomAttribute(),
  'y': buildGoogleCloudRetailV2betaCustomAttribute(),
};

void checkUnnamed65(
  core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2betaCustomAttribute(o['y']!);
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

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed69() => ['foo', 'foo'];

void checkUnnamed69(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaFulfillmentInfo> buildUnnamed70() => [
  buildGoogleCloudRetailV2betaFulfillmentInfo(),
  buildGoogleCloudRetailV2betaFulfillmentInfo(),
];

void checkUnnamed70(core.List<api.GoogleCloudRetailV2betaFulfillmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaFulfillmentInfo(o[0]);
  checkGoogleCloudRetailV2betaFulfillmentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2betaImage> buildUnnamed71() => [
  buildGoogleCloudRetailV2betaImage(),
  buildGoogleCloudRetailV2betaImage(),
];

void checkUnnamed71(core.List<api.GoogleCloudRetailV2betaImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaImage(o[0]);
  checkGoogleCloudRetailV2betaImage(o[1]);
}

core.List<api.GoogleCloudRetailV2betaLocalInventory> buildUnnamed72() => [
  buildGoogleCloudRetailV2betaLocalInventory(),
  buildGoogleCloudRetailV2betaLocalInventory(),
];

void checkUnnamed72(core.List<api.GoogleCloudRetailV2betaLocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaLocalInventory(o[0]);
  checkGoogleCloudRetailV2betaLocalInventory(o[1]);
}

core.List<core.String> buildUnnamed73() => ['foo', 'foo'];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaPromotion> buildUnnamed75() => [
  buildGoogleCloudRetailV2betaPromotion(),
  buildGoogleCloudRetailV2betaPromotion(),
];

void checkUnnamed75(core.List<api.GoogleCloudRetailV2betaPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaPromotion(o[0]);
  checkGoogleCloudRetailV2betaPromotion(o[1]);
}

core.List<core.String> buildUnnamed76() => ['foo', 'foo'];

void checkUnnamed76(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaProduct> buildUnnamed78() => [
  buildGoogleCloudRetailV2betaProduct(),
  buildGoogleCloudRetailV2betaProduct(),
];

void checkUnnamed78(core.List<api.GoogleCloudRetailV2betaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaProduct(o[0]);
  checkGoogleCloudRetailV2betaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaProduct = 0;
api.GoogleCloudRetailV2betaProduct buildGoogleCloudRetailV2betaProduct() {
  final o = api.GoogleCloudRetailV2betaProduct();
  buildCounterGoogleCloudRetailV2betaProduct++;
  if (buildCounterGoogleCloudRetailV2betaProduct < 3) {
    o.attributes = buildUnnamed65();
    o.audience = buildGoogleCloudRetailV2betaAudience();
    o.availability = 'foo';
    o.availableQuantity = 42;
    o.availableTime = 'foo';
    o.brands = buildUnnamed66();
    o.categories = buildUnnamed67();
    o.collectionMemberIds = buildUnnamed68();
    o.colorInfo = buildGoogleCloudRetailV2betaColorInfo();
    o.conditions = buildUnnamed69();
    o.description = 'foo';
    o.expireTime = 'foo';
    o.fulfillmentInfo = buildUnnamed70();
    o.gtin = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed71();
    o.languageCode = 'foo';
    o.localInventories = buildUnnamed72();
    o.materials = buildUnnamed73();
    o.name = 'foo';
    o.patterns = buildUnnamed74();
    o.priceInfo = buildGoogleCloudRetailV2betaPriceInfo();
    o.primaryProductId = 'foo';
    o.promotions = buildUnnamed75();
    o.publishTime = 'foo';
    o.rating = buildGoogleCloudRetailV2betaRating();
    o.retrievableFields = 'foo';
    o.sizes = buildUnnamed76();
    o.tags = buildUnnamed77();
    o.title = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
    o.variants = buildUnnamed78();
  }
  buildCounterGoogleCloudRetailV2betaProduct--;
  return o;
}

void checkGoogleCloudRetailV2betaProduct(api.GoogleCloudRetailV2betaProduct o) {
  buildCounterGoogleCloudRetailV2betaProduct++;
  if (buildCounterGoogleCloudRetailV2betaProduct < 3) {
    checkUnnamed65(o.attributes!);
    checkGoogleCloudRetailV2betaAudience(o.audience!);
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.availableQuantity!, unittest.equals(42));
    unittest.expect(o.availableTime!, unittest.equals('foo'));
    checkUnnamed66(o.brands!);
    checkUnnamed67(o.categories!);
    checkUnnamed68(o.collectionMemberIds!);
    checkGoogleCloudRetailV2betaColorInfo(o.colorInfo!);
    checkUnnamed69(o.conditions!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed70(o.fulfillmentInfo!);
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed71(o.images!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed72(o.localInventories!);
    checkUnnamed73(o.materials!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed74(o.patterns!);
    checkGoogleCloudRetailV2betaPriceInfo(o.priceInfo!);
    unittest.expect(o.primaryProductId!, unittest.equals('foo'));
    checkUnnamed75(o.promotions!);
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaRating(o.rating!);
    unittest.expect(o.retrievableFields!, unittest.equals('foo'));
    checkUnnamed76(o.sizes!);
    checkUnnamed77(o.tags!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkUnnamed78(o.variants!);
  }
  buildCounterGoogleCloudRetailV2betaProduct--;
}

core.int buildCounterGoogleCloudRetailV2betaProductAttributeInterval = 0;
api.GoogleCloudRetailV2betaProductAttributeInterval
buildGoogleCloudRetailV2betaProductAttributeInterval() {
  final o = api.GoogleCloudRetailV2betaProductAttributeInterval();
  buildCounterGoogleCloudRetailV2betaProductAttributeInterval++;
  if (buildCounterGoogleCloudRetailV2betaProductAttributeInterval < 3) {
    o.interval = buildGoogleCloudRetailV2betaInterval();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaProductAttributeInterval--;
  return o;
}

void checkGoogleCloudRetailV2betaProductAttributeInterval(
  api.GoogleCloudRetailV2betaProductAttributeInterval o,
) {
  buildCounterGoogleCloudRetailV2betaProductAttributeInterval++;
  if (buildCounterGoogleCloudRetailV2betaProductAttributeInterval < 3) {
    checkGoogleCloudRetailV2betaInterval(o.interval!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaProductAttributeInterval--;
}

core.int buildCounterGoogleCloudRetailV2betaProductAttributeValue = 0;
api.GoogleCloudRetailV2betaProductAttributeValue
buildGoogleCloudRetailV2betaProductAttributeValue() {
  final o = api.GoogleCloudRetailV2betaProductAttributeValue();
  buildCounterGoogleCloudRetailV2betaProductAttributeValue++;
  if (buildCounterGoogleCloudRetailV2betaProductAttributeValue < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaProductAttributeValue--;
  return o;
}

void checkGoogleCloudRetailV2betaProductAttributeValue(
  api.GoogleCloudRetailV2betaProductAttributeValue o,
) {
  buildCounterGoogleCloudRetailV2betaProductAttributeValue++;
  if (buildCounterGoogleCloudRetailV2betaProductAttributeValue < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaProductAttributeValue--;
}

core.int buildCounterGoogleCloudRetailV2betaProductDetail = 0;
api.GoogleCloudRetailV2betaProductDetail
buildGoogleCloudRetailV2betaProductDetail() {
  final o = api.GoogleCloudRetailV2betaProductDetail();
  buildCounterGoogleCloudRetailV2betaProductDetail++;
  if (buildCounterGoogleCloudRetailV2betaProductDetail < 3) {
    o.product = buildGoogleCloudRetailV2betaProduct();
    o.quantity = 42;
  }
  buildCounterGoogleCloudRetailV2betaProductDetail--;
  return o;
}

void checkGoogleCloudRetailV2betaProductDetail(
  api.GoogleCloudRetailV2betaProductDetail o,
) {
  buildCounterGoogleCloudRetailV2betaProductDetail++;
  if (buildCounterGoogleCloudRetailV2betaProductDetail < 3) {
    checkGoogleCloudRetailV2betaProduct(o.product!);
    unittest.expect(o.quantity!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaProductDetail--;
}

core.List<api.GoogleCloudRetailV2betaProduct> buildUnnamed79() => [
  buildGoogleCloudRetailV2betaProduct(),
  buildGoogleCloudRetailV2betaProduct(),
];

void checkUnnamed79(core.List<api.GoogleCloudRetailV2betaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaProduct(o[0]);
  checkGoogleCloudRetailV2betaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaProductInlineSource = 0;
api.GoogleCloudRetailV2betaProductInlineSource
buildGoogleCloudRetailV2betaProductInlineSource() {
  final o = api.GoogleCloudRetailV2betaProductInlineSource();
  buildCounterGoogleCloudRetailV2betaProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2betaProductInlineSource < 3) {
    o.products = buildUnnamed79();
  }
  buildCounterGoogleCloudRetailV2betaProductInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2betaProductInlineSource(
  api.GoogleCloudRetailV2betaProductInlineSource o,
) {
  buildCounterGoogleCloudRetailV2betaProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2betaProductInlineSource < 3) {
    checkUnnamed79(o.products!);
  }
  buildCounterGoogleCloudRetailV2betaProductInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2betaProductInputConfig = 0;
api.GoogleCloudRetailV2betaProductInputConfig
buildGoogleCloudRetailV2betaProductInputConfig() {
  final o = api.GoogleCloudRetailV2betaProductInputConfig();
  buildCounterGoogleCloudRetailV2betaProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2betaProductInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2betaBigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2betaGcsSource();
    o.productInlineSource = buildGoogleCloudRetailV2betaProductInlineSource();
  }
  buildCounterGoogleCloudRetailV2betaProductInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaProductInputConfig(
  api.GoogleCloudRetailV2betaProductInputConfig o,
) {
  buildCounterGoogleCloudRetailV2betaProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2betaProductInputConfig < 3) {
    checkGoogleCloudRetailV2betaBigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2betaGcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2betaProductInlineSource(o.productInlineSource!);
  }
  buildCounterGoogleCloudRetailV2betaProductInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaProductLevelConfig = 0;
api.GoogleCloudRetailV2betaProductLevelConfig
buildGoogleCloudRetailV2betaProductLevelConfig() {
  final o = api.GoogleCloudRetailV2betaProductLevelConfig();
  buildCounterGoogleCloudRetailV2betaProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2betaProductLevelConfig < 3) {
    o.ingestionProductType = 'foo';
    o.merchantCenterProductIdField = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaProductLevelConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaProductLevelConfig(
  api.GoogleCloudRetailV2betaProductLevelConfig o,
) {
  buildCounterGoogleCloudRetailV2betaProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2betaProductLevelConfig < 3) {
    unittest.expect(o.ingestionProductType!, unittest.equals('foo'));
    unittest.expect(o.merchantCenterProductIdField!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaProductLevelConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaPromotion = 0;
api.GoogleCloudRetailV2betaPromotion buildGoogleCloudRetailV2betaPromotion() {
  final o = api.GoogleCloudRetailV2betaPromotion();
  buildCounterGoogleCloudRetailV2betaPromotion++;
  if (buildCounterGoogleCloudRetailV2betaPromotion < 3) {
    o.promotionId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaPromotion--;
  return o;
}

void checkGoogleCloudRetailV2betaPromotion(
  api.GoogleCloudRetailV2betaPromotion o,
) {
  buildCounterGoogleCloudRetailV2betaPromotion++;
  if (buildCounterGoogleCloudRetailV2betaPromotion < 3) {
    unittest.expect(o.promotionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaPromotion--;
}

core.int buildCounterGoogleCloudRetailV2betaPurchaseTransaction = 0;
api.GoogleCloudRetailV2betaPurchaseTransaction
buildGoogleCloudRetailV2betaPurchaseTransaction() {
  final o = api.GoogleCloudRetailV2betaPurchaseTransaction();
  buildCounterGoogleCloudRetailV2betaPurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2betaPurchaseTransaction < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.revenue = 42.0;
    o.tax = 42.0;
  }
  buildCounterGoogleCloudRetailV2betaPurchaseTransaction--;
  return o;
}

void checkGoogleCloudRetailV2betaPurchaseTransaction(
  api.GoogleCloudRetailV2betaPurchaseTransaction o,
) {
  buildCounterGoogleCloudRetailV2betaPurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2betaPurchaseTransaction < 3) {
    unittest.expect(o.cost!, unittest.equals(42.0));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.revenue!, unittest.equals(42.0));
    unittest.expect(o.tax!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRetailV2betaPurchaseTransaction--;
}

core.int buildCounterGoogleCloudRetailV2betaPurgeProductsRequest = 0;
api.GoogleCloudRetailV2betaPurgeProductsRequest
buildGoogleCloudRetailV2betaPurgeProductsRequest() {
  final o = api.GoogleCloudRetailV2betaPurgeProductsRequest();
  buildCounterGoogleCloudRetailV2betaPurgeProductsRequest++;
  if (buildCounterGoogleCloudRetailV2betaPurgeProductsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2betaPurgeProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaPurgeProductsRequest(
  api.GoogleCloudRetailV2betaPurgeProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaPurgeProductsRequest++;
  if (buildCounterGoogleCloudRetailV2betaPurgeProductsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaPurgeProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest = 0;
api.GoogleCloudRetailV2betaPurgeUserEventsRequest
buildGoogleCloudRetailV2betaPurgeUserEventsRequest() {
  final o = api.GoogleCloudRetailV2betaPurgeUserEventsRequest();
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaPurgeUserEventsRequest(
  api.GoogleCloudRetailV2betaPurgeUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsRequest--;
}

core.List<core.int> buildUnnamed80() => [42, 42];

void checkUnnamed80(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudRetailV2betaRating = 0;
api.GoogleCloudRetailV2betaRating buildGoogleCloudRetailV2betaRating() {
  final o = api.GoogleCloudRetailV2betaRating();
  buildCounterGoogleCloudRetailV2betaRating++;
  if (buildCounterGoogleCloudRetailV2betaRating < 3) {
    o.averageRating = 42.0;
    o.ratingCount = 42;
    o.ratingHistogram = buildUnnamed80();
  }
  buildCounterGoogleCloudRetailV2betaRating--;
  return o;
}

void checkGoogleCloudRetailV2betaRating(api.GoogleCloudRetailV2betaRating o) {
  buildCounterGoogleCloudRetailV2betaRating++;
  if (buildCounterGoogleCloudRetailV2betaRating < 3) {
    unittest.expect(o.averageRating!, unittest.equals(42.0));
    unittest.expect(o.ratingCount!, unittest.equals(42));
    checkUnnamed80(o.ratingHistogram!);
  }
  buildCounterGoogleCloudRetailV2betaRating--;
}

core.int buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest = 0;
api.GoogleCloudRetailV2betaRejoinUserEventsRequest
buildGoogleCloudRetailV2betaRejoinUserEventsRequest() {
  final o = api.GoogleCloudRetailV2betaRejoinUserEventsRequest();
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest < 3) {
    o.userEventRejoinScope = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaRejoinUserEventsRequest(
  api.GoogleCloudRetailV2betaRejoinUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest < 3) {
    unittest.expect(o.userEventRejoinScope!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2betaRemoveCatalogAttributeRequest
buildGoogleCloudRetailV2betaRemoveCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2betaRemoveCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest < 3) {
    o.key = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaRemoveCatalogAttributeRequest(
  api.GoogleCloudRetailV2betaRemoveCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRemoveCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaRemoveControlRequest = 0;
api.GoogleCloudRetailV2betaRemoveControlRequest
buildGoogleCloudRetailV2betaRemoveControlRequest() {
  final o = api.GoogleCloudRetailV2betaRemoveControlRequest();
  buildCounterGoogleCloudRetailV2betaRemoveControlRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveControlRequest < 3) {
    o.controlId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRemoveControlRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaRemoveControlRequest(
  api.GoogleCloudRetailV2betaRemoveControlRequest o,
) {
  buildCounterGoogleCloudRetailV2betaRemoveControlRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveControlRequest < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRemoveControlRequest--;
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest
buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed81();
    o.removeTime = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest(
  api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest o,
) {
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed81(o.placeIds!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest = 0;
api.GoogleCloudRetailV2betaRemoveLocalInventoriesRequest
buildGoogleCloudRetailV2betaRemoveLocalInventoriesRequest() {
  final o = api.GoogleCloudRetailV2betaRemoveLocalInventoriesRequest();
  buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed82();
    o.removeTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaRemoveLocalInventoriesRequest(
  api.GoogleCloudRetailV2betaRemoveLocalInventoriesRequest o,
) {
  buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed82(o.placeIds!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRemoveLocalInventoriesRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2betaReplaceCatalogAttributeRequest
buildGoogleCloudRetailV2betaReplaceCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2betaReplaceCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest < 3) {
    o.catalogAttribute = buildGoogleCloudRetailV2betaCatalogAttribute();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaReplaceCatalogAttributeRequest(
  api.GoogleCloudRetailV2betaReplaceCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest < 3) {
    checkGoogleCloudRetailV2betaCatalogAttribute(o.catalogAttribute!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaReplaceCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaResumeModelRequest = 0;
api.GoogleCloudRetailV2betaResumeModelRequest
buildGoogleCloudRetailV2betaResumeModelRequest() {
  final o = api.GoogleCloudRetailV2betaResumeModelRequest();
  buildCounterGoogleCloudRetailV2betaResumeModelRequest++;
  if (buildCounterGoogleCloudRetailV2betaResumeModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2betaResumeModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaResumeModelRequest(
  api.GoogleCloudRetailV2betaResumeModelRequest o,
) {
  buildCounterGoogleCloudRetailV2betaResumeModelRequest++;
  if (buildCounterGoogleCloudRetailV2betaResumeModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2betaResumeModelRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaRule = 0;
api.GoogleCloudRetailV2betaRule buildGoogleCloudRetailV2betaRule() {
  final o = api.GoogleCloudRetailV2betaRule();
  buildCounterGoogleCloudRetailV2betaRule++;
  if (buildCounterGoogleCloudRetailV2betaRule < 3) {
    o.boostAction = buildGoogleCloudRetailV2betaRuleBoostAction();
    o.condition = buildGoogleCloudRetailV2betaCondition();
    o.doNotAssociateAction =
        buildGoogleCloudRetailV2betaRuleDoNotAssociateAction();
    o.filterAction = buildGoogleCloudRetailV2betaRuleFilterAction();
    o.forceReturnFacetAction =
        buildGoogleCloudRetailV2betaRuleForceReturnFacetAction();
    o.ignoreAction = buildGoogleCloudRetailV2betaRuleIgnoreAction();
    o.onewaySynonymsAction =
        buildGoogleCloudRetailV2betaRuleOnewaySynonymsAction();
    o.pinAction = buildGoogleCloudRetailV2betaRulePinAction();
    o.redirectAction = buildGoogleCloudRetailV2betaRuleRedirectAction();
    o.removeFacetAction = buildGoogleCloudRetailV2betaRuleRemoveFacetAction();
    o.replacementAction = buildGoogleCloudRetailV2betaRuleReplacementAction();
    o.twowaySynonymsAction =
        buildGoogleCloudRetailV2betaRuleTwowaySynonymsAction();
  }
  buildCounterGoogleCloudRetailV2betaRule--;
  return o;
}

void checkGoogleCloudRetailV2betaRule(api.GoogleCloudRetailV2betaRule o) {
  buildCounterGoogleCloudRetailV2betaRule++;
  if (buildCounterGoogleCloudRetailV2betaRule < 3) {
    checkGoogleCloudRetailV2betaRuleBoostAction(o.boostAction!);
    checkGoogleCloudRetailV2betaCondition(o.condition!);
    checkGoogleCloudRetailV2betaRuleDoNotAssociateAction(
      o.doNotAssociateAction!,
    );
    checkGoogleCloudRetailV2betaRuleFilterAction(o.filterAction!);
    checkGoogleCloudRetailV2betaRuleForceReturnFacetAction(
      o.forceReturnFacetAction!,
    );
    checkGoogleCloudRetailV2betaRuleIgnoreAction(o.ignoreAction!);
    checkGoogleCloudRetailV2betaRuleOnewaySynonymsAction(
      o.onewaySynonymsAction!,
    );
    checkGoogleCloudRetailV2betaRulePinAction(o.pinAction!);
    checkGoogleCloudRetailV2betaRuleRedirectAction(o.redirectAction!);
    checkGoogleCloudRetailV2betaRuleRemoveFacetAction(o.removeFacetAction!);
    checkGoogleCloudRetailV2betaRuleReplacementAction(o.replacementAction!);
    checkGoogleCloudRetailV2betaRuleTwowaySynonymsAction(
      o.twowaySynonymsAction!,
    );
  }
  buildCounterGoogleCloudRetailV2betaRule--;
}

core.int buildCounterGoogleCloudRetailV2betaRuleBoostAction = 0;
api.GoogleCloudRetailV2betaRuleBoostAction
buildGoogleCloudRetailV2betaRuleBoostAction() {
  final o = api.GoogleCloudRetailV2betaRuleBoostAction();
  buildCounterGoogleCloudRetailV2betaRuleBoostAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleBoostAction < 3) {
    o.boost = 42.0;
    o.productsFilter = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRuleBoostAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleBoostAction(
  api.GoogleCloudRetailV2betaRuleBoostAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleBoostAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleBoostAction < 3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    unittest.expect(o.productsFilter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRuleBoostAction--;
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction = 0;
api.GoogleCloudRetailV2betaRuleDoNotAssociateAction
buildGoogleCloudRetailV2betaRuleDoNotAssociateAction() {
  final o = api.GoogleCloudRetailV2betaRuleDoNotAssociateAction();
  buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction < 3) {
    o.doNotAssociateTerms = buildUnnamed83();
    o.queryTerms = buildUnnamed84();
    o.terms = buildUnnamed85();
  }
  buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleDoNotAssociateAction(
  api.GoogleCloudRetailV2betaRuleDoNotAssociateAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction < 3) {
    checkUnnamed83(o.doNotAssociateTerms!);
    checkUnnamed84(o.queryTerms!);
    checkUnnamed85(o.terms!);
  }
  buildCounterGoogleCloudRetailV2betaRuleDoNotAssociateAction--;
}

core.int buildCounterGoogleCloudRetailV2betaRuleFilterAction = 0;
api.GoogleCloudRetailV2betaRuleFilterAction
buildGoogleCloudRetailV2betaRuleFilterAction() {
  final o = api.GoogleCloudRetailV2betaRuleFilterAction();
  buildCounterGoogleCloudRetailV2betaRuleFilterAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleFilterAction < 3) {
    o.filter = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRuleFilterAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleFilterAction(
  api.GoogleCloudRetailV2betaRuleFilterAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleFilterAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleFilterAction < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRuleFilterAction--;
}

core.List<
  api.GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment
>
buildUnnamed86() => [
  buildGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment(),
  buildGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment(),
];

void checkUnnamed86(
  core.List<
    api.GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment(
    o[0],
  );
  checkGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment(
    o[1],
  );
}

core.int buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction = 0;
api.GoogleCloudRetailV2betaRuleForceReturnFacetAction
buildGoogleCloudRetailV2betaRuleForceReturnFacetAction() {
  final o = api.GoogleCloudRetailV2betaRuleForceReturnFacetAction();
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction < 3) {
    o.facetPositionAdjustments = buildUnnamed86();
  }
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleForceReturnFacetAction(
  api.GoogleCloudRetailV2betaRuleForceReturnFacetAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction < 3) {
    checkUnnamed86(o.facetPositionAdjustments!);
  }
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetAction--;
}

core.int
buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment =
    0;
api.GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment
buildGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment() {
  final o =
      api.GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment();
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment++;
  if (buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment <
      3) {
    o.attributeName = 'foo';
    o.position = 42;
  }
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment--;
  return o;
}

void
checkGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment(
  api.GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment
  o,
) {
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment++;
  if (buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment <
      3) {
    unittest.expect(o.attributeName!, unittest.equals('foo'));
    unittest.expect(o.position!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment--;
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRuleIgnoreAction = 0;
api.GoogleCloudRetailV2betaRuleIgnoreAction
buildGoogleCloudRetailV2betaRuleIgnoreAction() {
  final o = api.GoogleCloudRetailV2betaRuleIgnoreAction();
  buildCounterGoogleCloudRetailV2betaRuleIgnoreAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleIgnoreAction < 3) {
    o.ignoreTerms = buildUnnamed87();
  }
  buildCounterGoogleCloudRetailV2betaRuleIgnoreAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleIgnoreAction(
  api.GoogleCloudRetailV2betaRuleIgnoreAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleIgnoreAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleIgnoreAction < 3) {
    checkUnnamed87(o.ignoreTerms!);
  }
  buildCounterGoogleCloudRetailV2betaRuleIgnoreAction--;
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction = 0;
api.GoogleCloudRetailV2betaRuleOnewaySynonymsAction
buildGoogleCloudRetailV2betaRuleOnewaySynonymsAction() {
  final o = api.GoogleCloudRetailV2betaRuleOnewaySynonymsAction();
  buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction < 3) {
    o.onewayTerms = buildUnnamed88();
    o.queryTerms = buildUnnamed89();
    o.synonyms = buildUnnamed90();
  }
  buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleOnewaySynonymsAction(
  api.GoogleCloudRetailV2betaRuleOnewaySynonymsAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction < 3) {
    checkUnnamed88(o.onewayTerms!);
    checkUnnamed89(o.queryTerms!);
    checkUnnamed90(o.synonyms!);
  }
  buildCounterGoogleCloudRetailV2betaRuleOnewaySynonymsAction--;
}

core.Map<core.String, core.String> buildUnnamed91() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed91(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRulePinAction = 0;
api.GoogleCloudRetailV2betaRulePinAction
buildGoogleCloudRetailV2betaRulePinAction() {
  final o = api.GoogleCloudRetailV2betaRulePinAction();
  buildCounterGoogleCloudRetailV2betaRulePinAction++;
  if (buildCounterGoogleCloudRetailV2betaRulePinAction < 3) {
    o.pinMap = buildUnnamed91();
  }
  buildCounterGoogleCloudRetailV2betaRulePinAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRulePinAction(
  api.GoogleCloudRetailV2betaRulePinAction o,
) {
  buildCounterGoogleCloudRetailV2betaRulePinAction++;
  if (buildCounterGoogleCloudRetailV2betaRulePinAction < 3) {
    checkUnnamed91(o.pinMap!);
  }
  buildCounterGoogleCloudRetailV2betaRulePinAction--;
}

core.int buildCounterGoogleCloudRetailV2betaRuleRedirectAction = 0;
api.GoogleCloudRetailV2betaRuleRedirectAction
buildGoogleCloudRetailV2betaRuleRedirectAction() {
  final o = api.GoogleCloudRetailV2betaRuleRedirectAction();
  buildCounterGoogleCloudRetailV2betaRuleRedirectAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleRedirectAction < 3) {
    o.redirectUri = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRuleRedirectAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleRedirectAction(
  api.GoogleCloudRetailV2betaRuleRedirectAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleRedirectAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleRedirectAction < 3) {
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRuleRedirectAction--;
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction = 0;
api.GoogleCloudRetailV2betaRuleRemoveFacetAction
buildGoogleCloudRetailV2betaRuleRemoveFacetAction() {
  final o = api.GoogleCloudRetailV2betaRuleRemoveFacetAction();
  buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction < 3) {
    o.attributeNames = buildUnnamed92();
  }
  buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleRemoveFacetAction(
  api.GoogleCloudRetailV2betaRuleRemoveFacetAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction < 3) {
    checkUnnamed92(o.attributeNames!);
  }
  buildCounterGoogleCloudRetailV2betaRuleRemoveFacetAction--;
}

core.List<core.String> buildUnnamed93() => ['foo', 'foo'];

void checkUnnamed93(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRuleReplacementAction = 0;
api.GoogleCloudRetailV2betaRuleReplacementAction
buildGoogleCloudRetailV2betaRuleReplacementAction() {
  final o = api.GoogleCloudRetailV2betaRuleReplacementAction();
  buildCounterGoogleCloudRetailV2betaRuleReplacementAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleReplacementAction < 3) {
    o.queryTerms = buildUnnamed93();
    o.replacementTerm = 'foo';
    o.term = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRuleReplacementAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleReplacementAction(
  api.GoogleCloudRetailV2betaRuleReplacementAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleReplacementAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleReplacementAction < 3) {
    checkUnnamed93(o.queryTerms!);
    unittest.expect(o.replacementTerm!, unittest.equals('foo'));
    unittest.expect(o.term!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaRuleReplacementAction--;
}

core.List<core.String> buildUnnamed94() => ['foo', 'foo'];

void checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction = 0;
api.GoogleCloudRetailV2betaRuleTwowaySynonymsAction
buildGoogleCloudRetailV2betaRuleTwowaySynonymsAction() {
  final o = api.GoogleCloudRetailV2betaRuleTwowaySynonymsAction();
  buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction < 3) {
    o.synonyms = buildUnnamed94();
  }
  buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction--;
  return o;
}

void checkGoogleCloudRetailV2betaRuleTwowaySynonymsAction(
  api.GoogleCloudRetailV2betaRuleTwowaySynonymsAction o,
) {
  buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction < 3) {
    checkUnnamed94(o.synonyms!);
  }
  buildCounterGoogleCloudRetailV2betaRuleTwowaySynonymsAction--;
}

core.List<api.GoogleCloudRetailV2betaSearchRequestFacetSpec> buildUnnamed95() =>
    [
      buildGoogleCloudRetailV2betaSearchRequestFacetSpec(),
      buildGoogleCloudRetailV2betaSearchRequestFacetSpec(),
    ];

void checkUnnamed95(
  core.List<api.GoogleCloudRetailV2betaSearchRequestFacetSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchRequestFacetSpec(o[0]);
  checkGoogleCloudRetailV2betaSearchRequestFacetSpec(o[1]);
}

core.Map<core.String, core.String> buildUnnamed96() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed96(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRetailV2betaStringList> buildUnnamed98() =>
    {
      'x': buildGoogleCloudRetailV2betaStringList(),
      'y': buildGoogleCloudRetailV2betaStringList(),
    };

void checkUnnamed98(
  core.Map<core.String, api.GoogleCloudRetailV2betaStringList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaStringList(o['x']!);
  checkGoogleCloudRetailV2betaStringList(o['y']!);
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequest = 0;
api.GoogleCloudRetailV2betaSearchRequest
buildGoogleCloudRetailV2betaSearchRequest() {
  final o = api.GoogleCloudRetailV2betaSearchRequest();
  buildCounterGoogleCloudRetailV2betaSearchRequest++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequest < 3) {
    o.boostSpec = buildGoogleCloudRetailV2betaSearchRequestBoostSpec();
    o.branch = 'foo';
    o.canonicalFilter = 'foo';
    o.conversationalSearchSpec =
        buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec();
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec();
    o.entity = 'foo';
    o.facetSpecs = buildUnnamed95();
    o.filter = 'foo';
    o.labels = buildUnnamed96();
    o.languageCode = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed97();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.personalizationSpec =
        buildGoogleCloudRetailV2betaSearchRequestPersonalizationSpec();
    o.placeId = 'foo';
    o.query = 'foo';
    o.queryExpansionSpec =
        buildGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec();
    o.regionCode = 'foo';
    o.searchMode = 'foo';
    o.spellCorrectionSpec =
        buildGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec();
    o.tileNavigationSpec =
        buildGoogleCloudRetailV2betaSearchRequestTileNavigationSpec();
    o.userAttributes = buildUnnamed98();
    o.userInfo = buildGoogleCloudRetailV2betaUserInfo();
    o.variantRollupKeys = buildUnnamed99();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequest(
  api.GoogleCloudRetailV2betaSearchRequest o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequest++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequest < 3) {
    checkGoogleCloudRetailV2betaSearchRequestBoostSpec(o.boostSpec!);
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.canonicalFilter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec(
      o.conversationalSearchSpec!,
    );
    checkGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec(
      o.dynamicFacetSpec!,
    );
    unittest.expect(o.entity!, unittest.equals('foo'));
    checkUnnamed95(o.facetSpecs!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed96(o.labels!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals(42));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed97(o.pageCategories!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaSearchRequestPersonalizationSpec(
      o.personalizationSpec!,
    );
    unittest.expect(o.placeId!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec(
      o.queryExpansionSpec!,
    );
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.searchMode!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec(
      o.spellCorrectionSpec!,
    );
    checkGoogleCloudRetailV2betaSearchRequestTileNavigationSpec(
      o.tileNavigationSpec!,
    );
    checkUnnamed98(o.userAttributes!);
    checkGoogleCloudRetailV2betaUserInfo(o.userInfo!);
    checkUnnamed99(o.variantRollupKeys!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequest--;
}

core.List<api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>
buildUnnamed100() => [
  buildGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(),
  buildGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(),
];

void checkUnnamed100(
  core.List<api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestBoostSpec
buildGoogleCloudRetailV2betaSearchRequestBoostSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestBoostSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed100();
    o.skipBoostSpecValidation = true;
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestBoostSpec(
  api.GoogleCloudRetailV2betaSearchRequestBoostSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec < 3) {
    checkUnnamed100(o.conditionBoostSpecs!);
    unittest.expect(o.skipBoostSpecValidation!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpec--;
}

core.int
buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec
buildGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec() {
  final o =
      api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec <
      3) {
    o.boost = 42.0;
    o.condition = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(
  api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec <
      3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec--;
}

core.int
buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec
buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec <
      3) {
    o.conversationId = 'foo';
    o.followupConversationRequested = true;
    o.userAnswer =
        buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer();
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec(
  api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec <
      3) {
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.followupConversationRequested!, unittest.isTrue);
    checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer(
      o.userAnswer!,
    );
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec--;
}

core.int
buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer =
    0;
api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer
buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer() {
  final o =
      api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer();
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer <
      3) {
    o.selectedAnswer =
        buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
    o.textAnswer = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer(
  api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer <
      3) {
    checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
      o.selectedAnswer!,
    );
    unittest.expect(o.textAnswer!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer--;
}

core.List<api.GoogleCloudRetailV2betaProductAttributeValue> buildUnnamed101() =>
    [
      buildGoogleCloudRetailV2betaProductAttributeValue(),
      buildGoogleCloudRetailV2betaProductAttributeValue(),
    ];

void checkUnnamed101(
  core.List<api.GoogleCloudRetailV2betaProductAttributeValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaProductAttributeValue(o[0]);
  checkGoogleCloudRetailV2betaProductAttributeValue(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer =
    0;
api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer() {
  final o =
      api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2betaProductAttributeValue();
    o.productAttributeValues = buildUnnamed101();
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
  api.GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer <
      3) {
    checkGoogleCloudRetailV2betaProductAttributeValue(o.productAttributeValue!);
    checkUnnamed101(o.productAttributeValues!);
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer--;
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec
buildGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec(
  api.GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec--;
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestFacetSpec
buildGoogleCloudRetailV2betaSearchRequestFacetSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestFacetSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec < 3) {
    o.enableDynamicPosition = true;
    o.excludedFilterKeys = buildUnnamed102();
    o.facetKey = buildGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey();
    o.limit = 42;
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestFacetSpec(
  api.GoogleCloudRetailV2betaSearchRequestFacetSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec < 3) {
    unittest.expect(o.enableDynamicPosition!, unittest.isTrue);
    checkUnnamed102(o.excludedFilterKeys!);
    checkGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey(o.facetKey!);
    unittest.expect(o.limit!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpec--;
}

core.List<core.String> buildUnnamed103() => ['foo', 'foo'];

void checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaInterval> buildUnnamed104() => [
  buildGoogleCloudRetailV2betaInterval(),
  buildGoogleCloudRetailV2betaInterval(),
];

void checkUnnamed104(core.List<api.GoogleCloudRetailV2betaInterval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaInterval(o[0]);
  checkGoogleCloudRetailV2betaInterval(o[1]);
}

core.List<core.String> buildUnnamed105() => ['foo', 'foo'];

void checkUnnamed105(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed106() => ['foo', 'foo'];

void checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey = 0;
api.GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey
buildGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey() {
  final o = api.GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey();
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey < 3) {
    o.caseInsensitive = true;
    o.contains = buildUnnamed103();
    o.intervals = buildUnnamed104();
    o.key = 'foo';
    o.orderBy = 'foo';
    o.prefixes = buildUnnamed105();
    o.query = 'foo';
    o.restrictedValues = buildUnnamed106();
    o.returnMinMax = true;
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey(
  api.GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey < 3) {
    unittest.expect(o.caseInsensitive!, unittest.isTrue);
    checkUnnamed103(o.contains!);
    checkUnnamed104(o.intervals!);
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed105(o.prefixes!);
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed106(o.restrictedValues!);
    unittest.expect(o.returnMinMax!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey--;
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec =
    0;
api.GoogleCloudRetailV2betaSearchRequestPersonalizationSpec
buildGoogleCloudRetailV2betaSearchRequestPersonalizationSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestPersonalizationSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestPersonalizationSpec(
  api.GoogleCloudRetailV2betaSearchRequestPersonalizationSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestPersonalizationSpec--;
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec
buildGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec < 3) {
    o.condition = 'foo';
    o.pinUnexpandedResults = true;
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec(
  api.GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.pinUnexpandedResults!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec--;
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec =
    0;
api.GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec
buildGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec(
  api.GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec--;
}

core.List<api.GoogleCloudRetailV2betaTile> buildUnnamed107() => [
  buildGoogleCloudRetailV2betaTile(),
  buildGoogleCloudRetailV2betaTile(),
];

void checkUnnamed107(core.List<api.GoogleCloudRetailV2betaTile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaTile(o[0]);
  checkGoogleCloudRetailV2betaTile(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec = 0;
api.GoogleCloudRetailV2betaSearchRequestTileNavigationSpec
buildGoogleCloudRetailV2betaSearchRequestTileNavigationSpec() {
  final o = api.GoogleCloudRetailV2betaSearchRequestTileNavigationSpec();
  buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec < 3) {
    o.appliedTiles = buildUnnamed107();
    o.tileNavigationRequested = true;
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchRequestTileNavigationSpec(
  api.GoogleCloudRetailV2betaSearchRequestTileNavigationSpec o,
) {
  buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec++;
  if (buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec < 3) {
    checkUnnamed107(o.appliedTiles!);
    unittest.expect(o.tileNavigationRequested!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2betaSearchRequestTileNavigationSpec--;
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaExperimentInfo> buildUnnamed109() => [
  buildGoogleCloudRetailV2betaExperimentInfo(),
  buildGoogleCloudRetailV2betaExperimentInfo(),
];

void checkUnnamed109(core.List<api.GoogleCloudRetailV2betaExperimentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaExperimentInfo(o[0]);
  checkGoogleCloudRetailV2betaExperimentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2betaSearchResponseFacet> buildUnnamed110() => [
  buildGoogleCloudRetailV2betaSearchResponseFacet(),
  buildGoogleCloudRetailV2betaSearchResponseFacet(),
];

void checkUnnamed110(
  core.List<api.GoogleCloudRetailV2betaSearchResponseFacet> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchResponseFacet(o[0]);
  checkGoogleCloudRetailV2betaSearchResponseFacet(o[1]);
}

core.List<api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>
buildUnnamed111() => [
  buildGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(),
  buildGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(),
];

void checkUnnamed111(
  core.List<api.GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.List<api.GoogleCloudRetailV2betaSearchResponseSearchResult>
buildUnnamed112() => [
  buildGoogleCloudRetailV2betaSearchResponseSearchResult(),
  buildGoogleCloudRetailV2betaSearchResponseSearchResult(),
];

void checkUnnamed112(
  core.List<api.GoogleCloudRetailV2betaSearchResponseSearchResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchResponseSearchResult(o[0]);
  checkGoogleCloudRetailV2betaSearchResponseSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaSearchResponse = 0;
api.GoogleCloudRetailV2betaSearchResponse
buildGoogleCloudRetailV2betaSearchResponse() {
  final o = api.GoogleCloudRetailV2betaSearchResponse();
  buildCounterGoogleCloudRetailV2betaSearchResponse++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponse < 3) {
    o.appliedControls = buildUnnamed108();
    o.attributionToken = 'foo';
    o.conversationalSearchResult =
        buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResult();
    o.correctedQuery = 'foo';
    o.experimentInfo = buildUnnamed109();
    o.facets = buildUnnamed110();
    o.invalidConditionBoostSpecs = buildUnnamed111();
    o.nextPageToken = 'foo';
    o.pinControlMetadata = buildGoogleCloudRetailV2betaPinControlMetadata();
    o.queryExpansionInfo =
        buildGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo();
    o.redirectUri = 'foo';
    o.results = buildUnnamed112();
    o.tileNavigationResult =
        buildGoogleCloudRetailV2betaSearchResponseTileNavigationResult();
    o.totalSize = 42;
  }
  buildCounterGoogleCloudRetailV2betaSearchResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponse(
  api.GoogleCloudRetailV2betaSearchResponse o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponse++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponse < 3) {
    checkUnnamed108(o.appliedControls!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResult(
      o.conversationalSearchResult!,
    );
    unittest.expect(o.correctedQuery!, unittest.equals('foo'));
    checkUnnamed109(o.experimentInfo!);
    checkUnnamed110(o.facets!);
    checkUnnamed111(o.invalidConditionBoostSpecs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaPinControlMetadata(o.pinControlMetadata!);
    checkGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo(
      o.queryExpansionInfo!,
    );
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
    checkUnnamed112(o.results!);
    checkGoogleCloudRetailV2betaSearchResponseTileNavigationResult(
      o.tileNavigationResult!,
    );
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2betaSearchResponse--;
}

core.List<
  api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter
>
buildUnnamed113() => [
  buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(),
  buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(),
];

void checkUnnamed113(
  core.List<
    api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(
    o[0],
  );
  checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(
    o[1],
  );
}

core.List<
  api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer
>
buildUnnamed114() => [
  buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer(),
  buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer(),
];

void checkUnnamed114(
  core.List<
    api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer(
    o[0],
  );
  checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer(
    o[1],
  );
}

core.int
buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult = 0;
api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResult
buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResult() {
  final o =
      api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResult();
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult <
      3) {
    o.additionalFilter =
        buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter();
    o.additionalFilters = buildUnnamed113();
    o.conversationId = 'foo';
    o.followupQuestion = 'foo';
    o.refinedQuery = 'foo';
    o.suggestedAnswers = buildUnnamed114();
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResult(
  api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResult o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult <
      3) {
    checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(
      o.additionalFilter!,
    );
    checkUnnamed113(o.additionalFilters!);
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.followupQuestion!, unittest.equals('foo'));
    unittest.expect(o.refinedQuery!, unittest.equals('foo'));
    checkUnnamed114(o.suggestedAnswers!);
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResult--;
}

core.int
buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter =
    0;
api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter
buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter() {
  final o =
      api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter();
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2betaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter--;
  return o;
}

void
checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(
  api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter
  o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter <
      3) {
    checkGoogleCloudRetailV2betaProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter--;
}

core.int
buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer =
    0;
api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer
buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer() {
  final o =
      api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer();
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2betaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer(
  api.GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer <
      3) {
    checkGoogleCloudRetailV2betaProductAttributeValue(o.productAttributeValue!);
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer--;
}

core.List<api.GoogleCloudRetailV2betaSearchResponseFacetFacetValue>
buildUnnamed115() => [
  buildGoogleCloudRetailV2betaSearchResponseFacetFacetValue(),
  buildGoogleCloudRetailV2betaSearchResponseFacetFacetValue(),
];

void checkUnnamed115(
  core.List<api.GoogleCloudRetailV2betaSearchResponseFacetFacetValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaSearchResponseFacetFacetValue(o[0]);
  checkGoogleCloudRetailV2betaSearchResponseFacetFacetValue(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaSearchResponseFacet = 0;
api.GoogleCloudRetailV2betaSearchResponseFacet
buildGoogleCloudRetailV2betaSearchResponseFacet() {
  final o = api.GoogleCloudRetailV2betaSearchResponseFacet();
  buildCounterGoogleCloudRetailV2betaSearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseFacet < 3) {
    o.dynamicFacet = true;
    o.key = 'foo';
    o.values = buildUnnamed115();
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseFacet--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponseFacet(
  api.GoogleCloudRetailV2betaSearchResponseFacet o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseFacet < 3) {
    unittest.expect(o.dynamicFacet!, unittest.isTrue);
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed115(o.values!);
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseFacet--;
}

core.int buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue = 0;
api.GoogleCloudRetailV2betaSearchResponseFacetFacetValue
buildGoogleCloudRetailV2betaSearchResponseFacetFacetValue() {
  final o = api.GoogleCloudRetailV2betaSearchResponseFacetFacetValue();
  buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue < 3) {
    o.count = 'foo';
    o.interval = buildGoogleCloudRetailV2betaInterval();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponseFacetFacetValue(
  api.GoogleCloudRetailV2betaSearchResponseFacetFacetValue o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaInterval(o.interval!);
    unittest.expect(o.maxValue!, unittest.equals(42.0));
    unittest.expect(o.minValue!, unittest.equals(42.0));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseFacetFacetValue--;
}

core.int buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo =
    0;
api.GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo
buildGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo() {
  final o = api.GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo();
  buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo < 3) {
    o.expandedQuery = true;
    o.pinnedResultCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo(
  api.GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo < 3) {
    unittest.expect(o.expandedQuery!, unittest.isTrue);
    unittest.expect(o.pinnedResultCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo--;
}

core.Map<core.String, core.String> buildUnnamed116() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed116(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRetailV2betaDoubleList>
buildUnnamed117() => {
  'x': buildGoogleCloudRetailV2betaDoubleList(),
  'y': buildGoogleCloudRetailV2betaDoubleList(),
};

void checkUnnamed117(
  core.Map<core.String, api.GoogleCloudRetailV2betaDoubleList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaDoubleList(o['x']!);
  checkGoogleCloudRetailV2betaDoubleList(o['y']!);
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed119() => {
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

void checkUnnamed119(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult = 0;
api.GoogleCloudRetailV2betaSearchResponseSearchResult
buildGoogleCloudRetailV2betaSearchResponseSearchResult() {
  final o = api.GoogleCloudRetailV2betaSearchResponseSearchResult();
  buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult < 3) {
    o.id = 'foo';
    o.matchingVariantCount = 42;
    o.matchingVariantFields = buildUnnamed116();
    o.modelScores = buildUnnamed117();
    o.personalLabels = buildUnnamed118();
    o.product = buildGoogleCloudRetailV2betaProduct();
    o.variantRollupValues = buildUnnamed119();
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponseSearchResult(
  api.GoogleCloudRetailV2betaSearchResponseSearchResult o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.matchingVariantCount!, unittest.equals(42));
    checkUnnamed116(o.matchingVariantFields!);
    checkUnnamed117(o.modelScores!);
    checkUnnamed118(o.personalLabels!);
    checkGoogleCloudRetailV2betaProduct(o.product!);
    checkUnnamed119(o.variantRollupValues!);
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseSearchResult--;
}

core.List<api.GoogleCloudRetailV2betaTile> buildUnnamed120() => [
  buildGoogleCloudRetailV2betaTile(),
  buildGoogleCloudRetailV2betaTile(),
];

void checkUnnamed120(core.List<api.GoogleCloudRetailV2betaTile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaTile(o[0]);
  checkGoogleCloudRetailV2betaTile(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult =
    0;
api.GoogleCloudRetailV2betaSearchResponseTileNavigationResult
buildGoogleCloudRetailV2betaSearchResponseTileNavigationResult() {
  final o = api.GoogleCloudRetailV2betaSearchResponseTileNavigationResult();
  buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult <
      3) {
    o.tiles = buildUnnamed120();
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult--;
  return o;
}

void checkGoogleCloudRetailV2betaSearchResponseTileNavigationResult(
  api.GoogleCloudRetailV2betaSearchResponseTileNavigationResult o,
) {
  buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult++;
  if (buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult <
      3) {
    checkUnnamed120(o.tiles!);
  }
  buildCounterGoogleCloudRetailV2betaSearchResponseTileNavigationResult--;
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

core.List<core.String> buildUnnamed129() => ['foo', 'foo'];

void checkUnnamed129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed130() => ['foo', 'foo'];

void checkUnnamed130(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaServingConfig = 0;
api.GoogleCloudRetailV2betaServingConfig
buildGoogleCloudRetailV2betaServingConfig() {
  final o = api.GoogleCloudRetailV2betaServingConfig();
  buildCounterGoogleCloudRetailV2betaServingConfig++;
  if (buildCounterGoogleCloudRetailV2betaServingConfig < 3) {
    o.boostControlIds = buildUnnamed121();
    o.displayName = 'foo';
    o.diversityLevel = 'foo';
    o.diversityType = 'foo';
    o.doNotAssociateControlIds = buildUnnamed122();
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec();
    o.enableCategoryFilterLevel = 'foo';
    o.facetControlIds = buildUnnamed123();
    o.filterControlIds = buildUnnamed124();
    o.ignoreControlIds = buildUnnamed125();
    o.ignoreRecsDenylist = true;
    o.modelId = 'foo';
    o.name = 'foo';
    o.onewaySynonymsControlIds = buildUnnamed126();
    o.personalizationSpec =
        buildGoogleCloudRetailV2betaSearchRequestPersonalizationSpec();
    o.priceRerankingLevel = 'foo';
    o.redirectControlIds = buildUnnamed127();
    o.replacementControlIds = buildUnnamed128();
    o.solutionTypes = buildUnnamed129();
    o.twowaySynonymsControlIds = buildUnnamed130();
  }
  buildCounterGoogleCloudRetailV2betaServingConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaServingConfig(
  api.GoogleCloudRetailV2betaServingConfig o,
) {
  buildCounterGoogleCloudRetailV2betaServingConfig++;
  if (buildCounterGoogleCloudRetailV2betaServingConfig < 3) {
    checkUnnamed121(o.boostControlIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.diversityLevel!, unittest.equals('foo'));
    unittest.expect(o.diversityType!, unittest.equals('foo'));
    checkUnnamed122(o.doNotAssociateControlIds!);
    checkGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec(
      o.dynamicFacetSpec!,
    );
    unittest.expect(o.enableCategoryFilterLevel!, unittest.equals('foo'));
    checkUnnamed123(o.facetControlIds!);
    checkUnnamed124(o.filterControlIds!);
    checkUnnamed125(o.ignoreControlIds!);
    unittest.expect(o.ignoreRecsDenylist!, unittest.isTrue);
    unittest.expect(o.modelId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed126(o.onewaySynonymsControlIds!);
    checkGoogleCloudRetailV2betaSearchRequestPersonalizationSpec(
      o.personalizationSpec!,
    );
    unittest.expect(o.priceRerankingLevel!, unittest.equals('foo'));
    checkUnnamed127(o.redirectControlIds!);
    checkUnnamed128(o.replacementControlIds!);
    checkUnnamed129(o.solutionTypes!);
    checkUnnamed130(o.twowaySynonymsControlIds!);
  }
  buildCounterGoogleCloudRetailV2betaServingConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest = 0;
api.GoogleCloudRetailV2betaSetDefaultBranchRequest
buildGoogleCloudRetailV2betaSetDefaultBranchRequest() {
  final o = api.GoogleCloudRetailV2betaSetDefaultBranchRequest();
  buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest < 3) {
    o.branchId = 'foo';
    o.force = true;
    o.note = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaSetDefaultBranchRequest(
  api.GoogleCloudRetailV2betaSetDefaultBranchRequest o,
) {
  buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest < 3) {
    unittest.expect(o.branchId!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.note!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSetDefaultBranchRequest--;
}

core.int buildCounterGoogleCloudRetailV2betaSetInventoryRequest = 0;
api.GoogleCloudRetailV2betaSetInventoryRequest
buildGoogleCloudRetailV2betaSetInventoryRequest() {
  final o = api.GoogleCloudRetailV2betaSetInventoryRequest();
  buildCounterGoogleCloudRetailV2betaSetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2betaSetInventoryRequest < 3) {
    o.allowMissing = true;
    o.inventory = buildGoogleCloudRetailV2betaProduct();
    o.setMask = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaSetInventoryRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaSetInventoryRequest(
  api.GoogleCloudRetailV2betaSetInventoryRequest o,
) {
  buildCounterGoogleCloudRetailV2betaSetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2betaSetInventoryRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkGoogleCloudRetailV2betaProduct(o.inventory!);
    unittest.expect(o.setMask!, unittest.equals('foo'));
    unittest.expect(o.setTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaSetInventoryRequest--;
}

core.List<core.String> buildUnnamed131() => ['foo', 'foo'];

void checkUnnamed131(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2betaStringList = 0;
api.GoogleCloudRetailV2betaStringList buildGoogleCloudRetailV2betaStringList() {
  final o = api.GoogleCloudRetailV2betaStringList();
  buildCounterGoogleCloudRetailV2betaStringList++;
  if (buildCounterGoogleCloudRetailV2betaStringList < 3) {
    o.values = buildUnnamed131();
  }
  buildCounterGoogleCloudRetailV2betaStringList--;
  return o;
}

void checkGoogleCloudRetailV2betaStringList(
  api.GoogleCloudRetailV2betaStringList o,
) {
  buildCounterGoogleCloudRetailV2betaStringList++;
  if (buildCounterGoogleCloudRetailV2betaStringList < 3) {
    checkUnnamed131(o.values!);
  }
  buildCounterGoogleCloudRetailV2betaStringList--;
}

core.int buildCounterGoogleCloudRetailV2betaTile = 0;
api.GoogleCloudRetailV2betaTile buildGoogleCloudRetailV2betaTile() {
  final o = api.GoogleCloudRetailV2betaTile();
  buildCounterGoogleCloudRetailV2betaTile++;
  if (buildCounterGoogleCloudRetailV2betaTile < 3) {
    o.productAttributeInterval =
        buildGoogleCloudRetailV2betaProductAttributeInterval();
    o.productAttributeValue =
        buildGoogleCloudRetailV2betaProductAttributeValue();
    o.representativeProductId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaTile--;
  return o;
}

void checkGoogleCloudRetailV2betaTile(api.GoogleCloudRetailV2betaTile o) {
  buildCounterGoogleCloudRetailV2betaTile++;
  if (buildCounterGoogleCloudRetailV2betaTile < 3) {
    checkGoogleCloudRetailV2betaProductAttributeInterval(
      o.productAttributeInterval!,
    );
    checkGoogleCloudRetailV2betaProductAttributeValue(o.productAttributeValue!);
    unittest.expect(o.representativeProductId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaTile--;
}

core.int buildCounterGoogleCloudRetailV2betaTuneModelRequest = 0;
api.GoogleCloudRetailV2betaTuneModelRequest
buildGoogleCloudRetailV2betaTuneModelRequest() {
  final o = api.GoogleCloudRetailV2betaTuneModelRequest();
  buildCounterGoogleCloudRetailV2betaTuneModelRequest++;
  if (buildCounterGoogleCloudRetailV2betaTuneModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2betaTuneModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaTuneModelRequest(
  api.GoogleCloudRetailV2betaTuneModelRequest o,
) {
  buildCounterGoogleCloudRetailV2betaTuneModelRequest++;
  if (buildCounterGoogleCloudRetailV2betaTuneModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2betaTuneModelRequest--;
}

core.int
buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest = 0;
api.GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest
buildGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest() {
  final o = api.GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest();
  buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest++;
  if (buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest <
      3) {
    o.generativeQuestionConfig =
        buildGoogleCloudRetailV2betaGenerativeQuestionConfig();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest--;
  return o;
}

void checkGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest(
  api.GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest o,
) {
  buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest++;
  if (buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest <
      3) {
    checkGoogleCloudRetailV2betaGenerativeQuestionConfig(
      o.generativeQuestionConfig!,
    );
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute>
buildUnnamed132() => {
  'x': buildGoogleCloudRetailV2betaCustomAttribute(),
  'y': buildGoogleCloudRetailV2betaCustomAttribute(),
};

void checkUnnamed132(
  core.Map<core.String, api.GoogleCloudRetailV2betaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2betaCustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed133() => ['foo', 'foo'];

void checkUnnamed133(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed134() => ['foo', 'foo'];

void checkUnnamed134(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2betaPanelInfo> buildUnnamed135() => [
  buildGoogleCloudRetailV2betaPanelInfo(),
  buildGoogleCloudRetailV2betaPanelInfo(),
];

void checkUnnamed135(core.List<api.GoogleCloudRetailV2betaPanelInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaPanelInfo(o[0]);
  checkGoogleCloudRetailV2betaPanelInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2betaProductDetail> buildUnnamed136() => [
  buildGoogleCloudRetailV2betaProductDetail(),
  buildGoogleCloudRetailV2betaProductDetail(),
];

void checkUnnamed136(core.List<api.GoogleCloudRetailV2betaProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaProductDetail(o[0]);
  checkGoogleCloudRetailV2betaProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaUserEvent = 0;
api.GoogleCloudRetailV2betaUserEvent buildGoogleCloudRetailV2betaUserEvent() {
  final o = api.GoogleCloudRetailV2betaUserEvent();
  buildCounterGoogleCloudRetailV2betaUserEvent++;
  if (buildCounterGoogleCloudRetailV2betaUserEvent < 3) {
    o.attributes = buildUnnamed132();
    o.attributionToken = 'foo';
    o.cartId = 'foo';
    o.completionDetail = buildGoogleCloudRetailV2betaCompletionDetail();
    o.entity = 'foo';
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.experimentIds = buildUnnamed133();
    o.filter = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed134();
    o.pageViewId = 'foo';
    o.panels = buildUnnamed135();
    o.productDetails = buildUnnamed136();
    o.purchaseTransaction = buildGoogleCloudRetailV2betaPurchaseTransaction();
    o.referrerUri = 'foo';
    o.searchQuery = 'foo';
    o.sessionId = 'foo';
    o.uri = 'foo';
    o.userInfo = buildGoogleCloudRetailV2betaUserInfo();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaUserEvent--;
  return o;
}

void checkGoogleCloudRetailV2betaUserEvent(
  api.GoogleCloudRetailV2betaUserEvent o,
) {
  buildCounterGoogleCloudRetailV2betaUserEvent++;
  if (buildCounterGoogleCloudRetailV2betaUserEvent < 3) {
    checkUnnamed132(o.attributes!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    unittest.expect(o.cartId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaCompletionDetail(o.completionDetail!);
    unittest.expect(o.entity!, unittest.equals('foo'));
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
    checkUnnamed133(o.experimentIds!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals(42));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed134(o.pageCategories!);
    unittest.expect(o.pageViewId!, unittest.equals('foo'));
    checkUnnamed135(o.panels!);
    checkUnnamed136(o.productDetails!);
    checkGoogleCloudRetailV2betaPurchaseTransaction(o.purchaseTransaction!);
    unittest.expect(o.referrerUri!, unittest.equals('foo'));
    unittest.expect(o.searchQuery!, unittest.equals('foo'));
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkGoogleCloudRetailV2betaUserInfo(o.userInfo!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaUserEvent--;
}

core.List<api.GoogleCloudRetailV2betaUserEvent> buildUnnamed137() => [
  buildGoogleCloudRetailV2betaUserEvent(),
  buildGoogleCloudRetailV2betaUserEvent(),
];

void checkUnnamed137(core.List<api.GoogleCloudRetailV2betaUserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2betaUserEvent(o[0]);
  checkGoogleCloudRetailV2betaUserEvent(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaUserEventInlineSource = 0;
api.GoogleCloudRetailV2betaUserEventInlineSource
buildGoogleCloudRetailV2betaUserEventInlineSource() {
  final o = api.GoogleCloudRetailV2betaUserEventInlineSource();
  buildCounterGoogleCloudRetailV2betaUserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2betaUserEventInlineSource < 3) {
    o.userEvents = buildUnnamed137();
  }
  buildCounterGoogleCloudRetailV2betaUserEventInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2betaUserEventInlineSource(
  api.GoogleCloudRetailV2betaUserEventInlineSource o,
) {
  buildCounterGoogleCloudRetailV2betaUserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2betaUserEventInlineSource < 3) {
    checkUnnamed137(o.userEvents!);
  }
  buildCounterGoogleCloudRetailV2betaUserEventInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2betaUserEventInputConfig = 0;
api.GoogleCloudRetailV2betaUserEventInputConfig
buildGoogleCloudRetailV2betaUserEventInputConfig() {
  final o = api.GoogleCloudRetailV2betaUserEventInputConfig();
  buildCounterGoogleCloudRetailV2betaUserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2betaUserEventInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2betaBigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2betaGcsSource();
    o.userEventInlineSource =
        buildGoogleCloudRetailV2betaUserEventInlineSource();
  }
  buildCounterGoogleCloudRetailV2betaUserEventInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaUserEventInputConfig(
  api.GoogleCloudRetailV2betaUserEventInputConfig o,
) {
  buildCounterGoogleCloudRetailV2betaUserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2betaUserEventInputConfig < 3) {
    checkGoogleCloudRetailV2betaBigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2betaGcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2betaUserEventInlineSource(o.userEventInlineSource!);
  }
  buildCounterGoogleCloudRetailV2betaUserEventInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaUserInfo = 0;
api.GoogleCloudRetailV2betaUserInfo buildGoogleCloudRetailV2betaUserInfo() {
  final o = api.GoogleCloudRetailV2betaUserInfo();
  buildCounterGoogleCloudRetailV2betaUserInfo++;
  if (buildCounterGoogleCloudRetailV2betaUserInfo < 3) {
    o.directUserRequest = true;
    o.ipAddress = 'foo';
    o.userAgent = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaUserInfo--;
  return o;
}

void checkGoogleCloudRetailV2betaUserInfo(
  api.GoogleCloudRetailV2betaUserInfo o,
) {
  buildCounterGoogleCloudRetailV2betaUserInfo++;
  if (buildCounterGoogleCloudRetailV2betaUserInfo < 3) {
    unittest.expect(o.directUserRequest!, unittest.isTrue);
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.userAgent!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2betaUserInfo--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed138() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed138(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed138();
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
    checkUnnamed138(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
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
    o.metadata = buildUnnamed139();
    o.name = 'foo';
    o.response = buildUnnamed140();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed139(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed140(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed141() => {
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

void checkUnnamed141(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed142() => [
  buildUnnamed141(),
  buildUnnamed141(),
];

void checkUnnamed142(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed141(o[0]);
  checkUnnamed141(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed142();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed142(o.details!);
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

core.List<core.String> buildUnnamed143() => ['foo', 'foo'];

void checkUnnamed143(core.List<core.String> o) {
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
    'obj-schema-GoogleCloudRetailV2betaAddCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaAddCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaAddCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaAddCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaAddControlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaAddControlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaAddControlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaAddControlRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaAddFulfillmentPlacesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaAddFulfillmentPlacesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaAddFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaAddFulfillmentPlacesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaAddLocalInventoriesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaAddLocalInventoriesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaAddLocalInventoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaAddLocalInventoriesRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaAlertConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaAlertConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaAlertConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaAlertConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaAlertConfigAlertPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaAlertConfigAlertPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaAlertConfigAlertPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaAlertConfigAlertPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaAlertConfigAlertPolicyRecipient(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaAttributesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaAttributesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaAttributesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaAttributesConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaAudience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaAudience(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaBigQuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaBigQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaBigQuerySource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaBigQuerySource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCatalog(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaCatalogAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCatalogAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCatalogAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCatalogAttribute(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCatalogAttributeFacetConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaCatalogAttributeFacetConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCatalogAttributeFacetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCatalogAttributeFacetConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigIgnoredFacetValues(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigMergedFacetValue(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCatalogAttributeFacetConfigRerankConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCollectUserEventRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaCollectUserEventRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaCollectUserEventRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCollectUserEventRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaColorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaCompleteQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCompleteQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCompleteQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCompleteQueryResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCompleteQueryResponseAttributeResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCompleteQueryResponseAttributeResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCompleteQueryResponseCompletionResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaCompletionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCompletionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCompletionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCompletionConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaCompletionDataInputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaCompletionDataInputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaCompletionDataInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaCompletionDataInputConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaCompletionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCompletionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCompletionDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCompletionDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCondition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaConditionQueryTerm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaConditionQueryTerm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaConditionQueryTerm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaConditionQueryTerm(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaConditionTimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaConditionTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaConditionTimeRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaConditionTimeRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaControl(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaConversationalSearchCustomizationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaConversationalSearchCustomizationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaConversationalSearchCustomizationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaCustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaCustomAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaDoubleList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaDoubleList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaDoubleList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaDoubleList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaExperimentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaExperimentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaExperimentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaExperimentInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaExperimentInfoServingConfigExperiment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaExperimentInfoServingConfigExperiment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaExportAnalyticsMetricsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaExportAnalyticsMetricsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaExportAnalyticsMetricsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaExportAnalyticsMetricsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaExportProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaExportProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaExportProductsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaExportProductsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaExportUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaExportUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaExportUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaExportUserEventsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaFulfillmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaFulfillmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaFulfillmentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaFulfillmentInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaGcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaGcsSource(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaGenerativeQuestionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaGenerativeQuestionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaGenerativeQuestionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaGenerativeQuestionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaGetDefaultBranchResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaGetDefaultBranchResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaGetDefaultBranchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaGetDefaultBranchResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaImage(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaImportCompletionDataRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaImportCompletionDataRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaImportCompletionDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaImportCompletionDataRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaImportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImportErrorsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaImportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaImportProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImportProductsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaImportProductsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaImportUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaImportUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaImportUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaImportUserEventsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaIntentClassificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaIntentClassificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaIntentClassificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaIntentClassificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaIntentClassificationConfigExample',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaIntentClassificationConfigExample();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaIntentClassificationConfigExample.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaIntentClassificationConfigExample(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaIntentClassificationConfigInlineForceIntent(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaIntentClassificationConfigInlineSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaIntentClassificationConfigInlineSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaIntentClassificationConfigInlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaIntentClassificationConfigInlineSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaInterval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaListCatalogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaListCatalogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaListCatalogsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaListCatalogsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaListControlsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaListControlsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaListControlsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaListControlsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaListModelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaListModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaListModelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaListModelsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaListProductsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaListProductsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaListServingConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaListServingConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaListServingConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaListServingConfigsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaLocalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaLocalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaLocalInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaLocalInventory(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaMerchantCenterFeedFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaMerchantCenterFeedFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaMerchantCenterFeedFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaMerchantCenterFeedFilter(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaMerchantCenterLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaMerchantCenterLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaMerchantCenterLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaMerchantCenterLink(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaMerchantCenterLinkingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaMerchantCenterLinkingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaMerchantCenterLinkingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaMerchantCenterLinkingConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaModel(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaModelModelFeaturesConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaModelModelFeaturesConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaModelModelFeaturesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaModelModelFeaturesConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaModelServingConfigList',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaModelServingConfigList();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaModelServingConfigList.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaModelServingConfigList(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaOutputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaOutputConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaOutputConfigBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaOutputConfigBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaOutputConfigBigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaOutputConfigBigQueryDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaOutputConfigGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaOutputConfigGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaOutputConfigGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaOutputConfigGcsDestination(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaPanelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPanelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPanelInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPanelInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPauseModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPauseModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPauseModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPauseModelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPinControlMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPinControlMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPinControlMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPinControlMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaPinControlMetadataProductPins',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaPinControlMetadataProductPins();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaPinControlMetadataProductPins.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaPinControlMetadataProductPins(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaPredictRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPredictRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPredictRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPredictRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPredictResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPredictResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPredictResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPredictResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaPredictResponsePredictionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaPredictResponsePredictionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaPredictResponsePredictionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaPredictResponsePredictionResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaPriceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPriceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPriceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPriceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPriceInfoPriceRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPriceInfoPriceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPriceInfoPriceRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPriceInfoPriceRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaProduct(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaProductAttributeInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaProductAttributeInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaProductAttributeInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaProductAttributeInterval(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaProductAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaProductAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaProductAttributeValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaProductAttributeValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaProductDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaProductDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaProductInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaProductInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaProductInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaProductInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaProductInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaProductInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaProductInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaProductInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaProductLevelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaProductLevelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaProductLevelConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaProductLevelConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPromotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPromotion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPromotion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPurchaseTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPurchaseTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPurchaseTransaction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPurchaseTransaction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPurgeProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPurgeProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPurgeProductsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaPurgeProductsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaPurgeUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaPurgeUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaPurgeUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaPurgeUserEventsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRating.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRating(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRejoinUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRejoinUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaRejoinUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRejoinUserEventsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRemoveCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRemoveCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaRemoveCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRemoveCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaRemoveControlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRemoveControlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRemoveControlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRemoveControlRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRemoveLocalInventoriesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRemoveLocalInventoriesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaRemoveLocalInventoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRemoveLocalInventoriesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaReplaceCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaReplaceCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaReplaceCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaReplaceCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaResumeModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaResumeModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaResumeModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaResumeModelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRuleBoostAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRuleBoostAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRuleBoostAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRuleBoostAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRuleDoNotAssociateAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRuleDoNotAssociateAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaRuleDoNotAssociateAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRuleDoNotAssociateAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaRuleFilterAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRuleFilterAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRuleFilterAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRuleFilterAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRuleForceReturnFacetAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRuleForceReturnFacetAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaRuleForceReturnFacetAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRuleForceReturnFacetAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustment(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaRuleIgnoreAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRuleIgnoreAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRuleIgnoreAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRuleIgnoreAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRuleOnewaySynonymsAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRuleOnewaySynonymsAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaRuleOnewaySynonymsAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRuleOnewaySynonymsAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaRulePinAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRulePinAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRulePinAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRulePinAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRuleRedirectAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRuleRedirectAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRuleRedirectAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRuleRedirectAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRuleRemoveFacetAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRuleRemoveFacetAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRuleRemoveFacetAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRuleRemoveFacetAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRuleReplacementAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRuleReplacementAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRuleReplacementAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaRuleReplacementAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaRuleTwowaySynonymsAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaRuleTwowaySynonymsAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaRuleTwowaySynonymsAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaRuleTwowaySynonymsAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaSearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaSearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaSearchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaSearchRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestBoostSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchRequestBoostSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaSearchRequestBoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestBoostSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestConversationalSearchSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestDynamicFacetSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestFacetSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchRequestFacetSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaSearchRequestFacetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestFacetSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestPersonalizationSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchRequestPersonalizationSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestPersonalizationSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestPersonalizationSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestQueryExpansionSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestSpellCorrectionSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchRequestTileNavigationSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchRequestTileNavigationSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchRequestTileNavigationSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchRequestTileNavigationSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaSearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaSearchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaSearchResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseConversationalSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseConversationalSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResult(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultAdditionalFilter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseConversationalSearchResultSuggestedAnswer(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaSearchResponseFacet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaSearchResponseFacet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaSearchResponseFacet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaSearchResponseFacet(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseFacetFacetValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchResponseFacetFacetValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseFacetFacetValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseFacetFacetValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseQueryExpansionInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSearchResponseSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseSearchResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSearchResponseTileNavigationResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaSearchResponseTileNavigationResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaSearchResponseTileNavigationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSearchResponseTileNavigationResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaServingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaServingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaServingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaServingConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaSetDefaultBranchRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2betaSetDefaultBranchRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2betaSetDefaultBranchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaSetDefaultBranchRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaSetInventoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaSetInventoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaSetInventoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaSetInventoryRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaStringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaStringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaStringList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaTile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaTile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaTile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaTile(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaTuneModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaTuneModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaTuneModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaTuneModelRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2betaUpdateGenerativeQuestionConfigRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2betaUserEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaUserEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaUserEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaUserEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaUserEventInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaUserEventInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaUserEventInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaUserEventInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaUserEventInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaUserEventInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaUserEventInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaUserEventInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaUserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2betaUserInfo(od);
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

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getAlertConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAlertConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAlertConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2betaAlertConfig(
        response as api.GoogleCloudRetailV2betaAlertConfig,
      );
    });

    unittest.test('method--updateAlertConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects;
      final arg_request = buildGoogleCloudRetailV2betaAlertConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaAlertConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaAlertConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAlertConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateAlertConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaAlertConfig(
        response as api.GoogleCloudRetailV2betaAlertConfig,
      );
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
      final arg_languageCodes = buildUnnamed143();
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaCompleteQueryResponse(),
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
      checkGoogleCloudRetailV2betaCompleteQueryResponse(
        response as api.GoogleCloudRetailV2betaCompleteQueryResponse,
      );
    });

    unittest.test('method--exportAnalyticsMetrics', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2betaExportAnalyticsMetricsRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaExportAnalyticsMetricsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaExportAnalyticsMetricsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAttributesConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaAttributesConfig(
        response as api.GoogleCloudRetailV2betaAttributesConfig,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaCompletionConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCompletionConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaCompletionConfig(
        response as api.GoogleCloudRetailV2betaCompletionConfig,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConversationalSearchCustomizationConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(
        response
            as api.GoogleCloudRetailV2betaConversationalSearchCustomizationConfig,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaGetDefaultBranchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDefaultBranch(
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaGetDefaultBranchResponse(
        response as api.GoogleCloudRetailV2betaGetDefaultBranchResponse,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getGenerativeQuestionFeature(
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(
        response as api.GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaListCatalogsResponse(),
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
      checkGoogleCloudRetailV2betaListCatalogsResponse(
        response as api.GoogleCloudRetailV2betaListCatalogsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2betaCatalog();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaCatalog.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaCatalog(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaCatalog(),
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
      checkGoogleCloudRetailV2betaCatalog(
        response as api.GoogleCloudRetailV2betaCatalog,
      );
    });

    unittest.test('method--setDefaultBranch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2betaSetDefaultBranchRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaSetDefaultBranchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaSetDefaultBranchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final arg_request = buildGoogleCloudRetailV2betaAttributesConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaAttributesConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaAttributesConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAttributesConfig(),
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
      checkGoogleCloudRetailV2betaAttributesConfig(
        response as api.GoogleCloudRetailV2betaAttributesConfig,
      );
    });

    unittest.test('method--updateCompletionConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2betaCompletionConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaCompletionConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaCompletionConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaCompletionConfig(),
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
      checkGoogleCloudRetailV2betaCompletionConfig(
        response as api.GoogleCloudRetailV2betaCompletionConfig,
      );
    });

    unittest.test('method--updateConversationalSearchCustomizationConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2betaConversationalSearchCustomizationConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaConversationalSearchCustomizationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateConversationalSearchCustomizationConfig(
        arg_request,
        arg_catalog,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaConversationalSearchCustomizationConfig(
        response
            as api.GoogleCloudRetailV2betaConversationalSearchCustomizationConfig,
      );
    });

    unittest.test('method--updateGenerativeQuestion', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2betaGenerativeQuestionConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaGenerativeQuestionConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaGenerativeQuestionConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaGenerativeQuestionConfig(),
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
      checkGoogleCloudRetailV2betaGenerativeQuestionConfig(
        response as api.GoogleCloudRetailV2betaGenerativeQuestionConfig,
      );
    });

    unittest.test('method--updateGenerativeQuestionFeature', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(),
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
      checkGoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig(
        response as api.GoogleCloudRetailV2betaGenerativeQuestionsFeatureConfig,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsAttributesConfigResource', () {
    unittest.test('method--addCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2betaAddCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaAddCatalogAttributeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaAddCatalogAttributeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAttributesConfig(),
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
      checkGoogleCloudRetailV2betaAttributesConfig(
        response as api.GoogleCloudRetailV2betaAttributesConfig,
      );
    });

    unittest.test('method--batchRemoveCatalogAttributes', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaBatchRemoveCatalogAttributesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchRemoveCatalogAttributes(
        arg_request,
        arg_attributesConfig,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse(
        response
            as api.GoogleCloudRetailV2betaBatchRemoveCatalogAttributesResponse,
      );
    });

    unittest.test('method--removeCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2betaRemoveCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaRemoveCatalogAttributeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaRemoveCatalogAttributeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAttributesConfig(),
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
      checkGoogleCloudRetailV2betaAttributesConfig(
        response as api.GoogleCloudRetailV2betaAttributesConfig,
      );
    });

    unittest.test('method--replaceCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2betaReplaceCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaReplaceCatalogAttributeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaReplaceCatalogAttributeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaAttributesConfig(),
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
      checkGoogleCloudRetailV2betaAttributesConfig(
        response as api.GoogleCloudRetailV2betaAttributesConfig,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsCatalogsBranchesOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudRetailApi(
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
              path.substring(pathOffset, pathOffset + 7),
              unittest.equals('v2beta/'),
            );
            pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request =
          buildGoogleCloudRetailV2betaAddFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaAddFulfillmentPlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaAddFulfillmentPlacesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request =
          buildGoogleCloudRetailV2betaAddLocalInventoriesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaAddLocalInventoriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaAddLocalInventoriesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2betaProduct();
      final arg_parent = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaProduct.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaProduct(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2betaProduct(),
          );
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
      checkGoogleCloudRetailV2betaProduct(
        response as api.GoogleCloudRetailV2betaProduct,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2betaExportProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaExportProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaExportProductsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaProduct(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2betaProduct(
        response as api.GoogleCloudRetailV2betaProduct,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2betaImportProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaImportProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaImportProductsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaListProductsResponse(),
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
      checkGoogleCloudRetailV2betaListProductsResponse(
        response as api.GoogleCloudRetailV2betaListProductsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2betaProduct();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaProduct.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaProduct(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2betaProduct(),
          );
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
      checkGoogleCloudRetailV2betaProduct(
        response as api.GoogleCloudRetailV2betaProduct,
      );
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2betaPurgeProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaPurgeProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaPurgeProductsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request =
          buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request =
          buildGoogleCloudRetailV2betaRemoveLocalInventoriesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaRemoveLocalInventoriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaRemoveLocalInventoriesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2betaSetInventoryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaSetInventoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaSetInventoryRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.completionData;
      final arg_request =
          buildGoogleCloudRetailV2betaImportCompletionDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaImportCompletionDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaImportCompletionDataRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final arg_request = buildGoogleCloudRetailV2betaControl();
      final arg_parent = 'foo';
      final arg_controlId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaControl.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaControl(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2betaControl(),
          );
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
      checkGoogleCloudRetailV2betaControl(
        response as api.GoogleCloudRetailV2betaControl,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaControl(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2betaControl(
        response as api.GoogleCloudRetailV2betaControl,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaListControlsResponse(),
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
      checkGoogleCloudRetailV2betaListControlsResponse(
        response as api.GoogleCloudRetailV2betaListControlsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
      final arg_request = buildGoogleCloudRetailV2betaControl();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaControl.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaControl(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaControl(),
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
      checkGoogleCloudRetailV2betaControl(
        response as api.GoogleCloudRetailV2betaControl,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsGenerativeQuestionResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.generativeQuestion;
      final arg_request =
          buildGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsRequest(
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse(),
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
      checkGoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse(
        response
            as api.GoogleCloudRetailV2betaBatchUpdateGenerativeQuestionConfigsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsGenerativeQuestionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse(
        response
            as api.GoogleCloudRetailV2betaListGenerativeQuestionConfigsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsModelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2betaModel();
      final arg_parent = 'foo';
      final arg_dryRun = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaModel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaModel(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2betaModel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2betaModel(
        response as api.GoogleCloudRetailV2betaModel,
      );
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaListModelsResponse(),
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
      checkGoogleCloudRetailV2betaListModelsResponse(
        response as api.GoogleCloudRetailV2betaListModelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2betaModel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaModel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaModel(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2betaModel());
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
      checkGoogleCloudRetailV2betaModel(
        response as api.GoogleCloudRetailV2betaModel,
      );
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2betaPauseModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaPauseModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaPauseModelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2betaModel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pause(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaModel(
        response as api.GoogleCloudRetailV2betaModel,
      );
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2betaResumeModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaResumeModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaResumeModelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(buildGoogleCloudRetailV2betaModel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2betaModel(
        response as api.GoogleCloudRetailV2betaModel,
      );
    });

    unittest.test('method--tune', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2betaTuneModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaTuneModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaTuneModelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.operations;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.operations;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsPlacementsResource', () {
    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2betaPredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaPredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaPredictRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaPredictResponse(),
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
      checkGoogleCloudRetailV2betaPredictResponse(
        response as api.GoogleCloudRetailV2betaPredictResponse,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2betaSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaSearchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaSearchResponse(),
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
      checkGoogleCloudRetailV2betaSearchResponse(
        response as api.GoogleCloudRetailV2betaSearchResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsServingConfigsResource', () {
    unittest.test('method--addControl', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2betaAddControlRequest();
      final arg_servingConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaAddControlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaAddControlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaServingConfig(),
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
      checkGoogleCloudRetailV2betaServingConfig(
        response as api.GoogleCloudRetailV2betaServingConfig,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2betaServingConfig();
      final arg_parent = 'foo';
      final arg_servingConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaServingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaServingConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaServingConfig(),
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
      checkGoogleCloudRetailV2betaServingConfig(
        response as api.GoogleCloudRetailV2betaServingConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2betaServingConfig(
        response as api.GoogleCloudRetailV2betaServingConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaListServingConfigsResponse(),
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
      checkGoogleCloudRetailV2betaListServingConfigsResponse(
        response as api.GoogleCloudRetailV2betaListServingConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2betaServingConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaServingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaServingConfig(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaServingConfig(),
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
      checkGoogleCloudRetailV2betaServingConfig(
        response as api.GoogleCloudRetailV2betaServingConfig,
      );
    });

    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2betaPredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaPredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaPredictRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaPredictResponse(),
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
      checkGoogleCloudRetailV2betaPredictResponse(
        response as api.GoogleCloudRetailV2betaPredictResponse,
      );
    });

    unittest.test('method--removeControl', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2betaRemoveControlRequest();
      final arg_servingConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaRemoveControlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaRemoveControlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaServingConfig(),
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
      checkGoogleCloudRetailV2betaServingConfig(
        response as api.GoogleCloudRetailV2betaServingConfig,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2betaSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaSearchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudRetailV2betaSearchResponse(),
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
      checkGoogleCloudRetailV2betaSearchResponse(
        response as api.GoogleCloudRetailV2betaSearchResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsUserEventsResource', () {
    unittest.test('method--collect', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2betaCollectUserEventRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaCollectUserEventRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaCollectUserEventRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2betaExportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaExportUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaExportUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2betaImportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaImportUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaImportUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2betaPurgeUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaPurgeUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaPurgeUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2betaRejoinUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2betaRejoinUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaRejoinUserEventsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2betaUserEvent();
      final arg_parent = 'foo';
      final arg_writeAsync = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2betaUserEvent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2betaUserEvent(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2betaUserEvent(),
          );
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
      checkGoogleCloudRetailV2betaUserEvent(
        response as api.GoogleCloudRetailV2betaUserEvent,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });
}
