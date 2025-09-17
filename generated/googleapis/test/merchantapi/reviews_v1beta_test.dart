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

import 'package:googleapis/merchantapi/reviews_v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.CustomAttribute> buildUnnamed0() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed0(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed0();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed0(o.groupValues!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterCustomAttribute--;
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

core.List<api.MerchantReview> buildUnnamed1() => [
  buildMerchantReview(),
  buildMerchantReview(),
];

void checkUnnamed1(core.List<api.MerchantReview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantReview(o[0]);
  checkMerchantReview(o[1]);
}

core.int buildCounterListMerchantReviewsResponse = 0;
api.ListMerchantReviewsResponse buildListMerchantReviewsResponse() {
  final o = api.ListMerchantReviewsResponse();
  buildCounterListMerchantReviewsResponse++;
  if (buildCounterListMerchantReviewsResponse < 3) {
    o.merchantReviews = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListMerchantReviewsResponse--;
  return o;
}

void checkListMerchantReviewsResponse(api.ListMerchantReviewsResponse o) {
  buildCounterListMerchantReviewsResponse++;
  if (buildCounterListMerchantReviewsResponse < 3) {
    checkUnnamed1(o.merchantReviews!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMerchantReviewsResponse--;
}

core.List<api.ProductReview> buildUnnamed2() => [
  buildProductReview(),
  buildProductReview(),
];

void checkUnnamed2(core.List<api.ProductReview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductReview(o[0]);
  checkProductReview(o[1]);
}

core.int buildCounterListProductReviewsResponse = 0;
api.ListProductReviewsResponse buildListProductReviewsResponse() {
  final o = api.ListProductReviewsResponse();
  buildCounterListProductReviewsResponse++;
  if (buildCounterListProductReviewsResponse < 3) {
    o.nextPageToken = 'foo';
    o.productReviews = buildUnnamed2();
  }
  buildCounterListProductReviewsResponse--;
  return o;
}

void checkListProductReviewsResponse(api.ListProductReviewsResponse o) {
  buildCounterListProductReviewsResponse++;
  if (buildCounterListProductReviewsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.productReviews!);
  }
  buildCounterListProductReviewsResponse--;
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

core.int buildCounterMerchantReview = 0;
api.MerchantReview buildMerchantReview() {
  final o = api.MerchantReview();
  buildCounterMerchantReview++;
  if (buildCounterMerchantReview < 3) {
    o.customAttributes = buildUnnamed3();
    o.dataSource = 'foo';
    o.merchantReviewAttributes = buildMerchantReviewAttributes();
    o.merchantReviewId = 'foo';
    o.merchantReviewStatus = buildMerchantReviewStatus();
    o.name = 'foo';
  }
  buildCounterMerchantReview--;
  return o;
}

void checkMerchantReview(api.MerchantReview o) {
  buildCounterMerchantReview++;
  if (buildCounterMerchantReview < 3) {
    checkUnnamed3(o.customAttributes!);
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    checkMerchantReviewAttributes(o.merchantReviewAttributes!);
    unittest.expect(o.merchantReviewId!, unittest.equals('foo'));
    checkMerchantReviewStatus(o.merchantReviewStatus!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterMerchantReview--;
}

core.int buildCounterMerchantReviewAttributes = 0;
api.MerchantReviewAttributes buildMerchantReviewAttributes() {
  final o = api.MerchantReviewAttributes();
  buildCounterMerchantReviewAttributes++;
  if (buildCounterMerchantReviewAttributes < 3) {
    o.collectionMethod = 'foo';
    o.content = 'foo';
    o.isAnonymous = true;
    o.maxRating = 'foo';
    o.merchantDisplayName = 'foo';
    o.merchantId = 'foo';
    o.merchantLink = 'foo';
    o.merchantRatingLink = 'foo';
    o.minRating = 'foo';
    o.rating = 42.0;
    o.reviewCountry = 'foo';
    o.reviewLanguage = 'foo';
    o.reviewTime = 'foo';
    o.reviewerId = 'foo';
    o.reviewerUsername = 'foo';
    o.title = 'foo';
  }
  buildCounterMerchantReviewAttributes--;
  return o;
}

void checkMerchantReviewAttributes(api.MerchantReviewAttributes o) {
  buildCounterMerchantReviewAttributes++;
  if (buildCounterMerchantReviewAttributes < 3) {
    unittest.expect(o.collectionMethod!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.isAnonymous!, unittest.isTrue);
    unittest.expect(o.maxRating!, unittest.equals('foo'));
    unittest.expect(o.merchantDisplayName!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    unittest.expect(o.merchantLink!, unittest.equals('foo'));
    unittest.expect(o.merchantRatingLink!, unittest.equals('foo'));
    unittest.expect(o.minRating!, unittest.equals('foo'));
    unittest.expect(o.rating!, unittest.equals(42.0));
    unittest.expect(o.reviewCountry!, unittest.equals('foo'));
    unittest.expect(o.reviewLanguage!, unittest.equals('foo'));
    unittest.expect(o.reviewTime!, unittest.equals('foo'));
    unittest.expect(o.reviewerId!, unittest.equals('foo'));
    unittest.expect(o.reviewerUsername!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterMerchantReviewAttributes--;
}

core.int buildCounterMerchantReviewDestinationStatus = 0;
api.MerchantReviewDestinationStatus buildMerchantReviewDestinationStatus() {
  final o = api.MerchantReviewDestinationStatus();
  buildCounterMerchantReviewDestinationStatus++;
  if (buildCounterMerchantReviewDestinationStatus < 3) {
    o.reportingContext = 'foo';
  }
  buildCounterMerchantReviewDestinationStatus--;
  return o;
}

void checkMerchantReviewDestinationStatus(
  api.MerchantReviewDestinationStatus o,
) {
  buildCounterMerchantReviewDestinationStatus++;
  if (buildCounterMerchantReviewDestinationStatus < 3) {
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
  }
  buildCounterMerchantReviewDestinationStatus--;
}

core.int buildCounterMerchantReviewItemLevelIssue = 0;
api.MerchantReviewItemLevelIssue buildMerchantReviewItemLevelIssue() {
  final o = api.MerchantReviewItemLevelIssue();
  buildCounterMerchantReviewItemLevelIssue++;
  if (buildCounterMerchantReviewItemLevelIssue < 3) {
    o.attribute = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.reportingContext = 'foo';
    o.resolution = 'foo';
    o.severity = 'foo';
  }
  buildCounterMerchantReviewItemLevelIssue--;
  return o;
}

void checkMerchantReviewItemLevelIssue(api.MerchantReviewItemLevelIssue o) {
  buildCounterMerchantReviewItemLevelIssue++;
  if (buildCounterMerchantReviewItemLevelIssue < 3) {
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentation!, unittest.equals('foo'));
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
    unittest.expect(o.resolution!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterMerchantReviewItemLevelIssue--;
}

core.List<api.MerchantReviewDestinationStatus> buildUnnamed4() => [
  buildMerchantReviewDestinationStatus(),
  buildMerchantReviewDestinationStatus(),
];

void checkUnnamed4(core.List<api.MerchantReviewDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantReviewDestinationStatus(o[0]);
  checkMerchantReviewDestinationStatus(o[1]);
}

core.List<api.MerchantReviewItemLevelIssue> buildUnnamed5() => [
  buildMerchantReviewItemLevelIssue(),
  buildMerchantReviewItemLevelIssue(),
];

void checkUnnamed5(core.List<api.MerchantReviewItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantReviewItemLevelIssue(o[0]);
  checkMerchantReviewItemLevelIssue(o[1]);
}

core.int buildCounterMerchantReviewStatus = 0;
api.MerchantReviewStatus buildMerchantReviewStatus() {
  final o = api.MerchantReviewStatus();
  buildCounterMerchantReviewStatus++;
  if (buildCounterMerchantReviewStatus < 3) {
    o.createTime = 'foo';
    o.destinationStatuses = buildUnnamed4();
    o.itemLevelIssues = buildUnnamed5();
    o.lastUpdateTime = 'foo';
  }
  buildCounterMerchantReviewStatus--;
  return o;
}

void checkMerchantReviewStatus(api.MerchantReviewStatus o) {
  buildCounterMerchantReviewStatus++;
  if (buildCounterMerchantReviewStatus < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed4(o.destinationStatuses!);
    checkUnnamed5(o.itemLevelIssues!);
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
  }
  buildCounterMerchantReviewStatus--;
}

core.List<api.CustomAttribute> buildUnnamed6() => [
  buildCustomAttribute(),
  buildCustomAttribute(),
];

void checkUnnamed6(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterProductReview = 0;
api.ProductReview buildProductReview() {
  final o = api.ProductReview();
  buildCounterProductReview++;
  if (buildCounterProductReview < 3) {
    o.customAttributes = buildUnnamed6();
    o.dataSource = 'foo';
    o.name = 'foo';
    o.productReviewAttributes = buildProductReviewAttributes();
    o.productReviewId = 'foo';
    o.productReviewStatus = buildProductReviewStatus();
  }
  buildCounterProductReview--;
  return o;
}

void checkProductReview(api.ProductReview o) {
  buildCounterProductReview++;
  if (buildCounterProductReview < 3) {
    checkUnnamed6(o.customAttributes!);
    unittest.expect(o.dataSource!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProductReviewAttributes(o.productReviewAttributes!);
    unittest.expect(o.productReviewId!, unittest.equals('foo'));
    checkProductReviewStatus(o.productReviewStatus!);
  }
  buildCounterProductReview--;
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

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductReviewAttributes = 0;
api.ProductReviewAttributes buildProductReviewAttributes() {
  final o = api.ProductReviewAttributes();
  buildCounterProductReviewAttributes++;
  if (buildCounterProductReviewAttributes < 3) {
    o.aggregatorName = 'foo';
    o.asins = buildUnnamed7();
    o.brands = buildUnnamed8();
    o.collectionMethod = 'foo';
    o.cons = buildUnnamed9();
    o.content = 'foo';
    o.gtins = buildUnnamed10();
    o.isIncentivizedReview = true;
    o.isSpam = true;
    o.isVerifiedPurchase = true;
    o.maxRating = 'foo';
    o.minRating = 'foo';
    o.mpns = buildUnnamed11();
    o.productLinks = buildUnnamed12();
    o.productNames = buildUnnamed13();
    o.pros = buildUnnamed14();
    o.publisherFavicon = 'foo';
    o.publisherName = 'foo';
    o.rating = 42.0;
    o.reviewCountry = 'foo';
    o.reviewLanguage = 'foo';
    o.reviewLink = buildReviewLink();
    o.reviewTime = 'foo';
    o.reviewerId = 'foo';
    o.reviewerImageLinks = buildUnnamed15();
    o.reviewerIsAnonymous = true;
    o.reviewerUsername = 'foo';
    o.skus = buildUnnamed16();
    o.subclientName = 'foo';
    o.title = 'foo';
    o.transactionId = 'foo';
  }
  buildCounterProductReviewAttributes--;
  return o;
}

void checkProductReviewAttributes(api.ProductReviewAttributes o) {
  buildCounterProductReviewAttributes++;
  if (buildCounterProductReviewAttributes < 3) {
    unittest.expect(o.aggregatorName!, unittest.equals('foo'));
    checkUnnamed7(o.asins!);
    checkUnnamed8(o.brands!);
    unittest.expect(o.collectionMethod!, unittest.equals('foo'));
    checkUnnamed9(o.cons!);
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed10(o.gtins!);
    unittest.expect(o.isIncentivizedReview!, unittest.isTrue);
    unittest.expect(o.isSpam!, unittest.isTrue);
    unittest.expect(o.isVerifiedPurchase!, unittest.isTrue);
    unittest.expect(o.maxRating!, unittest.equals('foo'));
    unittest.expect(o.minRating!, unittest.equals('foo'));
    checkUnnamed11(o.mpns!);
    checkUnnamed12(o.productLinks!);
    checkUnnamed13(o.productNames!);
    checkUnnamed14(o.pros!);
    unittest.expect(o.publisherFavicon!, unittest.equals('foo'));
    unittest.expect(o.publisherName!, unittest.equals('foo'));
    unittest.expect(o.rating!, unittest.equals(42.0));
    unittest.expect(o.reviewCountry!, unittest.equals('foo'));
    unittest.expect(o.reviewLanguage!, unittest.equals('foo'));
    checkReviewLink(o.reviewLink!);
    unittest.expect(o.reviewTime!, unittest.equals('foo'));
    unittest.expect(o.reviewerId!, unittest.equals('foo'));
    checkUnnamed15(o.reviewerImageLinks!);
    unittest.expect(o.reviewerIsAnonymous!, unittest.isTrue);
    unittest.expect(o.reviewerUsername!, unittest.equals('foo'));
    checkUnnamed16(o.skus!);
    unittest.expect(o.subclientName!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.transactionId!, unittest.equals('foo'));
  }
  buildCounterProductReviewAttributes--;
}

core.int buildCounterProductReviewDestinationStatus = 0;
api.ProductReviewDestinationStatus buildProductReviewDestinationStatus() {
  final o = api.ProductReviewDestinationStatus();
  buildCounterProductReviewDestinationStatus++;
  if (buildCounterProductReviewDestinationStatus < 3) {
    o.reportingContext = 'foo';
  }
  buildCounterProductReviewDestinationStatus--;
  return o;
}

void checkProductReviewDestinationStatus(api.ProductReviewDestinationStatus o) {
  buildCounterProductReviewDestinationStatus++;
  if (buildCounterProductReviewDestinationStatus < 3) {
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
  }
  buildCounterProductReviewDestinationStatus--;
}

core.int buildCounterProductReviewItemLevelIssue = 0;
api.ProductReviewItemLevelIssue buildProductReviewItemLevelIssue() {
  final o = api.ProductReviewItemLevelIssue();
  buildCounterProductReviewItemLevelIssue++;
  if (buildCounterProductReviewItemLevelIssue < 3) {
    o.attribute = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.reportingContext = 'foo';
    o.resolution = 'foo';
    o.severity = 'foo';
  }
  buildCounterProductReviewItemLevelIssue--;
  return o;
}

void checkProductReviewItemLevelIssue(api.ProductReviewItemLevelIssue o) {
  buildCounterProductReviewItemLevelIssue++;
  if (buildCounterProductReviewItemLevelIssue < 3) {
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentation!, unittest.equals('foo'));
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
    unittest.expect(o.resolution!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterProductReviewItemLevelIssue--;
}

core.List<api.ProductReviewDestinationStatus> buildUnnamed17() => [
  buildProductReviewDestinationStatus(),
  buildProductReviewDestinationStatus(),
];

void checkUnnamed17(core.List<api.ProductReviewDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductReviewDestinationStatus(o[0]);
  checkProductReviewDestinationStatus(o[1]);
}

core.List<api.ProductReviewItemLevelIssue> buildUnnamed18() => [
  buildProductReviewItemLevelIssue(),
  buildProductReviewItemLevelIssue(),
];

void checkUnnamed18(core.List<api.ProductReviewItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductReviewItemLevelIssue(o[0]);
  checkProductReviewItemLevelIssue(o[1]);
}

core.int buildCounterProductReviewStatus = 0;
api.ProductReviewStatus buildProductReviewStatus() {
  final o = api.ProductReviewStatus();
  buildCounterProductReviewStatus++;
  if (buildCounterProductReviewStatus < 3) {
    o.createTime = 'foo';
    o.destinationStatuses = buildUnnamed17();
    o.itemLevelIssues = buildUnnamed18();
    o.lastUpdateTime = 'foo';
  }
  buildCounterProductReviewStatus--;
  return o;
}

void checkProductReviewStatus(api.ProductReviewStatus o) {
  buildCounterProductReviewStatus++;
  if (buildCounterProductReviewStatus < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed17(o.destinationStatuses!);
    checkUnnamed18(o.itemLevelIssues!);
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
  }
  buildCounterProductReviewStatus--;
}

core.int buildCounterReviewLink = 0;
api.ReviewLink buildReviewLink() {
  final o = api.ReviewLink();
  buildCounterReviewLink++;
  if (buildCounterReviewLink < 3) {
    o.link = 'foo';
    o.type = 'foo';
  }
  buildCounterReviewLink--;
  return o;
}

void checkReviewLink(api.ReviewLink o) {
  buildCounterReviewLink++;
  if (buildCounterReviewLink < 3) {
    unittest.expect(o.link!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterReviewLink--;
}

void main() {
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

  unittest.group('obj-schema-ListMerchantReviewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMerchantReviewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMerchantReviewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMerchantReviewsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductReviewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductReviewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductReviewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProductReviewsResponse(od);
    });
  });

  unittest.group('obj-schema-MerchantReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantReview.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantReview(od);
    });
  });

  unittest.group('obj-schema-MerchantReviewAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantReviewAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantReviewAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantReviewAttributes(od);
    });
  });

  unittest.group('obj-schema-MerchantReviewDestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantReviewDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantReviewDestinationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantReviewDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-MerchantReviewItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantReviewItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantReviewItemLevelIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantReviewItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-MerchantReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantReviewStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantReviewStatus(od);
    });
  });

  unittest.group('obj-schema-ProductReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductReview.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductReview(od);
    });
  });

  unittest.group('obj-schema-ProductReviewAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductReviewAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductReviewAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductReviewAttributes(od);
    });
  });

  unittest.group('obj-schema-ProductReviewDestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductReviewDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductReviewDestinationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductReviewDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-ProductReviewItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductReviewItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductReviewItemLevelIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductReviewItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ProductReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductReviewStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductReviewStatus(od);
    });
  });

  unittest.group('obj-schema-ReviewLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReviewLink(od);
    });
  });

  unittest.group('resource-AccountsMerchantReviewsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.merchantReviews;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.merchantReviews;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildMerchantReview());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMerchantReview(response as api.MerchantReview);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.merchantReviews;
      final arg_request = buildMerchantReview();
      final arg_parent = 'foo';
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MerchantReview.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMerchantReview(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildMerchantReview());
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
      checkMerchantReview(response as api.MerchantReview);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.merchantReviews;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListMerchantReviewsResponse());
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
      checkListMerchantReviewsResponse(
        response as api.ListMerchantReviewsResponse,
      );
    });
  });

  unittest.group('resource-AccountsProductReviewsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productReviews;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productReviews;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildProductReview());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProductReview(response as api.ProductReview);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productReviews;
      final arg_request = buildProductReview();
      final arg_parent = 'foo';
      final arg_dataSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProductReview.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProductReview(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildProductReview());
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
      checkProductReview(response as api.ProductReview);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.productReviews;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('reviews/v1beta/'),
          );
          pathOffset += 15;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListProductReviewsResponse());
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
      checkListProductReviewsResponse(
        response as api.ListProductReviewsResponse,
      );
    });
  });
}
