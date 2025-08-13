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

import 'package:googleapis/paymentsresellersubscription/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAmount = 0;
api.Amount buildAmount() {
  final o = api.Amount();
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    o.amountMicros = 'foo';
    o.currencyCode = 'foo';
  }
  buildCounterAmount--;
  return o;
}

void checkAmount(api.Amount o) {
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterAmount--;
}

core.int buildCounterCancelSubscriptionRequest = 0;
api.CancelSubscriptionRequest buildCancelSubscriptionRequest() {
  final o = api.CancelSubscriptionRequest();
  buildCounterCancelSubscriptionRequest++;
  if (buildCounterCancelSubscriptionRequest < 3) {
    o.cancelImmediately = true;
    o.cancellationReason = 'foo';
  }
  buildCounterCancelSubscriptionRequest--;
  return o;
}

void checkCancelSubscriptionRequest(api.CancelSubscriptionRequest o) {
  buildCounterCancelSubscriptionRequest++;
  if (buildCounterCancelSubscriptionRequest < 3) {
    unittest.expect(o.cancelImmediately!, unittest.isTrue);
    unittest.expect(o.cancellationReason!, unittest.equals('foo'));
  }
  buildCounterCancelSubscriptionRequest--;
}

core.int buildCounterCancelSubscriptionResponse = 0;
api.CancelSubscriptionResponse buildCancelSubscriptionResponse() {
  final o = api.CancelSubscriptionResponse();
  buildCounterCancelSubscriptionResponse++;
  if (buildCounterCancelSubscriptionResponse < 3) {
    o.subscription = buildSubscription();
  }
  buildCounterCancelSubscriptionResponse--;
  return o;
}

void checkCancelSubscriptionResponse(api.CancelSubscriptionResponse o) {
  buildCounterCancelSubscriptionResponse++;
  if (buildCounterCancelSubscriptionResponse < 3) {
    checkSubscription(o.subscription!);
  }
  buildCounterCancelSubscriptionResponse--;
}

core.int buildCounterCreateSubscriptionIntent = 0;
api.CreateSubscriptionIntent buildCreateSubscriptionIntent() {
  final o = api.CreateSubscriptionIntent();
  buildCounterCreateSubscriptionIntent++;
  if (buildCounterCreateSubscriptionIntent < 3) {
    o.parent = 'foo';
    o.subscription = buildSubscription();
    o.subscriptionId = 'foo';
  }
  buildCounterCreateSubscriptionIntent--;
  return o;
}

void checkCreateSubscriptionIntent(api.CreateSubscriptionIntent o) {
  buildCounterCreateSubscriptionIntent++;
  if (buildCounterCreateSubscriptionIntent < 3) {
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkSubscription(o.subscription!);
    unittest.expect(o.subscriptionId!, unittest.equals('foo'));
  }
  buildCounterCreateSubscriptionIntent--;
}

core.int buildCounterDuration = 0;
api.Duration buildDuration() {
  final o = api.Duration();
  buildCounterDuration++;
  if (buildCounterDuration < 3) {
    o.count = 42;
    o.unit = 'foo';
  }
  buildCounterDuration--;
  return o;
}

void checkDuration(api.Duration o) {
  buildCounterDuration++;
  if (buildCounterDuration < 3) {
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterDuration--;
}

core.int buildCounterEntitleSubscriptionIntent = 0;
api.EntitleSubscriptionIntent buildEntitleSubscriptionIntent() {
  final o = api.EntitleSubscriptionIntent();
  buildCounterEntitleSubscriptionIntent++;
  if (buildCounterEntitleSubscriptionIntent < 3) {
    o.name = 'foo';
  }
  buildCounterEntitleSubscriptionIntent--;
  return o;
}

void checkEntitleSubscriptionIntent(api.EntitleSubscriptionIntent o) {
  buildCounterEntitleSubscriptionIntent++;
  if (buildCounterEntitleSubscriptionIntent < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterEntitleSubscriptionIntent--;
}

core.List<api.EntitleSubscriptionRequestLineItemEntitlementDetails>
buildUnnamed0() => [
  buildEntitleSubscriptionRequestLineItemEntitlementDetails(),
  buildEntitleSubscriptionRequestLineItemEntitlementDetails(),
];

void checkUnnamed0(
  core.List<api.EntitleSubscriptionRequestLineItemEntitlementDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitleSubscriptionRequestLineItemEntitlementDetails(o[0]);
  checkEntitleSubscriptionRequestLineItemEntitlementDetails(o[1]);
}

core.int buildCounterEntitleSubscriptionRequest = 0;
api.EntitleSubscriptionRequest buildEntitleSubscriptionRequest() {
  final o = api.EntitleSubscriptionRequest();
  buildCounterEntitleSubscriptionRequest++;
  if (buildCounterEntitleSubscriptionRequest < 3) {
    o.lineItemEntitlementDetails = buildUnnamed0();
  }
  buildCounterEntitleSubscriptionRequest--;
  return o;
}

void checkEntitleSubscriptionRequest(api.EntitleSubscriptionRequest o) {
  buildCounterEntitleSubscriptionRequest++;
  if (buildCounterEntitleSubscriptionRequest < 3) {
    checkUnnamed0(o.lineItemEntitlementDetails!);
  }
  buildCounterEntitleSubscriptionRequest--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails = 0;
api.EntitleSubscriptionRequestLineItemEntitlementDetails
buildEntitleSubscriptionRequestLineItemEntitlementDetails() {
  final o = api.EntitleSubscriptionRequestLineItemEntitlementDetails();
  buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails++;
  if (buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails < 3) {
    o.lineItemIndex = 42;
    o.products = buildUnnamed1();
  }
  buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails--;
  return o;
}

void checkEntitleSubscriptionRequestLineItemEntitlementDetails(
  api.EntitleSubscriptionRequestLineItemEntitlementDetails o,
) {
  buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails++;
  if (buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails < 3) {
    unittest.expect(o.lineItemIndex!, unittest.equals(42));
    checkUnnamed1(o.products!);
  }
  buildCounterEntitleSubscriptionRequestLineItemEntitlementDetails--;
}

core.int buildCounterEntitleSubscriptionResponse = 0;
api.EntitleSubscriptionResponse buildEntitleSubscriptionResponse() {
  final o = api.EntitleSubscriptionResponse();
  buildCounterEntitleSubscriptionResponse++;
  if (buildCounterEntitleSubscriptionResponse < 3) {
    o.subscription = buildSubscription();
  }
  buildCounterEntitleSubscriptionResponse--;
  return o;
}

void checkEntitleSubscriptionResponse(api.EntitleSubscriptionResponse o) {
  buildCounterEntitleSubscriptionResponse++;
  if (buildCounterEntitleSubscriptionResponse < 3) {
    checkSubscription(o.subscription!);
  }
  buildCounterEntitleSubscriptionResponse--;
}

core.int buildCounterExtendSubscriptionRequest = 0;
api.ExtendSubscriptionRequest buildExtendSubscriptionRequest() {
  final o = api.ExtendSubscriptionRequest();
  buildCounterExtendSubscriptionRequest++;
  if (buildCounterExtendSubscriptionRequest < 3) {
    o.extension = buildExtension();
    o.requestId = 'foo';
  }
  buildCounterExtendSubscriptionRequest--;
  return o;
}

void checkExtendSubscriptionRequest(api.ExtendSubscriptionRequest o) {
  buildCounterExtendSubscriptionRequest++;
  if (buildCounterExtendSubscriptionRequest < 3) {
    checkExtension(o.extension!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterExtendSubscriptionRequest--;
}

core.int buildCounterExtendSubscriptionResponse = 0;
api.ExtendSubscriptionResponse buildExtendSubscriptionResponse() {
  final o = api.ExtendSubscriptionResponse();
  buildCounterExtendSubscriptionResponse++;
  if (buildCounterExtendSubscriptionResponse < 3) {
    o.cycleEndTime = 'foo';
    o.freeTrialEndTime = 'foo';
    o.renewalTime = 'foo';
  }
  buildCounterExtendSubscriptionResponse--;
  return o;
}

void checkExtendSubscriptionResponse(api.ExtendSubscriptionResponse o) {
  buildCounterExtendSubscriptionResponse++;
  if (buildCounterExtendSubscriptionResponse < 3) {
    unittest.expect(o.cycleEndTime!, unittest.equals('foo'));
    unittest.expect(o.freeTrialEndTime!, unittest.equals('foo'));
    unittest.expect(o.renewalTime!, unittest.equals('foo'));
  }
  buildCounterExtendSubscriptionResponse--;
}

core.int buildCounterExtension = 0;
api.Extension buildExtension() {
  final o = api.Extension();
  buildCounterExtension++;
  if (buildCounterExtension < 3) {
    o.duration = buildDuration();
    o.partnerUserToken = 'foo';
  }
  buildCounterExtension--;
  return o;
}

void checkExtension(api.Extension o) {
  buildCounterExtension++;
  if (buildCounterExtension < 3) {
    checkDuration(o.duration!);
    unittest.expect(o.partnerUserToken!, unittest.equals('foo'));
  }
  buildCounterExtension--;
}

core.int buildCounterFindEligiblePromotionsRequest = 0;
api.FindEligiblePromotionsRequest buildFindEligiblePromotionsRequest() {
  final o = api.FindEligiblePromotionsRequest();
  buildCounterFindEligiblePromotionsRequest++;
  if (buildCounterFindEligiblePromotionsRequest < 3) {
    o.filter = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterFindEligiblePromotionsRequest--;
  return o;
}

void checkFindEligiblePromotionsRequest(api.FindEligiblePromotionsRequest o) {
  buildCounterFindEligiblePromotionsRequest++;
  if (buildCounterFindEligiblePromotionsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
  }
  buildCounterFindEligiblePromotionsRequest--;
}

core.List<api.Promotion> buildUnnamed2() => [
  buildPromotion(),
  buildPromotion(),
];

void checkUnnamed2(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterFindEligiblePromotionsResponse = 0;
api.FindEligiblePromotionsResponse buildFindEligiblePromotionsResponse() {
  final o = api.FindEligiblePromotionsResponse();
  buildCounterFindEligiblePromotionsResponse++;
  if (buildCounterFindEligiblePromotionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.promotions = buildUnnamed2();
  }
  buildCounterFindEligiblePromotionsResponse--;
  return o;
}

void checkFindEligiblePromotionsResponse(api.FindEligiblePromotionsResponse o) {
  buildCounterFindEligiblePromotionsResponse++;
  if (buildCounterFindEligiblePromotionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.promotions!);
  }
  buildCounterFindEligiblePromotionsResponse--;
}

core.int buildCounterFiniteBillingCycleDetails = 0;
api.FiniteBillingCycleDetails buildFiniteBillingCycleDetails() {
  final o = api.FiniteBillingCycleDetails();
  buildCounterFiniteBillingCycleDetails++;
  if (buildCounterFiniteBillingCycleDetails < 3) {
    o.billingCycleCountLimit = 'foo';
  }
  buildCounterFiniteBillingCycleDetails--;
  return o;
}

void checkFiniteBillingCycleDetails(api.FiniteBillingCycleDetails o) {
  buildCounterFiniteBillingCycleDetails++;
  if (buildCounterFiniteBillingCycleDetails < 3) {
    unittest.expect(o.billingCycleCountLimit!, unittest.equals('foo'));
  }
  buildCounterFiniteBillingCycleDetails--;
}

core.int buildCounterGenerateUserSessionRequest = 0;
api.GenerateUserSessionRequest buildGenerateUserSessionRequest() {
  final o = api.GenerateUserSessionRequest();
  buildCounterGenerateUserSessionRequest++;
  if (buildCounterGenerateUserSessionRequest < 3) {
    o.intentPayload = buildIntentPayload();
  }
  buildCounterGenerateUserSessionRequest--;
  return o;
}

void checkGenerateUserSessionRequest(api.GenerateUserSessionRequest o) {
  buildCounterGenerateUserSessionRequest++;
  if (buildCounterGenerateUserSessionRequest < 3) {
    checkIntentPayload(o.intentPayload!);
  }
  buildCounterGenerateUserSessionRequest--;
}

core.int buildCounterGenerateUserSessionResponse = 0;
api.GenerateUserSessionResponse buildGenerateUserSessionResponse() {
  final o = api.GenerateUserSessionResponse();
  buildCounterGenerateUserSessionResponse++;
  if (buildCounterGenerateUserSessionResponse < 3) {
    o.userSession = buildUserSession();
  }
  buildCounterGenerateUserSessionResponse--;
  return o;
}

void checkGenerateUserSessionResponse(api.GenerateUserSessionResponse o) {
  buildCounterGenerateUserSessionResponse++;
  if (buildCounterGenerateUserSessionResponse < 3) {
    checkUserSession(o.userSession!);
  }
  buildCounterGenerateUserSessionResponse--;
}

core.int buildCounterGoogleHomePayload = 0;
api.GoogleHomePayload buildGoogleHomePayload() {
  final o = api.GoogleHomePayload();
  buildCounterGoogleHomePayload++;
  if (buildCounterGoogleHomePayload < 3) {
    o.attachedToGoogleStructure = true;
    o.googleStructureId = 'foo';
    o.partnerStructureId = 'foo';
  }
  buildCounterGoogleHomePayload--;
  return o;
}

void checkGoogleHomePayload(api.GoogleHomePayload o) {
  buildCounterGoogleHomePayload++;
  if (buildCounterGoogleHomePayload < 3) {
    unittest.expect(o.attachedToGoogleStructure!, unittest.isTrue);
    unittest.expect(o.googleStructureId!, unittest.equals('foo'));
    unittest.expect(o.partnerStructureId!, unittest.equals('foo'));
  }
  buildCounterGoogleHomePayload--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleOnePayload = 0;
api.GoogleOnePayload buildGoogleOnePayload() {
  final o = api.GoogleOnePayload();
  buildCounterGoogleOnePayload++;
  if (buildCounterGoogleOnePayload < 3) {
    o.campaigns = buildUnnamed3();
    o.offering = 'foo';
    o.salesChannel = 'foo';
    o.storeId = 'foo';
  }
  buildCounterGoogleOnePayload--;
  return o;
}

void checkGoogleOnePayload(api.GoogleOnePayload o) {
  buildCounterGoogleOnePayload++;
  if (buildCounterGoogleOnePayload < 3) {
    checkUnnamed3(o.campaigns!);
    unittest.expect(o.offering!, unittest.equals('foo'));
    unittest.expect(o.salesChannel!, unittest.equals('foo'));
    unittest.expect(o.storeId!, unittest.equals('foo'));
  }
  buildCounterGoogleOnePayload--;
}

core.int buildCounterGoogleTypeLocalizedText = 0;
api.GoogleTypeLocalizedText buildGoogleTypeLocalizedText() {
  final o = api.GoogleTypeLocalizedText();
  buildCounterGoogleTypeLocalizedText++;
  if (buildCounterGoogleTypeLocalizedText < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleTypeLocalizedText--;
  return o;
}

void checkGoogleTypeLocalizedText(api.GoogleTypeLocalizedText o) {
  buildCounterGoogleTypeLocalizedText++;
  if (buildCounterGoogleTypeLocalizedText < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeLocalizedText--;
}

core.int buildCounterIntentPayload = 0;
api.IntentPayload buildIntentPayload() {
  final o = api.IntentPayload();
  buildCounterIntentPayload++;
  if (buildCounterIntentPayload < 3) {
    o.createIntent = buildCreateSubscriptionIntent();
    o.entitleIntent = buildEntitleSubscriptionIntent();
  }
  buildCounterIntentPayload--;
  return o;
}

void checkIntentPayload(api.IntentPayload o) {
  buildCounterIntentPayload++;
  if (buildCounterIntentPayload < 3) {
    checkCreateSubscriptionIntent(o.createIntent!);
    checkEntitleSubscriptionIntent(o.entitleIntent!);
  }
  buildCounterIntentPayload--;
}

core.List<api.Product> buildUnnamed4() => [buildProduct(), buildProduct()];

void checkUnnamed4(core.List<api.Product> o) {
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
    o.products = buildUnnamed4();
  }
  buildCounterListProductsResponse--;
  return o;
}

void checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed4(o.products!);
  }
  buildCounterListProductsResponse--;
}

core.List<api.Promotion> buildUnnamed5() => [
  buildPromotion(),
  buildPromotion(),
];

void checkUnnamed5(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterListPromotionsResponse = 0;
api.ListPromotionsResponse buildListPromotionsResponse() {
  final o = api.ListPromotionsResponse();
  buildCounterListPromotionsResponse++;
  if (buildCounterListPromotionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.promotions = buildUnnamed5();
  }
  buildCounterListPromotionsResponse--;
  return o;
}

void checkListPromotionsResponse(api.ListPromotionsResponse o) {
  buildCounterListPromotionsResponse++;
  if (buildCounterListPromotionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.promotions!);
  }
  buildCounterListPromotionsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.postalCode = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<api.ProductPriceConfig> buildUnnamed6() => [
  buildProductPriceConfig(),
  buildProductPriceConfig(),
];

void checkUnnamed6(core.List<api.ProductPriceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPriceConfig(o[0]);
  checkProductPriceConfig(o[1]);
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleTypeLocalizedText> buildUnnamed8() => [
  buildGoogleTypeLocalizedText(),
  buildGoogleTypeLocalizedText(),
];

void checkUnnamed8(core.List<api.GoogleTypeLocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeLocalizedText(o[0]);
  checkGoogleTypeLocalizedText(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.bundleDetails = buildProductBundleDetails();
    o.finiteBillingCycleDetails = buildFiniteBillingCycleDetails();
    o.name = 'foo';
    o.priceConfigs = buildUnnamed6();
    o.productType = 'foo';
    o.regionCodes = buildUnnamed7();
    o.subscriptionBillingCycleDuration = buildDuration();
    o.titles = buildUnnamed8();
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkProductBundleDetails(o.bundleDetails!);
    checkFiniteBillingCycleDetails(o.finiteBillingCycleDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed6(o.priceConfigs!);
    unittest.expect(o.productType!, unittest.equals('foo'));
    checkUnnamed7(o.regionCodes!);
    checkDuration(o.subscriptionBillingCycleDuration!);
    checkUnnamed8(o.titles!);
  }
  buildCounterProduct--;
}

core.List<api.ProductBundleDetailsBundleElement> buildUnnamed9() => [
  buildProductBundleDetailsBundleElement(),
  buildProductBundleDetailsBundleElement(),
];

void checkUnnamed9(core.List<api.ProductBundleDetailsBundleElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductBundleDetailsBundleElement(o[0]);
  checkProductBundleDetailsBundleElement(o[1]);
}

core.int buildCounterProductBundleDetails = 0;
api.ProductBundleDetails buildProductBundleDetails() {
  final o = api.ProductBundleDetails();
  buildCounterProductBundleDetails++;
  if (buildCounterProductBundleDetails < 3) {
    o.bundleElements = buildUnnamed9();
    o.entitlementMode = 'foo';
  }
  buildCounterProductBundleDetails--;
  return o;
}

void checkProductBundleDetails(api.ProductBundleDetails o) {
  buildCounterProductBundleDetails++;
  if (buildCounterProductBundleDetails < 3) {
    checkUnnamed9(o.bundleElements!);
    unittest.expect(o.entitlementMode!, unittest.equals('foo'));
  }
  buildCounterProductBundleDetails--;
}

core.int buildCounterProductBundleDetailsBundleElement = 0;
api.ProductBundleDetailsBundleElement buildProductBundleDetailsBundleElement() {
  final o = api.ProductBundleDetailsBundleElement();
  buildCounterProductBundleDetailsBundleElement++;
  if (buildCounterProductBundleDetailsBundleElement < 3) {
    o.product = 'foo';
  }
  buildCounterProductBundleDetailsBundleElement--;
  return o;
}

void checkProductBundleDetailsBundleElement(
  api.ProductBundleDetailsBundleElement o,
) {
  buildCounterProductBundleDetailsBundleElement++;
  if (buildCounterProductBundleDetailsBundleElement < 3) {
    unittest.expect(o.product!, unittest.equals('foo'));
  }
  buildCounterProductBundleDetailsBundleElement--;
}

core.int buildCounterProductPayload = 0;
api.ProductPayload buildProductPayload() {
  final o = api.ProductPayload();
  buildCounterProductPayload++;
  if (buildCounterProductPayload < 3) {
    o.googleHomePayload = buildGoogleHomePayload();
    o.googleOnePayload = buildGoogleOnePayload();
    o.youtubePayload = buildYoutubePayload();
  }
  buildCounterProductPayload--;
  return o;
}

void checkProductPayload(api.ProductPayload o) {
  buildCounterProductPayload++;
  if (buildCounterProductPayload < 3) {
    checkGoogleHomePayload(o.googleHomePayload!);
    checkGoogleOnePayload(o.googleOnePayload!);
    checkYoutubePayload(o.youtubePayload!);
  }
  buildCounterProductPayload--;
}

core.int buildCounterProductPriceConfig = 0;
api.ProductPriceConfig buildProductPriceConfig() {
  final o = api.ProductPriceConfig();
  buildCounterProductPriceConfig++;
  if (buildCounterProductPriceConfig < 3) {
    o.amount = buildAmount();
    o.regionCode = 'foo';
  }
  buildCounterProductPriceConfig--;
  return o;
}

void checkProductPriceConfig(api.ProductPriceConfig o) {
  buildCounterProductPriceConfig++;
  if (buildCounterProductPriceConfig < 3) {
    checkAmount(o.amount!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterProductPriceConfig--;
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

core.List<api.GoogleTypeLocalizedText> buildUnnamed12() => [
  buildGoogleTypeLocalizedText(),
  buildGoogleTypeLocalizedText(),
];

void checkUnnamed12(core.List<api.GoogleTypeLocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeLocalizedText(o[0]);
  checkGoogleTypeLocalizedText(o[1]);
}

core.int buildCounterPromotion = 0;
api.Promotion buildPromotion() {
  final o = api.Promotion();
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    o.applicableProducts = buildUnnamed10();
    o.endTime = 'foo';
    o.freeTrialDuration = buildDuration();
    o.introductoryPricingDetails = buildPromotionIntroductoryPricingDetails();
    o.name = 'foo';
    o.promotionType = 'foo';
    o.regionCodes = buildUnnamed11();
    o.startTime = 'foo';
    o.titles = buildUnnamed12();
  }
  buildCounterPromotion--;
  return o;
}

void checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkUnnamed10(o.applicableProducts!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    checkDuration(o.freeTrialDuration!);
    checkPromotionIntroductoryPricingDetails(o.introductoryPricingDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.promotionType!, unittest.equals('foo'));
    checkUnnamed11(o.regionCodes!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkUnnamed12(o.titles!);
  }
  buildCounterPromotion--;
}

core.List<api.PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>
buildUnnamed13() => [
  buildPromotionIntroductoryPricingDetailsIntroductoryPricingSpec(),
  buildPromotionIntroductoryPricingDetailsIntroductoryPricingSpec(),
];

void checkUnnamed13(
  core.List<api.PromotionIntroductoryPricingDetailsIntroductoryPricingSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotionIntroductoryPricingDetailsIntroductoryPricingSpec(o[0]);
  checkPromotionIntroductoryPricingDetailsIntroductoryPricingSpec(o[1]);
}

core.int buildCounterPromotionIntroductoryPricingDetails = 0;
api.PromotionIntroductoryPricingDetails
buildPromotionIntroductoryPricingDetails() {
  final o = api.PromotionIntroductoryPricingDetails();
  buildCounterPromotionIntroductoryPricingDetails++;
  if (buildCounterPromotionIntroductoryPricingDetails < 3) {
    o.introductoryPricingSpecs = buildUnnamed13();
  }
  buildCounterPromotionIntroductoryPricingDetails--;
  return o;
}

void checkPromotionIntroductoryPricingDetails(
  api.PromotionIntroductoryPricingDetails o,
) {
  buildCounterPromotionIntroductoryPricingDetails++;
  if (buildCounterPromotionIntroductoryPricingDetails < 3) {
    checkUnnamed13(o.introductoryPricingSpecs!);
  }
  buildCounterPromotionIntroductoryPricingDetails--;
}

core.int
buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec = 0;
api.PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
buildPromotionIntroductoryPricingDetailsIntroductoryPricingSpec() {
  final o = api.PromotionIntroductoryPricingDetailsIntroductoryPricingSpec();
  buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec++;
  if (buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec <
      3) {
    o.discountAmount = buildAmount();
    o.discountRatioMicros = 'foo';
    o.recurrenceCount = 42;
    o.regionCode = 'foo';
  }
  buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec--;
  return o;
}

void checkPromotionIntroductoryPricingDetailsIntroductoryPricingSpec(
  api.PromotionIntroductoryPricingDetailsIntroductoryPricingSpec o,
) {
  buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec++;
  if (buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec <
      3) {
    checkAmount(o.discountAmount!);
    unittest.expect(o.discountRatioMicros!, unittest.equals('foo'));
    unittest.expect(o.recurrenceCount!, unittest.equals(42));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterPromotionIntroductoryPricingDetailsIntroductoryPricingSpec--;
}

core.int buildCounterResumeSubscriptionRequest = 0;
api.ResumeSubscriptionRequest buildResumeSubscriptionRequest() {
  final o = api.ResumeSubscriptionRequest();
  buildCounterResumeSubscriptionRequest++;
  if (buildCounterResumeSubscriptionRequest < 3) {}
  buildCounterResumeSubscriptionRequest--;
  return o;
}

void checkResumeSubscriptionRequest(api.ResumeSubscriptionRequest o) {
  buildCounterResumeSubscriptionRequest++;
  if (buildCounterResumeSubscriptionRequest < 3) {}
  buildCounterResumeSubscriptionRequest--;
}

core.int buildCounterResumeSubscriptionResponse = 0;
api.ResumeSubscriptionResponse buildResumeSubscriptionResponse() {
  final o = api.ResumeSubscriptionResponse();
  buildCounterResumeSubscriptionResponse++;
  if (buildCounterResumeSubscriptionResponse < 3) {
    o.subscription = buildSubscription();
  }
  buildCounterResumeSubscriptionResponse--;
  return o;
}

void checkResumeSubscriptionResponse(api.ResumeSubscriptionResponse o) {
  buildCounterResumeSubscriptionResponse++;
  if (buildCounterResumeSubscriptionResponse < 3) {
    checkSubscription(o.subscription!);
  }
  buildCounterResumeSubscriptionResponse--;
}

core.int buildCounterServicePeriod = 0;
api.ServicePeriod buildServicePeriod() {
  final o = api.ServicePeriod();
  buildCounterServicePeriod++;
  if (buildCounterServicePeriod < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterServicePeriod--;
  return o;
}

void checkServicePeriod(api.ServicePeriod o) {
  buildCounterServicePeriod++;
  if (buildCounterServicePeriod < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterServicePeriod--;
}

core.List<api.SubscriptionLineItem> buildUnnamed14() => [
  buildSubscriptionLineItem(),
  buildSubscriptionLineItem(),
];

void checkUnnamed14(core.List<api.SubscriptionLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionLineItem(o[0]);
  checkSubscriptionLineItem(o[1]);
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SubscriptionPromotionSpec> buildUnnamed16() => [
  buildSubscriptionPromotionSpec(),
  buildSubscriptionPromotionSpec(),
];

void checkUnnamed16(core.List<api.SubscriptionPromotionSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionPromotionSpec(o[0]);
  checkSubscriptionPromotionSpec(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.cancellationDetails = buildSubscriptionCancellationDetails();
    o.createTime = 'foo';
    o.cycleEndTime = 'foo';
    o.endUserEntitled = true;
    o.freeTrialEndTime = 'foo';
    o.lineItems = buildUnnamed14();
    o.migrationDetails = buildSubscriptionMigrationDetails();
    o.name = 'foo';
    o.partnerUserToken = 'foo';
    o.processingState = 'foo';
    o.products = buildUnnamed15();
    o.promotionSpecs = buildUnnamed16();
    o.promotions = buildUnnamed17();
    o.purchaseTime = 'foo';
    o.redirectUri = 'foo';
    o.renewalTime = 'foo';
    o.serviceLocation = buildLocation();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.upgradeDowngradeDetails = buildSubscriptionUpgradeDowngradeDetails();
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkSubscriptionCancellationDetails(o.cancellationDetails!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.cycleEndTime!, unittest.equals('foo'));
    unittest.expect(o.endUserEntitled!, unittest.isTrue);
    unittest.expect(o.freeTrialEndTime!, unittest.equals('foo'));
    checkUnnamed14(o.lineItems!);
    checkSubscriptionMigrationDetails(o.migrationDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.partnerUserToken!, unittest.equals('foo'));
    unittest.expect(o.processingState!, unittest.equals('foo'));
    checkUnnamed15(o.products!);
    checkUnnamed16(o.promotionSpecs!);
    checkUnnamed17(o.promotions!);
    unittest.expect(o.purchaseTime!, unittest.equals('foo'));
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
    unittest.expect(o.renewalTime!, unittest.equals('foo'));
    checkLocation(o.serviceLocation!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkSubscriptionUpgradeDowngradeDetails(o.upgradeDowngradeDetails!);
  }
  buildCounterSubscription--;
}

core.int buildCounterSubscriptionCancellationDetails = 0;
api.SubscriptionCancellationDetails buildSubscriptionCancellationDetails() {
  final o = api.SubscriptionCancellationDetails();
  buildCounterSubscriptionCancellationDetails++;
  if (buildCounterSubscriptionCancellationDetails < 3) {
    o.reason = 'foo';
  }
  buildCounterSubscriptionCancellationDetails--;
  return o;
}

void checkSubscriptionCancellationDetails(
  api.SubscriptionCancellationDetails o,
) {
  buildCounterSubscriptionCancellationDetails++;
  if (buildCounterSubscriptionCancellationDetails < 3) {
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterSubscriptionCancellationDetails--;
}

core.List<api.SubscriptionPromotionSpec> buildUnnamed18() => [
  buildSubscriptionPromotionSpec(),
  buildSubscriptionPromotionSpec(),
];

void checkUnnamed18(core.List<api.SubscriptionPromotionSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionPromotionSpec(o[0]);
  checkSubscriptionPromotionSpec(o[1]);
}

core.int buildCounterSubscriptionLineItem = 0;
api.SubscriptionLineItem buildSubscriptionLineItem() {
  final o = api.SubscriptionLineItem();
  buildCounterSubscriptionLineItem++;
  if (buildCounterSubscriptionLineItem < 3) {
    o.amount = buildAmount();
    o.bundleDetails = buildSubscriptionLineItemBundleDetails();
    o.description = 'foo';
    o.finiteBillingCycleDetails = buildFiniteBillingCycleDetails();
    o.lineItemFreeTrialEndTime = 'foo';
    o.lineItemIndex = 42;
    o.lineItemPromotionSpecs = buildUnnamed18();
    o.oneTimeRecurrenceDetails =
        buildSubscriptionLineItemOneTimeRecurrenceDetails();
    o.product = 'foo';
    o.productPayload = buildProductPayload();
    o.recurrenceType = 'foo';
    o.state = 'foo';
  }
  buildCounterSubscriptionLineItem--;
  return o;
}

void checkSubscriptionLineItem(api.SubscriptionLineItem o) {
  buildCounterSubscriptionLineItem++;
  if (buildCounterSubscriptionLineItem < 3) {
    checkAmount(o.amount!);
    checkSubscriptionLineItemBundleDetails(o.bundleDetails!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkFiniteBillingCycleDetails(o.finiteBillingCycleDetails!);
    unittest.expect(o.lineItemFreeTrialEndTime!, unittest.equals('foo'));
    unittest.expect(o.lineItemIndex!, unittest.equals(42));
    checkUnnamed18(o.lineItemPromotionSpecs!);
    checkSubscriptionLineItemOneTimeRecurrenceDetails(
      o.oneTimeRecurrenceDetails!,
    );
    unittest.expect(o.product!, unittest.equals('foo'));
    checkProductPayload(o.productPayload!);
    unittest.expect(o.recurrenceType!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterSubscriptionLineItem--;
}

core.List<api.SubscriptionLineItemBundleDetailsBundleElementDetails>
buildUnnamed19() => [
  buildSubscriptionLineItemBundleDetailsBundleElementDetails(),
  buildSubscriptionLineItemBundleDetailsBundleElementDetails(),
];

void checkUnnamed19(
  core.List<api.SubscriptionLineItemBundleDetailsBundleElementDetails> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionLineItemBundleDetailsBundleElementDetails(o[0]);
  checkSubscriptionLineItemBundleDetailsBundleElementDetails(o[1]);
}

core.int buildCounterSubscriptionLineItemBundleDetails = 0;
api.SubscriptionLineItemBundleDetails buildSubscriptionLineItemBundleDetails() {
  final o = api.SubscriptionLineItemBundleDetails();
  buildCounterSubscriptionLineItemBundleDetails++;
  if (buildCounterSubscriptionLineItemBundleDetails < 3) {
    o.bundleElementDetails = buildUnnamed19();
  }
  buildCounterSubscriptionLineItemBundleDetails--;
  return o;
}

void checkSubscriptionLineItemBundleDetails(
  api.SubscriptionLineItemBundleDetails o,
) {
  buildCounterSubscriptionLineItemBundleDetails++;
  if (buildCounterSubscriptionLineItemBundleDetails < 3) {
    checkUnnamed19(o.bundleElementDetails!);
  }
  buildCounterSubscriptionLineItemBundleDetails--;
}

core.int buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails = 0;
api.SubscriptionLineItemBundleDetailsBundleElementDetails
buildSubscriptionLineItemBundleDetailsBundleElementDetails() {
  final o = api.SubscriptionLineItemBundleDetailsBundleElementDetails();
  buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails++;
  if (buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails < 3) {
    o.product = 'foo';
    o.userAccountLinkedTime = 'foo';
  }
  buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails--;
  return o;
}

void checkSubscriptionLineItemBundleDetailsBundleElementDetails(
  api.SubscriptionLineItemBundleDetailsBundleElementDetails o,
) {
  buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails++;
  if (buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails < 3) {
    unittest.expect(o.product!, unittest.equals('foo'));
    unittest.expect(o.userAccountLinkedTime!, unittest.equals('foo'));
  }
  buildCounterSubscriptionLineItemBundleDetailsBundleElementDetails--;
}

core.int buildCounterSubscriptionLineItemOneTimeRecurrenceDetails = 0;
api.SubscriptionLineItemOneTimeRecurrenceDetails
buildSubscriptionLineItemOneTimeRecurrenceDetails() {
  final o = api.SubscriptionLineItemOneTimeRecurrenceDetails();
  buildCounterSubscriptionLineItemOneTimeRecurrenceDetails++;
  if (buildCounterSubscriptionLineItemOneTimeRecurrenceDetails < 3) {
    o.servicePeriod = buildServicePeriod();
  }
  buildCounterSubscriptionLineItemOneTimeRecurrenceDetails--;
  return o;
}

void checkSubscriptionLineItemOneTimeRecurrenceDetails(
  api.SubscriptionLineItemOneTimeRecurrenceDetails o,
) {
  buildCounterSubscriptionLineItemOneTimeRecurrenceDetails++;
  if (buildCounterSubscriptionLineItemOneTimeRecurrenceDetails < 3) {
    checkServicePeriod(o.servicePeriod!);
  }
  buildCounterSubscriptionLineItemOneTimeRecurrenceDetails--;
}

core.int buildCounterSubscriptionMigrationDetails = 0;
api.SubscriptionMigrationDetails buildSubscriptionMigrationDetails() {
  final o = api.SubscriptionMigrationDetails();
  buildCounterSubscriptionMigrationDetails++;
  if (buildCounterSubscriptionMigrationDetails < 3) {
    o.migratedSubscriptionId = 'foo';
  }
  buildCounterSubscriptionMigrationDetails--;
  return o;
}

void checkSubscriptionMigrationDetails(api.SubscriptionMigrationDetails o) {
  buildCounterSubscriptionMigrationDetails++;
  if (buildCounterSubscriptionMigrationDetails < 3) {
    unittest.expect(o.migratedSubscriptionId!, unittest.equals('foo'));
  }
  buildCounterSubscriptionMigrationDetails--;
}

core.int buildCounterSubscriptionPromotionSpec = 0;
api.SubscriptionPromotionSpec buildSubscriptionPromotionSpec() {
  final o = api.SubscriptionPromotionSpec();
  buildCounterSubscriptionPromotionSpec++;
  if (buildCounterSubscriptionPromotionSpec < 3) {
    o.freeTrialDuration = buildDuration();
    o.introductoryPricingDetails = buildPromotionIntroductoryPricingDetails();
    o.promotion = 'foo';
    o.type = 'foo';
  }
  buildCounterSubscriptionPromotionSpec--;
  return o;
}

void checkSubscriptionPromotionSpec(api.SubscriptionPromotionSpec o) {
  buildCounterSubscriptionPromotionSpec++;
  if (buildCounterSubscriptionPromotionSpec < 3) {
    checkDuration(o.freeTrialDuration!);
    checkPromotionIntroductoryPricingDetails(o.introductoryPricingDetails!);
    unittest.expect(o.promotion!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSubscriptionPromotionSpec--;
}

core.int buildCounterSubscriptionUpgradeDowngradeDetails = 0;
api.SubscriptionUpgradeDowngradeDetails
buildSubscriptionUpgradeDowngradeDetails() {
  final o = api.SubscriptionUpgradeDowngradeDetails();
  buildCounterSubscriptionUpgradeDowngradeDetails++;
  if (buildCounterSubscriptionUpgradeDowngradeDetails < 3) {
    o.billingCycleSpec = 'foo';
    o.previousSubscriptionId = 'foo';
  }
  buildCounterSubscriptionUpgradeDowngradeDetails--;
  return o;
}

void checkSubscriptionUpgradeDowngradeDetails(
  api.SubscriptionUpgradeDowngradeDetails o,
) {
  buildCounterSubscriptionUpgradeDowngradeDetails++;
  if (buildCounterSubscriptionUpgradeDowngradeDetails < 3) {
    unittest.expect(o.billingCycleSpec!, unittest.equals('foo'));
    unittest.expect(o.previousSubscriptionId!, unittest.equals('foo'));
  }
  buildCounterSubscriptionUpgradeDowngradeDetails--;
}

core.int buildCounterSuspendSubscriptionRequest = 0;
api.SuspendSubscriptionRequest buildSuspendSubscriptionRequest() {
  final o = api.SuspendSubscriptionRequest();
  buildCounterSuspendSubscriptionRequest++;
  if (buildCounterSuspendSubscriptionRequest < 3) {}
  buildCounterSuspendSubscriptionRequest--;
  return o;
}

void checkSuspendSubscriptionRequest(api.SuspendSubscriptionRequest o) {
  buildCounterSuspendSubscriptionRequest++;
  if (buildCounterSuspendSubscriptionRequest < 3) {}
  buildCounterSuspendSubscriptionRequest--;
}

core.int buildCounterSuspendSubscriptionResponse = 0;
api.SuspendSubscriptionResponse buildSuspendSubscriptionResponse() {
  final o = api.SuspendSubscriptionResponse();
  buildCounterSuspendSubscriptionResponse++;
  if (buildCounterSuspendSubscriptionResponse < 3) {
    o.subscription = buildSubscription();
  }
  buildCounterSuspendSubscriptionResponse--;
  return o;
}

void checkSuspendSubscriptionResponse(api.SuspendSubscriptionResponse o) {
  buildCounterSuspendSubscriptionResponse++;
  if (buildCounterSuspendSubscriptionResponse < 3) {
    checkSubscription(o.subscription!);
  }
  buildCounterSuspendSubscriptionResponse--;
}

core.int buildCounterUndoCancelSubscriptionRequest = 0;
api.UndoCancelSubscriptionRequest buildUndoCancelSubscriptionRequest() {
  final o = api.UndoCancelSubscriptionRequest();
  buildCounterUndoCancelSubscriptionRequest++;
  if (buildCounterUndoCancelSubscriptionRequest < 3) {}
  buildCounterUndoCancelSubscriptionRequest--;
  return o;
}

void checkUndoCancelSubscriptionRequest(api.UndoCancelSubscriptionRequest o) {
  buildCounterUndoCancelSubscriptionRequest++;
  if (buildCounterUndoCancelSubscriptionRequest < 3) {}
  buildCounterUndoCancelSubscriptionRequest--;
}

core.int buildCounterUndoCancelSubscriptionResponse = 0;
api.UndoCancelSubscriptionResponse buildUndoCancelSubscriptionResponse() {
  final o = api.UndoCancelSubscriptionResponse();
  buildCounterUndoCancelSubscriptionResponse++;
  if (buildCounterUndoCancelSubscriptionResponse < 3) {
    o.subscription = buildSubscription();
  }
  buildCounterUndoCancelSubscriptionResponse--;
  return o;
}

void checkUndoCancelSubscriptionResponse(api.UndoCancelSubscriptionResponse o) {
  buildCounterUndoCancelSubscriptionResponse++;
  if (buildCounterUndoCancelSubscriptionResponse < 3) {
    checkSubscription(o.subscription!);
  }
  buildCounterUndoCancelSubscriptionResponse--;
}

core.int buildCounterUserSession = 0;
api.UserSession buildUserSession() {
  final o = api.UserSession();
  buildCounterUserSession++;
  if (buildCounterUserSession < 3) {
    o.expireTime = 'foo';
    o.token = 'foo';
  }
  buildCounterUserSession--;
  return o;
}

void checkUserSession(api.UserSession o) {
  buildCounterUserSession++;
  if (buildCounterUserSession < 3) {
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterUserSession--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterYoutubePayload = 0;
api.YoutubePayload buildYoutubePayload() {
  final o = api.YoutubePayload();
  buildCounterYoutubePayload++;
  if (buildCounterYoutubePayload < 3) {
    o.accessEndTime = 'foo';
    o.partnerEligibilityIds = buildUnnamed20();
    o.partnerPlanType = 'foo';
  }
  buildCounterYoutubePayload--;
  return o;
}

void checkYoutubePayload(api.YoutubePayload o) {
  buildCounterYoutubePayload++;
  if (buildCounterYoutubePayload < 3) {
    unittest.expect(o.accessEndTime!, unittest.equals('foo'));
    checkUnnamed20(o.partnerEligibilityIds!);
    unittest.expect(o.partnerPlanType!, unittest.equals('foo'));
  }
  buildCounterYoutubePayload--;
}

void main() {
  unittest.group('obj-schema-Amount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Amount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAmount(od);
    });
  });

  unittest.group('obj-schema-CancelSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-CancelSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-CreateSubscriptionIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSubscriptionIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSubscriptionIntent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateSubscriptionIntent(od);
    });
  });

  unittest.group('obj-schema-Duration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Duration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDuration(od);
    });
  });

  unittest.group('obj-schema-EntitleSubscriptionIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitleSubscriptionIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntitleSubscriptionIntent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntitleSubscriptionIntent(od);
    });
  });

  unittest.group('obj-schema-EntitleSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitleSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntitleSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntitleSubscriptionRequest(od);
    });
  });

  unittest.group(
    'obj-schema-EntitleSubscriptionRequestLineItemEntitlementDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildEntitleSubscriptionRequestLineItemEntitlementDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .EntitleSubscriptionRequestLineItemEntitlementDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkEntitleSubscriptionRequestLineItemEntitlementDetails(od);
      });
    },
  );

  unittest.group('obj-schema-EntitleSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitleSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntitleSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntitleSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-ExtendSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtendSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtendSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtendSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-ExtendSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtendSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtendSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtendSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-Extension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Extension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtension(od);
    });
  });

  unittest.group('obj-schema-FindEligiblePromotionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindEligiblePromotionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindEligiblePromotionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFindEligiblePromotionsRequest(od);
    });
  });

  unittest.group('obj-schema-FindEligiblePromotionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindEligiblePromotionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindEligiblePromotionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFindEligiblePromotionsResponse(od);
    });
  });

  unittest.group('obj-schema-FiniteBillingCycleDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFiniteBillingCycleDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FiniteBillingCycleDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFiniteBillingCycleDetails(od);
    });
  });

  unittest.group('obj-schema-GenerateUserSessionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateUserSessionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateUserSessionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateUserSessionRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateUserSessionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateUserSessionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateUserSessionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateUserSessionResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleHomePayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleHomePayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleHomePayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleHomePayload(od);
    });
  });

  unittest.group('obj-schema-GoogleOnePayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleOnePayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleOnePayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleOnePayload(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLocalizedText.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeLocalizedText(od);
    });
  });

  unittest.group('obj-schema-IntentPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntentPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntentPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntentPayload(od);
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

  unittest.group('obj-schema-ListPromotionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPromotionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPromotionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPromotionsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
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

  unittest.group('obj-schema-ProductBundleDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductBundleDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductBundleDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductBundleDetails(od);
    });
  });

  unittest.group('obj-schema-ProductBundleDetailsBundleElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductBundleDetailsBundleElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductBundleDetailsBundleElement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductBundleDetailsBundleElement(od);
    });
  });

  unittest.group('obj-schema-ProductPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductPayload(od);
    });
  });

  unittest.group('obj-schema-ProductPriceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPriceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPriceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductPriceConfig(od);
    });
  });

  unittest.group('obj-schema-Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Promotion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromotion(od);
    });
  });

  unittest.group('obj-schema-PromotionIntroductoryPricingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionIntroductoryPricingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionIntroductoryPricingDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromotionIntroductoryPricingDetails(od);
    });
  });

  unittest.group(
    'obj-schema-PromotionIntroductoryPricingDetailsIntroductoryPricingSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildPromotionIntroductoryPricingDetailsIntroductoryPricingSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .PromotionIntroductoryPricingDetailsIntroductoryPricingSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkPromotionIntroductoryPricingDetailsIntroductoryPricingSpec(od);
      });
    },
  );

  unittest.group('obj-schema-ResumeSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResumeSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResumeSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-ServicePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServicePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServicePeriod.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServicePeriod(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-SubscriptionCancellationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionCancellationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionCancellationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionCancellationDetails(od);
    });
  });

  unittest.group('obj-schema-SubscriptionLineItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionLineItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionLineItem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionLineItem(od);
    });
  });

  unittest.group('obj-schema-SubscriptionLineItemBundleDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionLineItemBundleDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionLineItemBundleDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionLineItemBundleDetails(od);
    });
  });

  unittest.group(
    'obj-schema-SubscriptionLineItemBundleDetailsBundleElementDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSubscriptionLineItemBundleDetailsBundleElementDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .SubscriptionLineItemBundleDetailsBundleElementDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSubscriptionLineItemBundleDetailsBundleElementDetails(od);
      });
    },
  );

  unittest.group('obj-schema-SubscriptionLineItemOneTimeRecurrenceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionLineItemOneTimeRecurrenceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionLineItemOneTimeRecurrenceDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionLineItemOneTimeRecurrenceDetails(od);
    });
  });

  unittest.group('obj-schema-SubscriptionMigrationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionMigrationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionMigrationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionMigrationDetails(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPromotionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPromotionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPromotionSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionPromotionSpec(od);
    });
  });

  unittest.group('obj-schema-SubscriptionUpgradeDowngradeDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionUpgradeDowngradeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionUpgradeDowngradeDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscriptionUpgradeDowngradeDetails(od);
    });
  });

  unittest.group('obj-schema-SuspendSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuspendSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuspendSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuspendSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-SuspendSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuspendSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuspendSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuspendSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-UndoCancelSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndoCancelSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndoCancelSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUndoCancelSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-UndoCancelSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndoCancelSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndoCancelSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUndoCancelSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-UserSession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserSession.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserSession(od);
    });
  });

  unittest.group('obj-schema-YoutubePayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYoutubePayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YoutubePayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYoutubePayload(od);
    });
  });

  unittest.group('resource-PartnersProductsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PaymentsResellerSubscriptionApi(mock).partners.products;
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
          final resp = convert.json.encode(buildListProductsResponse());
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
      checkListProductsResponse(response as api.ListProductsResponse);
    });
  });

  unittest.group('resource-PartnersPromotionsResource', () {
    unittest.test('method--findEligible', () async {
      final mock = HttpServerMock();
      final res = api.PaymentsResellerSubscriptionApi(mock).partners.promotions;
      final arg_request = buildFindEligiblePromotionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FindEligiblePromotionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFindEligiblePromotionsRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFindEligiblePromotionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.findEligible(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkFindEligiblePromotionsResponse(
        response as api.FindEligiblePromotionsResponse,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PaymentsResellerSubscriptionApi(mock).partners.promotions;
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
          final resp = convert.json.encode(buildListPromotionsResponse());
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
      checkListPromotionsResponse(response as api.ListPromotionsResponse);
    });
  });

  unittest.group('resource-PartnersSubscriptionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildCancelSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelSubscriptionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCancelSubscriptionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCancelSubscriptionResponse(
        response as api.CancelSubscriptionResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildSubscription();
      final arg_parent = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubscription(obj);

          final path = req.url.path;
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
            queryMap['subscriptionId']!.first,
            unittest.equals(arg_subscriptionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        subscriptionId: arg_subscriptionId,
        $fields: arg_$fields,
      );
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--entitle', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildEntitleSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EntitleSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEntitleSubscriptionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEntitleSubscriptionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.entitle(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEntitleSubscriptionResponse(
        response as api.EntitleSubscriptionResponse,
      );
    });

    unittest.test('method--extend', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildExtendSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExtendSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExtendSubscriptionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildExtendSubscriptionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.extend(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExtendSubscriptionResponse(
        response as api.ExtendSubscriptionResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--provision', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildSubscription();
      final arg_parent = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubscription(obj);

          final path = req.url.path;
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
            queryMap['subscriptionId']!.first,
            unittest.equals(arg_subscriptionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.provision(
        arg_request,
        arg_parent,
        subscriptionId: arg_subscriptionId,
        $fields: arg_$fields,
      );
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildResumeSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResumeSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResumeSubscriptionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildResumeSubscriptionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkResumeSubscriptionResponse(
        response as api.ResumeSubscriptionResponse,
      );
    });

    unittest.test('method--suspend', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildSuspendSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SuspendSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSuspendSubscriptionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSuspendSubscriptionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.suspend(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSuspendSubscriptionResponse(
        response as api.SuspendSubscriptionResponse,
      );
    });

    unittest.test('method--undoCancel', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request = buildUndoCancelSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UndoCancelSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUndoCancelSubscriptionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildUndoCancelSubscriptionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.undoCancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkUndoCancelSubscriptionResponse(
        response as api.UndoCancelSubscriptionResponse,
      );
    });
  });

  unittest.group('resource-PartnersUserSessionsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.userSessions;
      final arg_request = buildGenerateUserSessionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateUserSessionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateUserSessionRequest(obj);

          final path = req.url.path;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGenerateUserSessionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGenerateUserSessionResponse(
        response as api.GenerateUserSessionResponse,
      );
    });
  });
}
