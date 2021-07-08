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

import 'package:googleapis/paymentsresellersubscription/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
    buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest() {
  var o =
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
  var o =
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
    checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(o.subscription!
        as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse--;
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Duration = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Duration
    buildGoogleCloudPaymentsResellerSubscriptionV1Duration() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1Duration();
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
  var o =
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
  var o = api
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
    checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(o.subscription!
        as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
    buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest() {
  var o =
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
    checkGoogleCloudPaymentsResellerSubscriptionV1Extension(
        o.extension! as api.GoogleCloudPaymentsResellerSubscriptionV1Extension);
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
  var o =
      api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse <
      3) {
    o.cycleEndTime = 'foo';
    o.freeTrialEndTime = 'foo';
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
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse--;
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Extension
    buildGoogleCloudPaymentsResellerSubscriptionV1Extension() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1Extension();
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
    checkGoogleCloudPaymentsResellerSubscriptionV1Duration(
        o.duration! as api.GoogleCloudPaymentsResellerSubscriptionV1Duration);
    unittest.expect(
      o.partnerUserToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Extension--;
}

core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Product>
    buildUnnamed5710() {
  var o = <api.GoogleCloudPaymentsResellerSubscriptionV1Product>[];
  o.add(buildGoogleCloudPaymentsResellerSubscriptionV1Product());
  o.add(buildGoogleCloudPaymentsResellerSubscriptionV1Product());
  return o;
}

void checkUnnamed5710(
    core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPaymentsResellerSubscriptionV1Product(
      o[0] as api.GoogleCloudPaymentsResellerSubscriptionV1Product);
  checkGoogleCloudPaymentsResellerSubscriptionV1Product(
      o[1] as api.GoogleCloudPaymentsResellerSubscriptionV1Product);
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed5710();
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
    checkUnnamed5710(o.products!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse--;
}

core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Promotion>
    buildUnnamed5711() {
  var o = <api.GoogleCloudPaymentsResellerSubscriptionV1Promotion>[];
  o.add(buildGoogleCloudPaymentsResellerSubscriptionV1Promotion());
  o.add(buildGoogleCloudPaymentsResellerSubscriptionV1Promotion());
  return o;
}

void checkUnnamed5711(
    core.List<api.GoogleCloudPaymentsResellerSubscriptionV1Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(
      o[0] as api.GoogleCloudPaymentsResellerSubscriptionV1Promotion);
  checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(
      o[1] as api.GoogleCloudPaymentsResellerSubscriptionV1Promotion);
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
    buildGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.promotions = buildUnnamed5711();
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
    checkUnnamed5711(o.promotions!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse--;
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Location = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Location
    buildGoogleCloudPaymentsResellerSubscriptionV1Location() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1Location();
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

core.List<core.String> buildUnnamed5712() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5712(core.List<core.String> o) {
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

core.List<api.GoogleTypeLocalizedText> buildUnnamed5713() {
  var o = <api.GoogleTypeLocalizedText>[];
  o.add(buildGoogleTypeLocalizedText());
  o.add(buildGoogleTypeLocalizedText());
  return o;
}

void checkUnnamed5713(core.List<api.GoogleTypeLocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeLocalizedText(o[0] as api.GoogleTypeLocalizedText);
  checkGoogleTypeLocalizedText(o[1] as api.GoogleTypeLocalizedText);
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Product
    buildGoogleCloudPaymentsResellerSubscriptionV1Product() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1Product();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product < 3) {
    o.name = 'foo';
    o.regionCodes = buildUnnamed5712();
    o.subscriptionBillingCycleDuration =
        buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
    o.titles = buildUnnamed5713();
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
    checkUnnamed5712(o.regionCodes!);
    checkGoogleCloudPaymentsResellerSubscriptionV1Duration(
        o.subscriptionBillingCycleDuration!
            as api.GoogleCloudPaymentsResellerSubscriptionV1Duration);
    checkUnnamed5713(o.titles!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Product--;
}

core.List<core.String> buildUnnamed5714() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5714(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5715() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5715(core.List<core.String> o) {
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

core.List<api.GoogleTypeLocalizedText> buildUnnamed5716() {
  var o = <api.GoogleTypeLocalizedText>[];
  o.add(buildGoogleTypeLocalizedText());
  o.add(buildGoogleTypeLocalizedText());
  return o;
}

void checkUnnamed5716(core.List<api.GoogleTypeLocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleTypeLocalizedText(o[0] as api.GoogleTypeLocalizedText);
  checkGoogleTypeLocalizedText(o[1] as api.GoogleTypeLocalizedText);
}

core.int buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion = 0;
api.GoogleCloudPaymentsResellerSubscriptionV1Promotion
    buildGoogleCloudPaymentsResellerSubscriptionV1Promotion() {
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1Promotion();
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion < 3) {
    o.applicableProducts = buildUnnamed5714();
    o.endTime = 'foo';
    o.freeTrialDuration =
        buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
    o.name = 'foo';
    o.regionCodes = buildUnnamed5715();
    o.startTime = 'foo';
    o.titles = buildUnnamed5716();
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion--;
  return o;
}

void checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(
    api.GoogleCloudPaymentsResellerSubscriptionV1Promotion o) {
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion++;
  if (buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion < 3) {
    checkUnnamed5714(o.applicableProducts!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPaymentsResellerSubscriptionV1Duration(o.freeTrialDuration!
        as api.GoogleCloudPaymentsResellerSubscriptionV1Duration);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5715(o.regionCodes!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5716(o.titles!);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Promotion--;
}

core.List<core.String> buildUnnamed5717() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5717(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5718() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5718(core.List<core.String> o) {
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
  var o = api.GoogleCloudPaymentsResellerSubscriptionV1Subscription();
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
    o.products = buildUnnamed5717();
    o.promotions = buildUnnamed5718();
    o.redirectUri = 'foo';
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
        o.cancellationDetails! as api
            .GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails);
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
    checkUnnamed5717(o.products!);
    checkUnnamed5718(o.promotions!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPaymentsResellerSubscriptionV1Location(o.serviceLocation!
        as api.GoogleCloudPaymentsResellerSubscriptionV1Location);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails(
        o.upgradeDowngradeDetails! as api
            .GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1Subscription--;
}

core.int
    buildCounterGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails =
    0;
api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
    buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails() {
  var o = api
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
  var o = api
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
  var o = api
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
  var o = api
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
    checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(o.subscription!
        as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
  }
  buildCounterGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse--;
}

core.int buildCounterGoogleTypeLocalizedText = 0;
api.GoogleTypeLocalizedText buildGoogleTypeLocalizedText() {
  var o = api.GoogleTypeLocalizedText();
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
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest(od
          as api
              .GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Duration',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudPaymentsResellerSubscriptionV1Duration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Duration(
          od as api.GoogleCloudPaymentsResellerSubscriptionV1Duration);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest(od
          as api
              .GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Extension', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudPaymentsResellerSubscriptionV1Extension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudPaymentsResellerSubscriptionV1Extension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Extension(
          od as api.GoogleCloudPaymentsResellerSubscriptionV1Extension);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse(od
          as api.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse(od
          as api
              .GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Location',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudPaymentsResellerSubscriptionV1Location();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudPaymentsResellerSubscriptionV1Location.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Location(
          od as api.GoogleCloudPaymentsResellerSubscriptionV1Location);
    });
  });

  unittest.group('obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Product',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudPaymentsResellerSubscriptionV1Product();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudPaymentsResellerSubscriptionV1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Product(
          od as api.GoogleCloudPaymentsResellerSubscriptionV1Product);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Promotion', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudPaymentsResellerSubscriptionV1Promotion();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudPaymentsResellerSubscriptionV1Promotion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Promotion(
          od as api.GoogleCloudPaymentsResellerSubscriptionV1Promotion);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1Subscription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(
          od as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse(
          od as api
              .GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse);
    });
  });

  unittest.group('obj-schema-GoogleTypeLocalizedText', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleTypeLocalizedText();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleTypeLocalizedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeLocalizedText(od as api.GoogleTypeLocalizedText);
    });
  });

  unittest.group('resource-PartnersProductsResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.PaymentsResellerSubscriptionApi(mock).partners.products;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
      var mock = HttpServerMock();
      var res = api.PaymentsResellerSubscriptionApi(mock).partners.promotions;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      var arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest(
            obj as api
                .GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      var arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
      var arg_parent = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(
            obj as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
          queryMap["subscriptionId"]!.first,
          unittest.equals(arg_subscriptionId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          subscriptionId: arg_subscriptionId, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(response
          as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });

    unittest.test('method--entitle', () async {
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      var arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest(
            obj as api
                .GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      var arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest(
            obj as api
                .GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
            buildGoogleCloudPaymentsResellerSubscriptionV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(response
          as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });

    unittest.test('method--provision', () async {
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      var arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1Subscription();
      var arg_parent = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(
            obj as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
          queryMap["subscriptionId"]!.first,
          unittest.equals(arg_subscriptionId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudPaymentsResellerSubscriptionV1Subscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.provision(arg_request, arg_parent,
          subscriptionId: arg_subscriptionId, $fields: arg_$fields);
      checkGoogleCloudPaymentsResellerSubscriptionV1Subscription(response
          as api.GoogleCloudPaymentsResellerSubscriptionV1Subscription);
    });

    unittest.test('method--undoCancel', () async {
      var mock = HttpServerMock();
      var res =
          api.PaymentsResellerSubscriptionApi(mock).partners.subscriptions;
      var arg_request =
          buildGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest(
            obj as api
                .GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
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
