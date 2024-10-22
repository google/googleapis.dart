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

import 'package:googleapis/manufacturers/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Image> buildUnnamed0() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed0(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.List<api.GoogleShoppingManufacturersV1ProductCertification>
    buildUnnamed1() => [
          buildGoogleShoppingManufacturersV1ProductCertification(),
          buildGoogleShoppingManufacturersV1ProductCertification(),
        ];

void checkUnnamed1(
    core.List<api.GoogleShoppingManufacturersV1ProductCertification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleShoppingManufacturersV1ProductCertification(o[0]);
  checkGoogleShoppingManufacturersV1ProductCertification(o[1]);
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.List<api.FeatureDescription> buildUnnamed3() => [
      buildFeatureDescription(),
      buildFeatureDescription(),
    ];

void checkUnnamed3(core.List<api.FeatureDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeatureDescription(o[0]);
  checkFeatureDescription(o[1]);
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

core.List<api.ProductDetail> buildUnnamed7() => [
      buildProductDetail(),
      buildProductDetail(),
    ];

void checkUnnamed7(core.List<api.ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDetail(o[0]);
  checkProductDetail(o[1]);
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  final o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.additionalImageLink = buildUnnamed0();
    o.ageGroup = 'foo';
    o.brand = 'foo';
    o.capacity = buildCapacity();
    o.certification = buildUnnamed1();
    o.color = 'foo';
    o.count = buildCount();
    o.description = 'foo';
    o.disclosureDate = 'foo';
    o.excludedDestination = buildUnnamed2();
    o.featureDescription = buildUnnamed3();
    o.flavor = 'foo';
    o.format = 'foo';
    o.gender = 'foo';
    o.grocery = buildGrocery();
    o.gtin = buildUnnamed4();
    o.imageLink = buildImage();
    o.includedDestination = buildUnnamed5();
    o.intendedCountry = buildUnnamed6();
    o.itemGroupId = 'foo';
    o.material = 'foo';
    o.mpn = 'foo';
    o.nutrition = buildNutrition();
    o.pattern = 'foo';
    o.productDetail = buildUnnamed7();
    o.productHighlight = buildUnnamed8();
    o.productLine = 'foo';
    o.productName = 'foo';
    o.productPageUrl = 'foo';
    o.productType = buildUnnamed9();
    o.releaseDate = 'foo';
    o.richProductContent = buildUnnamed10();
    o.scent = 'foo';
    o.size = 'foo';
    o.sizeSystem = 'foo';
    o.sizeType = buildUnnamed11();
    o.suggestedRetailPrice = buildPrice();
    o.targetClientId = 'foo';
    o.theme = 'foo';
    o.title = 'foo';
    o.videoLink = buildUnnamed12();
    o.virtualModelLink = 'foo';
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed0(o.additionalImageLink!);
    unittest.expect(
      o.ageGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    checkCapacity(o.capacity!);
    checkUnnamed1(o.certification!);
    unittest.expect(
      o.color!,
      unittest.equals('foo'),
    );
    checkCount(o.count!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disclosureDate!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.excludedDestination!);
    checkUnnamed3(o.featureDescription!);
    unittest.expect(
      o.flavor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gender!,
      unittest.equals('foo'),
    );
    checkGrocery(o.grocery!);
    checkUnnamed4(o.gtin!);
    checkImage(o.imageLink!);
    checkUnnamed5(o.includedDestination!);
    checkUnnamed6(o.intendedCountry!);
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.material!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpn!,
      unittest.equals('foo'),
    );
    checkNutrition(o.nutrition!);
    unittest.expect(
      o.pattern!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.productDetail!);
    checkUnnamed8(o.productHighlight!);
    unittest.expect(
      o.productLine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productPageUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.productType!);
    unittest.expect(
      o.releaseDate!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.richProductContent!);
    unittest.expect(
      o.scent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeSystem!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.sizeType!);
    checkPrice(o.suggestedRetailPrice!);
    unittest.expect(
      o.targetClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.theme!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.videoLink!);
    unittest.expect(
      o.virtualModelLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttributes--;
}

core.int buildCounterCapacity = 0;
api.Capacity buildCapacity() {
  final o = api.Capacity();
  buildCounterCapacity++;
  if (buildCounterCapacity < 3) {
    o.unit = 'foo';
    o.value = 'foo';
  }
  buildCounterCapacity--;
  return o;
}

void checkCapacity(api.Capacity o) {
  buildCounterCapacity++;
  if (buildCounterCapacity < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCapacity--;
}

core.int buildCounterCertification = 0;
api.Certification buildCertification() {
  final o = api.Certification();
  buildCounterCertification++;
  if (buildCounterCertification < 3) {
    o.authority = 'foo';
    o.code = 'foo';
    o.link = 'foo';
    o.logo = 'foo';
    o.name = 'foo';
    o.validUntil = 'foo';
    o.value = 'foo';
  }
  buildCounterCertification--;
  return o;
}

void checkCertification(api.Certification o) {
  buildCounterCertification++;
  if (buildCounterCertification < 3) {
    unittest.expect(
      o.authority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validUntil!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertification--;
}

core.int buildCounterCount = 0;
api.Count buildCount() {
  final o = api.Count();
  buildCounterCount++;
  if (buildCounterCount < 3) {
    o.unit = 'foo';
    o.value = 'foo';
  }
  buildCounterCount--;
  return o;
}

void checkCount(api.Count o) {
  buildCounterCount++;
  if (buildCounterCount < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCount--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterDestinationStatus = 0;
api.DestinationStatus buildDestinationStatus() {
  final o = api.DestinationStatus();
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed13();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed14();
    o.pendingCountries = buildUnnamed15();
    o.status = 'foo';
  }
  buildCounterDestinationStatus--;
  return o;
}

void checkDestinationStatus(api.DestinationStatus o) {
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    checkUnnamed13(o.approvedCountries!);
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.disapprovedCountries!);
    checkUnnamed15(o.pendingCountries!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestinationStatus--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterFeatureDescription = 0;
api.FeatureDescription buildFeatureDescription() {
  final o = api.FeatureDescription();
  buildCounterFeatureDescription++;
  if (buildCounterFeatureDescription < 3) {
    o.headline = 'foo';
    o.image = buildImage();
    o.text = 'foo';
  }
  buildCounterFeatureDescription--;
  return o;
}

void checkFeatureDescription(api.FeatureDescription o) {
  buildCounterFeatureDescription++;
  if (buildCounterFeatureDescription < 3) {
    unittest.expect(
      o.headline!,
      unittest.equals('foo'),
    );
    checkImage(o.image!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeatureDescription--;
}

core.int buildCounterFloatUnit = 0;
api.FloatUnit buildFloatUnit() {
  final o = api.FloatUnit();
  buildCounterFloatUnit++;
  if (buildCounterFloatUnit < 3) {
    o.amount = 42.0;
    o.unit = 'foo';
  }
  buildCounterFloatUnit--;
  return o;
}

void checkFloatUnit(api.FloatUnit o) {
  buildCounterFloatUnit++;
  if (buildCounterFloatUnit < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterFloatUnit--;
}

core.int buildCounterGoogleShoppingManufacturersV1ProductCertification = 0;
api.GoogleShoppingManufacturersV1ProductCertification
    buildGoogleShoppingManufacturersV1ProductCertification() {
  final o = api.GoogleShoppingManufacturersV1ProductCertification();
  buildCounterGoogleShoppingManufacturersV1ProductCertification++;
  if (buildCounterGoogleShoppingManufacturersV1ProductCertification < 3) {
    o.authority = 'foo';
    o.code = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleShoppingManufacturersV1ProductCertification--;
  return o;
}

void checkGoogleShoppingManufacturersV1ProductCertification(
    api.GoogleShoppingManufacturersV1ProductCertification o) {
  buildCounterGoogleShoppingManufacturersV1ProductCertification++;
  if (buildCounterGoogleShoppingManufacturersV1ProductCertification < 3) {
    unittest.expect(
      o.authority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleShoppingManufacturersV1ProductCertification--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterGrocery = 0;
api.Grocery buildGrocery() {
  final o = api.Grocery();
  buildCounterGrocery++;
  if (buildCounterGrocery < 3) {
    o.activeIngredients = 'foo';
    o.alcoholByVolume = 42.0;
    o.allergens = 'foo';
    o.derivedNutritionClaim = buildUnnamed16();
    o.directions = 'foo';
    o.indications = 'foo';
    o.ingredients = 'foo';
    o.nutritionClaim = buildUnnamed17();
    o.storageInstructions = 'foo';
  }
  buildCounterGrocery--;
  return o;
}

void checkGrocery(api.Grocery o) {
  buildCounterGrocery++;
  if (buildCounterGrocery < 3) {
    unittest.expect(
      o.activeIngredients!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.alcoholByVolume!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.allergens!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.derivedNutritionClaim!);
    unittest.expect(
      o.directions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.indications!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ingredients!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.nutritionClaim!);
    unittest.expect(
      o.storageInstructions!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrocery--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.imageUrl = 'foo';
    o.status = 'foo';
    o.type = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
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

core.int buildCounterIssue = 0;
api.Issue buildIssue() {
  final o = api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.applicableCountries = buildUnnamed18();
    o.attribute = 'foo';
    o.description = 'foo';
    o.destination = 'foo';
    o.resolution = 'foo';
    o.severity = 'foo';
    o.timestamp = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterIssue--;
  return o;
}

void checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    checkUnnamed18(o.applicableCountries!);
    unittest.expect(
      o.attribute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterIssue--;
}

core.List<api.ProductCertification> buildUnnamed19() => [
      buildProductCertification(),
      buildProductCertification(),
    ];

void checkUnnamed19(core.List<api.ProductCertification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCertification(o[0]);
  checkProductCertification(o[1]);
}

core.int buildCounterListProductCertificationsResponse = 0;
api.ListProductCertificationsResponse buildListProductCertificationsResponse() {
  final o = api.ListProductCertificationsResponse();
  buildCounterListProductCertificationsResponse++;
  if (buildCounterListProductCertificationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.productCertifications = buildUnnamed19();
  }
  buildCounterListProductCertificationsResponse--;
  return o;
}

void checkListProductCertificationsResponse(
    api.ListProductCertificationsResponse o) {
  buildCounterListProductCertificationsResponse++;
  if (buildCounterListProductCertificationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.productCertifications!);
  }
  buildCounterListProductCertificationsResponse--;
}

core.List<api.Product> buildUnnamed20() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed20(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsResponse = 0;
api.ListProductsResponse buildListProductsResponse() {
  final o = api.ListProductsResponse();
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed20();
  }
  buildCounterListProductsResponse--;
  return o;
}

void checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.products!);
  }
  buildCounterListProductsResponse--;
}

core.List<api.VoluntaryNutritionFact> buildUnnamed21() => [
      buildVoluntaryNutritionFact(),
      buildVoluntaryNutritionFact(),
    ];

void checkUnnamed21(core.List<api.VoluntaryNutritionFact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoluntaryNutritionFact(o[0]);
  checkVoluntaryNutritionFact(o[1]);
}

core.int buildCounterNutrition = 0;
api.Nutrition buildNutrition() {
  final o = api.Nutrition();
  buildCounterNutrition++;
  if (buildCounterNutrition < 3) {
    o.addedSugars = buildFloatUnit();
    o.addedSugarsDailyPercentage = 42.0;
    o.calcium = buildFloatUnit();
    o.calciumDailyPercentage = 42.0;
    o.cholesterol = buildFloatUnit();
    o.cholesterolDailyPercentage = 42.0;
    o.dietaryFiber = buildFloatUnit();
    o.dietaryFiberDailyPercentage = 42.0;
    o.energy = buildFloatUnit();
    o.energyFromFat = buildFloatUnit();
    o.folateDailyPercentage = 42.0;
    o.folateFolicAcid = buildFloatUnit();
    o.folateMcgDfe = 42.0;
    o.iron = buildFloatUnit();
    o.ironDailyPercentage = 42.0;
    o.monounsaturatedFat = buildFloatUnit();
    o.nutritionFactMeasure = 'foo';
    o.polyols = buildFloatUnit();
    o.polyunsaturatedFat = buildFloatUnit();
    o.potassium = buildFloatUnit();
    o.potassiumDailyPercentage = 42.0;
    o.preparedSizeDescription = 'foo';
    o.protein = buildFloatUnit();
    o.proteinDailyPercentage = 42.0;
    o.saturatedFat = buildFloatUnit();
    o.saturatedFatDailyPercentage = 42.0;
    o.servingSizeDescription = 'foo';
    o.servingSizeMeasure = buildFloatUnit();
    o.servingsPerContainer = 'foo';
    o.sodium = buildFloatUnit();
    o.sodiumDailyPercentage = 42.0;
    o.starch = buildFloatUnit();
    o.totalCarbohydrate = buildFloatUnit();
    o.totalCarbohydrateDailyPercentage = 42.0;
    o.totalFat = buildFloatUnit();
    o.totalFatDailyPercentage = 42.0;
    o.totalSugars = buildFloatUnit();
    o.totalSugarsDailyPercentage = 42.0;
    o.transFat = buildFloatUnit();
    o.transFatDailyPercentage = 42.0;
    o.vitaminD = buildFloatUnit();
    o.vitaminDDailyPercentage = 42.0;
    o.voluntaryNutritionFact = buildUnnamed21();
  }
  buildCounterNutrition--;
  return o;
}

void checkNutrition(api.Nutrition o) {
  buildCounterNutrition++;
  if (buildCounterNutrition < 3) {
    checkFloatUnit(o.addedSugars!);
    unittest.expect(
      o.addedSugarsDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.calcium!);
    unittest.expect(
      o.calciumDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.cholesterol!);
    unittest.expect(
      o.cholesterolDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.dietaryFiber!);
    unittest.expect(
      o.dietaryFiberDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.energy!);
    checkFloatUnit(o.energyFromFat!);
    unittest.expect(
      o.folateDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.folateFolicAcid!);
    unittest.expect(
      o.folateMcgDfe!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.iron!);
    unittest.expect(
      o.ironDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.monounsaturatedFat!);
    unittest.expect(
      o.nutritionFactMeasure!,
      unittest.equals('foo'),
    );
    checkFloatUnit(o.polyols!);
    checkFloatUnit(o.polyunsaturatedFat!);
    checkFloatUnit(o.potassium!);
    unittest.expect(
      o.potassiumDailyPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.preparedSizeDescription!,
      unittest.equals('foo'),
    );
    checkFloatUnit(o.protein!);
    unittest.expect(
      o.proteinDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.saturatedFat!);
    unittest.expect(
      o.saturatedFatDailyPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.servingSizeDescription!,
      unittest.equals('foo'),
    );
    checkFloatUnit(o.servingSizeMeasure!);
    unittest.expect(
      o.servingsPerContainer!,
      unittest.equals('foo'),
    );
    checkFloatUnit(o.sodium!);
    unittest.expect(
      o.sodiumDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.starch!);
    checkFloatUnit(o.totalCarbohydrate!);
    unittest.expect(
      o.totalCarbohydrateDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.totalFat!);
    unittest.expect(
      o.totalFatDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.totalSugars!);
    unittest.expect(
      o.totalSugarsDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.transFat!);
    unittest.expect(
      o.transFatDailyPercentage!,
      unittest.equals(42.0),
    );
    checkFloatUnit(o.vitaminD!);
    unittest.expect(
      o.vitaminDDailyPercentage!,
      unittest.equals(42.0),
    );
    checkUnnamed21(o.voluntaryNutritionFact!);
  }
  buildCounterNutrition--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amount = 'foo';
    o.currency = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.List<api.DestinationStatus> buildUnnamed22() => [
      buildDestinationStatus(),
      buildDestinationStatus(),
    ];

void checkUnnamed22(core.List<api.DestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationStatus(o[0]);
  checkDestinationStatus(o[1]);
}

core.List<api.Issue> buildUnnamed23() => [
      buildIssue(),
      buildIssue(),
    ];

void checkUnnamed23(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.attributes = buildAttributes();
    o.contentLanguage = 'foo';
    o.destinationStatuses = buildUnnamed22();
    o.feedLabel = 'foo';
    o.issues = buildUnnamed23();
    o.name = 'foo';
    o.parent = 'foo';
    o.productId = 'foo';
    o.targetCountry = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkAttributes(o.attributes!);
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.destinationStatuses!);
    unittest.expect(
      o.feedLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.issues!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.List<api.Certification> buildUnnamed24() => [
      buildCertification(),
      buildCertification(),
    ];

void checkUnnamed24(core.List<api.Certification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertification(o[0]);
  checkCertification(o[1]);
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<api.DestinationStatus> buildUnnamed26() => [
      buildDestinationStatus(),
      buildDestinationStatus(),
    ];

void checkUnnamed26(core.List<api.DestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationStatus(o[0]);
  checkDestinationStatus(o[1]);
}

core.List<api.Issue> buildUnnamed27() => [
      buildIssue(),
      buildIssue(),
    ];

void checkUnnamed27(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.int buildCounterProductCertification = 0;
api.ProductCertification buildProductCertification() {
  final o = api.ProductCertification();
  buildCounterProductCertification++;
  if (buildCounterProductCertification < 3) {
    o.brand = 'foo';
    o.certification = buildUnnamed24();
    o.countryCode = buildUnnamed25();
    o.destinationStatuses = buildUnnamed26();
    o.issues = buildUnnamed27();
    o.mpn = buildUnnamed28();
    o.name = 'foo';
    o.productCode = buildUnnamed29();
    o.productType = buildUnnamed30();
    o.title = 'foo';
  }
  buildCounterProductCertification--;
  return o;
}

void checkProductCertification(api.ProductCertification o) {
  buildCounterProductCertification++;
  if (buildCounterProductCertification < 3) {
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.certification!);
    checkUnnamed25(o.countryCode!);
    checkUnnamed26(o.destinationStatuses!);
    checkUnnamed27(o.issues!);
    checkUnnamed28(o.mpn!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.productCode!);
    checkUnnamed30(o.productType!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductCertification--;
}

core.int buildCounterProductDetail = 0;
api.ProductDetail buildProductDetail() {
  final o = api.ProductDetail();
  buildCounterProductDetail++;
  if (buildCounterProductDetail < 3) {
    o.attributeName = 'foo';
    o.attributeValue = 'foo';
    o.sectionName = 'foo';
  }
  buildCounterProductDetail--;
  return o;
}

void checkProductDetail(api.ProductDetail o) {
  buildCounterProductDetail++;
  if (buildCounterProductDetail < 3) {
    unittest.expect(
      o.attributeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attributeValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sectionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductDetail--;
}

core.int buildCounterVoluntaryNutritionFact = 0;
api.VoluntaryNutritionFact buildVoluntaryNutritionFact() {
  final o = api.VoluntaryNutritionFact();
  buildCounterVoluntaryNutritionFact++;
  if (buildCounterVoluntaryNutritionFact < 3) {
    o.dailyPercentage = 42.0;
    o.name = 'foo';
    o.value = buildFloatUnit();
  }
  buildCounterVoluntaryNutritionFact--;
  return o;
}

void checkVoluntaryNutritionFact(api.VoluntaryNutritionFact o) {
  buildCounterVoluntaryNutritionFact++;
  if (buildCounterVoluntaryNutritionFact < 3) {
    unittest.expect(
      o.dailyPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFloatUnit(o.value!);
  }
  buildCounterVoluntaryNutritionFact--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attributes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttributes(od);
    });
  });

  unittest.group('obj-schema-Capacity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCapacity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Capacity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCapacity(od);
    });
  });

  unittest.group('obj-schema-Certification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Certification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertification(od);
    });
  });

  unittest.group('obj-schema-Count', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Count.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCount(od);
    });
  });

  unittest.group('obj-schema-DestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FeatureDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureDescription(od);
    });
  });

  unittest.group('obj-schema-FloatUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloatUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FloatUnit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFloatUnit(od);
    });
  });

  unittest.group('obj-schema-GoogleShoppingManufacturersV1ProductCertification',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleShoppingManufacturersV1ProductCertification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleShoppingManufacturersV1ProductCertification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleShoppingManufacturersV1ProductCertification(od);
    });
  });

  unittest.group('obj-schema-Grocery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrocery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Grocery.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGrocery(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Issue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIssue(od);
    });
  });

  unittest.group('obj-schema-ListProductCertificationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductCertificationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductCertificationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductCertificationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductsResponse(od);
    });
  });

  unittest.group('obj-schema-Nutrition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNutrition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Nutrition.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNutrition(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Price.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProductCertification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductCertification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductCertification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductCertification(od);
    });
  });

  unittest.group('obj-schema-ProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductDetail(od);
    });
  });

  unittest.group('obj-schema-VoluntaryNutritionFact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoluntaryNutritionFact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoluntaryNutritionFact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoluntaryNutritionFact(od);
    });
  });

  unittest.group('resource-AccountsLanguagesProductCertificationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock)
          .accounts
          .languages
          .productCertifications;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock)
          .accounts
          .languages
          .productCertifications;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildProductCertification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProductCertification(response as api.ProductCertification);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock)
          .accounts
          .languages
          .productCertifications;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp =
            convert.json.encode(buildListProductCertificationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProductCertificationsResponse(
          response as api.ListProductCertificationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock)
          .accounts
          .languages
          .productCertifications;
      final arg_request = buildProductCertification();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductCertification.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductCertification(obj);

        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildProductCertification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkProductCertification(response as api.ProductCertification);
    });
  });

  unittest.group('resource-AccountsProductsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock).accounts.products;
      final arg_parent = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_parent, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock).accounts.products;
      final arg_parent = 'foo';
      final arg_name = 'foo';
      final arg_include = buildUnnamed31();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['include']!,
          unittest.equals(arg_include),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_parent, arg_name,
          include: arg_include, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock).accounts.products;
      final arg_parent = 'foo';
      final arg_include = buildUnnamed32();
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['include']!,
          unittest.equals(arg_include),
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
        final resp = convert.json.encode(buildListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          include: arg_include,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProductsResponse(response as api.ListProductsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ManufacturerCenterApi(mock).accounts.products;
      final arg_request = buildAttributes();
      final arg_parent = 'foo';
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Attributes.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttributes(obj);

        final path = req.url.path;
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

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_parent, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });
}
