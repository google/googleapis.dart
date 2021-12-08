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

import 'package:googleapis/paymentsresellersubscription/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
    buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest() {
  final o =
      api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest <
      3) {
    o.cancelImmediately = true;
    o.cancellationReason = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest(
    api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest <
      3) {
    unittest.expect(o.cancelImmediately!, unittest.isTrue);
    unittest.expect(
      o.cancellationReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse() {
  final o =
      api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse <
      3) {
    o.subscription =
        buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse(
    api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse <
      3) {
    checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(o.subscription!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse--;
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Duration
    buildGoogleCloudPaymentsResellerSubscriptionV1Duration() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1Duration();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration < 3) {
    o.count = 42;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Duration(
    api.GoogleCloudPaymentsResellerSubscriptionV1Duration o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
    buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest() {
  final o =
      api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest <
      3) {}
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest(
    api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest <
      3) {}
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse <
      3) {
    o.subscription =
        buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse(
    api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse <
      3) {
    checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(o.subscription!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
    buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest() {
  final o =
      api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest <
      3) {
    o.extension = buildGoogleCloudPaymentsResellerSubscriptionV1Extension();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest(
    api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest <
      3) {
    checkGoogleCloudPaymentsResellerSubscriptionV1Extension(o.extension!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse() {
  final o =
      api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse <
      3) {
    o.cycleEndTime = 'foo';
    o.freeTrialEndTime = 'foo';
    o.renewalTime = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse(
    api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse <
      3) {
    unittest.expect(
      o.cycleEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeTrialEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renewalTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse--;
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Extension
    buildGoogleCloudPaymentsResellerSubscriptionV1Extension() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1Extension();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension < 3) {
    o.duration = buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
    o.partnerUserToken = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Extension(
    api.GoogleCloudPaymentsResellerSubscriptionV1Extension o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension < 3) {
    checkGoogleCloudPaymentsResellerSubscriptionV1Duration(o.duration!);
    unittest.expect(
      o.partnerUserToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension--;
}

core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Product>
    buildUnnamed0() => [
          buildGoogleCloudPaymentsResellerSubscriptionV1Product(),
          buildGoogleCloudPaymentsResellerSubscriptionV1Product(),
        ];

void checkUnnamed0(
    core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPaymentsResellerSubscriptionV1Product(o[0]);
  checkGoogleCloudPaymentsResellerSubscriptionV1Product(o[1]);
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed0();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse(
    api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.products!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse--;
}

core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Promotion>
    buildUnnamed1() => [
          buildGoogleCloudPaymentsResellerSubscriptionV1Promotion(),
          buildGoogleCloudPaymentsResellerSubscriptionV1Promotion(),
        ];

void checkUnnamed1(
    core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(o[0]);
  checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(o[1]);
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse() {
  final o =
      api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.promotions = buildUnnamed1();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse(
    api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.promotions!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse--;
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Location
    buildGoogleCloudPaymentsResellerSubscriptionV1Location() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1Location();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location < 3) {
    o.postalCode = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Location(
    api.GoogleCloudPaymentsResellerSubscriptionV1Location o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location < 3) {
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location--;
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

core.List<api.GoogleTypeLocalizedText> buildUnnamed3() => [
      buildGoogleTypeLocalizedText(),
      buildGoogleTypeLocalizedText(),
    ];

void checkUnnamed3(core.List<api.GoogleTypeLocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeLocalizedText(o[0]);
  checkGoogleTypeLocalizedText(o[1]);
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Product
    buildGoogleCloudPaymentsResellerSubscriptionV1Product() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1Product();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product < 3) {
    o.name = 'foo';
    o.regionCodes = buildUnnamed2();
    o.subscriptionBillingCycleDuration =
        buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
    o.titles = buildUnnamed3();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Product(
    api.GoogleCloudPaymentsResellerSubscriptionV1Product o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.regionCodes!);
    checkGoogleCloudPaymentsResellerSubscriptionV1Duration(
        o.subscriptionBillingCycleDuration!);
    checkUnnamed3(o.titles!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product--;
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

core.List<api.GoogleTypeLocalizedText> buildUnnamed6() => [
      buildGoogleTypeLocalizedText(),
      buildGoogleTypeLocalizedText(),
    ];

void checkUnnamed6(core.List<api.GoogleTypeLocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeLocalizedText(o[0]);
  checkGoogleTypeLocalizedText(o[1]);
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Promotion
    buildGoogleCloudPaymentsResellerSubscriptionV1Promotion() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1Promotion();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion < 3) {
    o.applicableProducts = buildUnnamed4();
    o.endTime = 'foo';
    o.freeTrialDuration =
        buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
    o.introductoryPricingDetails =
        buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails();
    o.name = 'foo';
    o.promotionType = 'foo';
    o.regionCodes = buildUnnamed5();
    o.startTime = 'foo';
    o.titles = buildUnnamed6();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(
    api.GoogleCloudPaymentsResellerSubscriptionV1Promotion o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion < 3) {
    checkUnnamed4(o.applicableProducts!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPaymentsResellerSubscriptionV1Duration(
        o.freeTrialDuration!);
    checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails(
        o.introductoryPricingDetails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionType!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.regionCodes!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.titles!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion--;
}

core.List<
        api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>
    buildUnnamed7() => [
          buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec(),
          buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec(),
        ];

void checkUnnamed7(
    core.List<
            api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec(
      o[0]);
  checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec(
      o[1]);
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
    buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails <
      3) {
    o.introductoryPricingSpecs = buildUnnamed7();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails(
    api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails <
      3) {
    checkUnnamed7(o.introductoryPricingSpecs!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
    buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec <
      3) {
    o.recurrenceCount = 42;
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec(
    api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec <
      3) {
    unittest.expect(
      o.recurrenceCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec--;
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

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Subscription
    buildGoogleCloudPaymentsResellerSubscriptionV1Subscription() {
  final o = api.GoogleCloudPaymentsResellerSubscriptionV1Subscription();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription < 3) {
    o.cancellationDetails =
        buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails();
    o.createTime = 'foo';
    o.cycleEndTime = 'foo';
    o.endUserEntitled = true;
    o.freeTrialEndTime = 'foo';
    o.name = 'foo';
    o.partnerUserToken = 'foo';
    o.processingState = 'foo';
    o.products = buildUnnamed8();
    o.promotions = buildUnnamed9();
    o.redirectUri = 'foo';
    o.renewalTime = 'foo';
    o.serviceLocation =
        buildGoogleCloudPaymentsResellerSubscriptionV1Location();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.upgradeDowngradeDetails =
        buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(
    api.GoogleCloudPaymentsResellerSubscriptionV1Subscription o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription < 3) {
    checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails(
        o.cancellationDetails!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cycleEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.endUserEntitled!, unittest.isTrue);
    unittest.expect(
      o.freeTrialEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partnerUserToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processingState!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.products!);
    checkUnnamed9(o.promotions!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renewalTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPaymentsResellerSubscriptionV1Location(o.serviceLocation!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails(
        o.upgradeDowngradeDetails!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
    buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails <
      3) {
    o.reason = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails(
    api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails <
      3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
    buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails <
      3) {
    o.billingCycleSpec = 'foo';
    o.previousSubscriptionId = 'foo';
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails(
    api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails <
      3) {
    unittest.expect(
      o.billingCycleSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousSubscriptionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
    buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest <
      3) {}
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest(
    api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest <
      3) {}
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse() {
  final o = api
      .GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse <
      3) {
    o.subscription =
        buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse(
    api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
        o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse <
      3) {
    checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(o.subscription!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse--;
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
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeLocalizedText--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Duration',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Duration(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Extension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPaymentsResellerSubscriptionV1Extension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1Extension.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Extension(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Location',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPaymentsResellerSubscriptionV1Location();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPaymentsResellerSubscriptionV1Location.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Location(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Product',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPaymentsResellerSubscriptionV1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPaymentsResellerSubscriptionV1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Product(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPaymentsResellerSubscriptionV1Promotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1Promotion.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetailsIntroductoryPricingSpec(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLocalizedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeLocalizedText(od);
    });
  });

  unittest.group('resource-PartnersProductsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PaymentsResellerSubscriptionApi(mock).partners.products;
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
            buildGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse(
          response as api
              .GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse);
    });
  });

  unittest.group('resource-PartnersPromotionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PaymentsResellerSubscriptionApi(mock).partners.promotions;
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
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse(
          response as api
              .GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse);
    });
  });

  unittest.group('resource-PartnersSubscriptionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest(
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
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse(
          response as api
              .GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
      final arg_parent = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(obj);

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
          queryMap['subscriptionId']!.first,
          unittest.equals(arg_subscriptionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          subscriptionId: arg_subscriptionId, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(response
          as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });

    unittest.test('method--entitle', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest(
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
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.entitle(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse(
          response as api
              .GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse);
    });

    unittest.test('method--extend', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest(
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
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.extend(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse(
          response as api
              .GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
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
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(response
          as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });

    unittest.test('method--provision', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
      final arg_parent = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(obj);

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
          queryMap['subscriptionId']!.first,
          unittest.equals(arg_subscriptionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.provision(arg_request, arg_parent,
          subscriptionId: arg_subscriptionId, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(response
          as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });

    unittest.test('method--undoCancel', () async {
      final mock = HttpServerMock();
      final res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      final arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest(
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
        final resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undoCancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse(
          response as api
              .GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse);
    });
  });
}
