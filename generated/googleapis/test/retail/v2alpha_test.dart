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

import 'package:googleapis/retail/v2alpha.dart' as api;
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

core.int buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest = 0;
api.GoogleCloudRetailV2alphaAcceptTermsRequest
buildGoogleCloudRetailV2alphaAcceptTermsRequest() {
  final o = api.GoogleCloudRetailV2alphaAcceptTermsRequest();
  buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaAcceptTermsRequest(
  api.GoogleCloudRetailV2alphaAcceptTermsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaAcceptTermsRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2alphaAddCatalogAttributeRequest
buildGoogleCloudRetailV2alphaAddCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2alphaAddCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest < 3) {
    o.catalogAttribute = buildGoogleCloudRetailV2alphaCatalogAttribute();
  }
  buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaAddCatalogAttributeRequest(
  api.GoogleCloudRetailV2alphaAddCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest < 3) {
    checkGoogleCloudRetailV2alphaCatalogAttribute(o.catalogAttribute!);
  }
  buildCounterGoogleCloudRetailV2alphaAddCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaAddControlRequest = 0;
api.GoogleCloudRetailV2alphaAddControlRequest
buildGoogleCloudRetailV2alphaAddControlRequest() {
  final o = api.GoogleCloudRetailV2alphaAddControlRequest();
  buildCounterGoogleCloudRetailV2alphaAddControlRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddControlRequest < 3) {
    o.controlId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaAddControlRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaAddControlRequest(
  api.GoogleCloudRetailV2alphaAddControlRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaAddControlRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddControlRequest < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaAddControlRequest--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest
buildGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest < 3) {
    o.addTime = 'foo';
    o.allowMissing = true;
    o.placeIds = buildUnnamed2();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest(
  api.GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest < 3) {
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed2(o.placeIds!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest--;
}

core.List<api.GoogleCloudRetailV2alphaLocalInventory> buildUnnamed3() => [
  buildGoogleCloudRetailV2alphaLocalInventory(),
  buildGoogleCloudRetailV2alphaLocalInventory(),
];

void checkUnnamed3(core.List<api.GoogleCloudRetailV2alphaLocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaLocalInventory(o[0]);
  checkGoogleCloudRetailV2alphaLocalInventory(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest = 0;
api.GoogleCloudRetailV2alphaAddLocalInventoriesRequest
buildGoogleCloudRetailV2alphaAddLocalInventoriesRequest() {
  final o = api.GoogleCloudRetailV2alphaAddLocalInventoriesRequest();
  buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest < 3) {
    o.addMask = 'foo';
    o.addTime = 'foo';
    o.allowMissing = true;
    o.localInventories = buildUnnamed3();
  }
  buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaAddLocalInventoriesRequest(
  api.GoogleCloudRetailV2alphaAddLocalInventoriesRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest < 3) {
    unittest.expect(o.addMask!, unittest.equals('foo'));
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed3(o.localInventories!);
  }
  buildCounterGoogleCloudRetailV2alphaAddLocalInventoriesRequest--;
}

core.List<api.GoogleCloudRetailV2alphaAlertConfigAlertPolicy> buildUnnamed4() =>
    [
      buildGoogleCloudRetailV2alphaAlertConfigAlertPolicy(),
      buildGoogleCloudRetailV2alphaAlertConfigAlertPolicy(),
    ];

void checkUnnamed4(
  core.List<api.GoogleCloudRetailV2alphaAlertConfigAlertPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaAlertConfigAlertPolicy(o[0]);
  checkGoogleCloudRetailV2alphaAlertConfigAlertPolicy(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaAlertConfig = 0;
api.GoogleCloudRetailV2alphaAlertConfig
buildGoogleCloudRetailV2alphaAlertConfig() {
  final o = api.GoogleCloudRetailV2alphaAlertConfig();
  buildCounterGoogleCloudRetailV2alphaAlertConfig++;
  if (buildCounterGoogleCloudRetailV2alphaAlertConfig < 3) {
    o.alertPolicies = buildUnnamed4();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaAlertConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaAlertConfig(
  api.GoogleCloudRetailV2alphaAlertConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaAlertConfig++;
  if (buildCounterGoogleCloudRetailV2alphaAlertConfig < 3) {
    checkUnnamed4(o.alertPolicies!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaAlertConfig--;
}

core.List<api.GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient>
buildUnnamed5() => [
  buildGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient(),
  buildGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient(o[0]);
  checkGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy = 0;
api.GoogleCloudRetailV2alphaAlertConfigAlertPolicy
buildGoogleCloudRetailV2alphaAlertConfigAlertPolicy() {
  final o = api.GoogleCloudRetailV2alphaAlertConfigAlertPolicy();
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy++;
  if (buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy < 3) {
    o.alertGroup = 'foo';
    o.enrollStatus = 'foo';
    o.recipients = buildUnnamed5();
  }
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy--;
  return o;
}

void checkGoogleCloudRetailV2alphaAlertConfigAlertPolicy(
  api.GoogleCloudRetailV2alphaAlertConfigAlertPolicy o,
) {
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy++;
  if (buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy < 3) {
    unittest.expect(o.alertGroup!, unittest.equals('foo'));
    unittest.expect(o.enrollStatus!, unittest.equals('foo'));
    checkUnnamed5(o.recipients!);
  }
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicy--;
}

core.int buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient =
    0;
api.GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient
buildGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient() {
  final o = api.GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient();
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient++;
  if (buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient < 3) {
    o.emailAddress = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient--;
  return o;
}

void checkGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient(
  api.GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient o,
) {
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient++;
  if (buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient < 3) {
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient--;
}

core.Map<core.String, api.GoogleCloudRetailV2alphaCatalogAttribute>
buildUnnamed6() => {
  'x': buildGoogleCloudRetailV2alphaCatalogAttribute(),
  'y': buildGoogleCloudRetailV2alphaCatalogAttribute(),
};

void checkUnnamed6(
  core.Map<core.String, api.GoogleCloudRetailV2alphaCatalogAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCatalogAttribute(o['x']!);
  checkGoogleCloudRetailV2alphaCatalogAttribute(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2alphaAttributesConfig = 0;
api.GoogleCloudRetailV2alphaAttributesConfig
buildGoogleCloudRetailV2alphaAttributesConfig() {
  final o = api.GoogleCloudRetailV2alphaAttributesConfig();
  buildCounterGoogleCloudRetailV2alphaAttributesConfig++;
  if (buildCounterGoogleCloudRetailV2alphaAttributesConfig < 3) {
    o.attributeConfigLevel = 'foo';
    o.catalogAttributes = buildUnnamed6();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaAttributesConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaAttributesConfig(
  api.GoogleCloudRetailV2alphaAttributesConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaAttributesConfig++;
  if (buildCounterGoogleCloudRetailV2alphaAttributesConfig < 3) {
    unittest.expect(o.attributeConfigLevel!, unittest.equals('foo'));
    checkUnnamed6(o.catalogAttributes!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaAttributesConfig--;
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

core.int buildCounterGoogleCloudRetailV2alphaAudience = 0;
api.GoogleCloudRetailV2alphaAudience buildGoogleCloudRetailV2alphaAudience() {
  final o = api.GoogleCloudRetailV2alphaAudience();
  buildCounterGoogleCloudRetailV2alphaAudience++;
  if (buildCounterGoogleCloudRetailV2alphaAudience < 3) {
    o.ageGroups = buildUnnamed7();
    o.genders = buildUnnamed8();
  }
  buildCounterGoogleCloudRetailV2alphaAudience--;
  return o;
}

void checkGoogleCloudRetailV2alphaAudience(
  api.GoogleCloudRetailV2alphaAudience o,
) {
  buildCounterGoogleCloudRetailV2alphaAudience++;
  if (buildCounterGoogleCloudRetailV2alphaAudience < 3) {
    checkUnnamed7(o.ageGroups!);
    checkUnnamed8(o.genders!);
  }
  buildCounterGoogleCloudRetailV2alphaAudience--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest = 0;
api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest
buildGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest() {
  final o = api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest();
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest <
      3) {
    o.attributeKeys = buildUnnamed9();
  }
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest(
  api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest <
      3) {
    checkUnnamed9(o.attributeKeys!);
  }
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest--;
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
buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse = 0;
api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse
buildGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse() {
  final o = api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse();
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse <
      3) {
    o.deletedCatalogAttributes = buildUnnamed10();
    o.resetCatalogAttributes = buildUnnamed11();
  }
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse(
  api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse <
      3) {
    checkUnnamed10(o.deletedCatalogAttributes!);
    checkUnnamed11(o.resetCatalogAttributes!);
  }
  buildCounterGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse--;
}

core.List<api.GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest>
buildUnnamed12() => [
  buildGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest(),
  buildGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest(o[0]);
  checkGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest =
    0;
api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest
buildGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest() {
  final o =
      api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest();
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest <
      3) {
    o.requests = buildUnnamed12();
  }
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest(
  api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest <
      3) {
    checkUnnamed12(o.requests!);
  }
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest--;
}

core.List<api.GoogleCloudRetailV2alphaGenerativeQuestionConfig>
buildUnnamed13() => [
  buildGoogleCloudRetailV2alphaGenerativeQuestionConfig(),
  buildGoogleCloudRetailV2alphaGenerativeQuestionConfig(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudRetailV2alphaGenerativeQuestionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(o[0]);
  checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse =
    0;
api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse
buildGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse() {
  final o =
      api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse();
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse <
      3) {
    o.generativeQuestionConfigs = buildUnnamed13();
  }
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse(
  api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse <
      3) {
    checkUnnamed13(o.generativeQuestionConfigs!);
  }
  buildCounterGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaBigQuerySource = 0;
api.GoogleCloudRetailV2alphaBigQuerySource
buildGoogleCloudRetailV2alphaBigQuerySource() {
  final o = api.GoogleCloudRetailV2alphaBigQuerySource();
  buildCounterGoogleCloudRetailV2alphaBigQuerySource++;
  if (buildCounterGoogleCloudRetailV2alphaBigQuerySource < 3) {
    o.dataSchema = 'foo';
    o.datasetId = 'foo';
    o.gcsStagingDir = 'foo';
    o.partitionDate = buildGoogleTypeDate();
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaBigQuerySource--;
  return o;
}

void checkGoogleCloudRetailV2alphaBigQuerySource(
  api.GoogleCloudRetailV2alphaBigQuerySource o,
) {
  buildCounterGoogleCloudRetailV2alphaBigQuerySource++;
  if (buildCounterGoogleCloudRetailV2alphaBigQuerySource < 3) {
    unittest.expect(o.dataSchema!, unittest.equals('foo'));
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.gcsStagingDir!, unittest.equals('foo'));
    checkGoogleTypeDate(o.partitionDate!);
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.tableId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaBigQuerySource--;
}

core.List<api.GoogleCloudRetailV2alphaBranchProductCountStatistic>
buildUnnamed14() => [
  buildGoogleCloudRetailV2alphaBranchProductCountStatistic(),
  buildGoogleCloudRetailV2alphaBranchProductCountStatistic(),
];

void checkUnnamed14(
  core.List<api.GoogleCloudRetailV2alphaBranchProductCountStatistic> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaBranchProductCountStatistic(o[0]);
  checkGoogleCloudRetailV2alphaBranchProductCountStatistic(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaBranchQualityMetric> buildUnnamed15() => [
  buildGoogleCloudRetailV2alphaBranchQualityMetric(),
  buildGoogleCloudRetailV2alphaBranchQualityMetric(),
];

void checkUnnamed15(
  core.List<api.GoogleCloudRetailV2alphaBranchQualityMetric> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaBranchQualityMetric(o[0]);
  checkGoogleCloudRetailV2alphaBranchQualityMetric(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaBranch = 0;
api.GoogleCloudRetailV2alphaBranch buildGoogleCloudRetailV2alphaBranch() {
  final o = api.GoogleCloudRetailV2alphaBranch();
  buildCounterGoogleCloudRetailV2alphaBranch++;
  if (buildCounterGoogleCloudRetailV2alphaBranch < 3) {
    o.displayName = 'foo';
    o.isDefault = true;
    o.lastProductImportTime = 'foo';
    o.name = 'foo';
    o.productCountStats = buildUnnamed14();
    o.qualityMetrics = buildUnnamed15();
  }
  buildCounterGoogleCloudRetailV2alphaBranch--;
  return o;
}

void checkGoogleCloudRetailV2alphaBranch(api.GoogleCloudRetailV2alphaBranch o) {
  buildCounterGoogleCloudRetailV2alphaBranch++;
  if (buildCounterGoogleCloudRetailV2alphaBranch < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(o.lastProductImportTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed14(o.productCountStats!);
    checkUnnamed15(o.qualityMetrics!);
  }
  buildCounterGoogleCloudRetailV2alphaBranch--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic = 0;
api.GoogleCloudRetailV2alphaBranchProductCountStatistic
buildGoogleCloudRetailV2alphaBranchProductCountStatistic() {
  final o = api.GoogleCloudRetailV2alphaBranchProductCountStatistic();
  buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic++;
  if (buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic < 3) {
    o.counts = buildUnnamed16();
    o.scope = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic--;
  return o;
}

void checkGoogleCloudRetailV2alphaBranchProductCountStatistic(
  api.GoogleCloudRetailV2alphaBranchProductCountStatistic o,
) {
  buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic++;
  if (buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic < 3) {
    checkUnnamed16(o.counts!);
    unittest.expect(o.scope!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaBranchProductCountStatistic--;
}

core.List<api.GoogleCloudRetailV2alphaProduct> buildUnnamed17() => [
  buildGoogleCloudRetailV2alphaProduct(),
  buildGoogleCloudRetailV2alphaProduct(),
];

void checkUnnamed17(core.List<api.GoogleCloudRetailV2alphaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProduct(o[0]);
  checkGoogleCloudRetailV2alphaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaBranchQualityMetric = 0;
api.GoogleCloudRetailV2alphaBranchQualityMetric
buildGoogleCloudRetailV2alphaBranchQualityMetric() {
  final o = api.GoogleCloudRetailV2alphaBranchQualityMetric();
  buildCounterGoogleCloudRetailV2alphaBranchQualityMetric++;
  if (buildCounterGoogleCloudRetailV2alphaBranchQualityMetric < 3) {
    o.qualifiedProductCount = 42;
    o.requirementKey = 'foo';
    o.suggestedQualityPercentThreshold = 42.0;
    o.unqualifiedProductCount = 42;
    o.unqualifiedSampleProducts = buildUnnamed17();
  }
  buildCounterGoogleCloudRetailV2alphaBranchQualityMetric--;
  return o;
}

void checkGoogleCloudRetailV2alphaBranchQualityMetric(
  api.GoogleCloudRetailV2alphaBranchQualityMetric o,
) {
  buildCounterGoogleCloudRetailV2alphaBranchQualityMetric++;
  if (buildCounterGoogleCloudRetailV2alphaBranchQualityMetric < 3) {
    unittest.expect(o.qualifiedProductCount!, unittest.equals(42));
    unittest.expect(o.requirementKey!, unittest.equals('foo'));
    unittest.expect(o.suggestedQualityPercentThreshold!, unittest.equals(42.0));
    unittest.expect(o.unqualifiedProductCount!, unittest.equals(42));
    checkUnnamed17(o.unqualifiedSampleProducts!);
  }
  buildCounterGoogleCloudRetailV2alphaBranchQualityMetric--;
}

core.int buildCounterGoogleCloudRetailV2alphaCatalog = 0;
api.GoogleCloudRetailV2alphaCatalog buildGoogleCloudRetailV2alphaCatalog() {
  final o = api.GoogleCloudRetailV2alphaCatalog();
  buildCounterGoogleCloudRetailV2alphaCatalog++;
  if (buildCounterGoogleCloudRetailV2alphaCatalog < 3) {
    o.displayName = 'foo';
    o.merchantCenterLinkingConfig =
        buildGoogleCloudRetailV2alphaMerchantCenterLinkingConfig();
    o.name = 'foo';
    o.productLevelConfig = buildGoogleCloudRetailV2alphaProductLevelConfig();
  }
  buildCounterGoogleCloudRetailV2alphaCatalog--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalog(
  api.GoogleCloudRetailV2alphaCatalog o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalog++;
  if (buildCounterGoogleCloudRetailV2alphaCatalog < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaMerchantCenterLinkingConfig(
      o.merchantCenterLinkingConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaProductLevelConfig(o.productLevelConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaCatalog--;
}

core.int buildCounterGoogleCloudRetailV2alphaCatalogAttribute = 0;
api.GoogleCloudRetailV2alphaCatalogAttribute
buildGoogleCloudRetailV2alphaCatalogAttribute() {
  final o = api.GoogleCloudRetailV2alphaCatalogAttribute();
  buildCounterGoogleCloudRetailV2alphaCatalogAttribute++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttribute < 3) {
    o.dynamicFacetableOption = 'foo';
    o.exactSearchableOption = 'foo';
    o.facetConfig = buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfig();
    o.inUse = true;
    o.indexableOption = 'foo';
    o.key = 'foo';
    o.recommendationsFilteringOption = 'foo';
    o.retrievableOption = 'foo';
    o.searchableOption = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttribute--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalogAttribute(
  api.GoogleCloudRetailV2alphaCatalogAttribute o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalogAttribute++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttribute < 3) {
    unittest.expect(o.dynamicFacetableOption!, unittest.equals('foo'));
    unittest.expect(o.exactSearchableOption!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfig(o.facetConfig!);
    unittest.expect(o.inUse!, unittest.isTrue);
    unittest.expect(o.indexableOption!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.recommendationsFilteringOption!, unittest.equals('foo'));
    unittest.expect(o.retrievableOption!, unittest.equals('foo'));
    unittest.expect(o.searchableOption!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttribute--;
}

core.List<api.GoogleCloudRetailV2alphaInterval> buildUnnamed18() => [
  buildGoogleCloudRetailV2alphaInterval(),
  buildGoogleCloudRetailV2alphaInterval(),
];

void checkUnnamed18(core.List<api.GoogleCloudRetailV2alphaInterval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaInterval(o[0]);
  checkGoogleCloudRetailV2alphaInterval(o[1]);
}

core.List<
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues
>
buildUnnamed19() => [
  buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues(),
  buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues(),
];

void checkUnnamed19(
  core.List<
    api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues(
    o[0],
  );
  checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues(
    o[1],
  );
}

core.List<
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue
>
buildUnnamed20() => [
  buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue(),
  buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue(),
];

void checkUnnamed20(
  core.List<
    api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue(
    o[0],
  );
  checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue(
    o[1],
  );
}

core.int buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig = 0;
api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfig
buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfig() {
  final o = api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfig();
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig < 3) {
    o.facetIntervals = buildUnnamed18();
    o.ignoredFacetValues = buildUnnamed19();
    o.mergedFacet =
        buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet();
    o.mergedFacetValues = buildUnnamed20();
    o.rerankConfig =
        buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig();
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfig(
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig < 3) {
    checkUnnamed18(o.facetIntervals!);
    checkUnnamed19(o.ignoredFacetValues!);
    checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet(
      o.mergedFacet!,
    );
    checkUnnamed20(o.mergedFacetValues!);
    checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig(
      o.rerankConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfig--;
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues =
    0;
api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues
buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues() {
  final o =
      api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues();
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues <
      3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.values = buildUnnamed21();
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues(
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues <
      3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkUnnamed21(o.values!);
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues--;
}

core.int
buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet = 0;
api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet
buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet() {
  final o =
      api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet();
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet <
      3) {
    o.mergedFacetKey = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet(
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet <
      3) {
    unittest.expect(o.mergedFacetKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue =
    0;
api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue
buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue() {
  final o =
      api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue();
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue <
      3) {
    o.mergedValue = 'foo';
    o.values = buildUnnamed22();
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue(
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue <
      3) {
    unittest.expect(o.mergedValue!, unittest.equals('foo'));
    checkUnnamed22(o.values!);
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig = 0;
api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig
buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig() {
  final o =
      api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig();
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig <
      3) {
    o.facetValues = buildUnnamed23();
    o.rerankFacet = true;
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig(
  api.GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig <
      3) {
    checkUnnamed23(o.facetValues!);
    unittest.expect(o.rerankFacet!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest = 0;
api.GoogleCloudRetailV2alphaCollectUserEventRequest
buildGoogleCloudRetailV2alphaCollectUserEventRequest() {
  final o = api.GoogleCloudRetailV2alphaCollectUserEventRequest();
  buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest++;
  if (buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest < 3) {
    o.ets = 'foo';
    o.prebuiltRule = 'foo';
    o.rawJson = 'foo';
    o.uri = 'foo';
    o.userEvent = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaCollectUserEventRequest(
  api.GoogleCloudRetailV2alphaCollectUserEventRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest++;
  if (buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest < 3) {
    unittest.expect(o.ets!, unittest.equals('foo'));
    unittest.expect(o.prebuiltRule!, unittest.equals('foo'));
    unittest.expect(o.rawJson!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.userEvent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaCollectUserEventRequest--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaColorInfo = 0;
api.GoogleCloudRetailV2alphaColorInfo buildGoogleCloudRetailV2alphaColorInfo() {
  final o = api.GoogleCloudRetailV2alphaColorInfo();
  buildCounterGoogleCloudRetailV2alphaColorInfo++;
  if (buildCounterGoogleCloudRetailV2alphaColorInfo < 3) {
    o.colorFamilies = buildUnnamed24();
    o.colors = buildUnnamed25();
  }
  buildCounterGoogleCloudRetailV2alphaColorInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaColorInfo(
  api.GoogleCloudRetailV2alphaColorInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaColorInfo++;
  if (buildCounterGoogleCloudRetailV2alphaColorInfo < 3) {
    checkUnnamed24(o.colorFamilies!);
    checkUnnamed25(o.colors!);
  }
  buildCounterGoogleCloudRetailV2alphaColorInfo--;
}

core.Map<
  core.String,
  api.GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult
>
buildUnnamed26() => {
  'x': buildGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult(),
  'y': buildGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult(),
};

void checkUnnamed26(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult(o['x']!);
  checkGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult(o['y']!);
}

core.List<api.GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult>
buildUnnamed27() => [
  buildGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult(),
  buildGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult(),
];

void checkUnnamed27(
  core.List<api.GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult(o[0]);
  checkGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult>
buildUnnamed28() => [
  buildGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult(),
  buildGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult(),
];

void checkUnnamed28(
  core.List<api.GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult(o[0]);
  checkGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse = 0;
api.GoogleCloudRetailV2alphaCompleteQueryResponse
buildGoogleCloudRetailV2alphaCompleteQueryResponse() {
  final o = api.GoogleCloudRetailV2alphaCompleteQueryResponse();
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse < 3) {
    o.attributeResults = buildUnnamed26();
    o.attributionToken = 'foo';
    o.completionResults = buildUnnamed27();
    o.recentSearchResults = buildUnnamed28();
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompleteQueryResponse(
  api.GoogleCloudRetailV2alphaCompleteQueryResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse < 3) {
    checkUnnamed26(o.attributeResults!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkUnnamed27(o.completionResults!);
    checkUnnamed28(o.recentSearchResults!);
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponse--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult = 0;
api.GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult
buildGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult() {
  final o = api.GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult();
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult <
      3) {
    o.suggestions = buildUnnamed29();
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult(
  api.GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult o,
) {
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult <
      3) {
    checkUnnamed29(o.suggestions!);
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult--;
}

core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute>
buildUnnamed30() => {
  'x': buildGoogleCloudRetailV2alphaCustomAttribute(),
  'y': buildGoogleCloudRetailV2alphaCustomAttribute(),
};

void checkUnnamed30(
  core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2alphaCustomAttribute(o['y']!);
}

core.List<api.GoogleCloudRetailV2alphaSearchResponseFacet> buildUnnamed31() => [
  buildGoogleCloudRetailV2alphaSearchResponseFacet(),
  buildGoogleCloudRetailV2alphaSearchResponseFacet(),
];

void checkUnnamed31(
  core.List<api.GoogleCloudRetailV2alphaSearchResponseFacet> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchResponseFacet(o[0]);
  checkGoogleCloudRetailV2alphaSearchResponseFacet(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult = 0;
api.GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult
buildGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult() {
  final o = api.GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult();
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult <
      3) {
    o.attributes = buildUnnamed30();
    o.facets = buildUnnamed31();
    o.suggestion = 'foo';
    o.totalProductCount = 42;
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult(
  api.GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult o,
) {
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult <
      3) {
    checkUnnamed30(o.attributes!);
    checkUnnamed31(o.facets!);
    unittest.expect(o.suggestion!, unittest.equals('foo'));
    unittest.expect(o.totalProductCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult--;
}

core.int
buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult = 0;
api.GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult
buildGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult() {
  final o =
      api.GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult();
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult <
      3) {
    o.recentSearch = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult(
  api.GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult o,
) {
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult <
      3) {
    unittest.expect(o.recentSearch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult--;
}

core.int buildCounterGoogleCloudRetailV2alphaCompletionConfig = 0;
api.GoogleCloudRetailV2alphaCompletionConfig
buildGoogleCloudRetailV2alphaCompletionConfig() {
  final o = api.GoogleCloudRetailV2alphaCompletionConfig();
  buildCounterGoogleCloudRetailV2alphaCompletionConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCompletionConfig < 3) {
    o.allowlistInputConfig =
        buildGoogleCloudRetailV2alphaCompletionDataInputConfig();
    o.autoLearning = true;
    o.denylistInputConfig =
        buildGoogleCloudRetailV2alphaCompletionDataInputConfig();
    o.lastAllowlistImportOperation = 'foo';
    o.lastDenylistImportOperation = 'foo';
    o.lastSuggestionsImportOperation = 'foo';
    o.matchingOrder = 'foo';
    o.maxSuggestions = 42;
    o.minPrefixLength = 42;
    o.name = 'foo';
    o.suggestionsInputConfig =
        buildGoogleCloudRetailV2alphaCompletionDataInputConfig();
  }
  buildCounterGoogleCloudRetailV2alphaCompletionConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompletionConfig(
  api.GoogleCloudRetailV2alphaCompletionConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaCompletionConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCompletionConfig < 3) {
    checkGoogleCloudRetailV2alphaCompletionDataInputConfig(
      o.allowlistInputConfig!,
    );
    unittest.expect(o.autoLearning!, unittest.isTrue);
    checkGoogleCloudRetailV2alphaCompletionDataInputConfig(
      o.denylistInputConfig!,
    );
    unittest.expect(o.lastAllowlistImportOperation!, unittest.equals('foo'));
    unittest.expect(o.lastDenylistImportOperation!, unittest.equals('foo'));
    unittest.expect(o.lastSuggestionsImportOperation!, unittest.equals('foo'));
    unittest.expect(o.matchingOrder!, unittest.equals('foo'));
    unittest.expect(o.maxSuggestions!, unittest.equals(42));
    unittest.expect(o.minPrefixLength!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaCompletionDataInputConfig(
      o.suggestionsInputConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaCompletionConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig = 0;
api.GoogleCloudRetailV2alphaCompletionDataInputConfig
buildGoogleCloudRetailV2alphaCompletionDataInputConfig() {
  final o = api.GoogleCloudRetailV2alphaCompletionDataInputConfig();
  buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2alphaBigQuerySource();
  }
  buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompletionDataInputConfig(
  api.GoogleCloudRetailV2alphaCompletionDataInputConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig < 3) {
    checkGoogleCloudRetailV2alphaBigQuerySource(o.bigQuerySource!);
  }
  buildCounterGoogleCloudRetailV2alphaCompletionDataInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaCompletionDetail = 0;
api.GoogleCloudRetailV2alphaCompletionDetail
buildGoogleCloudRetailV2alphaCompletionDetail() {
  final o = api.GoogleCloudRetailV2alphaCompletionDetail();
  buildCounterGoogleCloudRetailV2alphaCompletionDetail++;
  if (buildCounterGoogleCloudRetailV2alphaCompletionDetail < 3) {
    o.completionAttributionToken = 'foo';
    o.selectedPosition = 42;
    o.selectedSuggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaCompletionDetail--;
  return o;
}

void checkGoogleCloudRetailV2alphaCompletionDetail(
  api.GoogleCloudRetailV2alphaCompletionDetail o,
) {
  buildCounterGoogleCloudRetailV2alphaCompletionDetail++;
  if (buildCounterGoogleCloudRetailV2alphaCompletionDetail < 3) {
    unittest.expect(o.completionAttributionToken!, unittest.equals('foo'));
    unittest.expect(o.selectedPosition!, unittest.equals(42));
    unittest.expect(o.selectedSuggestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaCompletionDetail--;
}

core.List<api.GoogleCloudRetailV2alphaConditionTimeRange> buildUnnamed32() => [
  buildGoogleCloudRetailV2alphaConditionTimeRange(),
  buildGoogleCloudRetailV2alphaConditionTimeRange(),
];

void checkUnnamed32(
  core.List<api.GoogleCloudRetailV2alphaConditionTimeRange> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaConditionTimeRange(o[0]);
  checkGoogleCloudRetailV2alphaConditionTimeRange(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaConditionQueryTerm> buildUnnamed34() => [
  buildGoogleCloudRetailV2alphaConditionQueryTerm(),
  buildGoogleCloudRetailV2alphaConditionQueryTerm(),
];

void checkUnnamed34(
  core.List<api.GoogleCloudRetailV2alphaConditionQueryTerm> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaConditionQueryTerm(o[0]);
  checkGoogleCloudRetailV2alphaConditionQueryTerm(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaCondition = 0;
api.GoogleCloudRetailV2alphaCondition buildGoogleCloudRetailV2alphaCondition() {
  final o = api.GoogleCloudRetailV2alphaCondition();
  buildCounterGoogleCloudRetailV2alphaCondition++;
  if (buildCounterGoogleCloudRetailV2alphaCondition < 3) {
    o.activeTimeRange = buildUnnamed32();
    o.pageCategories = buildUnnamed33();
    o.queryTerms = buildUnnamed34();
  }
  buildCounterGoogleCloudRetailV2alphaCondition--;
  return o;
}

void checkGoogleCloudRetailV2alphaCondition(
  api.GoogleCloudRetailV2alphaCondition o,
) {
  buildCounterGoogleCloudRetailV2alphaCondition++;
  if (buildCounterGoogleCloudRetailV2alphaCondition < 3) {
    checkUnnamed32(o.activeTimeRange!);
    checkUnnamed33(o.pageCategories!);
    checkUnnamed34(o.queryTerms!);
  }
  buildCounterGoogleCloudRetailV2alphaCondition--;
}

core.int buildCounterGoogleCloudRetailV2alphaConditionQueryTerm = 0;
api.GoogleCloudRetailV2alphaConditionQueryTerm
buildGoogleCloudRetailV2alphaConditionQueryTerm() {
  final o = api.GoogleCloudRetailV2alphaConditionQueryTerm();
  buildCounterGoogleCloudRetailV2alphaConditionQueryTerm++;
  if (buildCounterGoogleCloudRetailV2alphaConditionQueryTerm < 3) {
    o.fullMatch = true;
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConditionQueryTerm--;
  return o;
}

void checkGoogleCloudRetailV2alphaConditionQueryTerm(
  api.GoogleCloudRetailV2alphaConditionQueryTerm o,
) {
  buildCounterGoogleCloudRetailV2alphaConditionQueryTerm++;
  if (buildCounterGoogleCloudRetailV2alphaConditionQueryTerm < 3) {
    unittest.expect(o.fullMatch!, unittest.isTrue);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConditionQueryTerm--;
}

core.int buildCounterGoogleCloudRetailV2alphaConditionTimeRange = 0;
api.GoogleCloudRetailV2alphaConditionTimeRange
buildGoogleCloudRetailV2alphaConditionTimeRange() {
  final o = api.GoogleCloudRetailV2alphaConditionTimeRange();
  buildCounterGoogleCloudRetailV2alphaConditionTimeRange++;
  if (buildCounterGoogleCloudRetailV2alphaConditionTimeRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConditionTimeRange--;
  return o;
}

void checkGoogleCloudRetailV2alphaConditionTimeRange(
  api.GoogleCloudRetailV2alphaConditionTimeRange o,
) {
  buildCounterGoogleCloudRetailV2alphaConditionTimeRange++;
  if (buildCounterGoogleCloudRetailV2alphaConditionTimeRange < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConditionTimeRange--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaControl = 0;
api.GoogleCloudRetailV2alphaControl buildGoogleCloudRetailV2alphaControl() {
  final o = api.GoogleCloudRetailV2alphaControl();
  buildCounterGoogleCloudRetailV2alphaControl++;
  if (buildCounterGoogleCloudRetailV2alphaControl < 3) {
    o.associatedServingConfigIds = buildUnnamed35();
    o.displayName = 'foo';
    o.facetSpec = buildGoogleCloudRetailV2alphaSearchRequestFacetSpec();
    o.name = 'foo';
    o.rule = buildGoogleCloudRetailV2alphaRule();
    o.searchSolutionUseCase = buildUnnamed36();
    o.solutionTypes = buildUnnamed37();
  }
  buildCounterGoogleCloudRetailV2alphaControl--;
  return o;
}

void checkGoogleCloudRetailV2alphaControl(
  api.GoogleCloudRetailV2alphaControl o,
) {
  buildCounterGoogleCloudRetailV2alphaControl++;
  if (buildCounterGoogleCloudRetailV2alphaControl < 3) {
    checkUnnamed35(o.associatedServingConfigIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaSearchRequestFacetSpec(o.facetSpec!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaRule(o.rule!);
    checkUnnamed36(o.searchSolutionUseCase!);
    checkUnnamed37(o.solutionTypes!);
  }
  buildCounterGoogleCloudRetailV2alphaControl--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig = 0;
api.GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig
buildGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig <
      3) {
    o.catalog = 'foo';
    o.intentClassificationConfig =
        buildGoogleCloudRetailV2alphaIntentClassificationConfig();
    o.retailerDisplayName = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(
  api.GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig <
      3) {
    unittest.expect(o.catalog!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaIntentClassificationConfig(
      o.intentClassificationConfig!,
    );
    unittest.expect(o.retailerDisplayName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaSafetySetting> buildUnnamed39() => [
  buildGoogleCloudRetailV2alphaSafetySetting(),
  buildGoogleCloudRetailV2alphaSafetySetting(),
];

void checkUnnamed39(core.List<api.GoogleCloudRetailV2alphaSafetySetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSafetySetting(o[0]);
  checkGoogleCloudRetailV2alphaSafetySetting(o[1]);
}

core.Map<core.String, core.String> buildUnnamed40() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest = 0;
api.GoogleCloudRetailV2alphaConversationalSearchRequest
buildGoogleCloudRetailV2alphaConversationalSearchRequest() {
  final o = api.GoogleCloudRetailV2alphaConversationalSearchRequest();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest < 3) {
    o.branch = 'foo';
    o.conversationId = 'foo';
    o.conversationalFilteringSpec =
        buildGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec();
    o.pageCategories = buildUnnamed38();
    o.query = 'foo';
    o.safetySettings = buildUnnamed39();
    o.searchParams =
        buildGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams();
    o.userInfo = buildGoogleCloudRetailV2alphaUserInfo();
    o.userLabels = buildUnnamed40();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchRequest(
  api.GoogleCloudRetailV2alphaConversationalSearchRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec(
      o.conversationalFilteringSpec!,
    );
    checkUnnamed38(o.pageCategories!);
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed39(o.safetySettings!);
    checkGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams(
      o.searchParams!,
    );
    checkGoogleCloudRetailV2alphaUserInfo(o.userInfo!);
    checkUnnamed40(o.userLabels!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequest--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec
buildGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec <
      3) {
    o.conversationalFilteringMode = 'foo';
    o.enableConversationalFiltering = true;
    o.userAnswer =
        buildGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec--;
  return o;
}

void
checkGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec(
  api.GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec
  o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec <
      3) {
    unittest.expect(o.conversationalFilteringMode!, unittest.equals('foo'));
    unittest.expect(o.enableConversationalFiltering!, unittest.isTrue);
    checkGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer(
      o.userAnswer!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams = 0;
api.GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams
buildGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams <
      3) {
    o.boostSpec = buildGoogleCloudRetailV2alphaSearchRequestBoostSpec();
    o.canonicalFilter = 'foo';
    o.filter = 'foo';
    o.sortBy = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams(
  api.GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams <
      3) {
    checkGoogleCloudRetailV2alphaSearchRequestBoostSpec(o.boostSpec!);
    unittest.expect(o.canonicalFilter!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.sortBy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer = 0;
api.GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer
buildGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer() {
  final o = api.GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer <
      3) {
    o.selectedAnswer =
        buildGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer();
    o.textAnswer = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer(
  api.GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer <
      3) {
    checkGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer(
      o.selectedAnswer!,
    );
    unittest.expect(o.textAnswer!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer
buildGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer(
  api.GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer <
      3) {
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer--;
}

core.List<api.GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch>
buildUnnamed41() => [
  buildGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch(),
  buildGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch(),
];

void checkUnnamed41(
  core.List<
    api.GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch(o[0]);
  checkGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch(o[1]);
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse = 0;
api.GoogleCloudRetailV2alphaConversationalSearchResponse
buildGoogleCloudRetailV2alphaConversationalSearchResponse() {
  final o = api.GoogleCloudRetailV2alphaConversationalSearchResponse();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse < 3) {
    o.conversationId = 'foo';
    o.conversationalFilteringResult =
        buildGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult();
    o.conversationalTextResponse = 'foo';
    o.followupQuestion =
        buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion();
    o.refinedSearch = buildUnnamed41();
    o.state = 'foo';
    o.userQueryTypes = buildUnnamed42();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchResponse(
  api.GoogleCloudRetailV2alphaConversationalSearchResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse < 3) {
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult(
      o.conversationalFilteringResult!,
    );
    unittest.expect(o.conversationalTextResponse!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion(
      o.followupQuestion!,
    );
    checkUnnamed41(o.refinedSearch!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed42(o.userQueryTypes!);
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponse--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult
buildGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult <
      3) {
    o.additionalFilter =
        buildGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter();
    o.followupQuestion =
        buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult--;
  return o;
}

void
checkGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult(
  api.GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult
  o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult <
      3) {
    checkGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter(
      o.additionalFilter!,
    );
    checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion(
      o.followupQuestion!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter
buildGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter--;
  return o;
}

void
checkGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter(
  api.GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter
  o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter <
      3) {
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter--;
}

core.List<
  api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
>
buildUnnamed43() => [
  buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer(),
  buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer(),
];

void checkUnnamed43(
  core.List<
    api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer(
    o[0],
  );
  checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer(
    o[1],
  );
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion
buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion <
      3) {
    o.followupQuestion = 'foo';
    o.suggestedAnswers = buildUnnamed43();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion(
  api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion <
      3) {
    unittest.expect(o.followupQuestion!, unittest.equals('foo'));
    checkUnnamed43(o.suggestedAnswers!);
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer(
  api.GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer <
      3) {
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer--;
}

core.int
buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch =
    0;
api.GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch
buildGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch() {
  final o =
      api.GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch();
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch <
      3) {
    o.query = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch--;
  return o;
}

void checkGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch(
  api.GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch o,
) {
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch++;
  if (buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch <
      3) {
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch--;
}

core.List<core.double> buildUnnamed44() => [42.0, 42.0];

void checkUnnamed44(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaCustomAttribute = 0;
api.GoogleCloudRetailV2alphaCustomAttribute
buildGoogleCloudRetailV2alphaCustomAttribute() {
  final o = api.GoogleCloudRetailV2alphaCustomAttribute();
  buildCounterGoogleCloudRetailV2alphaCustomAttribute++;
  if (buildCounterGoogleCloudRetailV2alphaCustomAttribute < 3) {
    o.indexable = true;
    o.numbers = buildUnnamed44();
    o.searchable = true;
    o.text = buildUnnamed45();
  }
  buildCounterGoogleCloudRetailV2alphaCustomAttribute--;
  return o;
}

void checkGoogleCloudRetailV2alphaCustomAttribute(
  api.GoogleCloudRetailV2alphaCustomAttribute o,
) {
  buildCounterGoogleCloudRetailV2alphaCustomAttribute++;
  if (buildCounterGoogleCloudRetailV2alphaCustomAttribute < 3) {
    unittest.expect(o.indexable!, unittest.isTrue);
    checkUnnamed44(o.numbers!);
    unittest.expect(o.searchable!, unittest.isTrue);
    checkUnnamed45(o.text!);
  }
  buildCounterGoogleCloudRetailV2alphaCustomAttribute--;
}

core.List<core.double> buildUnnamed46() => [42.0, 42.0];

void checkUnnamed46(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudRetailV2alphaDoubleList = 0;
api.GoogleCloudRetailV2alphaDoubleList
buildGoogleCloudRetailV2alphaDoubleList() {
  final o = api.GoogleCloudRetailV2alphaDoubleList();
  buildCounterGoogleCloudRetailV2alphaDoubleList++;
  if (buildCounterGoogleCloudRetailV2alphaDoubleList < 3) {
    o.values = buildUnnamed46();
  }
  buildCounterGoogleCloudRetailV2alphaDoubleList--;
  return o;
}

void checkGoogleCloudRetailV2alphaDoubleList(
  api.GoogleCloudRetailV2alphaDoubleList o,
) {
  buildCounterGoogleCloudRetailV2alphaDoubleList++;
  if (buildCounterGoogleCloudRetailV2alphaDoubleList < 3) {
    checkUnnamed46(o.values!);
  }
  buildCounterGoogleCloudRetailV2alphaDoubleList--;
}

core.int buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest = 0;
api.GoogleCloudRetailV2alphaEnrollSolutionRequest
buildGoogleCloudRetailV2alphaEnrollSolutionRequest() {
  final o = api.GoogleCloudRetailV2alphaEnrollSolutionRequest();
  buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest++;
  if (buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest < 3) {
    o.solution = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaEnrollSolutionRequest(
  api.GoogleCloudRetailV2alphaEnrollSolutionRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest++;
  if (buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest < 3) {
    unittest.expect(o.solution!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaEnrollSolutionRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaExperimentInfo = 0;
api.GoogleCloudRetailV2alphaExperimentInfo
buildGoogleCloudRetailV2alphaExperimentInfo() {
  final o = api.GoogleCloudRetailV2alphaExperimentInfo();
  buildCounterGoogleCloudRetailV2alphaExperimentInfo++;
  if (buildCounterGoogleCloudRetailV2alphaExperimentInfo < 3) {
    o.experiment = 'foo';
    o.servingConfigExperiment =
        buildGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment();
  }
  buildCounterGoogleCloudRetailV2alphaExperimentInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaExperimentInfo(
  api.GoogleCloudRetailV2alphaExperimentInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaExperimentInfo++;
  if (buildCounterGoogleCloudRetailV2alphaExperimentInfo < 3) {
    unittest.expect(o.experiment!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment(
      o.servingConfigExperiment!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaExperimentInfo--;
}

core.int
buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment = 0;
api.GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment
buildGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment() {
  final o = api.GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment();
  buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment++;
  if (buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment <
      3) {
    o.experimentServingConfig = 'foo';
    o.originalServingConfig = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment--;
  return o;
}

void checkGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment(
  api.GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment o,
) {
  buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment++;
  if (buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment <
      3) {
    unittest.expect(o.experimentServingConfig!, unittest.equals('foo'));
    unittest.expect(o.originalServingConfig!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment--;
}

core.int buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest = 0;
api.GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest
buildGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest() {
  final o = api.GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest();
  buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2alphaOutputConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest(
  api.GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaOutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaExportProductsRequest = 0;
api.GoogleCloudRetailV2alphaExportProductsRequest
buildGoogleCloudRetailV2alphaExportProductsRequest() {
  final o = api.GoogleCloudRetailV2alphaExportProductsRequest();
  buildCounterGoogleCloudRetailV2alphaExportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaExportProductsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2alphaOutputConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportProductsRequest(
  api.GoogleCloudRetailV2alphaExportProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaExportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaExportProductsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaOutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest = 0;
api.GoogleCloudRetailV2alphaExportUserEventsRequest
buildGoogleCloudRetailV2alphaExportUserEventsRequest() {
  final o = api.GoogleCloudRetailV2alphaExportUserEventsRequest();
  buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest < 3) {
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudRetailV2alphaOutputConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportUserEventsRequest(
  api.GoogleCloudRetailV2alphaExportUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaOutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportUserEventsRequest--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaFulfillmentInfo = 0;
api.GoogleCloudRetailV2alphaFulfillmentInfo
buildGoogleCloudRetailV2alphaFulfillmentInfo() {
  final o = api.GoogleCloudRetailV2alphaFulfillmentInfo();
  buildCounterGoogleCloudRetailV2alphaFulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2alphaFulfillmentInfo < 3) {
    o.placeIds = buildUnnamed47();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaFulfillmentInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaFulfillmentInfo(
  api.GoogleCloudRetailV2alphaFulfillmentInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaFulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2alphaFulfillmentInfo < 3) {
    checkUnnamed47(o.placeIds!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaFulfillmentInfo--;
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaGcsSource = 0;
api.GoogleCloudRetailV2alphaGcsSource buildGoogleCloudRetailV2alphaGcsSource() {
  final o = api.GoogleCloudRetailV2alphaGcsSource();
  buildCounterGoogleCloudRetailV2alphaGcsSource++;
  if (buildCounterGoogleCloudRetailV2alphaGcsSource < 3) {
    o.dataSchema = 'foo';
    o.inputUris = buildUnnamed48();
  }
  buildCounterGoogleCloudRetailV2alphaGcsSource--;
  return o;
}

void checkGoogleCloudRetailV2alphaGcsSource(
  api.GoogleCloudRetailV2alphaGcsSource o,
) {
  buildCounterGoogleCloudRetailV2alphaGcsSource++;
  if (buildCounterGoogleCloudRetailV2alphaGcsSource < 3) {
    unittest.expect(o.dataSchema!, unittest.equals('foo'));
    checkUnnamed48(o.inputUris!);
  }
  buildCounterGoogleCloudRetailV2alphaGcsSource--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig = 0;
api.GoogleCloudRetailV2alphaGenerativeQuestionConfig
buildGoogleCloudRetailV2alphaGenerativeQuestionConfig() {
  final o = api.GoogleCloudRetailV2alphaGenerativeQuestionConfig();
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig++;
  if (buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig < 3) {
    o.allowedInConversation = true;
    o.catalog = 'foo';
    o.exampleValues = buildUnnamed49();
    o.facet = 'foo';
    o.finalQuestion = 'foo';
    o.frequency = 42.0;
    o.generatedQuestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(
  api.GoogleCloudRetailV2alphaGenerativeQuestionConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig++;
  if (buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig < 3) {
    unittest.expect(o.allowedInConversation!, unittest.isTrue);
    unittest.expect(o.catalog!, unittest.equals('foo'));
    checkUnnamed49(o.exampleValues!);
    unittest.expect(o.facet!, unittest.equals('foo'));
    unittest.expect(o.finalQuestion!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals(42.0));
    unittest.expect(o.generatedQuestion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig =
    0;
api.GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig
buildGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig() {
  final o = api.GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig();
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig++;
  if (buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig <
      3) {
    o.catalog = 'foo';
    o.featureEnabled = true;
    o.minimumProducts = 42;
  }
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(
  api.GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig++;
  if (buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig <
      3) {
    unittest.expect(o.catalog!, unittest.equals('foo'));
    unittest.expect(o.featureEnabled!, unittest.isTrue);
    unittest.expect(o.minimumProducts!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse = 0;
api.GoogleCloudRetailV2alphaGetDefaultBranchResponse
buildGoogleCloudRetailV2alphaGetDefaultBranchResponse() {
  final o = api.GoogleCloudRetailV2alphaGetDefaultBranchResponse();
  buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse < 3) {
    o.branch = 'foo';
    o.note = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaGetDefaultBranchResponse(
  api.GoogleCloudRetailV2alphaGetDefaultBranchResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse < 3) {
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.note!, unittest.equals('foo'));
    unittest.expect(o.setTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaGetDefaultBranchResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaImage = 0;
api.GoogleCloudRetailV2alphaImage buildGoogleCloudRetailV2alphaImage() {
  final o = api.GoogleCloudRetailV2alphaImage();
  buildCounterGoogleCloudRetailV2alphaImage++;
  if (buildCounterGoogleCloudRetailV2alphaImage < 3) {
    o.height = 42;
    o.uri = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudRetailV2alphaImage--;
  return o;
}

void checkGoogleCloudRetailV2alphaImage(api.GoogleCloudRetailV2alphaImage o) {
  buildCounterGoogleCloudRetailV2alphaImage++;
  if (buildCounterGoogleCloudRetailV2alphaImage < 3) {
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaImage--;
}

core.int buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest = 0;
api.GoogleCloudRetailV2alphaImportCompletionDataRequest
buildGoogleCloudRetailV2alphaImportCompletionDataRequest() {
  final o = api.GoogleCloudRetailV2alphaImportCompletionDataRequest();
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest < 3) {
    o.inputConfig = buildGoogleCloudRetailV2alphaCompletionDataInputConfig();
    o.notificationPubsubTopic = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportCompletionDataRequest(
  api.GoogleCloudRetailV2alphaImportCompletionDataRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest < 3) {
    checkGoogleCloudRetailV2alphaCompletionDataInputConfig(o.inputConfig!);
    unittest.expect(o.notificationPubsubTopic!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaImportErrorsConfig = 0;
api.GoogleCloudRetailV2alphaImportErrorsConfig
buildGoogleCloudRetailV2alphaImportErrorsConfig() {
  final o = api.GoogleCloudRetailV2alphaImportErrorsConfig();
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2alphaImportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportErrorsConfig(
  api.GoogleCloudRetailV2alphaImportErrorsConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2alphaImportErrorsConfig < 3) {
    unittest.expect(o.gcsPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaImportProductsRequest = 0;
api.GoogleCloudRetailV2alphaImportProductsRequest
buildGoogleCloudRetailV2alphaImportProductsRequest() {
  final o = api.GoogleCloudRetailV2alphaImportProductsRequest();
  buildCounterGoogleCloudRetailV2alphaImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaImportProductsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2alphaImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2alphaProductInputConfig();
    o.notificationPubsubTopic = 'foo';
    o.reconciliationMode = 'foo';
    o.requestId = 'foo';
    o.skipDefaultBranchProtection = true;
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaImportProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportProductsRequest(
  api.GoogleCloudRetailV2alphaImportProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaImportProductsRequest < 3) {
    checkGoogleCloudRetailV2alphaImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2alphaProductInputConfig(o.inputConfig!);
    unittest.expect(o.notificationPubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.reconciliationMode!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.skipDefaultBranchProtection!, unittest.isTrue);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaImportProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest = 0;
api.GoogleCloudRetailV2alphaImportUserEventsRequest
buildGoogleCloudRetailV2alphaImportUserEventsRequest() {
  final o = api.GoogleCloudRetailV2alphaImportUserEventsRequest();
  buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2alphaImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2alphaUserEventInputConfig();
  }
  buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportUserEventsRequest(
  api.GoogleCloudRetailV2alphaImportUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest < 3) {
    checkGoogleCloudRetailV2alphaImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2alphaUserEventInputConfig(o.inputConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaImportUserEventsRequest--;
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaIntentClassificationConfigExample>
buildUnnamed52() => [
  buildGoogleCloudRetailV2alphaIntentClassificationConfigExample(),
  buildGoogleCloudRetailV2alphaIntentClassificationConfigExample(),
];

void checkUnnamed52(
  core.List<api.GoogleCloudRetailV2alphaIntentClassificationConfigExample> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaIntentClassificationConfigExample(o[0]);
  checkGoogleCloudRetailV2alphaIntentClassificationConfigExample(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig = 0;
api.GoogleCloudRetailV2alphaIntentClassificationConfig
buildGoogleCloudRetailV2alphaIntentClassificationConfig() {
  final o = api.GoogleCloudRetailV2alphaIntentClassificationConfig();
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig < 3) {
    o.blocklistKeywords = buildUnnamed50();
    o.disabledIntentTypes = buildUnnamed51();
    o.example = buildUnnamed52();
    o.inlineSource =
        buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource();
    o.modelPreamble = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaIntentClassificationConfig(
  api.GoogleCloudRetailV2alphaIntentClassificationConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig < 3) {
    checkUnnamed50(o.blocklistKeywords!);
    checkUnnamed51(o.disabledIntentTypes!);
    checkUnnamed52(o.example!);
    checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource(
      o.inlineSource!,
    );
    unittest.expect(o.modelPreamble!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample =
    0;
api.GoogleCloudRetailV2alphaIntentClassificationConfigExample
buildGoogleCloudRetailV2alphaIntentClassificationConfigExample() {
  final o = api.GoogleCloudRetailV2alphaIntentClassificationConfigExample();
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample <
      3) {
    o.classifiedPositive = true;
    o.intentType = 'foo';
    o.query = 'foo';
    o.reason = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample--;
  return o;
}

void checkGoogleCloudRetailV2alphaIntentClassificationConfigExample(
  api.GoogleCloudRetailV2alphaIntentClassificationConfigExample o,
) {
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample <
      3) {
    unittest.expect(o.classifiedPositive!, unittest.isTrue);
    unittest.expect(o.intentType!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigExample--;
}

core.int
buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent =
    0;
api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent
buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent() {
  final o =
      api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent();
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent <
      3) {
    o.intentType = 'foo';
    o.operation = 'foo';
    o.query = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent--;
  return o;
}

void checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent(
  api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent o,
) {
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent <
      3) {
    unittest.expect(o.intentType!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent--;
}

core.List<
  api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent
>
buildUnnamed53() => [
  buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent(),
  buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent(),
];

void checkUnnamed53(
  core.List<
    api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent(
    o[0],
  );
  checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent(
    o[1],
  );
}

core.int
buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource = 0;
api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource
buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource() {
  final o =
      api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource();
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource <
      3) {
    o.inlineForceIntents = buildUnnamed53();
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource(
  api.GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource o,
) {
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource++;
  if (buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource <
      3) {
    checkUnnamed53(o.inlineForceIntents!);
  }
  buildCounterGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2alphaInterval = 0;
api.GoogleCloudRetailV2alphaInterval buildGoogleCloudRetailV2alphaInterval() {
  final o = api.GoogleCloudRetailV2alphaInterval();
  buildCounterGoogleCloudRetailV2alphaInterval++;
  if (buildCounterGoogleCloudRetailV2alphaInterval < 3) {
    o.exclusiveMaximum = 42.0;
    o.exclusiveMinimum = 42.0;
    o.maximum = 42.0;
    o.minimum = 42.0;
  }
  buildCounterGoogleCloudRetailV2alphaInterval--;
  return o;
}

void checkGoogleCloudRetailV2alphaInterval(
  api.GoogleCloudRetailV2alphaInterval o,
) {
  buildCounterGoogleCloudRetailV2alphaInterval++;
  if (buildCounterGoogleCloudRetailV2alphaInterval < 3) {
    unittest.expect(o.exclusiveMaximum!, unittest.equals(42.0));
    unittest.expect(o.exclusiveMinimum!, unittest.equals(42.0));
    unittest.expect(o.maximum!, unittest.equals(42.0));
    unittest.expect(o.minimum!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRetailV2alphaInterval--;
}

core.List<api.GoogleCloudRetailV2alphaBranch> buildUnnamed54() => [
  buildGoogleCloudRetailV2alphaBranch(),
  buildGoogleCloudRetailV2alphaBranch(),
];

void checkUnnamed54(core.List<api.GoogleCloudRetailV2alphaBranch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaBranch(o[0]);
  checkGoogleCloudRetailV2alphaBranch(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaListBranchesResponse = 0;
api.GoogleCloudRetailV2alphaListBranchesResponse
buildGoogleCloudRetailV2alphaListBranchesResponse() {
  final o = api.GoogleCloudRetailV2alphaListBranchesResponse();
  buildCounterGoogleCloudRetailV2alphaListBranchesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListBranchesResponse < 3) {
    o.branches = buildUnnamed54();
  }
  buildCounterGoogleCloudRetailV2alphaListBranchesResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListBranchesResponse(
  api.GoogleCloudRetailV2alphaListBranchesResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListBranchesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListBranchesResponse < 3) {
    checkUnnamed54(o.branches!);
  }
  buildCounterGoogleCloudRetailV2alphaListBranchesResponse--;
}

core.List<api.GoogleCloudRetailV2alphaCatalog> buildUnnamed55() => [
  buildGoogleCloudRetailV2alphaCatalog(),
  buildGoogleCloudRetailV2alphaCatalog(),
];

void checkUnnamed55(core.List<api.GoogleCloudRetailV2alphaCatalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCatalog(o[0]);
  checkGoogleCloudRetailV2alphaCatalog(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaListCatalogsResponse = 0;
api.GoogleCloudRetailV2alphaListCatalogsResponse
buildGoogleCloudRetailV2alphaListCatalogsResponse() {
  final o = api.GoogleCloudRetailV2alphaListCatalogsResponse();
  buildCounterGoogleCloudRetailV2alphaListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListCatalogsResponse < 3) {
    o.catalogs = buildUnnamed55();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaListCatalogsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListCatalogsResponse(
  api.GoogleCloudRetailV2alphaListCatalogsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListCatalogsResponse < 3) {
    checkUnnamed55(o.catalogs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaListCatalogsResponse--;
}

core.List<api.GoogleCloudRetailV2alphaControl> buildUnnamed56() => [
  buildGoogleCloudRetailV2alphaControl(),
  buildGoogleCloudRetailV2alphaControl(),
];

void checkUnnamed56(core.List<api.GoogleCloudRetailV2alphaControl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaControl(o[0]);
  checkGoogleCloudRetailV2alphaControl(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaListControlsResponse = 0;
api.GoogleCloudRetailV2alphaListControlsResponse
buildGoogleCloudRetailV2alphaListControlsResponse() {
  final o = api.GoogleCloudRetailV2alphaListControlsResponse();
  buildCounterGoogleCloudRetailV2alphaListControlsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListControlsResponse < 3) {
    o.controls = buildUnnamed56();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaListControlsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListControlsResponse(
  api.GoogleCloudRetailV2alphaListControlsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListControlsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListControlsResponse < 3) {
    checkUnnamed56(o.controls!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaListControlsResponse--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse = 0;
api.GoogleCloudRetailV2alphaListEnrolledSolutionsResponse
buildGoogleCloudRetailV2alphaListEnrolledSolutionsResponse() {
  final o = api.GoogleCloudRetailV2alphaListEnrolledSolutionsResponse();
  buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse < 3) {
    o.enrolledSolutions = buildUnnamed57();
  }
  buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListEnrolledSolutionsResponse(
  api.GoogleCloudRetailV2alphaListEnrolledSolutionsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse < 3) {
    checkUnnamed57(o.enrolledSolutions!);
  }
  buildCounterGoogleCloudRetailV2alphaListEnrolledSolutionsResponse--;
}

core.List<api.GoogleCloudRetailV2alphaGenerativeQuestionConfig>
buildUnnamed58() => [
  buildGoogleCloudRetailV2alphaGenerativeQuestionConfig(),
  buildGoogleCloudRetailV2alphaGenerativeQuestionConfig(),
];

void checkUnnamed58(
  core.List<api.GoogleCloudRetailV2alphaGenerativeQuestionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(o[0]);
  checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse = 0;
api.GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse
buildGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse() {
  final o = api.GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse();
  buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse <
      3) {
    o.generativeQuestionConfigs = buildUnnamed58();
  }
  buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse(
  api.GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse <
      3) {
    checkUnnamed58(o.generativeQuestionConfigs!);
  }
  buildCounterGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse--;
}

core.List<api.GoogleCloudRetailV2alphaMerchantCenterAccountLink>
buildUnnamed59() => [
  buildGoogleCloudRetailV2alphaMerchantCenterAccountLink(),
  buildGoogleCloudRetailV2alphaMerchantCenterAccountLink(),
];

void checkUnnamed59(
  core.List<api.GoogleCloudRetailV2alphaMerchantCenterAccountLink> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaMerchantCenterAccountLink(o[0]);
  checkGoogleCloudRetailV2alphaMerchantCenterAccountLink(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse = 0;
api.GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse
buildGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse() {
  final o =
      api.GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse();
  buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse <
      3) {
    o.merchantCenterAccountLinks = buildUnnamed59();
  }
  buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse(
  api.GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse <
      3) {
    checkUnnamed59(o.merchantCenterAccountLinks!);
  }
  buildCounterGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse--;
}

core.List<api.GoogleCloudRetailV2alphaModel> buildUnnamed60() => [
  buildGoogleCloudRetailV2alphaModel(),
  buildGoogleCloudRetailV2alphaModel(),
];

void checkUnnamed60(core.List<api.GoogleCloudRetailV2alphaModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaModel(o[0]);
  checkGoogleCloudRetailV2alphaModel(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaListModelsResponse = 0;
api.GoogleCloudRetailV2alphaListModelsResponse
buildGoogleCloudRetailV2alphaListModelsResponse() {
  final o = api.GoogleCloudRetailV2alphaListModelsResponse();
  buildCounterGoogleCloudRetailV2alphaListModelsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListModelsResponse < 3) {
    o.models = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaListModelsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListModelsResponse(
  api.GoogleCloudRetailV2alphaListModelsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListModelsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListModelsResponse < 3) {
    checkUnnamed60(o.models!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaListModelsResponse--;
}

core.List<api.GoogleCloudRetailV2alphaProduct> buildUnnamed61() => [
  buildGoogleCloudRetailV2alphaProduct(),
  buildGoogleCloudRetailV2alphaProduct(),
];

void checkUnnamed61(core.List<api.GoogleCloudRetailV2alphaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProduct(o[0]);
  checkGoogleCloudRetailV2alphaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaListProductsResponse = 0;
api.GoogleCloudRetailV2alphaListProductsResponse
buildGoogleCloudRetailV2alphaListProductsResponse() {
  final o = api.GoogleCloudRetailV2alphaListProductsResponse();
  buildCounterGoogleCloudRetailV2alphaListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed61();
    o.totalSize = 42;
  }
  buildCounterGoogleCloudRetailV2alphaListProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListProductsResponse(
  api.GoogleCloudRetailV2alphaListProductsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListProductsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed61(o.products!);
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaListProductsResponse--;
}

core.List<api.GoogleCloudRetailV2alphaServingConfig> buildUnnamed62() => [
  buildGoogleCloudRetailV2alphaServingConfig(),
  buildGoogleCloudRetailV2alphaServingConfig(),
];

void checkUnnamed62(core.List<api.GoogleCloudRetailV2alphaServingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaServingConfig(o[0]);
  checkGoogleCloudRetailV2alphaServingConfig(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse = 0;
api.GoogleCloudRetailV2alphaListServingConfigsResponse
buildGoogleCloudRetailV2alphaListServingConfigsResponse() {
  final o = api.GoogleCloudRetailV2alphaListServingConfigsResponse();
  buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.servingConfigs = buildUnnamed62();
  }
  buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaListServingConfigsResponse(
  api.GoogleCloudRetailV2alphaListServingConfigsResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed62(o.servingConfigs!);
  }
  buildCounterGoogleCloudRetailV2alphaListServingConfigsResponse--;
}

core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute>
buildUnnamed63() => {
  'x': buildGoogleCloudRetailV2alphaCustomAttribute(),
  'y': buildGoogleCloudRetailV2alphaCustomAttribute(),
};

void checkUnnamed63(
  core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2alphaCustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaLocalInventory = 0;
api.GoogleCloudRetailV2alphaLocalInventory
buildGoogleCloudRetailV2alphaLocalInventory() {
  final o = api.GoogleCloudRetailV2alphaLocalInventory();
  buildCounterGoogleCloudRetailV2alphaLocalInventory++;
  if (buildCounterGoogleCloudRetailV2alphaLocalInventory < 3) {
    o.attributes = buildUnnamed63();
    o.availability = 'foo';
    o.fulfillmentTypes = buildUnnamed64();
    o.placeId = 'foo';
    o.priceInfo = buildGoogleCloudRetailV2alphaPriceInfo();
  }
  buildCounterGoogleCloudRetailV2alphaLocalInventory--;
  return o;
}

void checkGoogleCloudRetailV2alphaLocalInventory(
  api.GoogleCloudRetailV2alphaLocalInventory o,
) {
  buildCounterGoogleCloudRetailV2alphaLocalInventory++;
  if (buildCounterGoogleCloudRetailV2alphaLocalInventory < 3) {
    checkUnnamed63(o.attributes!);
    unittest.expect(o.availability!, unittest.equals('foo'));
    checkUnnamed64(o.fulfillmentTypes!);
    unittest.expect(o.placeId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaPriceInfo(o.priceInfo!);
  }
  buildCounterGoogleCloudRetailV2alphaLocalInventory--;
}

core.List<api.GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule>
buildUnnamed65() => [
  buildGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule(),
  buildGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule(),
];

void checkUnnamed65(
  core.List<api.GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule(o[0]);
  checkGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaLoggingConfig = 0;
api.GoogleCloudRetailV2alphaLoggingConfig
buildGoogleCloudRetailV2alphaLoggingConfig() {
  final o = api.GoogleCloudRetailV2alphaLoggingConfig();
  buildCounterGoogleCloudRetailV2alphaLoggingConfig++;
  if (buildCounterGoogleCloudRetailV2alphaLoggingConfig < 3) {
    o.defaultLogGenerationRule =
        buildGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule();
    o.name = 'foo';
    o.serviceLogGenerationRules = buildUnnamed65();
  }
  buildCounterGoogleCloudRetailV2alphaLoggingConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaLoggingConfig(
  api.GoogleCloudRetailV2alphaLoggingConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaLoggingConfig++;
  if (buildCounterGoogleCloudRetailV2alphaLoggingConfig < 3) {
    checkGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule(
      o.defaultLogGenerationRule!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed65(o.serviceLogGenerationRules!);
  }
  buildCounterGoogleCloudRetailV2alphaLoggingConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule = 0;
api.GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule
buildGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule() {
  final o = api.GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule();
  buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule++;
  if (buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule < 3) {
    o.infoLogSampleRate = 42.0;
    o.loggingLevel = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule--;
  return o;
}

void checkGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule(
  api.GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule o,
) {
  buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule++;
  if (buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule < 3) {
    unittest.expect(o.infoLogSampleRate!, unittest.equals(42.0));
    unittest.expect(o.loggingLevel!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule--;
}

core.int
buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule = 0;
api.GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule
buildGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule() {
  final o = api.GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule();
  buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule++;
  if (buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule <
      3) {
    o.logGenerationRule =
        buildGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule();
    o.serviceName = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule--;
  return o;
}

void checkGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule(
  api.GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule o,
) {
  buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule++;
  if (buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule <
      3) {
    checkGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule(
      o.logGenerationRule!,
    );
    unittest.expect(o.serviceName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule--;
}

core.List<
  api.GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
>
buildUnnamed66() => [
  buildGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter(),
  buildGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter(),
];

void checkUnnamed66(
  core.List<
    api.GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter(
    o[0],
  );
  checkGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter(
    o[1],
  );
}

core.int buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink = 0;
api.GoogleCloudRetailV2alphaMerchantCenterAccountLink
buildGoogleCloudRetailV2alphaMerchantCenterAccountLink() {
  final o = api.GoogleCloudRetailV2alphaMerchantCenterAccountLink();
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink < 3) {
    o.branchId = 'foo';
    o.feedFilters = buildUnnamed66();
    o.feedLabel = 'foo';
    o.id = 'foo';
    o.languageCode = 'foo';
    o.merchantCenterAccountId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.source = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink--;
  return o;
}

void checkGoogleCloudRetailV2alphaMerchantCenterAccountLink(
  api.GoogleCloudRetailV2alphaMerchantCenterAccountLink o,
) {
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink < 3) {
    unittest.expect(o.branchId!, unittest.equals('foo'));
    checkUnnamed66(o.feedFilters!);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.merchantCenterAccountId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLink--;
}

core.int
buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter =
    0;
api.GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
buildGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter() {
  final o =
      api.GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter();
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter <
      3) {
    o.dataSourceId = 'foo';
    o.primaryFeedId = 'foo';
    o.primaryFeedName = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter--;
  return o;
}

void
checkGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter(
  api.GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter
  o,
) {
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter <
      3) {
    unittest.expect(o.dataSourceId!, unittest.equals('foo'));
    unittest.expect(o.primaryFeedId!, unittest.equals('foo'));
    unittest.expect(o.primaryFeedName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter--;
}

core.int buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter = 0;
api.GoogleCloudRetailV2alphaMerchantCenterFeedFilter
buildGoogleCloudRetailV2alphaMerchantCenterFeedFilter() {
  final o = api.GoogleCloudRetailV2alphaMerchantCenterFeedFilter();
  buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter < 3) {
    o.dataSourceId = 'foo';
    o.primaryFeedId = 'foo';
    o.primaryFeedName = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter--;
  return o;
}

void checkGoogleCloudRetailV2alphaMerchantCenterFeedFilter(
  api.GoogleCloudRetailV2alphaMerchantCenterFeedFilter o,
) {
  buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter < 3) {
    unittest.expect(o.dataSourceId!, unittest.equals('foo'));
    unittest.expect(o.primaryFeedId!, unittest.equals('foo'));
    unittest.expect(o.primaryFeedName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterFeedFilter--;
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaMerchantCenterFeedFilter>
buildUnnamed68() => [
  buildGoogleCloudRetailV2alphaMerchantCenterFeedFilter(),
  buildGoogleCloudRetailV2alphaMerchantCenterFeedFilter(),
];

void checkUnnamed68(
  core.List<api.GoogleCloudRetailV2alphaMerchantCenterFeedFilter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaMerchantCenterFeedFilter(o[0]);
  checkGoogleCloudRetailV2alphaMerchantCenterFeedFilter(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaMerchantCenterLink = 0;
api.GoogleCloudRetailV2alphaMerchantCenterLink
buildGoogleCloudRetailV2alphaMerchantCenterLink() {
  final o = api.GoogleCloudRetailV2alphaMerchantCenterLink();
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLink++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterLink < 3) {
    o.branchId = 'foo';
    o.destinations = buildUnnamed67();
    o.feeds = buildUnnamed68();
    o.languageCode = 'foo';
    o.merchantCenterAccountId = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLink--;
  return o;
}

void checkGoogleCloudRetailV2alphaMerchantCenterLink(
  api.GoogleCloudRetailV2alphaMerchantCenterLink o,
) {
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLink++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterLink < 3) {
    unittest.expect(o.branchId!, unittest.equals('foo'));
    checkUnnamed67(o.destinations!);
    checkUnnamed68(o.feeds!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.merchantCenterAccountId!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLink--;
}

core.List<api.GoogleCloudRetailV2alphaMerchantCenterLink> buildUnnamed69() => [
  buildGoogleCloudRetailV2alphaMerchantCenterLink(),
  buildGoogleCloudRetailV2alphaMerchantCenterLink(),
];

void checkUnnamed69(
  core.List<api.GoogleCloudRetailV2alphaMerchantCenterLink> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaMerchantCenterLink(o[0]);
  checkGoogleCloudRetailV2alphaMerchantCenterLink(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig = 0;
api.GoogleCloudRetailV2alphaMerchantCenterLinkingConfig
buildGoogleCloudRetailV2alphaMerchantCenterLinkingConfig() {
  final o = api.GoogleCloudRetailV2alphaMerchantCenterLinkingConfig();
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig < 3) {
    o.links = buildUnnamed69();
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaMerchantCenterLinkingConfig(
  api.GoogleCloudRetailV2alphaMerchantCenterLinkingConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig++;
  if (buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig < 3) {
    checkUnnamed69(o.links!);
  }
  buildCounterGoogleCloudRetailV2alphaMerchantCenterLinkingConfig--;
}

core.List<api.GoogleCloudRetailV2alphaModelServingConfigList>
buildUnnamed70() => [
  buildGoogleCloudRetailV2alphaModelServingConfigList(),
  buildGoogleCloudRetailV2alphaModelServingConfigList(),
];

void checkUnnamed70(
  core.List<api.GoogleCloudRetailV2alphaModelServingConfigList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaModelServingConfigList(o[0]);
  checkGoogleCloudRetailV2alphaModelServingConfigList(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaModel = 0;
api.GoogleCloudRetailV2alphaModel buildGoogleCloudRetailV2alphaModel() {
  final o = api.GoogleCloudRetailV2alphaModel();
  buildCounterGoogleCloudRetailV2alphaModel++;
  if (buildCounterGoogleCloudRetailV2alphaModel < 3) {
    o.createTime = 'foo';
    o.dataState = 'foo';
    o.displayName = 'foo';
    o.filteringOption = 'foo';
    o.lastTuneTime = 'foo';
    o.modelFeaturesConfig =
        buildGoogleCloudRetailV2alphaModelModelFeaturesConfig();
    o.name = 'foo';
    o.optimizationObjective = 'foo';
    o.pageOptimizationConfig =
        buildGoogleCloudRetailV2alphaModelPageOptimizationConfig();
    o.periodicTuningState = 'foo';
    o.servingConfigLists = buildUnnamed70();
    o.servingState = 'foo';
    o.trainingState = 'foo';
    o.tuningOperation = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaModel--;
  return o;
}

void checkGoogleCloudRetailV2alphaModel(api.GoogleCloudRetailV2alphaModel o) {
  buildCounterGoogleCloudRetailV2alphaModel++;
  if (buildCounterGoogleCloudRetailV2alphaModel < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dataState!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filteringOption!, unittest.equals('foo'));
    unittest.expect(o.lastTuneTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaModelModelFeaturesConfig(
      o.modelFeaturesConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.optimizationObjective!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaModelPageOptimizationConfig(
      o.pageOptimizationConfig!,
    );
    unittest.expect(o.periodicTuningState!, unittest.equals('foo'));
    checkUnnamed70(o.servingConfigLists!);
    unittest.expect(o.servingState!, unittest.equals('foo'));
    unittest.expect(o.trainingState!, unittest.equals('foo'));
    unittest.expect(o.tuningOperation!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaModel--;
}

core.int
buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig =
    0;
api.GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig
buildGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig() {
  final o =
      api.GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig();
  buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig <
      3) {
    o.contextProductsType = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig(
  api.GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig <
      3) {
    unittest.expect(o.contextProductsType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig = 0;
api.GoogleCloudRetailV2alphaModelModelFeaturesConfig
buildGoogleCloudRetailV2alphaModelModelFeaturesConfig() {
  final o = api.GoogleCloudRetailV2alphaModelModelFeaturesConfig();
  buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig < 3) {
    o.frequentlyBoughtTogetherConfig =
        buildGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig();
  }
  buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaModelModelFeaturesConfig(
  api.GoogleCloudRetailV2alphaModelModelFeaturesConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig++;
  if (buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig < 3) {
    checkGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig(
      o.frequentlyBoughtTogetherConfig!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaModelModelFeaturesConfig--;
}

core.List<api.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>
buildUnnamed71() => [
  buildGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(),
  buildGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(),
];

void checkUnnamed71(
  core.List<api.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(o[0]);
  checkGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig = 0;
api.GoogleCloudRetailV2alphaModelPageOptimizationConfig
buildGoogleCloudRetailV2alphaModelPageOptimizationConfig() {
  final o = api.GoogleCloudRetailV2alphaModelPageOptimizationConfig();
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig++;
  if (buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig < 3) {
    o.pageOptimizationEventType = 'foo';
    o.panels = buildUnnamed71();
    o.restriction = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaModelPageOptimizationConfig(
  api.GoogleCloudRetailV2alphaModelPageOptimizationConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig++;
  if (buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig < 3) {
    unittest.expect(o.pageOptimizationEventType!, unittest.equals('foo'));
    checkUnnamed71(o.panels!);
    unittest.expect(o.restriction!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfig--;
}

core.int
buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate = 0;
api.GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate
buildGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate() {
  final o = api.GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate();
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate++;
  if (buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate <
      3) {
    o.servingConfigId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate--;
  return o;
}

void checkGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(
  api.GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate o,
) {
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate++;
  if (buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate <
      3) {
    unittest.expect(o.servingConfigId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate--;
}

core.List<api.GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>
buildUnnamed72() => [
  buildGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(),
  buildGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(),
];

void checkUnnamed72(
  core.List<api.GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(o[0]);
  checkGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel =
    0;
api.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel
buildGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel() {
  final o = api.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel();
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel++;
  if (buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel <
      3) {
    o.candidates = buildUnnamed72();
    o.defaultCandidate =
        buildGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate();
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel--;
  return o;
}

void checkGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(
  api.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel o,
) {
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel++;
  if (buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel <
      3) {
    checkUnnamed72(o.candidates!);
    checkGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(
      o.defaultCandidate!,
    );
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel--;
}

core.List<core.String> buildUnnamed73() => ['foo', 'foo'];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaModelServingConfigList = 0;
api.GoogleCloudRetailV2alphaModelServingConfigList
buildGoogleCloudRetailV2alphaModelServingConfigList() {
  final o = api.GoogleCloudRetailV2alphaModelServingConfigList();
  buildCounterGoogleCloudRetailV2alphaModelServingConfigList++;
  if (buildCounterGoogleCloudRetailV2alphaModelServingConfigList < 3) {
    o.servingConfigIds = buildUnnamed73();
  }
  buildCounterGoogleCloudRetailV2alphaModelServingConfigList--;
  return o;
}

void checkGoogleCloudRetailV2alphaModelServingConfigList(
  api.GoogleCloudRetailV2alphaModelServingConfigList o,
) {
  buildCounterGoogleCloudRetailV2alphaModelServingConfigList++;
  if (buildCounterGoogleCloudRetailV2alphaModelServingConfigList < 3) {
    checkUnnamed73(o.servingConfigIds!);
  }
  buildCounterGoogleCloudRetailV2alphaModelServingConfigList--;
}

core.int buildCounterGoogleCloudRetailV2alphaOutputConfig = 0;
api.GoogleCloudRetailV2alphaOutputConfig
buildGoogleCloudRetailV2alphaOutputConfig() {
  final o = api.GoogleCloudRetailV2alphaOutputConfig();
  buildCounterGoogleCloudRetailV2alphaOutputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaOutputConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudRetailV2alphaOutputConfigBigQueryDestination();
    o.gcsDestination =
        buildGoogleCloudRetailV2alphaOutputConfigGcsDestination();
  }
  buildCounterGoogleCloudRetailV2alphaOutputConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaOutputConfig(
  api.GoogleCloudRetailV2alphaOutputConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaOutputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaOutputConfig < 3) {
    checkGoogleCloudRetailV2alphaOutputConfigBigQueryDestination(
      o.bigqueryDestination!,
    );
    checkGoogleCloudRetailV2alphaOutputConfigGcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudRetailV2alphaOutputConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination =
    0;
api.GoogleCloudRetailV2alphaOutputConfigBigQueryDestination
buildGoogleCloudRetailV2alphaOutputConfigBigQueryDestination() {
  final o = api.GoogleCloudRetailV2alphaOutputConfigBigQueryDestination();
  buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination < 3) {
    o.datasetId = 'foo';
    o.tableIdPrefix = 'foo';
    o.tableType = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination--;
  return o;
}

void checkGoogleCloudRetailV2alphaOutputConfigBigQueryDestination(
  api.GoogleCloudRetailV2alphaOutputConfigBigQueryDestination o,
) {
  buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination++;
  if (buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination < 3) {
    unittest.expect(o.datasetId!, unittest.equals('foo'));
    unittest.expect(o.tableIdPrefix!, unittest.equals('foo'));
    unittest.expect(o.tableType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaOutputConfigBigQueryDestination--;
}

core.int buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination = 0;
api.GoogleCloudRetailV2alphaOutputConfigGcsDestination
buildGoogleCloudRetailV2alphaOutputConfigGcsDestination() {
  final o = api.GoogleCloudRetailV2alphaOutputConfigGcsDestination();
  buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination++;
  if (buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination < 3) {
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination--;
  return o;
}

void checkGoogleCloudRetailV2alphaOutputConfigGcsDestination(
  api.GoogleCloudRetailV2alphaOutputConfigGcsDestination o,
) {
  buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination++;
  if (buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination < 3) {
    unittest.expect(o.outputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaOutputConfigGcsDestination--;
}

core.List<api.GoogleCloudRetailV2alphaProductDetail> buildUnnamed74() => [
  buildGoogleCloudRetailV2alphaProductDetail(),
  buildGoogleCloudRetailV2alphaProductDetail(),
];

void checkUnnamed74(core.List<api.GoogleCloudRetailV2alphaProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProductDetail(o[0]);
  checkGoogleCloudRetailV2alphaProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaPanelInfo = 0;
api.GoogleCloudRetailV2alphaPanelInfo buildGoogleCloudRetailV2alphaPanelInfo() {
  final o = api.GoogleCloudRetailV2alphaPanelInfo();
  buildCounterGoogleCloudRetailV2alphaPanelInfo++;
  if (buildCounterGoogleCloudRetailV2alphaPanelInfo < 3) {
    o.attributionToken = 'foo';
    o.displayName = 'foo';
    o.panelId = 'foo';
    o.panelPosition = 42;
    o.productDetails = buildUnnamed74();
    o.totalPanels = 42;
  }
  buildCounterGoogleCloudRetailV2alphaPanelInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaPanelInfo(
  api.GoogleCloudRetailV2alphaPanelInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaPanelInfo++;
  if (buildCounterGoogleCloudRetailV2alphaPanelInfo < 3) {
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.panelId!, unittest.equals('foo'));
    unittest.expect(o.panelPosition!, unittest.equals(42));
    checkUnnamed74(o.productDetails!);
    unittest.expect(o.totalPanels!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaPanelInfo--;
}

core.int buildCounterGoogleCloudRetailV2alphaPauseModelRequest = 0;
api.GoogleCloudRetailV2alphaPauseModelRequest
buildGoogleCloudRetailV2alphaPauseModelRequest() {
  final o = api.GoogleCloudRetailV2alphaPauseModelRequest();
  buildCounterGoogleCloudRetailV2alphaPauseModelRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPauseModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaPauseModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaPauseModelRequest(
  api.GoogleCloudRetailV2alphaPauseModelRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaPauseModelRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPauseModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaPauseModelRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2alphaPinControlMetadataProductPins>
buildUnnamed75() => {
  'x': buildGoogleCloudRetailV2alphaPinControlMetadataProductPins(),
  'y': buildGoogleCloudRetailV2alphaPinControlMetadataProductPins(),
};

void checkUnnamed75(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2alphaPinControlMetadataProductPins
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaPinControlMetadataProductPins(o['x']!);
  checkGoogleCloudRetailV2alphaPinControlMetadataProductPins(o['y']!);
}

core.Map<core.String, api.GoogleCloudRetailV2alphaPinControlMetadataProductPins>
buildUnnamed76() => {
  'x': buildGoogleCloudRetailV2alphaPinControlMetadataProductPins(),
  'y': buildGoogleCloudRetailV2alphaPinControlMetadataProductPins(),
};

void checkUnnamed76(
  core.Map<
    core.String,
    api.GoogleCloudRetailV2alphaPinControlMetadataProductPins
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaPinControlMetadataProductPins(o['x']!);
  checkGoogleCloudRetailV2alphaPinControlMetadataProductPins(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2alphaPinControlMetadata = 0;
api.GoogleCloudRetailV2alphaPinControlMetadata
buildGoogleCloudRetailV2alphaPinControlMetadata() {
  final o = api.GoogleCloudRetailV2alphaPinControlMetadata();
  buildCounterGoogleCloudRetailV2alphaPinControlMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaPinControlMetadata < 3) {
    o.allMatchedPins = buildUnnamed75();
    o.droppedPins = buildUnnamed76();
  }
  buildCounterGoogleCloudRetailV2alphaPinControlMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaPinControlMetadata(
  api.GoogleCloudRetailV2alphaPinControlMetadata o,
) {
  buildCounterGoogleCloudRetailV2alphaPinControlMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaPinControlMetadata < 3) {
    checkUnnamed75(o.allMatchedPins!);
    checkUnnamed76(o.droppedPins!);
  }
  buildCounterGoogleCloudRetailV2alphaPinControlMetadata--;
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins = 0;
api.GoogleCloudRetailV2alphaPinControlMetadataProductPins
buildGoogleCloudRetailV2alphaPinControlMetadataProductPins() {
  final o = api.GoogleCloudRetailV2alphaPinControlMetadataProductPins();
  buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins++;
  if (buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins < 3) {
    o.productId = buildUnnamed77();
  }
  buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins--;
  return o;
}

void checkGoogleCloudRetailV2alphaPinControlMetadataProductPins(
  api.GoogleCloudRetailV2alphaPinControlMetadataProductPins o,
) {
  buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins++;
  if (buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins < 3) {
    checkUnnamed77(o.productId!);
  }
  buildCounterGoogleCloudRetailV2alphaPinControlMetadataProductPins--;
}

core.Map<core.String, core.String> buildUnnamed78() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed78(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed79() => {
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

void checkUnnamed79(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2alphaPredictRequest = 0;
api.GoogleCloudRetailV2alphaPredictRequest
buildGoogleCloudRetailV2alphaPredictRequest() {
  final o = api.GoogleCloudRetailV2alphaPredictRequest();
  buildCounterGoogleCloudRetailV2alphaPredictRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPredictRequest < 3) {
    o.filter = 'foo';
    o.labels = buildUnnamed78();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed79();
    o.userEvent = buildGoogleCloudRetailV2alphaUserEvent();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2alphaPredictRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaPredictRequest(
  api.GoogleCloudRetailV2alphaPredictRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaPredictRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPredictRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed78(o.labels!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkUnnamed79(o.params!);
    checkGoogleCloudRetailV2alphaUserEvent(o.userEvent!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaPredictRequest--;
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaPredictResponsePredictionResult>
buildUnnamed81() => [
  buildGoogleCloudRetailV2alphaPredictResponsePredictionResult(),
  buildGoogleCloudRetailV2alphaPredictResponsePredictionResult(),
];

void checkUnnamed81(
  core.List<api.GoogleCloudRetailV2alphaPredictResponsePredictionResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaPredictResponsePredictionResult(o[0]);
  checkGoogleCloudRetailV2alphaPredictResponsePredictionResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaPredictResponse = 0;
api.GoogleCloudRetailV2alphaPredictResponse
buildGoogleCloudRetailV2alphaPredictResponse() {
  final o = api.GoogleCloudRetailV2alphaPredictResponse();
  buildCounterGoogleCloudRetailV2alphaPredictResponse++;
  if (buildCounterGoogleCloudRetailV2alphaPredictResponse < 3) {
    o.attributionToken = 'foo';
    o.missingIds = buildUnnamed80();
    o.results = buildUnnamed81();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2alphaPredictResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaPredictResponse(
  api.GoogleCloudRetailV2alphaPredictResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaPredictResponse++;
  if (buildCounterGoogleCloudRetailV2alphaPredictResponse < 3) {
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkUnnamed80(o.missingIds!);
    checkUnnamed81(o.results!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaPredictResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed82() => {
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

void checkUnnamed82(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult =
    0;
api.GoogleCloudRetailV2alphaPredictResponsePredictionResult
buildGoogleCloudRetailV2alphaPredictResponsePredictionResult() {
  final o = api.GoogleCloudRetailV2alphaPredictResponsePredictionResult();
  buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult < 3) {
    o.id = 'foo';
    o.metadata = buildUnnamed82();
  }
  buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaPredictResponsePredictionResult(
  api.GoogleCloudRetailV2alphaPredictResponsePredictionResult o,
) {
  buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed82(o.metadata!);
  }
  buildCounterGoogleCloudRetailV2alphaPredictResponsePredictionResult--;
}

core.int buildCounterGoogleCloudRetailV2alphaPriceInfo = 0;
api.GoogleCloudRetailV2alphaPriceInfo buildGoogleCloudRetailV2alphaPriceInfo() {
  final o = api.GoogleCloudRetailV2alphaPriceInfo();
  buildCounterGoogleCloudRetailV2alphaPriceInfo++;
  if (buildCounterGoogleCloudRetailV2alphaPriceInfo < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.originalPrice = 42.0;
    o.price = 42.0;
    o.priceEffectiveTime = 'foo';
    o.priceExpireTime = 'foo';
    o.priceRange = buildGoogleCloudRetailV2alphaPriceInfoPriceRange();
  }
  buildCounterGoogleCloudRetailV2alphaPriceInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaPriceInfo(
  api.GoogleCloudRetailV2alphaPriceInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaPriceInfo++;
  if (buildCounterGoogleCloudRetailV2alphaPriceInfo < 3) {
    unittest.expect(o.cost!, unittest.equals(42.0));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.originalPrice!, unittest.equals(42.0));
    unittest.expect(o.price!, unittest.equals(42.0));
    unittest.expect(o.priceEffectiveTime!, unittest.equals('foo'));
    unittest.expect(o.priceExpireTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaPriceInfoPriceRange(o.priceRange!);
  }
  buildCounterGoogleCloudRetailV2alphaPriceInfo--;
}

core.int buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange = 0;
api.GoogleCloudRetailV2alphaPriceInfoPriceRange
buildGoogleCloudRetailV2alphaPriceInfoPriceRange() {
  final o = api.GoogleCloudRetailV2alphaPriceInfoPriceRange();
  buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange < 3) {
    o.originalPrice = buildGoogleCloudRetailV2alphaInterval();
    o.price = buildGoogleCloudRetailV2alphaInterval();
  }
  buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange--;
  return o;
}

void checkGoogleCloudRetailV2alphaPriceInfoPriceRange(
  api.GoogleCloudRetailV2alphaPriceInfoPriceRange o,
) {
  buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange < 3) {
    checkGoogleCloudRetailV2alphaInterval(o.originalPrice!);
    checkGoogleCloudRetailV2alphaInterval(o.price!);
  }
  buildCounterGoogleCloudRetailV2alphaPriceInfoPriceRange--;
}

core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute>
buildUnnamed83() => {
  'x': buildGoogleCloudRetailV2alphaCustomAttribute(),
  'y': buildGoogleCloudRetailV2alphaCustomAttribute(),
};

void checkUnnamed83(
  core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2alphaCustomAttribute(o['y']!);
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

core.List<api.GoogleCloudRetailV2alphaFulfillmentInfo> buildUnnamed88() => [
  buildGoogleCloudRetailV2alphaFulfillmentInfo(),
  buildGoogleCloudRetailV2alphaFulfillmentInfo(),
];

void checkUnnamed88(core.List<api.GoogleCloudRetailV2alphaFulfillmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaFulfillmentInfo(o[0]);
  checkGoogleCloudRetailV2alphaFulfillmentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaImage> buildUnnamed89() => [
  buildGoogleCloudRetailV2alphaImage(),
  buildGoogleCloudRetailV2alphaImage(),
];

void checkUnnamed89(core.List<api.GoogleCloudRetailV2alphaImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaImage(o[0]);
  checkGoogleCloudRetailV2alphaImage(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaLocalInventory> buildUnnamed90() => [
  buildGoogleCloudRetailV2alphaLocalInventory(),
  buildGoogleCloudRetailV2alphaLocalInventory(),
];

void checkUnnamed90(core.List<api.GoogleCloudRetailV2alphaLocalInventory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaLocalInventory(o[0]);
  checkGoogleCloudRetailV2alphaLocalInventory(o[1]);
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaPromotion> buildUnnamed93() => [
  buildGoogleCloudRetailV2alphaPromotion(),
  buildGoogleCloudRetailV2alphaPromotion(),
];

void checkUnnamed93(core.List<api.GoogleCloudRetailV2alphaPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaPromotion(o[0]);
  checkGoogleCloudRetailV2alphaPromotion(o[1]);
}

core.List<core.String> buildUnnamed94() => ['foo', 'foo'];

void checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed95() => ['foo', 'foo'];

void checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaProduct> buildUnnamed96() => [
  buildGoogleCloudRetailV2alphaProduct(),
  buildGoogleCloudRetailV2alphaProduct(),
];

void checkUnnamed96(core.List<api.GoogleCloudRetailV2alphaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProduct(o[0]);
  checkGoogleCloudRetailV2alphaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaProduct = 0;
api.GoogleCloudRetailV2alphaProduct buildGoogleCloudRetailV2alphaProduct() {
  final o = api.GoogleCloudRetailV2alphaProduct();
  buildCounterGoogleCloudRetailV2alphaProduct++;
  if (buildCounterGoogleCloudRetailV2alphaProduct < 3) {
    o.attributes = buildUnnamed83();
    o.audience = buildGoogleCloudRetailV2alphaAudience();
    o.availability = 'foo';
    o.availableQuantity = 42;
    o.availableTime = 'foo';
    o.brands = buildUnnamed84();
    o.categories = buildUnnamed85();
    o.collectionMemberIds = buildUnnamed86();
    o.colorInfo = buildGoogleCloudRetailV2alphaColorInfo();
    o.conditions = buildUnnamed87();
    o.description = 'foo';
    o.expireTime = 'foo';
    o.fulfillmentInfo = buildUnnamed88();
    o.gtin = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed89();
    o.languageCode = 'foo';
    o.localInventories = buildUnnamed90();
    o.materials = buildUnnamed91();
    o.name = 'foo';
    o.patterns = buildUnnamed92();
    o.priceInfo = buildGoogleCloudRetailV2alphaPriceInfo();
    o.primaryProductId = 'foo';
    o.promotions = buildUnnamed93();
    o.publishTime = 'foo';
    o.rating = buildGoogleCloudRetailV2alphaRating();
    o.retrievableFields = 'foo';
    o.sizes = buildUnnamed94();
    o.tags = buildUnnamed95();
    o.title = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
    o.variants = buildUnnamed96();
  }
  buildCounterGoogleCloudRetailV2alphaProduct--;
  return o;
}

void checkGoogleCloudRetailV2alphaProduct(
  api.GoogleCloudRetailV2alphaProduct o,
) {
  buildCounterGoogleCloudRetailV2alphaProduct++;
  if (buildCounterGoogleCloudRetailV2alphaProduct < 3) {
    checkUnnamed83(o.attributes!);
    checkGoogleCloudRetailV2alphaAudience(o.audience!);
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.availableQuantity!, unittest.equals(42));
    unittest.expect(o.availableTime!, unittest.equals('foo'));
    checkUnnamed84(o.brands!);
    checkUnnamed85(o.categories!);
    checkUnnamed86(o.collectionMemberIds!);
    checkGoogleCloudRetailV2alphaColorInfo(o.colorInfo!);
    checkUnnamed87(o.conditions!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed88(o.fulfillmentInfo!);
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed89(o.images!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed90(o.localInventories!);
    checkUnnamed91(o.materials!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed92(o.patterns!);
    checkGoogleCloudRetailV2alphaPriceInfo(o.priceInfo!);
    unittest.expect(o.primaryProductId!, unittest.equals('foo'));
    checkUnnamed93(o.promotions!);
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaRating(o.rating!);
    unittest.expect(o.retrievableFields!, unittest.equals('foo'));
    checkUnnamed94(o.sizes!);
    checkUnnamed95(o.tags!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkUnnamed96(o.variants!);
  }
  buildCounterGoogleCloudRetailV2alphaProduct--;
}

core.int buildCounterGoogleCloudRetailV2alphaProductAttributeInterval = 0;
api.GoogleCloudRetailV2alphaProductAttributeInterval
buildGoogleCloudRetailV2alphaProductAttributeInterval() {
  final o = api.GoogleCloudRetailV2alphaProductAttributeInterval();
  buildCounterGoogleCloudRetailV2alphaProductAttributeInterval++;
  if (buildCounterGoogleCloudRetailV2alphaProductAttributeInterval < 3) {
    o.interval = buildGoogleCloudRetailV2alphaInterval();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaProductAttributeInterval--;
  return o;
}

void checkGoogleCloudRetailV2alphaProductAttributeInterval(
  api.GoogleCloudRetailV2alphaProductAttributeInterval o,
) {
  buildCounterGoogleCloudRetailV2alphaProductAttributeInterval++;
  if (buildCounterGoogleCloudRetailV2alphaProductAttributeInterval < 3) {
    checkGoogleCloudRetailV2alphaInterval(o.interval!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaProductAttributeInterval--;
}

core.int buildCounterGoogleCloudRetailV2alphaProductAttributeValue = 0;
api.GoogleCloudRetailV2alphaProductAttributeValue
buildGoogleCloudRetailV2alphaProductAttributeValue() {
  final o = api.GoogleCloudRetailV2alphaProductAttributeValue();
  buildCounterGoogleCloudRetailV2alphaProductAttributeValue++;
  if (buildCounterGoogleCloudRetailV2alphaProductAttributeValue < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaProductAttributeValue--;
  return o;
}

void checkGoogleCloudRetailV2alphaProductAttributeValue(
  api.GoogleCloudRetailV2alphaProductAttributeValue o,
) {
  buildCounterGoogleCloudRetailV2alphaProductAttributeValue++;
  if (buildCounterGoogleCloudRetailV2alphaProductAttributeValue < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaProductAttributeValue--;
}

core.int buildCounterGoogleCloudRetailV2alphaProductDetail = 0;
api.GoogleCloudRetailV2alphaProductDetail
buildGoogleCloudRetailV2alphaProductDetail() {
  final o = api.GoogleCloudRetailV2alphaProductDetail();
  buildCounterGoogleCloudRetailV2alphaProductDetail++;
  if (buildCounterGoogleCloudRetailV2alphaProductDetail < 3) {
    o.product = buildGoogleCloudRetailV2alphaProduct();
    o.quantity = 42;
  }
  buildCounterGoogleCloudRetailV2alphaProductDetail--;
  return o;
}

void checkGoogleCloudRetailV2alphaProductDetail(
  api.GoogleCloudRetailV2alphaProductDetail o,
) {
  buildCounterGoogleCloudRetailV2alphaProductDetail++;
  if (buildCounterGoogleCloudRetailV2alphaProductDetail < 3) {
    checkGoogleCloudRetailV2alphaProduct(o.product!);
    unittest.expect(o.quantity!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaProductDetail--;
}

core.List<api.GoogleCloudRetailV2alphaProduct> buildUnnamed97() => [
  buildGoogleCloudRetailV2alphaProduct(),
  buildGoogleCloudRetailV2alphaProduct(),
];

void checkUnnamed97(core.List<api.GoogleCloudRetailV2alphaProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProduct(o[0]);
  checkGoogleCloudRetailV2alphaProduct(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaProductInlineSource = 0;
api.GoogleCloudRetailV2alphaProductInlineSource
buildGoogleCloudRetailV2alphaProductInlineSource() {
  final o = api.GoogleCloudRetailV2alphaProductInlineSource();
  buildCounterGoogleCloudRetailV2alphaProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2alphaProductInlineSource < 3) {
    o.products = buildUnnamed97();
  }
  buildCounterGoogleCloudRetailV2alphaProductInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2alphaProductInlineSource(
  api.GoogleCloudRetailV2alphaProductInlineSource o,
) {
  buildCounterGoogleCloudRetailV2alphaProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2alphaProductInlineSource < 3) {
    checkUnnamed97(o.products!);
  }
  buildCounterGoogleCloudRetailV2alphaProductInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2alphaProductInputConfig = 0;
api.GoogleCloudRetailV2alphaProductInputConfig
buildGoogleCloudRetailV2alphaProductInputConfig() {
  final o = api.GoogleCloudRetailV2alphaProductInputConfig();
  buildCounterGoogleCloudRetailV2alphaProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaProductInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2alphaBigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2alphaGcsSource();
    o.productInlineSource = buildGoogleCloudRetailV2alphaProductInlineSource();
  }
  buildCounterGoogleCloudRetailV2alphaProductInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaProductInputConfig(
  api.GoogleCloudRetailV2alphaProductInputConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaProductInputConfig < 3) {
    checkGoogleCloudRetailV2alphaBigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2alphaGcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2alphaProductInlineSource(o.productInlineSource!);
  }
  buildCounterGoogleCloudRetailV2alphaProductInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaProductLevelConfig = 0;
api.GoogleCloudRetailV2alphaProductLevelConfig
buildGoogleCloudRetailV2alphaProductLevelConfig() {
  final o = api.GoogleCloudRetailV2alphaProductLevelConfig();
  buildCounterGoogleCloudRetailV2alphaProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2alphaProductLevelConfig < 3) {
    o.ingestionProductType = 'foo';
    o.merchantCenterProductIdField = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaProductLevelConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaProductLevelConfig(
  api.GoogleCloudRetailV2alphaProductLevelConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2alphaProductLevelConfig < 3) {
    unittest.expect(o.ingestionProductType!, unittest.equals('foo'));
    unittest.expect(o.merchantCenterProductIdField!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaProductLevelConfig--;
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaProject = 0;
api.GoogleCloudRetailV2alphaProject buildGoogleCloudRetailV2alphaProject() {
  final o = api.GoogleCloudRetailV2alphaProject();
  buildCounterGoogleCloudRetailV2alphaProject++;
  if (buildCounterGoogleCloudRetailV2alphaProject < 3) {
    o.enrolledSolutions = buildUnnamed98();
    o.name = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaProject--;
  return o;
}

void checkGoogleCloudRetailV2alphaProject(
  api.GoogleCloudRetailV2alphaProject o,
) {
  buildCounterGoogleCloudRetailV2alphaProject++;
  if (buildCounterGoogleCloudRetailV2alphaProject < 3) {
    checkUnnamed98(o.enrolledSolutions!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaProject--;
}

core.int buildCounterGoogleCloudRetailV2alphaPromotion = 0;
api.GoogleCloudRetailV2alphaPromotion buildGoogleCloudRetailV2alphaPromotion() {
  final o = api.GoogleCloudRetailV2alphaPromotion();
  buildCounterGoogleCloudRetailV2alphaPromotion++;
  if (buildCounterGoogleCloudRetailV2alphaPromotion < 3) {
    o.promotionId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaPromotion--;
  return o;
}

void checkGoogleCloudRetailV2alphaPromotion(
  api.GoogleCloudRetailV2alphaPromotion o,
) {
  buildCounterGoogleCloudRetailV2alphaPromotion++;
  if (buildCounterGoogleCloudRetailV2alphaPromotion < 3) {
    unittest.expect(o.promotionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaPromotion--;
}

core.int buildCounterGoogleCloudRetailV2alphaPurchaseTransaction = 0;
api.GoogleCloudRetailV2alphaPurchaseTransaction
buildGoogleCloudRetailV2alphaPurchaseTransaction() {
  final o = api.GoogleCloudRetailV2alphaPurchaseTransaction();
  buildCounterGoogleCloudRetailV2alphaPurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2alphaPurchaseTransaction < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.revenue = 42.0;
    o.tax = 42.0;
  }
  buildCounterGoogleCloudRetailV2alphaPurchaseTransaction--;
  return o;
}

void checkGoogleCloudRetailV2alphaPurchaseTransaction(
  api.GoogleCloudRetailV2alphaPurchaseTransaction o,
) {
  buildCounterGoogleCloudRetailV2alphaPurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2alphaPurchaseTransaction < 3) {
    unittest.expect(o.cost!, unittest.equals(42.0));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.revenue!, unittest.equals(42.0));
    unittest.expect(o.tax!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudRetailV2alphaPurchaseTransaction--;
}

core.int buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest = 0;
api.GoogleCloudRetailV2alphaPurgeProductsRequest
buildGoogleCloudRetailV2alphaPurgeProductsRequest() {
  final o = api.GoogleCloudRetailV2alphaPurgeProductsRequest();
  buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaPurgeProductsRequest(
  api.GoogleCloudRetailV2alphaPurgeProductsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaPurgeProductsRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest = 0;
api.GoogleCloudRetailV2alphaPurgeUserEventsRequest
buildGoogleCloudRetailV2alphaPurgeUserEventsRequest() {
  final o = api.GoogleCloudRetailV2alphaPurgeUserEventsRequest();
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaPurgeUserEventsRequest(
  api.GoogleCloudRetailV2alphaPurgeUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsRequest--;
}

core.List<core.int> buildUnnamed99() => [42, 42];

void checkUnnamed99(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudRetailV2alphaRating = 0;
api.GoogleCloudRetailV2alphaRating buildGoogleCloudRetailV2alphaRating() {
  final o = api.GoogleCloudRetailV2alphaRating();
  buildCounterGoogleCloudRetailV2alphaRating++;
  if (buildCounterGoogleCloudRetailV2alphaRating < 3) {
    o.averageRating = 42.0;
    o.ratingCount = 42;
    o.ratingHistogram = buildUnnamed99();
  }
  buildCounterGoogleCloudRetailV2alphaRating--;
  return o;
}

void checkGoogleCloudRetailV2alphaRating(api.GoogleCloudRetailV2alphaRating o) {
  buildCounterGoogleCloudRetailV2alphaRating++;
  if (buildCounterGoogleCloudRetailV2alphaRating < 3) {
    unittest.expect(o.averageRating!, unittest.equals(42.0));
    unittest.expect(o.ratingCount!, unittest.equals(42));
    checkUnnamed99(o.ratingHistogram!);
  }
  buildCounterGoogleCloudRetailV2alphaRating--;
}

core.int buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest = 0;
api.GoogleCloudRetailV2alphaRejoinUserEventsRequest
buildGoogleCloudRetailV2alphaRejoinUserEventsRequest() {
  final o = api.GoogleCloudRetailV2alphaRejoinUserEventsRequest();
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest < 3) {
    o.userEventRejoinScope = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaRejoinUserEventsRequest(
  api.GoogleCloudRetailV2alphaRejoinUserEventsRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest < 3) {
    unittest.expect(o.userEventRejoinScope!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest
buildGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest < 3) {
    o.key = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest(
  api.GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaRemoveControlRequest = 0;
api.GoogleCloudRetailV2alphaRemoveControlRequest
buildGoogleCloudRetailV2alphaRemoveControlRequest() {
  final o = api.GoogleCloudRetailV2alphaRemoveControlRequest();
  buildCounterGoogleCloudRetailV2alphaRemoveControlRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveControlRequest < 3) {
    o.controlId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRemoveControlRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaRemoveControlRequest(
  api.GoogleCloudRetailV2alphaRemoveControlRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaRemoveControlRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveControlRequest < 3) {
    unittest.expect(o.controlId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRemoveControlRequest--;
}

core.List<core.String> buildUnnamed100() => ['foo', 'foo'];

void checkUnnamed100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest
buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed100();
    o.removeTime = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest(
  api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed100(o.placeIds!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest--;
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest = 0;
api.GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest
buildGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest() {
  final o = api.GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest();
  buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed101();
    o.removeTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest(
  api.GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed101(o.placeIds!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest = 0;
api.GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest
buildGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest() {
  final o = api.GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest();
  buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest < 3) {
    o.catalogAttribute = buildGoogleCloudRetailV2alphaCatalogAttribute();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest(
  api.GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest++;
  if (buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest < 3) {
    checkGoogleCloudRetailV2alphaCatalogAttribute(o.catalogAttribute!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaResumeModelRequest = 0;
api.GoogleCloudRetailV2alphaResumeModelRequest
buildGoogleCloudRetailV2alphaResumeModelRequest() {
  final o = api.GoogleCloudRetailV2alphaResumeModelRequest();
  buildCounterGoogleCloudRetailV2alphaResumeModelRequest++;
  if (buildCounterGoogleCloudRetailV2alphaResumeModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaResumeModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaResumeModelRequest(
  api.GoogleCloudRetailV2alphaResumeModelRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaResumeModelRequest++;
  if (buildCounterGoogleCloudRetailV2alphaResumeModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaResumeModelRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaRule = 0;
api.GoogleCloudRetailV2alphaRule buildGoogleCloudRetailV2alphaRule() {
  final o = api.GoogleCloudRetailV2alphaRule();
  buildCounterGoogleCloudRetailV2alphaRule++;
  if (buildCounterGoogleCloudRetailV2alphaRule < 3) {
    o.boostAction = buildGoogleCloudRetailV2alphaRuleBoostAction();
    o.condition = buildGoogleCloudRetailV2alphaCondition();
    o.doNotAssociateAction =
        buildGoogleCloudRetailV2alphaRuleDoNotAssociateAction();
    o.filterAction = buildGoogleCloudRetailV2alphaRuleFilterAction();
    o.forceReturnFacetAction =
        buildGoogleCloudRetailV2alphaRuleForceReturnFacetAction();
    o.ignoreAction = buildGoogleCloudRetailV2alphaRuleIgnoreAction();
    o.onewaySynonymsAction =
        buildGoogleCloudRetailV2alphaRuleOnewaySynonymsAction();
    o.pinAction = buildGoogleCloudRetailV2alphaRulePinAction();
    o.redirectAction = buildGoogleCloudRetailV2alphaRuleRedirectAction();
    o.removeFacetAction = buildGoogleCloudRetailV2alphaRuleRemoveFacetAction();
    o.replacementAction = buildGoogleCloudRetailV2alphaRuleReplacementAction();
    o.twowaySynonymsAction =
        buildGoogleCloudRetailV2alphaRuleTwowaySynonymsAction();
  }
  buildCounterGoogleCloudRetailV2alphaRule--;
  return o;
}

void checkGoogleCloudRetailV2alphaRule(api.GoogleCloudRetailV2alphaRule o) {
  buildCounterGoogleCloudRetailV2alphaRule++;
  if (buildCounterGoogleCloudRetailV2alphaRule < 3) {
    checkGoogleCloudRetailV2alphaRuleBoostAction(o.boostAction!);
    checkGoogleCloudRetailV2alphaCondition(o.condition!);
    checkGoogleCloudRetailV2alphaRuleDoNotAssociateAction(
      o.doNotAssociateAction!,
    );
    checkGoogleCloudRetailV2alphaRuleFilterAction(o.filterAction!);
    checkGoogleCloudRetailV2alphaRuleForceReturnFacetAction(
      o.forceReturnFacetAction!,
    );
    checkGoogleCloudRetailV2alphaRuleIgnoreAction(o.ignoreAction!);
    checkGoogleCloudRetailV2alphaRuleOnewaySynonymsAction(
      o.onewaySynonymsAction!,
    );
    checkGoogleCloudRetailV2alphaRulePinAction(o.pinAction!);
    checkGoogleCloudRetailV2alphaRuleRedirectAction(o.redirectAction!);
    checkGoogleCloudRetailV2alphaRuleRemoveFacetAction(o.removeFacetAction!);
    checkGoogleCloudRetailV2alphaRuleReplacementAction(o.replacementAction!);
    checkGoogleCloudRetailV2alphaRuleTwowaySynonymsAction(
      o.twowaySynonymsAction!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaRule--;
}

core.int buildCounterGoogleCloudRetailV2alphaRuleBoostAction = 0;
api.GoogleCloudRetailV2alphaRuleBoostAction
buildGoogleCloudRetailV2alphaRuleBoostAction() {
  final o = api.GoogleCloudRetailV2alphaRuleBoostAction();
  buildCounterGoogleCloudRetailV2alphaRuleBoostAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleBoostAction < 3) {
    o.boost = 42.0;
    o.productsFilter = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRuleBoostAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleBoostAction(
  api.GoogleCloudRetailV2alphaRuleBoostAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleBoostAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleBoostAction < 3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    unittest.expect(o.productsFilter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRuleBoostAction--;
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction = 0;
api.GoogleCloudRetailV2alphaRuleDoNotAssociateAction
buildGoogleCloudRetailV2alphaRuleDoNotAssociateAction() {
  final o = api.GoogleCloudRetailV2alphaRuleDoNotAssociateAction();
  buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction < 3) {
    o.doNotAssociateTerms = buildUnnamed102();
    o.queryTerms = buildUnnamed103();
    o.terms = buildUnnamed104();
  }
  buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleDoNotAssociateAction(
  api.GoogleCloudRetailV2alphaRuleDoNotAssociateAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction < 3) {
    checkUnnamed102(o.doNotAssociateTerms!);
    checkUnnamed103(o.queryTerms!);
    checkUnnamed104(o.terms!);
  }
  buildCounterGoogleCloudRetailV2alphaRuleDoNotAssociateAction--;
}

core.int buildCounterGoogleCloudRetailV2alphaRuleFilterAction = 0;
api.GoogleCloudRetailV2alphaRuleFilterAction
buildGoogleCloudRetailV2alphaRuleFilterAction() {
  final o = api.GoogleCloudRetailV2alphaRuleFilterAction();
  buildCounterGoogleCloudRetailV2alphaRuleFilterAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleFilterAction < 3) {
    o.filter = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRuleFilterAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleFilterAction(
  api.GoogleCloudRetailV2alphaRuleFilterAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleFilterAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleFilterAction < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRuleFilterAction--;
}

core.List<
  api.GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
>
buildUnnamed105() => [
  buildGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment(),
  buildGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment(),
];

void checkUnnamed105(
  core.List<
    api.GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment(
    o[0],
  );
  checkGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment(
    o[1],
  );
}

core.int buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction = 0;
api.GoogleCloudRetailV2alphaRuleForceReturnFacetAction
buildGoogleCloudRetailV2alphaRuleForceReturnFacetAction() {
  final o = api.GoogleCloudRetailV2alphaRuleForceReturnFacetAction();
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction < 3) {
    o.facetPositionAdjustments = buildUnnamed105();
  }
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleForceReturnFacetAction(
  api.GoogleCloudRetailV2alphaRuleForceReturnFacetAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction < 3) {
    checkUnnamed105(o.facetPositionAdjustments!);
  }
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetAction--;
}

core.int
buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment =
    0;
api.GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
buildGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment() {
  final o =
      api.GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment();
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment++;
  if (buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment <
      3) {
    o.attributeName = 'foo';
    o.position = 42;
  }
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment--;
  return o;
}

void
checkGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment(
  api.GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment
  o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment++;
  if (buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment <
      3) {
    unittest.expect(o.attributeName!, unittest.equals('foo'));
    unittest.expect(o.position!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment--;
}

core.List<core.String> buildUnnamed106() => ['foo', 'foo'];

void checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction = 0;
api.GoogleCloudRetailV2alphaRuleIgnoreAction
buildGoogleCloudRetailV2alphaRuleIgnoreAction() {
  final o = api.GoogleCloudRetailV2alphaRuleIgnoreAction();
  buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction < 3) {
    o.ignoreTerms = buildUnnamed106();
  }
  buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleIgnoreAction(
  api.GoogleCloudRetailV2alphaRuleIgnoreAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction < 3) {
    checkUnnamed106(o.ignoreTerms!);
  }
  buildCounterGoogleCloudRetailV2alphaRuleIgnoreAction--;
}

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction = 0;
api.GoogleCloudRetailV2alphaRuleOnewaySynonymsAction
buildGoogleCloudRetailV2alphaRuleOnewaySynonymsAction() {
  final o = api.GoogleCloudRetailV2alphaRuleOnewaySynonymsAction();
  buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction < 3) {
    o.onewayTerms = buildUnnamed107();
    o.queryTerms = buildUnnamed108();
    o.synonyms = buildUnnamed109();
  }
  buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleOnewaySynonymsAction(
  api.GoogleCloudRetailV2alphaRuleOnewaySynonymsAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction < 3) {
    checkUnnamed107(o.onewayTerms!);
    checkUnnamed108(o.queryTerms!);
    checkUnnamed109(o.synonyms!);
  }
  buildCounterGoogleCloudRetailV2alphaRuleOnewaySynonymsAction--;
}

core.Map<core.String, core.String> buildUnnamed110() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed110(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRulePinAction = 0;
api.GoogleCloudRetailV2alphaRulePinAction
buildGoogleCloudRetailV2alphaRulePinAction() {
  final o = api.GoogleCloudRetailV2alphaRulePinAction();
  buildCounterGoogleCloudRetailV2alphaRulePinAction++;
  if (buildCounterGoogleCloudRetailV2alphaRulePinAction < 3) {
    o.pinMap = buildUnnamed110();
  }
  buildCounterGoogleCloudRetailV2alphaRulePinAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRulePinAction(
  api.GoogleCloudRetailV2alphaRulePinAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRulePinAction++;
  if (buildCounterGoogleCloudRetailV2alphaRulePinAction < 3) {
    checkUnnamed110(o.pinMap!);
  }
  buildCounterGoogleCloudRetailV2alphaRulePinAction--;
}

core.int buildCounterGoogleCloudRetailV2alphaRuleRedirectAction = 0;
api.GoogleCloudRetailV2alphaRuleRedirectAction
buildGoogleCloudRetailV2alphaRuleRedirectAction() {
  final o = api.GoogleCloudRetailV2alphaRuleRedirectAction();
  buildCounterGoogleCloudRetailV2alphaRuleRedirectAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleRedirectAction < 3) {
    o.redirectUri = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRuleRedirectAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleRedirectAction(
  api.GoogleCloudRetailV2alphaRuleRedirectAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleRedirectAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleRedirectAction < 3) {
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRuleRedirectAction--;
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction = 0;
api.GoogleCloudRetailV2alphaRuleRemoveFacetAction
buildGoogleCloudRetailV2alphaRuleRemoveFacetAction() {
  final o = api.GoogleCloudRetailV2alphaRuleRemoveFacetAction();
  buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction < 3) {
    o.attributeNames = buildUnnamed111();
  }
  buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleRemoveFacetAction(
  api.GoogleCloudRetailV2alphaRuleRemoveFacetAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction < 3) {
    checkUnnamed111(o.attributeNames!);
  }
  buildCounterGoogleCloudRetailV2alphaRuleRemoveFacetAction--;
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRuleReplacementAction = 0;
api.GoogleCloudRetailV2alphaRuleReplacementAction
buildGoogleCloudRetailV2alphaRuleReplacementAction() {
  final o = api.GoogleCloudRetailV2alphaRuleReplacementAction();
  buildCounterGoogleCloudRetailV2alphaRuleReplacementAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleReplacementAction < 3) {
    o.queryTerms = buildUnnamed112();
    o.replacementTerm = 'foo';
    o.term = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRuleReplacementAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleReplacementAction(
  api.GoogleCloudRetailV2alphaRuleReplacementAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleReplacementAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleReplacementAction < 3) {
    checkUnnamed112(o.queryTerms!);
    unittest.expect(o.replacementTerm!, unittest.equals('foo'));
    unittest.expect(o.term!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaRuleReplacementAction--;
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction = 0;
api.GoogleCloudRetailV2alphaRuleTwowaySynonymsAction
buildGoogleCloudRetailV2alphaRuleTwowaySynonymsAction() {
  final o = api.GoogleCloudRetailV2alphaRuleTwowaySynonymsAction();
  buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction < 3) {
    o.synonyms = buildUnnamed113();
  }
  buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction--;
  return o;
}

void checkGoogleCloudRetailV2alphaRuleTwowaySynonymsAction(
  api.GoogleCloudRetailV2alphaRuleTwowaySynonymsAction o,
) {
  buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction++;
  if (buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction < 3) {
    checkUnnamed113(o.synonyms!);
  }
  buildCounterGoogleCloudRetailV2alphaRuleTwowaySynonymsAction--;
}

core.int buildCounterGoogleCloudRetailV2alphaSafetySetting = 0;
api.GoogleCloudRetailV2alphaSafetySetting
buildGoogleCloudRetailV2alphaSafetySetting() {
  final o = api.GoogleCloudRetailV2alphaSafetySetting();
  buildCounterGoogleCloudRetailV2alphaSafetySetting++;
  if (buildCounterGoogleCloudRetailV2alphaSafetySetting < 3) {
    o.category = 'foo';
    o.method = 'foo';
    o.threshold = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSafetySetting--;
  return o;
}

void checkGoogleCloudRetailV2alphaSafetySetting(
  api.GoogleCloudRetailV2alphaSafetySetting o,
) {
  buildCounterGoogleCloudRetailV2alphaSafetySetting++;
  if (buildCounterGoogleCloudRetailV2alphaSafetySetting < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.threshold!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSafetySetting--;
}

core.List<api.GoogleCloudRetailV2alphaSearchRequestFacetSpec>
buildUnnamed114() => [
  buildGoogleCloudRetailV2alphaSearchRequestFacetSpec(),
  buildGoogleCloudRetailV2alphaSearchRequestFacetSpec(),
];

void checkUnnamed114(
  core.List<api.GoogleCloudRetailV2alphaSearchRequestFacetSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchRequestFacetSpec(o[0]);
  checkGoogleCloudRetailV2alphaSearchRequestFacetSpec(o[1]);
}

core.Map<core.String, core.String> buildUnnamed115() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed115(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed116() => ['foo', 'foo'];

void checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRetailV2alphaStringList>
buildUnnamed117() => {
  'x': buildGoogleCloudRetailV2alphaStringList(),
  'y': buildGoogleCloudRetailV2alphaStringList(),
};

void checkUnnamed117(
  core.Map<core.String, api.GoogleCloudRetailV2alphaStringList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaStringList(o['x']!);
  checkGoogleCloudRetailV2alphaStringList(o['y']!);
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequest = 0;
api.GoogleCloudRetailV2alphaSearchRequest
buildGoogleCloudRetailV2alphaSearchRequest() {
  final o = api.GoogleCloudRetailV2alphaSearchRequest();
  buildCounterGoogleCloudRetailV2alphaSearchRequest++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequest < 3) {
    o.boostSpec = buildGoogleCloudRetailV2alphaSearchRequestBoostSpec();
    o.branch = 'foo';
    o.canonicalFilter = 'foo';
    o.conversationalSearchSpec =
        buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec();
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec();
    o.entity = 'foo';
    o.experimentId = 'foo';
    o.facetSpecs = buildUnnamed114();
    o.filter = 'foo';
    o.labels = buildUnnamed115();
    o.languageCode = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed116();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.personalizationSpec =
        buildGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec();
    o.placeId = 'foo';
    o.query = 'foo';
    o.queryExpansionSpec =
        buildGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec();
    o.regionCode = 'foo';
    o.relevanceThreshold = 'foo';
    o.searchMode = 'foo';
    o.spellCorrectionSpec =
        buildGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec();
    o.tileNavigationSpec =
        buildGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec();
    o.userAttributes = buildUnnamed117();
    o.userInfo = buildGoogleCloudRetailV2alphaUserInfo();
    o.variantRollupKeys = buildUnnamed118();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequest(
  api.GoogleCloudRetailV2alphaSearchRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequest++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequest < 3) {
    checkGoogleCloudRetailV2alphaSearchRequestBoostSpec(o.boostSpec!);
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.canonicalFilter!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec(
      o.conversationalSearchSpec!,
    );
    checkGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(
      o.dynamicFacetSpec!,
    );
    unittest.expect(o.entity!, unittest.equals('foo'));
    unittest.expect(o.experimentId!, unittest.equals('foo'));
    checkUnnamed114(o.facetSpecs!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed115(o.labels!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals(42));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed116(o.pageCategories!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec(
      o.personalizationSpec!,
    );
    unittest.expect(o.placeId!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec(
      o.queryExpansionSpec!,
    );
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.relevanceThreshold!, unittest.equals('foo'));
    unittest.expect(o.searchMode!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec(
      o.spellCorrectionSpec!,
    );
    checkGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec(
      o.tileNavigationSpec!,
    );
    checkUnnamed117(o.userAttributes!);
    checkGoogleCloudRetailV2alphaUserInfo(o.userInfo!);
    checkUnnamed118(o.variantRollupKeys!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequest--;
}

core.List<api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec>
buildUnnamed119() => [
  buildGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(),
  buildGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(),
];

void checkUnnamed119(
  core.List<
    api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec = 0;
api.GoogleCloudRetailV2alphaSearchRequestBoostSpec
buildGoogleCloudRetailV2alphaSearchRequestBoostSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestBoostSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed119();
    o.skipBoostSpecValidation = true;
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestBoostSpec(
  api.GoogleCloudRetailV2alphaSearchRequestBoostSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec < 3) {
    checkUnnamed119(o.conditionBoostSpecs!);
    unittest.expect(o.skipBoostSpecValidation!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpec--;
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec =
    0;
api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec
buildGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec() {
  final o =
      api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec <
      3) {
    o.boost = 42.0;
    o.condition = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(
  api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec <
      3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec--;
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec = 0;
api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec
buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec <
      3) {
    o.conversationId = 'foo';
    o.followupConversationRequested = true;
    o.userAnswer =
        buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer();
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec(
  api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec <
      3) {
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.followupConversationRequested!, unittest.isTrue);
    checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer(
      o.userAnswer!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec--;
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer =
    0;
api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer
buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer() {
  final o =
      api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer();
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer <
      3) {
    o.selectedAnswer =
        buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
    o.textAnswer = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer(
  api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer <
      3) {
    checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
      o.selectedAnswer!,
    );
    unittest.expect(o.textAnswer!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer--;
}

core.List<api.GoogleCloudRetailV2alphaProductAttributeValue>
buildUnnamed120() => [
  buildGoogleCloudRetailV2alphaProductAttributeValue(),
  buildGoogleCloudRetailV2alphaProductAttributeValue(),
];

void checkUnnamed120(
  core.List<api.GoogleCloudRetailV2alphaProductAttributeValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProductAttributeValue(o[0]);
  checkGoogleCloudRetailV2alphaProductAttributeValue(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer =
    0;
api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer() {
  final o =
      api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
    o.productAttributeValues = buildUnnamed120();
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
  api.GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer <
      3) {
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
    checkUnnamed120(o.productAttributeValues!);
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer--;
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec = 0;
api.GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec
buildGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(
  api.GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec < 3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec--;
}

core.List<core.String> buildUnnamed121() => ['foo', 'foo'];

void checkUnnamed121(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec = 0;
api.GoogleCloudRetailV2alphaSearchRequestFacetSpec
buildGoogleCloudRetailV2alphaSearchRequestFacetSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestFacetSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec < 3) {
    o.enableDynamicPosition = true;
    o.excludedFilterKeys = buildUnnamed121();
    o.facetKey = buildGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey();
    o.limit = 42;
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestFacetSpec(
  api.GoogleCloudRetailV2alphaSearchRequestFacetSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec < 3) {
    unittest.expect(o.enableDynamicPosition!, unittest.isTrue);
    checkUnnamed121(o.excludedFilterKeys!);
    checkGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey(o.facetKey!);
    unittest.expect(o.limit!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpec--;
}

core.List<core.String> buildUnnamed122() => ['foo', 'foo'];

void checkUnnamed122(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaInterval> buildUnnamed123() => [
  buildGoogleCloudRetailV2alphaInterval(),
  buildGoogleCloudRetailV2alphaInterval(),
];

void checkUnnamed123(core.List<api.GoogleCloudRetailV2alphaInterval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaInterval(o[0]);
  checkGoogleCloudRetailV2alphaInterval(o[1]);
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

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey = 0;
api.GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey
buildGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey();
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey < 3) {
    o.caseInsensitive = true;
    o.contains = buildUnnamed122();
    o.intervals = buildUnnamed123();
    o.key = 'foo';
    o.orderBy = 'foo';
    o.prefixes = buildUnnamed124();
    o.query = 'foo';
    o.restrictedValues = buildUnnamed125();
    o.returnMinMax = true;
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey(
  api.GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey < 3) {
    unittest.expect(o.caseInsensitive!, unittest.isTrue);
    checkUnnamed122(o.contains!);
    checkUnnamed123(o.intervals!);
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed124(o.prefixes!);
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed125(o.restrictedValues!);
    unittest.expect(o.returnMinMax!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey--;
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec =
    0;
api.GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec
buildGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec <
      3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec(
  api.GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec <
      3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec--;
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec =
    0;
api.GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec
buildGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec < 3) {
    o.condition = 'foo';
    o.pinUnexpandedResults = true;
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec(
  api.GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.pinUnexpandedResults!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec--;
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec =
    0;
api.GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec
buildGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec <
      3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec(
  api.GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec <
      3) {
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec--;
}

core.List<api.GoogleCloudRetailV2alphaTile> buildUnnamed126() => [
  buildGoogleCloudRetailV2alphaTile(),
  buildGoogleCloudRetailV2alphaTile(),
];

void checkUnnamed126(core.List<api.GoogleCloudRetailV2alphaTile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaTile(o[0]);
  checkGoogleCloudRetailV2alphaTile(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec =
    0;
api.GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec
buildGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec() {
  final o = api.GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec();
  buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec < 3) {
    o.appliedTiles = buildUnnamed126();
    o.tileNavigationRequested = true;
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec(
  api.GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec++;
  if (buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec < 3) {
    checkUnnamed126(o.appliedTiles!);
    unittest.expect(o.tileNavigationRequested!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec--;
}

core.List<core.String> buildUnnamed127() => ['foo', 'foo'];

void checkUnnamed127(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaExperimentInfo> buildUnnamed128() => [
  buildGoogleCloudRetailV2alphaExperimentInfo(),
  buildGoogleCloudRetailV2alphaExperimentInfo(),
];

void checkUnnamed128(core.List<api.GoogleCloudRetailV2alphaExperimentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaExperimentInfo(o[0]);
  checkGoogleCloudRetailV2alphaExperimentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaSearchResponseFacet> buildUnnamed129() =>
    [
      buildGoogleCloudRetailV2alphaSearchResponseFacet(),
      buildGoogleCloudRetailV2alphaSearchResponseFacet(),
    ];

void checkUnnamed129(
  core.List<api.GoogleCloudRetailV2alphaSearchResponseFacet> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchResponseFacet(o[0]);
  checkGoogleCloudRetailV2alphaSearchResponseFacet(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec>
buildUnnamed130() => [
  buildGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(),
  buildGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(),
];

void checkUnnamed130(
  core.List<
    api.GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaSearchResponseSearchResult>
buildUnnamed131() => [
  buildGoogleCloudRetailV2alphaSearchResponseSearchResult(),
  buildGoogleCloudRetailV2alphaSearchResponseSearchResult(),
];

void checkUnnamed131(
  core.List<api.GoogleCloudRetailV2alphaSearchResponseSearchResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchResponseSearchResult(o[0]);
  checkGoogleCloudRetailV2alphaSearchResponseSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaSearchResponse = 0;
api.GoogleCloudRetailV2alphaSearchResponse
buildGoogleCloudRetailV2alphaSearchResponse() {
  final o = api.GoogleCloudRetailV2alphaSearchResponse();
  buildCounterGoogleCloudRetailV2alphaSearchResponse++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponse < 3) {
    o.appliedControls = buildUnnamed127();
    o.attributionToken = 'foo';
    o.conversationalSearchResult =
        buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult();
    o.correctedQuery = 'foo';
    o.experimentInfo = buildUnnamed128();
    o.facets = buildUnnamed129();
    o.invalidConditionBoostSpecs = buildUnnamed130();
    o.nextPageToken = 'foo';
    o.pinControlMetadata = buildGoogleCloudRetailV2alphaPinControlMetadata();
    o.queryExpansionInfo =
        buildGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo();
    o.redirectUri = 'foo';
    o.results = buildUnnamed131();
    o.tileNavigationResult =
        buildGoogleCloudRetailV2alphaSearchResponseTileNavigationResult();
    o.totalSize = 42;
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponse(
  api.GoogleCloudRetailV2alphaSearchResponse o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponse++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponse < 3) {
    checkUnnamed127(o.appliedControls!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult(
      o.conversationalSearchResult!,
    );
    unittest.expect(o.correctedQuery!, unittest.equals('foo'));
    checkUnnamed128(o.experimentInfo!);
    checkUnnamed129(o.facets!);
    checkUnnamed130(o.invalidConditionBoostSpecs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaPinControlMetadata(o.pinControlMetadata!);
    checkGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo(
      o.queryExpansionInfo!,
    );
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
    checkUnnamed131(o.results!);
    checkGoogleCloudRetailV2alphaSearchResponseTileNavigationResult(
      o.tileNavigationResult!,
    );
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponse--;
}

core.List<
  api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
>
buildUnnamed132() => [
  buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(),
  buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(),
];

void checkUnnamed132(
  core.List<
    api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(
    o[0],
  );
  checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(
    o[1],
  );
}

core.List<
  api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
>
buildUnnamed133() => [
  buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer(),
  buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer(),
];

void checkUnnamed133(
  core.List<
    api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer(
    o[0],
  );
  checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer(
    o[1],
  );
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult =
    0;
api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult
buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult() {
  final o =
      api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult();
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult <
      3) {
    o.additionalFilter =
        buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter();
    o.additionalFilters = buildUnnamed132();
    o.conversationId = 'foo';
    o.followupQuestion = 'foo';
    o.refinedQuery = 'foo';
    o.suggestedAnswers = buildUnnamed133();
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult(
  api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult <
      3) {
    checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(
      o.additionalFilter!,
    );
    checkUnnamed132(o.additionalFilters!);
    unittest.expect(o.conversationId!, unittest.equals('foo'));
    unittest.expect(o.followupQuestion!, unittest.equals('foo'));
    unittest.expect(o.refinedQuery!, unittest.equals('foo'));
    checkUnnamed133(o.suggestedAnswers!);
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult--;
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter =
    0;
api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter() {
  final o =
      api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter();
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter--;
  return o;
}

void
checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(
  api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter
  o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter <
      3) {
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter--;
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer =
    0;
api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer() {
  final o =
      api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer();
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer <
      3) {
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer--;
  return o;
}

void
checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer(
  api.GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer
  o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer <
      3) {
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer--;
}

core.List<api.GoogleCloudRetailV2alphaSearchResponseFacetFacetValue>
buildUnnamed134() => [
  buildGoogleCloudRetailV2alphaSearchResponseFacetFacetValue(),
  buildGoogleCloudRetailV2alphaSearchResponseFacetFacetValue(),
];

void checkUnnamed134(
  core.List<api.GoogleCloudRetailV2alphaSearchResponseFacetFacetValue> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaSearchResponseFacetFacetValue(o[0]);
  checkGoogleCloudRetailV2alphaSearchResponseFacetFacetValue(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaSearchResponseFacet = 0;
api.GoogleCloudRetailV2alphaSearchResponseFacet
buildGoogleCloudRetailV2alphaSearchResponseFacet() {
  final o = api.GoogleCloudRetailV2alphaSearchResponseFacet();
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseFacet < 3) {
    o.dynamicFacet = true;
    o.key = 'foo';
    o.values = buildUnnamed134();
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacet--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponseFacet(
  api.GoogleCloudRetailV2alphaSearchResponseFacet o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseFacet < 3) {
    unittest.expect(o.dynamicFacet!, unittest.isTrue);
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed134(o.values!);
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacet--;
}

core.int buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue = 0;
api.GoogleCloudRetailV2alphaSearchResponseFacetFacetValue
buildGoogleCloudRetailV2alphaSearchResponseFacetFacetValue() {
  final o = api.GoogleCloudRetailV2alphaSearchResponseFacetFacetValue();
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue < 3) {
    o.count = 'foo';
    o.interval = buildGoogleCloudRetailV2alphaInterval();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponseFacetFacetValue(
  api.GoogleCloudRetailV2alphaSearchResponseFacetFacetValue o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaInterval(o.interval!);
    unittest.expect(o.maxValue!, unittest.equals(42.0));
    unittest.expect(o.minValue!, unittest.equals(42.0));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseFacetFacetValue--;
}

core.int buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo =
    0;
api.GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo
buildGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo() {
  final o = api.GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo();
  buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo <
      3) {
    o.expandedQuery = true;
    o.pinnedResultCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo(
  api.GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo <
      3) {
    unittest.expect(o.expandedQuery!, unittest.isTrue);
    unittest.expect(o.pinnedResultCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo--;
}

core.Map<core.String, core.String> buildUnnamed135() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed135(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudRetailV2alphaDoubleList>
buildUnnamed136() => {
  'x': buildGoogleCloudRetailV2alphaDoubleList(),
  'y': buildGoogleCloudRetailV2alphaDoubleList(),
};

void checkUnnamed136(
  core.Map<core.String, api.GoogleCloudRetailV2alphaDoubleList> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaDoubleList(o['x']!);
  checkGoogleCloudRetailV2alphaDoubleList(o['y']!);
}

core.List<core.String> buildUnnamed137() => ['foo', 'foo'];

void checkUnnamed137(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult = 0;
api.GoogleCloudRetailV2alphaSearchResponseSearchResult
buildGoogleCloudRetailV2alphaSearchResponseSearchResult() {
  final o = api.GoogleCloudRetailV2alphaSearchResponseSearchResult();
  buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult < 3) {
    o.id = 'foo';
    o.matchingVariantCount = 42;
    o.matchingVariantFields = buildUnnamed135();
    o.modelScores = buildUnnamed136();
    o.personalLabels = buildUnnamed137();
    o.product = buildGoogleCloudRetailV2alphaProduct();
    o.variantRollupValues = buildUnnamed138();
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponseSearchResult(
  api.GoogleCloudRetailV2alphaSearchResponseSearchResult o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.matchingVariantCount!, unittest.equals(42));
    checkUnnamed135(o.matchingVariantFields!);
    checkUnnamed136(o.modelScores!);
    checkUnnamed137(o.personalLabels!);
    checkGoogleCloudRetailV2alphaProduct(o.product!);
    checkUnnamed138(o.variantRollupValues!);
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseSearchResult--;
}

core.List<api.GoogleCloudRetailV2alphaTile> buildUnnamed139() => [
  buildGoogleCloudRetailV2alphaTile(),
  buildGoogleCloudRetailV2alphaTile(),
];

void checkUnnamed139(core.List<api.GoogleCloudRetailV2alphaTile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaTile(o[0]);
  checkGoogleCloudRetailV2alphaTile(o[1]);
}

core.int
buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult = 0;
api.GoogleCloudRetailV2alphaSearchResponseTileNavigationResult
buildGoogleCloudRetailV2alphaSearchResponseTileNavigationResult() {
  final o = api.GoogleCloudRetailV2alphaSearchResponseTileNavigationResult();
  buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult <
      3) {
    o.tiles = buildUnnamed139();
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult--;
  return o;
}

void checkGoogleCloudRetailV2alphaSearchResponseTileNavigationResult(
  api.GoogleCloudRetailV2alphaSearchResponseTileNavigationResult o,
) {
  buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult++;
  if (buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult <
      3) {
    checkUnnamed139(o.tiles!);
  }
  buildCounterGoogleCloudRetailV2alphaSearchResponseTileNavigationResult--;
}

core.List<core.String> buildUnnamed140() => ['foo', 'foo'];

void checkUnnamed140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed141() => ['foo', 'foo'];

void checkUnnamed141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed142() => ['foo', 'foo'];

void checkUnnamed142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed143() => ['foo', 'foo'];

void checkUnnamed143(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed144() => ['foo', 'foo'];

void checkUnnamed144(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed145() => ['foo', 'foo'];

void checkUnnamed145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed146() => ['foo', 'foo'];

void checkUnnamed146(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed147() => ['foo', 'foo'];

void checkUnnamed147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed148() => ['foo', 'foo'];

void checkUnnamed148(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed149() => ['foo', 'foo'];

void checkUnnamed149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaServingConfig = 0;
api.GoogleCloudRetailV2alphaServingConfig
buildGoogleCloudRetailV2alphaServingConfig() {
  final o = api.GoogleCloudRetailV2alphaServingConfig();
  buildCounterGoogleCloudRetailV2alphaServingConfig++;
  if (buildCounterGoogleCloudRetailV2alphaServingConfig < 3) {
    o.boostControlIds = buildUnnamed140();
    o.displayName = 'foo';
    o.diversityLevel = 'foo';
    o.diversityType = 'foo';
    o.doNotAssociateControlIds = buildUnnamed141();
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec();
    o.enableCategoryFilterLevel = 'foo';
    o.facetControlIds = buildUnnamed142();
    o.filterControlIds = buildUnnamed143();
    o.ignoreControlIds = buildUnnamed144();
    o.ignoreRecsDenylist = true;
    o.modelId = 'foo';
    o.name = 'foo';
    o.onewaySynonymsControlIds = buildUnnamed145();
    o.personalizationSpec =
        buildGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec();
    o.priceRerankingLevel = 'foo';
    o.redirectControlIds = buildUnnamed146();
    o.replacementControlIds = buildUnnamed147();
    o.solutionTypes = buildUnnamed148();
    o.twowaySynonymsControlIds = buildUnnamed149();
  }
  buildCounterGoogleCloudRetailV2alphaServingConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaServingConfig(
  api.GoogleCloudRetailV2alphaServingConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaServingConfig++;
  if (buildCounterGoogleCloudRetailV2alphaServingConfig < 3) {
    checkUnnamed140(o.boostControlIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.diversityLevel!, unittest.equals('foo'));
    unittest.expect(o.diversityType!, unittest.equals('foo'));
    checkUnnamed141(o.doNotAssociateControlIds!);
    checkGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(
      o.dynamicFacetSpec!,
    );
    unittest.expect(o.enableCategoryFilterLevel!, unittest.equals('foo'));
    checkUnnamed142(o.facetControlIds!);
    checkUnnamed143(o.filterControlIds!);
    checkUnnamed144(o.ignoreControlIds!);
    unittest.expect(o.ignoreRecsDenylist!, unittest.isTrue);
    unittest.expect(o.modelId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed145(o.onewaySynonymsControlIds!);
    checkGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec(
      o.personalizationSpec!,
    );
    unittest.expect(o.priceRerankingLevel!, unittest.equals('foo'));
    checkUnnamed146(o.redirectControlIds!);
    checkUnnamed147(o.replacementControlIds!);
    checkUnnamed148(o.solutionTypes!);
    checkUnnamed149(o.twowaySynonymsControlIds!);
  }
  buildCounterGoogleCloudRetailV2alphaServingConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest = 0;
api.GoogleCloudRetailV2alphaSetDefaultBranchRequest
buildGoogleCloudRetailV2alphaSetDefaultBranchRequest() {
  final o = api.GoogleCloudRetailV2alphaSetDefaultBranchRequest();
  buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest < 3) {
    o.branchId = 'foo';
    o.force = true;
    o.note = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaSetDefaultBranchRequest(
  api.GoogleCloudRetailV2alphaSetDefaultBranchRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest < 3) {
    unittest.expect(o.branchId!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(o.note!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSetDefaultBranchRequest--;
}

core.int buildCounterGoogleCloudRetailV2alphaSetInventoryRequest = 0;
api.GoogleCloudRetailV2alphaSetInventoryRequest
buildGoogleCloudRetailV2alphaSetInventoryRequest() {
  final o = api.GoogleCloudRetailV2alphaSetInventoryRequest();
  buildCounterGoogleCloudRetailV2alphaSetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2alphaSetInventoryRequest < 3) {
    o.allowMissing = true;
    o.inventory = buildGoogleCloudRetailV2alphaProduct();
    o.setMask = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaSetInventoryRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaSetInventoryRequest(
  api.GoogleCloudRetailV2alphaSetInventoryRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaSetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2alphaSetInventoryRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkGoogleCloudRetailV2alphaProduct(o.inventory!);
    unittest.expect(o.setMask!, unittest.equals('foo'));
    unittest.expect(o.setTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaSetInventoryRequest--;
}

core.List<core.String> buildUnnamed150() => ['foo', 'foo'];

void checkUnnamed150(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudRetailV2alphaStringList = 0;
api.GoogleCloudRetailV2alphaStringList
buildGoogleCloudRetailV2alphaStringList() {
  final o = api.GoogleCloudRetailV2alphaStringList();
  buildCounterGoogleCloudRetailV2alphaStringList++;
  if (buildCounterGoogleCloudRetailV2alphaStringList < 3) {
    o.values = buildUnnamed150();
  }
  buildCounterGoogleCloudRetailV2alphaStringList--;
  return o;
}

void checkGoogleCloudRetailV2alphaStringList(
  api.GoogleCloudRetailV2alphaStringList o,
) {
  buildCounterGoogleCloudRetailV2alphaStringList++;
  if (buildCounterGoogleCloudRetailV2alphaStringList < 3) {
    checkUnnamed150(o.values!);
  }
  buildCounterGoogleCloudRetailV2alphaStringList--;
}

core.int buildCounterGoogleCloudRetailV2alphaTile = 0;
api.GoogleCloudRetailV2alphaTile buildGoogleCloudRetailV2alphaTile() {
  final o = api.GoogleCloudRetailV2alphaTile();
  buildCounterGoogleCloudRetailV2alphaTile++;
  if (buildCounterGoogleCloudRetailV2alphaTile < 3) {
    o.productAttributeInterval =
        buildGoogleCloudRetailV2alphaProductAttributeInterval();
    o.productAttributeValue =
        buildGoogleCloudRetailV2alphaProductAttributeValue();
    o.representativeProductId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaTile--;
  return o;
}

void checkGoogleCloudRetailV2alphaTile(api.GoogleCloudRetailV2alphaTile o) {
  buildCounterGoogleCloudRetailV2alphaTile++;
  if (buildCounterGoogleCloudRetailV2alphaTile < 3) {
    checkGoogleCloudRetailV2alphaProductAttributeInterval(
      o.productAttributeInterval!,
    );
    checkGoogleCloudRetailV2alphaProductAttributeValue(
      o.productAttributeValue!,
    );
    unittest.expect(o.representativeProductId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaTile--;
}

core.int buildCounterGoogleCloudRetailV2alphaTuneModelRequest = 0;
api.GoogleCloudRetailV2alphaTuneModelRequest
buildGoogleCloudRetailV2alphaTuneModelRequest() {
  final o = api.GoogleCloudRetailV2alphaTuneModelRequest();
  buildCounterGoogleCloudRetailV2alphaTuneModelRequest++;
  if (buildCounterGoogleCloudRetailV2alphaTuneModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaTuneModelRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaTuneModelRequest(
  api.GoogleCloudRetailV2alphaTuneModelRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaTuneModelRequest++;
  if (buildCounterGoogleCloudRetailV2alphaTuneModelRequest < 3) {}
  buildCounterGoogleCloudRetailV2alphaTuneModelRequest--;
}

core.int
buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest = 0;
api.GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest
buildGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest() {
  final o = api.GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest();
  buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest++;
  if (buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest <
      3) {
    o.generativeQuestionConfig =
        buildGoogleCloudRetailV2alphaGenerativeQuestionConfig();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest--;
  return o;
}

void checkGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest(
  api.GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest o,
) {
  buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest++;
  if (buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest <
      3) {
    checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(
      o.generativeQuestionConfig!,
    );
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest--;
}

core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute>
buildUnnamed151() => {
  'x': buildGoogleCloudRetailV2alphaCustomAttribute(),
  'y': buildGoogleCloudRetailV2alphaCustomAttribute(),
};

void checkUnnamed151(
  core.Map<core.String, api.GoogleCloudRetailV2alphaCustomAttribute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaCustomAttribute(o['x']!);
  checkGoogleCloudRetailV2alphaCustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed152() => ['foo', 'foo'];

void checkUnnamed152(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed153() => ['foo', 'foo'];

void checkUnnamed153(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudRetailV2alphaPanelInfo> buildUnnamed154() => [
  buildGoogleCloudRetailV2alphaPanelInfo(),
  buildGoogleCloudRetailV2alphaPanelInfo(),
];

void checkUnnamed154(core.List<api.GoogleCloudRetailV2alphaPanelInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaPanelInfo(o[0]);
  checkGoogleCloudRetailV2alphaPanelInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2alphaProductDetail> buildUnnamed155() => [
  buildGoogleCloudRetailV2alphaProductDetail(),
  buildGoogleCloudRetailV2alphaProductDetail(),
];

void checkUnnamed155(core.List<api.GoogleCloudRetailV2alphaProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaProductDetail(o[0]);
  checkGoogleCloudRetailV2alphaProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaUserEvent = 0;
api.GoogleCloudRetailV2alphaUserEvent buildGoogleCloudRetailV2alphaUserEvent() {
  final o = api.GoogleCloudRetailV2alphaUserEvent();
  buildCounterGoogleCloudRetailV2alphaUserEvent++;
  if (buildCounterGoogleCloudRetailV2alphaUserEvent < 3) {
    o.attributes = buildUnnamed151();
    o.attributionToken = 'foo';
    o.cartId = 'foo';
    o.completionDetail = buildGoogleCloudRetailV2alphaCompletionDetail();
    o.entity = 'foo';
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.experimentIds = buildUnnamed152();
    o.filter = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed153();
    o.pageViewId = 'foo';
    o.panels = buildUnnamed154();
    o.productDetails = buildUnnamed155();
    o.purchaseTransaction = buildGoogleCloudRetailV2alphaPurchaseTransaction();
    o.referrerUri = 'foo';
    o.searchQuery = 'foo';
    o.sessionId = 'foo';
    o.uri = 'foo';
    o.userInfo = buildGoogleCloudRetailV2alphaUserInfo();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaUserEvent--;
  return o;
}

void checkGoogleCloudRetailV2alphaUserEvent(
  api.GoogleCloudRetailV2alphaUserEvent o,
) {
  buildCounterGoogleCloudRetailV2alphaUserEvent++;
  if (buildCounterGoogleCloudRetailV2alphaUserEvent < 3) {
    checkUnnamed151(o.attributes!);
    unittest.expect(o.attributionToken!, unittest.equals('foo'));
    unittest.expect(o.cartId!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaCompletionDetail(o.completionDetail!);
    unittest.expect(o.entity!, unittest.equals('foo'));
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
    checkUnnamed152(o.experimentIds!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.offset!, unittest.equals(42));
    unittest.expect(o.orderBy!, unittest.equals('foo'));
    checkUnnamed153(o.pageCategories!);
    unittest.expect(o.pageViewId!, unittest.equals('foo'));
    checkUnnamed154(o.panels!);
    checkUnnamed155(o.productDetails!);
    checkGoogleCloudRetailV2alphaPurchaseTransaction(o.purchaseTransaction!);
    unittest.expect(o.referrerUri!, unittest.equals('foo'));
    unittest.expect(o.searchQuery!, unittest.equals('foo'));
    unittest.expect(o.sessionId!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkGoogleCloudRetailV2alphaUserInfo(o.userInfo!);
    unittest.expect(o.visitorId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaUserEvent--;
}

core.List<api.GoogleCloudRetailV2alphaUserEvent> buildUnnamed156() => [
  buildGoogleCloudRetailV2alphaUserEvent(),
  buildGoogleCloudRetailV2alphaUserEvent(),
];

void checkUnnamed156(core.List<api.GoogleCloudRetailV2alphaUserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2alphaUserEvent(o[0]);
  checkGoogleCloudRetailV2alphaUserEvent(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaUserEventInlineSource = 0;
api.GoogleCloudRetailV2alphaUserEventInlineSource
buildGoogleCloudRetailV2alphaUserEventInlineSource() {
  final o = api.GoogleCloudRetailV2alphaUserEventInlineSource();
  buildCounterGoogleCloudRetailV2alphaUserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2alphaUserEventInlineSource < 3) {
    o.userEvents = buildUnnamed156();
  }
  buildCounterGoogleCloudRetailV2alphaUserEventInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2alphaUserEventInlineSource(
  api.GoogleCloudRetailV2alphaUserEventInlineSource o,
) {
  buildCounterGoogleCloudRetailV2alphaUserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2alphaUserEventInlineSource < 3) {
    checkUnnamed156(o.userEvents!);
  }
  buildCounterGoogleCloudRetailV2alphaUserEventInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2alphaUserEventInputConfig = 0;
api.GoogleCloudRetailV2alphaUserEventInputConfig
buildGoogleCloudRetailV2alphaUserEventInputConfig() {
  final o = api.GoogleCloudRetailV2alphaUserEventInputConfig();
  buildCounterGoogleCloudRetailV2alphaUserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaUserEventInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2alphaBigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2alphaGcsSource();
    o.userEventInlineSource =
        buildGoogleCloudRetailV2alphaUserEventInlineSource();
  }
  buildCounterGoogleCloudRetailV2alphaUserEventInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaUserEventInputConfig(
  api.GoogleCloudRetailV2alphaUserEventInputConfig o,
) {
  buildCounterGoogleCloudRetailV2alphaUserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2alphaUserEventInputConfig < 3) {
    checkGoogleCloudRetailV2alphaBigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2alphaGcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2alphaUserEventInlineSource(
      o.userEventInlineSource!,
    );
  }
  buildCounterGoogleCloudRetailV2alphaUserEventInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaUserInfo = 0;
api.GoogleCloudRetailV2alphaUserInfo buildGoogleCloudRetailV2alphaUserInfo() {
  final o = api.GoogleCloudRetailV2alphaUserInfo();
  buildCounterGoogleCloudRetailV2alphaUserInfo++;
  if (buildCounterGoogleCloudRetailV2alphaUserInfo < 3) {
    o.directUserRequest = true;
    o.ipAddress = 'foo';
    o.userAgent = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaUserInfo--;
  return o;
}

void checkGoogleCloudRetailV2alphaUserInfo(
  api.GoogleCloudRetailV2alphaUserInfo o,
) {
  buildCounterGoogleCloudRetailV2alphaUserInfo++;
  if (buildCounterGoogleCloudRetailV2alphaUserInfo < 3) {
    unittest.expect(o.directUserRequest!, unittest.isTrue);
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.userAgent!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRetailV2alphaUserInfo--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed157() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed157(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed157();
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
    checkUnnamed157(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed158() => {
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

void checkUnnamed158(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed159() => {
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

void checkUnnamed159(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed158();
    o.name = 'foo';
    o.response = buildUnnamed159();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed158(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed159(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed160() => {
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

void checkUnnamed160(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed161() => [
  buildUnnamed160(),
  buildUnnamed160(),
];

void checkUnnamed161(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed160(o[0]);
  checkUnnamed160(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed161();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed161(o.details!);
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

core.List<core.String> buildUnnamed162() => ['foo', 'foo'];

void checkUnnamed162(core.List<core.String> o) {
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

  unittest.group('obj-schema-GoogleCloudRetailV2alphaAcceptTermsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAcceptTermsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaAcceptTermsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaAcceptTermsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaAddCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaAddCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaAddCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaAddCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaAddControlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAddControlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaAddControlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaAddControlRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaAddLocalInventoriesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaAddLocalInventoriesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaAddLocalInventoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaAddLocalInventoriesRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaAlertConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAlertConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaAlertConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaAlertConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaAlertConfigAlertPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaAlertConfigAlertPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaAlertConfigAlertPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaAlertConfigAlertPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaAlertConfigAlertPolicyRecipient(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaAttributesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAttributesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaAttributesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaAttributesConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaAudience.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaAudience(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaBigQuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaBigQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaBigQuerySource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaBigQuerySource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaBranch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaBranch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaBranch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaBranch(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaBranchProductCountStatistic',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaBranchProductCountStatistic();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaBranchProductCountStatistic.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaBranchProductCountStatistic(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaBranchQualityMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaBranchQualityMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaBranchQualityMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaBranchQualityMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaCatalog(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaCatalogAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaCatalogAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaCatalogAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaCatalogAttribute(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCatalogAttributeFacetConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCatalogAttributeFacetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigIgnoredFacetValues(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacet(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigMergedFacetValue(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCatalogAttributeFacetConfigRerankConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCollectUserEventRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaCollectUserEventRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaCollectUserEventRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCollectUserEventRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaColorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaColorInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCompleteQueryResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaCompleteQueryResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaCompleteQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCompleteQueryResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCompleteQueryResponseAttributeResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCompleteQueryResponseCompletionResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCompleteQueryResponseRecentSearchResult(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaCompletionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaCompletionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaCompletionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaCompletionConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaCompletionDataInputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaCompletionDataInputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaCompletionDataInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaCompletionDataInputConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaCompletionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaCompletionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaCompletionDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaCompletionDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaCondition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaConditionQueryTerm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaConditionQueryTerm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaConditionQueryTerm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaConditionQueryTerm(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaConditionTimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaConditionTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaConditionTimeRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaConditionTimeRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaControl(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaConversationalSearchRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchRequestConversationalFilteringSpec(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchRequestSearchParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchRequestSearchParams(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswer(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchRequestUserAnswerSelectedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaConversationalSearchResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResult(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchResponseConversationalFilteringResultAdditionalFilter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestion(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchResponseFollowupQuestionSuggestedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaConversationalSearchResponseRefinedSearch(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaCustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaCustomAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaDoubleList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaDoubleList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaDoubleList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaDoubleList(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaEnrollSolutionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaEnrollSolutionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaEnrollSolutionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaEnrollSolutionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaExperimentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaExperimentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaExperimentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaExperimentInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaExperimentInfoServingConfigExperiment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaExportProductsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaExportProductsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaExportProductsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaExportProductsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaExportUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaExportUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaExportUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaExportUserEventsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaFulfillmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaFulfillmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaFulfillmentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaFulfillmentInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaGcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaGcsSource(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaGenerativeQuestionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaGenerativeQuestionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaGenerativeQuestionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaGetDefaultBranchResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaGetDefaultBranchResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaGetDefaultBranchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaGetDefaultBranchResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaImage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaImage(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaImportCompletionDataRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaImportCompletionDataRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaImportCompletionDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaImportCompletionDataRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaImportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaImportErrorsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaImportErrorsConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaImportProductsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaImportProductsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaImportProductsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaImportProductsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaImportUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaImportUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaImportUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaImportUserEventsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaIntentClassificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaIntentClassificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaIntentClassificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaIntentClassificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaIntentClassificationConfigExample',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaIntentClassificationConfigExample();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaIntentClassificationConfigExample.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaIntentClassificationConfigExample(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineForceIntent(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaIntentClassificationConfigInlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaIntentClassificationConfigInlineSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaInterval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaListBranchesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaListBranchesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaListBranchesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaListBranchesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaListCatalogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaListCatalogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaListCatalogsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaListCatalogsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaListControlsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaListControlsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaListControlsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaListControlsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaListEnrolledSolutionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaListEnrolledSolutionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaListEnrolledSolutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaListEnrolledSolutionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaListModelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaListModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaListModelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaListModelsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaListProductsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaListProductsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaListServingConfigsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaListServingConfigsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaListServingConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaListServingConfigsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaLocalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaLocalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaLocalInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaLocalInventory(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaLoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaLoggingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaLoggingConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaLoggingConfigLogGenerationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaLoggingConfigLogGenerationRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaLoggingConfigServiceLogGenerationRule(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaMerchantCenterAccountLink',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaMerchantCenterAccountLink();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaMerchantCenterAccountLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaMerchantCenterAccountLink(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaMerchantCenterAccountLinkMerchantCenterFeedFilter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaMerchantCenterFeedFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaMerchantCenterFeedFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaMerchantCenterFeedFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaMerchantCenterFeedFilter(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaMerchantCenterLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaMerchantCenterLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaMerchantCenterLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaMerchantCenterLink(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaMerchantCenterLinkingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaMerchantCenterLinkingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaMerchantCenterLinkingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaMerchantCenterLinkingConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaModel(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaModelModelFeaturesConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaModelModelFeaturesConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaModelModelFeaturesConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaModelPageOptimizationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaModelPageOptimizationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaModelPageOptimizationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaModelPageOptimizationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaModelServingConfigList',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaModelServingConfigList();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaModelServingConfigList.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaModelServingConfigList(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaOutputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaOutputConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaOutputConfigBigQueryDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaOutputConfigBigQueryDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaOutputConfigBigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaOutputConfigBigQueryDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaOutputConfigGcsDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaOutputConfigGcsDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaOutputConfigGcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaOutputConfigGcsDestination(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPanelInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPanelInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPanelInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPanelInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPauseModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPauseModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPauseModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPauseModelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPinControlMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPinControlMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPinControlMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPinControlMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaPinControlMetadataProductPins',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaPinControlMetadataProductPins();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaPinControlMetadataProductPins.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaPinControlMetadataProductPins(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPredictRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPredictRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPredictRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPredictRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPredictResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPredictResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPredictResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPredictResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaPredictResponsePredictionResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaPredictResponsePredictionResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaPredictResponsePredictionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaPredictResponsePredictionResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPriceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPriceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPriceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPriceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPriceInfoPriceRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPriceInfoPriceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPriceInfoPriceRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPriceInfoPriceRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaProduct(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaProductAttributeInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaProductAttributeInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaProductAttributeInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaProductAttributeInterval(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaProductAttributeValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaProductAttributeValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaProductAttributeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaProductAttributeValue(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaProductDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaProductDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaProductInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaProductInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaProductInlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaProductInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaProductInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaProductInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaProductInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaProductInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaProductLevelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaProductLevelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaProductLevelConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaProductLevelConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaProject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaProject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaProject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPromotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPromotion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPromotion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPurchaseTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPurchaseTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPurchaseTransaction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPurchaseTransaction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPurgeProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPurgeProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPurgeProductsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaPurgeProductsRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaPurgeUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaPurgeUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaPurgeUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaPurgeUserEventsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRating.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRating(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRejoinUserEventsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRejoinUserEventsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaRejoinUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRejoinUserEventsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRemoveControlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRemoveControlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRemoveControlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRemoveControlRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaResumeModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaResumeModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaResumeModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaResumeModelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRuleBoostAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRuleBoostAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRuleBoostAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRuleBoostAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleDoNotAssociateAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRuleDoNotAssociateAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRuleDoNotAssociateAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleDoNotAssociateAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRuleFilterAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRuleFilterAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRuleFilterAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRuleFilterAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleForceReturnFacetAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRuleForceReturnFacetAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRuleForceReturnFacetAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleForceReturnFacetAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustment(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRuleIgnoreAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRuleIgnoreAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRuleIgnoreAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRuleIgnoreAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleOnewaySynonymsAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRuleOnewaySynonymsAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRuleOnewaySynonymsAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleOnewaySynonymsAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRulePinAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRulePinAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRulePinAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRulePinAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRuleRedirectAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRuleRedirectAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRuleRedirectAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaRuleRedirectAction(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleRemoveFacetAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRuleRemoveFacetAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaRuleRemoveFacetAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleRemoveFacetAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleReplacementAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRuleReplacementAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaRuleReplacementAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleReplacementAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaRuleTwowaySynonymsAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaRuleTwowaySynonymsAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaRuleTwowaySynonymsAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaRuleTwowaySynonymsAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSafetySetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSafetySetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSafetySetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaSafetySetting(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSearchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaSearchRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestBoostSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSearchRequestBoostSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaSearchRequestBoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestBoostSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestBoostSpecConditionBoostSpec(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestConversationalSearchSpecUserAnswerSelectedAnswer(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestFacetSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSearchRequestFacetSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaSearchRequestFacetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestFacetSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestFacetSpecFacetKey(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestPersonalizationSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestQueryExpansionSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestSpellCorrectionSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchRequestTileNavigationSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchRequestTileNavigationSpec(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSearchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaSearchResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseConversationalSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResult(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultAdditionalFilter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseConversationalSearchResultSuggestedAnswer(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSearchResponseFacet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSearchResponseFacet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSearchResponseFacet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaSearchResponseFacet(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseFacetFacetValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSearchResponseFacetFacetValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseFacetFacetValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseFacetFacetValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseQueryExpansionInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseSearchResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSearchResponseSearchResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseSearchResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSearchResponseTileNavigationResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaSearchResponseTileNavigationResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaSearchResponseTileNavigationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSearchResponseTileNavigationResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaServingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaServingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaServingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaServingConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaSetDefaultBranchRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaSetDefaultBranchRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaSetDefaultBranchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaSetDefaultBranchRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSetInventoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSetInventoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSetInventoryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaSetInventoryRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaStringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaStringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaStringList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaTile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaTile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaTile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaTile(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaTuneModelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaTuneModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaTuneModelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaTuneModelRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaUpdateGenerativeQuestionConfigRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaUserEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaUserEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaUserEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaUserEvent(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudRetailV2alphaUserEventInlineSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudRetailV2alphaUserEventInlineSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudRetailV2alphaUserEventInlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudRetailV2alphaUserEventInlineSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudRetailV2alphaUserEventInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaUserEventInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaUserEventInputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaUserEventInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaUserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRetailV2alphaUserInfo(od);
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
    unittest.test('method--enrollSolution', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects;
      final arg_request = buildGoogleCloudRetailV2alphaEnrollSolutionRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaEnrollSolutionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaEnrollSolutionRequest(obj);

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
            unittest.equals('v2alpha/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enrollSolution(
        arg_request,
        arg_project,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaAlertConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAlertConfig(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2alphaAlertConfig(
        response as api.GoogleCloudRetailV2alphaAlertConfig,
      );
    });

    unittest.test('method--getLoggingConfig', () async {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaLoggingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getLoggingConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaLoggingConfig(
        response as api.GoogleCloudRetailV2alphaLoggingConfig,
      );
    });

    unittest.test('method--getRetailProject', () async {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaProject(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRetailProject(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaProject(
        response as api.GoogleCloudRetailV2alphaProject,
      );
    });

    unittest.test('method--listEnrolledSolutions', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaListEnrolledSolutionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listEnrolledSolutions(
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaListEnrolledSolutionsResponse(
        response as api.GoogleCloudRetailV2alphaListEnrolledSolutionsResponse,
      );
    });

    unittest.test('method--updateAlertConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects;
      final arg_request = buildGoogleCloudRetailV2alphaAlertConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaAlertConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAlertConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaAlertConfig(),
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
      checkGoogleCloudRetailV2alphaAlertConfig(
        response as api.GoogleCloudRetailV2alphaAlertConfig,
      );
    });

    unittest.test('method--updateLoggingConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects;
      final arg_request = buildGoogleCloudRetailV2alphaLoggingConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaLoggingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaLoggingConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaLoggingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateLoggingConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaLoggingConfig(
        response as api.GoogleCloudRetailV2alphaLoggingConfig,
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
      final arg_languageCodes = buildUnnamed162();
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaCompleteQueryResponse(),
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
      checkGoogleCloudRetailV2alphaCompleteQueryResponse(
        response as api.GoogleCloudRetailV2alphaCompleteQueryResponse,
      );
    });

    unittest.test('method--exportAnalyticsMetrics', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaExportAnalyticsMetricsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaExportAnalyticsMetricsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaAttributesConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAttributesConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaAttributesConfig(
        response as api.GoogleCloudRetailV2alphaAttributesConfig,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaCompletionConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCompletionConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaCompletionConfig(
        response as api.GoogleCloudRetailV2alphaCompletionConfig,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getConversationalSearchCustomizationConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(
        response
            as api.GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaGetDefaultBranchResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDefaultBranch(
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaGetDefaultBranchResponse(
        response as api.GoogleCloudRetailV2alphaGetDefaultBranchResponse,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getGenerativeQuestionFeature(
        arg_catalog,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(
        response
            as api.GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaListCatalogsResponse(),
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
      checkGoogleCloudRetailV2alphaListCatalogsResponse(
        response as api.GoogleCloudRetailV2alphaListCatalogsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2alphaCatalog();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaCatalog.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaCatalog(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaCatalog(),
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
      checkGoogleCloudRetailV2alphaCatalog(
        response as api.GoogleCloudRetailV2alphaCatalog,
      );
    });

    unittest.test('method--setDefaultBranch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2alphaSetDefaultBranchRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaSetDefaultBranchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaSetDefaultBranchRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request = buildGoogleCloudRetailV2alphaAttributesConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaAttributesConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAttributesConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaAttributesConfig(),
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
      checkGoogleCloudRetailV2alphaAttributesConfig(
        response as api.GoogleCloudRetailV2alphaAttributesConfig,
      );
    });

    unittest.test('method--updateCompletionConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2alphaCompletionConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaCompletionConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaCompletionConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaCompletionConfig(),
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
      checkGoogleCloudRetailV2alphaCompletionConfig(
        response as api.GoogleCloudRetailV2alphaCompletionConfig,
      );
    });

    unittest.test('method--updateConversationalSearchCustomizationConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(
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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(),
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
      checkGoogleCloudRetailV2alphaConversationalSearchCustomizationConfig(
        response
            as api.GoogleCloudRetailV2alphaConversationalSearchCustomizationConfig,
      );
    });

    unittest.test('method--updateGenerativeQuestion', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2alphaGenerativeQuestionConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaGenerativeQuestionConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaGenerativeQuestionConfig(),
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
      checkGoogleCloudRetailV2alphaGenerativeQuestionConfig(
        response as api.GoogleCloudRetailV2alphaGenerativeQuestionConfig,
      );
    });

    unittest.test('method--updateGenerativeQuestionFeature', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request =
          buildGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig();
      final arg_catalog = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(),
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
      checkGoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig(
        response
            as api.GoogleCloudRetailV2alphaGenerativeQuestionsFeatureConfig,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsAttributesConfigResource', () {
    unittest.test('method--addCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2alphaAddCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaAddCatalogAttributeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAddCatalogAttributeRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaAttributesConfig(),
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
      checkGoogleCloudRetailV2alphaAttributesConfig(
        response as api.GoogleCloudRetailV2alphaAttributesConfig,
      );
    });

    unittest.test('method--batchRemoveCatalogAttributes', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse(),
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
      checkGoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse(
        response
            as api.GoogleCloudRetailV2alphaBatchRemoveCatalogAttributesResponse,
      );
    });

    unittest.test('method--removeCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaRemoveCatalogAttributeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaRemoveCatalogAttributeRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaAttributesConfig(),
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
      checkGoogleCloudRetailV2alphaAttributesConfig(
        response as api.GoogleCloudRetailV2alphaAttributesConfig,
      );
    });

    unittest.test('method--replaceCatalogAttribute', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.attributesConfig;
      final arg_request =
          buildGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest();
      final arg_attributesConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaReplaceCatalogAttributeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaReplaceCatalogAttributeRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaAttributesConfig(),
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
      checkGoogleCloudRetailV2alphaAttributesConfig(
        response as api.GoogleCloudRetailV2alphaAttributesConfig,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsBranchesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.branches;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2alpha/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaBranch(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaBranch(
        response as api.GoogleCloudRetailV2alphaBranch,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.branches;
      final arg_parent = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2alpha/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaListBranchesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaListBranchesResponse(
        response as api.GoogleCloudRetailV2alphaListBranchesResponse,
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v2alpha/'),
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

  unittest.group(
    'resource-ProjectsLocationsCatalogsBranchesPlacesOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudRetailApi(
              mock,
            ).projects.locations.catalogs.branches.places.operations;
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
              unittest.equals('v2alpha/'),
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
          buildGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaAddFulfillmentPlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAddFulfillmentPlacesRequest(obj);

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
            unittest.equals('v2alpha/'),
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
          buildGoogleCloudRetailV2alphaAddLocalInventoriesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaAddLocalInventoriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAddLocalInventoriesRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request = buildGoogleCloudRetailV2alphaProduct();
      final arg_parent = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaProduct.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaProduct(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['productId']!.first,
            unittest.equals(arg_productId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaProduct(),
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
      checkGoogleCloudRetailV2alphaProduct(
        response as api.GoogleCloudRetailV2alphaProduct,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v2alpha/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
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
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2alphaExportProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaExportProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaExportProductsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaProduct(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2alphaProduct(
        response as api.GoogleCloudRetailV2alphaProduct,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2alphaImportProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaImportProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaImportProductsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_requireTotalSize = true;
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
            unittest.equals('v2alpha/'),
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['requireTotalSize']!.first,
            unittest.equals('$arg_requireTotalSize'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaListProductsResponse(),
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
        requireTotalSize: arg_requireTotalSize,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaListProductsResponse(
        response as api.GoogleCloudRetailV2alphaListProductsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2alphaProduct();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaProduct.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaProduct(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaProduct(),
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
      checkGoogleCloudRetailV2alphaProduct(
        response as api.GoogleCloudRetailV2alphaProduct,
      );
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(
            mock,
          ).projects.locations.catalogs.branches.products;
      final arg_request = buildGoogleCloudRetailV2alphaPurgeProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaPurgeProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaPurgeProductsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
          buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesRequest(obj);

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
            unittest.equals('v2alpha/'),
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
          buildGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaRemoveLocalInventoriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaRemoveLocalInventoriesRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request = buildGoogleCloudRetailV2alphaSetInventoryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaSetInventoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaSetInventoryRequest(obj);

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
            unittest.equals('v2alpha/'),
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
          buildGoogleCloudRetailV2alphaImportCompletionDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaImportCompletionDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaImportCompletionDataRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request = buildGoogleCloudRetailV2alphaControl();
      final arg_parent = 'foo';
      final arg_controlId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaControl.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaControl(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['controlId']!.first,
            unittest.equals(arg_controlId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaControl(),
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
      checkGoogleCloudRetailV2alphaControl(
        response as api.GoogleCloudRetailV2alphaControl,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaControl(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2alphaControl(
        response as api.GoogleCloudRetailV2alphaControl,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaListControlsResponse(),
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
      checkGoogleCloudRetailV2alphaListControlsResponse(
        response as api.GoogleCloudRetailV2alphaListControlsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.controls;
      final arg_request = buildGoogleCloudRetailV2alphaControl();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaControl.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaControl(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaControl(),
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
      checkGoogleCloudRetailV2alphaControl(
        response as api.GoogleCloudRetailV2alphaControl,
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
          buildGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsRequest(
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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse(),
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
      checkGoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse(
        response
            as api.GoogleCloudRetailV2alphaBatchUpdateGenerativeQuestionConfigsResponse,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse(
        response
            as api.GoogleCloudRetailV2alphaListGenerativeQuestionConfigsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsCatalogsMerchantCenterAccountLinksResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudRetailApi(
              mock,
            ).projects.locations.catalogs.merchantCenterAccountLinks;
        final arg_request =
            buildGoogleCloudRetailV2alphaMerchantCenterAccountLink();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .GoogleCloudRetailV2alphaMerchantCenterAccountLink.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudRetailV2alphaMerchantCenterAccountLink(obj);

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
              unittest.equals('v2alpha/'),
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudRetailApi(
              mock,
            ).projects.locations.catalogs.merchantCenterAccountLinks;
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
              unittest.equals('v2alpha/'),
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
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.CloudRetailApi(
              mock,
            ).projects.locations.catalogs.merchantCenterAccountLinks;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v2alpha/'),
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
              buildGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(arg_parent, $fields: arg_$fields);
        checkGoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse(
          response
              as api.GoogleCloudRetailV2alphaListMerchantCenterAccountLinksResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsCatalogsModelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2alphaModel();
      final arg_parent = 'foo';
      final arg_dryRun = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaModel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaModel(obj);

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
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaModel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2alphaModel(
        response as api.GoogleCloudRetailV2alphaModel,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaListModelsResponse(),
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
      checkGoogleCloudRetailV2alphaListModelsResponse(
        response as api.GoogleCloudRetailV2alphaListModelsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2alphaModel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaModel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaModel(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaModel(),
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
      checkGoogleCloudRetailV2alphaModel(
        response as api.GoogleCloudRetailV2alphaModel,
      );
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2alphaPauseModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaPauseModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaPauseModelRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaModel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pause(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaModel(
        response as api.GoogleCloudRetailV2alphaModel,
      );
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2alphaResumeModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaResumeModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaResumeModelRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaModel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaModel(
        response as api.GoogleCloudRetailV2alphaModel,
      );
    });

    unittest.test('method--tune', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs.models;
      final arg_request = buildGoogleCloudRetailV2alphaTuneModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaTuneModelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaTuneModelRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
    unittest.test('method--conversationalSearch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request =
          buildGoogleCloudRetailV2alphaConversationalSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaConversationalSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaConversationalSearchRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaConversationalSearchResponse(),
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
      checkGoogleCloudRetailV2alphaConversationalSearchResponse(
        response as api.GoogleCloudRetailV2alphaConversationalSearchResponse,
      );
    });

    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2alphaPredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaPredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaPredictRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaPredictResponse(),
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
      checkGoogleCloudRetailV2alphaPredictResponse(
        response as api.GoogleCloudRetailV2alphaPredictResponse,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2alphaSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaSearchRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaSearchResponse(),
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
      checkGoogleCloudRetailV2alphaSearchResponse(
        response as api.GoogleCloudRetailV2alphaSearchResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsServingConfigsResource', () {
    unittest.test('method--addControl', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2alphaAddControlRequest();
      final arg_servingConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaAddControlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAddControlRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaServingConfig(),
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
      checkGoogleCloudRetailV2alphaServingConfig(
        response as api.GoogleCloudRetailV2alphaServingConfig,
      );
    });

    unittest.test('method--conversationalSearch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request =
          buildGoogleCloudRetailV2alphaConversationalSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaConversationalSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaConversationalSearchRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaConversationalSearchResponse(),
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
      checkGoogleCloudRetailV2alphaConversationalSearchResponse(
        response as api.GoogleCloudRetailV2alphaConversationalSearchResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2alphaServingConfig();
      final arg_parent = 'foo';
      final arg_servingConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaServingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaServingConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['servingConfigId']!.first,
            unittest.equals(arg_servingConfigId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaServingConfig(),
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
      checkGoogleCloudRetailV2alphaServingConfig(
        response as api.GoogleCloudRetailV2alphaServingConfig,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaServingConfig(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2alphaServingConfig(
        response as api.GoogleCloudRetailV2alphaServingConfig,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaListServingConfigsResponse(),
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
      checkGoogleCloudRetailV2alphaListServingConfigsResponse(
        response as api.GoogleCloudRetailV2alphaListServingConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2alphaServingConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaServingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaServingConfig(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaServingConfig(),
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
      checkGoogleCloudRetailV2alphaServingConfig(
        response as api.GoogleCloudRetailV2alphaServingConfig,
      );
    });

    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2alphaPredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaPredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaPredictRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaPredictResponse(),
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
      checkGoogleCloudRetailV2alphaPredictResponse(
        response as api.GoogleCloudRetailV2alphaPredictResponse,
      );
    });

    unittest.test('method--removeControl', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2alphaRemoveControlRequest();
      final arg_servingConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaRemoveControlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaRemoveControlRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaServingConfig(),
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
      checkGoogleCloudRetailV2alphaServingConfig(
        response as api.GoogleCloudRetailV2alphaServingConfig,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.servingConfigs;
      final arg_request = buildGoogleCloudRetailV2alphaSearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaSearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaSearchRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaSearchResponse(),
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
      checkGoogleCloudRetailV2alphaSearchResponse(
        response as api.GoogleCloudRetailV2alphaSearchResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsUserEventsResource', () {
    unittest.test('method--collect', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request =
          buildGoogleCloudRetailV2alphaCollectUserEventRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaCollectUserEventRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaCollectUserEventRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request =
          buildGoogleCloudRetailV2alphaExportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaExportUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaExportUserEventsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request =
          buildGoogleCloudRetailV2alphaImportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaImportUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaImportUserEventsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request = buildGoogleCloudRetailV2alphaPurgeUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaPurgeUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaPurgeUserEventsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request =
          buildGoogleCloudRetailV2alphaRejoinUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudRetailV2alphaRejoinUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaRejoinUserEventsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
      final arg_request = buildGoogleCloudRetailV2alphaUserEvent();
      final arg_parent = 'foo';
      final arg_writeAsync = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaUserEvent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaUserEvent(obj);

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
            unittest.equals('v2alpha/'),
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
            queryMap['writeAsync']!.first,
            unittest.equals('$arg_writeAsync'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudRetailV2alphaUserEvent(),
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
      checkGoogleCloudRetailV2alphaUserEvent(
        response as api.GoogleCloudRetailV2alphaUserEvent,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2alpha/'),
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

  unittest.group('resource-ProjectsRetailProjectResource', () {
    unittest.test('method--acceptTerms', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.retailProject;
      final arg_request = buildGoogleCloudRetailV2alphaAcceptTermsRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudRetailV2alphaAcceptTermsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudRetailV2alphaAcceptTermsRequest(obj);

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
            unittest.equals('v2alpha/'),
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
            buildGoogleCloudRetailV2alphaProject(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.acceptTerms(
        arg_request,
        arg_project,
        $fields: arg_$fields,
      );
      checkGoogleCloudRetailV2alphaProject(
        response as api.GoogleCloudRetailV2alphaProject,
      );
    });
  });
}
