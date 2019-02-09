library googleapis.adexchangebuyer.v1_4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/adexchangebuyer/v1_4.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccountBidderLocation = 0;
buildAccountBidderLocation() {
  var o = new api.AccountBidderLocation();
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    o.bidProtocol = "foo";
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
    unittest.expect(o.bidProtocol, unittest.equals('foo'));
    unittest.expect(o.maximumQps, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAccountBidderLocation--;
}

buildUnnamed3126() {
  var o = new core.List<api.AccountBidderLocation>();
  o.add(buildAccountBidderLocation());
  o.add(buildAccountBidderLocation());
  return o;
}

checkUnnamed3126(core.List<api.AccountBidderLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountBidderLocation(o[0]);
  checkAccountBidderLocation(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.applyPretargetingToNonGuaranteedDeals = true;
    o.bidderLocation = buildUnnamed3126();
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
    unittest.expect(o.applyPretargetingToNonGuaranteedDeals, unittest.isTrue);
    checkUnnamed3126(o.bidderLocation);
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

buildUnnamed3127() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed3127(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsList = 0;
buildAccountsList() {
  var o = new api.AccountsList();
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    o.items = buildUnnamed3127();
    o.kind = "foo";
  }
  buildCounterAccountsList--;
  return o;
}

checkAccountsList(api.AccountsList o) {
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    checkUnnamed3127(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsList--;
}

buildUnnamed3128() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed3128(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsRequest = 0;
buildAddOrderDealsRequest() {
  var o = new api.AddOrderDealsRequest();
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    o.deals = buildUnnamed3128();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterAddOrderDealsRequest--;
  return o;
}

checkAddOrderDealsRequest(api.AddOrderDealsRequest o) {
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    checkUnnamed3128(o.deals);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterAddOrderDealsRequest--;
}

buildUnnamed3129() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed3129(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsResponse = 0;
buildAddOrderDealsResponse() {
  var o = new api.AddOrderDealsResponse();
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    o.deals = buildUnnamed3129();
    o.proposalRevisionNumber = "foo";
  }
  buildCounterAddOrderDealsResponse--;
  return o;
}

checkAddOrderDealsResponse(api.AddOrderDealsResponse o) {
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    checkUnnamed3129(o.deals);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
  }
  buildCounterAddOrderDealsResponse--;
}

buildUnnamed3130() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed3130(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesRequest = 0;
buildAddOrderNotesRequest() {
  var o = new api.AddOrderNotesRequest();
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    o.notes = buildUnnamed3130();
  }
  buildCounterAddOrderNotesRequest--;
  return o;
}

checkAddOrderNotesRequest(api.AddOrderNotesRequest o) {
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    checkUnnamed3130(o.notes);
  }
  buildCounterAddOrderNotesRequest--;
}

buildUnnamed3131() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed3131(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesResponse = 0;
buildAddOrderNotesResponse() {
  var o = new api.AddOrderNotesResponse();
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    o.notes = buildUnnamed3131();
  }
  buildCounterAddOrderNotesResponse--;
  return o;
}

checkAddOrderNotesResponse(api.AddOrderNotesResponse o) {
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    checkUnnamed3131(o.notes);
  }
  buildCounterAddOrderNotesResponse--;
}

buildUnnamed3132() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3132(core.List<core.String> o) {
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
    o.billingId = buildUnnamed3132();
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
    checkUnnamed3132(o.billingId);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfo--;
}

buildUnnamed3133() {
  var o = new core.List<api.BillingInfo>();
  o.add(buildBillingInfo());
  o.add(buildBillingInfo());
  return o;
}

checkUnnamed3133(core.List<api.BillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingInfo(o[0]);
  checkBillingInfo(o[1]);
}

core.int buildCounterBillingInfoList = 0;
buildBillingInfoList() {
  var o = new api.BillingInfoList();
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    o.items = buildUnnamed3133();
    o.kind = "foo";
  }
  buildCounterBillingInfoList--;
  return o;
}

checkBillingInfoList(api.BillingInfoList o) {
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    checkUnnamed3133(o.items);
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

core.int buildCounterBuyer = 0;
buildBuyer() {
  var o = new api.Buyer();
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    o.accountId = "foo";
  }
  buildCounterBuyer--;
  return o;
}

checkBuyer(api.Buyer o) {
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
  }
  buildCounterBuyer--;
}

core.int buildCounterContactInformation = 0;
buildContactInformation() {
  var o = new api.ContactInformation();
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    o.email = "foo";
    o.name = "foo";
  }
  buildCounterContactInformation--;
  return o;
}

checkContactInformation(api.ContactInformation o) {
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterContactInformation--;
}

buildUnnamed3134() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed3134(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterCreateOrdersRequest = 0;
buildCreateOrdersRequest() {
  var o = new api.CreateOrdersRequest();
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    o.proposals = buildUnnamed3134();
    o.webPropertyCode = "foo";
  }
  buildCounterCreateOrdersRequest--;
  return o;
}

checkCreateOrdersRequest(api.CreateOrdersRequest o) {
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    checkUnnamed3134(o.proposals);
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterCreateOrdersRequest--;
}

buildUnnamed3135() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed3135(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterCreateOrdersResponse = 0;
buildCreateOrdersResponse() {
  var o = new api.CreateOrdersResponse();
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    o.proposals = buildUnnamed3135();
  }
  buildCounterCreateOrdersResponse--;
  return o;
}

checkCreateOrdersResponse(api.CreateOrdersResponse o) {
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    checkUnnamed3135(o.proposals);
  }
  buildCounterCreateOrdersResponse--;
}

buildUnnamed3136() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3137() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3137(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3138() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3138(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3139() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3139(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3140() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3140(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3141() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeCorrectionsContexts = 0;
buildCreativeCorrectionsContexts() {
  var o = new api.CreativeCorrectionsContexts();
  buildCounterCreativeCorrectionsContexts++;
  if (buildCounterCreativeCorrectionsContexts < 3) {
    o.auctionType = buildUnnamed3139();
    o.contextType = "foo";
    o.geoCriteriaId = buildUnnamed3140();
    o.platform = buildUnnamed3141();
  }
  buildCounterCreativeCorrectionsContexts--;
  return o;
}

checkCreativeCorrectionsContexts(api.CreativeCorrectionsContexts o) {
  buildCounterCreativeCorrectionsContexts++;
  if (buildCounterCreativeCorrectionsContexts < 3) {
    checkUnnamed3139(o.auctionType);
    unittest.expect(o.contextType, unittest.equals('foo'));
    checkUnnamed3140(o.geoCriteriaId);
    checkUnnamed3141(o.platform);
  }
  buildCounterCreativeCorrectionsContexts--;
}

buildUnnamed3142() {
  var o = new core.List<api.CreativeCorrectionsContexts>();
  o.add(buildCreativeCorrectionsContexts());
  o.add(buildCreativeCorrectionsContexts());
  return o;
}

checkUnnamed3142(core.List<api.CreativeCorrectionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrectionsContexts(o[0]);
  checkCreativeCorrectionsContexts(o[1]);
}

buildUnnamed3143() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3143(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeCorrections = 0;
buildCreativeCorrections() {
  var o = new api.CreativeCorrections();
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    o.contexts = buildUnnamed3142();
    o.details = buildUnnamed3143();
    o.reason = "foo";
  }
  buildCounterCreativeCorrections--;
  return o;
}

checkCreativeCorrections(api.CreativeCorrections o) {
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    checkUnnamed3142(o.contexts);
    checkUnnamed3143(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeCorrections--;
}

buildUnnamed3144() {
  var o = new core.List<api.CreativeCorrections>();
  o.add(buildCreativeCorrections());
  o.add(buildCreativeCorrections());
  return o;
}

checkUnnamed3144(core.List<api.CreativeCorrections> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrections(o[0]);
  checkCreativeCorrections(o[1]);
}

buildUnnamed3145() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

buildUnnamed3146() {
  var o = new core.List<api.CreativeFilteringReasonsReasons>();
  o.add(buildCreativeFilteringReasonsReasons());
  o.add(buildCreativeFilteringReasonsReasons());
  return o;
}

checkUnnamed3146(core.List<api.CreativeFilteringReasonsReasons> o) {
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
    o.reasons = buildUnnamed3146();
  }
  buildCounterCreativeFilteringReasons--;
  return o;
}

checkCreativeFilteringReasons(api.CreativeFilteringReasons o) {
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    unittest.expect(o.date, unittest.equals('foo'));
    checkUnnamed3146(o.reasons);
  }
  buildCounterCreativeFilteringReasons--;
}

buildUnnamed3147() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3148() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3148(core.List<core.String> o) {
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

buildUnnamed3149() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3149(core.List<core.String> o) {
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
    o.clickLinkUrl = "foo";
    o.clickTrackingUrl = "foo";
    o.headline = "foo";
    o.image = buildCreativeNativeAdImage();
    o.impressionTrackingUrl = buildUnnamed3149();
    o.logo = buildCreativeNativeAdLogo();
    o.price = "foo";
    o.starRating = 42.0;
    o.store = "foo";
    o.videoURL = "foo";
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
    unittest.expect(o.clickLinkUrl, unittest.equals('foo'));
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.headline, unittest.equals('foo'));
    checkCreativeNativeAdImage(o.image);
    checkUnnamed3149(o.impressionTrackingUrl);
    checkCreativeNativeAdLogo(o.logo);
    unittest.expect(o.price, unittest.equals('foo'));
    unittest.expect(o.starRating, unittest.equals(42.0));
    unittest.expect(o.store, unittest.equals('foo'));
    unittest.expect(o.videoURL, unittest.equals('foo'));
  }
  buildCounterCreativeNativeAd--;
}

buildUnnamed3150() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3150(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3151() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3151(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3152() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3152(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3153() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3153(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3154() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3154(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3155() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeServingRestrictionsContexts = 0;
buildCreativeServingRestrictionsContexts() {
  var o = new api.CreativeServingRestrictionsContexts();
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    o.auctionType = buildUnnamed3153();
    o.contextType = "foo";
    o.geoCriteriaId = buildUnnamed3154();
    o.platform = buildUnnamed3155();
  }
  buildCounterCreativeServingRestrictionsContexts--;
  return o;
}

checkCreativeServingRestrictionsContexts(
    api.CreativeServingRestrictionsContexts o) {
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    checkUnnamed3153(o.auctionType);
    unittest.expect(o.contextType, unittest.equals('foo'));
    checkUnnamed3154(o.geoCriteriaId);
    checkUnnamed3155(o.platform);
  }
  buildCounterCreativeServingRestrictionsContexts--;
}

buildUnnamed3156() {
  var o = new core.List<api.CreativeServingRestrictionsContexts>();
  o.add(buildCreativeServingRestrictionsContexts());
  o.add(buildCreativeServingRestrictionsContexts());
  return o;
}

checkUnnamed3156(core.List<api.CreativeServingRestrictionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsContexts(o[0]);
  checkCreativeServingRestrictionsContexts(o[1]);
}

buildUnnamed3157() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3157(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeServingRestrictionsDisapprovalReasons = 0;
buildCreativeServingRestrictionsDisapprovalReasons() {
  var o = new api.CreativeServingRestrictionsDisapprovalReasons();
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    o.details = buildUnnamed3157();
    o.reason = "foo";
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
  return o;
}

checkCreativeServingRestrictionsDisapprovalReasons(
    api.CreativeServingRestrictionsDisapprovalReasons o) {
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    checkUnnamed3157(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
}

buildUnnamed3158() {
  var o = new core.List<api.CreativeServingRestrictionsDisapprovalReasons>();
  o.add(buildCreativeServingRestrictionsDisapprovalReasons());
  o.add(buildCreativeServingRestrictionsDisapprovalReasons());
  return o;
}

checkUnnamed3158(
    core.List<api.CreativeServingRestrictionsDisapprovalReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsDisapprovalReasons(o[0]);
  checkCreativeServingRestrictionsDisapprovalReasons(o[1]);
}

core.int buildCounterCreativeServingRestrictions = 0;
buildCreativeServingRestrictions() {
  var o = new api.CreativeServingRestrictions();
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    o.contexts = buildUnnamed3156();
    o.disapprovalReasons = buildUnnamed3158();
    o.reason = "foo";
  }
  buildCounterCreativeServingRestrictions--;
  return o;
}

checkCreativeServingRestrictions(api.CreativeServingRestrictions o) {
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    checkUnnamed3156(o.contexts);
    checkUnnamed3158(o.disapprovalReasons);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeServingRestrictions--;
}

buildUnnamed3159() {
  var o = new core.List<api.CreativeServingRestrictions>();
  o.add(buildCreativeServingRestrictions());
  o.add(buildCreativeServingRestrictions());
  return o;
}

checkUnnamed3159(core.List<api.CreativeServingRestrictions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictions(o[0]);
  checkCreativeServingRestrictions(o[1]);
}

buildUnnamed3160() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3160(core.List<core.int> o) {
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
    o.adChoicesDestinationUrl = "foo";
    o.advertiserId = buildUnnamed3136();
    o.advertiserName = "foo";
    o.agencyId = "foo";
    o.apiUploadTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.attribute = buildUnnamed3137();
    o.buyerCreativeId = "foo";
    o.clickThroughUrl = buildUnnamed3138();
    o.corrections = buildUnnamed3144();
    o.creativeStatusIdentityType = "foo";
    o.dealsStatus = "foo";
    o.detectedDomains = buildUnnamed3145();
    o.filteringReasons = buildCreativeFilteringReasons();
    o.height = 42;
    o.impressionTrackingUrl = buildUnnamed3147();
    o.kind = "foo";
    o.languages = buildUnnamed3148();
    o.nativeAd = buildCreativeNativeAd();
    o.openAuctionStatus = "foo";
    o.productCategories = buildUnnamed3150();
    o.restrictedCategories = buildUnnamed3151();
    o.sensitiveCategories = buildUnnamed3152();
    o.servingRestrictions = buildUnnamed3159();
    o.vendorType = buildUnnamed3160();
    o.version = 42;
    o.videoURL = "foo";
    o.videoVastXML = "foo";
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
    unittest.expect(o.adChoicesDestinationUrl, unittest.equals('foo'));
    checkUnnamed3136(o.advertiserId);
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    unittest.expect(o.agencyId, unittest.equals('foo'));
    unittest.expect(o.apiUploadTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed3137(o.attribute);
    unittest.expect(o.buyerCreativeId, unittest.equals('foo'));
    checkUnnamed3138(o.clickThroughUrl);
    checkUnnamed3144(o.corrections);
    unittest.expect(o.creativeStatusIdentityType, unittest.equals('foo'));
    unittest.expect(o.dealsStatus, unittest.equals('foo'));
    checkUnnamed3145(o.detectedDomains);
    checkCreativeFilteringReasons(o.filteringReasons);
    unittest.expect(o.height, unittest.equals(42));
    checkUnnamed3147(o.impressionTrackingUrl);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3148(o.languages);
    checkCreativeNativeAd(o.nativeAd);
    unittest.expect(o.openAuctionStatus, unittest.equals('foo'));
    checkUnnamed3150(o.productCategories);
    checkUnnamed3151(o.restrictedCategories);
    checkUnnamed3152(o.sensitiveCategories);
    checkUnnamed3159(o.servingRestrictions);
    checkUnnamed3160(o.vendorType);
    unittest.expect(o.version, unittest.equals(42));
    unittest.expect(o.videoURL, unittest.equals('foo'));
    unittest.expect(o.videoVastXML, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeDealIdsDealStatuses = 0;
buildCreativeDealIdsDealStatuses() {
  var o = new api.CreativeDealIdsDealStatuses();
  buildCounterCreativeDealIdsDealStatuses++;
  if (buildCounterCreativeDealIdsDealStatuses < 3) {
    o.arcStatus = "foo";
    o.dealId = "foo";
    o.webPropertyId = 42;
  }
  buildCounterCreativeDealIdsDealStatuses--;
  return o;
}

checkCreativeDealIdsDealStatuses(api.CreativeDealIdsDealStatuses o) {
  buildCounterCreativeDealIdsDealStatuses++;
  if (buildCounterCreativeDealIdsDealStatuses < 3) {
    unittest.expect(o.arcStatus, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.webPropertyId, unittest.equals(42));
  }
  buildCounterCreativeDealIdsDealStatuses--;
}

buildUnnamed3161() {
  var o = new core.List<api.CreativeDealIdsDealStatuses>();
  o.add(buildCreativeDealIdsDealStatuses());
  o.add(buildCreativeDealIdsDealStatuses());
  return o;
}

checkUnnamed3161(core.List<api.CreativeDealIdsDealStatuses> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealIdsDealStatuses(o[0]);
  checkCreativeDealIdsDealStatuses(o[1]);
}

core.int buildCounterCreativeDealIds = 0;
buildCreativeDealIds() {
  var o = new api.CreativeDealIds();
  buildCounterCreativeDealIds++;
  if (buildCounterCreativeDealIds < 3) {
    o.dealStatuses = buildUnnamed3161();
    o.kind = "foo";
  }
  buildCounterCreativeDealIds--;
  return o;
}

checkCreativeDealIds(api.CreativeDealIds o) {
  buildCounterCreativeDealIds++;
  if (buildCounterCreativeDealIds < 3) {
    checkUnnamed3161(o.dealStatuses);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCreativeDealIds--;
}

buildUnnamed3162() {
  var o = new core.List<api.Creative>();
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

checkUnnamed3162(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesList = 0;
buildCreativesList() {
  var o = new api.CreativesList();
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    o.items = buildUnnamed3162();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCreativesList--;
  return o;
}

checkCreativesList(api.CreativesList o) {
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    checkUnnamed3162(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativesList--;
}

core.int buildCounterDealServingMetadata = 0;
buildDealServingMetadata() {
  var o = new api.DealServingMetadata();
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    o.alcoholAdsAllowed = true;
    o.dealPauseStatus = buildDealServingMetadataDealPauseStatus();
  }
  buildCounterDealServingMetadata--;
  return o;
}

checkDealServingMetadata(api.DealServingMetadata o) {
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    unittest.expect(o.alcoholAdsAllowed, unittest.isTrue);
    checkDealServingMetadataDealPauseStatus(o.dealPauseStatus);
  }
  buildCounterDealServingMetadata--;
}

core.int buildCounterDealServingMetadataDealPauseStatus = 0;
buildDealServingMetadataDealPauseStatus() {
  var o = new api.DealServingMetadataDealPauseStatus();
  buildCounterDealServingMetadataDealPauseStatus++;
  if (buildCounterDealServingMetadataDealPauseStatus < 3) {
    o.buyerPauseReason = "foo";
    o.firstPausedBy = "foo";
    o.hasBuyerPaused = true;
    o.hasSellerPaused = true;
    o.sellerPauseReason = "foo";
  }
  buildCounterDealServingMetadataDealPauseStatus--;
  return o;
}

checkDealServingMetadataDealPauseStatus(
    api.DealServingMetadataDealPauseStatus o) {
  buildCounterDealServingMetadataDealPauseStatus++;
  if (buildCounterDealServingMetadataDealPauseStatus < 3) {
    unittest.expect(o.buyerPauseReason, unittest.equals('foo'));
    unittest.expect(o.firstPausedBy, unittest.equals('foo'));
    unittest.expect(o.hasBuyerPaused, unittest.isTrue);
    unittest.expect(o.hasSellerPaused, unittest.isTrue);
    unittest.expect(o.sellerPauseReason, unittest.equals('foo'));
  }
  buildCounterDealServingMetadataDealPauseStatus--;
}

core.int buildCounterDealTerms = 0;
buildDealTerms() {
  var o = new api.DealTerms();
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    o.brandingType = "foo";
    o.crossListedExternalDealIdType = "foo";
    o.description = "foo";
    o.estimatedGrossSpend = buildPrice();
    o.estimatedImpressionsPerDay = "foo";
    o.guaranteedFixedPriceTerms = buildDealTermsGuaranteedFixedPriceTerms();
    o.nonGuaranteedAuctionTerms = buildDealTermsNonGuaranteedAuctionTerms();
    o.nonGuaranteedFixedPriceTerms =
        buildDealTermsNonGuaranteedFixedPriceTerms();
    o.rubiconNonGuaranteedTerms = buildDealTermsRubiconNonGuaranteedTerms();
    o.sellerTimeZone = "foo";
  }
  buildCounterDealTerms--;
  return o;
}

checkDealTerms(api.DealTerms o) {
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    unittest.expect(o.brandingType, unittest.equals('foo'));
    unittest.expect(o.crossListedExternalDealIdType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkPrice(o.estimatedGrossSpend);
    unittest.expect(o.estimatedImpressionsPerDay, unittest.equals('foo'));
    checkDealTermsGuaranteedFixedPriceTerms(o.guaranteedFixedPriceTerms);
    checkDealTermsNonGuaranteedAuctionTerms(o.nonGuaranteedAuctionTerms);
    checkDealTermsNonGuaranteedFixedPriceTerms(o.nonGuaranteedFixedPriceTerms);
    checkDealTermsRubiconNonGuaranteedTerms(o.rubiconNonGuaranteedTerms);
    unittest.expect(o.sellerTimeZone, unittest.equals('foo'));
  }
  buildCounterDealTerms--;
}

buildUnnamed3163() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed3163(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsGuaranteedFixedPriceTerms = 0;
buildDealTermsGuaranteedFixedPriceTerms() {
  var o = new api.DealTermsGuaranteedFixedPriceTerms();
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    o.billingInfo = buildDealTermsGuaranteedFixedPriceTermsBillingInfo();
    o.fixedPrices = buildUnnamed3163();
    o.guaranteedImpressions = "foo";
    o.guaranteedLooks = "foo";
    o.minimumDailyLooks = "foo";
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
  return o;
}

checkDealTermsGuaranteedFixedPriceTerms(
    api.DealTermsGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    checkDealTermsGuaranteedFixedPriceTermsBillingInfo(o.billingInfo);
    checkUnnamed3163(o.fixedPrices);
    unittest.expect(o.guaranteedImpressions, unittest.equals('foo'));
    unittest.expect(o.guaranteedLooks, unittest.equals('foo'));
    unittest.expect(o.minimumDailyLooks, unittest.equals('foo'));
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
}

core.int buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo = 0;
buildDealTermsGuaranteedFixedPriceTermsBillingInfo() {
  var o = new api.DealTermsGuaranteedFixedPriceTermsBillingInfo();
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo++;
  if (buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo < 3) {
    o.currencyConversionTimeMs = "foo";
    o.dfpLineItemId = "foo";
    o.originalContractedQuantity = "foo";
    o.price = buildPrice();
  }
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo--;
  return o;
}

checkDealTermsGuaranteedFixedPriceTermsBillingInfo(
    api.DealTermsGuaranteedFixedPriceTermsBillingInfo o) {
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo++;
  if (buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo < 3) {
    unittest.expect(o.currencyConversionTimeMs, unittest.equals('foo'));
    unittest.expect(o.dfpLineItemId, unittest.equals('foo'));
    unittest.expect(o.originalContractedQuantity, unittest.equals('foo'));
    checkPrice(o.price);
  }
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo--;
}

buildUnnamed3164() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed3164(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedAuctionTerms = 0;
buildDealTermsNonGuaranteedAuctionTerms() {
  var o = new api.DealTermsNonGuaranteedAuctionTerms();
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    o.autoOptimizePrivateAuction = true;
    o.reservePricePerBuyers = buildUnnamed3164();
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
  return o;
}

checkDealTermsNonGuaranteedAuctionTerms(
    api.DealTermsNonGuaranteedAuctionTerms o) {
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.autoOptimizePrivateAuction, unittest.isTrue);
    checkUnnamed3164(o.reservePricePerBuyers);
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
}

buildUnnamed3165() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed3165(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedFixedPriceTerms = 0;
buildDealTermsNonGuaranteedFixedPriceTerms() {
  var o = new api.DealTermsNonGuaranteedFixedPriceTerms();
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed3165();
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
  return o;
}

checkDealTermsNonGuaranteedFixedPriceTerms(
    api.DealTermsNonGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed3165(o.fixedPrices);
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
}

core.int buildCounterDealTermsRubiconNonGuaranteedTerms = 0;
buildDealTermsRubiconNonGuaranteedTerms() {
  var o = new api.DealTermsRubiconNonGuaranteedTerms();
  buildCounterDealTermsRubiconNonGuaranteedTerms++;
  if (buildCounterDealTermsRubiconNonGuaranteedTerms < 3) {
    o.priorityPrice = buildPrice();
    o.standardPrice = buildPrice();
  }
  buildCounterDealTermsRubiconNonGuaranteedTerms--;
  return o;
}

checkDealTermsRubiconNonGuaranteedTerms(
    api.DealTermsRubiconNonGuaranteedTerms o) {
  buildCounterDealTermsRubiconNonGuaranteedTerms++;
  if (buildCounterDealTermsRubiconNonGuaranteedTerms < 3) {
    checkPrice(o.priorityPrice);
    checkPrice(o.standardPrice);
  }
  buildCounterDealTermsRubiconNonGuaranteedTerms--;
}

buildUnnamed3166() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeleteOrderDealsRequest = 0;
buildDeleteOrderDealsRequest() {
  var o = new api.DeleteOrderDealsRequest();
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    o.dealIds = buildUnnamed3166();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterDeleteOrderDealsRequest--;
  return o;
}

checkDeleteOrderDealsRequest(api.DeleteOrderDealsRequest o) {
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    checkUnnamed3166(o.dealIds);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterDeleteOrderDealsRequest--;
}

buildUnnamed3167() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed3167(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterDeleteOrderDealsResponse = 0;
buildDeleteOrderDealsResponse() {
  var o = new api.DeleteOrderDealsResponse();
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    o.deals = buildUnnamed3167();
    o.proposalRevisionNumber = "foo";
  }
  buildCounterDeleteOrderDealsResponse--;
  return o;
}

checkDeleteOrderDealsResponse(api.DeleteOrderDealsResponse o) {
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    checkUnnamed3167(o.deals);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
  }
  buildCounterDeleteOrderDealsResponse--;
}

buildUnnamed3168() {
  var o = new core.List<api.DeliveryControlFrequencyCap>();
  o.add(buildDeliveryControlFrequencyCap());
  o.add(buildDeliveryControlFrequencyCap());
  return o;
}

checkUnnamed3168(core.List<api.DeliveryControlFrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryControlFrequencyCap(o[0]);
  checkDeliveryControlFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
buildDeliveryControl() {
  var o = new api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.creativeBlockingLevel = "foo";
    o.deliveryRateType = "foo";
    o.frequencyCaps = buildUnnamed3168();
  }
  buildCounterDeliveryControl--;
  return o;
}

checkDeliveryControl(api.DeliveryControl o) {
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    unittest.expect(o.creativeBlockingLevel, unittest.equals('foo'));
    unittest.expect(o.deliveryRateType, unittest.equals('foo'));
    checkUnnamed3168(o.frequencyCaps);
  }
  buildCounterDeliveryControl--;
}

core.int buildCounterDeliveryControlFrequencyCap = 0;
buildDeliveryControlFrequencyCap() {
  var o = new api.DeliveryControlFrequencyCap();
  buildCounterDeliveryControlFrequencyCap++;
  if (buildCounterDeliveryControlFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.numTimeUnits = 42;
    o.timeUnitType = "foo";
  }
  buildCounterDeliveryControlFrequencyCap--;
  return o;
}

checkDeliveryControlFrequencyCap(api.DeliveryControlFrequencyCap o) {
  buildCounterDeliveryControlFrequencyCap++;
  if (buildCounterDeliveryControlFrequencyCap < 3) {
    unittest.expect(o.maxImpressions, unittest.equals(42));
    unittest.expect(o.numTimeUnits, unittest.equals(42));
    unittest.expect(o.timeUnitType, unittest.equals('foo'));
  }
  buildCounterDeliveryControlFrequencyCap--;
}

buildUnnamed3169() {
  var o = new core.List<api.DimensionDimensionValue>();
  o.add(buildDimensionDimensionValue());
  o.add(buildDimensionDimensionValue());
  return o;
}

checkUnnamed3169(core.List<api.DimensionDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionDimensionValue(o[0]);
  checkDimensionDimensionValue(o[1]);
}

core.int buildCounterDimension = 0;
buildDimension() {
  var o = new api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.dimensionType = "foo";
    o.dimensionValues = buildUnnamed3169();
  }
  buildCounterDimension--;
  return o;
}

checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(o.dimensionType, unittest.equals('foo'));
    checkUnnamed3169(o.dimensionValues);
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionDimensionValue = 0;
buildDimensionDimensionValue() {
  var o = new api.DimensionDimensionValue();
  buildCounterDimensionDimensionValue++;
  if (buildCounterDimensionDimensionValue < 3) {
    o.id = 42;
    o.name = "foo";
    o.percentage = 42;
  }
  buildCounterDimensionDimensionValue--;
  return o;
}

checkDimensionDimensionValue(api.DimensionDimensionValue o) {
  buildCounterDimensionDimensionValue++;
  if (buildCounterDimensionDimensionValue < 3) {
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.percentage, unittest.equals(42));
  }
  buildCounterDimensionDimensionValue--;
}

buildUnnamed3170() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed3170(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsRequest = 0;
buildEditAllOrderDealsRequest() {
  var o = new api.EditAllOrderDealsRequest();
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    o.deals = buildUnnamed3170();
    o.proposal = buildProposal();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterEditAllOrderDealsRequest--;
  return o;
}

checkEditAllOrderDealsRequest(api.EditAllOrderDealsRequest o) {
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    checkUnnamed3170(o.deals);
    checkProposal(o.proposal);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterEditAllOrderDealsRequest--;
}

buildUnnamed3171() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed3171(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsResponse = 0;
buildEditAllOrderDealsResponse() {
  var o = new api.EditAllOrderDealsResponse();
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    o.deals = buildUnnamed3171();
    o.orderRevisionNumber = "foo";
  }
  buildCounterEditAllOrderDealsResponse--;
  return o;
}

checkEditAllOrderDealsResponse(api.EditAllOrderDealsResponse o) {
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    checkUnnamed3171(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
  }
  buildCounterEditAllOrderDealsResponse--;
}

buildUnnamed3172() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed3172(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterGetOffersResponse = 0;
buildGetOffersResponse() {
  var o = new api.GetOffersResponse();
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    o.products = buildUnnamed3172();
  }
  buildCounterGetOffersResponse--;
  return o;
}

checkGetOffersResponse(api.GetOffersResponse o) {
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    checkUnnamed3172(o.products);
  }
  buildCounterGetOffersResponse--;
}

buildUnnamed3173() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed3173(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterGetOrderDealsResponse = 0;
buildGetOrderDealsResponse() {
  var o = new api.GetOrderDealsResponse();
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    o.deals = buildUnnamed3173();
  }
  buildCounterGetOrderDealsResponse--;
  return o;
}

checkGetOrderDealsResponse(api.GetOrderDealsResponse o) {
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    checkUnnamed3173(o.deals);
  }
  buildCounterGetOrderDealsResponse--;
}

buildUnnamed3174() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed3174(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterGetOrderNotesResponse = 0;
buildGetOrderNotesResponse() {
  var o = new api.GetOrderNotesResponse();
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    o.notes = buildUnnamed3174();
  }
  buildCounterGetOrderNotesResponse--;
  return o;
}

checkGetOrderNotesResponse(api.GetOrderNotesResponse o) {
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    checkUnnamed3174(o.notes);
  }
  buildCounterGetOrderNotesResponse--;
}

buildUnnamed3175() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed3175(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterGetOrdersResponse = 0;
buildGetOrdersResponse() {
  var o = new api.GetOrdersResponse();
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    o.proposals = buildUnnamed3175();
  }
  buildCounterGetOrdersResponse--;
  return o;
}

checkGetOrdersResponse(api.GetOrdersResponse o) {
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    checkUnnamed3175(o.proposals);
  }
  buildCounterGetOrdersResponse--;
}

buildUnnamed3176() {
  var o = new core.List<api.PublisherProfileApiProto>();
  o.add(buildPublisherProfileApiProto());
  o.add(buildPublisherProfileApiProto());
  return o;
}

checkUnnamed3176(core.List<api.PublisherProfileApiProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfileApiProto(o[0]);
  checkPublisherProfileApiProto(o[1]);
}

core.int buildCounterGetPublisherProfilesByAccountIdResponse = 0;
buildGetPublisherProfilesByAccountIdResponse() {
  var o = new api.GetPublisherProfilesByAccountIdResponse();
  buildCounterGetPublisherProfilesByAccountIdResponse++;
  if (buildCounterGetPublisherProfilesByAccountIdResponse < 3) {
    o.profiles = buildUnnamed3176();
  }
  buildCounterGetPublisherProfilesByAccountIdResponse--;
  return o;
}

checkGetPublisherProfilesByAccountIdResponse(
    api.GetPublisherProfilesByAccountIdResponse o) {
  buildCounterGetPublisherProfilesByAccountIdResponse++;
  if (buildCounterGetPublisherProfilesByAccountIdResponse < 3) {
    checkUnnamed3176(o.profiles);
  }
  buildCounterGetPublisherProfilesByAccountIdResponse--;
}

buildUnnamed3177() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed3177(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed3178() {
  var o = new core.List<api.SharedTargeting>();
  o.add(buildSharedTargeting());
  o.add(buildSharedTargeting());
  return o;
}

checkUnnamed3178(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterMarketplaceDeal = 0;
buildMarketplaceDeal() {
  var o = new api.MarketplaceDeal();
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    o.buyerPrivateData = buildPrivateData();
    o.creationTimeMs = "foo";
    o.creativePreApprovalPolicy = "foo";
    o.creativeSafeFrameCompatibility = "foo";
    o.dealId = "foo";
    o.dealServingMetadata = buildDealServingMetadata();
    o.deliveryControl = buildDeliveryControl();
    o.externalDealId = "foo";
    o.flightEndTimeMs = "foo";
    o.flightStartTimeMs = "foo";
    o.inventoryDescription = "foo";
    o.isRfpTemplate = true;
    o.isSetupComplete = true;
    o.kind = "foo";
    o.lastUpdateTimeMs = "foo";
    o.name = "foo";
    o.productId = "foo";
    o.productRevisionNumber = "foo";
    o.programmaticCreativeSource = "foo";
    o.proposalId = "foo";
    o.sellerContacts = buildUnnamed3177();
    o.sharedTargetings = buildUnnamed3178();
    o.syndicationProduct = "foo";
    o.terms = buildDealTerms();
    o.webPropertyCode = "foo";
  }
  buildCounterMarketplaceDeal--;
  return o;
}

checkMarketplaceDeal(api.MarketplaceDeal o) {
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    checkPrivateData(o.buyerPrivateData);
    unittest.expect(o.creationTimeMs, unittest.equals('foo'));
    unittest.expect(o.creativePreApprovalPolicy, unittest.equals('foo'));
    unittest.expect(o.creativeSafeFrameCompatibility, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    checkDealServingMetadata(o.dealServingMetadata);
    checkDeliveryControl(o.deliveryControl);
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    unittest.expect(o.flightEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.flightStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.inventoryDescription, unittest.equals('foo'));
    unittest.expect(o.isRfpTemplate, unittest.isTrue);
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.programmaticCreativeSource, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    checkUnnamed3177(o.sellerContacts);
    checkUnnamed3178(o.sharedTargetings);
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkDealTerms(o.terms);
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterMarketplaceDeal--;
}

core.int buildCounterMarketplaceDealParty = 0;
buildMarketplaceDealParty() {
  var o = new api.MarketplaceDealParty();
  buildCounterMarketplaceDealParty++;
  if (buildCounterMarketplaceDealParty < 3) {
    o.buyer = buildBuyer();
    o.seller = buildSeller();
  }
  buildCounterMarketplaceDealParty--;
  return o;
}

checkMarketplaceDealParty(api.MarketplaceDealParty o) {
  buildCounterMarketplaceDealParty++;
  if (buildCounterMarketplaceDealParty < 3) {
    checkBuyer(o.buyer);
    checkSeller(o.seller);
  }
  buildCounterMarketplaceDealParty--;
}

core.int buildCounterMarketplaceLabel = 0;
buildMarketplaceLabel() {
  var o = new api.MarketplaceLabel();
  buildCounterMarketplaceLabel++;
  if (buildCounterMarketplaceLabel < 3) {
    o.accountId = "foo";
    o.createTimeMs = "foo";
    o.deprecatedMarketplaceDealParty = buildMarketplaceDealParty();
    o.label = "foo";
  }
  buildCounterMarketplaceLabel--;
  return o;
}

checkMarketplaceLabel(api.MarketplaceLabel o) {
  buildCounterMarketplaceLabel++;
  if (buildCounterMarketplaceLabel < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.createTimeMs, unittest.equals('foo'));
    checkMarketplaceDealParty(o.deprecatedMarketplaceDealParty);
    unittest.expect(o.label, unittest.equals('foo'));
  }
  buildCounterMarketplaceLabel--;
}

core.int buildCounterMarketplaceNote = 0;
buildMarketplaceNote() {
  var o = new api.MarketplaceNote();
  buildCounterMarketplaceNote++;
  if (buildCounterMarketplaceNote < 3) {
    o.creatorRole = "foo";
    o.dealId = "foo";
    o.kind = "foo";
    o.note = "foo";
    o.noteId = "foo";
    o.proposalId = "foo";
    o.proposalRevisionNumber = "foo";
    o.timestampMs = "foo";
  }
  buildCounterMarketplaceNote--;
  return o;
}

checkMarketplaceNote(api.MarketplaceNote o) {
  buildCounterMarketplaceNote++;
  if (buildCounterMarketplaceNote < 3) {
    unittest.expect(o.creatorRole, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    unittest.expect(o.noteId, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.timestampMs, unittest.equals('foo'));
  }
  buildCounterMarketplaceNote--;
}

buildUnnamed3179() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3179(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed3180() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3180(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o[1]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed3181() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3181(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o[1]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed3182() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed3182(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o[1]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterPerformanceReport = 0;
buildPerformanceReport() {
  var o = new api.PerformanceReport();
  buildCounterPerformanceReport++;
  if (buildCounterPerformanceReport < 3) {
    o.bidRate = 42.0;
    o.bidRequestRate = 42.0;
    o.calloutStatusRate = buildUnnamed3179();
    o.cookieMatcherStatusRate = buildUnnamed3180();
    o.creativeStatusRate = buildUnnamed3181();
    o.filteredBidRate = 42.0;
    o.hostedMatchStatusRate = buildUnnamed3182();
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
    checkUnnamed3179(o.calloutStatusRate);
    checkUnnamed3180(o.cookieMatcherStatusRate);
    checkUnnamed3181(o.creativeStatusRate);
    unittest.expect(o.filteredBidRate, unittest.equals(42.0));
    checkUnnamed3182(o.hostedMatchStatusRate);
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

buildUnnamed3183() {
  var o = new core.List<api.PerformanceReport>();
  o.add(buildPerformanceReport());
  o.add(buildPerformanceReport());
  return o;
}

checkUnnamed3183(core.List<api.PerformanceReport> o) {
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
    o.performanceReport = buildUnnamed3183();
  }
  buildCounterPerformanceReportList--;
  return o;
}

checkPerformanceReportList(api.PerformanceReportList o) {
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3183(o.performanceReport);
  }
  buildCounterPerformanceReportList--;
}

buildUnnamed3184() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3184(core.List<core.String> o) {
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

buildUnnamed3185() {
  var o = new core.List<api.PretargetingConfigDimensions>();
  o.add(buildPretargetingConfigDimensions());
  o.add(buildPretargetingConfigDimensions());
  return o;
}

checkUnnamed3185(core.List<api.PretargetingConfigDimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigDimensions(o[0]);
  checkPretargetingConfigDimensions(o[1]);
}

buildUnnamed3186() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3186(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3187() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3187(core.List<core.String> o) {
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

checkPretargetingConfigExcludedPlacements(
    api.PretargetingConfigExcludedPlacements o) {
  buildCounterPretargetingConfigExcludedPlacements++;
  if (buildCounterPretargetingConfigExcludedPlacements < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigExcludedPlacements--;
}

buildUnnamed3188() {
  var o = new core.List<api.PretargetingConfigExcludedPlacements>();
  o.add(buildPretargetingConfigExcludedPlacements());
  o.add(buildPretargetingConfigExcludedPlacements());
  return o;
}

checkUnnamed3188(core.List<api.PretargetingConfigExcludedPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigExcludedPlacements(o[0]);
  checkPretargetingConfigExcludedPlacements(o[1]);
}

buildUnnamed3189() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3189(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3190() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3190(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3191() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3191(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3192() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3192(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3193() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3193(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3194() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3194(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3195() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3195(core.List<core.String> o) {
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

buildUnnamed3196() {
  var o = new core.List<api.PretargetingConfigPlacements>();
  o.add(buildPretargetingConfigPlacements());
  o.add(buildPretargetingConfigPlacements());
  return o;
}

checkUnnamed3196(core.List<api.PretargetingConfigPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigPlacements(o[0]);
  checkPretargetingConfigPlacements(o[1]);
}

buildUnnamed3197() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3197(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3198() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3198(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3199() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3199(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3200() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3200(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3201() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3201(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3202() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3202(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPretargetingConfigVideoPlayerSizes = 0;
buildPretargetingConfigVideoPlayerSizes() {
  var o = new api.PretargetingConfigVideoPlayerSizes();
  buildCounterPretargetingConfigVideoPlayerSizes++;
  if (buildCounterPretargetingConfigVideoPlayerSizes < 3) {
    o.aspectRatio = "foo";
    o.minHeight = "foo";
    o.minWidth = "foo";
  }
  buildCounterPretargetingConfigVideoPlayerSizes--;
  return o;
}

checkPretargetingConfigVideoPlayerSizes(
    api.PretargetingConfigVideoPlayerSizes o) {
  buildCounterPretargetingConfigVideoPlayerSizes++;
  if (buildCounterPretargetingConfigVideoPlayerSizes < 3) {
    unittest.expect(o.aspectRatio, unittest.equals('foo'));
    unittest.expect(o.minHeight, unittest.equals('foo'));
    unittest.expect(o.minWidth, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigVideoPlayerSizes--;
}

buildUnnamed3203() {
  var o = new core.List<api.PretargetingConfigVideoPlayerSizes>();
  o.add(buildPretargetingConfigVideoPlayerSizes());
  o.add(buildPretargetingConfigVideoPlayerSizes());
  return o;
}

checkUnnamed3203(core.List<api.PretargetingConfigVideoPlayerSizes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigVideoPlayerSizes(o[0]);
  checkPretargetingConfigVideoPlayerSizes(o[1]);
}

core.int buildCounterPretargetingConfig = 0;
buildPretargetingConfig() {
  var o = new api.PretargetingConfig();
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    o.billingId = "foo";
    o.configId = "foo";
    o.configName = "foo";
    o.creativeType = buildUnnamed3184();
    o.dimensions = buildUnnamed3185();
    o.excludedContentLabels = buildUnnamed3186();
    o.excludedGeoCriteriaIds = buildUnnamed3187();
    o.excludedPlacements = buildUnnamed3188();
    o.excludedUserLists = buildUnnamed3189();
    o.excludedVerticals = buildUnnamed3190();
    o.geoCriteriaIds = buildUnnamed3191();
    o.isActive = true;
    o.kind = "foo";
    o.languages = buildUnnamed3192();
    o.minimumViewabilityDecile = 42;
    o.mobileCarriers = buildUnnamed3193();
    o.mobileDevices = buildUnnamed3194();
    o.mobileOperatingSystemVersions = buildUnnamed3195();
    o.placements = buildUnnamed3196();
    o.platforms = buildUnnamed3197();
    o.supportedCreativeAttributes = buildUnnamed3198();
    o.userIdentifierDataRequired = buildUnnamed3199();
    o.userLists = buildUnnamed3200();
    o.vendorTypes = buildUnnamed3201();
    o.verticals = buildUnnamed3202();
    o.videoPlayerSizes = buildUnnamed3203();
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
    checkUnnamed3184(o.creativeType);
    checkUnnamed3185(o.dimensions);
    checkUnnamed3186(o.excludedContentLabels);
    checkUnnamed3187(o.excludedGeoCriteriaIds);
    checkUnnamed3188(o.excludedPlacements);
    checkUnnamed3189(o.excludedUserLists);
    checkUnnamed3190(o.excludedVerticals);
    checkUnnamed3191(o.geoCriteriaIds);
    unittest.expect(o.isActive, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3192(o.languages);
    unittest.expect(o.minimumViewabilityDecile, unittest.equals(42));
    checkUnnamed3193(o.mobileCarriers);
    checkUnnamed3194(o.mobileDevices);
    checkUnnamed3195(o.mobileOperatingSystemVersions);
    checkUnnamed3196(o.placements);
    checkUnnamed3197(o.platforms);
    checkUnnamed3198(o.supportedCreativeAttributes);
    checkUnnamed3199(o.userIdentifierDataRequired);
    checkUnnamed3200(o.userLists);
    checkUnnamed3201(o.vendorTypes);
    checkUnnamed3202(o.verticals);
    checkUnnamed3203(o.videoPlayerSizes);
  }
  buildCounterPretargetingConfig--;
}

buildUnnamed3204() {
  var o = new core.List<api.PretargetingConfig>();
  o.add(buildPretargetingConfig());
  o.add(buildPretargetingConfig());
  return o;
}

checkUnnamed3204(core.List<api.PretargetingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfig(o[0]);
  checkPretargetingConfig(o[1]);
}

core.int buildCounterPretargetingConfigList = 0;
buildPretargetingConfigList() {
  var o = new api.PretargetingConfigList();
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    o.items = buildUnnamed3204();
    o.kind = "foo";
  }
  buildCounterPretargetingConfigList--;
  return o;
}

checkPretargetingConfigList(api.PretargetingConfigList o) {
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    checkUnnamed3204(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPretargetingConfigList--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 42.0;
    o.currencyCode = "foo";
    o.expectedCpmMicros = 42.0;
    o.pricingType = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros, unittest.equals(42.0));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.expectedCpmMicros, unittest.equals(42.0));
    unittest.expect(o.pricingType, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterPricePerBuyer = 0;
buildPricePerBuyer() {
  var o = new api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.auctionTier = "foo";
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    unittest.expect(o.auctionTier, unittest.equals('foo'));
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    checkPrice(o.price);
  }
  buildCounterPricePerBuyer--;
}

core.int buildCounterPrivateData = 0;
buildPrivateData() {
  var o = new api.PrivateData();
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    o.referenceId = "foo";
    o.referencePayload = "foo";
  }
  buildCounterPrivateData--;
  return o;
}

checkPrivateData(api.PrivateData o) {
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    unittest.expect(o.referenceId, unittest.equals('foo'));
    unittest.expect(o.referencePayload, unittest.equals('foo'));
  }
  buildCounterPrivateData--;
}

buildUnnamed3205() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed3205(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed3206() {
  var o = new core.List<api.MarketplaceLabel>();
  o.add(buildMarketplaceLabel());
  o.add(buildMarketplaceLabel());
  return o;
}

checkUnnamed3206(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

buildUnnamed3207() {
  var o = new core.List<api.SharedTargeting>();
  o.add(buildSharedTargeting());
  o.add(buildSharedTargeting());
  return o;
}

checkUnnamed3207(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.creationTimeMs = "foo";
    o.creatorContacts = buildUnnamed3205();
    o.creatorRole = "foo";
    o.deliveryControl = buildDeliveryControl();
    o.flightEndTimeMs = "foo";
    o.flightStartTimeMs = "foo";
    o.hasCreatorSignedOff = true;
    o.inventorySource = "foo";
    o.kind = "foo";
    o.labels = buildUnnamed3206();
    o.lastUpdateTimeMs = "foo";
    o.legacyOfferId = "foo";
    o.marketplacePublisherProfileId = "foo";
    o.name = "foo";
    o.privateAuctionId = "foo";
    o.productId = "foo";
    o.publisherProfileId = "foo";
    o.publisherProvidedForecast = buildPublisherProvidedForecast();
    o.revisionNumber = "foo";
    o.seller = buildSeller();
    o.sharedTargetings = buildUnnamed3207();
    o.state = "foo";
    o.syndicationProduct = "foo";
    o.terms = buildDealTerms();
    o.webPropertyCode = "foo";
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    unittest.expect(o.creationTimeMs, unittest.equals('foo'));
    checkUnnamed3205(o.creatorContacts);
    unittest.expect(o.creatorRole, unittest.equals('foo'));
    checkDeliveryControl(o.deliveryControl);
    unittest.expect(o.flightEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.flightStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.hasCreatorSignedOff, unittest.isTrue);
    unittest.expect(o.inventorySource, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3206(o.labels);
    unittest.expect(o.lastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.legacyOfferId, unittest.equals('foo'));
    unittest.expect(o.marketplacePublisherProfileId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.privateAuctionId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.publisherProfileId, unittest.equals('foo'));
    checkPublisherProvidedForecast(o.publisherProvidedForecast);
    unittest.expect(o.revisionNumber, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed3207(o.sharedTargetings);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkDealTerms(o.terms);
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

buildUnnamed3208() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed3208(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed3209() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3209(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3210() {
  var o = new core.List<api.MarketplaceLabel>();
  o.add(buildMarketplaceLabel());
  o.add(buildMarketplaceLabel());
  return o;
}

checkUnnamed3210(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

buildUnnamed3211() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed3211(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.int buildCounterProposal = 0;
buildProposal() {
  var o = new api.Proposal();
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.buyerContacts = buildUnnamed3208();
    o.buyerPrivateData = buildPrivateData();
    o.dbmAdvertiserIds = buildUnnamed3209();
    o.hasBuyerSignedOff = true;
    o.hasSellerSignedOff = true;
    o.inventorySource = "foo";
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.kind = "foo";
    o.labels = buildUnnamed3210();
    o.lastUpdaterOrCommentorRole = "foo";
    o.name = "foo";
    o.negotiationId = "foo";
    o.originatorRole = "foo";
    o.privateAuctionId = "foo";
    o.proposalId = "foo";
    o.proposalState = "foo";
    o.revisionNumber = "foo";
    o.revisionTimeMs = "foo";
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed3211();
  }
  buildCounterProposal--;
  return o;
}

checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    checkUnnamed3208(o.buyerContacts);
    checkPrivateData(o.buyerPrivateData);
    checkUnnamed3209(o.dbmAdvertiserIds);
    unittest.expect(o.hasBuyerSignedOff, unittest.isTrue);
    unittest.expect(o.hasSellerSignedOff, unittest.isTrue);
    unittest.expect(o.inventorySource, unittest.equals('foo'));
    unittest.expect(o.isRenegotiating, unittest.isTrue);
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3210(o.labels);
    unittest.expect(o.lastUpdaterOrCommentorRole, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.negotiationId, unittest.equals('foo'));
    unittest.expect(o.originatorRole, unittest.equals('foo'));
    unittest.expect(o.privateAuctionId, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    unittest.expect(o.proposalState, unittest.equals('foo'));
    unittest.expect(o.revisionNumber, unittest.equals('foo'));
    unittest.expect(o.revisionTimeMs, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed3211(o.sellerContacts);
  }
  buildCounterProposal--;
}

buildUnnamed3212() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3212(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3213() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3213(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublisherProfileApiProto = 0;
buildPublisherProfileApiProto() {
  var o = new api.PublisherProfileApiProto();
  buildCounterPublisherProfileApiProto++;
  if (buildCounterPublisherProfileApiProto < 3) {
    o.audience = "foo";
    o.buyerPitchStatement = "foo";
    o.directContact = "foo";
    o.exchange = "foo";
    o.googlePlusLink = "foo";
    o.isParent = true;
    o.isPublished = true;
    o.kind = "foo";
    o.logoUrl = "foo";
    o.mediaKitLink = "foo";
    o.name = "foo";
    o.overview = "foo";
    o.profileId = 42;
    o.programmaticContact = "foo";
    o.publisherDomains = buildUnnamed3212();
    o.publisherProfileId = "foo";
    o.publisherProvidedForecast = buildPublisherProvidedForecast();
    o.rateCardInfoLink = "foo";
    o.samplePageLink = "foo";
    o.seller = buildSeller();
    o.state = "foo";
    o.topHeadlines = buildUnnamed3213();
  }
  buildCounterPublisherProfileApiProto--;
  return o;
}

checkPublisherProfileApiProto(api.PublisherProfileApiProto o) {
  buildCounterPublisherProfileApiProto++;
  if (buildCounterPublisherProfileApiProto < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    unittest.expect(o.buyerPitchStatement, unittest.equals('foo'));
    unittest.expect(o.directContact, unittest.equals('foo'));
    unittest.expect(o.exchange, unittest.equals('foo'));
    unittest.expect(o.googlePlusLink, unittest.equals('foo'));
    unittest.expect(o.isParent, unittest.isTrue);
    unittest.expect(o.isPublished, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.logoUrl, unittest.equals('foo'));
    unittest.expect(o.mediaKitLink, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals(42));
    unittest.expect(o.programmaticContact, unittest.equals('foo'));
    checkUnnamed3212(o.publisherDomains);
    unittest.expect(o.publisherProfileId, unittest.equals('foo'));
    checkPublisherProvidedForecast(o.publisherProvidedForecast);
    unittest.expect(o.rateCardInfoLink, unittest.equals('foo'));
    unittest.expect(o.samplePageLink, unittest.equals('foo'));
    checkSeller(o.seller);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed3213(o.topHeadlines);
  }
  buildCounterPublisherProfileApiProto--;
}

buildUnnamed3214() {
  var o = new core.List<api.Dimension>();
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

checkUnnamed3214(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPublisherProvidedForecast = 0;
buildPublisherProvidedForecast() {
  var o = new api.PublisherProvidedForecast();
  buildCounterPublisherProvidedForecast++;
  if (buildCounterPublisherProvidedForecast < 3) {
    o.dimensions = buildUnnamed3214();
    o.weeklyImpressions = "foo";
    o.weeklyUniques = "foo";
  }
  buildCounterPublisherProvidedForecast--;
  return o;
}

checkPublisherProvidedForecast(api.PublisherProvidedForecast o) {
  buildCounterPublisherProvidedForecast++;
  if (buildCounterPublisherProvidedForecast < 3) {
    checkUnnamed3214(o.dimensions);
    unittest.expect(o.weeklyImpressions, unittest.equals('foo'));
    unittest.expect(o.weeklyUniques, unittest.equals('foo'));
  }
  buildCounterPublisherProvidedForecast--;
}

core.int buildCounterSeller = 0;
buildSeller() {
  var o = new api.Seller();
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    o.accountId = "foo";
    o.subAccountId = "foo";
  }
  buildCounterSeller--;
  return o;
}

checkSeller(api.Seller o) {
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.subAccountId, unittest.equals('foo'));
  }
  buildCounterSeller--;
}

buildUnnamed3215() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed3215(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

buildUnnamed3216() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed3216(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.int buildCounterSharedTargeting = 0;
buildSharedTargeting() {
  var o = new api.SharedTargeting();
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    o.exclusions = buildUnnamed3215();
    o.inclusions = buildUnnamed3216();
    o.key = "foo";
  }
  buildCounterSharedTargeting--;
  return o;
}

checkSharedTargeting(api.SharedTargeting o) {
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    checkUnnamed3215(o.exclusions);
    checkUnnamed3216(o.inclusions);
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterSharedTargeting--;
}

core.int buildCounterTargetingValue = 0;
buildTargetingValue() {
  var o = new api.TargetingValue();
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    o.creativeSizeValue = buildTargetingValueCreativeSize();
    o.dayPartTargetingValue = buildTargetingValueDayPartTargeting();
    o.demogAgeCriteriaValue = buildTargetingValueDemogAgeCriteria();
    o.demogGenderCriteriaValue = buildTargetingValueDemogGenderCriteria();
    o.longValue = "foo";
    o.stringValue = "foo";
  }
  buildCounterTargetingValue--;
  return o;
}

checkTargetingValue(api.TargetingValue o) {
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    checkTargetingValueCreativeSize(o.creativeSizeValue);
    checkTargetingValueDayPartTargeting(o.dayPartTargetingValue);
    checkTargetingValueDemogAgeCriteria(o.demogAgeCriteriaValue);
    checkTargetingValueDemogGenderCriteria(o.demogGenderCriteriaValue);
    unittest.expect(o.longValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterTargetingValue--;
}

buildUnnamed3217() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3217(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3218() {
  var o = new core.List<api.TargetingValueSize>();
  o.add(buildTargetingValueSize());
  o.add(buildTargetingValueSize());
  return o;
}

checkUnnamed3218(core.List<api.TargetingValueSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueSize(o[0]);
  checkTargetingValueSize(o[1]);
}

core.int buildCounterTargetingValueCreativeSize = 0;
buildTargetingValueCreativeSize() {
  var o = new api.TargetingValueCreativeSize();
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    o.allowedFormats = buildUnnamed3217();
    o.companionSizes = buildUnnamed3218();
    o.creativeSizeType = "foo";
    o.nativeTemplate = "foo";
    o.size = buildTargetingValueSize();
    o.skippableAdType = "foo";
  }
  buildCounterTargetingValueCreativeSize--;
  return o;
}

checkTargetingValueCreativeSize(api.TargetingValueCreativeSize o) {
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    checkUnnamed3217(o.allowedFormats);
    checkUnnamed3218(o.companionSizes);
    unittest.expect(o.creativeSizeType, unittest.equals('foo'));
    unittest.expect(o.nativeTemplate, unittest.equals('foo'));
    checkTargetingValueSize(o.size);
    unittest.expect(o.skippableAdType, unittest.equals('foo'));
  }
  buildCounterTargetingValueCreativeSize--;
}

buildUnnamed3219() {
  var o = new core.List<api.TargetingValueDayPartTargetingDayPart>();
  o.add(buildTargetingValueDayPartTargetingDayPart());
  o.add(buildTargetingValueDayPartTargetingDayPart());
  return o;
}

checkUnnamed3219(core.List<api.TargetingValueDayPartTargetingDayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueDayPartTargetingDayPart(o[0]);
  checkTargetingValueDayPartTargetingDayPart(o[1]);
}

core.int buildCounterTargetingValueDayPartTargeting = 0;
buildTargetingValueDayPartTargeting() {
  var o = new api.TargetingValueDayPartTargeting();
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    o.dayParts = buildUnnamed3219();
    o.timeZoneType = "foo";
  }
  buildCounterTargetingValueDayPartTargeting--;
  return o;
}

checkTargetingValueDayPartTargeting(api.TargetingValueDayPartTargeting o) {
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    checkUnnamed3219(o.dayParts);
    unittest.expect(o.timeZoneType, unittest.equals('foo'));
  }
  buildCounterTargetingValueDayPartTargeting--;
}

core.int buildCounterTargetingValueDayPartTargetingDayPart = 0;
buildTargetingValueDayPartTargetingDayPart() {
  var o = new api.TargetingValueDayPartTargetingDayPart();
  buildCounterTargetingValueDayPartTargetingDayPart++;
  if (buildCounterTargetingValueDayPartTargetingDayPart < 3) {
    o.dayOfWeek = "foo";
    o.endHour = 42;
    o.endMinute = 42;
    o.startHour = 42;
    o.startMinute = 42;
  }
  buildCounterTargetingValueDayPartTargetingDayPart--;
  return o;
}

checkTargetingValueDayPartTargetingDayPart(
    api.TargetingValueDayPartTargetingDayPart o) {
  buildCounterTargetingValueDayPartTargetingDayPart++;
  if (buildCounterTargetingValueDayPartTargetingDayPart < 3) {
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    unittest.expect(o.endHour, unittest.equals(42));
    unittest.expect(o.endMinute, unittest.equals(42));
    unittest.expect(o.startHour, unittest.equals(42));
    unittest.expect(o.startMinute, unittest.equals(42));
  }
  buildCounterTargetingValueDayPartTargetingDayPart--;
}

buildUnnamed3220() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3220(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetingValueDemogAgeCriteria = 0;
buildTargetingValueDemogAgeCriteria() {
  var o = new api.TargetingValueDemogAgeCriteria();
  buildCounterTargetingValueDemogAgeCriteria++;
  if (buildCounterTargetingValueDemogAgeCriteria < 3) {
    o.demogAgeCriteriaIds = buildUnnamed3220();
  }
  buildCounterTargetingValueDemogAgeCriteria--;
  return o;
}

checkTargetingValueDemogAgeCriteria(api.TargetingValueDemogAgeCriteria o) {
  buildCounterTargetingValueDemogAgeCriteria++;
  if (buildCounterTargetingValueDemogAgeCriteria < 3) {
    checkUnnamed3220(o.demogAgeCriteriaIds);
  }
  buildCounterTargetingValueDemogAgeCriteria--;
}

buildUnnamed3221() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3221(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetingValueDemogGenderCriteria = 0;
buildTargetingValueDemogGenderCriteria() {
  var o = new api.TargetingValueDemogGenderCriteria();
  buildCounterTargetingValueDemogGenderCriteria++;
  if (buildCounterTargetingValueDemogGenderCriteria < 3) {
    o.demogGenderCriteriaIds = buildUnnamed3221();
  }
  buildCounterTargetingValueDemogGenderCriteria--;
  return o;
}

checkTargetingValueDemogGenderCriteria(
    api.TargetingValueDemogGenderCriteria o) {
  buildCounterTargetingValueDemogGenderCriteria++;
  if (buildCounterTargetingValueDemogGenderCriteria < 3) {
    checkUnnamed3221(o.demogGenderCriteriaIds);
  }
  buildCounterTargetingValueDemogGenderCriteria--;
}

core.int buildCounterTargetingValueSize = 0;
buildTargetingValueSize() {
  var o = new api.TargetingValueSize();
  buildCounterTargetingValueSize++;
  if (buildCounterTargetingValueSize < 3) {
    o.height = 42;
    o.width = 42;
  }
  buildCounterTargetingValueSize--;
  return o;
}

checkTargetingValueSize(api.TargetingValueSize o) {
  buildCounterTargetingValueSize++;
  if (buildCounterTargetingValueSize < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterTargetingValueSize--;
}

core.int buildCounterUpdatePrivateAuctionProposalRequest = 0;
buildUpdatePrivateAuctionProposalRequest() {
  var o = new api.UpdatePrivateAuctionProposalRequest();
  buildCounterUpdatePrivateAuctionProposalRequest++;
  if (buildCounterUpdatePrivateAuctionProposalRequest < 3) {
    o.externalDealId = "foo";
    o.note = buildMarketplaceNote();
    o.proposalRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterUpdatePrivateAuctionProposalRequest--;
  return o;
}

checkUpdatePrivateAuctionProposalRequest(
    api.UpdatePrivateAuctionProposalRequest o) {
  buildCounterUpdatePrivateAuctionProposalRequest++;
  if (buildCounterUpdatePrivateAuctionProposalRequest < 3) {
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    checkMarketplaceNote(o.note);
    unittest.expect(o.proposalRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterUpdatePrivateAuctionProposalRequest--;
}

buildUnnamed3222() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3222(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3223() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3223(core.List<core.String> o) {
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

  unittest.group("obj-schema-AddOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderDealsRequest();
      var od = new api.AddOrderDealsRequest.fromJson(o.toJson());
      checkAddOrderDealsRequest(od);
    });
  });

  unittest.group("obj-schema-AddOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderDealsResponse();
      var od = new api.AddOrderDealsResponse.fromJson(o.toJson());
      checkAddOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-AddOrderNotesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderNotesRequest();
      var od = new api.AddOrderNotesRequest.fromJson(o.toJson());
      checkAddOrderNotesRequest(od);
    });
  });

  unittest.group("obj-schema-AddOrderNotesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddOrderNotesResponse();
      var od = new api.AddOrderNotesResponse.fromJson(o.toJson());
      checkAddOrderNotesResponse(od);
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

  unittest.group("obj-schema-Buyer", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuyer();
      var od = new api.Buyer.fromJson(o.toJson());
      checkBuyer(od);
    });
  });

  unittest.group("obj-schema-ContactInformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactInformation();
      var od = new api.ContactInformation.fromJson(o.toJson());
      checkContactInformation(od);
    });
  });

  unittest.group("obj-schema-CreateOrdersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateOrdersRequest();
      var od = new api.CreateOrdersRequest.fromJson(o.toJson());
      checkCreateOrdersRequest(od);
    });
  });

  unittest.group("obj-schema-CreateOrdersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateOrdersResponse();
      var od = new api.CreateOrdersResponse.fromJson(o.toJson());
      checkCreateOrdersResponse(od);
    });
  });

  unittest.group("obj-schema-CreativeCorrectionsContexts", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeCorrectionsContexts();
      var od = new api.CreativeCorrectionsContexts.fromJson(o.toJson());
      checkCreativeCorrectionsContexts(od);
    });
  });

  unittest.group("obj-schema-CreativeCorrections", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeCorrections();
      var od = new api.CreativeCorrections.fromJson(o.toJson());
      checkCreativeCorrections(od);
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

  unittest.group("obj-schema-CreativeServingRestrictionsContexts", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictionsContexts();
      var od = new api.CreativeServingRestrictionsContexts.fromJson(o.toJson());
      checkCreativeServingRestrictionsContexts(od);
    });
  });

  unittest.group("obj-schema-CreativeServingRestrictionsDisapprovalReasons",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictionsDisapprovalReasons();
      var od = new api.CreativeServingRestrictionsDisapprovalReasons.fromJson(
          o.toJson());
      checkCreativeServingRestrictionsDisapprovalReasons(od);
    });
  });

  unittest.group("obj-schema-CreativeServingRestrictions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictions();
      var od = new api.CreativeServingRestrictions.fromJson(o.toJson());
      checkCreativeServingRestrictions(od);
    });
  });

  unittest.group("obj-schema-Creative", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreative();
      var od = new api.Creative.fromJson(o.toJson());
      checkCreative(od);
    });
  });

  unittest.group("obj-schema-CreativeDealIdsDealStatuses", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeDealIdsDealStatuses();
      var od = new api.CreativeDealIdsDealStatuses.fromJson(o.toJson());
      checkCreativeDealIdsDealStatuses(od);
    });
  });

  unittest.group("obj-schema-CreativeDealIds", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeDealIds();
      var od = new api.CreativeDealIds.fromJson(o.toJson());
      checkCreativeDealIds(od);
    });
  });

  unittest.group("obj-schema-CreativesList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativesList();
      var od = new api.CreativesList.fromJson(o.toJson());
      checkCreativesList(od);
    });
  });

  unittest.group("obj-schema-DealServingMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealServingMetadata();
      var od = new api.DealServingMetadata.fromJson(o.toJson());
      checkDealServingMetadata(od);
    });
  });

  unittest.group("obj-schema-DealServingMetadataDealPauseStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealServingMetadataDealPauseStatus();
      var od = new api.DealServingMetadataDealPauseStatus.fromJson(o.toJson());
      checkDealServingMetadataDealPauseStatus(od);
    });
  });

  unittest.group("obj-schema-DealTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTerms();
      var od = new api.DealTerms.fromJson(o.toJson());
      checkDealTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsGuaranteedFixedPriceTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsGuaranteedFixedPriceTerms();
      var od = new api.DealTermsGuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkDealTermsGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsGuaranteedFixedPriceTermsBillingInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsGuaranteedFixedPriceTermsBillingInfo();
      var od = new api.DealTermsGuaranteedFixedPriceTermsBillingInfo.fromJson(
          o.toJson());
      checkDealTermsGuaranteedFixedPriceTermsBillingInfo(od);
    });
  });

  unittest.group("obj-schema-DealTermsNonGuaranteedAuctionTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsNonGuaranteedAuctionTerms();
      var od = new api.DealTermsNonGuaranteedAuctionTerms.fromJson(o.toJson());
      checkDealTermsNonGuaranteedAuctionTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsNonGuaranteedFixedPriceTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsNonGuaranteedFixedPriceTerms();
      var od =
          new api.DealTermsNonGuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkDealTermsNonGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group("obj-schema-DealTermsRubiconNonGuaranteedTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTermsRubiconNonGuaranteedTerms();
      var od = new api.DealTermsRubiconNonGuaranteedTerms.fromJson(o.toJson());
      checkDealTermsRubiconNonGuaranteedTerms(od);
    });
  });

  unittest.group("obj-schema-DeleteOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteOrderDealsRequest();
      var od = new api.DeleteOrderDealsRequest.fromJson(o.toJson());
      checkDeleteOrderDealsRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteOrderDealsResponse();
      var od = new api.DeleteOrderDealsResponse.fromJson(o.toJson());
      checkDeleteOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-DeliveryControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryControl();
      var od = new api.DeliveryControl.fromJson(o.toJson());
      checkDeliveryControl(od);
    });
  });

  unittest.group("obj-schema-DeliveryControlFrequencyCap", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryControlFrequencyCap();
      var od = new api.DeliveryControlFrequencyCap.fromJson(o.toJson());
      checkDeliveryControlFrequencyCap(od);
    });
  });

  unittest.group("obj-schema-Dimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimension();
      var od = new api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group("obj-schema-DimensionDimensionValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimensionDimensionValue();
      var od = new api.DimensionDimensionValue.fromJson(o.toJson());
      checkDimensionDimensionValue(od);
    });
  });

  unittest.group("obj-schema-EditAllOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEditAllOrderDealsRequest();
      var od = new api.EditAllOrderDealsRequest.fromJson(o.toJson());
      checkEditAllOrderDealsRequest(od);
    });
  });

  unittest.group("obj-schema-EditAllOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEditAllOrderDealsResponse();
      var od = new api.EditAllOrderDealsResponse.fromJson(o.toJson());
      checkEditAllOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-GetOffersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOffersResponse();
      var od = new api.GetOffersResponse.fromJson(o.toJson());
      checkGetOffersResponse(od);
    });
  });

  unittest.group("obj-schema-GetOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrderDealsResponse();
      var od = new api.GetOrderDealsResponse.fromJson(o.toJson());
      checkGetOrderDealsResponse(od);
    });
  });

  unittest.group("obj-schema-GetOrderNotesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrderNotesResponse();
      var od = new api.GetOrderNotesResponse.fromJson(o.toJson());
      checkGetOrderNotesResponse(od);
    });
  });

  unittest.group("obj-schema-GetOrdersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrdersResponse();
      var od = new api.GetOrdersResponse.fromJson(o.toJson());
      checkGetOrdersResponse(od);
    });
  });

  unittest.group("obj-schema-GetPublisherProfilesByAccountIdResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPublisherProfilesByAccountIdResponse();
      var od =
          new api.GetPublisherProfilesByAccountIdResponse.fromJson(o.toJson());
      checkGetPublisherProfilesByAccountIdResponse(od);
    });
  });

  unittest.group("obj-schema-MarketplaceDeal", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceDeal();
      var od = new api.MarketplaceDeal.fromJson(o.toJson());
      checkMarketplaceDeal(od);
    });
  });

  unittest.group("obj-schema-MarketplaceDealParty", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceDealParty();
      var od = new api.MarketplaceDealParty.fromJson(o.toJson());
      checkMarketplaceDealParty(od);
    });
  });

  unittest.group("obj-schema-MarketplaceLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceLabel();
      var od = new api.MarketplaceLabel.fromJson(o.toJson());
      checkMarketplaceLabel(od);
    });
  });

  unittest.group("obj-schema-MarketplaceNote", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceNote();
      var od = new api.MarketplaceNote.fromJson(o.toJson());
      checkMarketplaceNote(od);
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
      var od =
          new api.PretargetingConfigExcludedPlacements.fromJson(o.toJson());
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

  unittest.group("obj-schema-PretargetingConfigVideoPlayerSizes", () {
    unittest.test("to-json--from-json", () {
      var o = buildPretargetingConfigVideoPlayerSizes();
      var od = new api.PretargetingConfigVideoPlayerSizes.fromJson(o.toJson());
      checkPretargetingConfigVideoPlayerSizes(od);
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

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-PricePerBuyer", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricePerBuyer();
      var od = new api.PricePerBuyer.fromJson(o.toJson());
      checkPricePerBuyer(od);
    });
  });

  unittest.group("obj-schema-PrivateData", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivateData();
      var od = new api.PrivateData.fromJson(o.toJson());
      checkPrivateData(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-Proposal", () {
    unittest.test("to-json--from-json", () {
      var o = buildProposal();
      var od = new api.Proposal.fromJson(o.toJson());
      checkProposal(od);
    });
  });

  unittest.group("obj-schema-PublisherProfileApiProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublisherProfileApiProto();
      var od = new api.PublisherProfileApiProto.fromJson(o.toJson());
      checkPublisherProfileApiProto(od);
    });
  });

  unittest.group("obj-schema-PublisherProvidedForecast", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublisherProvidedForecast();
      var od = new api.PublisherProvidedForecast.fromJson(o.toJson());
      checkPublisherProvidedForecast(od);
    });
  });

  unittest.group("obj-schema-Seller", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeller();
      var od = new api.Seller.fromJson(o.toJson());
      checkSeller(od);
    });
  });

  unittest.group("obj-schema-SharedTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildSharedTargeting();
      var od = new api.SharedTargeting.fromJson(o.toJson());
      checkSharedTargeting(od);
    });
  });

  unittest.group("obj-schema-TargetingValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValue();
      var od = new api.TargetingValue.fromJson(o.toJson());
      checkTargetingValue(od);
    });
  });

  unittest.group("obj-schema-TargetingValueCreativeSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueCreativeSize();
      var od = new api.TargetingValueCreativeSize.fromJson(o.toJson());
      checkTargetingValueCreativeSize(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDayPartTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDayPartTargeting();
      var od = new api.TargetingValueDayPartTargeting.fromJson(o.toJson());
      checkTargetingValueDayPartTargeting(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDayPartTargetingDayPart", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDayPartTargetingDayPart();
      var od =
          new api.TargetingValueDayPartTargetingDayPart.fromJson(o.toJson());
      checkTargetingValueDayPartTargetingDayPart(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDemogAgeCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDemogAgeCriteria();
      var od = new api.TargetingValueDemogAgeCriteria.fromJson(o.toJson());
      checkTargetingValueDemogAgeCriteria(od);
    });
  });

  unittest.group("obj-schema-TargetingValueDemogGenderCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueDemogGenderCriteria();
      var od = new api.TargetingValueDemogGenderCriteria.fromJson(o.toJson());
      checkTargetingValueDemogGenderCriteria(od);
    });
  });

  unittest.group("obj-schema-TargetingValueSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueSize();
      var od = new api.TargetingValueSize.fromJson(o.toJson());
      checkTargetingValueSize(od);
    });
  });

  unittest.group("obj-schema-UpdatePrivateAuctionProposalRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdatePrivateAuctionProposalRequest();
      var od = new api.UpdatePrivateAuctionProposalRequest.fromJson(o.toJson());
      checkUpdatePrivateAuctionProposalRequest(od);
    });
  });

  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_id = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("accounts"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkAccountsList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_id = 42;
      var arg_confirmUnsafeAccountChange = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["confirmUnsafeAccountChange"].first,
            unittest.equals("$arg_confirmUnsafeAccountChange"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_id,
              confirmUnsafeAccountChange: arg_confirmUnsafeAccountChange,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.AdexchangebuyerApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_id = 42;
      var arg_confirmUnsafeAccountChange = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("accounts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["confirmUnsafeAccountChange"].first,
            unittest.equals("$arg_confirmUnsafeAccountChange"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_id,
              confirmUnsafeAccountChange: arg_confirmUnsafeAccountChange,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });
  });

  unittest.group("resource-BillingInfoResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BillingInfoResourceApi res =
          new api.AdexchangebuyerApi(mock).billingInfo;
      var arg_accountId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingInfo(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BillingInfoResourceApi res =
          new api.AdexchangebuyerApi(mock).billingInfo;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("billinginfo"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingInfoList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
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
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_billingId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBudget(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_request = buildBudget();
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Budget.fromJson(json);
        checkBudget(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_billingId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBudget(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.BudgetResourceApi res = new api.AdexchangebuyerApi(mock).budget;
      var arg_request = buildBudget();
      var arg_accountId = "foo";
      var arg_billingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Budget.fromJson(json);
        checkBudget(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("billinginfo/"));
        pathOffset += 12;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_billingId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBudget());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_billingId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBudget(response);
      })));
    });
  });

  unittest.group("resource-CreativesResourceApi", () {
    unittest.test("method--addDeal", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_dealId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/addDeal/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/addDeal/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dealId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addDeal(arg_accountId, arg_buyerCreativeId, arg_dealId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_buyerCreativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_request = buildCreative();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("creatives"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = buildUnnamed3222();
      var arg_buyerCreativeId = buildUnnamed3223();
      var arg_dealsStatusFilter = "foo";
      var arg_maxResults = 42;
      var arg_openAuctionStatusFilter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("creatives"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["accountId"].map(core.int.parse).toList(),
            unittest.equals(arg_accountId));
        unittest.expect(
            queryMap["buyerCreativeId"], unittest.equals(arg_buyerCreativeId));
        unittest.expect(queryMap["dealsStatusFilter"].first,
            unittest.equals(arg_dealsStatusFilter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["openAuctionStatusFilter"].first,
            unittest.equals(arg_openAuctionStatusFilter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreativesList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              accountId: arg_accountId,
              buyerCreativeId: arg_buyerCreativeId,
              dealsStatusFilter: arg_dealsStatusFilter,
              maxResults: arg_maxResults,
              openAuctionStatusFilter: arg_openAuctionStatusFilter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativesList(response);
      })));
    });

    unittest.test("method--listDeals", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/listDeals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listDeals"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreativeDealIds());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listDeals(arg_accountId, arg_buyerCreativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeDealIds(response);
      })));
    });

    unittest.test("method--removeDeal", () {
      var mock = new HttpServerMock();
      api.CreativesResourceApi res = new api.AdexchangebuyerApi(mock).creatives;
      var arg_accountId = 42;
      var arg_buyerCreativeId = "foo";
      var arg_dealId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("creatives/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/removeDeal/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_buyerCreativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/removeDeal/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dealId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeDeal(arg_accountId, arg_buyerCreativeId, arg_dealId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-MarketplacedealsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildDeleteOrderDealsRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeleteOrderDealsRequest.fromJson(json);
        checkDeleteOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals/delete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deals/delete"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeleteOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteOrderDealsResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildAddOrderDealsRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddOrderDealsRequest.fromJson(json);
        checkAddOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals/insert", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deals/insert"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAddOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAddOrderDealsResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_proposalId = "foo";
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/deals"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_proposalId, pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOrderDealsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildEditAllOrderDealsRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EditAllOrderDealsRequest.fromJson(json);
        checkEditAllOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/deals/update", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deals/update"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEditAllOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEditAllOrderDealsResponse(response);
      })));
    });
  });

  unittest.group("resource-MarketplacenotesResourceApi", () {
    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.MarketplacenotesResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacenotes;
      var arg_request = buildAddOrderNotesRequest();
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddOrderNotesRequest.fromJson(json);
        checkAddOrderNotesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/notes/insert", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/notes/insert"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAddOrderNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAddOrderNotesResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MarketplacenotesResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplacenotes;
      var arg_proposalId = "foo";
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/notes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/notes"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOrderNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_proposalId, pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOrderNotesResponse(response);
      })));
    });
  });

  unittest.group("resource-MarketplaceprivateauctionResourceApi", () {
    unittest.test("method--updateproposal", () {
      var mock = new HttpServerMock();
      api.MarketplaceprivateauctionResourceApi res =
          new api.AdexchangebuyerApi(mock).marketplaceprivateauction;
      var arg_request = buildUpdatePrivateAuctionProposalRequest();
      var arg_privateAuctionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdatePrivateAuctionProposalRequest.fromJson(json);
        checkUpdatePrivateAuctionProposalRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("privateauction/"));
        pathOffset += 15;
        index = path.indexOf("/updateproposal", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_privateAuctionId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/updateproposal"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateproposal(arg_request, arg_privateAuctionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-PerformanceReportResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PerformanceReportResourceApi res =
          new api.AdexchangebuyerApi(mock).performanceReport;
      var arg_accountId = "foo";
      var arg_endDateTime = "foo";
      var arg_startDateTime = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("performancereport"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["accountId"].first, unittest.equals(arg_accountId));
        unittest.expect(
            queryMap["endDateTime"].first, unittest.equals(arg_endDateTime));
        unittest.expect(queryMap["startDateTime"].first,
            unittest.equals(arg_startDateTime));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerformanceReportList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_endDateTime, arg_startDateTime,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerformanceReportList(response);
      })));
    });
  });

  unittest.group("resource-PretargetingConfigResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_accountId, arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfigList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfigList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_configId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PretargetingConfigResourceApi res =
          new api.AdexchangebuyerApi(mock).pretargetingConfig;
      var arg_request = buildPretargetingConfig();
      var arg_accountId = "foo";
      var arg_configId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PretargetingConfig.fromJson(json);
        checkPretargetingConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("pretargetingconfigs/"));
        pathOffset += 20;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPretargetingConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_configId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPretargetingConfig(response);
      })));
    });
  });

  unittest.group("resource-ProductsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AdexchangebuyerApi(mock).products;
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("products/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_productId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AdexchangebuyerApi(mock).products;
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("products/search"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOffersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOffersResponse(response);
      })));
    });
  });

  unittest.group("resource-ProposalsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_request = buildCreateOrdersRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateOrdersRequest.fromJson(json);
        checkCreateOrdersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("proposals/insert"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreateOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateOrdersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_request = buildProposal();
      var arg_proposalId = "foo";
      var arg_revisionNumber = "foo";
      var arg_updateAction = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Proposal.fromJson(json);
        checkProposal(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_revisionNumber"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_updateAction"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(
              arg_request, arg_proposalId, arg_revisionNumber, arg_updateAction,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_pqlQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("proposals/search"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(pqlQuery: arg_pqlQuery, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetOrdersResponse(response);
      })));
    });

    unittest.test("method--setupcomplete", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/setupcomplete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/setupcomplete"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setupcomplete(arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProposalsResourceApi res = new api.AdexchangebuyerApi(mock).proposals;
      var arg_request = buildProposal();
      var arg_proposalId = "foo";
      var arg_revisionNumber = "foo";
      var arg_updateAction = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Proposal.fromJson(json);
        checkProposal(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("proposals/"));
        pathOffset += 10;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_revisionNumber"));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_updateAction"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(
              arg_request, arg_proposalId, arg_revisionNumber, arg_updateAction,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });
  });

  unittest.group("resource-PubprofilesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PubprofilesResourceApi res =
          new api.AdexchangebuyerApi(mock).pubprofiles;
      var arg_accountId = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("publisher/"));
        pathOffset += 10;
        index = path.indexOf("/profiles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/profiles"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGetPublisherProfilesByAccountIdResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetPublisherProfilesByAccountIdResponse(response);
      })));
    });
  });
}
