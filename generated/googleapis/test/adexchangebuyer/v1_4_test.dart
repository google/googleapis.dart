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

import 'package:googleapis/adexchangebuyer/v1_4.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountBidderLocation = 0;
api.AccountBidderLocation buildAccountBidderLocation() {
  final o = api.AccountBidderLocation();
  buildCounterAccountBidderLocation++;
  if (buildCounterAccountBidderLocation < 3) {
    o.bidProtocol = 'foo';
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
      o.bidProtocol!,
      unittest.equals('foo'),
    );
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

core.List<api.AccountBidderLocation> buildUnnamed2648() => [
      buildAccountBidderLocation(),
      buildAccountBidderLocation(),
    ];

void checkUnnamed2648(core.List<api.AccountBidderLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountBidderLocation(o[0]);
  checkAccountBidderLocation(o[1]);
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.applyPretargetingToNonGuaranteedDeals = true;
    o.bidderLocation = buildUnnamed2648();
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
    unittest.expect(o.applyPretargetingToNonGuaranteedDeals!, unittest.isTrue);
    checkUnnamed2648(o.bidderLocation!);
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

core.List<api.Account> buildUnnamed2649() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed2649(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsList = 0;
api.AccountsList buildAccountsList() {
  final o = api.AccountsList();
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    o.items = buildUnnamed2649();
    o.kind = 'foo';
  }
  buildCounterAccountsList--;
  return o;
}

void checkAccountsList(api.AccountsList o) {
  buildCounterAccountsList++;
  if (buildCounterAccountsList < 3) {
    checkUnnamed2649(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsList--;
}

core.List<api.MarketplaceDeal> buildUnnamed2650() => [
      buildMarketplaceDeal(),
      buildMarketplaceDeal(),
    ];

void checkUnnamed2650(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsRequest = 0;
api.AddOrderDealsRequest buildAddOrderDealsRequest() {
  final o = api.AddOrderDealsRequest();
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    o.deals = buildUnnamed2650();
    o.proposalRevisionNumber = 'foo';
    o.updateAction = 'foo';
  }
  buildCounterAddOrderDealsRequest--;
  return o;
}

void checkAddOrderDealsRequest(api.AddOrderDealsRequest o) {
  buildCounterAddOrderDealsRequest++;
  if (buildCounterAddOrderDealsRequest < 3) {
    checkUnnamed2650(o.deals!);
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateAction!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddOrderDealsRequest--;
}

core.List<api.MarketplaceDeal> buildUnnamed2651() => [
      buildMarketplaceDeal(),
      buildMarketplaceDeal(),
    ];

void checkUnnamed2651(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterAddOrderDealsResponse = 0;
api.AddOrderDealsResponse buildAddOrderDealsResponse() {
  final o = api.AddOrderDealsResponse();
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    o.deals = buildUnnamed2651();
    o.proposalRevisionNumber = 'foo';
  }
  buildCounterAddOrderDealsResponse--;
  return o;
}

void checkAddOrderDealsResponse(api.AddOrderDealsResponse o) {
  buildCounterAddOrderDealsResponse++;
  if (buildCounterAddOrderDealsResponse < 3) {
    checkUnnamed2651(o.deals!);
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddOrderDealsResponse--;
}

core.List<api.MarketplaceNote> buildUnnamed2652() => [
      buildMarketplaceNote(),
      buildMarketplaceNote(),
    ];

void checkUnnamed2652(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesRequest = 0;
api.AddOrderNotesRequest buildAddOrderNotesRequest() {
  final o = api.AddOrderNotesRequest();
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    o.notes = buildUnnamed2652();
  }
  buildCounterAddOrderNotesRequest--;
  return o;
}

void checkAddOrderNotesRequest(api.AddOrderNotesRequest o) {
  buildCounterAddOrderNotesRequest++;
  if (buildCounterAddOrderNotesRequest < 3) {
    checkUnnamed2652(o.notes!);
  }
  buildCounterAddOrderNotesRequest--;
}

core.List<api.MarketplaceNote> buildUnnamed2653() => [
      buildMarketplaceNote(),
      buildMarketplaceNote(),
    ];

void checkUnnamed2653(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterAddOrderNotesResponse = 0;
api.AddOrderNotesResponse buildAddOrderNotesResponse() {
  final o = api.AddOrderNotesResponse();
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    o.notes = buildUnnamed2653();
  }
  buildCounterAddOrderNotesResponse--;
  return o;
}

void checkAddOrderNotesResponse(api.AddOrderNotesResponse o) {
  buildCounterAddOrderNotesResponse++;
  if (buildCounterAddOrderNotesResponse < 3) {
    checkUnnamed2653(o.notes!);
  }
  buildCounterAddOrderNotesResponse--;
}

core.List<core.String> buildUnnamed2654() => [
      'foo',
      'foo',
    ];

void checkUnnamed2654(core.List<core.String> o) {
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
    o.billingId = buildUnnamed2654();
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
    checkUnnamed2654(o.billingId!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingInfo--;
}

core.List<api.BillingInfo> buildUnnamed2655() => [
      buildBillingInfo(),
      buildBillingInfo(),
    ];

void checkUnnamed2655(core.List<api.BillingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingInfo(o[0]);
  checkBillingInfo(o[1]);
}

core.int buildCounterBillingInfoList = 0;
api.BillingInfoList buildBillingInfoList() {
  final o = api.BillingInfoList();
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    o.items = buildUnnamed2655();
    o.kind = 'foo';
  }
  buildCounterBillingInfoList--;
  return o;
}

void checkBillingInfoList(api.BillingInfoList o) {
  buildCounterBillingInfoList++;
  if (buildCounterBillingInfoList < 3) {
    checkUnnamed2655(o.items!);
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

core.int buildCounterBuyer = 0;
api.Buyer buildBuyer() {
  final o = api.Buyer();
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    o.accountId = 'foo';
  }
  buildCounterBuyer--;
  return o;
}

void checkBuyer(api.Buyer o) {
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuyer--;
}

core.int buildCounterContactInformation = 0;
api.ContactInformation buildContactInformation() {
  final o = api.ContactInformation();
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    o.email = 'foo';
    o.name = 'foo';
  }
  buildCounterContactInformation--;
  return o;
}

void checkContactInformation(api.ContactInformation o) {
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterContactInformation--;
}

core.List<api.Proposal> buildUnnamed2656() => [
      buildProposal(),
      buildProposal(),
    ];

void checkUnnamed2656(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterCreateOrdersRequest = 0;
api.CreateOrdersRequest buildCreateOrdersRequest() {
  final o = api.CreateOrdersRequest();
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    o.proposals = buildUnnamed2656();
    o.webPropertyCode = 'foo';
  }
  buildCounterCreateOrdersRequest--;
  return o;
}

void checkCreateOrdersRequest(api.CreateOrdersRequest o) {
  buildCounterCreateOrdersRequest++;
  if (buildCounterCreateOrdersRequest < 3) {
    checkUnnamed2656(o.proposals!);
    unittest.expect(
      o.webPropertyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateOrdersRequest--;
}

core.List<api.Proposal> buildUnnamed2657() => [
      buildProposal(),
      buildProposal(),
    ];

void checkUnnamed2657(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterCreateOrdersResponse = 0;
api.CreateOrdersResponse buildCreateOrdersResponse() {
  final o = api.CreateOrdersResponse();
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    o.proposals = buildUnnamed2657();
  }
  buildCounterCreateOrdersResponse--;
  return o;
}

void checkCreateOrdersResponse(api.CreateOrdersResponse o) {
  buildCounterCreateOrdersResponse++;
  if (buildCounterCreateOrdersResponse < 3) {
    checkUnnamed2657(o.proposals!);
  }
  buildCounterCreateOrdersResponse--;
}

core.List<core.String> buildUnnamed2658() => [
      'foo',
      'foo',
    ];

void checkUnnamed2658(core.List<core.String> o) {
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
    o.detectedProviderIds = buildUnnamed2658();
    o.hasUnidentifiedProvider = true;
  }
  buildCounterCreativeAdTechnologyProviders--;
  return o;
}

void checkCreativeAdTechnologyProviders(api.CreativeAdTechnologyProviders o) {
  buildCounterCreativeAdTechnologyProviders++;
  if (buildCounterCreativeAdTechnologyProviders < 3) {
    checkUnnamed2658(o.detectedProviderIds!);
    unittest.expect(o.hasUnidentifiedProvider!, unittest.isTrue);
  }
  buildCounterCreativeAdTechnologyProviders--;
}

core.List<core.String> buildUnnamed2659() => [
      'foo',
      'foo',
    ];

void checkUnnamed2659(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed2660() => [
      42,
      42,
    ];

void checkUnnamed2660(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed2661() => [
      'foo',
      'foo',
    ];

void checkUnnamed2661(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2662() => [
      'foo',
      'foo',
    ];

void checkUnnamed2662(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed2663() => [
      42,
      42,
    ];

void checkUnnamed2663(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed2664() => [
      'foo',
      'foo',
    ];

void checkUnnamed2664(core.List<core.String> o) {
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

core.int buildCounterCreativeCorrectionsContexts = 0;
api.CreativeCorrectionsContexts buildCreativeCorrectionsContexts() {
  final o = api.CreativeCorrectionsContexts();
  buildCounterCreativeCorrectionsContexts++;
  if (buildCounterCreativeCorrectionsContexts < 3) {
    o.auctionType = buildUnnamed2662();
    o.contextType = 'foo';
    o.geoCriteriaId = buildUnnamed2663();
    o.platform = buildUnnamed2664();
  }
  buildCounterCreativeCorrectionsContexts--;
  return o;
}

void checkCreativeCorrectionsContexts(api.CreativeCorrectionsContexts o) {
  buildCounterCreativeCorrectionsContexts++;
  if (buildCounterCreativeCorrectionsContexts < 3) {
    checkUnnamed2662(o.auctionType!);
    unittest.expect(
      o.contextType!,
      unittest.equals('foo'),
    );
    checkUnnamed2663(o.geoCriteriaId!);
    checkUnnamed2664(o.platform!);
  }
  buildCounterCreativeCorrectionsContexts--;
}

core.List<api.CreativeCorrectionsContexts> buildUnnamed2665() => [
      buildCreativeCorrectionsContexts(),
      buildCreativeCorrectionsContexts(),
    ];

void checkUnnamed2665(core.List<api.CreativeCorrectionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrectionsContexts(o[0]);
  checkCreativeCorrectionsContexts(o[1]);
}

core.List<core.String> buildUnnamed2666() => [
      'foo',
      'foo',
    ];

void checkUnnamed2666(core.List<core.String> o) {
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
    o.contexts = buildUnnamed2665();
    o.details = buildUnnamed2666();
    o.reason = 'foo';
  }
  buildCounterCreativeCorrections--;
  return o;
}

void checkCreativeCorrections(api.CreativeCorrections o) {
  buildCounterCreativeCorrections++;
  if (buildCounterCreativeCorrections < 3) {
    checkUnnamed2665(o.contexts!);
    checkUnnamed2666(o.details!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeCorrections--;
}

core.List<api.CreativeCorrections> buildUnnamed2667() => [
      buildCreativeCorrections(),
      buildCreativeCorrections(),
    ];

void checkUnnamed2667(core.List<api.CreativeCorrections> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCorrections(o[0]);
  checkCreativeCorrections(o[1]);
}

core.List<core.String> buildUnnamed2668() => [
      'foo',
      'foo',
    ];

void checkUnnamed2668(core.List<core.String> o) {
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

core.List<api.CreativeFilteringReasonsReasons> buildUnnamed2669() => [
      buildCreativeFilteringReasonsReasons(),
      buildCreativeFilteringReasonsReasons(),
    ];

void checkUnnamed2669(core.List<api.CreativeFilteringReasonsReasons> o) {
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
    o.reasons = buildUnnamed2669();
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
    checkUnnamed2669(o.reasons!);
  }
  buildCounterCreativeFilteringReasons--;
}

core.List<core.String> buildUnnamed2670() => [
      'foo',
      'foo',
    ];

void checkUnnamed2670(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2671() => [
      'foo',
      'foo',
    ];

void checkUnnamed2671(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2672() => [
      'foo',
      'foo',
    ];

void checkUnnamed2672(core.List<core.String> o) {
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
    o.clickLinkUrl = 'foo';
    o.clickTrackingUrl = 'foo';
    o.headline = 'foo';
    o.image = buildCreativeNativeAdImage();
    o.impressionTrackingUrl = buildUnnamed2672();
    o.logo = buildCreativeNativeAdLogo();
    o.price = 'foo';
    o.starRating = 42.0;
    o.videoURL = 'foo';
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
      o.clickLinkUrl!,
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
    checkUnnamed2672(o.impressionTrackingUrl!);
    checkCreativeNativeAdLogo(o.logo!);
    unittest.expect(
      o.price!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.starRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.videoURL!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeNativeAd--;
}

core.List<core.int> buildUnnamed2673() => [
      42,
      42,
    ];

void checkUnnamed2673(core.List<core.int> o) {
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

core.List<core.int> buildUnnamed2674() => [
      42,
      42,
    ];

void checkUnnamed2674(core.List<core.int> o) {
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

core.List<core.int> buildUnnamed2675() => [
      42,
      42,
    ];

void checkUnnamed2675(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed2676() => [
      'foo',
      'foo',
    ];

void checkUnnamed2676(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed2677() => [
      42,
      42,
    ];

void checkUnnamed2677(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed2678() => [
      'foo',
      'foo',
    ];

void checkUnnamed2678(core.List<core.String> o) {
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

core.int buildCounterCreativeServingRestrictionsContexts = 0;
api.CreativeServingRestrictionsContexts
    buildCreativeServingRestrictionsContexts() {
  final o = api.CreativeServingRestrictionsContexts();
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    o.auctionType = buildUnnamed2676();
    o.contextType = 'foo';
    o.geoCriteriaId = buildUnnamed2677();
    o.platform = buildUnnamed2678();
  }
  buildCounterCreativeServingRestrictionsContexts--;
  return o;
}

void checkCreativeServingRestrictionsContexts(
    api.CreativeServingRestrictionsContexts o) {
  buildCounterCreativeServingRestrictionsContexts++;
  if (buildCounterCreativeServingRestrictionsContexts < 3) {
    checkUnnamed2676(o.auctionType!);
    unittest.expect(
      o.contextType!,
      unittest.equals('foo'),
    );
    checkUnnamed2677(o.geoCriteriaId!);
    checkUnnamed2678(o.platform!);
  }
  buildCounterCreativeServingRestrictionsContexts--;
}

core.List<api.CreativeServingRestrictionsContexts> buildUnnamed2679() => [
      buildCreativeServingRestrictionsContexts(),
      buildCreativeServingRestrictionsContexts(),
    ];

void checkUnnamed2679(core.List<api.CreativeServingRestrictionsContexts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsContexts(o[0]);
  checkCreativeServingRestrictionsContexts(o[1]);
}

core.List<core.String> buildUnnamed2680() => [
      'foo',
      'foo',
    ];

void checkUnnamed2680(core.List<core.String> o) {
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

core.int buildCounterCreativeServingRestrictionsDisapprovalReasons = 0;
api.CreativeServingRestrictionsDisapprovalReasons
    buildCreativeServingRestrictionsDisapprovalReasons() {
  final o = api.CreativeServingRestrictionsDisapprovalReasons();
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    o.details = buildUnnamed2680();
    o.reason = 'foo';
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
  return o;
}

void checkCreativeServingRestrictionsDisapprovalReasons(
    api.CreativeServingRestrictionsDisapprovalReasons o) {
  buildCounterCreativeServingRestrictionsDisapprovalReasons++;
  if (buildCounterCreativeServingRestrictionsDisapprovalReasons < 3) {
    checkUnnamed2680(o.details!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeServingRestrictionsDisapprovalReasons--;
}

core.List<api.CreativeServingRestrictionsDisapprovalReasons>
    buildUnnamed2681() => [
          buildCreativeServingRestrictionsDisapprovalReasons(),
          buildCreativeServingRestrictionsDisapprovalReasons(),
        ];

void checkUnnamed2681(
    core.List<api.CreativeServingRestrictionsDisapprovalReasons> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictionsDisapprovalReasons(o[0]);
  checkCreativeServingRestrictionsDisapprovalReasons(o[1]);
}

core.int buildCounterCreativeServingRestrictions = 0;
api.CreativeServingRestrictions buildCreativeServingRestrictions() {
  final o = api.CreativeServingRestrictions();
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    o.contexts = buildUnnamed2679();
    o.disapprovalReasons = buildUnnamed2681();
    o.reason = 'foo';
  }
  buildCounterCreativeServingRestrictions--;
  return o;
}

void checkCreativeServingRestrictions(api.CreativeServingRestrictions o) {
  buildCounterCreativeServingRestrictions++;
  if (buildCounterCreativeServingRestrictions < 3) {
    checkUnnamed2679(o.contexts!);
    checkUnnamed2681(o.disapprovalReasons!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeServingRestrictions--;
}

core.List<api.CreativeServingRestrictions> buildUnnamed2682() => [
      buildCreativeServingRestrictions(),
      buildCreativeServingRestrictions(),
    ];

void checkUnnamed2682(core.List<api.CreativeServingRestrictions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeServingRestrictions(o[0]);
  checkCreativeServingRestrictions(o[1]);
}

core.List<core.int> buildUnnamed2683() => [
      42,
      42,
    ];

void checkUnnamed2683(core.List<core.int> o) {
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
    o.adChoicesDestinationUrl = 'foo';
    o.adTechnologyProviders = buildCreativeAdTechnologyProviders();
    o.advertiserId = buildUnnamed2659();
    o.advertiserName = 'foo';
    o.agencyId = 'foo';
    o.apiUploadTimestamp = core.DateTime.parse('2002-02-27T14:01:02');
    o.attribute = buildUnnamed2660();
    o.buyerCreativeId = 'foo';
    o.clickThroughUrl = buildUnnamed2661();
    o.corrections = buildUnnamed2667();
    o.creativeStatusIdentityType = 'foo';
    o.dealsStatus = 'foo';
    o.detectedDomains = buildUnnamed2668();
    o.filteringReasons = buildCreativeFilteringReasons();
    o.height = 42;
    o.impressionTrackingUrl = buildUnnamed2670();
    o.kind = 'foo';
    o.languages = buildUnnamed2671();
    o.nativeAd = buildCreativeNativeAd();
    o.openAuctionStatus = 'foo';
    o.productCategories = buildUnnamed2673();
    o.restrictedCategories = buildUnnamed2674();
    o.sensitiveCategories = buildUnnamed2675();
    o.servingRestrictions = buildUnnamed2682();
    o.vendorType = buildUnnamed2683();
    o.version = 42;
    o.videoURL = 'foo';
    o.videoVastXML = 'foo';
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
    unittest.expect(
      o.adChoicesDestinationUrl!,
      unittest.equals('foo'),
    );
    checkCreativeAdTechnologyProviders(o.adTechnologyProviders!);
    checkUnnamed2659(o.advertiserId!);
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
    checkUnnamed2660(o.attribute!);
    unittest.expect(
      o.buyerCreativeId!,
      unittest.equals('foo'),
    );
    checkUnnamed2661(o.clickThroughUrl!);
    checkUnnamed2667(o.corrections!);
    unittest.expect(
      o.creativeStatusIdentityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealsStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed2668(o.detectedDomains!);
    checkCreativeFilteringReasons(o.filteringReasons!);
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkUnnamed2670(o.impressionTrackingUrl!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2671(o.languages!);
    checkCreativeNativeAd(o.nativeAd!);
    unittest.expect(
      o.openAuctionStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed2673(o.productCategories!);
    checkUnnamed2674(o.restrictedCategories!);
    checkUnnamed2675(o.sensitiveCategories!);
    checkUnnamed2682(o.servingRestrictions!);
    checkUnnamed2683(o.vendorType!);
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
    unittest.expect(
      o.videoURL!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoVastXML!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeDealIdsDealStatuses = 0;
api.CreativeDealIdsDealStatuses buildCreativeDealIdsDealStatuses() {
  final o = api.CreativeDealIdsDealStatuses();
  buildCounterCreativeDealIdsDealStatuses++;
  if (buildCounterCreativeDealIdsDealStatuses < 3) {
    o.arcStatus = 'foo';
    o.dealId = 'foo';
    o.webPropertyId = 42;
  }
  buildCounterCreativeDealIdsDealStatuses--;
  return o;
}

void checkCreativeDealIdsDealStatuses(api.CreativeDealIdsDealStatuses o) {
  buildCounterCreativeDealIdsDealStatuses++;
  if (buildCounterCreativeDealIdsDealStatuses < 3) {
    unittest.expect(
      o.arcStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals(42),
    );
  }
  buildCounterCreativeDealIdsDealStatuses--;
}

core.List<api.CreativeDealIdsDealStatuses> buildUnnamed2684() => [
      buildCreativeDealIdsDealStatuses(),
      buildCreativeDealIdsDealStatuses(),
    ];

void checkUnnamed2684(core.List<api.CreativeDealIdsDealStatuses> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealIdsDealStatuses(o[0]);
  checkCreativeDealIdsDealStatuses(o[1]);
}

core.int buildCounterCreativeDealIds = 0;
api.CreativeDealIds buildCreativeDealIds() {
  final o = api.CreativeDealIds();
  buildCounterCreativeDealIds++;
  if (buildCounterCreativeDealIds < 3) {
    o.dealStatuses = buildUnnamed2684();
    o.kind = 'foo';
  }
  buildCounterCreativeDealIds--;
  return o;
}

void checkCreativeDealIds(api.CreativeDealIds o) {
  buildCounterCreativeDealIds++;
  if (buildCounterCreativeDealIds < 3) {
    checkUnnamed2684(o.dealStatuses!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeDealIds--;
}

core.List<api.Creative> buildUnnamed2685() => [
      buildCreative(),
      buildCreative(),
    ];

void checkUnnamed2685(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesList = 0;
api.CreativesList buildCreativesList() {
  final o = api.CreativesList();
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    o.items = buildUnnamed2685();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativesList--;
  return o;
}

void checkCreativesList(api.CreativesList o) {
  buildCounterCreativesList++;
  if (buildCounterCreativesList < 3) {
    checkUnnamed2685(o.items!);
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

core.int buildCounterDealServingMetadata = 0;
api.DealServingMetadata buildDealServingMetadata() {
  final o = api.DealServingMetadata();
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    o.alcoholAdsAllowed = true;
    o.dealPauseStatus = buildDealServingMetadataDealPauseStatus();
  }
  buildCounterDealServingMetadata--;
  return o;
}

void checkDealServingMetadata(api.DealServingMetadata o) {
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    unittest.expect(o.alcoholAdsAllowed!, unittest.isTrue);
    checkDealServingMetadataDealPauseStatus(o.dealPauseStatus!);
  }
  buildCounterDealServingMetadata--;
}

core.int buildCounterDealServingMetadataDealPauseStatus = 0;
api.DealServingMetadataDealPauseStatus
    buildDealServingMetadataDealPauseStatus() {
  final o = api.DealServingMetadataDealPauseStatus();
  buildCounterDealServingMetadataDealPauseStatus++;
  if (buildCounterDealServingMetadataDealPauseStatus < 3) {
    o.buyerPauseReason = 'foo';
    o.firstPausedBy = 'foo';
    o.hasBuyerPaused = true;
    o.hasSellerPaused = true;
    o.sellerPauseReason = 'foo';
  }
  buildCounterDealServingMetadataDealPauseStatus--;
  return o;
}

void checkDealServingMetadataDealPauseStatus(
    api.DealServingMetadataDealPauseStatus o) {
  buildCounterDealServingMetadataDealPauseStatus++;
  if (buildCounterDealServingMetadataDealPauseStatus < 3) {
    unittest.expect(
      o.buyerPauseReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstPausedBy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasBuyerPaused!, unittest.isTrue);
    unittest.expect(o.hasSellerPaused!, unittest.isTrue);
    unittest.expect(
      o.sellerPauseReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterDealServingMetadataDealPauseStatus--;
}

core.int buildCounterDealTerms = 0;
api.DealTerms buildDealTerms() {
  final o = api.DealTerms();
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    o.brandingType = 'foo';
    o.crossListedExternalDealIdType = 'foo';
    o.description = 'foo';
    o.estimatedGrossSpend = buildPrice();
    o.estimatedImpressionsPerDay = 'foo';
    o.guaranteedFixedPriceTerms = buildDealTermsGuaranteedFixedPriceTerms();
    o.nonGuaranteedAuctionTerms = buildDealTermsNonGuaranteedAuctionTerms();
    o.nonGuaranteedFixedPriceTerms =
        buildDealTermsNonGuaranteedFixedPriceTerms();
    o.rubiconNonGuaranteedTerms = buildDealTermsRubiconNonGuaranteedTerms();
    o.sellerTimeZone = 'foo';
  }
  buildCounterDealTerms--;
  return o;
}

void checkDealTerms(api.DealTerms o) {
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    unittest.expect(
      o.brandingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crossListedExternalDealIdType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkPrice(o.estimatedGrossSpend!);
    unittest.expect(
      o.estimatedImpressionsPerDay!,
      unittest.equals('foo'),
    );
    checkDealTermsGuaranteedFixedPriceTerms(o.guaranteedFixedPriceTerms!);
    checkDealTermsNonGuaranteedAuctionTerms(o.nonGuaranteedAuctionTerms!);
    checkDealTermsNonGuaranteedFixedPriceTerms(o.nonGuaranteedFixedPriceTerms!);
    checkDealTermsRubiconNonGuaranteedTerms(o.rubiconNonGuaranteedTerms!);
    unittest.expect(
      o.sellerTimeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterDealTerms--;
}

core.List<api.PricePerBuyer> buildUnnamed2686() => [
      buildPricePerBuyer(),
      buildPricePerBuyer(),
    ];

void checkUnnamed2686(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsGuaranteedFixedPriceTerms = 0;
api.DealTermsGuaranteedFixedPriceTerms
    buildDealTermsGuaranteedFixedPriceTerms() {
  final o = api.DealTermsGuaranteedFixedPriceTerms();
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    o.billingInfo = buildDealTermsGuaranteedFixedPriceTermsBillingInfo();
    o.fixedPrices = buildUnnamed2686();
    o.guaranteedImpressions = 'foo';
    o.guaranteedLooks = 'foo';
    o.minimumDailyLooks = 'foo';
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
  return o;
}

void checkDealTermsGuaranteedFixedPriceTerms(
    api.DealTermsGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsGuaranteedFixedPriceTerms < 3) {
    checkDealTermsGuaranteedFixedPriceTermsBillingInfo(o.billingInfo!);
    checkUnnamed2686(o.fixedPrices!);
    unittest.expect(
      o.guaranteedImpressions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.guaranteedLooks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumDailyLooks!,
      unittest.equals('foo'),
    );
  }
  buildCounterDealTermsGuaranteedFixedPriceTerms--;
}

core.int buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo = 0;
api.DealTermsGuaranteedFixedPriceTermsBillingInfo
    buildDealTermsGuaranteedFixedPriceTermsBillingInfo() {
  final o = api.DealTermsGuaranteedFixedPriceTermsBillingInfo();
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo++;
  if (buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo < 3) {
    o.currencyConversionTimeMs = 'foo';
    o.dfpLineItemId = 'foo';
    o.originalContractedQuantity = 'foo';
    o.price = buildPrice();
  }
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo--;
  return o;
}

void checkDealTermsGuaranteedFixedPriceTermsBillingInfo(
    api.DealTermsGuaranteedFixedPriceTermsBillingInfo o) {
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo++;
  if (buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo < 3) {
    unittest.expect(
      o.currencyConversionTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dfpLineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalContractedQuantity!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
  }
  buildCounterDealTermsGuaranteedFixedPriceTermsBillingInfo--;
}

core.List<api.PricePerBuyer> buildUnnamed2687() => [
      buildPricePerBuyer(),
      buildPricePerBuyer(),
    ];

void checkUnnamed2687(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedAuctionTerms = 0;
api.DealTermsNonGuaranteedAuctionTerms
    buildDealTermsNonGuaranteedAuctionTerms() {
  final o = api.DealTermsNonGuaranteedAuctionTerms();
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    o.autoOptimizePrivateAuction = true;
    o.reservePricePerBuyers = buildUnnamed2687();
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
  return o;
}

void checkDealTermsNonGuaranteedAuctionTerms(
    api.DealTermsNonGuaranteedAuctionTerms o) {
  buildCounterDealTermsNonGuaranteedAuctionTerms++;
  if (buildCounterDealTermsNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.autoOptimizePrivateAuction!, unittest.isTrue);
    checkUnnamed2687(o.reservePricePerBuyers!);
  }
  buildCounterDealTermsNonGuaranteedAuctionTerms--;
}

core.List<api.PricePerBuyer> buildUnnamed2688() => [
      buildPricePerBuyer(),
      buildPricePerBuyer(),
    ];

void checkUnnamed2688(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterDealTermsNonGuaranteedFixedPriceTerms = 0;
api.DealTermsNonGuaranteedFixedPriceTerms
    buildDealTermsNonGuaranteedFixedPriceTerms() {
  final o = api.DealTermsNonGuaranteedFixedPriceTerms();
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed2688();
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
  return o;
}

void checkDealTermsNonGuaranteedFixedPriceTerms(
    api.DealTermsNonGuaranteedFixedPriceTerms o) {
  buildCounterDealTermsNonGuaranteedFixedPriceTerms++;
  if (buildCounterDealTermsNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed2688(o.fixedPrices!);
  }
  buildCounterDealTermsNonGuaranteedFixedPriceTerms--;
}

core.int buildCounterDealTermsRubiconNonGuaranteedTerms = 0;
api.DealTermsRubiconNonGuaranteedTerms
    buildDealTermsRubiconNonGuaranteedTerms() {
  final o = api.DealTermsRubiconNonGuaranteedTerms();
  buildCounterDealTermsRubiconNonGuaranteedTerms++;
  if (buildCounterDealTermsRubiconNonGuaranteedTerms < 3) {
    o.priorityPrice = buildPrice();
    o.standardPrice = buildPrice();
  }
  buildCounterDealTermsRubiconNonGuaranteedTerms--;
  return o;
}

void checkDealTermsRubiconNonGuaranteedTerms(
    api.DealTermsRubiconNonGuaranteedTerms o) {
  buildCounterDealTermsRubiconNonGuaranteedTerms++;
  if (buildCounterDealTermsRubiconNonGuaranteedTerms < 3) {
    checkPrice(o.priorityPrice!);
    checkPrice(o.standardPrice!);
  }
  buildCounterDealTermsRubiconNonGuaranteedTerms--;
}

core.List<core.String> buildUnnamed2689() => [
      'foo',
      'foo',
    ];

void checkUnnamed2689(core.List<core.String> o) {
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

core.int buildCounterDeleteOrderDealsRequest = 0;
api.DeleteOrderDealsRequest buildDeleteOrderDealsRequest() {
  final o = api.DeleteOrderDealsRequest();
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    o.dealIds = buildUnnamed2689();
    o.proposalRevisionNumber = 'foo';
    o.updateAction = 'foo';
  }
  buildCounterDeleteOrderDealsRequest--;
  return o;
}

void checkDeleteOrderDealsRequest(api.DeleteOrderDealsRequest o) {
  buildCounterDeleteOrderDealsRequest++;
  if (buildCounterDeleteOrderDealsRequest < 3) {
    checkUnnamed2689(o.dealIds!);
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateAction!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteOrderDealsRequest--;
}

core.List<api.MarketplaceDeal> buildUnnamed2690() => [
      buildMarketplaceDeal(),
      buildMarketplaceDeal(),
    ];

void checkUnnamed2690(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterDeleteOrderDealsResponse = 0;
api.DeleteOrderDealsResponse buildDeleteOrderDealsResponse() {
  final o = api.DeleteOrderDealsResponse();
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    o.deals = buildUnnamed2690();
    o.proposalRevisionNumber = 'foo';
  }
  buildCounterDeleteOrderDealsResponse--;
  return o;
}

void checkDeleteOrderDealsResponse(api.DeleteOrderDealsResponse o) {
  buildCounterDeleteOrderDealsResponse++;
  if (buildCounterDeleteOrderDealsResponse < 3) {
    checkUnnamed2690(o.deals!);
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteOrderDealsResponse--;
}

core.List<api.DeliveryControlFrequencyCap> buildUnnamed2691() => [
      buildDeliveryControlFrequencyCap(),
      buildDeliveryControlFrequencyCap(),
    ];

void checkUnnamed2691(core.List<api.DeliveryControlFrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeliveryControlFrequencyCap(o[0]);
  checkDeliveryControlFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
api.DeliveryControl buildDeliveryControl() {
  final o = api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.creativeBlockingLevel = 'foo';
    o.deliveryRateType = 'foo';
    o.frequencyCaps = buildUnnamed2691();
  }
  buildCounterDeliveryControl--;
  return o;
}

void checkDeliveryControl(api.DeliveryControl o) {
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    unittest.expect(
      o.creativeBlockingLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryRateType!,
      unittest.equals('foo'),
    );
    checkUnnamed2691(o.frequencyCaps!);
  }
  buildCounterDeliveryControl--;
}

core.int buildCounterDeliveryControlFrequencyCap = 0;
api.DeliveryControlFrequencyCap buildDeliveryControlFrequencyCap() {
  final o = api.DeliveryControlFrequencyCap();
  buildCounterDeliveryControlFrequencyCap++;
  if (buildCounterDeliveryControlFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.numTimeUnits = 42;
    o.timeUnitType = 'foo';
  }
  buildCounterDeliveryControlFrequencyCap--;
  return o;
}

void checkDeliveryControlFrequencyCap(api.DeliveryControlFrequencyCap o) {
  buildCounterDeliveryControlFrequencyCap++;
  if (buildCounterDeliveryControlFrequencyCap < 3) {
    unittest.expect(
      o.maxImpressions!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numTimeUnits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.timeUnitType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryControlFrequencyCap--;
}

core.List<api.DimensionDimensionValue> buildUnnamed2692() => [
      buildDimensionDimensionValue(),
      buildDimensionDimensionValue(),
    ];

void checkUnnamed2692(core.List<api.DimensionDimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionDimensionValue(o[0]);
  checkDimensionDimensionValue(o[1]);
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  final o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.dimensionType = 'foo';
    o.dimensionValues = buildUnnamed2692();
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(
      o.dimensionType!,
      unittest.equals('foo'),
    );
    checkUnnamed2692(o.dimensionValues!);
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionDimensionValue = 0;
api.DimensionDimensionValue buildDimensionDimensionValue() {
  final o = api.DimensionDimensionValue();
  buildCounterDimensionDimensionValue++;
  if (buildCounterDimensionDimensionValue < 3) {
    o.id = 42;
    o.name = 'foo';
    o.percentage = 42;
  }
  buildCounterDimensionDimensionValue--;
  return o;
}

void checkDimensionDimensionValue(api.DimensionDimensionValue o) {
  buildCounterDimensionDimensionValue++;
  if (buildCounterDimensionDimensionValue < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
  }
  buildCounterDimensionDimensionValue--;
}

core.List<api.MarketplaceDeal> buildUnnamed2693() => [
      buildMarketplaceDeal(),
      buildMarketplaceDeal(),
    ];

void checkUnnamed2693(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsRequest = 0;
api.EditAllOrderDealsRequest buildEditAllOrderDealsRequest() {
  final o = api.EditAllOrderDealsRequest();
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    o.deals = buildUnnamed2693();
    o.proposal = buildProposal();
    o.proposalRevisionNumber = 'foo';
    o.updateAction = 'foo';
  }
  buildCounterEditAllOrderDealsRequest--;
  return o;
}

void checkEditAllOrderDealsRequest(api.EditAllOrderDealsRequest o) {
  buildCounterEditAllOrderDealsRequest++;
  if (buildCounterEditAllOrderDealsRequest < 3) {
    checkUnnamed2693(o.deals!);
    checkProposal(o.proposal!);
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateAction!,
      unittest.equals('foo'),
    );
  }
  buildCounterEditAllOrderDealsRequest--;
}

core.List<api.MarketplaceDeal> buildUnnamed2694() => [
      buildMarketplaceDeal(),
      buildMarketplaceDeal(),
    ];

void checkUnnamed2694(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterEditAllOrderDealsResponse = 0;
api.EditAllOrderDealsResponse buildEditAllOrderDealsResponse() {
  final o = api.EditAllOrderDealsResponse();
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    o.deals = buildUnnamed2694();
    o.orderRevisionNumber = 'foo';
  }
  buildCounterEditAllOrderDealsResponse--;
  return o;
}

void checkEditAllOrderDealsResponse(api.EditAllOrderDealsResponse o) {
  buildCounterEditAllOrderDealsResponse++;
  if (buildCounterEditAllOrderDealsResponse < 3) {
    checkUnnamed2694(o.deals!);
    unittest.expect(
      o.orderRevisionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterEditAllOrderDealsResponse--;
}

core.List<api.Product> buildUnnamed2695() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed2695(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterGetOffersResponse = 0;
api.GetOffersResponse buildGetOffersResponse() {
  final o = api.GetOffersResponse();
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    o.products = buildUnnamed2695();
  }
  buildCounterGetOffersResponse--;
  return o;
}

void checkGetOffersResponse(api.GetOffersResponse o) {
  buildCounterGetOffersResponse++;
  if (buildCounterGetOffersResponse < 3) {
    checkUnnamed2695(o.products!);
  }
  buildCounterGetOffersResponse--;
}

core.List<api.MarketplaceDeal> buildUnnamed2696() => [
      buildMarketplaceDeal(),
      buildMarketplaceDeal(),
    ];

void checkUnnamed2696(core.List<api.MarketplaceDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceDeal(o[0]);
  checkMarketplaceDeal(o[1]);
}

core.int buildCounterGetOrderDealsResponse = 0;
api.GetOrderDealsResponse buildGetOrderDealsResponse() {
  final o = api.GetOrderDealsResponse();
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    o.deals = buildUnnamed2696();
  }
  buildCounterGetOrderDealsResponse--;
  return o;
}

void checkGetOrderDealsResponse(api.GetOrderDealsResponse o) {
  buildCounterGetOrderDealsResponse++;
  if (buildCounterGetOrderDealsResponse < 3) {
    checkUnnamed2696(o.deals!);
  }
  buildCounterGetOrderDealsResponse--;
}

core.List<api.MarketplaceNote> buildUnnamed2697() => [
      buildMarketplaceNote(),
      buildMarketplaceNote(),
    ];

void checkUnnamed2697(core.List<api.MarketplaceNote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceNote(o[0]);
  checkMarketplaceNote(o[1]);
}

core.int buildCounterGetOrderNotesResponse = 0;
api.GetOrderNotesResponse buildGetOrderNotesResponse() {
  final o = api.GetOrderNotesResponse();
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    o.notes = buildUnnamed2697();
  }
  buildCounterGetOrderNotesResponse--;
  return o;
}

void checkGetOrderNotesResponse(api.GetOrderNotesResponse o) {
  buildCounterGetOrderNotesResponse++;
  if (buildCounterGetOrderNotesResponse < 3) {
    checkUnnamed2697(o.notes!);
  }
  buildCounterGetOrderNotesResponse--;
}

core.List<api.Proposal> buildUnnamed2698() => [
      buildProposal(),
      buildProposal(),
    ];

void checkUnnamed2698(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterGetOrdersResponse = 0;
api.GetOrdersResponse buildGetOrdersResponse() {
  final o = api.GetOrdersResponse();
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    o.proposals = buildUnnamed2698();
  }
  buildCounterGetOrdersResponse--;
  return o;
}

void checkGetOrdersResponse(api.GetOrdersResponse o) {
  buildCounterGetOrdersResponse++;
  if (buildCounterGetOrdersResponse < 3) {
    checkUnnamed2698(o.proposals!);
  }
  buildCounterGetOrdersResponse--;
}

core.List<api.PublisherProfileApiProto> buildUnnamed2699() => [
      buildPublisherProfileApiProto(),
      buildPublisherProfileApiProto(),
    ];

void checkUnnamed2699(core.List<api.PublisherProfileApiProto> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfileApiProto(o[0]);
  checkPublisherProfileApiProto(o[1]);
}

core.int buildCounterGetPublisherProfilesByAccountIdResponse = 0;
api.GetPublisherProfilesByAccountIdResponse
    buildGetPublisherProfilesByAccountIdResponse() {
  final o = api.GetPublisherProfilesByAccountIdResponse();
  buildCounterGetPublisherProfilesByAccountIdResponse++;
  if (buildCounterGetPublisherProfilesByAccountIdResponse < 3) {
    o.profiles = buildUnnamed2699();
  }
  buildCounterGetPublisherProfilesByAccountIdResponse--;
  return o;
}

void checkGetPublisherProfilesByAccountIdResponse(
    api.GetPublisherProfilesByAccountIdResponse o) {
  buildCounterGetPublisherProfilesByAccountIdResponse++;
  if (buildCounterGetPublisherProfilesByAccountIdResponse < 3) {
    checkUnnamed2699(o.profiles!);
  }
  buildCounterGetPublisherProfilesByAccountIdResponse--;
}

core.List<api.ContactInformation> buildUnnamed2700() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed2700(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.List<api.SharedTargeting> buildUnnamed2701() => [
      buildSharedTargeting(),
      buildSharedTargeting(),
    ];

void checkUnnamed2701(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterMarketplaceDeal = 0;
api.MarketplaceDeal buildMarketplaceDeal() {
  final o = api.MarketplaceDeal();
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    o.buyerPrivateData = buildPrivateData();
    o.creationTimeMs = 'foo';
    o.creativePreApprovalPolicy = 'foo';
    o.creativeSafeFrameCompatibility = 'foo';
    o.dealId = 'foo';
    o.dealServingMetadata = buildDealServingMetadata();
    o.deliveryControl = buildDeliveryControl();
    o.externalDealId = 'foo';
    o.flightEndTimeMs = 'foo';
    o.flightStartTimeMs = 'foo';
    o.inventoryDescription = 'foo';
    o.isRfpTemplate = true;
    o.isSetupComplete = true;
    o.kind = 'foo';
    o.lastUpdateTimeMs = 'foo';
    o.makegoodRequestedReason = 'foo';
    o.name = 'foo';
    o.productId = 'foo';
    o.productRevisionNumber = 'foo';
    o.programmaticCreativeSource = 'foo';
    o.proposalId = 'foo';
    o.sellerContacts = buildUnnamed2700();
    o.sharedTargetings = buildUnnamed2701();
    o.syndicationProduct = 'foo';
    o.terms = buildDealTerms();
    o.webPropertyCode = 'foo';
  }
  buildCounterMarketplaceDeal--;
  return o;
}

void checkMarketplaceDeal(api.MarketplaceDeal o) {
  buildCounterMarketplaceDeal++;
  if (buildCounterMarketplaceDeal < 3) {
    checkPrivateData(o.buyerPrivateData!);
    unittest.expect(
      o.creationTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativePreApprovalPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeSafeFrameCompatibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealId!,
      unittest.equals('foo'),
    );
    checkDealServingMetadata(o.dealServingMetadata!);
    checkDeliveryControl(o.deliveryControl!);
    unittest.expect(
      o.externalDealId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flightEndTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flightStartTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inventoryDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRfpTemplate!, unittest.isTrue);
    unittest.expect(o.isSetupComplete!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.makegoodRequestedReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productRevisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.programmaticCreativeSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalId!,
      unittest.equals('foo'),
    );
    checkUnnamed2700(o.sellerContacts!);
    checkUnnamed2701(o.sharedTargetings!);
    unittest.expect(
      o.syndicationProduct!,
      unittest.equals('foo'),
    );
    checkDealTerms(o.terms!);
    unittest.expect(
      o.webPropertyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterMarketplaceDeal--;
}

core.int buildCounterMarketplaceDealParty = 0;
api.MarketplaceDealParty buildMarketplaceDealParty() {
  final o = api.MarketplaceDealParty();
  buildCounterMarketplaceDealParty++;
  if (buildCounterMarketplaceDealParty < 3) {
    o.buyer = buildBuyer();
    o.seller = buildSeller();
  }
  buildCounterMarketplaceDealParty--;
  return o;
}

void checkMarketplaceDealParty(api.MarketplaceDealParty o) {
  buildCounterMarketplaceDealParty++;
  if (buildCounterMarketplaceDealParty < 3) {
    checkBuyer(o.buyer!);
    checkSeller(o.seller!);
  }
  buildCounterMarketplaceDealParty--;
}

core.int buildCounterMarketplaceLabel = 0;
api.MarketplaceLabel buildMarketplaceLabel() {
  final o = api.MarketplaceLabel();
  buildCounterMarketplaceLabel++;
  if (buildCounterMarketplaceLabel < 3) {
    o.accountId = 'foo';
    o.createTimeMs = 'foo';
    o.deprecatedMarketplaceDealParty = buildMarketplaceDealParty();
    o.label = 'foo';
  }
  buildCounterMarketplaceLabel--;
  return o;
}

void checkMarketplaceLabel(api.MarketplaceLabel o) {
  buildCounterMarketplaceLabel++;
  if (buildCounterMarketplaceLabel < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTimeMs!,
      unittest.equals('foo'),
    );
    checkMarketplaceDealParty(o.deprecatedMarketplaceDealParty!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
  }
  buildCounterMarketplaceLabel--;
}

core.int buildCounterMarketplaceNote = 0;
api.MarketplaceNote buildMarketplaceNote() {
  final o = api.MarketplaceNote();
  buildCounterMarketplaceNote++;
  if (buildCounterMarketplaceNote < 3) {
    o.creatorRole = 'foo';
    o.dealId = 'foo';
    o.kind = 'foo';
    o.note = 'foo';
    o.noteId = 'foo';
    o.proposalId = 'foo';
    o.proposalRevisionNumber = 'foo';
    o.timestampMs = 'foo';
  }
  buildCounterMarketplaceNote--;
  return o;
}

void checkMarketplaceNote(api.MarketplaceNote o) {
  buildCounterMarketplaceNote++;
  if (buildCounterMarketplaceNote < 3) {
    unittest.expect(
      o.creatorRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noteId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterMarketplaceNote--;
}

core.int buildCounterMobileApplication = 0;
api.MobileApplication buildMobileApplication() {
  final o = api.MobileApplication();
  buildCounterMobileApplication++;
  if (buildCounterMobileApplication < 3) {
    o.appStore = 'foo';
    o.externalAppId = 'foo';
  }
  buildCounterMobileApplication--;
  return o;
}

void checkMobileApplication(api.MobileApplication o) {
  buildCounterMobileApplication++;
  if (buildCounterMobileApplication < 3) {
    unittest.expect(
      o.appStore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalAppId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileApplication--;
}

core.List<core.Object> buildUnnamed2702() => [
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

void checkUnnamed2702(core.List<core.Object> o) {
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

core.List<core.Object> buildUnnamed2703() => [
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

void checkUnnamed2703(core.List<core.Object> o) {
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

core.List<core.Object> buildUnnamed2704() => [
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

void checkUnnamed2704(core.List<core.Object> o) {
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

core.List<core.Object> buildUnnamed2705() => [
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

void checkUnnamed2705(core.List<core.Object> o) {
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
    o.calloutStatusRate = buildUnnamed2702();
    o.cookieMatcherStatusRate = buildUnnamed2703();
    o.creativeStatusRate = buildUnnamed2704();
    o.filteredBidRate = 42.0;
    o.hostedMatchStatusRate = buildUnnamed2705();
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
    checkUnnamed2702(o.calloutStatusRate!);
    checkUnnamed2703(o.cookieMatcherStatusRate!);
    checkUnnamed2704(o.creativeStatusRate!);
    unittest.expect(
      o.filteredBidRate!,
      unittest.equals(42.0),
    );
    checkUnnamed2705(o.hostedMatchStatusRate!);
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

core.List<api.PerformanceReport> buildUnnamed2706() => [
      buildPerformanceReport(),
      buildPerformanceReport(),
    ];

void checkUnnamed2706(core.List<api.PerformanceReport> o) {
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
    o.performanceReport = buildUnnamed2706();
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
    checkUnnamed2706(o.performanceReport!);
  }
  buildCounterPerformanceReportList--;
}

core.List<core.String> buildUnnamed2707() => [
      'foo',
      'foo',
    ];

void checkUnnamed2707(core.List<core.String> o) {
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

core.List<api.PretargetingConfigDimensions> buildUnnamed2708() => [
      buildPretargetingConfigDimensions(),
      buildPretargetingConfigDimensions(),
    ];

void checkUnnamed2708(core.List<api.PretargetingConfigDimensions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigDimensions(o[0]);
  checkPretargetingConfigDimensions(o[1]);
}

core.List<core.String> buildUnnamed2709() => [
      'foo',
      'foo',
    ];

void checkUnnamed2709(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2710() => [
      'foo',
      'foo',
    ];

void checkUnnamed2710(core.List<core.String> o) {
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

core.List<api.PretargetingConfigExcludedPlacements> buildUnnamed2711() => [
      buildPretargetingConfigExcludedPlacements(),
      buildPretargetingConfigExcludedPlacements(),
    ];

void checkUnnamed2711(core.List<api.PretargetingConfigExcludedPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigExcludedPlacements(o[0]);
  checkPretargetingConfigExcludedPlacements(o[1]);
}

core.List<core.String> buildUnnamed2712() => [
      'foo',
      'foo',
    ];

void checkUnnamed2712(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2713() => [
      'foo',
      'foo',
    ];

void checkUnnamed2713(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2714() => [
      'foo',
      'foo',
    ];

void checkUnnamed2714(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2715() => [
      'foo',
      'foo',
    ];

void checkUnnamed2715(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2716() => [
      'foo',
      'foo',
    ];

void checkUnnamed2716(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2717() => [
      'foo',
      'foo',
    ];

void checkUnnamed2717(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2718() => [
      'foo',
      'foo',
    ];

void checkUnnamed2718(core.List<core.String> o) {
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

core.List<api.PretargetingConfigPlacements> buildUnnamed2719() => [
      buildPretargetingConfigPlacements(),
      buildPretargetingConfigPlacements(),
    ];

void checkUnnamed2719(core.List<api.PretargetingConfigPlacements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigPlacements(o[0]);
  checkPretargetingConfigPlacements(o[1]);
}

core.List<core.String> buildUnnamed2720() => [
      'foo',
      'foo',
    ];

void checkUnnamed2720(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2721() => [
      'foo',
      'foo',
    ];

void checkUnnamed2721(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2722() => [
      'foo',
      'foo',
    ];

void checkUnnamed2722(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2723() => [
      'foo',
      'foo',
    ];

void checkUnnamed2723(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2724() => [
      'foo',
      'foo',
    ];

void checkUnnamed2724(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2725() => [
      'foo',
      'foo',
    ];

void checkUnnamed2725(core.List<core.String> o) {
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

core.int buildCounterPretargetingConfigVideoPlayerSizes = 0;
api.PretargetingConfigVideoPlayerSizes
    buildPretargetingConfigVideoPlayerSizes() {
  final o = api.PretargetingConfigVideoPlayerSizes();
  buildCounterPretargetingConfigVideoPlayerSizes++;
  if (buildCounterPretargetingConfigVideoPlayerSizes < 3) {
    o.aspectRatio = 'foo';
    o.minHeight = 'foo';
    o.minWidth = 'foo';
  }
  buildCounterPretargetingConfigVideoPlayerSizes--;
  return o;
}

void checkPretargetingConfigVideoPlayerSizes(
    api.PretargetingConfigVideoPlayerSizes o) {
  buildCounterPretargetingConfigVideoPlayerSizes++;
  if (buildCounterPretargetingConfigVideoPlayerSizes < 3) {
    unittest.expect(
      o.aspectRatio!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minHeight!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minWidth!,
      unittest.equals('foo'),
    );
  }
  buildCounterPretargetingConfigVideoPlayerSizes--;
}

core.List<api.PretargetingConfigVideoPlayerSizes> buildUnnamed2726() => [
      buildPretargetingConfigVideoPlayerSizes(),
      buildPretargetingConfigVideoPlayerSizes(),
    ];

void checkUnnamed2726(core.List<api.PretargetingConfigVideoPlayerSizes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfigVideoPlayerSizes(o[0]);
  checkPretargetingConfigVideoPlayerSizes(o[1]);
}

core.int buildCounterPretargetingConfig = 0;
api.PretargetingConfig buildPretargetingConfig() {
  final o = api.PretargetingConfig();
  buildCounterPretargetingConfig++;
  if (buildCounterPretargetingConfig < 3) {
    o.billingId = 'foo';
    o.configId = 'foo';
    o.configName = 'foo';
    o.creativeType = buildUnnamed2707();
    o.dimensions = buildUnnamed2708();
    o.excludedContentLabels = buildUnnamed2709();
    o.excludedGeoCriteriaIds = buildUnnamed2710();
    o.excludedPlacements = buildUnnamed2711();
    o.excludedUserLists = buildUnnamed2712();
    o.excludedVerticals = buildUnnamed2713();
    o.geoCriteriaIds = buildUnnamed2714();
    o.isActive = true;
    o.kind = 'foo';
    o.languages = buildUnnamed2715();
    o.maximumQps = 'foo';
    o.minimumViewabilityDecile = 42;
    o.mobileCarriers = buildUnnamed2716();
    o.mobileDevices = buildUnnamed2717();
    o.mobileOperatingSystemVersions = buildUnnamed2718();
    o.placements = buildUnnamed2719();
    o.platforms = buildUnnamed2720();
    o.supportedCreativeAttributes = buildUnnamed2721();
    o.userIdentifierDataRequired = buildUnnamed2722();
    o.userLists = buildUnnamed2723();
    o.vendorTypes = buildUnnamed2724();
    o.verticals = buildUnnamed2725();
    o.videoPlayerSizes = buildUnnamed2726();
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
    checkUnnamed2707(o.creativeType!);
    checkUnnamed2708(o.dimensions!);
    checkUnnamed2709(o.excludedContentLabels!);
    checkUnnamed2710(o.excludedGeoCriteriaIds!);
    checkUnnamed2711(o.excludedPlacements!);
    checkUnnamed2712(o.excludedUserLists!);
    checkUnnamed2713(o.excludedVerticals!);
    checkUnnamed2714(o.geoCriteriaIds!);
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2715(o.languages!);
    unittest.expect(
      o.maximumQps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumViewabilityDecile!,
      unittest.equals(42),
    );
    checkUnnamed2716(o.mobileCarriers!);
    checkUnnamed2717(o.mobileDevices!);
    checkUnnamed2718(o.mobileOperatingSystemVersions!);
    checkUnnamed2719(o.placements!);
    checkUnnamed2720(o.platforms!);
    checkUnnamed2721(o.supportedCreativeAttributes!);
    checkUnnamed2722(o.userIdentifierDataRequired!);
    checkUnnamed2723(o.userLists!);
    checkUnnamed2724(o.vendorTypes!);
    checkUnnamed2725(o.verticals!);
    checkUnnamed2726(o.videoPlayerSizes!);
  }
  buildCounterPretargetingConfig--;
}

core.List<api.PretargetingConfig> buildUnnamed2727() => [
      buildPretargetingConfig(),
      buildPretargetingConfig(),
    ];

void checkUnnamed2727(core.List<api.PretargetingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPretargetingConfig(o[0]);
  checkPretargetingConfig(o[1]);
}

core.int buildCounterPretargetingConfigList = 0;
api.PretargetingConfigList buildPretargetingConfigList() {
  final o = api.PretargetingConfigList();
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    o.items = buildUnnamed2727();
    o.kind = 'foo';
  }
  buildCounterPretargetingConfigList--;
  return o;
}

void checkPretargetingConfigList(api.PretargetingConfigList o) {
  buildCounterPretargetingConfigList++;
  if (buildCounterPretargetingConfigList < 3) {
    checkUnnamed2727(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPretargetingConfigList--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 42.0;
    o.currencyCode = 'foo';
    o.expectedCpmMicros = 42.0;
    o.pricingType = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(
      o.amountMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedCpmMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pricingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.int buildCounterPricePerBuyer = 0;
api.PricePerBuyer buildPricePerBuyer() {
  final o = api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.auctionTier = 'foo';
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

void checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    unittest.expect(
      o.auctionTier!,
      unittest.equals('foo'),
    );
    checkBuyer(o.billedBuyer!);
    checkBuyer(o.buyer!);
    checkPrice(o.price!);
  }
  buildCounterPricePerBuyer--;
}

core.int buildCounterPrivateData = 0;
api.PrivateData buildPrivateData() {
  final o = api.PrivateData();
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    o.referenceId = 'foo';
    o.referencePayload = 'foo';
  }
  buildCounterPrivateData--;
  return o;
}

void checkPrivateData(api.PrivateData o) {
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    unittest.expect(
      o.referenceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referencePayload!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateData--;
}

core.List<api.ContactInformation> buildUnnamed2728() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed2728(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.List<api.MarketplaceLabel> buildUnnamed2729() => [
      buildMarketplaceLabel(),
      buildMarketplaceLabel(),
    ];

void checkUnnamed2729(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

core.List<api.SharedTargeting> buildUnnamed2730() => [
      buildSharedTargeting(),
      buildSharedTargeting(),
    ];

void checkUnnamed2730(core.List<api.SharedTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSharedTargeting(o[0]);
  checkSharedTargeting(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.creationTimeMs = 'foo';
    o.creatorContacts = buildUnnamed2728();
    o.creatorRole = 'foo';
    o.deliveryControl = buildDeliveryControl();
    o.flightEndTimeMs = 'foo';
    o.flightStartTimeMs = 'foo';
    o.hasCreatorSignedOff = true;
    o.inventorySource = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed2729();
    o.lastUpdateTimeMs = 'foo';
    o.legacyOfferId = 'foo';
    o.marketplacePublisherProfileId = 'foo';
    o.name = 'foo';
    o.privateAuctionId = 'foo';
    o.productId = 'foo';
    o.publisherProfileId = 'foo';
    o.publisherProvidedForecast = buildPublisherProvidedForecast();
    o.revisionNumber = 'foo';
    o.seller = buildSeller();
    o.sharedTargetings = buildUnnamed2730();
    o.state = 'foo';
    o.syndicationProduct = 'foo';
    o.terms = buildDealTerms();
    o.webPropertyCode = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkBuyer(o.billedBuyer!);
    checkBuyer(o.buyer!);
    unittest.expect(
      o.creationTimeMs!,
      unittest.equals('foo'),
    );
    checkUnnamed2728(o.creatorContacts!);
    unittest.expect(
      o.creatorRole!,
      unittest.equals('foo'),
    );
    checkDeliveryControl(o.deliveryControl!);
    unittest.expect(
      o.flightEndTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flightStartTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasCreatorSignedOff!, unittest.isTrue);
    unittest.expect(
      o.inventorySource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2729(o.labels!);
    unittest.expect(
      o.lastUpdateTimeMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.legacyOfferId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.marketplacePublisherProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateAuctionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherProfileId!,
      unittest.equals('foo'),
    );
    checkPublisherProvidedForecast(o.publisherProvidedForecast!);
    unittest.expect(
      o.revisionNumber!,
      unittest.equals('foo'),
    );
    checkSeller(o.seller!);
    checkUnnamed2730(o.sharedTargetings!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syndicationProduct!,
      unittest.equals('foo'),
    );
    checkDealTerms(o.terms!);
    unittest.expect(
      o.webPropertyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.List<api.ContactInformation> buildUnnamed2731() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed2731(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.List<core.String> buildUnnamed2732() => [
      'foo',
      'foo',
    ];

void checkUnnamed2732(core.List<core.String> o) {
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

core.List<api.MarketplaceLabel> buildUnnamed2733() => [
      buildMarketplaceLabel(),
      buildMarketplaceLabel(),
    ];

void checkUnnamed2733(core.List<api.MarketplaceLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketplaceLabel(o[0]);
  checkMarketplaceLabel(o[1]);
}

core.List<api.ContactInformation> buildUnnamed2734() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed2734(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.int buildCounterProposal = 0;
api.Proposal buildProposal() {
  final o = api.Proposal();
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.buyerContacts = buildUnnamed2731();
    o.buyerPrivateData = buildPrivateData();
    o.dbmAdvertiserIds = buildUnnamed2732();
    o.hasBuyerSignedOff = true;
    o.hasSellerSignedOff = true;
    o.inventorySource = 'foo';
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.kind = 'foo';
    o.labels = buildUnnamed2733();
    o.lastUpdaterOrCommentorRole = 'foo';
    o.name = 'foo';
    o.negotiationId = 'foo';
    o.originatorRole = 'foo';
    o.privateAuctionId = 'foo';
    o.proposalId = 'foo';
    o.proposalState = 'foo';
    o.revisionNumber = 'foo';
    o.revisionTimeMs = 'foo';
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed2734();
  }
  buildCounterProposal--;
  return o;
}

void checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    checkBuyer(o.billedBuyer!);
    checkBuyer(o.buyer!);
    checkUnnamed2731(o.buyerContacts!);
    checkPrivateData(o.buyerPrivateData!);
    checkUnnamed2732(o.dbmAdvertiserIds!);
    unittest.expect(o.hasBuyerSignedOff!, unittest.isTrue);
    unittest.expect(o.hasSellerSignedOff!, unittest.isTrue);
    unittest.expect(
      o.inventorySource!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRenegotiating!, unittest.isTrue);
    unittest.expect(o.isSetupComplete!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2733(o.labels!);
    unittest.expect(
      o.lastUpdaterOrCommentorRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.negotiationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originatorRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateAuctionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionTimeMs!,
      unittest.equals('foo'),
    );
    checkSeller(o.seller!);
    checkUnnamed2734(o.sellerContacts!);
  }
  buildCounterProposal--;
}

core.List<core.String> buildUnnamed2735() => [
      'foo',
      'foo',
    ];

void checkUnnamed2735(core.List<core.String> o) {
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

core.List<api.MobileApplication> buildUnnamed2736() => [
      buildMobileApplication(),
      buildMobileApplication(),
    ];

void checkUnnamed2736(core.List<api.MobileApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileApplication(o[0]);
  checkMobileApplication(o[1]);
}

core.List<core.String> buildUnnamed2737() => [
      'foo',
      'foo',
    ];

void checkUnnamed2737(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2738() => [
      'foo',
      'foo',
    ];

void checkUnnamed2738(core.List<core.String> o) {
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

core.int buildCounterPublisherProfileApiProto = 0;
api.PublisherProfileApiProto buildPublisherProfileApiProto() {
  final o = api.PublisherProfileApiProto();
  buildCounterPublisherProfileApiProto++;
  if (buildCounterPublisherProfileApiProto < 3) {
    o.audience = 'foo';
    o.buyerPitchStatement = 'foo';
    o.directContact = 'foo';
    o.exchange = 'foo';
    o.forecastInventory = 'foo';
    o.googlePlusLink = 'foo';
    o.isParent = true;
    o.isPublished = true;
    o.kind = 'foo';
    o.logoUrl = 'foo';
    o.mediaKitLink = 'foo';
    o.name = 'foo';
    o.overview = 'foo';
    o.profileId = 42;
    o.programmaticContact = 'foo';
    o.publisherAppIds = buildUnnamed2735();
    o.publisherApps = buildUnnamed2736();
    o.publisherDomains = buildUnnamed2737();
    o.publisherProfileId = 'foo';
    o.publisherProvidedForecast = buildPublisherProvidedForecast();
    o.rateCardInfoLink = 'foo';
    o.samplePageLink = 'foo';
    o.seller = buildSeller();
    o.state = 'foo';
    o.topHeadlines = buildUnnamed2738();
  }
  buildCounterPublisherProfileApiProto--;
  return o;
}

void checkPublisherProfileApiProto(api.PublisherProfileApiProto o) {
  buildCounterPublisherProfileApiProto++;
  if (buildCounterPublisherProfileApiProto < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buyerPitchStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exchange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forecastInventory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googlePlusLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isParent!, unittest.isTrue);
    unittest.expect(o.isPublished!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaKitLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.programmaticContact!,
      unittest.equals('foo'),
    );
    checkUnnamed2735(o.publisherAppIds!);
    checkUnnamed2736(o.publisherApps!);
    checkUnnamed2737(o.publisherDomains!);
    unittest.expect(
      o.publisherProfileId!,
      unittest.equals('foo'),
    );
    checkPublisherProvidedForecast(o.publisherProvidedForecast!);
    unittest.expect(
      o.rateCardInfoLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.samplePageLink!,
      unittest.equals('foo'),
    );
    checkSeller(o.seller!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed2738(o.topHeadlines!);
  }
  buildCounterPublisherProfileApiProto--;
}

core.List<api.Dimension> buildUnnamed2739() => [
      buildDimension(),
      buildDimension(),
    ];

void checkUnnamed2739(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPublisherProvidedForecast = 0;
api.PublisherProvidedForecast buildPublisherProvidedForecast() {
  final o = api.PublisherProvidedForecast();
  buildCounterPublisherProvidedForecast++;
  if (buildCounterPublisherProvidedForecast < 3) {
    o.dimensions = buildUnnamed2739();
    o.weeklyImpressions = 'foo';
    o.weeklyUniques = 'foo';
  }
  buildCounterPublisherProvidedForecast--;
  return o;
}

void checkPublisherProvidedForecast(api.PublisherProvidedForecast o) {
  buildCounterPublisherProvidedForecast++;
  if (buildCounterPublisherProvidedForecast < 3) {
    checkUnnamed2739(o.dimensions!);
    unittest.expect(
      o.weeklyImpressions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weeklyUniques!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublisherProvidedForecast--;
}

core.int buildCounterSeller = 0;
api.Seller buildSeller() {
  final o = api.Seller();
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    o.accountId = 'foo';
    o.subAccountId = 'foo';
  }
  buildCounterSeller--;
  return o;
}

void checkSeller(api.Seller o) {
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subAccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeller--;
}

core.List<api.TargetingValue> buildUnnamed2740() => [
      buildTargetingValue(),
      buildTargetingValue(),
    ];

void checkUnnamed2740(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.List<api.TargetingValue> buildUnnamed2741() => [
      buildTargetingValue(),
      buildTargetingValue(),
    ];

void checkUnnamed2741(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.int buildCounterSharedTargeting = 0;
api.SharedTargeting buildSharedTargeting() {
  final o = api.SharedTargeting();
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    o.exclusions = buildUnnamed2740();
    o.inclusions = buildUnnamed2741();
    o.key = 'foo';
  }
  buildCounterSharedTargeting--;
  return o;
}

void checkSharedTargeting(api.SharedTargeting o) {
  buildCounterSharedTargeting++;
  if (buildCounterSharedTargeting < 3) {
    checkUnnamed2740(o.exclusions!);
    checkUnnamed2741(o.inclusions!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterSharedTargeting--;
}

core.int buildCounterTargetingValue = 0;
api.TargetingValue buildTargetingValue() {
  final o = api.TargetingValue();
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    o.creativeSizeValue = buildTargetingValueCreativeSize();
    o.dayPartTargetingValue = buildTargetingValueDayPartTargeting();
    o.demogAgeCriteriaValue = buildTargetingValueDemogAgeCriteria();
    o.demogGenderCriteriaValue = buildTargetingValueDemogGenderCriteria();
    o.longValue = 'foo';
    o.requestPlatformTargetingValue =
        buildTargetingValueRequestPlatformTargeting();
    o.stringValue = 'foo';
  }
  buildCounterTargetingValue--;
  return o;
}

void checkTargetingValue(api.TargetingValue o) {
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    checkTargetingValueCreativeSize(o.creativeSizeValue!);
    checkTargetingValueDayPartTargeting(o.dayPartTargetingValue!);
    checkTargetingValueDemogAgeCriteria(o.demogAgeCriteriaValue!);
    checkTargetingValueDemogGenderCriteria(o.demogGenderCriteriaValue!);
    unittest.expect(
      o.longValue!,
      unittest.equals('foo'),
    );
    checkTargetingValueRequestPlatformTargeting(
        o.requestPlatformTargetingValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetingValue--;
}

core.List<core.String> buildUnnamed2742() => [
      'foo',
      'foo',
    ];

void checkUnnamed2742(core.List<core.String> o) {
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

core.List<api.TargetingValueSize> buildUnnamed2743() => [
      buildTargetingValueSize(),
      buildTargetingValueSize(),
    ];

void checkUnnamed2743(core.List<api.TargetingValueSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueSize(o[0]);
  checkTargetingValueSize(o[1]);
}

core.int buildCounterTargetingValueCreativeSize = 0;
api.TargetingValueCreativeSize buildTargetingValueCreativeSize() {
  final o = api.TargetingValueCreativeSize();
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    o.allowedFormats = buildUnnamed2742();
    o.companionSizes = buildUnnamed2743();
    o.creativeSizeType = 'foo';
    o.nativeTemplate = 'foo';
    o.size = buildTargetingValueSize();
    o.skippableAdType = 'foo';
  }
  buildCounterTargetingValueCreativeSize--;
  return o;
}

void checkTargetingValueCreativeSize(api.TargetingValueCreativeSize o) {
  buildCounterTargetingValueCreativeSize++;
  if (buildCounterTargetingValueCreativeSize < 3) {
    checkUnnamed2742(o.allowedFormats!);
    checkUnnamed2743(o.companionSizes!);
    unittest.expect(
      o.creativeSizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nativeTemplate!,
      unittest.equals('foo'),
    );
    checkTargetingValueSize(o.size!);
    unittest.expect(
      o.skippableAdType!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetingValueCreativeSize--;
}

core.List<api.TargetingValueDayPartTargetingDayPart> buildUnnamed2744() => [
      buildTargetingValueDayPartTargetingDayPart(),
      buildTargetingValueDayPartTargetingDayPart(),
    ];

void checkUnnamed2744(core.List<api.TargetingValueDayPartTargetingDayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValueDayPartTargetingDayPart(o[0]);
  checkTargetingValueDayPartTargetingDayPart(o[1]);
}

core.int buildCounterTargetingValueDayPartTargeting = 0;
api.TargetingValueDayPartTargeting buildTargetingValueDayPartTargeting() {
  final o = api.TargetingValueDayPartTargeting();
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    o.dayParts = buildUnnamed2744();
    o.timeZoneType = 'foo';
  }
  buildCounterTargetingValueDayPartTargeting--;
  return o;
}

void checkTargetingValueDayPartTargeting(api.TargetingValueDayPartTargeting o) {
  buildCounterTargetingValueDayPartTargeting++;
  if (buildCounterTargetingValueDayPartTargeting < 3) {
    checkUnnamed2744(o.dayParts!);
    unittest.expect(
      o.timeZoneType!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetingValueDayPartTargeting--;
}

core.int buildCounterTargetingValueDayPartTargetingDayPart = 0;
api.TargetingValueDayPartTargetingDayPart
    buildTargetingValueDayPartTargetingDayPart() {
  final o = api.TargetingValueDayPartTargetingDayPart();
  buildCounterTargetingValueDayPartTargetingDayPart++;
  if (buildCounterTargetingValueDayPartTargetingDayPart < 3) {
    o.dayOfWeek = 'foo';
    o.endHour = 42;
    o.endMinute = 42;
    o.startHour = 42;
    o.startMinute = 42;
  }
  buildCounterTargetingValueDayPartTargetingDayPart--;
  return o;
}

void checkTargetingValueDayPartTargetingDayPart(
    api.TargetingValueDayPartTargetingDayPart o) {
  buildCounterTargetingValueDayPartTargetingDayPart++;
  if (buildCounterTargetingValueDayPartTargetingDayPart < 3) {
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endHour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endMinute!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startHour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startMinute!,
      unittest.equals(42),
    );
  }
  buildCounterTargetingValueDayPartTargetingDayPart--;
}

core.List<core.String> buildUnnamed2745() => [
      'foo',
      'foo',
    ];

void checkUnnamed2745(core.List<core.String> o) {
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

core.int buildCounterTargetingValueDemogAgeCriteria = 0;
api.TargetingValueDemogAgeCriteria buildTargetingValueDemogAgeCriteria() {
  final o = api.TargetingValueDemogAgeCriteria();
  buildCounterTargetingValueDemogAgeCriteria++;
  if (buildCounterTargetingValueDemogAgeCriteria < 3) {
    o.demogAgeCriteriaIds = buildUnnamed2745();
  }
  buildCounterTargetingValueDemogAgeCriteria--;
  return o;
}

void checkTargetingValueDemogAgeCriteria(api.TargetingValueDemogAgeCriteria o) {
  buildCounterTargetingValueDemogAgeCriteria++;
  if (buildCounterTargetingValueDemogAgeCriteria < 3) {
    checkUnnamed2745(o.demogAgeCriteriaIds!);
  }
  buildCounterTargetingValueDemogAgeCriteria--;
}

core.List<core.String> buildUnnamed2746() => [
      'foo',
      'foo',
    ];

void checkUnnamed2746(core.List<core.String> o) {
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

core.int buildCounterTargetingValueDemogGenderCriteria = 0;
api.TargetingValueDemogGenderCriteria buildTargetingValueDemogGenderCriteria() {
  final o = api.TargetingValueDemogGenderCriteria();
  buildCounterTargetingValueDemogGenderCriteria++;
  if (buildCounterTargetingValueDemogGenderCriteria < 3) {
    o.demogGenderCriteriaIds = buildUnnamed2746();
  }
  buildCounterTargetingValueDemogGenderCriteria--;
  return o;
}

void checkTargetingValueDemogGenderCriteria(
    api.TargetingValueDemogGenderCriteria o) {
  buildCounterTargetingValueDemogGenderCriteria++;
  if (buildCounterTargetingValueDemogGenderCriteria < 3) {
    checkUnnamed2746(o.demogGenderCriteriaIds!);
  }
  buildCounterTargetingValueDemogGenderCriteria--;
}

core.List<core.String> buildUnnamed2747() => [
      'foo',
      'foo',
    ];

void checkUnnamed2747(core.List<core.String> o) {
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

core.int buildCounterTargetingValueRequestPlatformTargeting = 0;
api.TargetingValueRequestPlatformTargeting
    buildTargetingValueRequestPlatformTargeting() {
  final o = api.TargetingValueRequestPlatformTargeting();
  buildCounterTargetingValueRequestPlatformTargeting++;
  if (buildCounterTargetingValueRequestPlatformTargeting < 3) {
    o.requestPlatforms = buildUnnamed2747();
  }
  buildCounterTargetingValueRequestPlatformTargeting--;
  return o;
}

void checkTargetingValueRequestPlatformTargeting(
    api.TargetingValueRequestPlatformTargeting o) {
  buildCounterTargetingValueRequestPlatformTargeting++;
  if (buildCounterTargetingValueRequestPlatformTargeting < 3) {
    checkUnnamed2747(o.requestPlatforms!);
  }
  buildCounterTargetingValueRequestPlatformTargeting--;
}

core.int buildCounterTargetingValueSize = 0;
api.TargetingValueSize buildTargetingValueSize() {
  final o = api.TargetingValueSize();
  buildCounterTargetingValueSize++;
  if (buildCounterTargetingValueSize < 3) {
    o.height = 42;
    o.width = 42;
  }
  buildCounterTargetingValueSize--;
  return o;
}

void checkTargetingValueSize(api.TargetingValueSize o) {
  buildCounterTargetingValueSize++;
  if (buildCounterTargetingValueSize < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterTargetingValueSize--;
}

core.int buildCounterUpdatePrivateAuctionProposalRequest = 0;
api.UpdatePrivateAuctionProposalRequest
    buildUpdatePrivateAuctionProposalRequest() {
  final o = api.UpdatePrivateAuctionProposalRequest();
  buildCounterUpdatePrivateAuctionProposalRequest++;
  if (buildCounterUpdatePrivateAuctionProposalRequest < 3) {
    o.externalDealId = 'foo';
    o.note = buildMarketplaceNote();
    o.proposalRevisionNumber = 'foo';
    o.updateAction = 'foo';
  }
  buildCounterUpdatePrivateAuctionProposalRequest--;
  return o;
}

void checkUpdatePrivateAuctionProposalRequest(
    api.UpdatePrivateAuctionProposalRequest o) {
  buildCounterUpdatePrivateAuctionProposalRequest++;
  if (buildCounterUpdatePrivateAuctionProposalRequest < 3) {
    unittest.expect(
      o.externalDealId!,
      unittest.equals('foo'),
    );
    checkMarketplaceNote(o.note!);
    unittest.expect(
      o.proposalRevisionNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateAction!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdatePrivateAuctionProposalRequest--;
}

core.List<core.int> buildUnnamed2748() => [
      42,
      42,
    ];

void checkUnnamed2748(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed2749() => [
      'foo',
      'foo',
    ];

void checkUnnamed2749(core.List<core.String> o) {
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

  unittest.group('obj-schema-AddOrderDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddOrderDealsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddOrderDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddOrderDealsRequest(od);
    });
  });

  unittest.group('obj-schema-AddOrderDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddOrderDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddOrderDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddOrderDealsResponse(od);
    });
  });

  unittest.group('obj-schema-AddOrderNotesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddOrderNotesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddOrderNotesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddOrderNotesRequest(od);
    });
  });

  unittest.group('obj-schema-AddOrderNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddOrderNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddOrderNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddOrderNotesResponse(od);
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

  unittest.group('obj-schema-Buyer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuyer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Buyer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuyer(od);
    });
  });

  unittest.group('obj-schema-ContactInformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactInformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactInformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactInformation(od);
    });
  });

  unittest.group('obj-schema-CreateOrdersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateOrdersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateOrdersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateOrdersRequest(od);
    });
  });

  unittest.group('obj-schema-CreateOrdersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateOrdersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateOrdersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateOrdersResponse(od);
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

  unittest.group('obj-schema-CreativeCorrectionsContexts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeCorrectionsContexts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeCorrectionsContexts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeCorrectionsContexts(od);
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

  unittest.group('obj-schema-CreativeServingRestrictionsContexts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeServingRestrictionsContexts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeServingRestrictionsContexts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeServingRestrictionsContexts(od);
    });
  });

  unittest.group('obj-schema-CreativeServingRestrictionsDisapprovalReasons',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeServingRestrictionsDisapprovalReasons();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeServingRestrictionsDisapprovalReasons.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeServingRestrictionsDisapprovalReasons(od);
    });
  });

  unittest.group('obj-schema-CreativeServingRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeServingRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeServingRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeServingRestrictions(od);
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

  unittest.group('obj-schema-CreativeDealIdsDealStatuses', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeDealIdsDealStatuses();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeDealIdsDealStatuses.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeDealIdsDealStatuses(od);
    });
  });

  unittest.group('obj-schema-CreativeDealIds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeDealIds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeDealIds.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeDealIds(od);
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

  unittest.group('obj-schema-DealServingMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealServingMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealServingMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealServingMetadata(od);
    });
  });

  unittest.group('obj-schema-DealServingMetadataDealPauseStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealServingMetadataDealPauseStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealServingMetadataDealPauseStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealServingMetadataDealPauseStatus(od);
    });
  });

  unittest.group('obj-schema-DealTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DealTerms.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDealTerms(od);
    });
  });

  unittest.group('obj-schema-DealTermsGuaranteedFixedPriceTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTermsGuaranteedFixedPriceTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealTermsGuaranteedFixedPriceTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealTermsGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group('obj-schema-DealTermsGuaranteedFixedPriceTermsBillingInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTermsGuaranteedFixedPriceTermsBillingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealTermsGuaranteedFixedPriceTermsBillingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealTermsGuaranteedFixedPriceTermsBillingInfo(od);
    });
  });

  unittest.group('obj-schema-DealTermsNonGuaranteedAuctionTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTermsNonGuaranteedAuctionTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealTermsNonGuaranteedAuctionTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealTermsNonGuaranteedAuctionTerms(od);
    });
  });

  unittest.group('obj-schema-DealTermsNonGuaranteedFixedPriceTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTermsNonGuaranteedFixedPriceTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealTermsNonGuaranteedFixedPriceTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealTermsNonGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group('obj-schema-DealTermsRubiconNonGuaranteedTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTermsRubiconNonGuaranteedTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealTermsRubiconNonGuaranteedTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealTermsRubiconNonGuaranteedTerms(od);
    });
  });

  unittest.group('obj-schema-DeleteOrderDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteOrderDealsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteOrderDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteOrderDealsRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteOrderDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteOrderDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteOrderDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteOrderDealsResponse(od);
    });
  });

  unittest.group('obj-schema-DeliveryControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryControl(od);
    });
  });

  unittest.group('obj-schema-DeliveryControlFrequencyCap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryControlFrequencyCap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryControlFrequencyCap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryControlFrequencyCap(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dimension.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-DimensionDimensionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionDimensionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDimensionDimensionValue(od);
    });
  });

  unittest.group('obj-schema-EditAllOrderDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditAllOrderDealsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EditAllOrderDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEditAllOrderDealsRequest(od);
    });
  });

  unittest.group('obj-schema-EditAllOrderDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditAllOrderDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EditAllOrderDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEditAllOrderDealsResponse(od);
    });
  });

  unittest.group('obj-schema-GetOffersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOffersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOffersResponse(od);
    });
  });

  unittest.group('obj-schema-GetOrderDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOrderDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOrderDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOrderDealsResponse(od);
    });
  });

  unittest.group('obj-schema-GetOrderNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOrderNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOrderNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOrderNotesResponse(od);
    });
  });

  unittest.group('obj-schema-GetOrdersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOrdersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOrdersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOrdersResponse(od);
    });
  });

  unittest.group('obj-schema-GetPublisherProfilesByAccountIdResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPublisherProfilesByAccountIdResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPublisherProfilesByAccountIdResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPublisherProfilesByAccountIdResponse(od);
    });
  });

  unittest.group('obj-schema-MarketplaceDeal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketplaceDeal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketplaceDeal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceDeal(od);
    });
  });

  unittest.group('obj-schema-MarketplaceDealParty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketplaceDealParty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketplaceDealParty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceDealParty(od);
    });
  });

  unittest.group('obj-schema-MarketplaceLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketplaceLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketplaceLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceLabel(od);
    });
  });

  unittest.group('obj-schema-MarketplaceNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketplaceNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketplaceNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceNote(od);
    });
  });

  unittest.group('obj-schema-MobileApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileApplication(od);
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

  unittest.group('obj-schema-PretargetingConfigVideoPlayerSizes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPretargetingConfigVideoPlayerSizes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PretargetingConfigVideoPlayerSizes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPretargetingConfigVideoPlayerSizes(od);
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

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Price.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-PricePerBuyer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPricePerBuyer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PricePerBuyer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricePerBuyer(od);
    });
  });

  unittest.group('obj-schema-PrivateData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateData(od);
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

  unittest.group('obj-schema-Proposal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProposal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Proposal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProposal(od);
    });
  });

  unittest.group('obj-schema-PublisherProfileApiProto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherProfileApiProto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherProfileApiProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherProfileApiProto(od);
    });
  });

  unittest.group('obj-schema-PublisherProvidedForecast', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherProvidedForecast();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherProvidedForecast.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherProvidedForecast(od);
    });
  });

  unittest.group('obj-schema-Seller', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeller();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Seller.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSeller(od);
    });
  });

  unittest.group('obj-schema-SharedTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSharedTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SharedTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSharedTargeting(od);
    });
  });

  unittest.group('obj-schema-TargetingValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValue(od);
    });
  });

  unittest.group('obj-schema-TargetingValueCreativeSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueCreativeSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueCreativeSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueCreativeSize(od);
    });
  });

  unittest.group('obj-schema-TargetingValueDayPartTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueDayPartTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueDayPartTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueDayPartTargeting(od);
    });
  });

  unittest.group('obj-schema-TargetingValueDayPartTargetingDayPart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueDayPartTargetingDayPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueDayPartTargetingDayPart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueDayPartTargetingDayPart(od);
    });
  });

  unittest.group('obj-schema-TargetingValueDemogAgeCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueDemogAgeCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueDemogAgeCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueDemogAgeCriteria(od);
    });
  });

  unittest.group('obj-schema-TargetingValueDemogGenderCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueDemogGenderCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueDemogGenderCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueDemogGenderCriteria(od);
    });
  });

  unittest.group('obj-schema-TargetingValueRequestPlatformTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueRequestPlatformTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueRequestPlatformTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueRequestPlatformTargeting(od);
    });
  });

  unittest.group('obj-schema-TargetingValueSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingValueSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingValueSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValueSize(od);
    });
  });

  unittest.group('obj-schema-UpdatePrivateAuctionProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePrivateAuctionProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePrivateAuctionProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePrivateAuctionProposalRequest(od);
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
      final arg_confirmUnsafeAccountChange = true;
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          queryMap['confirmUnsafeAccountChange']!.first,
          unittest.equals('$arg_confirmUnsafeAccountChange'),
        );
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
      final response = await res.patch(arg_request, arg_id,
          confirmUnsafeAccountChange: arg_confirmUnsafeAccountChange,
          $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_id = 42;
      final arg_confirmUnsafeAccountChange = true;
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          queryMap['confirmUnsafeAccountChange']!.first,
          unittest.equals('$arg_confirmUnsafeAccountChange'),
        );
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
      final response = await res.update(arg_request, arg_id,
          confirmUnsafeAccountChange: arg_confirmUnsafeAccountChange,
          $fields: arg_$fields);
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
    unittest.test('method--addDeal', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).creatives;
      final arg_accountId = 42;
      final arg_buyerCreativeId = 'foo';
      final arg_dealId = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
        index = path.indexOf('/addDeal/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buyerCreativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/addDeal/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_dealId'),
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
      await res.addDeal(arg_accountId, arg_buyerCreativeId, arg_dealId,
          $fields: arg_$fields);
    });

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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
      final arg_accountId = buildUnnamed2748();
      final arg_buyerCreativeId = buildUnnamed2749();
      final arg_dealsStatusFilter = 'foo';
      final arg_maxResults = 42;
      final arg_openAuctionStatusFilter = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          queryMap['dealsStatusFilter']!.first,
          unittest.equals(arg_dealsStatusFilter),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['openAuctionStatusFilter']!.first,
          unittest.equals(arg_openAuctionStatusFilter),
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
        final resp = convert.json.encode(buildCreativesList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          accountId: arg_accountId,
          buyerCreativeId: arg_buyerCreativeId,
          dealsStatusFilter: arg_dealsStatusFilter,
          maxResults: arg_maxResults,
          openAuctionStatusFilter: arg_openAuctionStatusFilter,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkCreativesList(response as api.CreativesList);
    });

    unittest.test('method--listDeals', () async {
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
        index = path.indexOf('/listDeals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buyerCreativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listDeals'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildCreativeDealIds());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listDeals(arg_accountId, arg_buyerCreativeId,
          $fields: arg_$fields);
      checkCreativeDealIds(response as api.CreativeDealIds);
    });

    unittest.test('method--removeDeal', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).creatives;
      final arg_accountId = 42;
      final arg_buyerCreativeId = 'foo';
      final arg_dealId = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
        index = path.indexOf('/removeDeal/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buyerCreativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/removeDeal/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_dealId'),
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
      await res.removeDeal(arg_accountId, arg_buyerCreativeId, arg_dealId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-MarketplacedealsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplacedeals;
      final arg_request = buildDeleteOrderDealsRequest();
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeleteOrderDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeleteOrderDealsRequest(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/deals/delete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/deals/delete'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildDeleteOrderDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_request, arg_proposalId, $fields: arg_$fields);
      checkDeleteOrderDealsResponse(response as api.DeleteOrderDealsResponse);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplacedeals;
      final arg_request = buildAddOrderDealsRequest();
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddOrderDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddOrderDealsRequest(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/deals/insert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/deals/insert'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildAddOrderDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_proposalId, $fields: arg_$fields);
      checkAddOrderDealsResponse(response as api.AddOrderDealsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplacedeals;
      final arg_proposalId = 'foo';
      final arg_pqlQuery = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/deals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/deals'),
        );
        pathOffset += 6;

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
          queryMap['pqlQuery']!.first,
          unittest.equals(arg_pqlQuery),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetOrderDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_proposalId,
          pqlQuery: arg_pqlQuery, $fields: arg_$fields);
      checkGetOrderDealsResponse(response as api.GetOrderDealsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplacedeals;
      final arg_request = buildEditAllOrderDealsRequest();
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EditAllOrderDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEditAllOrderDealsRequest(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/deals/update', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/deals/update'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildEditAllOrderDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_proposalId, $fields: arg_$fields);
      checkEditAllOrderDealsResponse(response as api.EditAllOrderDealsResponse);
    });
  });

  unittest.group('resource-MarketplacenotesResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplacenotes;
      final arg_request = buildAddOrderNotesRequest();
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddOrderNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddOrderNotesRequest(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/notes/insert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/notes/insert'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildAddOrderNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_proposalId, $fields: arg_$fields);
      checkAddOrderNotesResponse(response as api.AddOrderNotesResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplacenotes;
      final arg_proposalId = 'foo';
      final arg_pqlQuery = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/notes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/notes'),
        );
        pathOffset += 6;

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
          queryMap['pqlQuery']!.first,
          unittest.equals(arg_pqlQuery),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetOrderNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_proposalId,
          pqlQuery: arg_pqlQuery, $fields: arg_$fields);
      checkGetOrderNotesResponse(response as api.GetOrderNotesResponse);
    });
  });

  unittest.group('resource-MarketplaceprivateauctionResource', () {
    unittest.test('method--updateproposal', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).marketplaceprivateauction;
      final arg_request = buildUpdatePrivateAuctionProposalRequest();
      final arg_privateAuctionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdatePrivateAuctionProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdatePrivateAuctionProposalRequest(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('privateauction/'),
        );
        pathOffset += 15;
        index = path.indexOf('/updateproposal', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_privateAuctionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/updateproposal'),
        );
        pathOffset += 15;

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
      await res.updateproposal(arg_request, arg_privateAuctionId,
          $fields: arg_$fields);
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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
          unittest.equals('adexchangebuyer/v1.4/'),
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

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).products;
      final arg_productId = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('products/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
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
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_productId, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).products;
      final arg_pqlQuery = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('products/search'),
        );
        pathOffset += 15;

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
          queryMap['pqlQuery']!.first,
          unittest.equals(arg_pqlQuery),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(pqlQuery: arg_pqlQuery, $fields: arg_$fields);
      checkGetOffersResponse(response as api.GetOffersResponse);
    });
  });

  unittest.group('resource-ProposalsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).proposals;
      final arg_proposalId = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_proposalId, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).proposals;
      final arg_request = buildCreateOrdersRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateOrdersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateOrdersRequest(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('proposals/insert'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildCreateOrdersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkCreateOrdersResponse(response as api.CreateOrdersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).proposals;
      final arg_request = buildProposal();
      final arg_proposalId = 'foo';
      final arg_revisionNumber = 'foo';
      final arg_updateAction = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Proposal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProposal(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_revisionNumber'),
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
          unittest.equals('$arg_updateAction'),
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_proposalId, arg_revisionNumber, arg_updateAction,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).proposals;
      final arg_pqlQuery = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('proposals/search'),
        );
        pathOffset += 16;

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
          queryMap['pqlQuery']!.first,
          unittest.equals(arg_pqlQuery),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetOrdersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(pqlQuery: arg_pqlQuery, $fields: arg_$fields);
      checkGetOrdersResponse(response as api.GetOrdersResponse);
    });

    unittest.test('method--setupcomplete', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).proposals;
      final arg_proposalId = 'foo';
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/setupcomplete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/setupcomplete'),
        );
        pathOffset += 14;

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
      await res.setupcomplete(arg_proposalId, $fields: arg_$fields);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).proposals;
      final arg_request = buildProposal();
      final arg_proposalId = 'foo';
      final arg_revisionNumber = 'foo';
      final arg_updateAction = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Proposal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProposal(obj);

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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('proposals/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_revisionNumber'),
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
          unittest.equals('$arg_updateAction'),
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_proposalId, arg_revisionNumber, arg_updateAction,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });
  });

  unittest.group('resource-PubprofilesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerApi(mock).pubprofiles;
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
          unittest.equals('adexchangebuyer/v1.4/'),
        );
        pathOffset += 21;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('publisher/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/profiles'),
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
        final resp =
            convert.json.encode(buildGetPublisherProfilesByAccountIdResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, $fields: arg_$fields);
      checkGetPublisherProfilesByAccountIdResponse(
          response as api.GetPublisherProfilesByAccountIdResponse);
    });
  });
}
