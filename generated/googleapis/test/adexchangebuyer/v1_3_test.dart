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

import 'package:googleapis/adexchangebuyer/v1_3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountBidderLocation = 0;
api.AccountBidderLocation buildAccountBidderLocation() {
  final o = api.AccountBidderLocation();
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    o.maximumQps = 42;
    o.region = 'foo';
    o.url = 'foo';
  }
  buildCounterAccountBidderLocation--;
  return o;
}

void checkAccountBidderLocation(api.AccountBidderLocation o) {
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    unittest.expect(
      o.maximumQps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountBidderLocation--;
}

core.List<api.AccountBidderLocation> buildUnnamed2138() => [
      buildAccountBidderLocation(),
      buildAccountBidderLocation(),
    ];

void checkUnnamed2138(core.List<api.AccountBidderLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountBidderLocation(o[0]);
  checkAccountBidderLocation(o[1]);
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.bidderLocation = buildUnnamed2138();
    o.cookieMatchingNid = 'foo';
    o.cookieMatchingUrl = 'foo';
    o.id = 42;
    o.kind = 'foo';
    o.maximumActiveCreatives = 42;
    o.maximumTotalQps = 42;
    o.numberActiveCreatives = 42;
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed2138(o.bidderLocation!);
    unittest.expect(
      o.cookieMatchingNid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cookieMatchingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maximumActiveCreatives!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumTotalQps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numberActiveCreatives!,
      unittest.equals(42),
    );
  }
  buildCounterAccount--;
}

core.List<api.Account> buildUnnamed2139() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed2139(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsList = 0;
api.AccountsList buildAccountsList() {
  final o = api.AccountsList();
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    o.items = buildUnnamed2139();
    o.kind = 'foo';
  }
  buildCounterAccountsList--;
  return o;
}

void checkAccountsList(api.AccountsList o) {
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    checkUnnamed2139(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsList--;
}

core.List<core.String> buildUnnamed2140() => [
      'foo',
      'foo',
    ];

void checkUnnamed2140(core.List<core.String> o) {
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

core.int buildCounterBillingInfo = 0;
api.BillingInfo buildBillingInfo() {
  final o = api.BillingInfo();
  buildCounterBillingInfo++;
  if (buildCounterBillingInfo < 3) {
    o.accountId = 42;
    o.accountName = 'foo';
    o.billingId = buildUnnamed2140();
    o.kind = 'foo';
  }
  buildCounterBillingInfo--;
  return o;
}

void checkBillingInfo(api.BillingInfo o) {
  buildCounterBillingInfo++;
  if (buildCounterBillingInfo < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.accountName!,
      unittest.equals('foo'),
    );
    checkUnnamed2140(o.billingId!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingInfo--;
}

core.List<api.BillingInfo> buildUnnamed2141() => [
      buildBillingInfo(),
      buildBillingInfo(),
    ];

void checkUnnamed2141(core.List<api.BillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingInfo(o[0]);
  checkBillingInfo(o[1]);
}

core.int buildCounterBillingInfoList = 0;
api.BillingInfoList buildBillingInfoList() {
  final o = api.BillingInfoList();
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    o.items = buildUnnamed2141();
    o.kind = 'foo';
  }
  buildCounterBillingInfoList--;
  return o;
}

void checkBillingInfoList(api.BillingInfoList o) {
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    checkUnnamed2141(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingInfoList--;
}

core.int buildCounterBudget = 0;
api.Budget buildBudget() {
  final o = api.Budget();
  buildCounterBudget++;
  if (buildCounterBudget < 3) {
    o.accountId = 'foo';
    o.billingId = 'foo';
    o.budgetAmount = 'foo';
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
  }
  buildCounterBudget--;
  return o;
}

void checkBudget(api.Budget o) {
  buildCounterBudget++;
  if (buildCounterBudget < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.billingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.budgetAmount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBudget--;
}

core.List<core.String> buildUnnamed2142() => [
      'foo',
      'foo',
    ];

void checkUnnamed2142(core.List<core.String> o) {
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

core.int buildCounterCreativeAdTechnologyProviders = 0;
api.CreativeAdTechnologyProviders buildCreativeAdTechnologyProviders() {
  final o = api.CreativeAdTechnologyProviders();
  buildCounterCreativeAdTechnologyProviders++;
  if (buildCounterCreativeAdTechnologyProviders < 3) {
    o.detectedProviderIds = buildUnnamed2142();
    o.hasUnidentifiedProvider = true;
  }
  buildCounterCreativeAdTechnologyProviders--;
  return o;
}

void checkCreativeAdTechnologyProviders(api.CreativeAdTechnologyProviders o) {
  buildCounterCreativeAdTechnologyProviders++;
  if (buildCounterCreativeAdTechnologyProviders < 3) {
    checkUnnamed2142(o.detectedProviderIds!);
    unittest.expect(o.hasUnidentifiedProvider!, unittest.isTrue);
  }
  buildCounterCreativeAdTechnologyProviders--;
}

core.List<core.String> buildUnnamed2143() => [
      'foo',
      'foo',
    ];

void checkUnnamed2143(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed2144() => [
      42,
      42,
    ];

void checkUnnamed2144(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.String> buildUnnamed2145() => [
      'foo',
      'foo',
    ];

void checkUnnamed2145(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2146() => [
      'foo',
      'foo',
    ];

void checkUnnamed2146(core.List<core.String> o) {
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

core.int buildCounterCreativeCorrections = 0;
api.CreativeCorrections buildCreativeCorrections() {
  final o = api.CreativeCorrections();
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    o.details = buildUnnamed2146();
    o.reason = 'foo';
  }
  buildCounterCreativeCorrections--;
  return o;
}

void checkCreativeCorrections(api.CreativeCorrections o) {
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    checkUnnamed2146(o.details!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeCorrections--;
}

core.List<api.CreativeCorrections> buildUnnamed2147() => [
      buildCreativeCorrections(),
      buildCreativeCorrections(),
    ];

void checkUnnamed2147(core.List<api.CreativeCorrections> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrections(o[0]);
  checkCreativeCorrections(o[1]);
}

core.List<core.String> buildUnnamed2148() => [
      'foo',
      'foo',
    ];

void checkUnnamed2148(core.List<core.String> o) {
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

core.int buildCounterCreativeDisapprovalReasons = 0;
api.CreativeDisapprovalReasons buildCreativeDisapprovalReasons() {
  final o = api.CreativeDisapprovalReasons();
  buildCounterCreativeDisapprovalReasons++;
  if (buildCounterCreativeDisapprovalReasons < 3) {
    o.details = buildUnnamed2148();
    o.reason = 'foo';
  }
  buildCounterCreativeDisapprovalReasons--;
  return o;
}

void checkCreativeDisapprovalReasons(api.CreativeDisapprovalReasons o) {
  buildCounterCreativeDisapprovalReasons++;
  if (buildCounterCreativeDisapprovalReasons < 3) {
    checkUnnamed2148(o.details!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeDisapprovalReasons--;
}

core.List<api.CreativeDisapprovalReasons> buildUnnamed2149() => [
      buildCreativeDisapprovalReasons(),
      buildCreativeDisapprovalReasons(),
    ];

void checkUnnamed2149(core.List<api.CreativeDisapprovalReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDisapprovalReasons(o[0]);
  checkCreativeDisapprovalReasons(o[1]);
}

core.int buildCounterCreativeFilteringReasonsReasons = 0;
api.CreativeFilteringReasonsReasons buildCreativeFilteringReasonsReasons() {
  final o = api.CreativeFilteringReasonsReasons();
  buildCounterCreativeFilteringReasonsReasons++;
  if (buildCounterCreativeFilteringReasonsReasons < 3) {
    o.filteringCount = 'foo';
    o.filteringStatus = 42;
  }
  buildCounterCreativeFilteringReasonsReasons--;
  return o;
}

void checkCreativeFilteringReasonsReasons(
    api.CreativeFilteringReasonsReasons o) {
  buildCounterCreativeFilteringReasonsReasons++;
  if (buildCounterCreativeFilteringReasonsReasons < 3) {
    unittest.expect(
      o.filteringCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filteringStatus!,
      unittest.equals(42),
    );
  }
  buildCounterCreativeFilteringReasonsReasons--;
}

core.List<api.CreativeFilteringReasonsReasons> buildUnnamed2150() => [
      buildCreativeFilteringReasonsReasons(),
      buildCreativeFilteringReasonsReasons(),
    ];

void checkUnnamed2150(core.List<api.CreativeFilteringReasonsReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFilteringReasonsReasons(o[0]);
  checkCreativeFilteringReasonsReasons(o[1]);
}

core.int buildCounterCreativeFilteringReasons = 0;
api.CreativeFilteringReasons buildCreativeFilteringReasons() {
  final o = api.CreativeFilteringReasons();
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    o.date = 'foo';
    o.reasons = buildUnnamed2150();
  }
  buildCounterCreativeFilteringReasons--;
  return o;
}

void checkCreativeFilteringReasons(api.CreativeFilteringReasons o) {
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    checkUnnamed2150(o.reasons!);
  }
  buildCounterCreativeFilteringReasons--;
}

core.List<core.String> buildUnnamed2151() => [
      'foo',
      'foo',
    ];

void checkUnnamed2151(core.List<core.String> o) {
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

core.int buildCounterCreativeNativeAdAppIcon = 0;
api.CreativeNativeAdAppIcon buildCreativeNativeAdAppIcon() {
  final o = api.CreativeNativeAdAppIcon();
  buildCounterCreativeNativeAdAppIcon++;
  if (buildCounterCreativeNativeAdAppIcon < 3) {
    o.height = 42;
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterCreativeNativeAdAppIcon--;
  return o;
}

void checkCreativeNativeAdAppIcon(api.CreativeNativeAdAppIcon o) {
  buildCounterCreativeNativeAdAppIcon++;
  if (buildCounterCreativeNativeAdAppIcon < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterCreativeNativeAdAppIcon--;
}

core.int buildCounterCreativeNativeAdImage = 0;
api.CreativeNativeAdImage buildCreativeNativeAdImage() {
  final o = api.CreativeNativeAdImage();
  buildCounterCreativeNativeAdImage++;
  if (buildCounterCreativeNativeAdImage < 3) {
    o.height = 42;
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterCreativeNativeAdImage--;
  return o;
}

void checkCreativeNativeAdImage(api.CreativeNativeAdImage o) {
  buildCounterCreativeNativeAdImage++;
  if (buildCounterCreativeNativeAdImage < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterCreativeNativeAdImage--;
}

core.List<core.String> buildUnnamed2152() => [
      'foo',
      'foo',
    ];

void checkUnnamed2152(core.List<core.String> o) {
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

core.int buildCounterCreativeNativeAdLogo = 0;
api.CreativeNativeAdLogo buildCreativeNativeAdLogo() {
  final o = api.CreativeNativeAdLogo();
  buildCounterCreativeNativeAdLogo++;
  if (buildCounterCreativeNativeAdLogo < 3) {
    o.height = 42;
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterCreativeNativeAdLogo--;
  return o;
}

void checkCreativeNativeAdLogo(api.CreativeNativeAdLogo o) {
  buildCounterCreativeNativeAdLogo++;
  if (buildCounterCreativeNativeAdLogo < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterCreativeNativeAdLogo--;
}

core.int buildCounterCreativeNativeAd = 0;
api.CreativeNativeAd buildCreativeNativeAd() {
  final o = api.CreativeNativeAd();
  buildCounterCreativeNativeAd++;
  if (buildCounterCreativeNativeAd < 3) {
    o.advertiser = 'foo';
    o.appIcon = buildCreativeNativeAdAppIcon();
    o.body = 'foo';
    o.callToAction = 'foo';
    o.clickTrackingUrl = 'foo';
    o.headline = 'foo';
    o.image = buildCreativeNativeAdImage();
    o.impressionTrackingUrl = buildUnnamed2152();
    o.logo = buildCreativeNativeAdLogo();
    o.price = 'foo';
    o.starRating = 42.0;
  }
  buildCounterCreativeNativeAd--;
  return o;
}

void checkCreativeNativeAd(api.CreativeNativeAd o) {
  buildCounterCreativeNativeAd++;
  if (buildCounterCreativeNativeAd < 3) {
    unittest.expect(
      o.advertiser!,
      unittest.equals('foo'),
    );
    checkCreativeNativeAdAppIcon(o.appIcon!);
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.callToAction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickTrackingUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headline!,
      unittest.equals('foo'),
    );
    checkCreativeNativeAdImage(o.image!);
    checkUnnamed2152(o.impressionTrackingUrl!);
    checkCreativeNativeAdLogo(o.logo!);
    unittest.expect(
      o.price!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.starRating!,
      unittest.equals(42.0),
    );
  }
  buildCounterCreativeNativeAd--;
}

core.List<core.int> buildUnnamed2153() => [
      42,
      42,
    ];

void checkUnnamed2153(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed2154() => [
      42,
      42,
    ];

void checkUnnamed2154(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed2155() => [
      42,
      42,
    ];

void checkUnnamed2155(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed2156() => [
      42,
      42,
    ];

void checkUnnamed2156(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterCreative = 0;
api.Creative buildCreative() {
  final o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.HTMLSnippet = 'foo';
    o.accountId = 42;
    o.adTechnologyProviders = buildCreativeAdTechnologyProviders();
    o.advertiserId = buildUnnamed2143();
    o.advertiserName = 'foo';
    o.agencyId = 'foo';
    o.apiUploadTimestamp = core.DateTime.parse('2002-02-27T14:01:02');
    o.attribute = buildUnnamed2144();
    o.buyerCreativeId = 'foo';
    o.clickThroughUrl = buildUnnamed2145();
    o.corrections = buildUnnamed2147();
    o.disapprovalReasons = buildUnnamed2149();
    o.filteringReasons = buildCreativeFilteringReasons();
    o.height = 42;
    o.impressionTrackingUrl = buildUnnamed2151();
    o.kind = 'foo';
    o.nativeAd = buildCreativeNativeAd();
    o.productCategories = buildUnnamed2153();
    o.restrictedCategories = buildUnnamed2154();
    o.sensitiveCategories = buildUnnamed2155();
    o.status = 'foo';
    o.vendorType = buildUnnamed2156();
    o.version = 42;
    o.videoURL = 'foo';
    o.width = 42;
  }
  buildCounterCreative--;
  return o;
}

void checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    unittest.expect(
      o.HTMLSnippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.accountId!,
      unittest.equals(42),
    );
    checkCreativeAdTechnologyProviders(o.adTechnologyProviders!);
    checkUnnamed2143(o.advertiserId!);
    unittest.expect(
      o.advertiserName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agencyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.apiUploadTimestamp!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkUnnamed2144(o.attribute!);
    unittest.expect(
      o.buyerCreativeId!,
      unittest.equals('foo'),
    );
    checkUnnamed2145(o.clickThroughUrl!);
    checkUnnamed2147(o.corrections!);
    checkUnnamed2149(o.disapprovalReasons!);
    checkCreativeFilteringReasons(o.filteringReasons!);
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkUnnamed2151(o.impressionTrackingUrl!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkCreativeNativeAd(o.nativeAd!);
    checkUnnamed2153(o.productCategories!);
    checkUnnamed2154(o.restrictedCategories!);
    checkUnnamed2155(o.sensitiveCategories!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkUnnamed2156(o.vendorType!);
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
    unittest.expect(
      o.videoURL!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterCreative--;
}

core.List<api.Creative> buildUnnamed2157() => [
      buildCreative(),
      buildCreative(),
    ];

void checkUnnamed2157(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesList = 0;
api.CreativesList buildCreativesList() {
  final o = api.CreativesList();
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    o.items = buildUnnamed2157();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativesList--;
  return o;
}

void checkCreativesList(api.CreativesList o) {
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    checkUnnamed2157(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativesList--;
}

core.int buildCounterDirectDeal = 0;
api.DirectDeal buildDirectDeal() {
  final o = api.DirectDeal();
  buildCounterDirectDeal++;
  if (buildCounterDirectDeal < 3) {
    o.accountId = 42;
    o.advertiser = 'foo';
    o.allowsAlcohol = true;
    o.buyerAccountId = 'foo';
    o.currencyCode = 'foo';
    o.dealTier = 'foo';
    o.endTime = 'foo';
    o.fixedCpm = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.privateExchangeMinCpm = 'foo';
    o.publisherBlocksOverriden = true;
    o.sellerNetwork = 'foo';
    o.startTime = 'foo';
  }
  buildCounterDirectDeal--;
  return o;
}

void checkDirectDeal(api.DirectDeal o) {
  buildCounterDirectDeal++;
  if (buildCounterDirectDeal < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.advertiser!,
      unittest.equals('foo'),
    );
    unittest.expect(o.allowsAlcohol!, unittest.isTrue);
    unittest.expect(
      o.buyerAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedCpm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateExchangeMinCpm!,
      unittest.equals('foo'),
    );
    unittest.expect(o.publisherBlocksOverriden!, unittest.isTrue);
    unittest.expect(
      o.sellerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectDeal--;
}

core.List<api.DirectDeal> buildUnnamed2158() => [
      buildDirectDeal(),
      buildDirectDeal(),
    ];

void checkUnnamed2158(core.List<api.DirectDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectDeal(o[0]);
  checkDirectDeal(o[1]);
}

core.int buildCounterDirectDealsList = 0;
api.DirectDealsList buildDirectDealsList() {
  final o = api.DirectDealsList();
  buildCounterDirectDealsList++;
  if (buildCounterDirectDealsList < 3) {
    o.directDeals = buildUnnamed2158();
    o.kind = 'foo';
  }
  buildCounterDirectDealsList--;
  return o;
}

void checkDirectDealsList(api.DirectDealsList o) {
  buildCounterDirectDealsList++;
  if (buildCounterDirectDealsList < 3) {
    checkUnnamed2158(o.directDeals!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectDealsList--;
}

core.List<core.Object> buildUnnamed2159() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed2159(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
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
  var casted2 = (o[1]) as core.Map;
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

core.List<core.Object> buildUnnamed2160() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed2160(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
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
  var casted4 = (o[1]) as core.Map;
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

core.List<core.Object> buildUnnamed2161() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed2161(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
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
  var casted6 = (o[1]) as core.Map;
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

core.List<core.Object> buildUnnamed2162() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed2162(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
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
  var casted8 = (o[1]) as core.Map;
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

core.int buildCounterPerformanceReport = 0;
api.PerformanceReport buildPerformanceReport() {
  final o = api.PerformanceReport();
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    o.bidRate = 42.0;
    o.bidRequestRate = 42.0;
    o.calloutStatusRate = buildUnnamed2159();
    o.cookieMatcherStatusRate = buildUnnamed2160();
    o.creativeStatusRate = buildUnnamed2161();
    o.filteredBidRate = 42.0;
    o.hostedMatchStatusRate = buildUnnamed2162();
    o.inventoryMatchRate = 42.0;
    o.kind = 'foo';
    o.latency50thPercentile = 42.0;
    o.latency85thPercentile = 42.0;
    o.latency95thPercentile = 42.0;
    o.noQuotaInRegion = 42.0;
    o.outOfQuota = 42.0;
    o.pixelMatchRequests = 42.0;
    o.pixelMatchResponses = 42.0;
    o.quotaConfiguredLimit = 42.0;
    o.quotaThrottledLimit = 42.0;
    o.region = 'foo';
    o.successfulRequestRate = 42.0;
    o.timestamp = 'foo';
    o.unsuccessfulRequestRate = 42.0;
  }
  buildCounterPerformanceReport--;
  return o;
}

void checkPerformanceReport(api.PerformanceReport o) {
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    unittest.expect(
      o.bidRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bidRequestRate!,
      unittest.equals(42.0),
    );
    checkUnnamed2159(o.calloutStatusRate!);
    checkUnnamed2160(o.cookieMatcherStatusRate!);
    checkUnnamed2161(o.creativeStatusRate!);
    unittest.expect(
      o.filteredBidRate!,
      unittest.equals(42.0),
    );
    checkUnnamed2162(o.hostedMatchStatusRate!);
    unittest.expect(
      o.inventoryMatchRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latency50thPercentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.latency85thPercentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.latency95thPercentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.noQuotaInRegion!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.outOfQuota!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pixelMatchRequests!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pixelMatchResponses!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quotaConfiguredLimit!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quotaThrottledLimit!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.successfulRequestRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unsuccessfulRequestRate!,
      unittest.equals(42.0),
    );
  }
  buildCounterPerformanceReport--;
}

core.List<api.PerformanceReport> buildUnnamed2163() => [
      buildPerformanceReport(),
      buildPerformanceReport(),
    ];

void checkUnnamed2163(core.List<api.PerformanceReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerformanceReport(o[0]);
  checkPerformanceReport(o[1]);
}

core.int buildCounterPerformanceReportList = 0;
api.PerformanceReportList buildPerformanceReportList() {
  final o = api.PerformanceReportList();
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    o.kind = 'foo';
    o.performanceReport = buildUnnamed2163();
  }
  buildCounterPerformanceReportList--;
  return o;
}

void checkPerformanceReportList(api.PerformanceReportList o) {
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2163(o.performanceReport!);
  }
  buildCounterPerformanceReportList--;
}

core.List<core.String> buildUnnamed2164() => [
      'foo',
      'foo',
    ];

void checkUnnamed2164(core.List<core.String> o) {
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

core.int buildCounterPretargetingConfigDimensions = 0;
api.PretargetingConfigDimensions buildPretargetingConfigDimensions() {
  final o = api.PretargetingConfigDimensions();
  buildCounterPretargetingConfigDimensions++;
  if (buildCounterPretargetingConfigDimensions < 3) {
    o.height = 'foo';
    o.width = 'foo';
  }
  buildCounterPretargetingConfigDimensions--;
  return o;
}

void checkPretargetingConfigDimensions(api.PretargetingConfigDimensions o) {
  buildCounterPretargetingConfigDimensions++;
  if (buildCounterPretargetingConfigDimensions < 3) {
    unittest.expect(
      o.height!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals('foo'),
    );
  }
  buildCounterPretargetingConfigDimensions--;
}

core.List<api.PretargetingConfigDimensions> buildUnnamed2165() => [
      buildPretargetingConfigDimensions(),
      buildPretargetingConfigDimensions(),
    ];

void checkUnnamed2165(core.List<api.PretargetingConfigDimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigDimensions(o[0]);
  checkPretargetingConfigDimensions(o[1]);
}

core.List<core.String> buildUnnamed2166() => [
      'foo',
      'foo',
    ];

void checkUnnamed2166(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2167() => [
      'foo',
      'foo',
    ];

void checkUnnamed2167(core.List<core.String> o) {
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

core.int buildCounterPretargetingConfigExcludedPlacements = 0;
api.PretargetingConfigExcludedPlacements
    buildPretargetingConfigExcludedPlacements() {
  final o = api.PretargetingConfigExcludedPlacements();
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    o.token = 'foo';
    o.type = 'foo';
  }
  buildCounterPretargetingConfigExcludedPlacements--;
  return o;
}

void checkPretargetingConfigExcludedPlacements(
    api.PretargetingConfigExcludedPlacements o) {
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPretargetingConfigExcludedPlacements--;
}

core.List<api.PretargetingConfigExcludedPlacements> buildUnnamed2168() => [
      buildPretargetingConfigExcludedPlacements(),
      buildPretargetingConfigExcludedPlacements(),
    ];

void checkUnnamed2168(core.List<api.PretargetingConfigExcludedPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigExcludedPlacements(o[0]);
  checkPretargetingConfigExcludedPlacements(o[1]);
}

core.List<core.String> buildUnnamed2169() => [
      'foo',
      'foo',
    ];

void checkUnnamed2169(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2170() => [
      'foo',
      'foo',
    ];

void checkUnnamed2170(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2171() => [
      'foo',
      'foo',
    ];

void checkUnnamed2171(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2172() => [
      'foo',
      'foo',
    ];

void checkUnnamed2172(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2173() => [
      'foo',
      'foo',
    ];

void checkUnnamed2173(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2174() => [
      'foo',
      'foo',
    ];

void checkUnnamed2174(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2175() => [
      'foo',
      'foo',
    ];

void checkUnnamed2175(core.List<core.String> o) {
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

core.int buildCounterPretargetingConfigPlacements = 0;
api.PretargetingConfigPlacements buildPretargetingConfigPlacements() {
  final o = api.PretargetingConfigPlacements();
  buildCounterPretargetingConfigPlacements++;
  if (buildCounterPretargetingConfigPlacements < 3) {
    o.token = 'foo';
    o.type = 'foo';
  }
  buildCounterPretargetingConfigPlacements--;
  return o;
}

void checkPretargetingConfigPlacements(api.PretargetingConfigPlacements o) {
  buildCounterPretargetingConfigPlacements++;
  if (buildCounterPretargetingConfigPlacements < 3) {
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPretargetingConfigPlacements--;
}

core.List<api.PretargetingConfigPlacements> buildUnnamed2176() => [
      buildPretargetingConfigPlacements(),
      buildPretargetingConfigPlacements(),
    ];

void checkUnnamed2176(core.List<api.PretargetingConfigPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigPlacements(o[0]);
  checkPretargetingConfigPlacements(o[1]);
}

core.List<core.String> buildUnnamed2177() => [
      'foo',
      'foo',
    ];

void checkUnnamed2177(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2178() => [
      'foo',
      'foo',
    ];

void checkUnnamed2178(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2179() => [
      'foo',
      'foo',
    ];

void checkUnnamed2179(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2180() => [
      'foo',
      'foo',
    ];

void checkUnnamed2180(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2181() => [
      'foo',
      'foo',
    ];

void checkUnnamed2181(core.List<core.String> o) {
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

core.int buildCounterPretargetingConfig = 0;
api.PretargetingConfig buildPretargetingConfig() {
  final o = api.PretargetingConfig();
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    o.billingId = 'foo';
    o.configId = 'foo';
    o.configName = 'foo';
    o.creativeType = buildUnnamed2164();
    o.dimensions = buildUnnamed2165();
    o.excludedContentLabels = buildUnnamed2166();
    o.excludedGeoCriteriaIds = buildUnnamed2167();
    o.excludedPlacements = buildUnnamed2168();
    o.excludedUserLists = buildUnnamed2169();
    o.excludedVerticals = buildUnnamed2170();
    o.geoCriteriaIds = buildUnnamed2171();
    o.isActive = true;
    o.kind = 'foo';
    o.languages = buildUnnamed2172();
    o.maximumQps = 'foo';
    o.mobileCarriers = buildUnnamed2173();
    o.mobileDevices = buildUnnamed2174();
    o.mobileOperatingSystemVersions = buildUnnamed2175();
    o.placements = buildUnnamed2176();
    o.platforms = buildUnnamed2177();
    o.supportedCreativeAttributes = buildUnnamed2178();
    o.userLists = buildUnnamed2179();
    o.vendorTypes = buildUnnamed2180();
    o.verticals = buildUnnamed2181();
  }
  buildCounterPretargetingConfig--;
  return o;
}

void checkPretargetingConfig(api.PretargetingConfig o) {
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    unittest.expect(
      o.billingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configName!,
      unittest.equals('foo'),
    );
    checkUnnamed2164(o.creativeType!);
    checkUnnamed2165(o.dimensions!);
    checkUnnamed2166(o.excludedContentLabels!);
    checkUnnamed2167(o.excludedGeoCriteriaIds!);
    checkUnnamed2168(o.excludedPlacements!);
    checkUnnamed2169(o.excludedUserLists!);
    checkUnnamed2170(o.excludedVerticals!);
    checkUnnamed2171(o.geoCriteriaIds!);
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2172(o.languages!);
    unittest.expect(
      o.maximumQps!,
      unittest.equals('foo'),
    );
    checkUnnamed2173(o.mobileCarriers!);
    checkUnnamed2174(o.mobileDevices!);
    checkUnnamed2175(o.mobileOperatingSystemVersions!);
    checkUnnamed2176(o.placements!);
    checkUnnamed2177(o.platforms!);
    checkUnnamed2178(o.supportedCreativeAttributes!);
    checkUnnamed2179(o.userLists!);
    checkUnnamed2180(o.vendorTypes!);
    checkUnnamed2181(o.verticals!);
  }
  buildCounterPretargetingConfig--;
}

core.List<api.PretargetingConfig> buildUnnamed2182() => [
      buildPretargetingConfig(),
      buildPretargetingConfig(),
    ];

void checkUnnamed2182(core.List<api.PretargetingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfig(o[0]);
  checkPretargetingConfig(o[1]);
}

core.int buildCounterPretargetingConfigList = 0;
api.PretargetingConfigList buildPretargetingConfigList() {
  final o = api.PretargetingConfigList();
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    o.items = buildUnnamed2182();
    o.kind = 'foo';
  }
  buildCounterPretargetingConfigList--;
  return o;
}

void checkPretargetingConfigList(api.PretargetingConfigList o) {
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    checkUnnamed2182(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPretargetingConfigList--;
}

core.List<core.int> buildUnnamed2183() => [
      42,
      42,
    ];

void checkUnnamed2183(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.String> buildUnnamed2184() => [
      'foo',
      'foo',
    ];

void checkUnnamed2184(core.List<core.String> o) {
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
  unittest.group('obj-schema-AccountBidderLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountBidderLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountBidderLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountBidderLocation(od);
    });
  });

  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountsList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsList(od);
    });
  });

  unittest.group('obj-schema-BillingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingInfo(od);
    });
  });

  unittest.group('obj-schema-BillingInfoList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingInfoList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingInfoList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingInfoList(od);
    });
  });

  unittest.group('obj-schema-Budget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBudget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Budget.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBudget(od);
    });
  });

  unittest.group('obj-schema-CreativeAdTechnologyProviders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAdTechnologyProviders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAdTechnologyProviders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeAdTechnologyProviders(od);
    });
  });

  unittest.group('obj-schema-CreativeCorrections', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeCorrections();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeCorrections.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeCorrections(od);
    });
  });

  unittest.group('obj-schema-CreativeDisapprovalReasons', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeDisapprovalReasons();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeDisapprovalReasons.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeDisapprovalReasons(od);
    });
  });

  unittest.group('obj-schema-CreativeFilteringReasonsReasons', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeFilteringReasonsReasons();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeFilteringReasonsReasons.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeFilteringReasonsReasons(od);
    });
  });

  unittest.group('obj-schema-CreativeFilteringReasons', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeFilteringReasons();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeFilteringReasons.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeFilteringReasons(od);
    });
  });

  unittest.group('obj-schema-CreativeNativeAdAppIcon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeNativeAdAppIcon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeNativeAdAppIcon.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeNativeAdAppIcon(od);
    });
  });

  unittest.group('obj-schema-CreativeNativeAdImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeNativeAdImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeNativeAdImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeNativeAdImage(od);
    });
  });

  unittest.group('obj-schema-CreativeNativeAdLogo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeNativeAdLogo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeNativeAdLogo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeNativeAdLogo(od);
    });
  });

  unittest.group('obj-schema-CreativeNativeAd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeNativeAd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeNativeAd.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeNativeAd(od);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Creative.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCreative(od);
    });
  });

  unittest.group('obj-schema-CreativesList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativesList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativesList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativesList(od);
    });
  });

  unittest.group('obj-schema-DirectDeal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectDeal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DirectDeal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDirectDeal(od);
    });
  });

  unittest.group('obj-schema-DirectDealsList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectDealsList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectDealsList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectDealsList(od);
    });
  });

  unittest.group('obj-schema-PerformanceReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformanceReport(od);
    });
  });

  unittest.group('obj-schema-PerformanceReportList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceReportList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceReportList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformanceReportList(od);
    });
  });

  unittest.group('obj-schema-PretargetingConfigDimensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPretargetingConfigDimensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PretargetingConfigDimensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPretargetingConfigDimensions(od);
    });
  });

  unittest.group('obj-schema-PretargetingConfigExcludedPlacements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPretargetingConfigExcludedPlacements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PretargetingConfigExcludedPlacements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPretargetingConfigExcludedPlacements(od);
    });
  });

  unittest.group('obj-schema-PretargetingConfigPlacements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPretargetingConfigPlacements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PretargetingConfigPlacements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPretargetingConfigPlacements(od);
    });
  });

  unittest.group('obj-schema-PretargetingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPretargetingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PretargetingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPretargetingConfig(od);
    });
  });

  unittest.group('obj-schema-PretargetingConfigList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPretargetingConfigList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PretargetingConfigList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPretargetingConfigList(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).accounts;
      final arg_id = 42;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_id, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).accounts;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('accounts'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildAccountsList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkAccountsList(response as api.AccountsList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_id = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_id, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_id = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_id, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });
  });

  unittest.group('resource-BillingInfoResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).billingInfo;
      final arg_accountId = 42;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('billinginfo/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );

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
        final resp = convert.json.encode(buildBillingInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, $fields: arg_$fields);
      checkBillingInfo(response as api.BillingInfo);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).billingInfo;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('billinginfo'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildBillingInfoList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkBillingInfoList(response as api.BillingInfoList);
    });
  });

  unittest.group('resource-BudgetResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).budget;
      final arg_accountId = 'foo';
      final arg_billingId = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('billinginfo/'),
        );
        pathOffset += 12;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_billingId'),
        );

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
        final resp = convert.json.encode(buildBudget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_billingId, $fields: arg_$fields);
      checkBudget(response as api.Budget);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).budget;
      final arg_request = buildBudget();
      final arg_accountId = 'foo';
      final arg_billingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Budget.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBudget(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('billinginfo/'),
        );
        pathOffset += 12;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_billingId'),
        );

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
        final resp = convert.json.encode(buildBudget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_billingId,
          $fields: arg_$fields);
      checkBudget(response as api.Budget);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).budget;
      final arg_request = buildBudget();
      final arg_accountId = 'foo';
      final arg_billingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Budget.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBudget(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('billinginfo/'),
        );
        pathOffset += 12;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_billingId'),
        );

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
        final resp = convert.json.encode(buildBudget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_billingId,
          $fields: arg_$fields);
      checkBudget(response as api.Budget);
    });
  });

  unittest.group('resource-CreativesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).creatives;
      final arg_accountId = 42;
      final arg_buyerCreativeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('creatives/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buyerCreativeId'),
        );

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
        final resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_buyerCreativeId,
          $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).creatives;
      final arg_request = buildCreative();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCreative(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('creatives'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).creatives;
      final arg_accountId = buildUnnamed2183();
      final arg_buyerCreativeId = buildUnnamed2184();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_statusFilter = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('creatives'),
        );
        pathOffset += 9;

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
          queryMap['accountId']!.map(core.int.parse).toList(),
          unittest.equals(arg_accountId),
        );
        unittest.expect(
          queryMap['buyerCreativeId']!,
          unittest.equals(arg_buyerCreativeId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['statusFilter']!.first,
          unittest.equals(arg_statusFilter),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreativesList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          accountId: arg_accountId,
          buyerCreativeId: arg_buyerCreativeId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          statusFilter: arg_statusFilter,
          $fields: arg_$fields);
      checkCreativesList(response as api.CreativesList);
    });
  });

  unittest.group('resource-DirectDealsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).directDeals;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('directdeals/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

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
        final resp = convert.json.encode(buildDirectDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_id, $fields: arg_$fields);
      checkDirectDeal(response as api.DirectDeal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).directDeals;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('directdeals'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildDirectDealsList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkDirectDealsList(response as api.DirectDealsList);
    });
  });

  unittest.group('resource-PerformanceReportResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).performanceReport;
      final arg_accountId = 'foo';
      final arg_endDateTime = 'foo';
      final arg_startDateTime = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('performancereport'),
        );
        pathOffset += 17;

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
          queryMap['accountId']!.first,
          unittest.equals(arg_accountId),
        );
        unittest.expect(
          queryMap['endDateTime']!.first,
          unittest.equals(arg_endDateTime),
        );
        unittest.expect(
          queryMap['startDateTime']!.first,
          unittest.equals(arg_startDateTime),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildPerformanceReportList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_endDateTime, arg_startDateTime,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkPerformanceReportList(response as api.PerformanceReportList);
    });
  });

  unittest.group('resource-PretargetingConfigResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pretargetingConfig;
      final arg_accountId = 'foo';
      final arg_configId = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('pretargetingconfigs/'),
        );
        pathOffset += 20;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_configId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_configId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pretargetingConfig;
      final arg_accountId = 'foo';
      final arg_configId = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('pretargetingconfigs/'),
        );
        pathOffset += 20;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_configId'),
        );

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
        final resp = convert.json.encode(buildPretargetingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_configId, $fields: arg_$fields);
      checkPretargetingConfig(response as api.PretargetingConfig);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pretargetingConfig;
      final arg_request = buildPretargetingConfig();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PretargetingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPretargetingConfig(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('pretargetingconfigs/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );

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
        final resp = convert.json.encode(buildPretargetingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_accountId, $fields: arg_$fields);
      checkPretargetingConfig(response as api.PretargetingConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pretargetingConfig;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('pretargetingconfigs/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );

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
        final resp = convert.json.encode(buildPretargetingConfigList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, $fields: arg_$fields);
      checkPretargetingConfigList(response as api.PretargetingConfigList);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pretargetingConfig;
      final arg_request = buildPretargetingConfig();
      final arg_accountId = 'foo';
      final arg_configId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PretargetingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPretargetingConfig(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('pretargetingconfigs/'),
        );
        pathOffset += 20;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_configId'),
        );

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
        final resp = convert.json.encode(buildPretargetingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId, arg_configId,
          $fields: arg_$fields);
      checkPretargetingConfig(response as api.PretargetingConfig);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pretargetingConfig;
      final arg_request = buildPretargetingConfig();
      final arg_accountId = 'foo';
      final arg_configId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PretargetingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPretargetingConfig(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('adexchangebuyer/v1.3/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('pretargetingconfigs/'),
        );
        pathOffset += 20;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_configId'),
        );

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
        final resp = convert.json.encode(buildPretargetingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_configId,
          $fields: arg_$fields);
      checkPretargetingConfig(response as api.PretargetingConfig);
    });
  });
}
