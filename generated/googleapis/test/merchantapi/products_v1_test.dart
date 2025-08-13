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

import 'package:googleapis/merchantapi/products_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAutomatedDiscounts = 0;
api.AutomatedDiscounts buildAutomatedDiscounts() {
  final o = api.AutomatedDiscounts();
  buildCounterAutomatedDiscounts++;
  if (buildCounterAutomatedDiscounts < 3) {
    o.gadPrice = buildPrice();
    o.priorPrice = buildPrice();
    o.priorPriceProgressive = buildPrice();
  }
  buildCounterAutomatedDiscounts--;
  return o;
}

void checkAutomatedDiscounts(api.AutomatedDiscounts o) {
  buildCounterAutomatedDiscounts++;
  if (buildCounterAutomatedDiscounts < 3) {
    checkPrice(o.gadPrice!);
    checkPrice(o.priorPrice!);
    checkPrice(o.priorPriceProgressive!);
  }
  buildCounterAutomatedDiscounts--;
}

core.List<core.double> buildUnnamed0() => [42.0, 42.0];

void checkUnnamed0(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCloudExportAdditionalProperties = 0;
api.CloudExportAdditionalProperties buildCloudExportAdditionalProperties() {
  final o = api.CloudExportAdditionalProperties();
  buildCounterCloudExportAdditionalProperties++;
  if (buildCounterCloudExportAdditionalProperties < 3) {
    o.boolValue = true;
    o.floatValue = buildUnnamed0();
    o.intValue = buildUnnamed1();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.propertyName = 'foo';
    o.textValue = buildUnnamed2();
    o.unitCode = 'foo';
  }
  buildCounterCloudExportAdditionalProperties--;
  return o;
}

void checkCloudExportAdditionalProperties(
  api.CloudExportAdditionalProperties o,
) {
  buildCounterCloudExportAdditionalProperties++;
  if (buildCounterCloudExportAdditionalProperties < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkUnnamed0(o.floatValue!);
    checkUnnamed1(o.intValue!);
    unittest.expect(o.maxValue!, unittest.equals(42.0));
    unittest.expect(o.minValue!, unittest.equals(42.0));
    unittest.expect(o.propertyName!, unittest.equals('foo'));
    checkUnnamed2(o.textValue!);
    unittest.expect(o.unitCode!, unittest.equals('foo'));
  }
  buildCounterCloudExportAdditionalProperties--;
}

core.List<api.CustomAttribute> buildUnnamed3() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed3(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed3();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed3(o.groupValues!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterCustomAttribute--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterDestinationStatus = 0;
api.DestinationStatus buildDestinationStatus() {
  final o = api.DestinationStatus();
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed4();
    o.disapprovedCountries = buildUnnamed5();
    o.pendingCountries = buildUnnamed6();
    o.reportingContext = 'foo';
  }
  buildCounterDestinationStatus--;
  return o;
}

void checkDestinationStatus(api.DestinationStatus o) {
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    checkUnnamed4(o.approvedCountries!);
    checkUnnamed5(o.disapprovedCountries!);
    checkUnnamed6(o.pendingCountries!);
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
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

core.int buildCounterFreeShippingThreshold = 0;
api.FreeShippingThreshold buildFreeShippingThreshold() {
  final o = api.FreeShippingThreshold();
  buildCounterFreeShippingThreshold++;
  if (buildCounterFreeShippingThreshold < 3) {
    o.country = 'foo';
    o.priceThreshold = buildPrice();
  }
  buildCounterFreeShippingThreshold--;
  return o;
}

void checkFreeShippingThreshold(api.FreeShippingThreshold o) {
  buildCounterFreeShippingThreshold++;
  if (buildCounterFreeShippingThreshold < 3) {
    unittest.expect(o.country!, unittest.equals('foo'));
    checkPrice(o.priceThreshold!);
  }
  buildCounterFreeShippingThreshold--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterItemLevelIssue = 0;
api.ItemLevelIssue buildItemLevelIssue() {
  final o = api.ItemLevelIssue();
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed7();
    o.attribute = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.reportingContext = 'foo';
    o.resolution = 'foo';
    o.severity = 'foo';
  }
  buildCounterItemLevelIssue--;
  return o;
}

void checkItemLevelIssue(api.ItemLevelIssue o) {
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    checkUnnamed7(o.applicableCountries!);
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentation!, unittest.equals('foo'));
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
    unittest.expect(o.resolution!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterItemLevelIssue--;
}

core.List<api.Product> buildUnnamed8() => [buildProduct(), buildProduct()];

void checkUnnamed8(core.List<api.Product> o) {
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
    o.products = buildUnnamed8();
  }
  buildCounterListProductsResponse--;
  return o;
}

void checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.products!);
  }
  buildCounterListProductsResponse--;
}

core.int buildCounterLoyaltyPoints = 0;
api.LoyaltyPoints buildLoyaltyPoints() {
  final o = api.LoyaltyPoints();
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    o.name = 'foo';
    o.pointsValue = 'foo';
    o.ratio = 42.0;
  }
  buildCounterLoyaltyPoints--;
  return o;
}

void checkLoyaltyPoints(api.LoyaltyPoints o) {
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pointsValue!, unittest.equals('foo'));
    unittest.expect(o.ratio!, unittest.equals(42.0));
  }
  buildCounterLoyaltyPoints--;
}

core.int buildCounterLoyaltyProgram = 0;
api.LoyaltyProgram buildLoyaltyProgram() {
  final o = api.LoyaltyProgram();
  buildCounterLoyaltyProgram++;
  if (buildCounterLoyaltyProgram < 3) {
    o.cashbackForFutureUse = buildPrice();
    o.loyaltyPoints = 'foo';
    o.memberPriceEffectiveDate = buildInterval();
    o.price = buildPrice();
    o.programLabel = 'foo';
    o.shippingLabel = 'foo';
    o.tierLabel = 'foo';
  }
  buildCounterLoyaltyProgram--;
  return o;
}

void checkLoyaltyProgram(api.LoyaltyProgram o) {
  buildCounterLoyaltyProgram++;
  if (buildCounterLoyaltyProgram < 3) {
    checkPrice(o.cashbackForFutureUse!);
    unittest.expect(o.loyaltyPoints!, unittest.equals('foo'));
    checkInterval(o.memberPriceEffectiveDate!);
    checkPrice(o.price!);
    unittest.expect(o.programLabel!, unittest.equals('foo'));
    unittest.expect(o.shippingLabel!, unittest.equals('foo'));
    unittest.expect(o.tierLabel!, unittest.equals('foo'));
  }
  buildCounterLoyaltyProgram--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 'foo';
    o.currencyCode = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.List<api.CustomAttribute> buildUnnamed9() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed9(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.automatedDiscounts = buildAutomatedDiscounts();
    o.contentLanguage = 'foo';
    o.customAttributes = buildUnnamed9();
    o.dataSource = 'foo';
    o.feedLabel = 'foo';
    o.legacyLocal = true;
    o.name = 'foo';
    o.offerId = 'foo';
    o.productAttributes = buildProductAttributes();
    o.productStatus = buildProductStatus();
    o.versionNumber = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkAutomatedDiscounts(o.automatedDiscounts!);
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    checkUnnamed9(o.customAttributes!);
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.legacyLocal!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    checkProductAttributes(o.productAttributes!);
    checkProductStatus(o.productStatus!);
    unittest.expect(o.versionNumber!, unittest.equals('foo'));
  }
  buildCounterProduct--;
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

core.List<api.ProductCertification> buildUnnamed12() => [
  buildProductCertification(),
  buildProductCertification(),
];

void checkUnnamed12(core.List<api.ProductCertification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCertification(o[0]);
  checkProductCertification(o[1]);
}

core.List<api.CloudExportAdditionalProperties> buildUnnamed13() => [
  buildCloudExportAdditionalProperties(),
  buildCloudExportAdditionalProperties(),
];

void checkUnnamed13(core.List<api.CloudExportAdditionalProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudExportAdditionalProperties(o[0]);
  checkCloudExportAdditionalProperties(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.FreeShippingThreshold> buildUnnamed16() => [
  buildFreeShippingThreshold(),
  buildFreeShippingThreshold(),
];

void checkUnnamed16(core.List<api.FreeShippingThreshold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeShippingThreshold(o[0]);
  checkFreeShippingThreshold(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LoyaltyProgram> buildUnnamed20() => [
  buildLoyaltyProgram(),
  buildLoyaltyProgram(),
];

void checkUnnamed20(core.List<api.LoyaltyProgram> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyProgram(o[0]);
  checkLoyaltyProgram(o[1]);
}

core.List<api.ProductDetail> buildUnnamed21() => [
  buildProductDetail(),
  buildProductDetail(),
];

void checkUnnamed21(core.List<api.ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDetail(o[0]);
  checkProductDetail(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Shipping> buildUnnamed25() => [buildShipping(), buildShipping()];

void checkUnnamed25(core.List<api.Shipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipping(o[0]);
  checkShipping(o[1]);
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

core.List<api.ProductSustainabilityIncentive> buildUnnamed28() => [
  buildProductSustainabilityIncentive(),
  buildProductSustainabilityIncentive(),
];

void checkUnnamed28(core.List<api.ProductSustainabilityIncentive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductSustainabilityIncentive(o[0]);
  checkProductSustainabilityIncentive(o[1]);
}

core.int buildCounterProductAttributes = 0;
api.ProductAttributes buildProductAttributes() {
  final o = api.ProductAttributes();
  buildCounterProductAttributes++;
  if (buildCounterProductAttributes < 3) {
    o.additionalImageLinks = buildUnnamed10();
    o.adsGrouping = 'foo';
    o.adsLabels = buildUnnamed11();
    o.adsRedirect = 'foo';
    o.adult = true;
    o.ageGroup = 'foo';
    o.autoPricingMinPrice = buildPrice();
    o.availability = 'foo';
    o.availabilityDate = 'foo';
    o.brand = 'foo';
    o.canonicalLink = 'foo';
    o.certifications = buildUnnamed12();
    o.cloudExportAdditionalProperties = buildUnnamed13();
    o.color = 'foo';
    o.condition = 'foo';
    o.costOfGoodsSold = buildPrice();
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.description = 'foo';
    o.disclosureDate = 'foo';
    o.displayAdsId = 'foo';
    o.displayAdsLink = 'foo';
    o.displayAdsSimilarIds = buildUnnamed14();
    o.displayAdsTitle = 'foo';
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = 'foo';
    o.excludedDestinations = buildUnnamed15();
    o.expirationDate = 'foo';
    o.externalSellerId = 'foo';
    o.freeShippingThreshold = buildUnnamed16();
    o.gender = 'foo';
    o.googleProductCategory = 'foo';
    o.gtins = buildUnnamed17();
    o.identifierExists = true;
    o.imageLink = 'foo';
    o.includedDestinations = buildUnnamed18();
    o.installment = buildProductInstallment();
    o.isBundle = true;
    o.itemGroupId = 'foo';
    o.lifestyleImageLinks = buildUnnamed19();
    o.link = 'foo';
    o.linkTemplate = 'foo';
    o.loyaltyPoints = buildLoyaltyPoints();
    o.loyaltyPrograms = buildUnnamed20();
    o.material = 'foo';
    o.maxEnergyEfficiencyClass = 'foo';
    o.maxHandlingTime = 'foo';
    o.maximumRetailPrice = buildPrice();
    o.minEnergyEfficiencyClass = 'foo';
    o.minHandlingTime = 'foo';
    o.mobileLink = 'foo';
    o.mobileLinkTemplate = 'foo';
    o.mpn = 'foo';
    o.multipack = 'foo';
    o.pattern = 'foo';
    o.pause = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.productDetails = buildUnnamed21();
    o.productHeight = buildProductDimension();
    o.productHighlights = buildUnnamed22();
    o.productLength = buildProductDimension();
    o.productTypes = buildUnnamed23();
    o.productWeight = buildProductWeight();
    o.productWidth = buildProductDimension();
    o.promotionIds = buildUnnamed24();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = buildInterval();
    o.sellOnGoogleQuantity = 'foo';
    o.shipping = buildUnnamed25();
    o.shippingHeight = buildShippingDimension();
    o.shippingLabel = 'foo';
    o.shippingLength = buildShippingDimension();
    o.shippingWeight = buildShippingWeight();
    o.shippingWidth = buildShippingDimension();
    o.shoppingAdsExcludedCountries = buildUnnamed26();
    o.size = 'foo';
    o.sizeSystem = 'foo';
    o.sizeTypes = buildUnnamed27();
    o.structuredDescription = buildStructuredDescription();
    o.structuredTitle = buildStructuredTitle();
    o.subscriptionCost = buildSubscriptionCost();
    o.sustainabilityIncentives = buildUnnamed28();
    o.title = 'foo';
    o.transitTimeLabel = 'foo';
    o.unitPricingBaseMeasure = buildUnitPricingBaseMeasure();
    o.unitPricingMeasure = buildUnitPricingMeasure();
    o.virtualModelLink = 'foo';
  }
  buildCounterProductAttributes--;
  return o;
}

void checkProductAttributes(api.ProductAttributes o) {
  buildCounterProductAttributes++;
  if (buildCounterProductAttributes < 3) {
    checkUnnamed10(o.additionalImageLinks!);
    unittest.expect(o.adsGrouping!, unittest.equals('foo'));
    checkUnnamed11(o.adsLabels!);
    unittest.expect(o.adsRedirect!, unittest.equals('foo'));
    unittest.expect(o.adult!, unittest.isTrue);
    unittest.expect(o.ageGroup!, unittest.equals('foo'));
    checkPrice(o.autoPricingMinPrice!);
    unittest.expect(o.availability!, unittest.equals('foo'));
    unittest.expect(o.availabilityDate!, unittest.equals('foo'));
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.canonicalLink!, unittest.equals('foo'));
    checkUnnamed12(o.certifications!);
    checkUnnamed13(o.cloudExportAdditionalProperties!);
    unittest.expect(o.color!, unittest.equals('foo'));
    unittest.expect(o.condition!, unittest.equals('foo'));
    checkPrice(o.costOfGoodsSold!);
    unittest.expect(o.customLabel0!, unittest.equals('foo'));
    unittest.expect(o.customLabel1!, unittest.equals('foo'));
    unittest.expect(o.customLabel2!, unittest.equals('foo'));
    unittest.expect(o.customLabel3!, unittest.equals('foo'));
    unittest.expect(o.customLabel4!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.disclosureDate!, unittest.equals('foo'));
    unittest.expect(o.displayAdsId!, unittest.equals('foo'));
    unittest.expect(o.displayAdsLink!, unittest.equals('foo'));
    checkUnnamed14(o.displayAdsSimilarIds!);
    unittest.expect(o.displayAdsTitle!, unittest.equals('foo'));
    unittest.expect(o.displayAdsValue!, unittest.equals(42.0));
    unittest.expect(o.energyEfficiencyClass!, unittest.equals('foo'));
    checkUnnamed15(o.excludedDestinations!);
    unittest.expect(o.expirationDate!, unittest.equals('foo'));
    unittest.expect(o.externalSellerId!, unittest.equals('foo'));
    checkUnnamed16(o.freeShippingThreshold!);
    unittest.expect(o.gender!, unittest.equals('foo'));
    unittest.expect(o.googleProductCategory!, unittest.equals('foo'));
    checkUnnamed17(o.gtins!);
    unittest.expect(o.identifierExists!, unittest.isTrue);
    unittest.expect(o.imageLink!, unittest.equals('foo'));
    checkUnnamed18(o.includedDestinations!);
    checkProductInstallment(o.installment!);
    unittest.expect(o.isBundle!, unittest.isTrue);
    unittest.expect(o.itemGroupId!, unittest.equals('foo'));
    checkUnnamed19(o.lifestyleImageLinks!);
    unittest.expect(o.link!, unittest.equals('foo'));
    unittest.expect(o.linkTemplate!, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints!);
    checkUnnamed20(o.loyaltyPrograms!);
    unittest.expect(o.material!, unittest.equals('foo'));
    unittest.expect(o.maxEnergyEfficiencyClass!, unittest.equals('foo'));
    unittest.expect(o.maxHandlingTime!, unittest.equals('foo'));
    checkPrice(o.maximumRetailPrice!);
    unittest.expect(o.minEnergyEfficiencyClass!, unittest.equals('foo'));
    unittest.expect(o.minHandlingTime!, unittest.equals('foo'));
    unittest.expect(o.mobileLink!, unittest.equals('foo'));
    unittest.expect(o.mobileLinkTemplate!, unittest.equals('foo'));
    unittest.expect(o.mpn!, unittest.equals('foo'));
    unittest.expect(o.multipack!, unittest.equals('foo'));
    unittest.expect(o.pattern!, unittest.equals('foo'));
    unittest.expect(o.pause!, unittest.equals('foo'));
    unittest.expect(o.pickupMethod!, unittest.equals('foo'));
    unittest.expect(o.pickupSla!, unittest.equals('foo'));
    checkPrice(o.price!);
    checkUnnamed21(o.productDetails!);
    checkProductDimension(o.productHeight!);
    checkUnnamed22(o.productHighlights!);
    checkProductDimension(o.productLength!);
    checkUnnamed23(o.productTypes!);
    checkProductWeight(o.productWeight!);
    checkProductDimension(o.productWidth!);
    checkUnnamed24(o.promotionIds!);
    checkPrice(o.salePrice!);
    checkInterval(o.salePriceEffectiveDate!);
    unittest.expect(o.sellOnGoogleQuantity!, unittest.equals('foo'));
    checkUnnamed25(o.shipping!);
    checkShippingDimension(o.shippingHeight!);
    unittest.expect(o.shippingLabel!, unittest.equals('foo'));
    checkShippingDimension(o.shippingLength!);
    checkShippingWeight(o.shippingWeight!);
    checkShippingDimension(o.shippingWidth!);
    checkUnnamed26(o.shoppingAdsExcludedCountries!);
    unittest.expect(o.size!, unittest.equals('foo'));
    unittest.expect(o.sizeSystem!, unittest.equals('foo'));
    checkUnnamed27(o.sizeTypes!);
    checkStructuredDescription(o.structuredDescription!);
    checkStructuredTitle(o.structuredTitle!);
    checkSubscriptionCost(o.subscriptionCost!);
    checkUnnamed28(o.sustainabilityIncentives!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.transitTimeLabel!, unittest.equals('foo'));
    checkUnitPricingBaseMeasure(o.unitPricingBaseMeasure!);
    checkUnitPricingMeasure(o.unitPricingMeasure!);
    unittest.expect(o.virtualModelLink!, unittest.equals('foo'));
  }
  buildCounterProductAttributes--;
}

core.int buildCounterProductCertification = 0;
api.ProductCertification buildProductCertification() {
  final o = api.ProductCertification();
  buildCounterProductCertification++;
  if (buildCounterProductCertification < 3) {
    o.certificationAuthority = 'foo';
    o.certificationCode = 'foo';
    o.certificationName = 'foo';
    o.certificationValue = 'foo';
  }
  buildCounterProductCertification--;
  return o;
}

void checkProductCertification(api.ProductCertification o) {
  buildCounterProductCertification++;
  if (buildCounterProductCertification < 3) {
    unittest.expect(o.certificationAuthority!, unittest.equals('foo'));
    unittest.expect(o.certificationCode!, unittest.equals('foo'));
    unittest.expect(o.certificationName!, unittest.equals('foo'));
    unittest.expect(o.certificationValue!, unittest.equals('foo'));
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
    unittest.expect(o.attributeName!, unittest.equals('foo'));
    unittest.expect(o.attributeValue!, unittest.equals('foo'));
    unittest.expect(o.sectionName!, unittest.equals('foo'));
  }
  buildCounterProductDetail--;
}

core.int buildCounterProductDimension = 0;
api.ProductDimension buildProductDimension() {
  final o = api.ProductDimension();
  buildCounterProductDimension++;
  if (buildCounterProductDimension < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductDimension--;
  return o;
}

void checkProductDimension(api.ProductDimension o) {
  buildCounterProductDimension++;
  if (buildCounterProductDimension < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterProductDimension--;
}

core.List<api.CustomAttribute> buildUnnamed29() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed29(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterProductInput = 0;
api.ProductInput buildProductInput() {
  final o = api.ProductInput();
  buildCounterProductInput++;
  if (buildCounterProductInput < 3) {
    o.contentLanguage = 'foo';
    o.customAttributes = buildUnnamed29();
    o.feedLabel = 'foo';
    o.legacyLocal = true;
    o.name = 'foo';
    o.offerId = 'foo';
    o.product = 'foo';
    o.productAttributes = buildProductAttributes();
    o.versionNumber = 'foo';
  }
  buildCounterProductInput--;
  return o;
}

void checkProductInput(api.ProductInput o) {
  buildCounterProductInput++;
  if (buildCounterProductInput < 3) {
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    checkUnnamed29(o.customAttributes!);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.legacyLocal!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.offerId!, unittest.equals('foo'));
    unittest.expect(o.product!, unittest.equals('foo'));
    checkProductAttributes(o.productAttributes!);
    unittest.expect(o.versionNumber!, unittest.equals('foo'));
  }
  buildCounterProductInput--;
}

core.int buildCounterProductInstallment = 0;
api.ProductInstallment buildProductInstallment() {
  final o = api.ProductInstallment();
  buildCounterProductInstallment++;
  if (buildCounterProductInstallment < 3) {
    o.amount = buildPrice();
    o.creditType = 'foo';
    o.downpayment = buildPrice();
    o.months = 'foo';
  }
  buildCounterProductInstallment--;
  return o;
}

void checkProductInstallment(api.ProductInstallment o) {
  buildCounterProductInstallment++;
  if (buildCounterProductInstallment < 3) {
    checkPrice(o.amount!);
    unittest.expect(o.creditType!, unittest.equals('foo'));
    checkPrice(o.downpayment!);
    unittest.expect(o.months!, unittest.equals('foo'));
  }
  buildCounterProductInstallment--;
}

core.List<api.DestinationStatus> buildUnnamed30() => [
  buildDestinationStatus(),
  buildDestinationStatus(),
];

void checkUnnamed30(core.List<api.DestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationStatus(o[0]);
  checkDestinationStatus(o[1]);
}

core.List<api.ItemLevelIssue> buildUnnamed31() => [
  buildItemLevelIssue(),
  buildItemLevelIssue(),
];

void checkUnnamed31(core.List<api.ItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemLevelIssue(o[0]);
  checkItemLevelIssue(o[1]);
}

core.int buildCounterProductStatus = 0;
api.ProductStatus buildProductStatus() {
  final o = api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed30();
    o.googleExpirationDate = 'foo';
    o.itemLevelIssues = buildUnnamed31();
    o.lastUpdateDate = 'foo';
  }
  buildCounterProductStatus--;
  return o;
}

void checkProductStatus(api.ProductStatus o) {
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    unittest.expect(o.creationDate!, unittest.equals('foo'));
    checkUnnamed30(o.destinationStatuses!);
    unittest.expect(o.googleExpirationDate!, unittest.equals('foo'));
    checkUnnamed31(o.itemLevelIssues!);
    unittest.expect(o.lastUpdateDate!, unittest.equals('foo'));
  }
  buildCounterProductStatus--;
}

core.int buildCounterProductSustainabilityIncentive = 0;
api.ProductSustainabilityIncentive buildProductSustainabilityIncentive() {
  final o = api.ProductSustainabilityIncentive();
  buildCounterProductSustainabilityIncentive++;
  if (buildCounterProductSustainabilityIncentive < 3) {
    o.amount = buildPrice();
    o.percentage = 42.0;
    o.type = 'foo';
  }
  buildCounterProductSustainabilityIncentive--;
  return o;
}

void checkProductSustainabilityIncentive(api.ProductSustainabilityIncentive o) {
  buildCounterProductSustainabilityIncentive++;
  if (buildCounterProductSustainabilityIncentive < 3) {
    checkPrice(o.amount!);
    unittest.expect(o.percentage!, unittest.equals(42.0));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterProductSustainabilityIncentive--;
}

core.int buildCounterProductWeight = 0;
api.ProductWeight buildProductWeight() {
  final o = api.ProductWeight();
  buildCounterProductWeight++;
  if (buildCounterProductWeight < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductWeight--;
  return o;
}

void checkProductWeight(api.ProductWeight o) {
  buildCounterProductWeight++;
  if (buildCounterProductWeight < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterProductWeight--;
}

core.int buildCounterShipping = 0;
api.Shipping buildShipping() {
  final o = api.Shipping();
  buildCounterShipping++;
  if (buildCounterShipping < 3) {
    o.country = 'foo';
    o.locationGroupName = 'foo';
    o.locationId = 'foo';
    o.maxHandlingTime = 'foo';
    o.maxTransitTime = 'foo';
    o.minHandlingTime = 'foo';
    o.minTransitTime = 'foo';
    o.postalCode = 'foo';
    o.price = buildPrice();
    o.region = 'foo';
    o.service = 'foo';
  }
  buildCounterShipping--;
  return o;
}

void checkShipping(api.Shipping o) {
  buildCounterShipping++;
  if (buildCounterShipping < 3) {
    unittest.expect(o.country!, unittest.equals('foo'));
    unittest.expect(o.locationGroupName!, unittest.equals('foo'));
    unittest.expect(o.locationId!, unittest.equals('foo'));
    unittest.expect(o.maxHandlingTime!, unittest.equals('foo'));
    unittest.expect(o.maxTransitTime!, unittest.equals('foo'));
    unittest.expect(o.minHandlingTime!, unittest.equals('foo'));
    unittest.expect(o.minTransitTime!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    checkPrice(o.price!);
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterShipping--;
}

core.int buildCounterShippingDimension = 0;
api.ShippingDimension buildShippingDimension() {
  final o = api.ShippingDimension();
  buildCounterShippingDimension++;
  if (buildCounterShippingDimension < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterShippingDimension--;
  return o;
}

void checkShippingDimension(api.ShippingDimension o) {
  buildCounterShippingDimension++;
  if (buildCounterShippingDimension < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterShippingDimension--;
}

core.int buildCounterShippingWeight = 0;
api.ShippingWeight buildShippingWeight() {
  final o = api.ShippingWeight();
  buildCounterShippingWeight++;
  if (buildCounterShippingWeight < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterShippingWeight--;
  return o;
}

void checkShippingWeight(api.ShippingWeight o) {
  buildCounterShippingWeight++;
  if (buildCounterShippingWeight < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterShippingWeight--;
}

core.int buildCounterStructuredDescription = 0;
api.StructuredDescription buildStructuredDescription() {
  final o = api.StructuredDescription();
  buildCounterStructuredDescription++;
  if (buildCounterStructuredDescription < 3) {
    o.content = 'foo';
    o.digitalSourceType = 'foo';
  }
  buildCounterStructuredDescription--;
  return o;
}

void checkStructuredDescription(api.StructuredDescription o) {
  buildCounterStructuredDescription++;
  if (buildCounterStructuredDescription < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.digitalSourceType!, unittest.equals('foo'));
  }
  buildCounterStructuredDescription--;
}

core.int buildCounterStructuredTitle = 0;
api.StructuredTitle buildStructuredTitle() {
  final o = api.StructuredTitle();
  buildCounterStructuredTitle++;
  if (buildCounterStructuredTitle < 3) {
    o.content = 'foo';
    o.digitalSourceType = 'foo';
  }
  buildCounterStructuredTitle--;
  return o;
}

void checkStructuredTitle(api.StructuredTitle o) {
  buildCounterStructuredTitle++;
  if (buildCounterStructuredTitle < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.digitalSourceType!, unittest.equals('foo'));
  }
  buildCounterStructuredTitle--;
}

core.int buildCounterSubscriptionCost = 0;
api.SubscriptionCost buildSubscriptionCost() {
  final o = api.SubscriptionCost();
  buildCounterSubscriptionCost++;
  if (buildCounterSubscriptionCost < 3) {
    o.amount = buildPrice();
    o.period = 'foo';
    o.periodLength = 'foo';
  }
  buildCounterSubscriptionCost--;
  return o;
}

void checkSubscriptionCost(api.SubscriptionCost o) {
  buildCounterSubscriptionCost++;
  if (buildCounterSubscriptionCost < 3) {
    checkPrice(o.amount!);
    unittest.expect(o.period!, unittest.equals('foo'));
    unittest.expect(o.periodLength!, unittest.equals('foo'));
  }
  buildCounterSubscriptionCost--;
}

core.int buildCounterUnitPricingBaseMeasure = 0;
api.UnitPricingBaseMeasure buildUnitPricingBaseMeasure() {
  final o = api.UnitPricingBaseMeasure();
  buildCounterUnitPricingBaseMeasure++;
  if (buildCounterUnitPricingBaseMeasure < 3) {
    o.unit = 'foo';
    o.value = 'foo';
  }
  buildCounterUnitPricingBaseMeasure--;
  return o;
}

void checkUnitPricingBaseMeasure(api.UnitPricingBaseMeasure o) {
  buildCounterUnitPricingBaseMeasure++;
  if (buildCounterUnitPricingBaseMeasure < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterUnitPricingBaseMeasure--;
}

core.int buildCounterUnitPricingMeasure = 0;
api.UnitPricingMeasure buildUnitPricingMeasure() {
  final o = api.UnitPricingMeasure();
  buildCounterUnitPricingMeasure++;
  if (buildCounterUnitPricingMeasure < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterUnitPricingMeasure--;
  return o;
}

void checkUnitPricingMeasure(api.UnitPricingMeasure o) {
  buildCounterUnitPricingMeasure++;
  if (buildCounterUnitPricingMeasure < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterUnitPricingMeasure--;
}

void main() {
  unittest.group('obj-schema-AutomatedDiscounts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomatedDiscounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomatedDiscounts.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomatedDiscounts(od);
    });
  });

  unittest.group('obj-schema-CloudExportAdditionalProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudExportAdditionalProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudExportAdditionalProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudExportAdditionalProperties(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-DestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FreeShippingThreshold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreeShippingThreshold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeShippingThreshold.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFreeShippingThreshold(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
    });
  });

  unittest.group('obj-schema-ItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemLevelIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProductsResponse(od);
    });
  });

  unittest.group('obj-schema-LoyaltyPoints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyPoints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyPoints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyPoints(od);
    });
  });

  unittest.group('obj-schema-LoyaltyProgram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyProgram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyProgram.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyProgram(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Price.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Product.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProductAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductAttributes(od);
    });
  });

  unittest.group('obj-schema-ProductCertification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductCertification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductCertification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductCertification(od);
    });
  });

  unittest.group('obj-schema-ProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductDetail(od);
    });
  });

  unittest.group('obj-schema-ProductDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductDimension(od);
    });
  });

  unittest.group('obj-schema-ProductInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductInput(od);
    });
  });

  unittest.group('obj-schema-ProductInstallment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductInstallment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductInstallment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductInstallment(od);
    });
  });

  unittest.group('obj-schema-ProductStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductStatus(od);
    });
  });

  unittest.group('obj-schema-ProductSustainabilityIncentive', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSustainabilityIncentive();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSustainabilityIncentive.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductSustainabilityIncentive(od);
    });
  });

  unittest.group('obj-schema-ProductWeight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductWeight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductWeight(od);
    });
  });

  unittest.group('obj-schema-Shipping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShipping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Shipping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShipping(od);
    });
  });

  unittest.group('obj-schema-ShippingDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingDimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShippingDimension(od);
    });
  });

  unittest.group('obj-schema-ShippingWeight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingWeight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShippingWeight(od);
    });
  });

  unittest.group('obj-schema-StructuredDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredDescription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStructuredDescription(od);
    });
  });

  unittest.group('obj-schema-StructuredTitle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredTitle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredTitle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStructuredTitle(od);
    });
  });

  unittest.group('obj-schema-SubscriptionCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionCost.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionCost(od);
    });
  });

  unittest.group('obj-schema-UnitPricingBaseMeasure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitPricingBaseMeasure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitPricingBaseMeasure.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitPricingBaseMeasure(od);
    });
  });

  unittest.group('obj-schema-UnitPricingMeasure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitPricingMeasure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitPricingMeasure.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitPricingMeasure(od);
    });
  });

  unittest.group('resource-AccountsProductInputsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productInputs;
      final arg_name = 'foo';
      final arg_dataSource = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('products/v1/'),
          );
          pathOffset += 12;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['dataSource']!.first,
            unittest.equals(arg_dataSource),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        dataSource: arg_dataSource,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productInputs;
      final arg_request = buildProductInput();
      final arg_parent = 'foo';
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProductInput.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProductInput(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('products/v1/'),
          );
          pathOffset += 12;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['dataSource']!.first,
            unittest.equals(arg_dataSource),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildProductInput());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        dataSource: arg_dataSource,
        $fields: arg_$fields,
      );
      checkProductInput(response as api.ProductInput);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productInputs;
      final arg_request = buildProductInput();
      final arg_name = 'foo';
      final arg_dataSource = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProductInput.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProductInput(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('products/v1/'),
          );
          pathOffset += 12;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['dataSource']!.first,
            unittest.equals(arg_dataSource),
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
          final resp = convert.json.encode(buildProductInput());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        dataSource: arg_dataSource,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkProductInput(response as api.ProductInput);
    });
  });

  unittest.group('resource-AccountsProductsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('products/v1/'),
          );
          pathOffset += 12;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildProduct());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.products;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('products/v1/'),
          );
          pathOffset += 12;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListProductsResponse());
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
      checkListProductsResponse(response as api.ListProductsResponse);
    });
  });
}
