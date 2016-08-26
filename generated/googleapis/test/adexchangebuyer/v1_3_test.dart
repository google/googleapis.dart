library googleapis.adexchangebuyer.v1_3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/adexchangebuyer/v1_3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccountBidderLocation = 0;
buildAccountBidderLocation() {
  var o = new api.AccountBidderLocation();
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    o.maximumQps = 42;
    o.region = "foo";
    o.url = "foo";
  }
  buildCounterAccountBidderLocation--;
  return o;
}

checkAccountBidderLocation(api.AccountBidderLocation o) {
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    unittest.expect(o.maximumQps, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAccountBidderLocation--;
}

buildUnnamed1038() {
  var o = new core.List<api.AccountBidderLocation>();
  o.add(buildAccountBidderLocation());
  o.add(buildAccountBidderLocation());
  return o;
}

checkUnnamed1038(core.List<api.AccountBidderLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountBidderLocation(o[0]);
  checkAccountBidderLocation(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.bidderLocation = buildUnnamed1038();
    o.cookieMatchingNid = "foo";
    o.cookieMatchingUrl = "foo";
    o.id = 42;
    o.kind = "foo";
    o.maximumActiveCreatives = 42;
    o.maximumTotalQps = 42;
    o.numberActiveCreatives = 42;
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed1038(o.bidderLocation);
    unittest.expect(o.cookieMatchingNid, unittest.equals('foo'));
    unittest.expect(o.cookieMatchingUrl, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maximumActiveCreatives, unittest.equals(42));
    unittest.expect(o.maximumTotalQps, unittest.equals(42));
    unittest.expect(o.numberActiveCreatives, unittest.equals(42));
  }
  buildCounterAccount--;
}

buildUnnamed1039() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed1039(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsList = 0;
buildAccountsList() {
  var o = new api.AccountsList();
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    o.items = buildUnnamed1039();
    o.kind = "foo";
  }
  buildCounterAccountsList--;
  return o;
}

checkAccountsList(api.AccountsList o) {
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    checkUnnamed1039(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsList--;
}

buildUnnamed1040() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1040(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBillingInfo = 0;
buildBillingInfo() {
  var o = new api.BillingInfo();
  buildCounterBillingInfo++;
  if (buildCounterBillingInfo < 3) {
    o.accountId = 42;
    o.accountName = "foo";
    o.billingId = buildUnnamed1040();
    o.kind = "foo";
  }
  buildCounterBillingInfo--;
  return o;
}

checkBillingInfo(api.BillingInfo o) {
  buildCounterBillingInfo++;
  if (buildCounterBillingInfo < 3) {
    unittest.expect(o.accountId, unittest.equals(42));
    unittest.expect(o.accountName, unittest.equals('foo'));
    checkUnnamed1040(o.billingId);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfo--;
}

buildUnnamed1041() {
  var o = new core.List<api.BillingInfo>();
  o.add(buildBillingInfo());
  o.add(buildBillingInfo());
  return o;
}

checkUnnamed1041(core.List<api.BillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingInfo(o[0]);
  checkBillingInfo(o[1]);
}

core.int buildCounterBillingInfoList = 0;
buildBillingInfoList() {
  var o = new api.BillingInfoList();
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    o.items = buildUnnamed1041();
    o.kind = "foo";
  }
  buildCounterBillingInfoList--;
  return o;
}

checkBillingInfoList(api.BillingInfoList o) {
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    checkUnnamed1041(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfoList--;
}

core.int buildCounterBudget = 0;
buildBudget() {
  var o = new api.Budget();
  buildCounterBudget++;
  if (buildCounterBudget < 3) {
    o.accountId = "foo";
    o.billingId = "foo";
    o.budgetAmount = "foo";
    o.currencyCode = "foo";
    o.id = "foo";
    o.kind = "foo";
  }
  buildCounterBudget--;
  return o;
}

checkBudget(api.Budget o) {
  buildCounterBudget++;
  if (buildCounterBudget < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.billingId, unittest.equals('foo'));
    unittest.expect(o.budgetAmount, unittest.equals('foo'));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBudget--;
}

buildUnnamed1042() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1042(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1043() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1043(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1044() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1044(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1045() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1045(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeCorrections = 0;
buildCreativeCorrections() {
  var o = new api.CreativeCorrections();
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    o.details = buildUnnamed1045();
    o.reason = "foo";
  }
  buildCounterCreativeCorrections--;
  return o;
}

checkCreativeCorrections(api.CreativeCorrections o) {
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    checkUnnamed1045(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeCorrections--;
}

buildUnnamed1046() {
  var o = new core.List<api.CreativeCorrections>();
  o.add(buildCreativeCorrections());
  o.add(buildCreativeCorrections());
  return o;
}

checkUnnamed1046(core.List<api.CreativeCorrections> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrections(o[0]);
  checkCreativeCorrections(o[1]);
}

buildUnnamed1047() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1047(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeDisapprovalReasons = 0;
buildCreativeDisapprovalReasons() {
  var o = new api.CreativeDisapprovalReasons();
  buildCounterCreativeDisapprovalReasons++;
  if (buildCounterCreativeDisapprovalReasons < 3) {
    o.details = buildUnnamed1047();
    o.reason = "foo";
  }
  buildCounterCreativeDisapprovalReasons--;
  return o;
}

checkCreativeDisapprovalReasons(api.CreativeDisapprovalReasons o) {
  buildCounterCreativeDisapprovalReasons++;
  if (buildCounterCreativeDisapprovalReasons < 3) {
    checkUnnamed1047(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeDisapprovalReasons--;
}

buildUnnamed1048() {
  var o = new core.List<api.CreativeDisapprovalReasons>();
  o.add(buildCreativeDisapprovalReasons());
  o.add(buildCreativeDisapprovalReasons());
  return o;
}

checkUnnamed1048(core.List<api.CreativeDisapprovalReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDisapprovalReasons(o[0]);
  checkCreativeDisapprovalReasons(o[1]);
}

core.int buildCounterCreativeFilteringReasonsReasons = 0;
buildCreativeFilteringReasonsReasons() {
  var o = new api.CreativeFilteringReasonsReasons();
  buildCounterCreativeFilteringReasonsReasons++;
  if (buildCounterCreativeFilteringReasonsReasons < 3) {
    o.filteringCount = "foo";
    o.filteringStatus = 42;
  }
  buildCounterCreativeFilteringReasonsReasons--;
  return o;
}

checkCreativeFilteringReasonsReasons(api.CreativeFilteringReasonsReasons o) {
  buildCounterCreativeFilteringReasonsReasons++;
  if (buildCounterCreativeFilteringReasonsReasons < 3) {
    unittest.expect(o.filteringCount, unittest.equals('foo'));
    unittest.expect(o.filteringStatus, unittest.equals(42));
  }
  buildCounterCreativeFilteringReasonsReasons--;
}

buildUnnamed1049() {
  var o = new core.List<api.CreativeFilteringReasonsReasons>();
  o.add(buildCreativeFilteringReasonsReasons());
  o.add(buildCreativeFilteringReasonsReasons());
  return o;
}

checkUnnamed1049(core.List<api.CreativeFilteringReasonsReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFilteringReasonsReasons(o[0]);
  checkCreativeFilteringReasonsReasons(o[1]);
}

core.int buildCounterCreativeFilteringReasons = 0;
buildCreativeFilteringReasons() {
  var o = new api.CreativeFilteringReasons();
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    o.date = "foo";
    o.reasons = buildUnnamed1049();
  }
  buildCounterCreativeFilteringReasons--;
  return o;
}

checkCreativeFilteringReasons(api.CreativeFilteringReasons o) {
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    unittest.expect(o.date, unittest.equals('foo'));
    checkUnnamed1049(o.reasons);
  }
  buildCounterCreativeFilteringReasons--;
}

buildUnnamed1050() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1050(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeNativeAdAppIcon = 0;
buildCreativeNativeAdAppIcon() {
  var o = new api.CreativeNativeAdAppIcon();
  buildCounterCreativeNativeAdAppIcon++;
  if (buildCounterCreativeNativeAdAppIcon < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterCreativeNativeAdAppIcon--;
  return o;
}

checkCreativeNativeAdAppIcon(api.CreativeNativeAdAppIcon o) {
  buildCounterCreativeNativeAdAppIcon++;
  if (buildCounterCreativeNativeAdAppIcon < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreativeNativeAdAppIcon--;
}

core.int buildCounterCreativeNativeAdImage = 0;
buildCreativeNativeAdImage() {
  var o = new api.CreativeNativeAdImage();
  buildCounterCreativeNativeAdImage++;
  if (buildCounterCreativeNativeAdImage < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterCreativeNativeAdImage--;
  return o;
}

checkCreativeNativeAdImage(api.CreativeNativeAdImage o) {
  buildCounterCreativeNativeAdImage++;
  if (buildCounterCreativeNativeAdImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreativeNativeAdImage--;
}

buildUnnamed1051() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1051(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeNativeAdLogo = 0;
buildCreativeNativeAdLogo() {
  var o = new api.CreativeNativeAdLogo();
  buildCounterCreativeNativeAdLogo++;
  if (buildCounterCreativeNativeAdLogo < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterCreativeNativeAdLogo--;
  return o;
}

checkCreativeNativeAdLogo(api.CreativeNativeAdLogo o) {
  buildCounterCreativeNativeAdLogo++;
  if (buildCounterCreativeNativeAdLogo < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreativeNativeAdLogo--;
}

core.int buildCounterCreativeNativeAd = 0;
buildCreativeNativeAd() {
  var o = new api.CreativeNativeAd();
  buildCounterCreativeNativeAd++;
  if (buildCounterCreativeNativeAd < 3) {
    o.advertiser = "foo";
    o.appIcon = buildCreativeNativeAdAppIcon();
    o.body = "foo";
    o.callToAction = "foo";
    o.clickTrackingUrl = "foo";
    o.headline = "foo";
    o.image = buildCreativeNativeAdImage();
    o.impressionTrackingUrl = buildUnnamed1051();
    o.logo = buildCreativeNativeAdLogo();
    o.price = "foo";
    o.starRating = 42.0;
    o.store = "foo";
  }
  buildCounterCreativeNativeAd--;
  return o;
}

checkCreativeNativeAd(api.CreativeNativeAd o) {
  buildCounterCreativeNativeAd++;
  if (buildCounterCreativeNativeAd < 3) {
    unittest.expect(o.advertiser, unittest.equals('foo'));
    checkCreativeNativeAdAppIcon(o.appIcon);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.callToAction, unittest.equals('foo'));
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.headline, unittest.equals('foo'));
    checkCreativeNativeAdImage(o.image);
    checkUnnamed1051(o.impressionTrackingUrl);
    checkCreativeNativeAdLogo(o.logo);
    unittest.expect(o.price, unittest.equals('foo'));
    unittest.expect(o.starRating, unittest.equals(42.0));
    unittest.expect(o.store, unittest.equals('foo'));
  }
  buildCounterCreativeNativeAd--;
}

buildUnnamed1052() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1052(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1053() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1053(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1054() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1054(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1055() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1055(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCreative = 0;
buildCreative() {
  var o = new api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.HTMLSnippet = "foo";
    o.accountId = 42;
    o.advertiserId = buildUnnamed1042();
    o.advertiserName = "foo";
    o.agencyId = "foo";
    o.apiUploadTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.attribute = buildUnnamed1043();
    o.buyerCreativeId = "foo";
    o.clickThroughUrl = buildUnnamed1044();
    o.corrections = buildUnnamed1046();
    o.disapprovalReasons = buildUnnamed1048();
    o.filteringReasons = buildCreativeFilteringReasons();
    o.height = 42;
    o.impressionTrackingUrl = buildUnnamed1050();
    o.kind = "foo";
    o.nativeAd = buildCreativeNativeAd();
    o.productCategories = buildUnnamed1052();
    o.restrictedCategories = buildUnnamed1053();
    o.sensitiveCategories = buildUnnamed1054();
    o.status = "foo";
    o.vendorType = buildUnnamed1055();
    o.version = 42;
    o.videoURL = "foo";
    o.width = 42;
  }
  buildCounterCreative--;
  return o;
}

checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    unittest.expect(o.HTMLSnippet, unittest.equals('foo'));
    unittest.expect(o.accountId, unittest.equals(42));
    checkUnnamed1042(o.advertiserId);
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    unittest.expect(o.agencyId, unittest.equals('foo'));
    unittest.expect(o.apiUploadTimestamp, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1043(o.attribute);
    unittest.expect(o.buyerCreativeId, unittest.equals('foo'));
    checkUnnamed1044(o.clickThroughUrl);
    checkUnnamed1046(o.corrections);
    checkUnnamed1048(o.disapprovalReasons);
    checkCreativeFilteringReasons(o.filteringReasons);
    unittest.expect(o.height, unittest.equals(42));
    checkUnnamed1050(o.impressionTrackingUrl);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCreativeNativeAd(o.nativeAd);
    checkUnnamed1052(o.productCategories);
    checkUnnamed1053(o.restrictedCategories);
    checkUnnamed1054(o.sensitiveCategories);
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed1055(o.vendorType);
    unittest.expect(o.version, unittest.equals(42));
    unittest.expect(o.videoURL, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreative--;
}

buildUnnamed1056() {
  var o = new core.List<api.Creative>();
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

checkUnnamed1056(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesList = 0;
buildCreativesList() {
  var o = new api.CreativesList();
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    o.items = buildUnnamed1056();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCreativesList--;
  return o;
}

checkCreativesList(api.CreativesList o) {
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    checkUnnamed1056(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativesList--;
}

core.int buildCounterDirectDeal = 0;
buildDirectDeal() {
  var o = new api.DirectDeal();
  buildCounterDirectDeal++;
  if (buildCounterDirectDeal < 3) {
    o.accountId = 42;
    o.advertiser = "foo";
    o.allowsAlcohol = true;
    o.buyerAccountId = "foo";
    o.currencyCode = "foo";
    o.dealTier = "foo";
    o.endTime = "foo";
    o.fixedCpm = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.privateExchangeMinCpm = "foo";
    o.publisherBlocksOverriden = true;
    o.sellerNetwork = "foo";
    o.startTime = "foo";
  }
  buildCounterDirectDeal--;
  return o;
}

checkDirectDeal(api.DirectDeal o) {
  buildCounterDirectDeal++;
  if (buildCounterDirectDeal < 3) {
    unittest.expect(o.accountId, unittest.equals(42));
    unittest.expect(o.advertiser, unittest.equals('foo'));
    unittest.expect(o.allowsAlcohol, unittest.isTrue);
    unittest.expect(o.buyerAccountId, unittest.equals('foo'));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.dealTier, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.fixedCpm, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.privateExchangeMinCpm, unittest.equals('foo'));
    unittest.expect(o.publisherBlocksOverriden, unittest.isTrue);
    unittest.expect(o.sellerNetwork, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterDirectDeal--;
}

buildUnnamed1057() {
  var o = new core.List<api.DirectDeal>();
  o.add(buildDirectDeal());
  o.add(buildDirectDeal());
  return o;
}

checkUnnamed1057(core.List<api.DirectDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectDeal(o[0]);
  checkDirectDeal(o[1]);
}

core.int buildCounterDirectDealsList = 0;
buildDirectDealsList() {
  var o = new api.DirectDealsList();
  buildCounterDirectDealsList++;
  if (buildCounterDirectDealsList < 3) {
    o.directDeals = buildUnnamed1057();
    o.kind = "foo";
  }
  buildCounterDirectDealsList--;
  return o;
}

checkDirectDealsList(api.DirectDealsList o) {
  buildCounterDirectDealsList++;
  if (buildCounterDirectDealsList < 3) {
    checkUnnamed1057(o.directDeals);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDirectDealsList--;
}

buildUnnamed1058() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed1058(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o[1]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed1059() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed1059(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o[1]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

buildUnnamed1060() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed1060(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o[1]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed1061() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed1061(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
  var casted8 = (o[1]) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
}

core.int buildCounterPerformanceReport = 0;
buildPerformanceReport() {
  var o = new api.PerformanceReport();
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    o.bidRate = 42.0;
    o.bidRequestRate = 42.0;
    o.calloutStatusRate = buildUnnamed1058();
    o.cookieMatcherStatusRate = buildUnnamed1059();
    o.creativeStatusRate = buildUnnamed1060();
    o.filteredBidRate = 42.0;
    o.hostedMatchStatusRate = buildUnnamed1061();
    o.inventoryMatchRate = 42.0;
    o.kind = "foo";
    o.latency50thPercentile = 42.0;
    o.latency85thPercentile = 42.0;
    o.latency95thPercentile = 42.0;
    o.noQuotaInRegion = 42.0;
    o.outOfQuota = 42.0;
    o.pixelMatchRequests = 42.0;
    o.pixelMatchResponses = 42.0;
    o.quotaConfiguredLimit = 42.0;
    o.quotaThrottledLimit = 42.0;
    o.region = "foo";
    o.successfulRequestRate = 42.0;
    o.timestamp = "foo";
    o.unsuccessfulRequestRate = 42.0;
  }
  buildCounterPerformanceReport--;
  return o;
}

checkPerformanceReport(api.PerformanceReport o) {
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    unittest.expect(o.bidRate, unittest.equals(42.0));
    unittest.expect(o.bidRequestRate, unittest.equals(42.0));
    checkUnnamed1058(o.calloutStatusRate);
    checkUnnamed1059(o.cookieMatcherStatusRate);
    checkUnnamed1060(o.creativeStatusRate);
    unittest.expect(o.filteredBidRate, unittest.equals(42.0));
    checkUnnamed1061(o.hostedMatchStatusRate);
    unittest.expect(o.inventoryMatchRate, unittest.equals(42.0));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.latency50thPercentile, unittest.equals(42.0));
    unittest.expect(o.latency85thPercentile, unittest.equals(42.0));
    unittest.expect(o.latency95thPercentile, unittest.equals(42.0));
    unittest.expect(o.noQuotaInRegion, unittest.equals(42.0));
    unittest.expect(o.outOfQuota, unittest.equals(42.0));
    unittest.expect(o.pixelMatchRequests, unittest.equals(42.0));
    unittest.expect(o.pixelMatchResponses, unittest.equals(42.0));
    unittest.expect(o.quotaConfiguredLimit, unittest.equals(42.0));
    unittest.expect(o.quotaThrottledLimit, unittest.equals(42.0));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.successfulRequestRate, unittest.equals(42.0));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.unsuccessfulRequestRate, unittest.equals(42.0));
  }
  buildCounterPerformanceReport--;
}

buildUnnamed1062() {
  var o = new core.List<api.PerformanceReport>();
  o.add(buildPerformanceReport());
  o.add(buildPerformanceReport());
  return o;
}

checkUnnamed1062(core.List<api.PerformanceReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerformanceReport(o[0]);
  checkPerformanceReport(o[1]);
}

core.int buildCounterPerformanceReportList = 0;
buildPerformanceReportList() {
  var o = new api.PerformanceReportList();
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    o.kind = "foo";
    o.performanceReport = buildUnnamed1062();
  }
  buildCounterPerformanceReportList--;
  return o;
}

checkPerformanceReportList(api.PerformanceReportList o) {
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1062(o.performanceReport);
  }
  buildCounterPerformanceReportList--;
}

buildUnnamed1063() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1063(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigDimensions = 0;
buildPretargetingConfigDimensions() {
  var o = new api.PretargetingConfigDimensions();
  buildCounterPretargetingConfigDimensions++;
  if (buildCounterPretargetingConfigDimensions < 3) {
    o.height = "foo";
    o.width = "foo";
  }
  buildCounterPretargetingConfigDimensions--;
  return o;
}

checkPretargetingConfigDimensions(api.PretargetingConfigDimensions o) {
  buildCounterPretargetingConfigDimensions++;
  if (buildCounterPretargetingConfigDimensions < 3) {
    unittest.expect(o.height, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigDimensions--;
}

buildUnnamed1064() {
  var o = new core.List<api.PretargetingConfigDimensions>();
  o.add(buildPretargetingConfigDimensions());
  o.add(buildPretargetingConfigDimensions());
  return o;
}

checkUnnamed1064(core.List<api.PretargetingConfigDimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigDimensions(o[0]);
  checkPretargetingConfigDimensions(o[1]);
}

buildUnnamed1065() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1065(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1066() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1066(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigExcludedPlacements = 0;
buildPretargetingConfigExcludedPlacements() {
  var o = new api.PretargetingConfigExcludedPlacements();
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterPretargetingConfigExcludedPlacements--;
  return o;
}

checkPretargetingConfigExcludedPlacements(api.PretargetingConfigExcludedPlacements o) {
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigExcludedPlacements--;
}

buildUnnamed1067() {
  var o = new core.List<api.PretargetingConfigExcludedPlacements>();
  o.add(buildPretargetingConfigExcludedPlacements());
  o.add(buildPretargetingConfigExcludedPlacements());
  return o;
}

checkUnnamed1067(core.List<api.PretargetingConfigExcludedPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigExcludedPlacements(o[0]);
  checkPretargetingConfigExcludedPlacements(o[1]);
}

buildUnnamed1068() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1068(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1069() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1069(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1070() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1070(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1071() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1072() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1072(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1073() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1073(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1074() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigPlacements = 0;
buildPretargetingConfigPlacements() {
  var o = new api.PretargetingConfigPlacements();
  buildCounterPretargetingConfigPlacements++;
  if (buildCounterPretargetingConfigPlacements < 3) {
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterPretargetingConfigPlacements--;
  return o;
}

checkPretargetingConfigPlacements(api.PretargetingConfigPlacements o) {
  buildCounterPretargetingConfigPlacements++;
  if (buildCounterPretargetingConfigPlacements < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigPlacements--;
}

buildUnnamed1075() {
  var o = new core.List<api.PretargetingConfigPlacements>();
  o.add(buildPretargetingConfigPlacements());
  o.add(buildPretargetingConfigPlacements());
  return o;
}

checkUnnamed1075(core.List<api.PretargetingConfigPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigPlacements(o[0]);
  checkPretargetingConfigPlacements(o[1]);
}

buildUnnamed1076() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1076(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1077() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1077(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1079() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1080() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1080(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfig = 0;
buildPretargetingConfig() {
  var o = new api.PretargetingConfig();
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    o.billingId = "foo";
    o.configId = "foo";
    o.configName = "foo";
    o.creativeType = buildUnnamed1063();
    o.dimensions = buildUnnamed1064();
    o.excludedContentLabels = buildUnnamed1065();
    o.excludedGeoCriteriaIds = buildUnnamed1066();
    o.excludedPlacements = buildUnnamed1067();
    o.excludedUserLists = buildUnnamed1068();
    o.excludedVerticals = buildUnnamed1069();
    o.geoCriteriaIds = buildUnnamed1070();
    o.isActive = true;
    o.kind = "foo";
    o.languages = buildUnnamed1071();
    o.mobileCarriers = buildUnnamed1072();
    o.mobileDevices = buildUnnamed1073();
    o.mobileOperatingSystemVersions = buildUnnamed1074();
    o.placements = buildUnnamed1075();
    o.platforms = buildUnnamed1076();
    o.supportedCreativeAttributes = buildUnnamed1077();
    o.userLists = buildUnnamed1078();
    o.vendorTypes = buildUnnamed1079();
    o.verticals = buildUnnamed1080();
  }
  buildCounterPretargetingConfig--;
  return o;
}

checkPretargetingConfig(api.PretargetingConfig o) {
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    unittest.expect(o.billingId, unittest.equals('foo'));
    unittest.expect(o.configId, unittest.equals('foo'));
    unittest.expect(o.configName, unittest.equals('foo'));
    checkUnnamed1063(o.creativeType);
    checkUnnamed1064(o.dimensions);
    checkUnnamed1065(o.excludedContentLabels);
    checkUnnamed1066(o.excludedGeoCriteriaIds);
    checkUnnamed1067(o.excludedPlacements);
    checkUnnamed1068(o.excludedUserLists);
    checkUnnamed1069(o.excludedVerticals);
    checkUnnamed1070(o.geoCriteriaIds);
    unittest.expect(o.isActive, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1071(o.languages);
    checkUnnamed1072(o.mobileCarriers);
    checkUnnamed1073(o.mobileDevices);
    checkUnnamed1074(o.mobileOperatingSystemVersions);
    checkUnnamed1075(o.placements);
    checkUnnamed1076(o.platforms);
    checkUnnamed1077(o.supportedCreativeAttributes);
    checkUnnamed1078(o.userLists);
    checkUnnamed1079(o.vendorTypes);
    checkUnnamed1080(o.verticals);
  }
  buildCounterPretargetingConfig--;
}

buildUnnamed1081() {
  var o = new core.List<api.PretargetingConfig>();
  o.add(buildPretargetingConfig());
  o.add(buildPretargetingConfig());
  return o;
}

checkUnnamed1081(core.List<api.PretargetingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfig(o[0]);
  checkPretargetingConfig(o[1]);
}

core.int buildCounterPretargetingConfigList = 0;
buildPretargetingConfigList() {
  var o = new api.PretargetingConfigList();
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    o.items = buildUnnamed1081();
    o.kind = "foo";
  }
  buildCounterPretargetingConfigList--;
  return o;
}

checkPretargetingConfigList(api.PretargetingConfigList o) {
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    checkUnnamed1081(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigList--;
}

buildUnnamed1082() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1082(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1083() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1083(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-AccountBidderLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountBidderLocation();
      var od = new api.AccountBidderLocation.fromJson(o.toJson());
      checkAccountBidderLocation(od);
    });
  });


  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });


  unittest.group("obj-schema-AccountsList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsList();
      var od = new api.AccountsList.fromJson(o.toJson());
      checkAccountsList(od);
    });
  });


  unittest.group("obj-schema-BillingInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingInfo();
      var od = new api.BillingInfo.fromJson(o.toJson());
      checkBillingInfo(od);
    });
  });


  unittest.group("obj-schema-BillingInfoList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingInfoList();
      var od = new api.BillingInfoList.fromJson(o.toJson());
      checkBillingInfoList(od);
    });
  });


  unittest.group("obj-schema-Budget", () {
    unittest.test("to-json--from-json", () {
      var o = buildBudget();
      var od = new api.Budget.fromJson(o.toJson());
      checkBudget(od);
    });
  });


  unittest.group("obj-schema-CreativeCorrections", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeCorrections();
      var od = new api.CreativeCorrections.fromJson(o.toJson());
      checkCreativeCorrections(od);
    });
  });


  unittest.group("obj-schema-CreativeDisapprovalReasons", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeDisapprovalReasons();
      var od = new api.CreativeDisapprovalReasons.fromJson(o.toJson());
      checkCreativeDisapprovalReasons(od);
    });
  });


  unittest.group("obj-schema-CreativeFilteringReasonsReasons", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeFilteringReasonsReasons();
      var od = new api.CreativeFilteringReasonsReasons.fromJson(o.toJson());
      checkCreativeFilteringReasonsReasons(od);
    });
  });


  unittest.group("obj-schema-CreativeFilteringReasons", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeFilteringReasons();
      var od = new api.CreativeFilteringReasons.fromJson(o.toJson());
      checkCreativeFilteringReasons(od);
    });
  });


  unittest.group("obj-schema-CreativeNativeAdAppIcon", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAdAppIcon();
      var od = new api.CreativeNativeAdAppIcon.fromJson(o.toJson());
      checkCreativeNativeAdAppIcon(od);
    });
  });


  unittest.group("obj-schema-CreativeNativeAdImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAdImage();
      var od = new api.CreativeNativeAdImage.fromJson(o.toJson());
      checkCreativeNativeAdImage(od);
    });
  });


  unittest.group("obj-schema-CreativeNativeAdLogo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAdLogo();
      var od = new api.CreativeNativeAdLogo.fromJson(o.toJson());
      checkCreativeNativeAdLogo(od);
    });
  });


  unittest.group("obj-schema-CreativeNativeAd", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeNativeAd();
      var od = new api.CreativeNativeAd.fromJson(o.toJson());
      checkCreativeNativeAd(od);
    });
  });


  unittest.group("obj-schema-Creative", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreative();
      var od = new api.Creative.fromJson(o.toJson());
      checkCreative(od);
    });
  });


  unittest.group("obj-schema-CreativesList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativesList();
      var od = new api.CreativesList.fromJson(o.toJson());
      checkCreativesList(od);
    });
  });


  unittest.group("obj-schema-DirectDeal", () {
    unittest.test("to-json--from-json", () {
      var o = buildDirectDeal();
      var od = new api.DirectDeal.fromJson(o.toJson());
      checkDirectDeal(od);
    });
  });


  unittest.group("obj-schema-DirectDealsList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDirectDealsList();
      var od = new api.DirectDealsList.fromJson(o.toJson());
      checkDirectDealsList(od);
    });
  });


  unittest.group("obj-schema-PerformanceReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerformanceReport();
      var od = new api.PerformanceReport.fromJson(o.toJson());
      checkPerformanceReport(od);
    });
  });


  unittest.group("obj-schema-PerformanceReportList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerformanceReportList();
      var od = new api.PerformanceReportList.fromJson(o.toJson());
      checkPerformanceReportList(od);
    });
  });


  unittest.group("obj-schema-PretargetingConfigDimensions", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigDimensions();
      var od = new api.PretargetingConfigDimensions.fromJson(o.toJson());
      checkPretargetingConfigDimensions(od);
    });
  });


  unittest.group("obj-schema-PretargetingConfigExcludedPlacements", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigExcludedPlacements();
      var od = new api.PretargetingConfigExcludedPlacements.fromJson(o.toJson());
      checkPretargetingConfigExcludedPlacements(od);
    });
  });


  unittest.group("obj-schema-PretargetingConfigPlacements", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigPlacements();
      var od = new api.PretargetingConfigPlacements.fromJson(o.toJson());
      checkPretargetingConfigPlacements(od);
    });
  });


  unittest.group("obj-schema-PretargetingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfig();
      var od = new api.PretargetingConfig.fromJson(o.toJson());
      checkPretargetingConfig(od);
    });
  });


  unittest.group("obj-schema-PretargetingConfigList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigList();
      var od = new api.PretargetingConfigList.fromJson(o.toJson());
      checkPretargetingConfigList(od);
    });
  });


  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_id = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("accounts"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountsList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.AccountsList response) {
        checkAccountsList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_id = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_id = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_id).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

  });


  unittest.group("resource-BillingInfoResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.BillingInfoResourceApi res = new api.AdexchangebuyerApi(mock).billingInfo;
      var arg_accountId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("billinginfo/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBillingInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId).then(unittest.expectAsync(((api.BillingInfo response) {
        checkBillingInfo(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.BillingInfoResourceApi res = new api.AdexchangebuyerApi(mock).billingInfo;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("billinginfo"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBillingInfoList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.BillingInfoList response) {
        checkBillingInfoList(response);
      })));
    });

  });


  unittest.group("resource-BudgetResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_billingId).then(unittest.expectAsync(((api.Budget response) {
        checkBudget(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_request = buildBudget();
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Budget.fromJson(json);
        checkBudget(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_accountId, arg_billingId).then(unittest.expectAsync(((api.Budget response) {
        checkBudget(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_request = buildBudget();
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Budget.fromJson(json);
        checkBudget(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_accountId, arg_billingId).then(unittest.expectAsync(((api.Budget response) {
        checkBudget(response);
      })));
    });

  });


  unittest.group("resource-CreativesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_buyerCreativeId).then(unittest.expectAsync(((api.Creative response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_request = buildCreative();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("creatives"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.Creative response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = buildUnnamed1082();
      var arg_buyerCreativeId = buildUnnamed1083();
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_statusFilter = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("creatives"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["accountId"].map(core.int.parse).toList(), unittest.equals(arg_accountId));
        unittest.expect(queryMap["buyerCreativeId"], unittest.equals(arg_buyerCreativeId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["statusFilter"].first, unittest.equals(arg_statusFilter));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCreativesList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(accountId: arg_accountId, buyerCreativeId: arg_buyerCreativeId, maxResults: arg_maxResults, pageToken: arg_pageToken, statusFilter: arg_statusFilter).then(unittest.expectAsync(((api.CreativesList response) {
        checkCreativesList(response);
      })));
    });

  });


  unittest.group("resource-DirectDealsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.DirectDealsResourceApi res = new api.AdexchangebuyerApi(mock).directDeals;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("directdeals/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDirectDeal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.DirectDeal response) {
        checkDirectDeal(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.DirectDealsResourceApi res = new api.AdexchangebuyerApi(mock).directDeals;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("directdeals"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDirectDealsList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.DirectDealsList response) {
        checkDirectDealsList(response);
      })));
    });

  });


  unittest.group("resource-PerformanceReportResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.PerformanceReportResourceApi res = new api.AdexchangebuyerApi(mock).performanceReport;
      var arg_accountId = "foo";
      var arg_endDateTime = "foo";
      var arg_startDateTime = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("performancereport"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["accountId"].first, unittest.equals(arg_accountId));
        unittest.expect(queryMap["endDateTime"].first, unittest.equals(arg_endDateTime));
        unittest.expect(queryMap["startDateTime"].first, unittest.equals(arg_startDateTime));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPerformanceReportList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_endDateTime, arg_startDateTime, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.PerformanceReportList response) {
        checkPerformanceReportList(response);
      })));
    });

  });


  unittest.group("resource-PretargetingConfigResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res = new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_configId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_accountId, arg_configId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res = new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_configId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_configId).then(unittest.expectAsync(((api.PretargetingConfig response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res = new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_accountId).then(unittest.expectAsync(((api.PretargetingConfig response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res = new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPretargetingConfigList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId).then(unittest.expectAsync(((api.PretargetingConfigList response) {
        checkPretargetingConfigList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res = new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_configId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_accountId, arg_configId).then(unittest.expectAsync(((api.PretargetingConfig response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res = new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_configId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.3/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_accountId, arg_configId).then(unittest.expectAsync(((api.PretargetingConfig response) {
        checkPretargetingConfig(response);
      })));
    });

  });


}

