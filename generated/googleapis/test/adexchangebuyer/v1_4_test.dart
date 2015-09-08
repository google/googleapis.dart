library googleapis.adexchangebuyer.v1_4.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

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

buildUnnamed45() {
  var o = new core.List<api.AccountBidderLocation>();
  o.add(buildAccountBidderLocation());
  o.add(buildAccountBidderLocation());
  return o;
}

checkUnnamed45(core.List<api.AccountBidderLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountBidderLocation(o[0]);
  checkAccountBidderLocation(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.bidderLocation = buildUnnamed45();
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
    checkUnnamed45(o.bidderLocation);
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

buildUnnamed46() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed46(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsList = 0;
buildAccountsList() {
  var o = new api.AccountsList();
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    o.items = buildUnnamed46();
    o.kind = "foo";
  }
  buildCounterAccountsList--;
  return o;
}

checkAccountsList(api.AccountsList o) {
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    checkUnnamed46(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsList--;
}

core.int buildCounterAdSize = 0;
buildAdSize() {
  var o = new api.AdSize();
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    o.height = 42;
    o.width = 42;
  }
  buildCounterAdSize--;
  return o;
}

checkAdSize(api.AdSize o) {
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterAdSize--;
}

core.int buildCounterAdSlotDto = 0;
buildAdSlotDto() {
  var o = new api.AdSlotDto();
  buildCounterAdSlotDto++;
  if (buildCounterAdSlotDto < 3) {
    o.channelCode = "foo";
    o.channelId = 42;
    o.description = "foo";
    o.name = "foo";
    o.size = "foo";
    o.webPropertyId = 42;
  }
  buildCounterAdSlotDto--;
  return o;
}

checkAdSlotDto(api.AdSlotDto o) {
  buildCounterAdSlotDto++;
  if (buildCounterAdSlotDto < 3) {
    unittest.expect(o.channelCode, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals(42));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.webPropertyId, unittest.equals(42));
  }
  buildCounterAdSlotDto--;
}

buildUnnamed47() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed47(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsRequest = 0;
buildAddOrderDealsRequest() {
  var o = new api.AddOrderDealsRequest();
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    o.deals = buildUnnamed47();
    o.orderRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterAddOrderDealsRequest--;
  return o;
}

checkAddOrderDealsRequest(api.AddOrderDealsRequest o) {
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    checkUnnamed47(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterAddOrderDealsRequest--;
}

buildUnnamed48() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed48(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsResponse = 0;
buildAddOrderDealsResponse() {
  var o = new api.AddOrderDealsResponse();
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    o.deals = buildUnnamed48();
    o.orderRevisionNumber = "foo";
  }
  buildCounterAddOrderDealsResponse--;
  return o;
}

checkAddOrderDealsResponse(api.AddOrderDealsResponse o) {
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    checkUnnamed48(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
  }
  buildCounterAddOrderDealsResponse--;
}

buildUnnamed49() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed49(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesRequest = 0;
buildAddOrderNotesRequest() {
  var o = new api.AddOrderNotesRequest();
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    o.notes = buildUnnamed49();
  }
  buildCounterAddOrderNotesRequest--;
  return o;
}

checkAddOrderNotesRequest(api.AddOrderNotesRequest o) {
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    checkUnnamed49(o.notes);
  }
  buildCounterAddOrderNotesRequest--;
}

buildUnnamed50() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed50(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesResponse = 0;
buildAddOrderNotesResponse() {
  var o = new api.AddOrderNotesResponse();
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    o.notes = buildUnnamed50();
  }
  buildCounterAddOrderNotesResponse--;
  return o;
}

checkAddOrderNotesResponse(api.AddOrderNotesResponse o) {
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    checkUnnamed50(o.notes);
  }
  buildCounterAddOrderNotesResponse--;
}

buildUnnamed51() {
  var o = new core.List<api.BrandDto>();
  o.add(buildBrandDto());
  o.add(buildBrandDto());
  return o;
}

checkUnnamed51(core.List<api.BrandDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrandDto(o[0]);
  checkBrandDto(o[1]);
}

core.int buildCounterAdvertiserDto = 0;
buildAdvertiserDto() {
  var o = new api.AdvertiserDto();
  buildCounterAdvertiserDto++;
  if (buildCounterAdvertiserDto < 3) {
    o.brands = buildUnnamed51();
    o.id = "foo";
    o.name = "foo";
    o.status = "foo";
  }
  buildCounterAdvertiserDto--;
  return o;
}

checkAdvertiserDto(api.AdvertiserDto o) {
  buildCounterAdvertiserDto++;
  if (buildCounterAdvertiserDto < 3) {
    checkUnnamed51(o.brands);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAdvertiserDto--;
}

core.int buildCounterAudienceSegment = 0;
buildAudienceSegment() {
  var o = new api.AudienceSegment();
  buildCounterAudienceSegment++;
  if (buildCounterAudienceSegment < 3) {
    o.description = "foo";
    o.id = "foo";
    o.name = "foo";
    o.numCookies = "foo";
  }
  buildCounterAudienceSegment--;
  return o;
}

checkAudienceSegment(api.AudienceSegment o) {
  buildCounterAudienceSegment++;
  if (buildCounterAudienceSegment < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.numCookies, unittest.equals('foo'));
  }
  buildCounterAudienceSegment--;
}

buildUnnamed52() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed52(core.List<core.String> o) {
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
    o.billingId = buildUnnamed52();
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
    checkUnnamed52(o.billingId);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfo--;
}

buildUnnamed53() {
  var o = new core.List<api.BillingInfo>();
  o.add(buildBillingInfo());
  o.add(buildBillingInfo());
  return o;
}

checkUnnamed53(core.List<api.BillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingInfo(o[0]);
  checkBillingInfo(o[1]);
}

core.int buildCounterBillingInfoList = 0;
buildBillingInfoList() {
  var o = new api.BillingInfoList();
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    o.items = buildUnnamed53();
    o.kind = "foo";
  }
  buildCounterBillingInfoList--;
  return o;
}

checkBillingInfoList(api.BillingInfoList o) {
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    checkUnnamed53(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBillingInfoList--;
}

core.int buildCounterBrandDto = 0;
buildBrandDto() {
  var o = new api.BrandDto();
  buildCounterBrandDto++;
  if (buildCounterBrandDto < 3) {
    o.advertiserId = "foo";
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterBrandDto--;
  return o;
}

checkBrandDto(api.BrandDto o) {
  buildCounterBrandDto++;
  if (buildCounterBrandDto < 3) {
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterBrandDto--;
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

core.int buildCounterBuyerDto = 0;
buildBuyerDto() {
  var o = new api.BuyerDto();
  buildCounterBuyerDto++;
  if (buildCounterBuyerDto < 3) {
    o.accountId = 42;
    o.customerId = 42;
    o.displayName = "foo";
    o.enabledForInterestTargetingDeals = true;
    o.enabledForPreferredDeals = true;
    o.id = 42;
    o.sponsorAccountId = 42;
  }
  buildCounterBuyerDto--;
  return o;
}

checkBuyerDto(api.BuyerDto o) {
  buildCounterBuyerDto++;
  if (buildCounterBuyerDto < 3) {
    unittest.expect(o.accountId, unittest.equals(42));
    unittest.expect(o.customerId, unittest.equals(42));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enabledForInterestTargetingDeals, unittest.isTrue);
    unittest.expect(o.enabledForPreferredDeals, unittest.isTrue);
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.sponsorAccountId, unittest.equals(42));
  }
  buildCounterBuyerDto--;
}

buildUnnamed54() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed54(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterClientAccessCapabilities = 0;
buildClientAccessCapabilities() {
  var o = new api.ClientAccessCapabilities();
  buildCounterClientAccessCapabilities++;
  if (buildCounterClientAccessCapabilities < 3) {
    o.capabilities = buildUnnamed54();
    o.clientAccountId = "foo";
  }
  buildCounterClientAccessCapabilities--;
  return o;
}

checkClientAccessCapabilities(api.ClientAccessCapabilities o) {
  buildCounterClientAccessCapabilities++;
  if (buildCounterClientAccessCapabilities < 3) {
    checkUnnamed54(o.capabilities);
    unittest.expect(o.clientAccountId, unittest.equals('foo'));
  }
  buildCounterClientAccessCapabilities--;
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

buildUnnamed55() {
  var o = new core.List<api.MarketplaceOrder>();
  o.add(buildMarketplaceOrder());
  o.add(buildMarketplaceOrder());
  return o;
}

checkUnnamed55(core.List<api.MarketplaceOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceOrder(o[0]);
  checkMarketplaceOrder(o[1]);
}

core.int buildCounterCreateOrdersRequest = 0;
buildCreateOrdersRequest() {
  var o = new api.CreateOrdersRequest();
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    o.orders = buildUnnamed55();
  }
  buildCounterCreateOrdersRequest--;
  return o;
}

checkCreateOrdersRequest(api.CreateOrdersRequest o) {
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    checkUnnamed55(o.orders);
  }
  buildCounterCreateOrdersRequest--;
}

buildUnnamed56() {
  var o = new core.List<api.MarketplaceOrder>();
  o.add(buildMarketplaceOrder());
  o.add(buildMarketplaceOrder());
  return o;
}

checkUnnamed56(core.List<api.MarketplaceOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceOrder(o[0]);
  checkMarketplaceOrder(o[1]);
}

core.int buildCounterCreateOrdersResponse = 0;
buildCreateOrdersResponse() {
  var o = new api.CreateOrdersResponse();
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    o.orders = buildUnnamed56();
  }
  buildCounterCreateOrdersResponse--;
  return o;
}

checkCreateOrdersResponse(api.CreateOrdersResponse o) {
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    checkUnnamed56(o.orders);
  }
  buildCounterCreateOrdersResponse--;
}

buildUnnamed57() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed58() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed58(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed59() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed60() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeCorrections = 0;
buildCreativeCorrections() {
  var o = new api.CreativeCorrections();
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    o.details = buildUnnamed60();
    o.reason = "foo";
  }
  buildCounterCreativeCorrections--;
  return o;
}

checkCreativeCorrections(api.CreativeCorrections o) {
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    checkUnnamed60(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeCorrections--;
}

buildUnnamed61() {
  var o = new core.List<api.CreativeCorrections>();
  o.add(buildCreativeCorrections());
  o.add(buildCreativeCorrections());
  return o;
}

checkUnnamed61(core.List<api.CreativeCorrections> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrections(o[0]);
  checkCreativeCorrections(o[1]);
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

buildUnnamed62() {
  var o = new core.List<api.CreativeFilteringReasonsReasons>();
  o.add(buildCreativeFilteringReasonsReasons());
  o.add(buildCreativeFilteringReasonsReasons());
  return o;
}

checkUnnamed62(core.List<api.CreativeFilteringReasonsReasons> o) {
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
    o.reasons = buildUnnamed62();
  }
  buildCounterCreativeFilteringReasons--;
  return o;
}

checkCreativeFilteringReasons(api.CreativeFilteringReasons o) {
  buildCounterCreativeFilteringReasons++;
  if (buildCounterCreativeFilteringReasons < 3) {
    unittest.expect(o.date, unittest.equals('foo'));
    checkUnnamed62(o.reasons);
  }
  buildCounterCreativeFilteringReasons--;
}

buildUnnamed63() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed64() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed64(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed65() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed65(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed66() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed66(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed67() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed68() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed68(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed69() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed69(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeServingRestrictionsContexts = 0;
buildCreativeServingRestrictionsContexts() {
  var o = new api.CreativeServingRestrictionsContexts();
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    o.auctionType = buildUnnamed67();
    o.contextType = "foo";
    o.geoCriteriaId = buildUnnamed68();
    o.platform = buildUnnamed69();
  }
  buildCounterCreativeServingRestrictionsContexts--;
  return o;
}

checkCreativeServingRestrictionsContexts(api.CreativeServingRestrictionsContexts o) {
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    checkUnnamed67(o.auctionType);
    unittest.expect(o.contextType, unittest.equals('foo'));
    checkUnnamed68(o.geoCriteriaId);
    checkUnnamed69(o.platform);
  }
  buildCounterCreativeServingRestrictionsContexts--;
}

buildUnnamed70() {
  var o = new core.List<api.CreativeServingRestrictionsContexts>();
  o.add(buildCreativeServingRestrictionsContexts());
  o.add(buildCreativeServingRestrictionsContexts());
  return o;
}

checkUnnamed70(core.List<api.CreativeServingRestrictionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsContexts(o[0]);
  checkCreativeServingRestrictionsContexts(o[1]);
}

buildUnnamed71() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeServingRestrictionsDisapprovalReasons = 0;
buildCreativeServingRestrictionsDisapprovalReasons() {
  var o = new api.CreativeServingRestrictionsDisapprovalReasons();
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    o.details = buildUnnamed71();
    o.reason = "foo";
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
  return o;
}

checkCreativeServingRestrictionsDisapprovalReasons(api.CreativeServingRestrictionsDisapprovalReasons o) {
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    checkUnnamed71(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
}

buildUnnamed72() {
  var o = new core.List<api.CreativeServingRestrictionsDisapprovalReasons>();
  o.add(buildCreativeServingRestrictionsDisapprovalReasons());
  o.add(buildCreativeServingRestrictionsDisapprovalReasons());
  return o;
}

checkUnnamed72(core.List<api.CreativeServingRestrictionsDisapprovalReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsDisapprovalReasons(o[0]);
  checkCreativeServingRestrictionsDisapprovalReasons(o[1]);
}

core.int buildCounterCreativeServingRestrictions = 0;
buildCreativeServingRestrictions() {
  var o = new api.CreativeServingRestrictions();
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    o.contexts = buildUnnamed70();
    o.disapprovalReasons = buildUnnamed72();
    o.reason = "foo";
  }
  buildCounterCreativeServingRestrictions--;
  return o;
}

checkCreativeServingRestrictions(api.CreativeServingRestrictions o) {
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    checkUnnamed70(o.contexts);
    checkUnnamed72(o.disapprovalReasons);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterCreativeServingRestrictions--;
}

buildUnnamed73() {
  var o = new core.List<api.CreativeServingRestrictions>();
  o.add(buildCreativeServingRestrictions());
  o.add(buildCreativeServingRestrictions());
  return o;
}

checkUnnamed73(core.List<api.CreativeServingRestrictions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictions(o[0]);
  checkCreativeServingRestrictions(o[1]);
}

buildUnnamed74() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed74(core.List<core.int> o) {
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
    o.advertiserId = buildUnnamed57();
    o.advertiserName = "foo";
    o.agencyId = "foo";
    o.attribute = buildUnnamed58();
    o.buyerCreativeId = "foo";
    o.clickThroughUrl = buildUnnamed59();
    o.corrections = buildUnnamed61();
    o.dealsStatus = "foo";
    o.filteringReasons = buildCreativeFilteringReasons();
    o.height = 42;
    o.impressionTrackingUrl = buildUnnamed63();
    o.kind = "foo";
    o.openAuctionStatus = "foo";
    o.productCategories = buildUnnamed64();
    o.restrictedCategories = buildUnnamed65();
    o.sensitiveCategories = buildUnnamed66();
    o.servingRestrictions = buildUnnamed73();
    o.vendorType = buildUnnamed74();
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
    checkUnnamed57(o.advertiserId);
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    unittest.expect(o.agencyId, unittest.equals('foo'));
    checkUnnamed58(o.attribute);
    unittest.expect(o.buyerCreativeId, unittest.equals('foo'));
    checkUnnamed59(o.clickThroughUrl);
    checkUnnamed61(o.corrections);
    unittest.expect(o.dealsStatus, unittest.equals('foo'));
    checkCreativeFilteringReasons(o.filteringReasons);
    unittest.expect(o.height, unittest.equals(42));
    checkUnnamed63(o.impressionTrackingUrl);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.openAuctionStatus, unittest.equals('foo'));
    checkUnnamed64(o.productCategories);
    checkUnnamed65(o.restrictedCategories);
    checkUnnamed66(o.sensitiveCategories);
    checkUnnamed73(o.servingRestrictions);
    checkUnnamed74(o.vendorType);
    unittest.expect(o.version, unittest.equals(42));
    unittest.expect(o.videoURL, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterCreative--;
}

buildUnnamed75() {
  var o = new core.List<api.Creative>();
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

checkUnnamed75(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesList = 0;
buildCreativesList() {
  var o = new api.CreativesList();
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    o.items = buildUnnamed75();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCreativesList--;
  return o;
}

checkCreativesList(api.CreativesList o) {
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    checkUnnamed75(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativesList--;
}

core.int buildCounterDateTime = 0;
buildDateTime() {
  var o = new api.DateTime();
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    o.day = 42;
    o.hour = 42;
    o.minute = 42;
    o.month = 42;
    o.second = 42;
    o.timeZoneId = "foo";
    o.year = 42;
  }
  buildCounterDateTime--;
  return o;
}

checkDateTime(api.DateTime o) {
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.hour, unittest.equals(42));
    unittest.expect(o.minute, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.second, unittest.equals(42));
    unittest.expect(o.timeZoneId, unittest.equals('foo'));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDateTime--;
}

core.int buildCounterDealPartyDto = 0;
buildDealPartyDto() {
  var o = new api.DealPartyDto();
  buildCounterDealPartyDto++;
  if (buildCounterDealPartyDto < 3) {
    o.buyer = buildBuyerDto();
    o.buyerSellerRole = "foo";
    o.customerId = 42;
    o.name = "foo";
    o.webProperty = buildWebPropertyDto();
  }
  buildCounterDealPartyDto--;
  return o;
}

checkDealPartyDto(api.DealPartyDto o) {
  buildCounterDealPartyDto++;
  if (buildCounterDealPartyDto < 3) {
    checkBuyerDto(o.buyer);
    unittest.expect(o.buyerSellerRole, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkWebPropertyDto(o.webProperty);
  }
  buildCounterDealPartyDto--;
}

core.int buildCounterDealTerms = 0;
buildDealTerms() {
  var o = new api.DealTerms();
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    o.description = "foo";
    o.guaranteedFixedPriceTerms = buildDealTermsGuaranteedFixedPriceTerms();
    o.nonGuaranteedAuctionTerms = buildDealTermsNonGuaranteedAuctionTerms();
    o.nonGuaranteedFixedPriceTerms = buildDealTermsNonGuaranteedFixedPriceTerms();
  }
  buildCounterDealTerms--;
  return o;
}

checkDealTerms(api.DealTerms o) {
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkDealTermsGuaranteedFixedPriceTerms(o.guaranteedFixedPriceTerms);
    checkDealTermsNonGuaranteedAuctionTerms(o.nonGuaranteedAuctionTerms);
    checkDealTermsNonGuaranteedFixedPriceTerms(o.nonGuaranteedFixedPriceTerms);
  }
  buildCounterDealTerms--;
}

buildUnnamed76() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed76(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsGuaranteedFixedPriceTerms = 0;
buildDealTermsGuaranteedFixedPriceTerms() {
  var o = new api.DealTermsGuaranteedFixedPriceTerms();
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed76();
    o.guaranteedImpressions = "foo";
    o.guaranteedLooks = "foo";
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
  return o;
}

checkDealTermsGuaranteedFixedPriceTerms(api.DealTermsGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    checkUnnamed76(o.fixedPrices);
    unittest.expect(o.guaranteedImpressions, unittest.equals('foo'));
    unittest.expect(o.guaranteedLooks, unittest.equals('foo'));
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
}

buildUnnamed77() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed77(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedAuctionTerms = 0;
buildDealTermsNonGuaranteedAuctionTerms() {
  var o = new api.DealTermsNonGuaranteedAuctionTerms();
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    o.privateAuctionId = "foo";
    o.reservePricePerBuyers = buildUnnamed77();
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
  return o;
}

checkDealTermsNonGuaranteedAuctionTerms(api.DealTermsNonGuaranteedAuctionTerms o) {
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.privateAuctionId, unittest.equals('foo'));
    checkUnnamed77(o.reservePricePerBuyers);
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
}

buildUnnamed78() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed78(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedFixedPriceTerms = 0;
buildDealTermsNonGuaranteedFixedPriceTerms() {
  var o = new api.DealTermsNonGuaranteedFixedPriceTerms();
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed78();
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
  return o;
}

checkDealTermsNonGuaranteedFixedPriceTerms(api.DealTermsNonGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed78(o.fixedPrices);
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
}

buildUnnamed79() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeleteOrderDealsRequest = 0;
buildDeleteOrderDealsRequest() {
  var o = new api.DeleteOrderDealsRequest();
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    o.dealIds = buildUnnamed79();
    o.orderRevisionNumber = "foo";
    o.updateAction = "foo";
  }
  buildCounterDeleteOrderDealsRequest--;
  return o;
}

checkDeleteOrderDealsRequest(api.DeleteOrderDealsRequest o) {
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    checkUnnamed79(o.dealIds);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
  }
  buildCounterDeleteOrderDealsRequest--;
}

buildUnnamed80() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed80(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterDeleteOrderDealsResponse = 0;
buildDeleteOrderDealsResponse() {
  var o = new api.DeleteOrderDealsResponse();
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    o.deals = buildUnnamed80();
    o.orderRevisionNumber = "foo";
  }
  buildCounterDeleteOrderDealsResponse--;
  return o;
}

checkDeleteOrderDealsResponse(api.DeleteOrderDealsResponse o) {
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    checkUnnamed80(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
  }
  buildCounterDeleteOrderDealsResponse--;
}

buildUnnamed81() {
  var o = new core.List<api.DeliveryControlFrequencyCap>();
  o.add(buildDeliveryControlFrequencyCap());
  o.add(buildDeliveryControlFrequencyCap());
  return o;
}

checkUnnamed81(core.List<api.DeliveryControlFrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryControlFrequencyCap(o[0]);
  checkDeliveryControlFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
buildDeliveryControl() {
  var o = new api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.deliveryRateType = "foo";
    o.frequencyCaps = buildUnnamed81();
  }
  buildCounterDeliveryControl--;
  return o;
}

checkDeliveryControl(api.DeliveryControl o) {
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    unittest.expect(o.deliveryRateType, unittest.equals('foo'));
    checkUnnamed81(o.frequencyCaps);
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

buildUnnamed82() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed82(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsRequest = 0;
buildEditAllOrderDealsRequest() {
  var o = new api.EditAllOrderDealsRequest();
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    o.deals = buildUnnamed82();
    o.order = buildMarketplaceOrder();
    o.orderRevisionNumber = "foo";
    o.updateAction = "foo";
    o.updateFinalizedView = true;
  }
  buildCounterEditAllOrderDealsRequest--;
  return o;
}

checkEditAllOrderDealsRequest(api.EditAllOrderDealsRequest o) {
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    checkUnnamed82(o.deals);
    checkMarketplaceOrder(o.order);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
    unittest.expect(o.updateFinalizedView, unittest.isTrue);
  }
  buildCounterEditAllOrderDealsRequest--;
}

buildUnnamed83() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed83(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsResponse = 0;
buildEditAllOrderDealsResponse() {
  var o = new api.EditAllOrderDealsResponse();
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    o.deals = buildUnnamed83();
  }
  buildCounterEditAllOrderDealsResponse--;
  return o;
}

checkEditAllOrderDealsResponse(api.EditAllOrderDealsResponse o) {
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    checkUnnamed83(o.deals);
  }
  buildCounterEditAllOrderDealsResponse--;
}

core.int buildCounterEditHistoryDto = 0;
buildEditHistoryDto() {
  var o = new api.EditHistoryDto();
  buildCounterEditHistoryDto++;
  if (buildCounterEditHistoryDto < 3) {
    o.createdByLoginName = "foo";
    o.createdTimeStamp = "foo";
    o.lastUpdateTimeStamp = "foo";
    o.lastUpdatedByLoginName = "foo";
  }
  buildCounterEditHistoryDto--;
  return o;
}

checkEditHistoryDto(api.EditHistoryDto o) {
  buildCounterEditHistoryDto++;
  if (buildCounterEditHistoryDto < 3) {
    unittest.expect(o.createdByLoginName, unittest.equals('foo'));
    unittest.expect(o.createdTimeStamp, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTimeStamp, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedByLoginName, unittest.equals('foo'));
  }
  buildCounterEditHistoryDto--;
}

core.int buildCounterGetFinalizedNegotiationByExternalDealIdRequest = 0;
buildGetFinalizedNegotiationByExternalDealIdRequest() {
  var o = new api.GetFinalizedNegotiationByExternalDealIdRequest();
  buildCounterGetFinalizedNegotiationByExternalDealIdRequest++;
  if (buildCounterGetFinalizedNegotiationByExternalDealIdRequest < 3) {
    o.includePrivateAuctions = true;
  }
  buildCounterGetFinalizedNegotiationByExternalDealIdRequest--;
  return o;
}

checkGetFinalizedNegotiationByExternalDealIdRequest(api.GetFinalizedNegotiationByExternalDealIdRequest o) {
  buildCounterGetFinalizedNegotiationByExternalDealIdRequest++;
  if (buildCounterGetFinalizedNegotiationByExternalDealIdRequest < 3) {
    unittest.expect(o.includePrivateAuctions, unittest.isTrue);
  }
  buildCounterGetFinalizedNegotiationByExternalDealIdRequest--;
}

core.int buildCounterGetNegotiationByIdRequest = 0;
buildGetNegotiationByIdRequest() {
  var o = new api.GetNegotiationByIdRequest();
  buildCounterGetNegotiationByIdRequest++;
  if (buildCounterGetNegotiationByIdRequest < 3) {
    o.includePrivateAuctions = true;
  }
  buildCounterGetNegotiationByIdRequest--;
  return o;
}

checkGetNegotiationByIdRequest(api.GetNegotiationByIdRequest o) {
  buildCounterGetNegotiationByIdRequest++;
  if (buildCounterGetNegotiationByIdRequest < 3) {
    unittest.expect(o.includePrivateAuctions, unittest.isTrue);
  }
  buildCounterGetNegotiationByIdRequest--;
}

core.int buildCounterGetNegotiationsRequest = 0;
buildGetNegotiationsRequest() {
  var o = new api.GetNegotiationsRequest();
  buildCounterGetNegotiationsRequest++;
  if (buildCounterGetNegotiationsRequest < 3) {
    o.finalized = true;
    o.includePrivateAuctions = true;
    o.sinceTimestampMillis = "foo";
  }
  buildCounterGetNegotiationsRequest--;
  return o;
}

checkGetNegotiationsRequest(api.GetNegotiationsRequest o) {
  buildCounterGetNegotiationsRequest++;
  if (buildCounterGetNegotiationsRequest < 3) {
    unittest.expect(o.finalized, unittest.isTrue);
    unittest.expect(o.includePrivateAuctions, unittest.isTrue);
    unittest.expect(o.sinceTimestampMillis, unittest.equals('foo'));
  }
  buildCounterGetNegotiationsRequest--;
}

buildUnnamed84() {
  var o = new core.List<api.NegotiationDto>();
  o.add(buildNegotiationDto());
  o.add(buildNegotiationDto());
  return o;
}

checkUnnamed84(core.List<api.NegotiationDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegotiationDto(o[0]);
  checkNegotiationDto(o[1]);
}

core.int buildCounterGetNegotiationsResponse = 0;
buildGetNegotiationsResponse() {
  var o = new api.GetNegotiationsResponse();
  buildCounterGetNegotiationsResponse++;
  if (buildCounterGetNegotiationsResponse < 3) {
    o.kind = "foo";
    o.negotiations = buildUnnamed84();
  }
  buildCounterGetNegotiationsResponse--;
  return o;
}

checkGetNegotiationsResponse(api.GetNegotiationsResponse o) {
  buildCounterGetNegotiationsResponse++;
  if (buildCounterGetNegotiationsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed84(o.negotiations);
  }
  buildCounterGetNegotiationsResponse--;
}

buildUnnamed85() {
  var o = new core.List<api.MarketplaceOffer>();
  o.add(buildMarketplaceOffer());
  o.add(buildMarketplaceOffer());
  return o;
}

checkUnnamed85(core.List<api.MarketplaceOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceOffer(o[0]);
  checkMarketplaceOffer(o[1]);
}

core.int buildCounterGetOffersResponse = 0;
buildGetOffersResponse() {
  var o = new api.GetOffersResponse();
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    o.offers = buildUnnamed85();
  }
  buildCounterGetOffersResponse--;
  return o;
}

checkGetOffersResponse(api.GetOffersResponse o) {
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    checkUnnamed85(o.offers);
  }
  buildCounterGetOffersResponse--;
}

buildUnnamed86() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed86(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterGetOrderDealsResponse = 0;
buildGetOrderDealsResponse() {
  var o = new api.GetOrderDealsResponse();
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    o.deals = buildUnnamed86();
  }
  buildCounterGetOrderDealsResponse--;
  return o;
}

checkGetOrderDealsResponse(api.GetOrderDealsResponse o) {
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    checkUnnamed86(o.deals);
  }
  buildCounterGetOrderDealsResponse--;
}

buildUnnamed87() {
  var o = new core.List<api.MarketplaceNote>();
  o.add(buildMarketplaceNote());
  o.add(buildMarketplaceNote());
  return o;
}

checkUnnamed87(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterGetOrderNotesResponse = 0;
buildGetOrderNotesResponse() {
  var o = new api.GetOrderNotesResponse();
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    o.notes = buildUnnamed87();
  }
  buildCounterGetOrderNotesResponse--;
  return o;
}

checkGetOrderNotesResponse(api.GetOrderNotesResponse o) {
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    checkUnnamed87(o.notes);
  }
  buildCounterGetOrderNotesResponse--;
}

buildUnnamed88() {
  var o = new core.List<api.MarketplaceOrder>();
  o.add(buildMarketplaceOrder());
  o.add(buildMarketplaceOrder());
  return o;
}

checkUnnamed88(core.List<api.MarketplaceOrder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceOrder(o[0]);
  checkMarketplaceOrder(o[1]);
}

core.int buildCounterGetOrdersResponse = 0;
buildGetOrdersResponse() {
  var o = new api.GetOrdersResponse();
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    o.orders = buildUnnamed88();
  }
  buildCounterGetOrdersResponse--;
  return o;
}

checkGetOrdersResponse(api.GetOrdersResponse o) {
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    checkUnnamed88(o.orders);
  }
  buildCounterGetOrdersResponse--;
}

buildUnnamed89() {
  var o = new core.List<api.AdSize>();
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

checkUnnamed89(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

buildUnnamed90() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed91() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed92() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed93() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed93(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed94() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed95() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed96() {
  var o = new core.List<api.RuleKeyValuePair>();
  o.add(buildRuleKeyValuePair());
  o.add(buildRuleKeyValuePair());
  return o;
}

checkUnnamed96(core.List<api.RuleKeyValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleKeyValuePair(o[0]);
  checkRuleKeyValuePair(o[1]);
}

buildUnnamed97() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed98() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed99() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed100() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed101() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed102() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed103() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed104() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed104(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed105() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed105(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed106() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed107() {
  var o = new core.List<api.AdSize>();
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

checkUnnamed107(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

buildUnnamed108() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed109() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed110() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed110(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed111() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed112() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed113() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed114() {
  var o = new core.List<api.RuleKeyValuePair>();
  o.add(buildRuleKeyValuePair());
  o.add(buildRuleKeyValuePair());
  return o;
}

checkUnnamed114(core.List<api.RuleKeyValuePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleKeyValuePair(o[0]);
  checkRuleKeyValuePair(o[1]);
}

buildUnnamed115() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed116() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed117() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed118() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed119() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed120() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed121() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed121(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed122() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed122(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed123() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed123(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed124() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed124(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInventorySegmentTargeting = 0;
buildInventorySegmentTargeting() {
  var o = new api.InventorySegmentTargeting();
  buildCounterInventorySegmentTargeting++;
  if (buildCounterInventorySegmentTargeting < 3) {
    o.negativeAdSizes = buildUnnamed89();
    o.negativeAdTypeSegments = buildUnnamed90();
    o.negativeAudienceSegments = buildUnnamed91();
    o.negativeDeviceCategories = buildUnnamed92();
    o.negativeIcmBrands = buildUnnamed93();
    o.negativeIcmInterests = buildUnnamed94();
    o.negativeInventorySlots = buildUnnamed95();
    o.negativeKeyValues = buildUnnamed96();
    o.negativeLocations = buildUnnamed97();
    o.negativeMobileApps = buildUnnamed98();
    o.negativeOperatingSystemVersions = buildUnnamed99();
    o.negativeOperatingSystems = buildUnnamed100();
    o.negativeSiteUrls = buildUnnamed101();
    o.negativeSizes = buildUnnamed102();
    o.negativeVideoAdPositionSegments = buildUnnamed103();
    o.negativeVideoDurationSegments = buildUnnamed104();
    o.negativeXfpAdSlots = buildUnnamed105();
    o.negativeXfpPlacements = buildUnnamed106();
    o.positiveAdSizes = buildUnnamed107();
    o.positiveAdTypeSegments = buildUnnamed108();
    o.positiveAudienceSegments = buildUnnamed109();
    o.positiveDeviceCategories = buildUnnamed110();
    o.positiveIcmBrands = buildUnnamed111();
    o.positiveIcmInterests = buildUnnamed112();
    o.positiveInventorySlots = buildUnnamed113();
    o.positiveKeyValues = buildUnnamed114();
    o.positiveLocations = buildUnnamed115();
    o.positiveMobileApps = buildUnnamed116();
    o.positiveOperatingSystemVersions = buildUnnamed117();
    o.positiveOperatingSystems = buildUnnamed118();
    o.positiveSiteUrls = buildUnnamed119();
    o.positiveSizes = buildUnnamed120();
    o.positiveVideoAdPositionSegments = buildUnnamed121();
    o.positiveVideoDurationSegments = buildUnnamed122();
    o.positiveXfpAdSlots = buildUnnamed123();
    o.positiveXfpPlacements = buildUnnamed124();
  }
  buildCounterInventorySegmentTargeting--;
  return o;
}

checkInventorySegmentTargeting(api.InventorySegmentTargeting o) {
  buildCounterInventorySegmentTargeting++;
  if (buildCounterInventorySegmentTargeting < 3) {
    checkUnnamed89(o.negativeAdSizes);
    checkUnnamed90(o.negativeAdTypeSegments);
    checkUnnamed91(o.negativeAudienceSegments);
    checkUnnamed92(o.negativeDeviceCategories);
    checkUnnamed93(o.negativeIcmBrands);
    checkUnnamed94(o.negativeIcmInterests);
    checkUnnamed95(o.negativeInventorySlots);
    checkUnnamed96(o.negativeKeyValues);
    checkUnnamed97(o.negativeLocations);
    checkUnnamed98(o.negativeMobileApps);
    checkUnnamed99(o.negativeOperatingSystemVersions);
    checkUnnamed100(o.negativeOperatingSystems);
    checkUnnamed101(o.negativeSiteUrls);
    checkUnnamed102(o.negativeSizes);
    checkUnnamed103(o.negativeVideoAdPositionSegments);
    checkUnnamed104(o.negativeVideoDurationSegments);
    checkUnnamed105(o.negativeXfpAdSlots);
    checkUnnamed106(o.negativeXfpPlacements);
    checkUnnamed107(o.positiveAdSizes);
    checkUnnamed108(o.positiveAdTypeSegments);
    checkUnnamed109(o.positiveAudienceSegments);
    checkUnnamed110(o.positiveDeviceCategories);
    checkUnnamed111(o.positiveIcmBrands);
    checkUnnamed112(o.positiveIcmInterests);
    checkUnnamed113(o.positiveInventorySlots);
    checkUnnamed114(o.positiveKeyValues);
    checkUnnamed115(o.positiveLocations);
    checkUnnamed116(o.positiveMobileApps);
    checkUnnamed117(o.positiveOperatingSystemVersions);
    checkUnnamed118(o.positiveOperatingSystems);
    checkUnnamed119(o.positiveSiteUrls);
    checkUnnamed120(o.positiveSizes);
    checkUnnamed121(o.positiveVideoAdPositionSegments);
    checkUnnamed122(o.positiveVideoDurationSegments);
    checkUnnamed123(o.positiveXfpAdSlots);
    checkUnnamed124(o.positiveXfpPlacements);
  }
  buildCounterInventorySegmentTargeting--;
}

core.int buildCounterListClientAccessCapabilitiesRequest = 0;
buildListClientAccessCapabilitiesRequest() {
  var o = new api.ListClientAccessCapabilitiesRequest();
  buildCounterListClientAccessCapabilitiesRequest++;
  if (buildCounterListClientAccessCapabilitiesRequest < 3) {
    o.sponsorAccountId = "foo";
  }
  buildCounterListClientAccessCapabilitiesRequest--;
  return o;
}

checkListClientAccessCapabilitiesRequest(api.ListClientAccessCapabilitiesRequest o) {
  buildCounterListClientAccessCapabilitiesRequest++;
  if (buildCounterListClientAccessCapabilitiesRequest < 3) {
    unittest.expect(o.sponsorAccountId, unittest.equals('foo'));
  }
  buildCounterListClientAccessCapabilitiesRequest--;
}

buildUnnamed125() {
  var o = new core.List<api.ClientAccessCapabilities>();
  o.add(buildClientAccessCapabilities());
  o.add(buildClientAccessCapabilities());
  return o;
}

checkUnnamed125(core.List<api.ClientAccessCapabilities> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientAccessCapabilities(o[0]);
  checkClientAccessCapabilities(o[1]);
}

core.int buildCounterListClientAccessCapabilitiesResponse = 0;
buildListClientAccessCapabilitiesResponse() {
  var o = new api.ListClientAccessCapabilitiesResponse();
  buildCounterListClientAccessCapabilitiesResponse++;
  if (buildCounterListClientAccessCapabilitiesResponse < 3) {
    o.clientAccessPermissions = buildUnnamed125();
  }
  buildCounterListClientAccessCapabilitiesResponse--;
  return o;
}

checkListClientAccessCapabilitiesResponse(api.ListClientAccessCapabilitiesResponse o) {
  buildCounterListClientAccessCapabilitiesResponse++;
  if (buildCounterListClientAccessCapabilitiesResponse < 3) {
    checkUnnamed125(o.clientAccessPermissions);
  }
  buildCounterListClientAccessCapabilitiesResponse--;
}

core.int buildCounterListOffersRequest = 0;
buildListOffersRequest() {
  var o = new api.ListOffersRequest();
  buildCounterListOffersRequest++;
  if (buildCounterListOffersRequest < 3) {
    o.sinceTimestampMillis = "foo";
  }
  buildCounterListOffersRequest--;
  return o;
}

checkListOffersRequest(api.ListOffersRequest o) {
  buildCounterListOffersRequest++;
  if (buildCounterListOffersRequest < 3) {
    unittest.expect(o.sinceTimestampMillis, unittest.equals('foo'));
  }
  buildCounterListOffersRequest--;
}

buildUnnamed126() {
  var o = new core.List<api.OfferDto>();
  o.add(buildOfferDto());
  o.add(buildOfferDto());
  return o;
}

checkUnnamed126(core.List<api.OfferDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferDto(o[0]);
  checkOfferDto(o[1]);
}

core.int buildCounterListOffersResponse = 0;
buildListOffersResponse() {
  var o = new api.ListOffersResponse();
  buildCounterListOffersResponse++;
  if (buildCounterListOffersResponse < 3) {
    o.kind = "foo";
    o.offers = buildUnnamed126();
  }
  buildCounterListOffersResponse--;
  return o;
}

checkListOffersResponse(api.ListOffersResponse o) {
  buildCounterListOffersResponse++;
  if (buildCounterListOffersResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed126(o.offers);
  }
  buildCounterListOffersResponse--;
}

buildUnnamed127() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed127(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed128() {
  var o = new core.List<api.SharedTargeting>();
  o.add(buildSharedTargeting());
  o.add(buildSharedTargeting());
  return o;
}

checkUnnamed128(core.List<api.SharedTargeting> o) {
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
    o.dealId = "foo";
    o.deliveryControl = buildDeliveryControl();
    o.externalDealId = "foo";
    o.flightEndTimeMs = "foo";
    o.flightStartTimeMs = "foo";
    o.inventoryDescription = "foo";
    o.kind = "foo";
    o.lastUpdateTimeMs = "foo";
    o.name = "foo";
    o.offerId = "foo";
    o.offerRevisionNumber = "foo";
    o.orderId = "foo";
    o.sellerContacts = buildUnnamed127();
    o.sharedTargetings = buildUnnamed128();
    o.syndicationProduct = "foo";
    o.terms = buildDealTerms();
  }
  buildCounterMarketplaceDeal--;
  return o;
}

checkMarketplaceDeal(api.MarketplaceDeal o) {
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    checkPrivateData(o.buyerPrivateData);
    unittest.expect(o.creationTimeMs, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    checkDeliveryControl(o.deliveryControl);
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    unittest.expect(o.flightEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.flightStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.inventoryDescription, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.offerRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    checkUnnamed127(o.sellerContacts);
    checkUnnamed128(o.sharedTargetings);
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkDealTerms(o.terms);
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
    o.orderId = "foo";
    o.orderRevisionNumber = "foo";
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
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.timestampMs, unittest.equals('foo'));
  }
  buildCounterMarketplaceNote--;
}

buildUnnamed129() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed129(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed130() {
  var o = new core.List<api.MarketplaceLabel>();
  o.add(buildMarketplaceLabel());
  o.add(buildMarketplaceLabel());
  return o;
}

checkUnnamed130(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

buildUnnamed131() {
  var o = new core.List<api.SharedTargeting>();
  o.add(buildSharedTargeting());
  o.add(buildSharedTargeting());
  return o;
}

checkUnnamed131(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterMarketplaceOffer = 0;
buildMarketplaceOffer() {
  var o = new api.MarketplaceOffer();
  buildCounterMarketplaceOffer++;
  if (buildCounterMarketplaceOffer < 3) {
    o.creationTimeMs = "foo";
    o.creatorContacts = buildUnnamed129();
    o.flightEndTimeMs = "foo";
    o.flightStartTimeMs = "foo";
    o.hasCreatorSignedOff = true;
    o.kind = "foo";
    o.labels = buildUnnamed130();
    o.lastUpdateTimeMs = "foo";
    o.name = "foo";
    o.offerId = "foo";
    o.revisionNumber = "foo";
    o.seller = buildSeller();
    o.sharedTargetings = buildUnnamed131();
    o.state = "foo";
    o.syndicationProduct = "foo";
    o.terms = buildDealTerms();
  }
  buildCounterMarketplaceOffer--;
  return o;
}

checkMarketplaceOffer(api.MarketplaceOffer o) {
  buildCounterMarketplaceOffer++;
  if (buildCounterMarketplaceOffer < 3) {
    unittest.expect(o.creationTimeMs, unittest.equals('foo'));
    checkUnnamed129(o.creatorContacts);
    unittest.expect(o.flightEndTimeMs, unittest.equals('foo'));
    unittest.expect(o.flightStartTimeMs, unittest.equals('foo'));
    unittest.expect(o.hasCreatorSignedOff, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed130(o.labels);
    unittest.expect(o.lastUpdateTimeMs, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.revisionNumber, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed131(o.sharedTargetings);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkDealTerms(o.terms);
  }
  buildCounterMarketplaceOffer--;
}

buildUnnamed132() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed132(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed133() {
  var o = new core.List<api.MarketplaceLabel>();
  o.add(buildMarketplaceLabel());
  o.add(buildMarketplaceLabel());
  return o;
}

checkUnnamed133(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

buildUnnamed134() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed134(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.int buildCounterMarketplaceOrder = 0;
buildMarketplaceOrder() {
  var o = new api.MarketplaceOrder();
  buildCounterMarketplaceOrder++;
  if (buildCounterMarketplaceOrder < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.buyerContacts = buildUnnamed132();
    o.buyerPrivateData = buildPrivateData();
    o.hasBuyerSignedOff = true;
    o.hasSellerSignedOff = true;
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.kind = "foo";
    o.labels = buildUnnamed133();
    o.lastUpdaterOrCommentorRole = "foo";
    o.lastUpdaterRole = "foo";
    o.name = "foo";
    o.orderId = "foo";
    o.orderState = "foo";
    o.originatorRole = "foo";
    o.revisionNumber = "foo";
    o.revisionTimeMs = "foo";
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed134();
  }
  buildCounterMarketplaceOrder--;
  return o;
}

checkMarketplaceOrder(api.MarketplaceOrder o) {
  buildCounterMarketplaceOrder++;
  if (buildCounterMarketplaceOrder < 3) {
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    checkUnnamed132(o.buyerContacts);
    checkPrivateData(o.buyerPrivateData);
    unittest.expect(o.hasBuyerSignedOff, unittest.isTrue);
    unittest.expect(o.hasSellerSignedOff, unittest.isTrue);
    unittest.expect(o.isRenegotiating, unittest.isTrue);
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed133(o.labels);
    unittest.expect(o.lastUpdaterOrCommentorRole, unittest.equals('foo'));
    unittest.expect(o.lastUpdaterRole, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.orderState, unittest.equals('foo'));
    unittest.expect(o.originatorRole, unittest.equals('foo'));
    unittest.expect(o.revisionNumber, unittest.equals('foo'));
    unittest.expect(o.revisionTimeMs, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed134(o.sellerContacts);
  }
  buildCounterMarketplaceOrder--;
}

core.int buildCounterMoneyDto = 0;
buildMoneyDto() {
  var o = new api.MoneyDto();
  buildCounterMoneyDto++;
  if (buildCounterMoneyDto < 3) {
    o.currencyCode = "foo";
    o.micros = "foo";
  }
  buildCounterMoneyDto--;
  return o;
}

checkMoneyDto(api.MoneyDto o) {
  buildCounterMoneyDto++;
  if (buildCounterMoneyDto < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.micros, unittest.equals('foo'));
  }
  buildCounterMoneyDto--;
}

buildUnnamed135() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed135(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed136() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed137() {
  var o = new core.List<api.NegotiationRoundDto>();
  o.add(buildNegotiationRoundDto());
  o.add(buildNegotiationRoundDto());
  return o;
}

checkUnnamed137(core.List<api.NegotiationRoundDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNegotiationRoundDto(o[0]);
  checkNegotiationRoundDto(o[1]);
}

buildUnnamed138() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed138(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNegotiationDto = 0;
buildNegotiationDto() {
  var o = new api.NegotiationDto();
  buildCounterNegotiationDto++;
  if (buildCounterNegotiationDto < 3) {
    o.billedBuyer = buildDealPartyDto();
    o.buyer = buildDealPartyDto();
    o.buyerEmailContacts = buildUnnamed135();
    o.dealType = "foo";
    o.externalDealId = "foo";
    o.kind = "foo";
    o.labelNames = buildUnnamed136();
    o.negotiationId = "foo";
    o.negotiationRounds = buildUnnamed137();
    o.negotiationState = "foo";
    o.offerId = "foo";
    o.seller = buildDealPartyDto();
    o.sellerEmailContacts = buildUnnamed138();
    o.stats = buildStatsDto();
    o.status = "foo";
  }
  buildCounterNegotiationDto--;
  return o;
}

checkNegotiationDto(api.NegotiationDto o) {
  buildCounterNegotiationDto++;
  if (buildCounterNegotiationDto < 3) {
    checkDealPartyDto(o.billedBuyer);
    checkDealPartyDto(o.buyer);
    checkUnnamed135(o.buyerEmailContacts);
    unittest.expect(o.dealType, unittest.equals('foo'));
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed136(o.labelNames);
    unittest.expect(o.negotiationId, unittest.equals('foo'));
    checkUnnamed137(o.negotiationRounds);
    unittest.expect(o.negotiationState, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkDealPartyDto(o.seller);
    checkUnnamed138(o.sellerEmailContacts);
    checkStatsDto(o.stats);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterNegotiationDto--;
}

core.int buildCounterNegotiationRoundDto = 0;
buildNegotiationRoundDto() {
  var o = new api.NegotiationRoundDto();
  buildCounterNegotiationRoundDto++;
  if (buildCounterNegotiationRoundDto < 3) {
    o.action = "foo";
    o.dbmPartnerId = "foo";
    o.editHistory = buildEditHistoryDto();
    o.kind = "foo";
    o.negotiationId = "foo";
    o.notes = "foo";
    o.originatorRole = "foo";
    o.roundNumber = "foo";
    o.terms = buildTermsDto();
  }
  buildCounterNegotiationRoundDto--;
  return o;
}

checkNegotiationRoundDto(api.NegotiationRoundDto o) {
  buildCounterNegotiationRoundDto++;
  if (buildCounterNegotiationRoundDto < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.dbmPartnerId, unittest.equals('foo'));
    checkEditHistoryDto(o.editHistory);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.negotiationId, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.originatorRole, unittest.equals('foo'));
    unittest.expect(o.roundNumber, unittest.equals('foo'));
    checkTermsDto(o.terms);
  }
  buildCounterNegotiationRoundDto--;
}

buildUnnamed139() {
  var o = new core.List<api.DealPartyDto>();
  o.add(buildDealPartyDto());
  o.add(buildDealPartyDto());
  return o;
}

checkUnnamed139(core.List<api.DealPartyDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDealPartyDto(o[0]);
  checkDealPartyDto(o[1]);
}

buildUnnamed140() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed141() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed142() {
  var o = new core.List<api.DealPartyDto>();
  o.add(buildDealPartyDto());
  o.add(buildDealPartyDto());
  return o;
}

checkUnnamed142(core.List<api.DealPartyDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDealPartyDto(o[0]);
  checkDealPartyDto(o[1]);
}

core.int buildCounterOfferDto = 0;
buildOfferDto() {
  var o = new api.OfferDto();
  buildCounterOfferDto++;
  if (buildCounterOfferDto < 3) {
    o.anonymous = true;
    o.billedBuyer = buildDealPartyDto();
    o.closedToDealParties = buildUnnamed139();
    o.creator = buildDealPartyDto();
    o.emailContacts = buildUnnamed140();
    o.isOpen = true;
    o.kind = "foo";
    o.labelNames = buildUnnamed141();
    o.offerId = "foo";
    o.offerState = "foo";
    o.openToDealParties = buildUnnamed142();
    o.pointOfContact = "foo";
    o.status = "foo";
    o.terms = buildTermsDto();
  }
  buildCounterOfferDto--;
  return o;
}

checkOfferDto(api.OfferDto o) {
  buildCounterOfferDto++;
  if (buildCounterOfferDto < 3) {
    unittest.expect(o.anonymous, unittest.isTrue);
    checkDealPartyDto(o.billedBuyer);
    checkUnnamed139(o.closedToDealParties);
    checkDealPartyDto(o.creator);
    checkUnnamed140(o.emailContacts);
    unittest.expect(o.isOpen, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed141(o.labelNames);
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.offerState, unittest.equals('foo'));
    checkUnnamed142(o.openToDealParties);
    unittest.expect(o.pointOfContact, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkTermsDto(o.terms);
  }
  buildCounterOfferDto--;
}

buildUnnamed143() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed143(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o[1]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed144() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed144(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o[1]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

buildUnnamed145() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed145(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o[1]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed146() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed146(core.List<core.Object> o) {
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
    o.calloutStatusRate = buildUnnamed143();
    o.cookieMatcherStatusRate = buildUnnamed144();
    o.creativeStatusRate = buildUnnamed145();
    o.filteredBidRate = 42.0;
    o.hostedMatchStatusRate = buildUnnamed146();
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
    checkUnnamed143(o.calloutStatusRate);
    checkUnnamed144(o.cookieMatcherStatusRate);
    checkUnnamed145(o.creativeStatusRate);
    unittest.expect(o.filteredBidRate, unittest.equals(42.0));
    checkUnnamed146(o.hostedMatchStatusRate);
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

buildUnnamed147() {
  var o = new core.List<api.PerformanceReport>();
  o.add(buildPerformanceReport());
  o.add(buildPerformanceReport());
  return o;
}

checkUnnamed147(core.List<api.PerformanceReport> o) {
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
    o.performanceReport = buildUnnamed147();
  }
  buildCounterPerformanceReportList--;
  return o;
}

checkPerformanceReportList(api.PerformanceReportList o) {
  buildCounterPerformanceReportList++;
  if (buildCounterPerformanceReportList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed147(o.performanceReport);
  }
  buildCounterPerformanceReportList--;
}

buildUnnamed148() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed148(core.List<core.String> o) {
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

buildUnnamed149() {
  var o = new core.List<api.PretargetingConfigDimensions>();
  o.add(buildPretargetingConfigDimensions());
  o.add(buildPretargetingConfigDimensions());
  return o;
}

checkUnnamed149(core.List<api.PretargetingConfigDimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigDimensions(o[0]);
  checkPretargetingConfigDimensions(o[1]);
}

buildUnnamed150() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed150(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed151() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed151(core.List<core.String> o) {
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

buildUnnamed152() {
  var o = new core.List<api.PretargetingConfigExcludedPlacements>();
  o.add(buildPretargetingConfigExcludedPlacements());
  o.add(buildPretargetingConfigExcludedPlacements());
  return o;
}

checkUnnamed152(core.List<api.PretargetingConfigExcludedPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigExcludedPlacements(o[0]);
  checkPretargetingConfigExcludedPlacements(o[1]);
}

buildUnnamed153() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed153(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed154() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed154(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed155() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed156() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed156(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed157() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed157(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed158() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed158(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed159() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed159(core.List<core.String> o) {
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

buildUnnamed160() {
  var o = new core.List<api.PretargetingConfigPlacements>();
  o.add(buildPretargetingConfigPlacements());
  o.add(buildPretargetingConfigPlacements());
  return o;
}

checkUnnamed160(core.List<api.PretargetingConfigPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigPlacements(o[0]);
  checkPretargetingConfigPlacements(o[1]);
}

buildUnnamed161() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed161(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed162() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed162(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed163() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed164() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed164(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed165() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed165(core.List<core.String> o) {
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
    o.creativeType = buildUnnamed148();
    o.dimensions = buildUnnamed149();
    o.excludedContentLabels = buildUnnamed150();
    o.excludedGeoCriteriaIds = buildUnnamed151();
    o.excludedPlacements = buildUnnamed152();
    o.excludedUserLists = buildUnnamed153();
    o.excludedVerticals = buildUnnamed154();
    o.geoCriteriaIds = buildUnnamed155();
    o.isActive = true;
    o.kind = "foo";
    o.languages = buildUnnamed156();
    o.mobileCarriers = buildUnnamed157();
    o.mobileDevices = buildUnnamed158();
    o.mobileOperatingSystemVersions = buildUnnamed159();
    o.placements = buildUnnamed160();
    o.platforms = buildUnnamed161();
    o.supportedCreativeAttributes = buildUnnamed162();
    o.userLists = buildUnnamed163();
    o.vendorTypes = buildUnnamed164();
    o.verticals = buildUnnamed165();
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
    checkUnnamed148(o.creativeType);
    checkUnnamed149(o.dimensions);
    checkUnnamed150(o.excludedContentLabels);
    checkUnnamed151(o.excludedGeoCriteriaIds);
    checkUnnamed152(o.excludedPlacements);
    checkUnnamed153(o.excludedUserLists);
    checkUnnamed154(o.excludedVerticals);
    checkUnnamed155(o.geoCriteriaIds);
    unittest.expect(o.isActive, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed156(o.languages);
    checkUnnamed157(o.mobileCarriers);
    checkUnnamed158(o.mobileDevices);
    checkUnnamed159(o.mobileOperatingSystemVersions);
    checkUnnamed160(o.placements);
    checkUnnamed161(o.platforms);
    checkUnnamed162(o.supportedCreativeAttributes);
    checkUnnamed163(o.userLists);
    checkUnnamed164(o.vendorTypes);
    checkUnnamed165(o.verticals);
  }
  buildCounterPretargetingConfig--;
}

buildUnnamed166() {
  var o = new core.List<api.PretargetingConfig>();
  o.add(buildPretargetingConfig());
  o.add(buildPretargetingConfig());
  return o;
}

checkUnnamed166(core.List<api.PretargetingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfig(o[0]);
  checkPretargetingConfig(o[1]);
}

core.int buildCounterPretargetingConfigList = 0;
buildPretargetingConfigList() {
  var o = new api.PretargetingConfigList();
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    o.items = buildUnnamed166();
    o.kind = "foo";
  }
  buildCounterPretargetingConfigList--;
  return o;
}

checkPretargetingConfigList(api.PretargetingConfigList o) {
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    checkUnnamed166(o.items);
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
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros, unittest.equals(42.0));
    unittest.expect(o.currencyCode, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterPricePerBuyer = 0;
buildPricePerBuyer() {
  var o = new api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
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

core.int buildCounterRuleKeyValuePair = 0;
buildRuleKeyValuePair() {
  var o = new api.RuleKeyValuePair();
  buildCounterRuleKeyValuePair++;
  if (buildCounterRuleKeyValuePair < 3) {
    o.keyName = "foo";
    o.value = "foo";
  }
  buildCounterRuleKeyValuePair--;
  return o;
}

checkRuleKeyValuePair(api.RuleKeyValuePair o) {
  buildCounterRuleKeyValuePair++;
  if (buildCounterRuleKeyValuePair < 3) {
    unittest.expect(o.keyName, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRuleKeyValuePair--;
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

buildUnnamed167() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed167(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

buildUnnamed168() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed168(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.int buildCounterSharedTargeting = 0;
buildSharedTargeting() {
  var o = new api.SharedTargeting();
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    o.exclusions = buildUnnamed167();
    o.inclusions = buildUnnamed168();
    o.key = "foo";
  }
  buildCounterSharedTargeting--;
  return o;
}

checkSharedTargeting(api.SharedTargeting o) {
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    checkUnnamed167(o.exclusions);
    checkUnnamed168(o.inclusions);
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterSharedTargeting--;
}

core.int buildCounterStatsDto = 0;
buildStatsDto() {
  var o = new api.StatsDto();
  buildCounterStatsDto++;
  if (buildCounterStatsDto < 3) {
    o.bids = "foo";
    o.goodBids = "foo";
    o.impressions = "foo";
    o.requests = "foo";
    o.revenue = buildMoneyDto();
    o.spend = buildMoneyDto();
  }
  buildCounterStatsDto--;
  return o;
}

checkStatsDto(api.StatsDto o) {
  buildCounterStatsDto++;
  if (buildCounterStatsDto < 3) {
    unittest.expect(o.bids, unittest.equals('foo'));
    unittest.expect(o.goodBids, unittest.equals('foo'));
    unittest.expect(o.impressions, unittest.equals('foo'));
    unittest.expect(o.requests, unittest.equals('foo'));
    checkMoneyDto(o.revenue);
    checkMoneyDto(o.spend);
  }
  buildCounterStatsDto--;
}

core.int buildCounterTargetingValue = 0;
buildTargetingValue() {
  var o = new api.TargetingValue();
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    o.creativeSizeValue = buildTargetingValueCreativeSize();
    o.dayPartTargetingValue = buildTargetingValueDayPartTargeting();
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
    unittest.expect(o.longValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterTargetingValue--;
}

buildUnnamed169() {
  var o = new core.List<api.TargetingValueSize>();
  o.add(buildTargetingValueSize());
  o.add(buildTargetingValueSize());
  return o;
}

checkUnnamed169(core.List<api.TargetingValueSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueSize(o[0]);
  checkTargetingValueSize(o[1]);
}

core.int buildCounterTargetingValueCreativeSize = 0;
buildTargetingValueCreativeSize() {
  var o = new api.TargetingValueCreativeSize();
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    o.companionSizes = buildUnnamed169();
    o.creativeSizeType = "foo";
    o.size = buildTargetingValueSize();
  }
  buildCounterTargetingValueCreativeSize--;
  return o;
}

checkTargetingValueCreativeSize(api.TargetingValueCreativeSize o) {
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    checkUnnamed169(o.companionSizes);
    unittest.expect(o.creativeSizeType, unittest.equals('foo'));
    checkTargetingValueSize(o.size);
  }
  buildCounterTargetingValueCreativeSize--;
}

buildUnnamed170() {
  var o = new core.List<api.TargetingValueDayPartTargetingDayPart>();
  o.add(buildTargetingValueDayPartTargetingDayPart());
  o.add(buildTargetingValueDayPartTargetingDayPart());
  return o;
}

checkUnnamed170(core.List<api.TargetingValueDayPartTargetingDayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueDayPartTargetingDayPart(o[0]);
  checkTargetingValueDayPartTargetingDayPart(o[1]);
}

core.int buildCounterTargetingValueDayPartTargeting = 0;
buildTargetingValueDayPartTargeting() {
  var o = new api.TargetingValueDayPartTargeting();
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    o.dayParts = buildUnnamed170();
    o.timeZoneType = "foo";
  }
  buildCounterTargetingValueDayPartTargeting--;
  return o;
}

checkTargetingValueDayPartTargeting(api.TargetingValueDayPartTargeting o) {
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    checkUnnamed170(o.dayParts);
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

checkTargetingValueDayPartTargetingDayPart(api.TargetingValueDayPartTargetingDayPart o) {
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

buildUnnamed171() {
  var o = new core.List<api.AdSlotDto>();
  o.add(buildAdSlotDto());
  o.add(buildAdSlotDto());
  return o;
}

checkUnnamed171(core.List<api.AdSlotDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSlotDto(o[0]);
  checkAdSlotDto(o[1]);
}

buildUnnamed172() {
  var o = new core.List<api.AdvertiserDto>();
  o.add(buildAdvertiserDto());
  o.add(buildAdvertiserDto());
  return o;
}

checkUnnamed172(core.List<api.AdvertiserDto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiserDto(o[0]);
  checkAdvertiserDto(o[1]);
}

buildUnnamed173() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed173(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed174() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed174(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTermsDto = 0;
buildTermsDto() {
  var o = new api.TermsDto();
  buildCounterTermsDto++;
  if (buildCounterTermsDto < 3) {
    o.adSlots = buildUnnamed171();
    o.advertisers = buildUnnamed172();
    o.audienceSegment = buildAudienceSegment();
    o.audienceSegmentDescription = "foo";
    o.billingTerms = "foo";
    o.buyerBillingType = "foo";
    o.cpm = buildMoneyDto();
    o.creativeBlockingLevel = "foo";
    o.creativeReviewPolicy = "foo";
    o.dealPremium = buildMoneyDto();
    o.description = "foo";
    o.descriptiveName = "foo";
    o.endDate = buildDateTime();
    o.estimatedImpressionsPerDay = "foo";
    o.estimatedSpend = buildMoneyDto();
    o.finalizeAutomatically = true;
    o.inventorySegmentTargeting = buildInventorySegmentTargeting();
    o.isReservation = true;
    o.minimumSpendMicros = "foo";
    o.minimumTrueLooks = "foo";
    o.monetizerType = "foo";
    o.semiTransparent = true;
    o.startDate = buildDateTime();
    o.targetByDealId = true;
    o.targetingAllAdSlots = true;
    o.termsAttributes = buildUnnamed173();
    o.urls = buildUnnamed174();
  }
  buildCounterTermsDto--;
  return o;
}

checkTermsDto(api.TermsDto o) {
  buildCounterTermsDto++;
  if (buildCounterTermsDto < 3) {
    checkUnnamed171(o.adSlots);
    checkUnnamed172(o.advertisers);
    checkAudienceSegment(o.audienceSegment);
    unittest.expect(o.audienceSegmentDescription, unittest.equals('foo'));
    unittest.expect(o.billingTerms, unittest.equals('foo'));
    unittest.expect(o.buyerBillingType, unittest.equals('foo'));
    checkMoneyDto(o.cpm);
    unittest.expect(o.creativeBlockingLevel, unittest.equals('foo'));
    unittest.expect(o.creativeReviewPolicy, unittest.equals('foo'));
    checkMoneyDto(o.dealPremium);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.descriptiveName, unittest.equals('foo'));
    checkDateTime(o.endDate);
    unittest.expect(o.estimatedImpressionsPerDay, unittest.equals('foo'));
    checkMoneyDto(o.estimatedSpend);
    unittest.expect(o.finalizeAutomatically, unittest.isTrue);
    checkInventorySegmentTargeting(o.inventorySegmentTargeting);
    unittest.expect(o.isReservation, unittest.isTrue);
    unittest.expect(o.minimumSpendMicros, unittest.equals('foo'));
    unittest.expect(o.minimumTrueLooks, unittest.equals('foo'));
    unittest.expect(o.monetizerType, unittest.equals('foo'));
    unittest.expect(o.semiTransparent, unittest.isTrue);
    checkDateTime(o.startDate);
    unittest.expect(o.targetByDealId, unittest.isTrue);
    unittest.expect(o.targetingAllAdSlots, unittest.isTrue);
    checkUnnamed173(o.termsAttributes);
    checkUnnamed174(o.urls);
  }
  buildCounterTermsDto--;
}

buildUnnamed175() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed175(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterUpdateOrderDealsRequest = 0;
buildUpdateOrderDealsRequest() {
  var o = new api.UpdateOrderDealsRequest();
  buildCounterUpdateOrderDealsRequest++;
  if (buildCounterUpdateOrderDealsRequest < 3) {
    o.deals = buildUnnamed175();
    o.orderRevisionNumber = "foo";
    o.updateAction = "foo";
    o.updatedFinalizedView = true;
  }
  buildCounterUpdateOrderDealsRequest--;
  return o;
}

checkUpdateOrderDealsRequest(api.UpdateOrderDealsRequest o) {
  buildCounterUpdateOrderDealsRequest++;
  if (buildCounterUpdateOrderDealsRequest < 3) {
    checkUnnamed175(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
    unittest.expect(o.updateAction, unittest.equals('foo'));
    unittest.expect(o.updatedFinalizedView, unittest.isTrue);
  }
  buildCounterUpdateOrderDealsRequest--;
}

buildUnnamed176() {
  var o = new core.List<api.MarketplaceDeal>();
  o.add(buildMarketplaceDeal());
  o.add(buildMarketplaceDeal());
  return o;
}

checkUnnamed176(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterUpdateOrderDealsResponse = 0;
buildUpdateOrderDealsResponse() {
  var o = new api.UpdateOrderDealsResponse();
  buildCounterUpdateOrderDealsResponse++;
  if (buildCounterUpdateOrderDealsResponse < 3) {
    o.deals = buildUnnamed176();
    o.orderRevisionNumber = "foo";
  }
  buildCounterUpdateOrderDealsResponse--;
  return o;
}

checkUpdateOrderDealsResponse(api.UpdateOrderDealsResponse o) {
  buildCounterUpdateOrderDealsResponse++;
  if (buildCounterUpdateOrderDealsResponse < 3) {
    checkUnnamed176(o.deals);
    unittest.expect(o.orderRevisionNumber, unittest.equals('foo'));
  }
  buildCounterUpdateOrderDealsResponse--;
}

buildUnnamed177() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebPropertyDto = 0;
buildWebPropertyDto() {
  var o = new api.WebPropertyDto();
  buildCounterWebPropertyDto++;
  if (buildCounterWebPropertyDto < 3) {
    o.allowInterestTargetedAds = true;
    o.enabledForPreferredDeals = true;
    o.id = 42;
    o.name = "foo";
    o.propertyCode = "foo";
    o.siteUrls = buildUnnamed177();
    o.syndicationProduct = "foo";
  }
  buildCounterWebPropertyDto--;
  return o;
}

checkWebPropertyDto(api.WebPropertyDto o) {
  buildCounterWebPropertyDto++;
  if (buildCounterWebPropertyDto < 3) {
    unittest.expect(o.allowInterestTargetedAds, unittest.isTrue);
    unittest.expect(o.enabledForPreferredDeals, unittest.isTrue);
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.propertyCode, unittest.equals('foo'));
    checkUnnamed177(o.siteUrls);
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
  }
  buildCounterWebPropertyDto--;
}

buildUnnamed178() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed178(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed179() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed179(core.List<core.String> o) {
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


  unittest.group("obj-schema-AdSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdSize();
      var od = new api.AdSize.fromJson(o.toJson());
      checkAdSize(od);
    });
  });


  unittest.group("obj-schema-AdSlotDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdSlotDto();
      var od = new api.AdSlotDto.fromJson(o.toJson());
      checkAdSlotDto(od);
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


  unittest.group("obj-schema-AdvertiserDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdvertiserDto();
      var od = new api.AdvertiserDto.fromJson(o.toJson());
      checkAdvertiserDto(od);
    });
  });


  unittest.group("obj-schema-AudienceSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAudienceSegment();
      var od = new api.AudienceSegment.fromJson(o.toJson());
      checkAudienceSegment(od);
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


  unittest.group("obj-schema-BrandDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildBrandDto();
      var od = new api.BrandDto.fromJson(o.toJson());
      checkBrandDto(od);
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


  unittest.group("obj-schema-BuyerDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuyerDto();
      var od = new api.BuyerDto.fromJson(o.toJson());
      checkBuyerDto(od);
    });
  });


  unittest.group("obj-schema-ClientAccessCapabilities", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientAccessCapabilities();
      var od = new api.ClientAccessCapabilities.fromJson(o.toJson());
      checkClientAccessCapabilities(od);
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


  unittest.group("obj-schema-CreativeServingRestrictionsContexts", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictionsContexts();
      var od = new api.CreativeServingRestrictionsContexts.fromJson(o.toJson());
      checkCreativeServingRestrictionsContexts(od);
    });
  });


  unittest.group("obj-schema-CreativeServingRestrictionsDisapprovalReasons", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeServingRestrictionsDisapprovalReasons();
      var od = new api.CreativeServingRestrictionsDisapprovalReasons.fromJson(o.toJson());
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


  unittest.group("obj-schema-CreativesList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativesList();
      var od = new api.CreativesList.fromJson(o.toJson());
      checkCreativesList(od);
    });
  });


  unittest.group("obj-schema-DateTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateTime();
      var od = new api.DateTime.fromJson(o.toJson());
      checkDateTime(od);
    });
  });


  unittest.group("obj-schema-DealPartyDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealPartyDto();
      var od = new api.DealPartyDto.fromJson(o.toJson());
      checkDealPartyDto(od);
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
      var od = new api.DealTermsNonGuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkDealTermsNonGuaranteedFixedPriceTerms(od);
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


  unittest.group("obj-schema-EditHistoryDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildEditHistoryDto();
      var od = new api.EditHistoryDto.fromJson(o.toJson());
      checkEditHistoryDto(od);
    });
  });


  unittest.group("obj-schema-GetFinalizedNegotiationByExternalDealIdRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetFinalizedNegotiationByExternalDealIdRequest();
      var od = new api.GetFinalizedNegotiationByExternalDealIdRequest.fromJson(o.toJson());
      checkGetFinalizedNegotiationByExternalDealIdRequest(od);
    });
  });


  unittest.group("obj-schema-GetNegotiationByIdRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetNegotiationByIdRequest();
      var od = new api.GetNegotiationByIdRequest.fromJson(o.toJson());
      checkGetNegotiationByIdRequest(od);
    });
  });


  unittest.group("obj-schema-GetNegotiationsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetNegotiationsRequest();
      var od = new api.GetNegotiationsRequest.fromJson(o.toJson());
      checkGetNegotiationsRequest(od);
    });
  });


  unittest.group("obj-schema-GetNegotiationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetNegotiationsResponse();
      var od = new api.GetNegotiationsResponse.fromJson(o.toJson());
      checkGetNegotiationsResponse(od);
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


  unittest.group("obj-schema-InventorySegmentTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventorySegmentTargeting();
      var od = new api.InventorySegmentTargeting.fromJson(o.toJson());
      checkInventorySegmentTargeting(od);
    });
  });


  unittest.group("obj-schema-ListClientAccessCapabilitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClientAccessCapabilitiesRequest();
      var od = new api.ListClientAccessCapabilitiesRequest.fromJson(o.toJson());
      checkListClientAccessCapabilitiesRequest(od);
    });
  });


  unittest.group("obj-schema-ListClientAccessCapabilitiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClientAccessCapabilitiesResponse();
      var od = new api.ListClientAccessCapabilitiesResponse.fromJson(o.toJson());
      checkListClientAccessCapabilitiesResponse(od);
    });
  });


  unittest.group("obj-schema-ListOffersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOffersRequest();
      var od = new api.ListOffersRequest.fromJson(o.toJson());
      checkListOffersRequest(od);
    });
  });


  unittest.group("obj-schema-ListOffersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOffersResponse();
      var od = new api.ListOffersResponse.fromJson(o.toJson());
      checkListOffersResponse(od);
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


  unittest.group("obj-schema-MarketplaceOffer", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceOffer();
      var od = new api.MarketplaceOffer.fromJson(o.toJson());
      checkMarketplaceOffer(od);
    });
  });


  unittest.group("obj-schema-MarketplaceOrder", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceOrder();
      var od = new api.MarketplaceOrder.fromJson(o.toJson());
      checkMarketplaceOrder(od);
    });
  });


  unittest.group("obj-schema-MoneyDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoneyDto();
      var od = new api.MoneyDto.fromJson(o.toJson());
      checkMoneyDto(od);
    });
  });


  unittest.group("obj-schema-NegotiationDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildNegotiationDto();
      var od = new api.NegotiationDto.fromJson(o.toJson());
      checkNegotiationDto(od);
    });
  });


  unittest.group("obj-schema-NegotiationRoundDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildNegotiationRoundDto();
      var od = new api.NegotiationRoundDto.fromJson(o.toJson());
      checkNegotiationRoundDto(od);
    });
  });


  unittest.group("obj-schema-OfferDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildOfferDto();
      var od = new api.OfferDto.fromJson(o.toJson());
      checkOfferDto(od);
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


  unittest.group("obj-schema-RuleKeyValuePair", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuleKeyValuePair();
      var od = new api.RuleKeyValuePair.fromJson(o.toJson());
      checkRuleKeyValuePair(od);
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


  unittest.group("obj-schema-StatsDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatsDto();
      var od = new api.StatsDto.fromJson(o.toJson());
      checkStatsDto(od);
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
      var od = new api.TargetingValueDayPartTargetingDayPart.fromJson(o.toJson());
      checkTargetingValueDayPartTargetingDayPart(od);
    });
  });


  unittest.group("obj-schema-TargetingValueSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValueSize();
      var od = new api.TargetingValueSize.fromJson(o.toJson());
      checkTargetingValueSize(od);
    });
  });


  unittest.group("obj-schema-TermsDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildTermsDto();
      var od = new api.TermsDto.fromJson(o.toJson());
      checkTermsDto(od);
    });
  });


  unittest.group("obj-schema-UpdateOrderDealsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateOrderDealsRequest();
      var od = new api.UpdateOrderDealsRequest.fromJson(o.toJson());
      checkUpdateOrderDealsRequest(od);
    });
  });


  unittest.group("obj-schema-UpdateOrderDealsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateOrderDealsResponse();
      var od = new api.UpdateOrderDealsResponse.fromJson(o.toJson());
      checkUpdateOrderDealsResponse(od);
    });
  });


  unittest.group("obj-schema-WebPropertyDto", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebPropertyDto();
      var od = new api.WebPropertyDto.fromJson(o.toJson());
      checkWebPropertyDto(od);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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


  unittest.group("resource-ClientaccessResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ClientaccessResourceApi res = new api.AdexchangebuyerApi(mock).clientaccess;
      var arg_clientAccountId = "foo";
      var arg_sponsorAccountId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("clientAccess/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        unittest.expect(core.int.parse(queryMap["sponsorAccountId"].first), unittest.equals(arg_sponsorAccountId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_clientAccountId, arg_sponsorAccountId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ClientaccessResourceApi res = new api.AdexchangebuyerApi(mock).clientaccess;
      var arg_clientAccountId = "foo";
      var arg_sponsorAccountId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("clientAccess/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        unittest.expect(core.int.parse(queryMap["sponsorAccountId"].first), unittest.equals(arg_sponsorAccountId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientAccessCapabilities());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_clientAccountId, arg_sponsorAccountId).then(unittest.expectAsync(((api.ClientAccessCapabilities response) {
        checkClientAccessCapabilities(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.ClientaccessResourceApi res = new api.AdexchangebuyerApi(mock).clientaccess;
      var arg_request = buildClientAccessCapabilities();
      var arg_clientAccountId = "foo";
      var arg_sponsorAccountId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ClientAccessCapabilities.fromJson(json);
        checkClientAccessCapabilities(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("clientAccess"));
        pathOffset += 12;

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
        unittest.expect(queryMap["clientAccountId"].first, unittest.equals(arg_clientAccountId));
        unittest.expect(core.int.parse(queryMap["sponsorAccountId"].first), unittest.equals(arg_sponsorAccountId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientAccessCapabilities());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, clientAccountId: arg_clientAccountId, sponsorAccountId: arg_sponsorAccountId).then(unittest.expectAsync(((api.ClientAccessCapabilities response) {
        checkClientAccessCapabilities(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ClientaccessResourceApi res = new api.AdexchangebuyerApi(mock).clientaccess;
      var arg_request = buildListClientAccessCapabilitiesRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ListClientAccessCapabilitiesRequest.fromJson(json);
        checkListClientAccessCapabilitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("clientAccess"));
        pathOffset += 12;

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
        var resp = convert.JSON.encode(buildListClientAccessCapabilitiesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_request).then(unittest.expectAsync(((api.ListClientAccessCapabilitiesResponse response) {
        checkListClientAccessCapabilitiesResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ClientaccessResourceApi res = new api.AdexchangebuyerApi(mock).clientaccess;
      var arg_request = buildClientAccessCapabilities();
      var arg_clientAccountId = "foo";
      var arg_sponsorAccountId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ClientAccessCapabilities.fromJson(json);
        checkClientAccessCapabilities(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("clientAccess/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        unittest.expect(core.int.parse(queryMap["sponsorAccountId"].first), unittest.equals(arg_sponsorAccountId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientAccessCapabilities());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_clientAccountId, arg_sponsorAccountId).then(unittest.expectAsync(((api.ClientAccessCapabilities response) {
        checkClientAccessCapabilities(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ClientaccessResourceApi res = new api.AdexchangebuyerApi(mock).clientaccess;
      var arg_request = buildClientAccessCapabilities();
      var arg_clientAccountId = "foo";
      var arg_sponsorAccountId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ClientAccessCapabilities.fromJson(json);
        checkClientAccessCapabilities(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("clientAccess/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        unittest.expect(core.int.parse(queryMap["sponsorAccountId"].first), unittest.equals(arg_sponsorAccountId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientAccessCapabilities());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_clientAccountId, arg_sponsorAccountId).then(unittest.expectAsync(((api.ClientAccessCapabilities response) {
        checkClientAccessCapabilities(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
      var arg_accountId = buildUnnamed178();
      var arg_buyerCreativeId = buildUnnamed179();
      var arg_dealsStatusFilter = "foo";
      var arg_maxResults = 42;
      var arg_openAuctionStatusFilter = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(queryMap["dealsStatusFilter"].first, unittest.equals(arg_dealsStatusFilter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["openAuctionStatusFilter"].first, unittest.equals(arg_openAuctionStatusFilter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCreativesList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(accountId: arg_accountId, buyerCreativeId: arg_buyerCreativeId, dealsStatusFilter: arg_dealsStatusFilter, maxResults: arg_maxResults, openAuctionStatusFilter: arg_openAuctionStatusFilter, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CreativesList response) {
        checkCreativesList(response);
      })));
    });

  });


  unittest.group("resource-DealsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.DealsResourceApi res = new api.AdexchangebuyerApi(mock).deals;
      var arg_request = buildGetFinalizedNegotiationByExternalDealIdRequest();
      var arg_dealId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GetFinalizedNegotiationByExternalDealIdRequest.fromJson(json);
        checkGetFinalizedNegotiationByExternalDealIdRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("deals/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_dealId"));

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
        var resp = convert.JSON.encode(buildNegotiationDto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_request, arg_dealId).then(unittest.expectAsync(((api.NegotiationDto response) {
        checkNegotiationDto(response);
      })));
    });

  });


  unittest.group("resource-MarketplacedealsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res = new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildAddOrderDealsRequest();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AddOrderDealsRequest.fromJson(json);
        checkAddOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/deals/create", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/deals/create"));
        pathOffset += 13;

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
        var resp = convert.JSON.encode(buildAddOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_orderId).then(unittest.expectAsync(((api.AddOrderDealsResponse response) {
        checkAddOrderDealsResponse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res = new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildDeleteOrderDealsRequest();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DeleteOrderDealsRequest.fromJson(json);
        checkDeleteOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/deals/delete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/deals/delete"));
        pathOffset += 13;

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
        var resp = convert.JSON.encode(buildDeleteOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_request, arg_orderId).then(unittest.expectAsync(((api.DeleteOrderDealsResponse response) {
        checkDeleteOrderDealsResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res = new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/deals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/deals"));
        pathOffset += 6;

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
        var resp = convert.JSON.encode(buildGetOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_orderId).then(unittest.expectAsync(((api.GetOrderDealsResponse response) {
        checkGetOrderDealsResponse(response);
      })));
    });

    unittest.test("method--replace", () {

      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res = new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildEditAllOrderDealsRequest();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.EditAllOrderDealsRequest.fromJson(json);
        checkEditAllOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/deals/replace", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/deals/replace"));
        pathOffset += 14;

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
        var resp = convert.JSON.encode(buildEditAllOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.replace(arg_request, arg_orderId).then(unittest.expectAsync(((api.EditAllOrderDealsResponse response) {
        checkEditAllOrderDealsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.MarketplacedealsResourceApi res = new api.AdexchangebuyerApi(mock).marketplacedeals;
      var arg_request = buildUpdateOrderDealsRequest();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UpdateOrderDealsRequest.fromJson(json);
        checkUpdateOrderDealsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/deals/update", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/deals/update"));
        pathOffset += 13;

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
        var resp = convert.JSON.encode(buildUpdateOrderDealsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_orderId).then(unittest.expectAsync(((api.UpdateOrderDealsResponse response) {
        checkUpdateOrderDealsResponse(response);
      })));
    });

  });


  unittest.group("resource-MarketplacenotesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.MarketplacenotesResourceApi res = new api.AdexchangebuyerApi(mock).marketplacenotes;
      var arg_request = buildAddOrderNotesRequest();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AddOrderNotesRequest.fromJson(json);
        checkAddOrderNotesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/notes/add", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/notes/add"));
        pathOffset += 10;

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
        var resp = convert.JSON.encode(buildAddOrderNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_orderId).then(unittest.expectAsync(((api.AddOrderNotesResponse response) {
        checkAddOrderNotesResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.MarketplacenotesResourceApi res = new api.AdexchangebuyerApi(mock).marketplacenotes;
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        index = path.indexOf("/notes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/notes"));
        pathOffset += 6;

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
        var resp = convert.JSON.encode(buildGetOrderNotesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_orderId).then(unittest.expectAsync(((api.GetOrderNotesResponse response) {
        checkGetOrderNotesResponse(response);
      })));
    });

  });


  unittest.group("resource-MarketplaceoffersResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.MarketplaceoffersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceoffers;
      var arg_offerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOffers/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_offerId"));

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
        var resp = convert.JSON.encode(buildMarketplaceOffer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_offerId).then(unittest.expectAsync(((api.MarketplaceOffer response) {
        checkMarketplaceOffer(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.MarketplaceoffersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceoffers;
      var arg_pqlQuery = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 24), unittest.equals("marketplaceOffers/search"));
        pathOffset += 24;

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
        unittest.expect(queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetOffersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(pqlQuery: arg_pqlQuery).then(unittest.expectAsync(((api.GetOffersResponse response) {
        checkGetOffersResponse(response);
      })));
    });

  });


  unittest.group("resource-MarketplaceordersResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.MarketplaceordersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceorders;
      var arg_request = buildCreateOrdersRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CreateOrdersRequest.fromJson(json);
        checkCreateOrdersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 24), unittest.equals("marketplaceOrders/create"));
        pathOffset += 24;

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
        var resp = convert.JSON.encode(buildCreateOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.CreateOrdersResponse response) {
        checkCreateOrdersResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.MarketplaceordersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceorders;
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));

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
        var resp = convert.JSON.encode(buildMarketplaceOrder());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_orderId).then(unittest.expectAsync(((api.MarketplaceOrder response) {
        checkMarketplaceOrder(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.MarketplaceordersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceorders;
      var arg_request = buildMarketplaceOrder();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.MarketplaceOrder.fromJson(json);
        checkMarketplaceOrder(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));

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
        var resp = convert.JSON.encode(buildMarketplaceOrder());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_orderId).then(unittest.expectAsync(((api.MarketplaceOrder response) {
        checkMarketplaceOrder(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.MarketplaceordersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceorders;
      var arg_pqlQuery = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 24), unittest.equals("marketplaceOrders/search"));
        pathOffset += 24;

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
        unittest.expect(queryMap["pqlQuery"].first, unittest.equals(arg_pqlQuery));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetOrdersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(pqlQuery: arg_pqlQuery).then(unittest.expectAsync(((api.GetOrdersResponse response) {
        checkGetOrdersResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.MarketplaceordersResourceApi res = new api.AdexchangebuyerApi(mock).marketplaceorders;
      var arg_request = buildMarketplaceOrder();
      var arg_orderId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.MarketplaceOrder.fromJson(json);
        checkMarketplaceOrder(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("marketplaceOrders/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_orderId"));

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
        var resp = convert.JSON.encode(buildMarketplaceOrder());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_orderId).then(unittest.expectAsync(((api.MarketplaceOrder response) {
        checkMarketplaceOrder(response);
      })));
    });

  });


  unittest.group("resource-NegotiationroundsResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.NegotiationroundsResourceApi res = new api.AdexchangebuyerApi(mock).negotiationrounds;
      var arg_request = buildNegotiationRoundDto();
      var arg_negotiationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.NegotiationRoundDto.fromJson(json);
        checkNegotiationRoundDto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("negotiations/"));
        pathOffset += 13;
        index = path.indexOf("/negotiationrounds", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_negotiationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/negotiationrounds"));
        pathOffset += 18;

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
        var resp = convert.JSON.encode(buildNegotiationRoundDto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_negotiationId).then(unittest.expectAsync(((api.NegotiationRoundDto response) {
        checkNegotiationRoundDto(response);
      })));
    });

  });


  unittest.group("resource-NegotiationsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.NegotiationsResourceApi res = new api.AdexchangebuyerApi(mock).negotiations;
      var arg_request = buildGetNegotiationByIdRequest();
      var arg_negotiationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GetNegotiationByIdRequest.fromJson(json);
        checkGetNegotiationByIdRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("negotiations/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_negotiationId"));

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
        var resp = convert.JSON.encode(buildNegotiationDto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_request, arg_negotiationId).then(unittest.expectAsync(((api.NegotiationDto response) {
        checkNegotiationDto(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.NegotiationsResourceApi res = new api.AdexchangebuyerApi(mock).negotiations;
      var arg_request = buildNegotiationDto();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.NegotiationDto.fromJson(json);
        checkNegotiationDto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("negotiations"));
        pathOffset += 12;

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
        var resp = convert.JSON.encode(buildNegotiationDto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.NegotiationDto response) {
        checkNegotiationDto(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.NegotiationsResourceApi res = new api.AdexchangebuyerApi(mock).negotiations;
      var arg_request = buildGetNegotiationsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GetNegotiationsRequest.fromJson(json);
        checkGetNegotiationsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("negotiations"));
        pathOffset += 12;

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
        var resp = convert.JSON.encode(buildGetNegotiationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_request).then(unittest.expectAsync(((api.GetNegotiationsResponse response) {
        checkGetNegotiationsResponse(response);
      })));
    });

  });


  unittest.group("resource-OffersResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.OffersResourceApi res = new api.AdexchangebuyerApi(mock).offers;
      var arg_offerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("offers/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_offerId"));

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
        var resp = convert.JSON.encode(buildOfferDto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_offerId).then(unittest.expectAsync(((api.OfferDto response) {
        checkOfferDto(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.OffersResourceApi res = new api.AdexchangebuyerApi(mock).offers;
      var arg_request = buildOfferDto();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.OfferDto.fromJson(json);
        checkOfferDto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("offers"));
        pathOffset += 6;

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
        var resp = convert.JSON.encode(buildOfferDto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.OfferDto response) {
        checkOfferDto(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.OffersResourceApi res = new api.AdexchangebuyerApi(mock).offers;
      var arg_request = buildListOffersRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ListOffersRequest.fromJson(json);
        checkListOffersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("offers"));
        pathOffset += 6;

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
        var resp = convert.JSON.encode(buildListOffersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_request).then(unittest.expectAsync(((api.ListOffersResponse response) {
        checkListOffersResponse(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("adexchangebuyer/v1.4/"));
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

