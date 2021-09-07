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

import 'package:googleapis_beta/adexchangebuyer2/v2beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbsoluteDateRange = 0;
api.AbsoluteDateRange buildAbsoluteDateRange() {
  final o = api.AbsoluteDateRange();
  buildCounterAbsoluteDateRange++;
  if (buildCounterAbsoluteDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterAbsoluteDateRange--;
  return o;
}

void checkAbsoluteDateRange(api.AbsoluteDateRange o) {
  buildCounterAbsoluteDateRange++;
  if (buildCounterAbsoluteDateRange < 3) {
    checkDate(o.endDate!);
    checkDate(o.startDate!);
  }
  buildCounterAbsoluteDateRange--;
}

core.int buildCounterAcceptProposalRequest = 0;
api.AcceptProposalRequest buildAcceptProposalRequest() {
  final o = api.AcceptProposalRequest();
  buildCounterAcceptProposalRequest++;
  if (buildCounterAcceptProposalRequest < 3) {
    o.proposalRevision = 'foo';
  }
  buildCounterAcceptProposalRequest--;
  return o;
}

void checkAcceptProposalRequest(api.AcceptProposalRequest o) {
  buildCounterAcceptProposalRequest++;
  if (buildCounterAcceptProposalRequest < 3) {
    unittest.expect(
      o.proposalRevision!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceptProposalRequest--;
}

core.int buildCounterAdSize = 0;
api.AdSize buildAdSize() {
  final o = api.AdSize();
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    o.height = 'foo';
    o.sizeType = 'foo';
    o.width = 'foo';
  }
  buildCounterAdSize--;
  return o;
}

void checkAdSize(api.AdSize o) {
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    unittest.expect(
      o.height!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdSize--;
}

core.List<core.String> buildUnnamed7923() => [
      'foo',
      'foo',
    ];

void checkUnnamed7923(core.List<core.String> o) {
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

core.int buildCounterAdTechnologyProviders = 0;
api.AdTechnologyProviders buildAdTechnologyProviders() {
  final o = api.AdTechnologyProviders();
  buildCounterAdTechnologyProviders++;
  if (buildCounterAdTechnologyProviders < 3) {
    o.detectedProviderIds = buildUnnamed7923();
    o.hasUnidentifiedProvider = true;
  }
  buildCounterAdTechnologyProviders--;
  return o;
}

void checkAdTechnologyProviders(api.AdTechnologyProviders o) {
  buildCounterAdTechnologyProviders++;
  if (buildCounterAdTechnologyProviders < 3) {
    checkUnnamed7923(o.detectedProviderIds!);
    unittest.expect(o.hasUnidentifiedProvider!, unittest.isTrue);
  }
  buildCounterAdTechnologyProviders--;
}

core.int buildCounterAddDealAssociationRequest = 0;
api.AddDealAssociationRequest buildAddDealAssociationRequest() {
  final o = api.AddDealAssociationRequest();
  buildCounterAddDealAssociationRequest++;
  if (buildCounterAddDealAssociationRequest < 3) {
    o.association = buildCreativeDealAssociation();
  }
  buildCounterAddDealAssociationRequest--;
  return o;
}

void checkAddDealAssociationRequest(api.AddDealAssociationRequest o) {
  buildCounterAddDealAssociationRequest++;
  if (buildCounterAddDealAssociationRequest < 3) {
    checkCreativeDealAssociation(o.association!);
  }
  buildCounterAddDealAssociationRequest--;
}

core.int buildCounterAddNoteRequest = 0;
api.AddNoteRequest buildAddNoteRequest() {
  final o = api.AddNoteRequest();
  buildCounterAddNoteRequest++;
  if (buildCounterAddNoteRequest < 3) {
    o.note = buildNote();
  }
  buildCounterAddNoteRequest--;
  return o;
}

void checkAddNoteRequest(api.AddNoteRequest o) {
  buildCounterAddNoteRequest++;
  if (buildCounterAddNoteRequest < 3) {
    checkNote(o.note!);
  }
  buildCounterAddNoteRequest--;
}

core.List<core.String> buildUnnamed7924() => [
      'foo',
      'foo',
    ];

void checkUnnamed7924(core.List<core.String> o) {
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

core.int buildCounterAppContext = 0;
api.AppContext buildAppContext() {
  final o = api.AppContext();
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    o.appTypes = buildUnnamed7924();
  }
  buildCounterAppContext--;
  return o;
}

void checkAppContext(api.AppContext o) {
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    checkUnnamed7924(o.appTypes!);
  }
  buildCounterAppContext--;
}

core.List<core.String> buildUnnamed7925() => [
      'foo',
      'foo',
    ];

void checkUnnamed7925(core.List<core.String> o) {
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

core.int buildCounterAuctionContext = 0;
api.AuctionContext buildAuctionContext() {
  final o = api.AuctionContext();
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    o.auctionTypes = buildUnnamed7925();
  }
  buildCounterAuctionContext--;
  return o;
}

void checkAuctionContext(api.AuctionContext o) {
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    checkUnnamed7925(o.auctionTypes!);
  }
  buildCounterAuctionContext--;
}

core.int buildCounterBidMetricsRow = 0;
api.BidMetricsRow buildBidMetricsRow() {
  final o = api.BidMetricsRow();
  buildCounterBidMetricsRow++;
  if (buildCounterBidMetricsRow < 3) {
    o.bids = buildMetricValue();
    o.bidsInAuction = buildMetricValue();
    o.billedImpressions = buildMetricValue();
    o.impressionsWon = buildMetricValue();
    o.measurableImpressions = buildMetricValue();
    o.reachedQueries = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.viewableImpressions = buildMetricValue();
  }
  buildCounterBidMetricsRow--;
  return o;
}

void checkBidMetricsRow(api.BidMetricsRow o) {
  buildCounterBidMetricsRow++;
  if (buildCounterBidMetricsRow < 3) {
    checkMetricValue(o.bids!);
    checkMetricValue(o.bidsInAuction!);
    checkMetricValue(o.billedImpressions!);
    checkMetricValue(o.impressionsWon!);
    checkMetricValue(o.measurableImpressions!);
    checkMetricValue(o.reachedQueries!);
    checkRowDimensions(o.rowDimensions!);
    checkMetricValue(o.viewableImpressions!);
  }
  buildCounterBidMetricsRow--;
}

core.int buildCounterBidResponseWithoutBidsStatusRow = 0;
api.BidResponseWithoutBidsStatusRow buildBidResponseWithoutBidsStatusRow() {
  final o = api.BidResponseWithoutBidsStatusRow();
  buildCounterBidResponseWithoutBidsStatusRow++;
  if (buildCounterBidResponseWithoutBidsStatusRow < 3) {
    o.impressionCount = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.status = 'foo';
  }
  buildCounterBidResponseWithoutBidsStatusRow--;
  return o;
}

void checkBidResponseWithoutBidsStatusRow(
    api.BidResponseWithoutBidsStatusRow o) {
  buildCounterBidResponseWithoutBidsStatusRow++;
  if (buildCounterBidResponseWithoutBidsStatusRow < 3) {
    checkMetricValue(o.impressionCount!);
    checkRowDimensions(o.rowDimensions!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterBidResponseWithoutBidsStatusRow--;
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

core.int buildCounterCalloutStatusRow = 0;
api.CalloutStatusRow buildCalloutStatusRow() {
  final o = api.CalloutStatusRow();
  buildCounterCalloutStatusRow++;
  if (buildCounterCalloutStatusRow < 3) {
    o.calloutStatusId = 42;
    o.impressionCount = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterCalloutStatusRow--;
  return o;
}

void checkCalloutStatusRow(api.CalloutStatusRow o) {
  buildCounterCalloutStatusRow++;
  if (buildCounterCalloutStatusRow < 3) {
    unittest.expect(
      o.calloutStatusId!,
      unittest.equals(42),
    );
    checkMetricValue(o.impressionCount!);
    checkRowDimensions(o.rowDimensions!);
  }
  buildCounterCalloutStatusRow--;
}

core.int buildCounterCancelNegotiationRequest = 0;
api.CancelNegotiationRequest buildCancelNegotiationRequest() {
  final o = api.CancelNegotiationRequest();
  buildCounterCancelNegotiationRequest++;
  if (buildCounterCancelNegotiationRequest < 3) {}
  buildCounterCancelNegotiationRequest--;
  return o;
}

void checkCancelNegotiationRequest(api.CancelNegotiationRequest o) {
  buildCounterCancelNegotiationRequest++;
  if (buildCounterCancelNegotiationRequest < 3) {}
  buildCounterCancelNegotiationRequest--;
}

core.int buildCounterClient = 0;
api.Client buildClient() {
  final o = api.Client();
  buildCounterClient++;
  if (buildCounterClient < 3) {
    o.clientAccountId = 'foo';
    o.clientName = 'foo';
    o.entityId = 'foo';
    o.entityName = 'foo';
    o.entityType = 'foo';
    o.partnerClientId = 'foo';
    o.role = 'foo';
    o.status = 'foo';
    o.visibleToSeller = true;
  }
  buildCounterClient--;
  return o;
}

void checkClient(api.Client o) {
  buildCounterClient++;
  if (buildCounterClient < 3) {
    unittest.expect(
      o.clientAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.partnerClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(o.visibleToSeller!, unittest.isTrue);
  }
  buildCounterClient--;
}

core.int buildCounterClientUser = 0;
api.ClientUser buildClientUser() {
  final o = api.ClientUser();
  buildCounterClientUser++;
  if (buildCounterClientUser < 3) {
    o.clientAccountId = 'foo';
    o.email = 'foo';
    o.status = 'foo';
    o.userId = 'foo';
  }
  buildCounterClientUser--;
  return o;
}

void checkClientUser(api.ClientUser o) {
  buildCounterClientUser++;
  if (buildCounterClientUser < 3) {
    unittest.expect(
      o.clientAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientUser--;
}

core.int buildCounterClientUserInvitation = 0;
api.ClientUserInvitation buildClientUserInvitation() {
  final o = api.ClientUserInvitation();
  buildCounterClientUserInvitation++;
  if (buildCounterClientUserInvitation < 3) {
    o.clientAccountId = 'foo';
    o.email = 'foo';
    o.invitationId = 'foo';
  }
  buildCounterClientUserInvitation--;
  return o;
}

void checkClientUserInvitation(api.ClientUserInvitation o) {
  buildCounterClientUserInvitation++;
  if (buildCounterClientUserInvitation < 3) {
    unittest.expect(
      o.clientAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invitationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientUserInvitation--;
}

core.int buildCounterCompleteSetupRequest = 0;
api.CompleteSetupRequest buildCompleteSetupRequest() {
  final o = api.CompleteSetupRequest();
  buildCounterCompleteSetupRequest++;
  if (buildCounterCompleteSetupRequest < 3) {}
  buildCounterCompleteSetupRequest--;
  return o;
}

void checkCompleteSetupRequest(api.CompleteSetupRequest o) {
  buildCounterCompleteSetupRequest++;
  if (buildCounterCompleteSetupRequest < 3) {}
  buildCounterCompleteSetupRequest--;
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

core.List<api.ServingContext> buildUnnamed7926() => [
      buildServingContext(),
      buildServingContext(),
    ];

void checkUnnamed7926(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0]);
  checkServingContext(o[1]);
}

core.List<core.String> buildUnnamed7927() => [
      'foo',
      'foo',
    ];

void checkUnnamed7927(core.List<core.String> o) {
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

core.int buildCounterCorrection = 0;
api.Correction buildCorrection() {
  final o = api.Correction();
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    o.contexts = buildUnnamed7926();
    o.details = buildUnnamed7927();
    o.type = 'foo';
  }
  buildCounterCorrection--;
  return o;
}

void checkCorrection(api.Correction o) {
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    checkUnnamed7926(o.contexts!);
    checkUnnamed7927(o.details!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCorrection--;
}

core.List<core.String> buildUnnamed7928() => [
      'foo',
      'foo',
    ];

void checkUnnamed7928(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7929() => [
      'foo',
      'foo',
    ];

void checkUnnamed7929(core.List<core.String> o) {
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

core.List<api.Correction> buildUnnamed7930() => [
      buildCorrection(),
      buildCorrection(),
    ];

void checkUnnamed7930(core.List<api.Correction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCorrection(o[0]);
  checkCorrection(o[1]);
}

core.List<core.String> buildUnnamed7931() => [
      'foo',
      'foo',
    ];

void checkUnnamed7931(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7932() => [
      'foo',
      'foo',
    ];

void checkUnnamed7932(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7933() => [
      'foo',
      'foo',
    ];

void checkUnnamed7933(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7934() => [
      'foo',
      'foo',
    ];

void checkUnnamed7934(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed7935() => [
      42,
      42,
    ];

void checkUnnamed7935(core.List<core.int> o) {
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

core.List<core.int> buildUnnamed7936() => [
      42,
      42,
    ];

void checkUnnamed7936(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed7937() => [
      'foo',
      'foo',
    ];

void checkUnnamed7937(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7938() => [
      'foo',
      'foo',
    ];

void checkUnnamed7938(core.List<core.String> o) {
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

core.List<api.ServingRestriction> buildUnnamed7939() => [
      buildServingRestriction(),
      buildServingRestriction(),
    ];

void checkUnnamed7939(core.List<api.ServingRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingRestriction(o[0]);
  checkServingRestriction(o[1]);
}

core.List<core.int> buildUnnamed7940() => [
      42,
      42,
    ];

void checkUnnamed7940(core.List<core.int> o) {
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
    o.accountId = 'foo';
    o.adChoicesDestinationUrl = 'foo';
    o.adTechnologyProviders = buildAdTechnologyProviders();
    o.advertiserName = 'foo';
    o.agencyId = 'foo';
    o.apiUpdateTime = 'foo';
    o.attributes = buildUnnamed7928();
    o.clickThroughUrls = buildUnnamed7929();
    o.corrections = buildUnnamed7930();
    o.creativeId = 'foo';
    o.dealsStatus = 'foo';
    o.declaredClickThroughUrls = buildUnnamed7931();
    o.detectedAdvertiserIds = buildUnnamed7932();
    o.detectedDomains = buildUnnamed7933();
    o.detectedLanguages = buildUnnamed7934();
    o.detectedProductCategories = buildUnnamed7935();
    o.detectedSensitiveCategories = buildUnnamed7936();
    o.html = buildHtmlContent();
    o.impressionTrackingUrls = buildUnnamed7937();
    o.native = buildNativeContent();
    o.openAuctionStatus = 'foo';
    o.restrictedCategories = buildUnnamed7938();
    o.servingRestrictions = buildUnnamed7939();
    o.vendorIds = buildUnnamed7940();
    o.version = 42;
    o.video = buildVideoContent();
  }
  buildCounterCreative--;
  return o;
}

void checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adChoicesDestinationUrl!,
      unittest.equals('foo'),
    );
    checkAdTechnologyProviders(o.adTechnologyProviders!);
    unittest.expect(
      o.advertiserName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agencyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.apiUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7928(o.attributes!);
    checkUnnamed7929(o.clickThroughUrls!);
    checkUnnamed7930(o.corrections!);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealsStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed7931(o.declaredClickThroughUrls!);
    checkUnnamed7932(o.detectedAdvertiserIds!);
    checkUnnamed7933(o.detectedDomains!);
    checkUnnamed7934(o.detectedLanguages!);
    checkUnnamed7935(o.detectedProductCategories!);
    checkUnnamed7936(o.detectedSensitiveCategories!);
    checkHtmlContent(o.html!);
    checkUnnamed7937(o.impressionTrackingUrls!);
    checkNativeContent(o.native!);
    unittest.expect(
      o.openAuctionStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed7938(o.restrictedCategories!);
    checkUnnamed7939(o.servingRestrictions!);
    checkUnnamed7940(o.vendorIds!);
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
    checkVideoContent(o.video!);
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeDealAssociation = 0;
api.CreativeDealAssociation buildCreativeDealAssociation() {
  final o = api.CreativeDealAssociation();
  buildCounterCreativeDealAssociation++;
  if (buildCounterCreativeDealAssociation < 3) {
    o.accountId = 'foo';
    o.creativeId = 'foo';
    o.dealsId = 'foo';
  }
  buildCounterCreativeDealAssociation--;
  return o;
}

void checkCreativeDealAssociation(api.CreativeDealAssociation o) {
  buildCounterCreativeDealAssociation++;
  if (buildCounterCreativeDealAssociation < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealsId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeDealAssociation--;
}

core.List<api.CreativeSpecification> buildUnnamed7941() => [
      buildCreativeSpecification(),
      buildCreativeSpecification(),
    ];

void checkUnnamed7941(core.List<api.CreativeSpecification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeSpecification(o[0]);
  checkCreativeSpecification(o[1]);
}

core.int buildCounterCreativeRestrictions = 0;
api.CreativeRestrictions buildCreativeRestrictions() {
  final o = api.CreativeRestrictions();
  buildCounterCreativeRestrictions++;
  if (buildCounterCreativeRestrictions < 3) {
    o.creativeFormat = 'foo';
    o.creativeSpecifications = buildUnnamed7941();
    o.skippableAdType = 'foo';
  }
  buildCounterCreativeRestrictions--;
  return o;
}

void checkCreativeRestrictions(api.CreativeRestrictions o) {
  buildCounterCreativeRestrictions++;
  if (buildCounterCreativeRestrictions < 3) {
    unittest.expect(
      o.creativeFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed7941(o.creativeSpecifications!);
    unittest.expect(
      o.skippableAdType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeRestrictions--;
}

core.List<core.String> buildUnnamed7942() => [
      'foo',
      'foo',
    ];

void checkUnnamed7942(core.List<core.String> o) {
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

core.List<api.Size> buildUnnamed7943() => [
      buildSize(),
      buildSize(),
    ];

void checkUnnamed7943(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterCreativeSize = 0;
api.CreativeSize buildCreativeSize() {
  final o = api.CreativeSize();
  buildCounterCreativeSize++;
  if (buildCounterCreativeSize < 3) {
    o.allowedFormats = buildUnnamed7942();
    o.companionSizes = buildUnnamed7943();
    o.creativeSizeType = 'foo';
    o.nativeTemplate = 'foo';
    o.size = buildSize();
    o.skippableAdType = 'foo';
  }
  buildCounterCreativeSize--;
  return o;
}

void checkCreativeSize(api.CreativeSize o) {
  buildCounterCreativeSize++;
  if (buildCounterCreativeSize < 3) {
    checkUnnamed7942(o.allowedFormats!);
    checkUnnamed7943(o.companionSizes!);
    unittest.expect(
      o.creativeSizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nativeTemplate!,
      unittest.equals('foo'),
    );
    checkSize(o.size!);
    unittest.expect(
      o.skippableAdType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeSize--;
}

core.List<api.AdSize> buildUnnamed7944() => [
      buildAdSize(),
      buildAdSize(),
    ];

void checkUnnamed7944(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.int buildCounterCreativeSpecification = 0;
api.CreativeSpecification buildCreativeSpecification() {
  final o = api.CreativeSpecification();
  buildCounterCreativeSpecification++;
  if (buildCounterCreativeSpecification < 3) {
    o.creativeCompanionSizes = buildUnnamed7944();
    o.creativeSize = buildAdSize();
  }
  buildCounterCreativeSpecification--;
  return o;
}

void checkCreativeSpecification(api.CreativeSpecification o) {
  buildCounterCreativeSpecification++;
  if (buildCounterCreativeSpecification < 3) {
    checkUnnamed7944(o.creativeCompanionSizes!);
    checkAdSize(o.creativeSize!);
  }
  buildCounterCreativeSpecification--;
}

core.int buildCounterCreativeStatusRow = 0;
api.CreativeStatusRow buildCreativeStatusRow() {
  final o = api.CreativeStatusRow();
  buildCounterCreativeStatusRow++;
  if (buildCounterCreativeStatusRow < 3) {
    o.bidCount = buildMetricValue();
    o.creativeStatusId = 42;
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterCreativeStatusRow--;
  return o;
}

void checkCreativeStatusRow(api.CreativeStatusRow o) {
  buildCounterCreativeStatusRow++;
  if (buildCounterCreativeStatusRow < 3) {
    checkMetricValue(o.bidCount!);
    unittest.expect(
      o.creativeStatusId!,
      unittest.equals(42),
    );
    checkRowDimensions(o.rowDimensions!);
  }
  buildCounterCreativeStatusRow--;
}

core.List<core.String> buildUnnamed7945() => [
      'foo',
      'foo',
    ];

void checkUnnamed7945(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7946() => [
      'foo',
      'foo',
    ];

void checkUnnamed7946(core.List<core.String> o) {
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

core.int buildCounterCriteriaTargeting = 0;
api.CriteriaTargeting buildCriteriaTargeting() {
  final o = api.CriteriaTargeting();
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    o.excludedCriteriaIds = buildUnnamed7945();
    o.targetedCriteriaIds = buildUnnamed7946();
  }
  buildCounterCriteriaTargeting--;
  return o;
}

void checkCriteriaTargeting(api.CriteriaTargeting o) {
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    checkUnnamed7945(o.excludedCriteriaIds!);
    checkUnnamed7946(o.targetedCriteriaIds!);
  }
  buildCounterCriteriaTargeting--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterDayPart = 0;
api.DayPart buildDayPart() {
  final o = api.DayPart();
  buildCounterDayPart++;
  if (buildCounterDayPart < 3) {
    o.dayOfWeek = 'foo';
    o.endTime = buildTimeOfDay();
    o.startTime = buildTimeOfDay();
  }
  buildCounterDayPart--;
  return o;
}

void checkDayPart(api.DayPart o) {
  buildCounterDayPart++;
  if (buildCounterDayPart < 3) {
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.endTime!);
    checkTimeOfDay(o.startTime!);
  }
  buildCounterDayPart--;
}

core.List<api.DayPart> buildUnnamed7947() => [
      buildDayPart(),
      buildDayPart(),
    ];

void checkUnnamed7947(core.List<api.DayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDayPart(o[0]);
  checkDayPart(o[1]);
}

core.int buildCounterDayPartTargeting = 0;
api.DayPartTargeting buildDayPartTargeting() {
  final o = api.DayPartTargeting();
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    o.dayParts = buildUnnamed7947();
    o.timeZoneType = 'foo';
  }
  buildCounterDayPartTargeting--;
  return o;
}

void checkDayPartTargeting(api.DayPartTargeting o) {
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    checkUnnamed7947(o.dayParts!);
    unittest.expect(
      o.timeZoneType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDayPartTargeting--;
}

core.List<api.ContactInformation> buildUnnamed7948() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed7948(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.List<api.TargetingCriteria> buildUnnamed7949() => [
      buildTargetingCriteria(),
      buildTargetingCriteria(),
    ];

void checkUnnamed7949(core.List<api.TargetingCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingCriteria(o[0]);
  checkTargetingCriteria(o[1]);
}

core.int buildCounterDeal = 0;
api.Deal buildDeal() {
  final o = api.Deal();
  buildCounterDeal++;
  if (buildCounterDeal < 3) {
    o.availableEndTime = 'foo';
    o.availableStartTime = 'foo';
    o.buyerPrivateData = buildPrivateData();
    o.createProductId = 'foo';
    o.createProductRevision = 'foo';
    o.createTime = 'foo';
    o.creativePreApprovalPolicy = 'foo';
    o.creativeRestrictions = buildCreativeRestrictions();
    o.creativeSafeFrameCompatibility = 'foo';
    o.dealId = 'foo';
    o.dealServingMetadata = buildDealServingMetadata();
    o.dealTerms = buildDealTerms();
    o.deliveryControl = buildDeliveryControl();
    o.description = 'foo';
    o.displayName = 'foo';
    o.externalDealId = 'foo';
    o.isSetupComplete = true;
    o.programmaticCreativeSource = 'foo';
    o.proposalId = 'foo';
    o.sellerContacts = buildUnnamed7948();
    o.syndicationProduct = 'foo';
    o.targeting = buildMarketplaceTargeting();
    o.targetingCriterion = buildUnnamed7949();
    o.updateTime = 'foo';
    o.webPropertyCode = 'foo';
  }
  buildCounterDeal--;
  return o;
}

void checkDeal(api.Deal o) {
  buildCounterDeal++;
  if (buildCounterDeal < 3) {
    unittest.expect(
      o.availableEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableStartTime!,
      unittest.equals('foo'),
    );
    checkPrivateData(o.buyerPrivateData!);
    unittest.expect(
      o.createProductId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createProductRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativePreApprovalPolicy!,
      unittest.equals('foo'),
    );
    checkCreativeRestrictions(o.creativeRestrictions!);
    unittest.expect(
      o.creativeSafeFrameCompatibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealId!,
      unittest.equals('foo'),
    );
    checkDealServingMetadata(o.dealServingMetadata!);
    checkDealTerms(o.dealTerms!);
    checkDeliveryControl(o.deliveryControl!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalDealId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isSetupComplete!, unittest.isTrue);
    unittest.expect(
      o.programmaticCreativeSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalId!,
      unittest.equals('foo'),
    );
    checkUnnamed7948(o.sellerContacts!);
    unittest.expect(
      o.syndicationProduct!,
      unittest.equals('foo'),
    );
    checkMarketplaceTargeting(o.targeting!);
    checkUnnamed7949(o.targetingCriterion!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeal--;
}

core.int buildCounterDealPauseStatus = 0;
api.DealPauseStatus buildDealPauseStatus() {
  final o = api.DealPauseStatus();
  buildCounterDealPauseStatus++;
  if (buildCounterDealPauseStatus < 3) {
    o.buyerPauseReason = 'foo';
    o.firstPausedBy = 'foo';
    o.hasBuyerPaused = true;
    o.hasSellerPaused = true;
    o.sellerPauseReason = 'foo';
  }
  buildCounterDealPauseStatus--;
  return o;
}

void checkDealPauseStatus(api.DealPauseStatus o) {
  buildCounterDealPauseStatus++;
  if (buildCounterDealPauseStatus < 3) {
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
  buildCounterDealPauseStatus--;
}

core.int buildCounterDealServingMetadata = 0;
api.DealServingMetadata buildDealServingMetadata() {
  final o = api.DealServingMetadata();
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    o.dealPauseStatus = buildDealPauseStatus();
  }
  buildCounterDealServingMetadata--;
  return o;
}

void checkDealServingMetadata(api.DealServingMetadata o) {
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    checkDealPauseStatus(o.dealPauseStatus!);
  }
  buildCounterDealServingMetadata--;
}

core.int buildCounterDealTerms = 0;
api.DealTerms buildDealTerms() {
  final o = api.DealTerms();
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    o.brandingType = 'foo';
    o.description = 'foo';
    o.estimatedGrossSpend = buildPrice();
    o.estimatedImpressionsPerDay = 'foo';
    o.guaranteedFixedPriceTerms = buildGuaranteedFixedPriceTerms();
    o.nonGuaranteedAuctionTerms = buildNonGuaranteedAuctionTerms();
    o.nonGuaranteedFixedPriceTerms = buildNonGuaranteedFixedPriceTerms();
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
      o.description!,
      unittest.equals('foo'),
    );
    checkPrice(o.estimatedGrossSpend!);
    unittest.expect(
      o.estimatedImpressionsPerDay!,
      unittest.equals('foo'),
    );
    checkGuaranteedFixedPriceTerms(o.guaranteedFixedPriceTerms!);
    checkNonGuaranteedAuctionTerms(o.nonGuaranteedAuctionTerms!);
    checkNonGuaranteedFixedPriceTerms(o.nonGuaranteedFixedPriceTerms!);
    unittest.expect(
      o.sellerTimeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterDealTerms--;
}

core.List<api.FrequencyCap> buildUnnamed7950() => [
      buildFrequencyCap(),
      buildFrequencyCap(),
    ];

void checkUnnamed7950(core.List<api.FrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrequencyCap(o[0]);
  checkFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
api.DeliveryControl buildDeliveryControl() {
  final o = api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.creativeBlockingLevel = 'foo';
    o.deliveryRateType = 'foo';
    o.frequencyCaps = buildUnnamed7950();
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
    checkUnnamed7950(o.frequencyCaps!);
  }
  buildCounterDeliveryControl--;
}

core.List<core.String> buildUnnamed7951() => [
      'foo',
      'foo',
    ];

void checkUnnamed7951(core.List<core.String> o) {
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

core.int buildCounterDisapproval = 0;
api.Disapproval buildDisapproval() {
  final o = api.Disapproval();
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    o.details = buildUnnamed7951();
    o.reason = 'foo';
  }
  buildCounterDisapproval--;
  return o;
}

void checkDisapproval(api.Disapproval o) {
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    checkUnnamed7951(o.details!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisapproval--;
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

core.List<core.String> buildUnnamed7952() => [
      'foo',
      'foo',
    ];

void checkUnnamed7952(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7953() => [
      'foo',
      'foo',
    ];

void checkUnnamed7953(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7954() => [
      'foo',
      'foo',
    ];

void checkUnnamed7954(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7955() => [
      'foo',
      'foo',
    ];

void checkUnnamed7955(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed7956() => [
      42,
      42,
    ];

void checkUnnamed7956(core.List<core.int> o) {
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

core.int buildCounterFilterSet = 0;
api.FilterSet buildFilterSet() {
  final o = api.FilterSet();
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    o.absoluteDateRange = buildAbsoluteDateRange();
    o.breakdownDimensions = buildUnnamed7952();
    o.creativeId = 'foo';
    o.dealId = 'foo';
    o.environment = 'foo';
    o.format = 'foo';
    o.formats = buildUnnamed7953();
    o.name = 'foo';
    o.platforms = buildUnnamed7954();
    o.publisherIdentifiers = buildUnnamed7955();
    o.realtimeTimeRange = buildRealtimeTimeRange();
    o.relativeDateRange = buildRelativeDateRange();
    o.sellerNetworkIds = buildUnnamed7956();
    o.timeSeriesGranularity = 'foo';
  }
  buildCounterFilterSet--;
  return o;
}

void checkFilterSet(api.FilterSet o) {
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    checkAbsoluteDateRange(o.absoluteDateRange!);
    checkUnnamed7952(o.breakdownDimensions!);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    checkUnnamed7953(o.formats!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7954(o.platforms!);
    checkUnnamed7955(o.publisherIdentifiers!);
    checkRealtimeTimeRange(o.realtimeTimeRange!);
    checkRelativeDateRange(o.relativeDateRange!);
    checkUnnamed7956(o.sellerNetworkIds!);
    unittest.expect(
      o.timeSeriesGranularity!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterSet--;
}

core.int buildCounterFilteredBidCreativeRow = 0;
api.FilteredBidCreativeRow buildFilteredBidCreativeRow() {
  final o = api.FilteredBidCreativeRow();
  buildCounterFilteredBidCreativeRow++;
  if (buildCounterFilteredBidCreativeRow < 3) {
    o.bidCount = buildMetricValue();
    o.creativeId = 'foo';
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterFilteredBidCreativeRow--;
  return o;
}

void checkFilteredBidCreativeRow(api.FilteredBidCreativeRow o) {
  buildCounterFilteredBidCreativeRow++;
  if (buildCounterFilteredBidCreativeRow < 3) {
    checkMetricValue(o.bidCount!);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    checkRowDimensions(o.rowDimensions!);
  }
  buildCounterFilteredBidCreativeRow--;
}

core.int buildCounterFilteredBidDetailRow = 0;
api.FilteredBidDetailRow buildFilteredBidDetailRow() {
  final o = api.FilteredBidDetailRow();
  buildCounterFilteredBidDetailRow++;
  if (buildCounterFilteredBidDetailRow < 3) {
    o.bidCount = buildMetricValue();
    o.detail = 'foo';
    o.detailId = 42;
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterFilteredBidDetailRow--;
  return o;
}

void checkFilteredBidDetailRow(api.FilteredBidDetailRow o) {
  buildCounterFilteredBidDetailRow++;
  if (buildCounterFilteredBidDetailRow < 3) {
    checkMetricValue(o.bidCount!);
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detailId!,
      unittest.equals(42),
    );
    checkRowDimensions(o.rowDimensions!);
  }
  buildCounterFilteredBidDetailRow--;
}

core.List<core.String> buildUnnamed7957() => [
      'foo',
      'foo',
    ];

void checkUnnamed7957(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7958() => [
      'foo',
      'foo',
    ];

void checkUnnamed7958(core.List<core.String> o) {
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

core.int buildCounterFirstPartyMobileApplicationTargeting = 0;
api.FirstPartyMobileApplicationTargeting
    buildFirstPartyMobileApplicationTargeting() {
  final o = api.FirstPartyMobileApplicationTargeting();
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    o.excludedAppIds = buildUnnamed7957();
    o.targetedAppIds = buildUnnamed7958();
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
  return o;
}

void checkFirstPartyMobileApplicationTargeting(
    api.FirstPartyMobileApplicationTargeting o) {
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    checkUnnamed7957(o.excludedAppIds!);
    checkUnnamed7958(o.targetedAppIds!);
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  final o = api.FrequencyCap();
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.numTimeUnits = 42;
    o.timeUnitType = 'foo';
  }
  buildCounterFrequencyCap--;
  return o;
}

void checkFrequencyCap(api.FrequencyCap o) {
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
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
  buildCounterFrequencyCap--;
}

core.List<api.PricePerBuyer> buildUnnamed7959() => [
      buildPricePerBuyer(),
      buildPricePerBuyer(),
    ];

void checkUnnamed7959(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterGuaranteedFixedPriceTerms = 0;
api.GuaranteedFixedPriceTerms buildGuaranteedFixedPriceTerms() {
  final o = api.GuaranteedFixedPriceTerms();
  buildCounterGuaranteedFixedPriceTerms++;
  if (buildCounterGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed7959();
    o.guaranteedImpressions = 'foo';
    o.guaranteedLooks = 'foo';
    o.impressionCap = 'foo';
    o.minimumDailyLooks = 'foo';
    o.percentShareOfVoice = 'foo';
    o.reservationType = 'foo';
  }
  buildCounterGuaranteedFixedPriceTerms--;
  return o;
}

void checkGuaranteedFixedPriceTerms(api.GuaranteedFixedPriceTerms o) {
  buildCounterGuaranteedFixedPriceTerms++;
  if (buildCounterGuaranteedFixedPriceTerms < 3) {
    checkUnnamed7959(o.fixedPrices!);
    unittest.expect(
      o.guaranteedImpressions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.guaranteedLooks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressionCap!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumDailyLooks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentShareOfVoice!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuaranteedFixedPriceTerms--;
}

core.int buildCounterHtmlContent = 0;
api.HtmlContent buildHtmlContent() {
  final o = api.HtmlContent();
  buildCounterHtmlContent++;
  if (buildCounterHtmlContent < 3) {
    o.height = 42;
    o.snippet = 'foo';
    o.width = 42;
  }
  buildCounterHtmlContent--;
  return o;
}

void checkHtmlContent(api.HtmlContent o) {
  buildCounterHtmlContent++;
  if (buildCounterHtmlContent < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterHtmlContent--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.height = 42;
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
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
  buildCounterImage--;
}

core.int buildCounterImpressionMetricsRow = 0;
api.ImpressionMetricsRow buildImpressionMetricsRow() {
  final o = api.ImpressionMetricsRow();
  buildCounterImpressionMetricsRow++;
  if (buildCounterImpressionMetricsRow < 3) {
    o.availableImpressions = buildMetricValue();
    o.bidRequests = buildMetricValue();
    o.inventoryMatches = buildMetricValue();
    o.responsesWithBids = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.successfulResponses = buildMetricValue();
  }
  buildCounterImpressionMetricsRow--;
  return o;
}

void checkImpressionMetricsRow(api.ImpressionMetricsRow o) {
  buildCounterImpressionMetricsRow++;
  if (buildCounterImpressionMetricsRow < 3) {
    checkMetricValue(o.availableImpressions!);
    checkMetricValue(o.bidRequests!);
    checkMetricValue(o.inventoryMatches!);
    checkMetricValue(o.responsesWithBids!);
    checkRowDimensions(o.rowDimensions!);
    checkMetricValue(o.successfulResponses!);
  }
  buildCounterImpressionMetricsRow--;
}

core.List<api.AdSize> buildUnnamed7960() => [
      buildAdSize(),
      buildAdSize(),
    ];

void checkUnnamed7960(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.List<api.AdSize> buildUnnamed7961() => [
      buildAdSize(),
      buildAdSize(),
    ];

void checkUnnamed7961(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.int buildCounterInventorySizeTargeting = 0;
api.InventorySizeTargeting buildInventorySizeTargeting() {
  final o = api.InventorySizeTargeting();
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    o.excludedInventorySizes = buildUnnamed7960();
    o.targetedInventorySizes = buildUnnamed7961();
  }
  buildCounterInventorySizeTargeting--;
  return o;
}

void checkInventorySizeTargeting(api.InventorySizeTargeting o) {
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    checkUnnamed7960(o.excludedInventorySizes!);
    checkUnnamed7961(o.targetedInventorySizes!);
  }
  buildCounterInventorySizeTargeting--;
}

core.List<api.BidMetricsRow> buildUnnamed7962() => [
      buildBidMetricsRow(),
      buildBidMetricsRow(),
    ];

void checkUnnamed7962(core.List<api.BidMetricsRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBidMetricsRow(o[0]);
  checkBidMetricsRow(o[1]);
}

core.int buildCounterListBidMetricsResponse = 0;
api.ListBidMetricsResponse buildListBidMetricsResponse() {
  final o = api.ListBidMetricsResponse();
  buildCounterListBidMetricsResponse++;
  if (buildCounterListBidMetricsResponse < 3) {
    o.bidMetricsRows = buildUnnamed7962();
    o.nextPageToken = 'foo';
  }
  buildCounterListBidMetricsResponse--;
  return o;
}

void checkListBidMetricsResponse(api.ListBidMetricsResponse o) {
  buildCounterListBidMetricsResponse++;
  if (buildCounterListBidMetricsResponse < 3) {
    checkUnnamed7962(o.bidMetricsRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBidMetricsResponse--;
}

core.List<api.CalloutStatusRow> buildUnnamed7963() => [
      buildCalloutStatusRow(),
      buildCalloutStatusRow(),
    ];

void checkUnnamed7963(core.List<api.CalloutStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusRow(o[0]);
  checkCalloutStatusRow(o[1]);
}

core.int buildCounterListBidResponseErrorsResponse = 0;
api.ListBidResponseErrorsResponse buildListBidResponseErrorsResponse() {
  final o = api.ListBidResponseErrorsResponse();
  buildCounterListBidResponseErrorsResponse++;
  if (buildCounterListBidResponseErrorsResponse < 3) {
    o.calloutStatusRows = buildUnnamed7963();
    o.nextPageToken = 'foo';
  }
  buildCounterListBidResponseErrorsResponse--;
  return o;
}

void checkListBidResponseErrorsResponse(api.ListBidResponseErrorsResponse o) {
  buildCounterListBidResponseErrorsResponse++;
  if (buildCounterListBidResponseErrorsResponse < 3) {
    checkUnnamed7963(o.calloutStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBidResponseErrorsResponse--;
}

core.List<api.BidResponseWithoutBidsStatusRow> buildUnnamed7964() => [
      buildBidResponseWithoutBidsStatusRow(),
      buildBidResponseWithoutBidsStatusRow(),
    ];

void checkUnnamed7964(core.List<api.BidResponseWithoutBidsStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBidResponseWithoutBidsStatusRow(o[0]);
  checkBidResponseWithoutBidsStatusRow(o[1]);
}

core.int buildCounterListBidResponsesWithoutBidsResponse = 0;
api.ListBidResponsesWithoutBidsResponse
    buildListBidResponsesWithoutBidsResponse() {
  final o = api.ListBidResponsesWithoutBidsResponse();
  buildCounterListBidResponsesWithoutBidsResponse++;
  if (buildCounterListBidResponsesWithoutBidsResponse < 3) {
    o.bidResponseWithoutBidsStatusRows = buildUnnamed7964();
    o.nextPageToken = 'foo';
  }
  buildCounterListBidResponsesWithoutBidsResponse--;
  return o;
}

void checkListBidResponsesWithoutBidsResponse(
    api.ListBidResponsesWithoutBidsResponse o) {
  buildCounterListBidResponsesWithoutBidsResponse++;
  if (buildCounterListBidResponsesWithoutBidsResponse < 3) {
    checkUnnamed7964(o.bidResponseWithoutBidsStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBidResponsesWithoutBidsResponse--;
}

core.List<api.ClientUserInvitation> buildUnnamed7965() => [
      buildClientUserInvitation(),
      buildClientUserInvitation(),
    ];

void checkUnnamed7965(core.List<api.ClientUserInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUserInvitation(o[0]);
  checkClientUserInvitation(o[1]);
}

core.int buildCounterListClientUserInvitationsResponse = 0;
api.ListClientUserInvitationsResponse buildListClientUserInvitationsResponse() {
  final o = api.ListClientUserInvitationsResponse();
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    o.invitations = buildUnnamed7965();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientUserInvitationsResponse--;
  return o;
}

void checkListClientUserInvitationsResponse(
    api.ListClientUserInvitationsResponse o) {
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    checkUnnamed7965(o.invitations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClientUserInvitationsResponse--;
}

core.List<api.ClientUser> buildUnnamed7966() => [
      buildClientUser(),
      buildClientUser(),
    ];

void checkUnnamed7966(core.List<api.ClientUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUser(o[0]);
  checkClientUser(o[1]);
}

core.int buildCounterListClientUsersResponse = 0;
api.ListClientUsersResponse buildListClientUsersResponse() {
  final o = api.ListClientUsersResponse();
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.users = buildUnnamed7966();
  }
  buildCounterListClientUsersResponse--;
  return o;
}

void checkListClientUsersResponse(api.ListClientUsersResponse o) {
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7966(o.users!);
  }
  buildCounterListClientUsersResponse--;
}

core.List<api.Client> buildUnnamed7967() => [
      buildClient(),
      buildClient(),
    ];

void checkUnnamed7967(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0]);
  checkClient(o[1]);
}

core.int buildCounterListClientsResponse = 0;
api.ListClientsResponse buildListClientsResponse() {
  final o = api.ListClientsResponse();
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    o.clients = buildUnnamed7967();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientsResponse--;
  return o;
}

void checkListClientsResponse(api.ListClientsResponse o) {
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    checkUnnamed7967(o.clients!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClientsResponse--;
}

core.List<api.FilteredBidCreativeRow> buildUnnamed7968() => [
      buildFilteredBidCreativeRow(),
      buildFilteredBidCreativeRow(),
    ];

void checkUnnamed7968(core.List<api.FilteredBidCreativeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredBidCreativeRow(o[0]);
  checkFilteredBidCreativeRow(o[1]);
}

core.int buildCounterListCreativeStatusBreakdownByCreativeResponse = 0;
api.ListCreativeStatusBreakdownByCreativeResponse
    buildListCreativeStatusBreakdownByCreativeResponse() {
  final o = api.ListCreativeStatusBreakdownByCreativeResponse();
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    o.filteredBidCreativeRows = buildUnnamed7968();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
  return o;
}

void checkListCreativeStatusBreakdownByCreativeResponse(
    api.ListCreativeStatusBreakdownByCreativeResponse o) {
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    checkUnnamed7968(o.filteredBidCreativeRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
}

core.List<api.FilteredBidDetailRow> buildUnnamed7969() => [
      buildFilteredBidDetailRow(),
      buildFilteredBidDetailRow(),
    ];

void checkUnnamed7969(core.List<api.FilteredBidDetailRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredBidDetailRow(o[0]);
  checkFilteredBidDetailRow(o[1]);
}

core.int buildCounterListCreativeStatusBreakdownByDetailResponse = 0;
api.ListCreativeStatusBreakdownByDetailResponse
    buildListCreativeStatusBreakdownByDetailResponse() {
  final o = api.ListCreativeStatusBreakdownByDetailResponse();
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    o.detailType = 'foo';
    o.filteredBidDetailRows = buildUnnamed7969();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
  return o;
}

void checkListCreativeStatusBreakdownByDetailResponse(
    api.ListCreativeStatusBreakdownByDetailResponse o) {
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    unittest.expect(
      o.detailType!,
      unittest.equals('foo'),
    );
    checkUnnamed7969(o.filteredBidDetailRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
}

core.List<api.Creative> buildUnnamed7970() => [
      buildCreative(),
      buildCreative(),
    ];

void checkUnnamed7970(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterListCreativesResponse = 0;
api.ListCreativesResponse buildListCreativesResponse() {
  final o = api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed7970();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativesResponse--;
  return o;
}

void checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed7970(o.creatives!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCreativesResponse--;
}

core.List<api.CreativeDealAssociation> buildUnnamed7971() => [
      buildCreativeDealAssociation(),
      buildCreativeDealAssociation(),
    ];

void checkUnnamed7971(core.List<api.CreativeDealAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealAssociation(o[0]);
  checkCreativeDealAssociation(o[1]);
}

core.int buildCounterListDealAssociationsResponse = 0;
api.ListDealAssociationsResponse buildListDealAssociationsResponse() {
  final o = api.ListDealAssociationsResponse();
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    o.associations = buildUnnamed7971();
    o.nextPageToken = 'foo';
  }
  buildCounterListDealAssociationsResponse--;
  return o;
}

void checkListDealAssociationsResponse(api.ListDealAssociationsResponse o) {
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    checkUnnamed7971(o.associations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDealAssociationsResponse--;
}

core.List<api.FilterSet> buildUnnamed7972() => [
      buildFilterSet(),
      buildFilterSet(),
    ];

void checkUnnamed7972(core.List<api.FilterSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSet(o[0]);
  checkFilterSet(o[1]);
}

core.int buildCounterListFilterSetsResponse = 0;
api.ListFilterSetsResponse buildListFilterSetsResponse() {
  final o = api.ListFilterSetsResponse();
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    o.filterSets = buildUnnamed7972();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilterSetsResponse--;
  return o;
}

void checkListFilterSetsResponse(api.ListFilterSetsResponse o) {
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    checkUnnamed7972(o.filterSets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilterSetsResponse--;
}

core.List<api.CalloutStatusRow> buildUnnamed7973() => [
      buildCalloutStatusRow(),
      buildCalloutStatusRow(),
    ];

void checkUnnamed7973(core.List<api.CalloutStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusRow(o[0]);
  checkCalloutStatusRow(o[1]);
}

core.int buildCounterListFilteredBidRequestsResponse = 0;
api.ListFilteredBidRequestsResponse buildListFilteredBidRequestsResponse() {
  final o = api.ListFilteredBidRequestsResponse();
  buildCounterListFilteredBidRequestsResponse++;
  if (buildCounterListFilteredBidRequestsResponse < 3) {
    o.calloutStatusRows = buildUnnamed7973();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilteredBidRequestsResponse--;
  return o;
}

void checkListFilteredBidRequestsResponse(
    api.ListFilteredBidRequestsResponse o) {
  buildCounterListFilteredBidRequestsResponse++;
  if (buildCounterListFilteredBidRequestsResponse < 3) {
    checkUnnamed7973(o.calloutStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilteredBidRequestsResponse--;
}

core.List<api.CreativeStatusRow> buildUnnamed7974() => [
      buildCreativeStatusRow(),
      buildCreativeStatusRow(),
    ];

void checkUnnamed7974(core.List<api.CreativeStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusRow(o[0]);
  checkCreativeStatusRow(o[1]);
}

core.int buildCounterListFilteredBidsResponse = 0;
api.ListFilteredBidsResponse buildListFilteredBidsResponse() {
  final o = api.ListFilteredBidsResponse();
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    o.creativeStatusRows = buildUnnamed7974();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilteredBidsResponse--;
  return o;
}

void checkListFilteredBidsResponse(api.ListFilteredBidsResponse o) {
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    checkUnnamed7974(o.creativeStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilteredBidsResponse--;
}

core.List<api.ImpressionMetricsRow> buildUnnamed7975() => [
      buildImpressionMetricsRow(),
      buildImpressionMetricsRow(),
    ];

void checkUnnamed7975(core.List<api.ImpressionMetricsRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImpressionMetricsRow(o[0]);
  checkImpressionMetricsRow(o[1]);
}

core.int buildCounterListImpressionMetricsResponse = 0;
api.ListImpressionMetricsResponse buildListImpressionMetricsResponse() {
  final o = api.ListImpressionMetricsResponse();
  buildCounterListImpressionMetricsResponse++;
  if (buildCounterListImpressionMetricsResponse < 3) {
    o.impressionMetricsRows = buildUnnamed7975();
    o.nextPageToken = 'foo';
  }
  buildCounterListImpressionMetricsResponse--;
  return o;
}

void checkListImpressionMetricsResponse(api.ListImpressionMetricsResponse o) {
  buildCounterListImpressionMetricsResponse++;
  if (buildCounterListImpressionMetricsResponse < 3) {
    checkUnnamed7975(o.impressionMetricsRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListImpressionMetricsResponse--;
}

core.List<api.CreativeStatusRow> buildUnnamed7976() => [
      buildCreativeStatusRow(),
      buildCreativeStatusRow(),
    ];

void checkUnnamed7976(core.List<api.CreativeStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusRow(o[0]);
  checkCreativeStatusRow(o[1]);
}

core.int buildCounterListLosingBidsResponse = 0;
api.ListLosingBidsResponse buildListLosingBidsResponse() {
  final o = api.ListLosingBidsResponse();
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    o.creativeStatusRows = buildUnnamed7976();
    o.nextPageToken = 'foo';
  }
  buildCounterListLosingBidsResponse--;
  return o;
}

void checkListLosingBidsResponse(api.ListLosingBidsResponse o) {
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    checkUnnamed7976(o.creativeStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLosingBidsResponse--;
}

core.List<api.NonBillableWinningBidStatusRow> buildUnnamed7977() => [
      buildNonBillableWinningBidStatusRow(),
      buildNonBillableWinningBidStatusRow(),
    ];

void checkUnnamed7977(core.List<api.NonBillableWinningBidStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonBillableWinningBidStatusRow(o[0]);
  checkNonBillableWinningBidStatusRow(o[1]);
}

core.int buildCounterListNonBillableWinningBidsResponse = 0;
api.ListNonBillableWinningBidsResponse
    buildListNonBillableWinningBidsResponse() {
  final o = api.ListNonBillableWinningBidsResponse();
  buildCounterListNonBillableWinningBidsResponse++;
  if (buildCounterListNonBillableWinningBidsResponse < 3) {
    o.nextPageToken = 'foo';
    o.nonBillableWinningBidStatusRows = buildUnnamed7977();
  }
  buildCounterListNonBillableWinningBidsResponse--;
  return o;
}

void checkListNonBillableWinningBidsResponse(
    api.ListNonBillableWinningBidsResponse o) {
  buildCounterListNonBillableWinningBidsResponse++;
  if (buildCounterListNonBillableWinningBidsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7977(o.nonBillableWinningBidStatusRows!);
  }
  buildCounterListNonBillableWinningBidsResponse--;
}

core.List<api.Product> buildUnnamed7978() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed7978(core.List<api.Product> o) {
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
    o.products = buildUnnamed7978();
  }
  buildCounterListProductsResponse--;
  return o;
}

void checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7978(o.products!);
  }
  buildCounterListProductsResponse--;
}

core.List<api.Proposal> buildUnnamed7979() => [
      buildProposal(),
      buildProposal(),
    ];

void checkUnnamed7979(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterListProposalsResponse = 0;
api.ListProposalsResponse buildListProposalsResponse() {
  final o = api.ListProposalsResponse();
  buildCounterListProposalsResponse++;
  if (buildCounterListProposalsResponse < 3) {
    o.nextPageToken = 'foo';
    o.proposals = buildUnnamed7979();
  }
  buildCounterListProposalsResponse--;
  return o;
}

void checkListProposalsResponse(api.ListProposalsResponse o) {
  buildCounterListProposalsResponse++;
  if (buildCounterListProposalsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7979(o.proposals!);
  }
  buildCounterListProposalsResponse--;
}

core.List<api.PublisherProfile> buildUnnamed7980() => [
      buildPublisherProfile(),
      buildPublisherProfile(),
    ];

void checkUnnamed7980(core.List<api.PublisherProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfile(o[0]);
  checkPublisherProfile(o[1]);
}

core.int buildCounterListPublisherProfilesResponse = 0;
api.ListPublisherProfilesResponse buildListPublisherProfilesResponse() {
  final o = api.ListPublisherProfilesResponse();
  buildCounterListPublisherProfilesResponse++;
  if (buildCounterListPublisherProfilesResponse < 3) {
    o.nextPageToken = 'foo';
    o.publisherProfiles = buildUnnamed7980();
  }
  buildCounterListPublisherProfilesResponse--;
  return o;
}

void checkListPublisherProfilesResponse(api.ListPublisherProfilesResponse o) {
  buildCounterListPublisherProfilesResponse++;
  if (buildCounterListPublisherProfilesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7980(o.publisherProfiles!);
  }
  buildCounterListPublisherProfilesResponse--;
}

core.List<core.int> buildUnnamed7981() => [
      42,
      42,
    ];

void checkUnnamed7981(core.List<core.int> o) {
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

core.int buildCounterLocationContext = 0;
api.LocationContext buildLocationContext() {
  final o = api.LocationContext();
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    o.geoCriteriaIds = buildUnnamed7981();
  }
  buildCounterLocationContext--;
  return o;
}

void checkLocationContext(api.LocationContext o) {
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    checkUnnamed7981(o.geoCriteriaIds!);
  }
  buildCounterLocationContext--;
}

core.int buildCounterMarketplaceTargeting = 0;
api.MarketplaceTargeting buildMarketplaceTargeting() {
  final o = api.MarketplaceTargeting();
  buildCounterMarketplaceTargeting++;
  if (buildCounterMarketplaceTargeting < 3) {
    o.geoTargeting = buildCriteriaTargeting();
    o.inventorySizeTargeting = buildInventorySizeTargeting();
    o.placementTargeting = buildPlacementTargeting();
    o.technologyTargeting = buildTechnologyTargeting();
    o.videoTargeting = buildVideoTargeting();
  }
  buildCounterMarketplaceTargeting--;
  return o;
}

void checkMarketplaceTargeting(api.MarketplaceTargeting o) {
  buildCounterMarketplaceTargeting++;
  if (buildCounterMarketplaceTargeting < 3) {
    checkCriteriaTargeting(o.geoTargeting!);
    checkInventorySizeTargeting(o.inventorySizeTargeting!);
    checkPlacementTargeting(o.placementTargeting!);
    checkTechnologyTargeting(o.technologyTargeting!);
    checkVideoTargeting(o.videoTargeting!);
  }
  buildCounterMarketplaceTargeting--;
}

core.int buildCounterMetricValue = 0;
api.MetricValue buildMetricValue() {
  final o = api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.value = 'foo';
    o.variance = 'foo';
  }
  buildCounterMetricValue--;
  return o;
}

void checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variance!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricValue--;
}

core.int buildCounterMobileApplicationTargeting = 0;
api.MobileApplicationTargeting buildMobileApplicationTargeting() {
  final o = api.MobileApplicationTargeting();
  buildCounterMobileApplicationTargeting++;
  if (buildCounterMobileApplicationTargeting < 3) {
    o.firstPartyTargeting = buildFirstPartyMobileApplicationTargeting();
  }
  buildCounterMobileApplicationTargeting--;
  return o;
}

void checkMobileApplicationTargeting(api.MobileApplicationTargeting o) {
  buildCounterMobileApplicationTargeting++;
  if (buildCounterMobileApplicationTargeting < 3) {
    checkFirstPartyMobileApplicationTargeting(o.firstPartyTargeting!);
  }
  buildCounterMobileApplicationTargeting--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
}

core.int buildCounterNativeContent = 0;
api.NativeContent buildNativeContent() {
  final o = api.NativeContent();
  buildCounterNativeContent++;
  if (buildCounterNativeContent < 3) {
    o.advertiserName = 'foo';
    o.appIcon = buildImage();
    o.body = 'foo';
    o.callToAction = 'foo';
    o.clickLinkUrl = 'foo';
    o.clickTrackingUrl = 'foo';
    o.headline = 'foo';
    o.image = buildImage();
    o.logo = buildImage();
    o.priceDisplayText = 'foo';
    o.starRating = 42.0;
    o.storeUrl = 'foo';
    o.videoUrl = 'foo';
  }
  buildCounterNativeContent--;
  return o;
}

void checkNativeContent(api.NativeContent o) {
  buildCounterNativeContent++;
  if (buildCounterNativeContent < 3) {
    unittest.expect(
      o.advertiserName!,
      unittest.equals('foo'),
    );
    checkImage(o.appIcon!);
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
    checkImage(o.image!);
    checkImage(o.logo!);
    unittest.expect(
      o.priceDisplayText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.starRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.storeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterNativeContent--;
}

core.int buildCounterNonBillableWinningBidStatusRow = 0;
api.NonBillableWinningBidStatusRow buildNonBillableWinningBidStatusRow() {
  final o = api.NonBillableWinningBidStatusRow();
  buildCounterNonBillableWinningBidStatusRow++;
  if (buildCounterNonBillableWinningBidStatusRow < 3) {
    o.bidCount = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.status = 'foo';
  }
  buildCounterNonBillableWinningBidStatusRow--;
  return o;
}

void checkNonBillableWinningBidStatusRow(api.NonBillableWinningBidStatusRow o) {
  buildCounterNonBillableWinningBidStatusRow++;
  if (buildCounterNonBillableWinningBidStatusRow < 3) {
    checkMetricValue(o.bidCount!);
    checkRowDimensions(o.rowDimensions!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonBillableWinningBidStatusRow--;
}

core.List<api.PricePerBuyer> buildUnnamed7982() => [
      buildPricePerBuyer(),
      buildPricePerBuyer(),
    ];

void checkUnnamed7982(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterNonGuaranteedAuctionTerms = 0;
api.NonGuaranteedAuctionTerms buildNonGuaranteedAuctionTerms() {
  final o = api.NonGuaranteedAuctionTerms();
  buildCounterNonGuaranteedAuctionTerms++;
  if (buildCounterNonGuaranteedAuctionTerms < 3) {
    o.autoOptimizePrivateAuction = true;
    o.reservePricesPerBuyer = buildUnnamed7982();
  }
  buildCounterNonGuaranteedAuctionTerms--;
  return o;
}

void checkNonGuaranteedAuctionTerms(api.NonGuaranteedAuctionTerms o) {
  buildCounterNonGuaranteedAuctionTerms++;
  if (buildCounterNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.autoOptimizePrivateAuction!, unittest.isTrue);
    checkUnnamed7982(o.reservePricesPerBuyer!);
  }
  buildCounterNonGuaranteedAuctionTerms--;
}

core.List<api.PricePerBuyer> buildUnnamed7983() => [
      buildPricePerBuyer(),
      buildPricePerBuyer(),
    ];

void checkUnnamed7983(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterNonGuaranteedFixedPriceTerms = 0;
api.NonGuaranteedFixedPriceTerms buildNonGuaranteedFixedPriceTerms() {
  final o = api.NonGuaranteedFixedPriceTerms();
  buildCounterNonGuaranteedFixedPriceTerms++;
  if (buildCounterNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed7983();
  }
  buildCounterNonGuaranteedFixedPriceTerms--;
  return o;
}

void checkNonGuaranteedFixedPriceTerms(api.NonGuaranteedFixedPriceTerms o) {
  buildCounterNonGuaranteedFixedPriceTerms++;
  if (buildCounterNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed7983(o.fixedPrices!);
  }
  buildCounterNonGuaranteedFixedPriceTerms--;
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.createTime = 'foo';
    o.creatorRole = 'foo';
    o.note = 'foo';
    o.noteId = 'foo';
    o.proposalRevision = 'foo';
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorRole!,
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
      o.proposalRevision!,
      unittest.equals('foo'),
    );
  }
  buildCounterNote--;
}

core.int buildCounterOperatingSystemTargeting = 0;
api.OperatingSystemTargeting buildOperatingSystemTargeting() {
  final o = api.OperatingSystemTargeting();
  buildCounterOperatingSystemTargeting++;
  if (buildCounterOperatingSystemTargeting < 3) {
    o.operatingSystemCriteria = buildCriteriaTargeting();
    o.operatingSystemVersionCriteria = buildCriteriaTargeting();
  }
  buildCounterOperatingSystemTargeting--;
  return o;
}

void checkOperatingSystemTargeting(api.OperatingSystemTargeting o) {
  buildCounterOperatingSystemTargeting++;
  if (buildCounterOperatingSystemTargeting < 3) {
    checkCriteriaTargeting(o.operatingSystemCriteria!);
    checkCriteriaTargeting(o.operatingSystemVersionCriteria!);
  }
  buildCounterOperatingSystemTargeting--;
}

core.List<core.String> buildUnnamed7984() => [
      'foo',
      'foo',
    ];

void checkUnnamed7984(core.List<core.String> o) {
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

core.int buildCounterPauseProposalDealsRequest = 0;
api.PauseProposalDealsRequest buildPauseProposalDealsRequest() {
  final o = api.PauseProposalDealsRequest();
  buildCounterPauseProposalDealsRequest++;
  if (buildCounterPauseProposalDealsRequest < 3) {
    o.externalDealIds = buildUnnamed7984();
    o.reason = 'foo';
  }
  buildCounterPauseProposalDealsRequest--;
  return o;
}

void checkPauseProposalDealsRequest(api.PauseProposalDealsRequest o) {
  buildCounterPauseProposalDealsRequest++;
  if (buildCounterPauseProposalDealsRequest < 3) {
    checkUnnamed7984(o.externalDealIds!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterPauseProposalDealsRequest--;
}

core.int buildCounterPauseProposalRequest = 0;
api.PauseProposalRequest buildPauseProposalRequest() {
  final o = api.PauseProposalRequest();
  buildCounterPauseProposalRequest++;
  if (buildCounterPauseProposalRequest < 3) {
    o.reason = 'foo';
  }
  buildCounterPauseProposalRequest--;
  return o;
}

void checkPauseProposalRequest(api.PauseProposalRequest o) {
  buildCounterPauseProposalRequest++;
  if (buildCounterPauseProposalRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterPauseProposalRequest--;
}

core.int buildCounterPlacementTargeting = 0;
api.PlacementTargeting buildPlacementTargeting() {
  final o = api.PlacementTargeting();
  buildCounterPlacementTargeting++;
  if (buildCounterPlacementTargeting < 3) {
    o.mobileApplicationTargeting = buildMobileApplicationTargeting();
    o.urlTargeting = buildUrlTargeting();
  }
  buildCounterPlacementTargeting--;
  return o;
}

void checkPlacementTargeting(api.PlacementTargeting o) {
  buildCounterPlacementTargeting++;
  if (buildCounterPlacementTargeting < 3) {
    checkMobileApplicationTargeting(o.mobileApplicationTargeting!);
    checkUrlTargeting(o.urlTargeting!);
  }
  buildCounterPlacementTargeting--;
}

core.List<core.String> buildUnnamed7985() => [
      'foo',
      'foo',
    ];

void checkUnnamed7985(core.List<core.String> o) {
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

core.int buildCounterPlatformContext = 0;
api.PlatformContext buildPlatformContext() {
  final o = api.PlatformContext();
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    o.platforms = buildUnnamed7985();
  }
  buildCounterPlatformContext--;
  return o;
}

void checkPlatformContext(api.PlatformContext o) {
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    checkUnnamed7985(o.platforms!);
  }
  buildCounterPlatformContext--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amount = buildMoney();
    o.pricingType = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    checkMoney(o.amount!);
    unittest.expect(
      o.pricingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.List<core.String> buildUnnamed7986() => [
      'foo',
      'foo',
    ];

void checkUnnamed7986(core.List<core.String> o) {
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

core.int buildCounterPricePerBuyer = 0;
api.PricePerBuyer buildPricePerBuyer() {
  final o = api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.advertiserIds = buildUnnamed7986();
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

void checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    checkUnnamed7986(o.advertiserIds!);
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
  }
  buildCounterPrivateData--;
}

core.List<api.ContactInformation> buildUnnamed7987() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed7987(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.List<api.TargetingCriteria> buildUnnamed7988() => [
      buildTargetingCriteria(),
      buildTargetingCriteria(),
    ];

void checkUnnamed7988(core.List<api.TargetingCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingCriteria(o[0]);
  checkTargetingCriteria(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.availableEndTime = 'foo';
    o.availableStartTime = 'foo';
    o.createTime = 'foo';
    o.creatorContacts = buildUnnamed7987();
    o.displayName = 'foo';
    o.hasCreatorSignedOff = true;
    o.productId = 'foo';
    o.productRevision = 'foo';
    o.publisherProfileId = 'foo';
    o.seller = buildSeller();
    o.syndicationProduct = 'foo';
    o.targetingCriterion = buildUnnamed7988();
    o.terms = buildDealTerms();
    o.updateTime = 'foo';
    o.webPropertyCode = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(
      o.availableEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7987(o.creatorContacts!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasCreatorSignedOff!, unittest.isTrue);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherProfileId!,
      unittest.equals('foo'),
    );
    checkSeller(o.seller!);
    unittest.expect(
      o.syndicationProduct!,
      unittest.equals('foo'),
    );
    checkUnnamed7988(o.targetingCriterion!);
    checkDealTerms(o.terms!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.List<api.ContactInformation> buildUnnamed7989() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed7989(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.List<api.Deal> buildUnnamed7990() => [
      buildDeal(),
      buildDeal(),
    ];

void checkUnnamed7990(core.List<api.Deal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeal(o[0]);
  checkDeal(o[1]);
}

core.List<api.Note> buildUnnamed7991() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed7991(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.List<api.ContactInformation> buildUnnamed7992() => [
      buildContactInformation(),
      buildContactInformation(),
    ];

void checkUnnamed7992(core.List<api.ContactInformation> o) {
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
    o.buyerContacts = buildUnnamed7989();
    o.buyerPrivateData = buildPrivateData();
    o.deals = buildUnnamed7990();
    o.displayName = 'foo';
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.lastUpdaterOrCommentorRole = 'foo';
    o.notes = buildUnnamed7991();
    o.originatorRole = 'foo';
    o.privateAuctionId = 'foo';
    o.proposalId = 'foo';
    o.proposalRevision = 'foo';
    o.proposalState = 'foo';
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed7992();
    o.termsAndConditions = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterProposal--;
  return o;
}

void checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    checkBuyer(o.billedBuyer!);
    checkBuyer(o.buyer!);
    checkUnnamed7989(o.buyerContacts!);
    checkPrivateData(o.buyerPrivateData!);
    checkUnnamed7990(o.deals!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRenegotiating!, unittest.isTrue);
    unittest.expect(o.isSetupComplete!, unittest.isTrue);
    unittest.expect(
      o.lastUpdaterOrCommentorRole!,
      unittest.equals('foo'),
    );
    checkUnnamed7991(o.notes!);
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
      o.proposalRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proposalState!,
      unittest.equals('foo'),
    );
    checkSeller(o.seller!);
    checkUnnamed7992(o.sellerContacts!);
    unittest.expect(
      o.termsAndConditions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterProposal--;
}

core.List<core.String> buildUnnamed7993() => [
      'foo',
      'foo',
    ];

void checkUnnamed7993(core.List<core.String> o) {
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

core.List<api.PublisherProfileMobileApplication> buildUnnamed7994() => [
      buildPublisherProfileMobileApplication(),
      buildPublisherProfileMobileApplication(),
    ];

void checkUnnamed7994(core.List<api.PublisherProfileMobileApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfileMobileApplication(o[0]);
  checkPublisherProfileMobileApplication(o[1]);
}

core.List<core.String> buildUnnamed7995() => [
      'foo',
      'foo',
    ];

void checkUnnamed7995(core.List<core.String> o) {
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

core.int buildCounterPublisherProfile = 0;
api.PublisherProfile buildPublisherProfile() {
  final o = api.PublisherProfile();
  buildCounterPublisherProfile++;
  if (buildCounterPublisherProfile < 3) {
    o.audienceDescription = 'foo';
    o.buyerPitchStatement = 'foo';
    o.directDealsContact = 'foo';
    o.displayName = 'foo';
    o.domains = buildUnnamed7993();
    o.googlePlusUrl = 'foo';
    o.isParent = true;
    o.logoUrl = 'foo';
    o.mediaKitUrl = 'foo';
    o.mobileApps = buildUnnamed7994();
    o.overview = 'foo';
    o.programmaticDealsContact = 'foo';
    o.publisherProfileId = 'foo';
    o.rateCardInfoUrl = 'foo';
    o.samplePageUrl = 'foo';
    o.seller = buildSeller();
    o.topHeadlines = buildUnnamed7995();
  }
  buildCounterPublisherProfile--;
  return o;
}

void checkPublisherProfile(api.PublisherProfile o) {
  buildCounterPublisherProfile++;
  if (buildCounterPublisherProfile < 3) {
    unittest.expect(
      o.audienceDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buyerPitchStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directDealsContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7993(o.domains!);
    unittest.expect(
      o.googlePlusUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isParent!, unittest.isTrue);
    unittest.expect(
      o.logoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaKitUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed7994(o.mobileApps!);
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.programmaticDealsContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateCardInfoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.samplePageUrl!,
      unittest.equals('foo'),
    );
    checkSeller(o.seller!);
    checkUnnamed7995(o.topHeadlines!);
  }
  buildCounterPublisherProfile--;
}

core.int buildCounterPublisherProfileMobileApplication = 0;
api.PublisherProfileMobileApplication buildPublisherProfileMobileApplication() {
  final o = api.PublisherProfileMobileApplication();
  buildCounterPublisherProfileMobileApplication++;
  if (buildCounterPublisherProfileMobileApplication < 3) {
    o.appStore = 'foo';
    o.externalAppId = 'foo';
    o.name = 'foo';
  }
  buildCounterPublisherProfileMobileApplication--;
  return o;
}

void checkPublisherProfileMobileApplication(
    api.PublisherProfileMobileApplication o) {
  buildCounterPublisherProfileMobileApplication++;
  if (buildCounterPublisherProfileMobileApplication < 3) {
    unittest.expect(
      o.appStore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublisherProfileMobileApplication--;
}

core.int buildCounterRealtimeTimeRange = 0;
api.RealtimeTimeRange buildRealtimeTimeRange() {
  final o = api.RealtimeTimeRange();
  buildCounterRealtimeTimeRange++;
  if (buildCounterRealtimeTimeRange < 3) {
    o.startTimestamp = 'foo';
  }
  buildCounterRealtimeTimeRange--;
  return o;
}

void checkRealtimeTimeRange(api.RealtimeTimeRange o) {
  buildCounterRealtimeTimeRange++;
  if (buildCounterRealtimeTimeRange < 3) {
    unittest.expect(
      o.startTimestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterRealtimeTimeRange--;
}

core.int buildCounterRelativeDateRange = 0;
api.RelativeDateRange buildRelativeDateRange() {
  final o = api.RelativeDateRange();
  buildCounterRelativeDateRange++;
  if (buildCounterRelativeDateRange < 3) {
    o.durationDays = 42;
    o.offsetDays = 42;
  }
  buildCounterRelativeDateRange--;
  return o;
}

void checkRelativeDateRange(api.RelativeDateRange o) {
  buildCounterRelativeDateRange++;
  if (buildCounterRelativeDateRange < 3) {
    unittest.expect(
      o.durationDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offsetDays!,
      unittest.equals(42),
    );
  }
  buildCounterRelativeDateRange--;
}

core.int buildCounterRemoveDealAssociationRequest = 0;
api.RemoveDealAssociationRequest buildRemoveDealAssociationRequest() {
  final o = api.RemoveDealAssociationRequest();
  buildCounterRemoveDealAssociationRequest++;
  if (buildCounterRemoveDealAssociationRequest < 3) {
    o.association = buildCreativeDealAssociation();
  }
  buildCounterRemoveDealAssociationRequest--;
  return o;
}

void checkRemoveDealAssociationRequest(api.RemoveDealAssociationRequest o) {
  buildCounterRemoveDealAssociationRequest++;
  if (buildCounterRemoveDealAssociationRequest < 3) {
    checkCreativeDealAssociation(o.association!);
  }
  buildCounterRemoveDealAssociationRequest--;
}

core.List<core.String> buildUnnamed7996() => [
      'foo',
      'foo',
    ];

void checkUnnamed7996(core.List<core.String> o) {
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

core.int buildCounterResumeProposalDealsRequest = 0;
api.ResumeProposalDealsRequest buildResumeProposalDealsRequest() {
  final o = api.ResumeProposalDealsRequest();
  buildCounterResumeProposalDealsRequest++;
  if (buildCounterResumeProposalDealsRequest < 3) {
    o.externalDealIds = buildUnnamed7996();
  }
  buildCounterResumeProposalDealsRequest--;
  return o;
}

void checkResumeProposalDealsRequest(api.ResumeProposalDealsRequest o) {
  buildCounterResumeProposalDealsRequest++;
  if (buildCounterResumeProposalDealsRequest < 3) {
    checkUnnamed7996(o.externalDealIds!);
  }
  buildCounterResumeProposalDealsRequest--;
}

core.int buildCounterResumeProposalRequest = 0;
api.ResumeProposalRequest buildResumeProposalRequest() {
  final o = api.ResumeProposalRequest();
  buildCounterResumeProposalRequest++;
  if (buildCounterResumeProposalRequest < 3) {}
  buildCounterResumeProposalRequest--;
  return o;
}

void checkResumeProposalRequest(api.ResumeProposalRequest o) {
  buildCounterResumeProposalRequest++;
  if (buildCounterResumeProposalRequest < 3) {}
  buildCounterResumeProposalRequest--;
}

core.int buildCounterRowDimensions = 0;
api.RowDimensions buildRowDimensions() {
  final o = api.RowDimensions();
  buildCounterRowDimensions++;
  if (buildCounterRowDimensions < 3) {
    o.publisherIdentifier = 'foo';
    o.timeInterval = buildTimeInterval();
  }
  buildCounterRowDimensions--;
  return o;
}

void checkRowDimensions(api.RowDimensions o) {
  buildCounterRowDimensions++;
  if (buildCounterRowDimensions < 3) {
    unittest.expect(
      o.publisherIdentifier!,
      unittest.equals('foo'),
    );
    checkTimeInterval(o.timeInterval!);
  }
  buildCounterRowDimensions--;
}

core.List<core.String> buildUnnamed7997() => [
      'foo',
      'foo',
    ];

void checkUnnamed7997(core.List<core.String> o) {
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

core.int buildCounterSecurityContext = 0;
api.SecurityContext buildSecurityContext() {
  final o = api.SecurityContext();
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    o.securities = buildUnnamed7997();
  }
  buildCounterSecurityContext--;
  return o;
}

void checkSecurityContext(api.SecurityContext o) {
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    checkUnnamed7997(o.securities!);
  }
  buildCounterSecurityContext--;
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

core.int buildCounterServingContext = 0;
api.ServingContext buildServingContext() {
  final o = api.ServingContext();
  buildCounterServingContext++;
  if (buildCounterServingContext < 3) {
    o.all = 'foo';
    o.appType = buildAppContext();
    o.auctionType = buildAuctionContext();
    o.location = buildLocationContext();
    o.platform = buildPlatformContext();
    o.securityType = buildSecurityContext();
  }
  buildCounterServingContext--;
  return o;
}

void checkServingContext(api.ServingContext o) {
  buildCounterServingContext++;
  if (buildCounterServingContext < 3) {
    unittest.expect(
      o.all!,
      unittest.equals('foo'),
    );
    checkAppContext(o.appType!);
    checkAuctionContext(o.auctionType!);
    checkLocationContext(o.location!);
    checkPlatformContext(o.platform!);
    checkSecurityContext(o.securityType!);
  }
  buildCounterServingContext--;
}

core.List<api.ServingContext> buildUnnamed7998() => [
      buildServingContext(),
      buildServingContext(),
    ];

void checkUnnamed7998(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0]);
  checkServingContext(o[1]);
}

core.List<api.Disapproval> buildUnnamed7999() => [
      buildDisapproval(),
      buildDisapproval(),
    ];

void checkUnnamed7999(core.List<api.Disapproval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisapproval(o[0]);
  checkDisapproval(o[1]);
}

core.int buildCounterServingRestriction = 0;
api.ServingRestriction buildServingRestriction() {
  final o = api.ServingRestriction();
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    o.contexts = buildUnnamed7998();
    o.disapproval = buildDisapproval();
    o.disapprovalReasons = buildUnnamed7999();
    o.status = 'foo';
  }
  buildCounterServingRestriction--;
  return o;
}

void checkServingRestriction(api.ServingRestriction o) {
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    checkUnnamed7998(o.contexts!);
    checkDisapproval(o.disapproval!);
    checkUnnamed7999(o.disapprovalReasons!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterServingRestriction--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  final o = api.Size();
  buildCounterSize++;
  if (buildCounterSize < 3) {
    o.height = 42;
    o.width = 42;
  }
  buildCounterSize--;
  return o;
}

void checkSize(api.Size o) {
  buildCounterSize++;
  if (buildCounterSize < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterSize--;
}

core.int buildCounterStopWatchingCreativeRequest = 0;
api.StopWatchingCreativeRequest buildStopWatchingCreativeRequest() {
  final o = api.StopWatchingCreativeRequest();
  buildCounterStopWatchingCreativeRequest++;
  if (buildCounterStopWatchingCreativeRequest < 3) {}
  buildCounterStopWatchingCreativeRequest--;
  return o;
}

void checkStopWatchingCreativeRequest(api.StopWatchingCreativeRequest o) {
  buildCounterStopWatchingCreativeRequest++;
  if (buildCounterStopWatchingCreativeRequest < 3) {}
  buildCounterStopWatchingCreativeRequest--;
}

core.List<api.TargetingValue> buildUnnamed8000() => [
      buildTargetingValue(),
      buildTargetingValue(),
    ];

void checkUnnamed8000(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.List<api.TargetingValue> buildUnnamed8001() => [
      buildTargetingValue(),
      buildTargetingValue(),
    ];

void checkUnnamed8001(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.int buildCounterTargetingCriteria = 0;
api.TargetingCriteria buildTargetingCriteria() {
  final o = api.TargetingCriteria();
  buildCounterTargetingCriteria++;
  if (buildCounterTargetingCriteria < 3) {
    o.exclusions = buildUnnamed8000();
    o.inclusions = buildUnnamed8001();
    o.key = 'foo';
  }
  buildCounterTargetingCriteria--;
  return o;
}

void checkTargetingCriteria(api.TargetingCriteria o) {
  buildCounterTargetingCriteria++;
  if (buildCounterTargetingCriteria < 3) {
    checkUnnamed8000(o.exclusions!);
    checkUnnamed8001(o.inclusions!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetingCriteria--;
}

core.int buildCounterTargetingValue = 0;
api.TargetingValue buildTargetingValue() {
  final o = api.TargetingValue();
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    o.creativeSizeValue = buildCreativeSize();
    o.dayPartTargetingValue = buildDayPartTargeting();
    o.longValue = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterTargetingValue--;
  return o;
}

void checkTargetingValue(api.TargetingValue o) {
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    checkCreativeSize(o.creativeSizeValue!);
    checkDayPartTargeting(o.dayPartTargetingValue!);
    unittest.expect(
      o.longValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetingValue--;
}

core.int buildCounterTechnologyTargeting = 0;
api.TechnologyTargeting buildTechnologyTargeting() {
  final o = api.TechnologyTargeting();
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    o.deviceCapabilityTargeting = buildCriteriaTargeting();
    o.deviceCategoryTargeting = buildCriteriaTargeting();
    o.operatingSystemTargeting = buildOperatingSystemTargeting();
  }
  buildCounterTechnologyTargeting--;
  return o;
}

void checkTechnologyTargeting(api.TechnologyTargeting o) {
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    checkCriteriaTargeting(o.deviceCapabilityTargeting!);
    checkCriteriaTargeting(o.deviceCategoryTargeting!);
    checkOperatingSystemTargeting(o.operatingSystemTargeting!);
  }
  buildCounterTechnologyTargeting--;
}

core.int buildCounterTimeInterval = 0;
api.TimeInterval buildTimeInterval() {
  final o = api.TimeInterval();
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeInterval--;
  return o;
}

void checkTimeInterval(api.TimeInterval o) {
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeInterval--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.List<core.String> buildUnnamed8002() => [
      'foo',
      'foo',
    ];

void checkUnnamed8002(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8003() => [
      'foo',
      'foo',
    ];

void checkUnnamed8003(core.List<core.String> o) {
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

core.int buildCounterUrlTargeting = 0;
api.UrlTargeting buildUrlTargeting() {
  final o = api.UrlTargeting();
  buildCounterUrlTargeting++;
  if (buildCounterUrlTargeting < 3) {
    o.excludedUrls = buildUnnamed8002();
    o.targetedUrls = buildUnnamed8003();
  }
  buildCounterUrlTargeting--;
  return o;
}

void checkUrlTargeting(api.UrlTargeting o) {
  buildCounterUrlTargeting++;
  if (buildCounterUrlTargeting < 3) {
    checkUnnamed8002(o.excludedUrls!);
    checkUnnamed8003(o.targetedUrls!);
  }
  buildCounterUrlTargeting--;
}

core.int buildCounterVideoContent = 0;
api.VideoContent buildVideoContent() {
  final o = api.VideoContent();
  buildCounterVideoContent++;
  if (buildCounterVideoContent < 3) {
    o.videoUrl = 'foo';
    o.videoVastXml = 'foo';
  }
  buildCounterVideoContent--;
  return o;
}

void checkVideoContent(api.VideoContent o) {
  buildCounterVideoContent++;
  if (buildCounterVideoContent < 3) {
    unittest.expect(
      o.videoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.videoVastXml!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoContent--;
}

core.List<core.String> buildUnnamed8004() => [
      'foo',
      'foo',
    ];

void checkUnnamed8004(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8005() => [
      'foo',
      'foo',
    ];

void checkUnnamed8005(core.List<core.String> o) {
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

core.int buildCounterVideoTargeting = 0;
api.VideoTargeting buildVideoTargeting() {
  final o = api.VideoTargeting();
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    o.excludedPositionTypes = buildUnnamed8004();
    o.targetedPositionTypes = buildUnnamed8005();
  }
  buildCounterVideoTargeting--;
  return o;
}

void checkVideoTargeting(api.VideoTargeting o) {
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    checkUnnamed8004(o.excludedPositionTypes!);
    checkUnnamed8005(o.targetedPositionTypes!);
  }
  buildCounterVideoTargeting--;
}

core.int buildCounterWatchCreativeRequest = 0;
api.WatchCreativeRequest buildWatchCreativeRequest() {
  final o = api.WatchCreativeRequest();
  buildCounterWatchCreativeRequest++;
  if (buildCounterWatchCreativeRequest < 3) {
    o.topic = 'foo';
  }
  buildCounterWatchCreativeRequest--;
  return o;
}

void checkWatchCreativeRequest(api.WatchCreativeRequest o) {
  buildCounterWatchCreativeRequest++;
  if (buildCounterWatchCreativeRequest < 3) {
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterWatchCreativeRequest--;
}

void main() {
  unittest.group('obj-schema-AbsoluteDateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbsoluteDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbsoluteDateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbsoluteDateRange(od);
    });
  });

  unittest.group('obj-schema-AcceptProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceptProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceptProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceptProposalRequest(od);
    });
  });

  unittest.group('obj-schema-AdSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdSize.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdSize(od);
    });
  });

  unittest.group('obj-schema-AdTechnologyProviders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdTechnologyProviders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdTechnologyProviders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdTechnologyProviders(od);
    });
  });

  unittest.group('obj-schema-AddDealAssociationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDealAssociationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDealAssociationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDealAssociationRequest(od);
    });
  });

  unittest.group('obj-schema-AddNoteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddNoteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddNoteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddNoteRequest(od);
    });
  });

  unittest.group('obj-schema-AppContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppContext.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppContext(od);
    });
  });

  unittest.group('obj-schema-AuctionContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuctionContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuctionContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuctionContext(od);
    });
  });

  unittest.group('obj-schema-BidMetricsRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBidMetricsRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BidMetricsRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBidMetricsRow(od);
    });
  });

  unittest.group('obj-schema-BidResponseWithoutBidsStatusRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBidResponseWithoutBidsStatusRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BidResponseWithoutBidsStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBidResponseWithoutBidsStatusRow(od);
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

  unittest.group('obj-schema-CalloutStatusRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCalloutStatusRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CalloutStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCalloutStatusRow(od);
    });
  });

  unittest.group('obj-schema-CancelNegotiationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelNegotiationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelNegotiationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelNegotiationRequest(od);
    });
  });

  unittest.group('obj-schema-Client', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Client.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClient(od);
    });
  });

  unittest.group('obj-schema-ClientUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ClientUser.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClientUser(od);
    });
  });

  unittest.group('obj-schema-ClientUserInvitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientUserInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientUserInvitation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientUserInvitation(od);
    });
  });

  unittest.group('obj-schema-CompleteSetupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteSetupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteSetupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteSetupRequest(od);
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

  unittest.group('obj-schema-Correction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCorrection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Correction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCorrection(od);
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

  unittest.group('obj-schema-CreativeDealAssociation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeDealAssociation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeDealAssociation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeDealAssociation(od);
    });
  });

  unittest.group('obj-schema-CreativeRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeRestrictions(od);
    });
  });

  unittest.group('obj-schema-CreativeSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeSize(od);
    });
  });

  unittest.group('obj-schema-CreativeSpecification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeSpecification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeSpecification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeSpecification(od);
    });
  });

  unittest.group('obj-schema-CreativeStatusRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeStatusRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeStatusRow(od);
    });
  });

  unittest.group('obj-schema-CriteriaTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCriteriaTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CriteriaTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCriteriaTargeting(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DayPart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDayPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DayPart.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDayPart(od);
    });
  });

  unittest.group('obj-schema-DayPartTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDayPartTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DayPartTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDayPartTargeting(od);
    });
  });

  unittest.group('obj-schema-Deal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Deal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeal(od);
    });
  });

  unittest.group('obj-schema-DealPauseStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealPauseStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealPauseStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealPauseStatus(od);
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

  unittest.group('obj-schema-DealTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DealTerms.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDealTerms(od);
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

  unittest.group('obj-schema-Disapproval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisapproval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Disapproval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisapproval(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FilterSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FilterSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilterSet(od);
    });
  });

  unittest.group('obj-schema-FilteredBidCreativeRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilteredBidCreativeRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilteredBidCreativeRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilteredBidCreativeRow(od);
    });
  });

  unittest.group('obj-schema-FilteredBidDetailRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilteredBidDetailRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilteredBidDetailRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilteredBidDetailRow(od);
    });
  });

  unittest.group('obj-schema-FirstPartyMobileApplicationTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirstPartyMobileApplicationTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirstPartyMobileApplicationTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFirstPartyMobileApplicationTargeting(od);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrequencyCap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrequencyCap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFrequencyCap(od);
    });
  });

  unittest.group('obj-schema-GuaranteedFixedPriceTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuaranteedFixedPriceTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuaranteedFixedPriceTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group('obj-schema-HtmlContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHtmlContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HtmlContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHtmlContent(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImpressionMetricsRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpressionMetricsRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImpressionMetricsRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImpressionMetricsRow(od);
    });
  });

  unittest.group('obj-schema-InventorySizeTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySizeTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySizeTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventorySizeTargeting(od);
    });
  });

  unittest.group('obj-schema-ListBidMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBidMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBidMetricsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBidMetricsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBidResponseErrorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBidResponseErrorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBidResponseErrorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBidResponseErrorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBidResponsesWithoutBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBidResponsesWithoutBidsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBidResponsesWithoutBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBidResponsesWithoutBidsResponse(od);
    });
  });

  unittest.group('obj-schema-ListClientUserInvitationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClientUserInvitationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClientUserInvitationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClientUserInvitationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListClientUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClientUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClientUsersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClientUsersResponse(od);
    });
  });

  unittest.group('obj-schema-ListClientsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClientsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClientsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClientsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCreativeStatusBreakdownByCreativeResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCreativeStatusBreakdownByCreativeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCreativeStatusBreakdownByCreativeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCreativeStatusBreakdownByCreativeResponse(od);
    });
  });

  unittest.group('obj-schema-ListCreativeStatusBreakdownByDetailResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCreativeStatusBreakdownByDetailResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCreativeStatusBreakdownByDetailResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCreativeStatusBreakdownByDetailResponse(od);
    });
  });

  unittest.group('obj-schema-ListCreativesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCreativesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCreativesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCreativesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDealAssociationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDealAssociationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDealAssociationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDealAssociationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFilterSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFilterSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFilterSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilterSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFilteredBidRequestsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFilteredBidRequestsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFilteredBidRequestsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilteredBidRequestsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFilteredBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFilteredBidsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFilteredBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilteredBidsResponse(od);
    });
  });

  unittest.group('obj-schema-ListImpressionMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImpressionMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImpressionMetricsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImpressionMetricsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLosingBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLosingBidsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLosingBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLosingBidsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNonBillableWinningBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNonBillableWinningBidsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNonBillableWinningBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNonBillableWinningBidsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProposalsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProposalsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProposalsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProposalsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPublisherProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPublisherProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPublisherProfilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPublisherProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-LocationContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationContext(od);
    });
  });

  unittest.group('obj-schema-MarketplaceTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketplaceTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketplaceTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceTargeting(od);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricValue(od);
    });
  });

  unittest.group('obj-schema-MobileApplicationTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileApplicationTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileApplicationTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileApplicationTargeting(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-NativeContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNativeContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NativeContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNativeContent(od);
    });
  });

  unittest.group('obj-schema-NonBillableWinningBidStatusRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonBillableWinningBidStatusRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonBillableWinningBidStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonBillableWinningBidStatusRow(od);
    });
  });

  unittest.group('obj-schema-NonGuaranteedAuctionTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonGuaranteedAuctionTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonGuaranteedAuctionTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonGuaranteedAuctionTerms(od);
    });
  });

  unittest.group('obj-schema-NonGuaranteedFixedPriceTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonGuaranteedFixedPriceTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonGuaranteedFixedPriceTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystemTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystemTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperatingSystemTargeting(od);
    });
  });

  unittest.group('obj-schema-PauseProposalDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseProposalDealsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseProposalDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseProposalDealsRequest(od);
    });
  });

  unittest.group('obj-schema-PauseProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseProposalRequest(od);
    });
  });

  unittest.group('obj-schema-PlacementTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementTargeting(od);
    });
  });

  unittest.group('obj-schema-PlatformContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlatformContext(od);
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

  unittest.group('obj-schema-PublisherProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherProfile(od);
    });
  });

  unittest.group('obj-schema-PublisherProfileMobileApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisherProfileMobileApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublisherProfileMobileApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherProfileMobileApplication(od);
    });
  });

  unittest.group('obj-schema-RealtimeTimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealtimeTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RealtimeTimeRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealtimeTimeRange(od);
    });
  });

  unittest.group('obj-schema-RelativeDateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelativeDateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelativeDateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelativeDateRange(od);
    });
  });

  unittest.group('obj-schema-RemoveDealAssociationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDealAssociationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDealAssociationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDealAssociationRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeProposalDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeProposalDealsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeProposalDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeProposalDealsRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeProposalRequest(od);
    });
  });

  unittest.group('obj-schema-RowDimensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowDimensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowDimensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRowDimensions(od);
    });
  });

  unittest.group('obj-schema-SecurityContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityContext(od);
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

  unittest.group('obj-schema-ServingContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServingContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServingContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServingContext(od);
    });
  });

  unittest.group('obj-schema-ServingRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServingRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServingRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServingRestriction(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Size.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSize(od);
    });
  });

  unittest.group('obj-schema-StopWatchingCreativeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopWatchingCreativeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopWatchingCreativeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopWatchingCreativeRequest(od);
    });
  });

  unittest.group('obj-schema-TargetingCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingCriteria(od);
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

  unittest.group('obj-schema-TechnologyTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTechnologyTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TechnologyTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTechnologyTargeting(od);
    });
  });

  unittest.group('obj-schema-TimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeInterval(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-UrlTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlTargeting(od);
    });
  });

  unittest.group('obj-schema-VideoContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoContent(od);
    });
  });

  unittest.group('obj-schema-VideoTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoTargeting(od);
    });
  });

  unittest.group('obj-schema-WatchCreativeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWatchCreativeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WatchCreativeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWatchCreativeRequest(od);
    });
  });

  unittest.group('resource-AccountsClientsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      final arg_request = buildClient();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Client.fromJson(json as core.Map<core.String, core.dynamic>);
        checkClient(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/clients'),
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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_clientAccountId,
          $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      final arg_accountId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_partnerClientId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/clients'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['partnerClientId']!.first,
          unittest.equals(arg_partnerClientId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListClientsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          partnerClientId: arg_partnerClientId,
          $fields: arg_$fields);
      checkListClientsResponse(response as api.ListClientsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      final arg_request = buildClient();
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Client.fromJson(json as core.Map<core.String, core.dynamic>);
        checkClient(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_clientAccountId,
          $fields: arg_$fields);
      checkClient(response as api.Client);
    });
  });

  unittest.group('resource-AccountsClientsInvitationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients.invitations;
      final arg_request = buildClientUserInvitation();
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClientUserInvitation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientUserInvitation(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        index = path.indexOf('/invitations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/invitations'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildClientUserInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_accountId, arg_clientAccountId,
          $fields: arg_$fields);
      checkClientUserInvitation(response as api.ClientUserInvitation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients.invitations;
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
      final arg_invitationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        index = path.indexOf('/invitations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/invitations/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_invitationId'),
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
        final resp = convert.json.encode(buildClientUserInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_clientAccountId, arg_invitationId,
          $fields: arg_$fields);
      checkClientUserInvitation(response as api.ClientUserInvitation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients.invitations;
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        index = path.indexOf('/invitations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/invitations'),
        );
        pathOffset += 12;

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
        final resp =
            convert.json.encode(buildListClientUserInvitationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_clientAccountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClientUserInvitationsResponse(
          response as api.ListClientUserInvitationsResponse);
    });
  });

  unittest.group('resource-AccountsClientsUsersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients.users;
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
        final resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_clientAccountId, arg_userId,
          $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients.users;
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
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
        final resp = convert.json.encode(buildListClientUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_clientAccountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClientUsersResponse(response as api.ListClientUsersResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.clients.users;
      final arg_request = buildClientUser();
      final arg_accountId = 'foo';
      final arg_clientAccountId = 'foo';
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClientUser.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientUser(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/clients/', pathOffset);
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
          unittest.equals('/clients/'),
        );
        pathOffset += 9;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
        final resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_clientAccountId, arg_userId,
          $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });
  });

  unittest.group('resource-AccountsCreativesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      final arg_request = buildCreative();
      final arg_accountId = 'foo';
      final arg_duplicateIdMode = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/creatives'),
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
          queryMap['duplicateIdMode']!.first,
          unittest.equals(arg_duplicateIdMode),
        );
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
      final response = await res.create(arg_request, arg_accountId,
          duplicateIdMode: arg_duplicateIdMode, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
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
      final response =
          await res.get(arg_accountId, arg_creativeId, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      final arg_accountId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/creatives'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCreativesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkListCreativesResponse(response as api.ListCreativesResponse);
    });

    unittest.test('method--stopWatching', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      final arg_request = buildStopWatchingCreativeRequest();
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopWatchingCreativeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopWatchingCreativeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        index = path.indexOf(':stopWatching', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals(':stopWatching'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.stopWatching(
          arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      final arg_request = buildCreative();
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
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
      final response = await res.update(
          arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--watch', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      final arg_request = buildWatchCreativeRequest();
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WatchCreativeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWatchCreativeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        index = path.indexOf(':watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':watch'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watch(
          arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-AccountsCreativesDealAssociationsResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).accounts.creatives.dealAssociations;
      final arg_request = buildAddDealAssociationRequest();
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddDealAssociationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDealAssociationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        index = path.indexOf('/dealAssociations:add', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/dealAssociations:add'),
        );
        pathOffset += 21;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.add(arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).accounts.creatives.dealAssociations;
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        index = path.indexOf('/dealAssociations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/dealAssociations'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDealAssociationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_creativeId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkListDealAssociationsResponse(
          response as api.ListDealAssociationsResponse);
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).accounts.creatives.dealAssociations;
      final arg_request = buildRemoveDealAssociationRequest();
      final arg_accountId = 'foo';
      final arg_creativeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveDealAssociationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDealAssociationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/creatives/'),
        );
        pathOffset += 11;
        index = path.indexOf('/dealAssociations:remove', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/dealAssociations:remove'),
        );
        pathOffset += 24;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.remove(
          arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-AccountsFinalizedProposalsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.finalizedProposals;
      final arg_accountId = 'foo';
      final arg_filter = 'foo';
      final arg_filterSyntax = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/finalizedProposals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/finalizedProposals'),
        );
        pathOffset += 19;

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
          queryMap['filterSyntax']!.first,
          unittest.equals(arg_filterSyntax),
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
        final resp = convert.json.encode(buildListProposalsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          filter: arg_filter,
          filterSyntax: arg_filterSyntax,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProposalsResponse(response as api.ListProposalsResponse);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.finalizedProposals;
      final arg_request = buildPauseProposalDealsRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseProposalDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseProposalDealsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/finalizedProposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/finalizedProposals/'),
        );
        pathOffset += 20;
        index = path.indexOf(':pause', pathOffset);
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
          unittest.equals(':pause'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pause(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.finalizedProposals;
      final arg_request = buildResumeProposalDealsRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeProposalDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeProposalDealsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/finalizedProposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/finalizedProposals/'),
        );
        pathOffset += 20;
        index = path.indexOf(':resume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':resume'),
        );
        pathOffset += 7;

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
      final response = await res.resume(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });
  });

  unittest.group('resource-AccountsProductsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.products;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
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
      final response =
          await res.get(arg_accountId, arg_productId, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.products;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/products', pathOffset);
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
          unittest.equals('/products'),
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
        final resp = convert.json.encode(buildListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProductsResponse(response as api.ListProductsResponse);
    });
  });

  unittest.group('resource-AccountsProposalsResource', () {
    unittest.test('method--accept', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildAcceptProposalRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AcceptProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAcceptProposalRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
        index = path.indexOf(':accept', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':accept'),
        );
        pathOffset += 7;

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
      final response = await res.accept(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--addNote', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildAddNoteRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddNoteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddNoteRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
        index = path.indexOf(':addNote', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals(':addNote'),
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
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addNote(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--cancelNegotiation', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildCancelNegotiationRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelNegotiationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelNegotiationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
        index = path.indexOf(':cancelNegotiation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals(':cancelNegotiation'),
        );
        pathOffset += 18;

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
      final response = await res.cancelNegotiation(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--completeSetup', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildCompleteSetupRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteSetupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteSetupRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
        index = path.indexOf(':completeSetup', pathOffset);
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
          unittest.equals(':completeSetup'),
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.completeSetup(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildProposal();
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/proposals'),
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
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
      final response =
          await res.get(arg_accountId, arg_proposalId, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_accountId = 'foo';
      final arg_filter = 'foo';
      final arg_filterSyntax = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/proposals'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['filterSyntax']!.first,
          unittest.equals(arg_filterSyntax),
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
        final resp = convert.json.encode(buildListProposalsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          filter: arg_filter,
          filterSyntax: arg_filterSyntax,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProposalsResponse(response as api.ListProposalsResponse);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildPauseProposalRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseProposalRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
        index = path.indexOf(':pause', pathOffset);
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
          unittest.equals(':pause'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pause(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildResumeProposalRequest();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeProposalRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
        index = path.indexOf(':resume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':resume'),
        );
        pathOffset += 7;

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
      final response = await res.resume(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      final arg_request = buildProposal();
      final arg_accountId = 'foo';
      final arg_proposalId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/proposals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/proposals/'),
        );
        pathOffset += 11;
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
      final response = await res.update(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });
  });

  unittest.group('resource-AccountsPublisherProfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.publisherProfiles;
      final arg_accountId = 'foo';
      final arg_publisherProfileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/publisherProfiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/publisherProfiles/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_publisherProfileId'),
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
        final resp = convert.json.encode(buildPublisherProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_publisherProfileId,
          $fields: arg_$fields);
      checkPublisherProfile(response as api.PublisherProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).accounts.publisherProfiles;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2beta1/accounts/'),
        );
        pathOffset += 17;
        index = path.indexOf('/publisherProfiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/publisherProfiles'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildListPublisherProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPublisherProfilesResponse(
          response as api.ListPublisherProfilesResponse);
    });
  });

  unittest.group('resource-BiddersAccountsFilterSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
      final arg_request = buildFilterSet();
      final arg_ownerName = 'foo';
      final arg_isTransient = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.FilterSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilterSet(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
          queryMap['isTransient']!.first,
          unittest.equals('$arg_isTransient'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_ownerName,
          isTransient: arg_isTransient, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
      final arg_ownerName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListFilterSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_ownerName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilterSetsResponse(response as api.ListFilterSetsResponse);
    });
  });

  unittest.group('resource-BiddersAccountsFilterSetsBidMetricsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets.bidMetrics;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListBidMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBidMetricsResponse(response as api.ListBidMetricsResponse);
    });
  });

  unittest.group('resource-BiddersAccountsFilterSetsBidResponseErrorsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .bidResponseErrors;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListBidResponseErrorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBidResponseErrorsResponse(
          response as api.ListBidResponseErrorsResponse);
    });
  });

  unittest.group(
      'resource-BiddersAccountsFilterSetsBidResponsesWithoutBidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .bidResponsesWithoutBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildListBidResponsesWithoutBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBidResponsesWithoutBidsResponse(
          response as api.ListBidResponsesWithoutBidsResponse);
    });
  });

  unittest.group(
      'resource-BiddersAccountsFilterSetsFilteredBidRequestsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBidRequests;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildListFilteredBidRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilteredBidRequestsResponse(
          response as api.ListFilteredBidRequestsResponse);
    });
  });

  unittest.group('resource-BiddersAccountsFilterSetsFilteredBidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListFilteredBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilteredBidsResponse(response as api.ListFilteredBidsResponse);
    });
  });

  unittest.group(
      'resource-BiddersAccountsFilterSetsFilteredBidsCreativesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBids
          .creatives;
      final arg_filterSetName = 'foo';
      final arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildListCreativeStatusBreakdownByCreativeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName, arg_creativeStatusId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCreativeStatusBreakdownByCreativeResponse(
          response as api.ListCreativeStatusBreakdownByCreativeResponse);
    });
  });

  unittest.group(
      'resource-BiddersAccountsFilterSetsFilteredBidsDetailsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBids
          .details;
      final arg_filterSetName = 'foo';
      final arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildListCreativeStatusBreakdownByDetailResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName, arg_creativeStatusId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCreativeStatusBreakdownByDetailResponse(
          response as api.ListCreativeStatusBreakdownByDetailResponse);
    });
  });

  unittest.group('resource-BiddersAccountsFilterSetsImpressionMetricsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .impressionMetrics;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListImpressionMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImpressionMetricsResponse(
          response as api.ListImpressionMetricsResponse);
    });
  });

  unittest.group('resource-BiddersAccountsFilterSetsLosingBidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets.losingBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListLosingBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLosingBidsResponse(response as api.ListLosingBidsResponse);
    });
  });

  unittest.group(
      'resource-BiddersAccountsFilterSetsNonBillableWinningBidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .nonBillableWinningBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildListNonBillableWinningBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNonBillableWinningBidsResponse(
          response as api.ListNonBillableWinningBidsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
      final arg_request = buildFilterSet();
      final arg_ownerName = 'foo';
      final arg_isTransient = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.FilterSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilterSet(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
          queryMap['isTransient']!.first,
          unittest.equals('$arg_isTransient'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_ownerName,
          isTransient: arg_isTransient, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
      final arg_ownerName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListFilterSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_ownerName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilterSetsResponse(response as api.ListFilterSetsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsBidMetricsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets.bidMetrics;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListBidMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBidMetricsResponse(response as api.ListBidMetricsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsBidResponseErrorsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.bidResponseErrors;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListBidResponseErrorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBidResponseErrorsResponse(
          response as api.ListBidResponseErrorsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsBidResponsesWithoutBidsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .bidResponsesWithoutBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildListBidResponsesWithoutBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListBidResponsesWithoutBidsResponse(
          response as api.ListBidResponsesWithoutBidsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsFilteredBidRequestsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.filteredBidRequests;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildListFilteredBidRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilteredBidRequestsResponse(
          response as api.ListFilteredBidRequestsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsFilteredBidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.filteredBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListFilteredBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilteredBidsResponse(response as api.ListFilteredBidsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsFilteredBidsCreativesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .filteredBids
          .creatives;
      final arg_filterSetName = 'foo';
      final arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildListCreativeStatusBreakdownByCreativeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName, arg_creativeStatusId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCreativeStatusBreakdownByCreativeResponse(
          response as api.ListCreativeStatusBreakdownByCreativeResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsFilteredBidsDetailsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .filteredBids
          .details;
      final arg_filterSetName = 'foo';
      final arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json
            .encode(buildListCreativeStatusBreakdownByDetailResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName, arg_creativeStatusId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCreativeStatusBreakdownByDetailResponse(
          response as api.ListCreativeStatusBreakdownByDetailResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsImpressionMetricsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.impressionMetrics;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListImpressionMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImpressionMetricsResponse(
          response as api.ListImpressionMetricsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsLosingBidsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets.losingBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListLosingBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLosingBidsResponse(response as api.ListLosingBidsResponse);
    });
  });

  unittest.group('resource-BiddersFilterSetsNonBillableWinningBidsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .nonBillableWinningBids;
      final arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v2beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildListNonBillableWinningBidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filterSetName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNonBillableWinningBidsResponse(
          response as api.ListNonBillableWinningBidsResponse);
    });
  });
}
