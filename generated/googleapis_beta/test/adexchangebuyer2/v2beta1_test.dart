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

import 'package:googleapis_beta/adexchangebuyer2/v2beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbsoluteDateRange = 0;
api.AbsoluteDateRange buildAbsoluteDateRange() {
  var o = api.AbsoluteDateRange();
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
    checkDate(o.endDate! as api.Date);
    checkDate(o.startDate! as api.Date);
  }
  buildCounterAbsoluteDateRange--;
}

core.int buildCounterAcceptProposalRequest = 0;
api.AcceptProposalRequest buildAcceptProposalRequest() {
  var o = api.AcceptProposalRequest();
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
  var o = api.AdSize();
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

core.List<core.String> buildUnnamed7766() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7766(core.List<core.String> o) {
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
  var o = api.AdTechnologyProviders();
  buildCounterAdTechnologyProviders++;
  if (buildCounterAdTechnologyProviders < 3) {
    o.detectedProviderIds = buildUnnamed7766();
    o.hasUnidentifiedProvider = true;
  }
  buildCounterAdTechnologyProviders--;
  return o;
}

void checkAdTechnologyProviders(api.AdTechnologyProviders o) {
  buildCounterAdTechnologyProviders++;
  if (buildCounterAdTechnologyProviders < 3) {
    checkUnnamed7766(o.detectedProviderIds!);
    unittest.expect(o.hasUnidentifiedProvider!, unittest.isTrue);
  }
  buildCounterAdTechnologyProviders--;
}

core.int buildCounterAddDealAssociationRequest = 0;
api.AddDealAssociationRequest buildAddDealAssociationRequest() {
  var o = api.AddDealAssociationRequest();
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
    checkCreativeDealAssociation(o.association! as api.CreativeDealAssociation);
  }
  buildCounterAddDealAssociationRequest--;
}

core.int buildCounterAddNoteRequest = 0;
api.AddNoteRequest buildAddNoteRequest() {
  var o = api.AddNoteRequest();
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
    checkNote(o.note! as api.Note);
  }
  buildCounterAddNoteRequest--;
}

core.List<core.String> buildUnnamed7767() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7767(core.List<core.String> o) {
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
  var o = api.AppContext();
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    o.appTypes = buildUnnamed7767();
  }
  buildCounterAppContext--;
  return o;
}

void checkAppContext(api.AppContext o) {
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    checkUnnamed7767(o.appTypes!);
  }
  buildCounterAppContext--;
}

core.List<core.String> buildUnnamed7768() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7768(core.List<core.String> o) {
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
  var o = api.AuctionContext();
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    o.auctionTypes = buildUnnamed7768();
  }
  buildCounterAuctionContext--;
  return o;
}

void checkAuctionContext(api.AuctionContext o) {
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    checkUnnamed7768(o.auctionTypes!);
  }
  buildCounterAuctionContext--;
}

core.int buildCounterBidMetricsRow = 0;
api.BidMetricsRow buildBidMetricsRow() {
  var o = api.BidMetricsRow();
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
    checkMetricValue(o.bids! as api.MetricValue);
    checkMetricValue(o.bidsInAuction! as api.MetricValue);
    checkMetricValue(o.billedImpressions! as api.MetricValue);
    checkMetricValue(o.impressionsWon! as api.MetricValue);
    checkMetricValue(o.measurableImpressions! as api.MetricValue);
    checkMetricValue(o.reachedQueries! as api.MetricValue);
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
    checkMetricValue(o.viewableImpressions! as api.MetricValue);
  }
  buildCounterBidMetricsRow--;
}

core.int buildCounterBidResponseWithoutBidsStatusRow = 0;
api.BidResponseWithoutBidsStatusRow buildBidResponseWithoutBidsStatusRow() {
  var o = api.BidResponseWithoutBidsStatusRow();
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
    checkMetricValue(o.impressionCount! as api.MetricValue);
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterBidResponseWithoutBidsStatusRow--;
}

core.int buildCounterBuyer = 0;
api.Buyer buildBuyer() {
  var o = api.Buyer();
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
  var o = api.CalloutStatusRow();
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
    checkMetricValue(o.impressionCount! as api.MetricValue);
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
  }
  buildCounterCalloutStatusRow--;
}

core.int buildCounterCancelNegotiationRequest = 0;
api.CancelNegotiationRequest buildCancelNegotiationRequest() {
  var o = api.CancelNegotiationRequest();
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
  var o = api.Client();
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
  var o = api.ClientUser();
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
  var o = api.ClientUserInvitation();
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
  var o = api.CompleteSetupRequest();
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
  var o = api.ContactInformation();
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

core.List<api.ServingContext> buildUnnamed7769() {
  var o = <api.ServingContext>[];
  o.add(buildServingContext());
  o.add(buildServingContext());
  return o;
}

void checkUnnamed7769(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0] as api.ServingContext);
  checkServingContext(o[1] as api.ServingContext);
}

core.List<core.String> buildUnnamed7770() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7770(core.List<core.String> o) {
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
  var o = api.Correction();
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    o.contexts = buildUnnamed7769();
    o.details = buildUnnamed7770();
    o.type = 'foo';
  }
  buildCounterCorrection--;
  return o;
}

void checkCorrection(api.Correction o) {
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    checkUnnamed7769(o.contexts!);
    checkUnnamed7770(o.details!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCorrection--;
}

core.List<core.String> buildUnnamed7771() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7771(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7772() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7772(core.List<core.String> o) {
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

core.List<api.Correction> buildUnnamed7773() {
  var o = <api.Correction>[];
  o.add(buildCorrection());
  o.add(buildCorrection());
  return o;
}

void checkUnnamed7773(core.List<api.Correction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCorrection(o[0] as api.Correction);
  checkCorrection(o[1] as api.Correction);
}

core.List<core.String> buildUnnamed7774() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7774(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7775() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7775(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7776() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7776(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7777() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7777(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed7778() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7778(core.List<core.int> o) {
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

core.List<core.int> buildUnnamed7779() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7779(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed7780() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7780(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7781() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7781(core.List<core.String> o) {
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

core.List<api.ServingRestriction> buildUnnamed7782() {
  var o = <api.ServingRestriction>[];
  o.add(buildServingRestriction());
  o.add(buildServingRestriction());
  return o;
}

void checkUnnamed7782(core.List<api.ServingRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingRestriction(o[0] as api.ServingRestriction);
  checkServingRestriction(o[1] as api.ServingRestriction);
}

core.List<core.int> buildUnnamed7783() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7783(core.List<core.int> o) {
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
  var o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.accountId = 'foo';
    o.adChoicesDestinationUrl = 'foo';
    o.adTechnologyProviders = buildAdTechnologyProviders();
    o.advertiserName = 'foo';
    o.agencyId = 'foo';
    o.apiUpdateTime = 'foo';
    o.attributes = buildUnnamed7771();
    o.clickThroughUrls = buildUnnamed7772();
    o.corrections = buildUnnamed7773();
    o.creativeId = 'foo';
    o.dealsStatus = 'foo';
    o.declaredClickThroughUrls = buildUnnamed7774();
    o.detectedAdvertiserIds = buildUnnamed7775();
    o.detectedDomains = buildUnnamed7776();
    o.detectedLanguages = buildUnnamed7777();
    o.detectedProductCategories = buildUnnamed7778();
    o.detectedSensitiveCategories = buildUnnamed7779();
    o.html = buildHtmlContent();
    o.impressionTrackingUrls = buildUnnamed7780();
    o.native = buildNativeContent();
    o.openAuctionStatus = 'foo';
    o.restrictedCategories = buildUnnamed7781();
    o.servingRestrictions = buildUnnamed7782();
    o.vendorIds = buildUnnamed7783();
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
    checkAdTechnologyProviders(
        o.adTechnologyProviders! as api.AdTechnologyProviders);
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
    checkUnnamed7771(o.attributes!);
    checkUnnamed7772(o.clickThroughUrls!);
    checkUnnamed7773(o.corrections!);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealsStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed7774(o.declaredClickThroughUrls!);
    checkUnnamed7775(o.detectedAdvertiserIds!);
    checkUnnamed7776(o.detectedDomains!);
    checkUnnamed7777(o.detectedLanguages!);
    checkUnnamed7778(o.detectedProductCategories!);
    checkUnnamed7779(o.detectedSensitiveCategories!);
    checkHtmlContent(o.html! as api.HtmlContent);
    checkUnnamed7780(o.impressionTrackingUrls!);
    checkNativeContent(o.native! as api.NativeContent);
    unittest.expect(
      o.openAuctionStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed7781(o.restrictedCategories!);
    checkUnnamed7782(o.servingRestrictions!);
    checkUnnamed7783(o.vendorIds!);
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
    checkVideoContent(o.video! as api.VideoContent);
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeDealAssociation = 0;
api.CreativeDealAssociation buildCreativeDealAssociation() {
  var o = api.CreativeDealAssociation();
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

core.List<api.CreativeSpecification> buildUnnamed7784() {
  var o = <api.CreativeSpecification>[];
  o.add(buildCreativeSpecification());
  o.add(buildCreativeSpecification());
  return o;
}

void checkUnnamed7784(core.List<api.CreativeSpecification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeSpecification(o[0] as api.CreativeSpecification);
  checkCreativeSpecification(o[1] as api.CreativeSpecification);
}

core.int buildCounterCreativeRestrictions = 0;
api.CreativeRestrictions buildCreativeRestrictions() {
  var o = api.CreativeRestrictions();
  buildCounterCreativeRestrictions++;
  if (buildCounterCreativeRestrictions < 3) {
    o.creativeFormat = 'foo';
    o.creativeSpecifications = buildUnnamed7784();
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
    checkUnnamed7784(o.creativeSpecifications!);
    unittest.expect(
      o.skippableAdType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeRestrictions--;
}

core.List<core.String> buildUnnamed7785() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7785(core.List<core.String> o) {
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

core.List<api.Size> buildUnnamed7786() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed7786(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0] as api.Size);
  checkSize(o[1] as api.Size);
}

core.int buildCounterCreativeSize = 0;
api.CreativeSize buildCreativeSize() {
  var o = api.CreativeSize();
  buildCounterCreativeSize++;
  if (buildCounterCreativeSize < 3) {
    o.allowedFormats = buildUnnamed7785();
    o.companionSizes = buildUnnamed7786();
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
    checkUnnamed7785(o.allowedFormats!);
    checkUnnamed7786(o.companionSizes!);
    unittest.expect(
      o.creativeSizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nativeTemplate!,
      unittest.equals('foo'),
    );
    checkSize(o.size! as api.Size);
    unittest.expect(
      o.skippableAdType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeSize--;
}

core.List<api.AdSize> buildUnnamed7787() {
  var o = <api.AdSize>[];
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

void checkUnnamed7787(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0] as api.AdSize);
  checkAdSize(o[1] as api.AdSize);
}

core.int buildCounterCreativeSpecification = 0;
api.CreativeSpecification buildCreativeSpecification() {
  var o = api.CreativeSpecification();
  buildCounterCreativeSpecification++;
  if (buildCounterCreativeSpecification < 3) {
    o.creativeCompanionSizes = buildUnnamed7787();
    o.creativeSize = buildAdSize();
  }
  buildCounterCreativeSpecification--;
  return o;
}

void checkCreativeSpecification(api.CreativeSpecification o) {
  buildCounterCreativeSpecification++;
  if (buildCounterCreativeSpecification < 3) {
    checkUnnamed7787(o.creativeCompanionSizes!);
    checkAdSize(o.creativeSize! as api.AdSize);
  }
  buildCounterCreativeSpecification--;
}

core.int buildCounterCreativeStatusRow = 0;
api.CreativeStatusRow buildCreativeStatusRow() {
  var o = api.CreativeStatusRow();
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
    checkMetricValue(o.bidCount! as api.MetricValue);
    unittest.expect(
      o.creativeStatusId!,
      unittest.equals(42),
    );
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
  }
  buildCounterCreativeStatusRow--;
}

core.List<core.String> buildUnnamed7788() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7788(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7789() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7789(core.List<core.String> o) {
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
  var o = api.CriteriaTargeting();
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    o.excludedCriteriaIds = buildUnnamed7788();
    o.targetedCriteriaIds = buildUnnamed7789();
  }
  buildCounterCriteriaTargeting--;
  return o;
}

void checkCriteriaTargeting(api.CriteriaTargeting o) {
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    checkUnnamed7788(o.excludedCriteriaIds!);
    checkUnnamed7789(o.targetedCriteriaIds!);
  }
  buildCounterCriteriaTargeting--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
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
  var o = api.DayPart();
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
    checkTimeOfDay(o.endTime! as api.TimeOfDay);
    checkTimeOfDay(o.startTime! as api.TimeOfDay);
  }
  buildCounterDayPart--;
}

core.List<api.DayPart> buildUnnamed7790() {
  var o = <api.DayPart>[];
  o.add(buildDayPart());
  o.add(buildDayPart());
  return o;
}

void checkUnnamed7790(core.List<api.DayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDayPart(o[0] as api.DayPart);
  checkDayPart(o[1] as api.DayPart);
}

core.int buildCounterDayPartTargeting = 0;
api.DayPartTargeting buildDayPartTargeting() {
  var o = api.DayPartTargeting();
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    o.dayParts = buildUnnamed7790();
    o.timeZoneType = 'foo';
  }
  buildCounterDayPartTargeting--;
  return o;
}

void checkDayPartTargeting(api.DayPartTargeting o) {
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    checkUnnamed7790(o.dayParts!);
    unittest.expect(
      o.timeZoneType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDayPartTargeting--;
}

core.List<api.ContactInformation> buildUnnamed7791() {
  var o = <api.ContactInformation>[];
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

void checkUnnamed7791(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0] as api.ContactInformation);
  checkContactInformation(o[1] as api.ContactInformation);
}

core.List<api.TargetingCriteria> buildUnnamed7792() {
  var o = <api.TargetingCriteria>[];
  o.add(buildTargetingCriteria());
  o.add(buildTargetingCriteria());
  return o;
}

void checkUnnamed7792(core.List<api.TargetingCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingCriteria(o[0] as api.TargetingCriteria);
  checkTargetingCriteria(o[1] as api.TargetingCriteria);
}

core.int buildCounterDeal = 0;
api.Deal buildDeal() {
  var o = api.Deal();
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
    o.sellerContacts = buildUnnamed7791();
    o.syndicationProduct = 'foo';
    o.targeting = buildMarketplaceTargeting();
    o.targetingCriterion = buildUnnamed7792();
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
    checkPrivateData(o.buyerPrivateData! as api.PrivateData);
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
    checkCreativeRestrictions(
        o.creativeRestrictions! as api.CreativeRestrictions);
    unittest.expect(
      o.creativeSafeFrameCompatibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealId!,
      unittest.equals('foo'),
    );
    checkDealServingMetadata(o.dealServingMetadata! as api.DealServingMetadata);
    checkDealTerms(o.dealTerms! as api.DealTerms);
    checkDeliveryControl(o.deliveryControl! as api.DeliveryControl);
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
    checkUnnamed7791(o.sellerContacts!);
    unittest.expect(
      o.syndicationProduct!,
      unittest.equals('foo'),
    );
    checkMarketplaceTargeting(o.targeting! as api.MarketplaceTargeting);
    checkUnnamed7792(o.targetingCriterion!);
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
  var o = api.DealPauseStatus();
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
  var o = api.DealServingMetadata();
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
    checkDealPauseStatus(o.dealPauseStatus! as api.DealPauseStatus);
  }
  buildCounterDealServingMetadata--;
}

core.int buildCounterDealTerms = 0;
api.DealTerms buildDealTerms() {
  var o = api.DealTerms();
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
    checkPrice(o.estimatedGrossSpend! as api.Price);
    unittest.expect(
      o.estimatedImpressionsPerDay!,
      unittest.equals('foo'),
    );
    checkGuaranteedFixedPriceTerms(
        o.guaranteedFixedPriceTerms! as api.GuaranteedFixedPriceTerms);
    checkNonGuaranteedAuctionTerms(
        o.nonGuaranteedAuctionTerms! as api.NonGuaranteedAuctionTerms);
    checkNonGuaranteedFixedPriceTerms(
        o.nonGuaranteedFixedPriceTerms! as api.NonGuaranteedFixedPriceTerms);
    unittest.expect(
      o.sellerTimeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterDealTerms--;
}

core.List<api.FrequencyCap> buildUnnamed7793() {
  var o = <api.FrequencyCap>[];
  o.add(buildFrequencyCap());
  o.add(buildFrequencyCap());
  return o;
}

void checkUnnamed7793(core.List<api.FrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrequencyCap(o[0] as api.FrequencyCap);
  checkFrequencyCap(o[1] as api.FrequencyCap);
}

core.int buildCounterDeliveryControl = 0;
api.DeliveryControl buildDeliveryControl() {
  var o = api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.creativeBlockingLevel = 'foo';
    o.deliveryRateType = 'foo';
    o.frequencyCaps = buildUnnamed7793();
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
    checkUnnamed7793(o.frequencyCaps!);
  }
  buildCounterDeliveryControl--;
}

core.List<core.String> buildUnnamed7794() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7794(core.List<core.String> o) {
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
  var o = api.Disapproval();
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    o.details = buildUnnamed7794();
    o.reason = 'foo';
  }
  buildCounterDisapproval--;
  return o;
}

void checkDisapproval(api.Disapproval o) {
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    checkUnnamed7794(o.details!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisapproval--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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

core.List<core.String> buildUnnamed7795() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7795(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7796() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7796(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7797() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7797(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7798() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7798(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed7799() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7799(core.List<core.int> o) {
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
  var o = api.FilterSet();
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    o.absoluteDateRange = buildAbsoluteDateRange();
    o.breakdownDimensions = buildUnnamed7795();
    o.creativeId = 'foo';
    o.dealId = 'foo';
    o.environment = 'foo';
    o.format = 'foo';
    o.formats = buildUnnamed7796();
    o.name = 'foo';
    o.platforms = buildUnnamed7797();
    o.publisherIdentifiers = buildUnnamed7798();
    o.realtimeTimeRange = buildRealtimeTimeRange();
    o.relativeDateRange = buildRelativeDateRange();
    o.sellerNetworkIds = buildUnnamed7799();
    o.timeSeriesGranularity = 'foo';
  }
  buildCounterFilterSet--;
  return o;
}

void checkFilterSet(api.FilterSet o) {
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    checkAbsoluteDateRange(o.absoluteDateRange! as api.AbsoluteDateRange);
    checkUnnamed7795(o.breakdownDimensions!);
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
    checkUnnamed7796(o.formats!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7797(o.platforms!);
    checkUnnamed7798(o.publisherIdentifiers!);
    checkRealtimeTimeRange(o.realtimeTimeRange! as api.RealtimeTimeRange);
    checkRelativeDateRange(o.relativeDateRange! as api.RelativeDateRange);
    checkUnnamed7799(o.sellerNetworkIds!);
    unittest.expect(
      o.timeSeriesGranularity!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterSet--;
}

core.int buildCounterFilteredBidCreativeRow = 0;
api.FilteredBidCreativeRow buildFilteredBidCreativeRow() {
  var o = api.FilteredBidCreativeRow();
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
    checkMetricValue(o.bidCount! as api.MetricValue);
    unittest.expect(
      o.creativeId!,
      unittest.equals('foo'),
    );
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
  }
  buildCounterFilteredBidCreativeRow--;
}

core.int buildCounterFilteredBidDetailRow = 0;
api.FilteredBidDetailRow buildFilteredBidDetailRow() {
  var o = api.FilteredBidDetailRow();
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
    checkMetricValue(o.bidCount! as api.MetricValue);
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detailId!,
      unittest.equals(42),
    );
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
  }
  buildCounterFilteredBidDetailRow--;
}

core.List<core.String> buildUnnamed7800() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7800(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7801() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7801(core.List<core.String> o) {
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
  var o = api.FirstPartyMobileApplicationTargeting();
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    o.excludedAppIds = buildUnnamed7800();
    o.targetedAppIds = buildUnnamed7801();
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
  return o;
}

void checkFirstPartyMobileApplicationTargeting(
    api.FirstPartyMobileApplicationTargeting o) {
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    checkUnnamed7800(o.excludedAppIds!);
    checkUnnamed7801(o.targetedAppIds!);
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  var o = api.FrequencyCap();
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

core.List<api.PricePerBuyer> buildUnnamed7802() {
  var o = <api.PricePerBuyer>[];
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

void checkUnnamed7802(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0] as api.PricePerBuyer);
  checkPricePerBuyer(o[1] as api.PricePerBuyer);
}

core.int buildCounterGuaranteedFixedPriceTerms = 0;
api.GuaranteedFixedPriceTerms buildGuaranteedFixedPriceTerms() {
  var o = api.GuaranteedFixedPriceTerms();
  buildCounterGuaranteedFixedPriceTerms++;
  if (buildCounterGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed7802();
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
    checkUnnamed7802(o.fixedPrices!);
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
  var o = api.HtmlContent();
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
  var o = api.Image();
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
  var o = api.ImpressionMetricsRow();
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
    checkMetricValue(o.availableImpressions! as api.MetricValue);
    checkMetricValue(o.bidRequests! as api.MetricValue);
    checkMetricValue(o.inventoryMatches! as api.MetricValue);
    checkMetricValue(o.responsesWithBids! as api.MetricValue);
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
    checkMetricValue(o.successfulResponses! as api.MetricValue);
  }
  buildCounterImpressionMetricsRow--;
}

core.List<api.AdSize> buildUnnamed7803() {
  var o = <api.AdSize>[];
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

void checkUnnamed7803(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0] as api.AdSize);
  checkAdSize(o[1] as api.AdSize);
}

core.List<api.AdSize> buildUnnamed7804() {
  var o = <api.AdSize>[];
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

void checkUnnamed7804(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0] as api.AdSize);
  checkAdSize(o[1] as api.AdSize);
}

core.int buildCounterInventorySizeTargeting = 0;
api.InventorySizeTargeting buildInventorySizeTargeting() {
  var o = api.InventorySizeTargeting();
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    o.excludedInventorySizes = buildUnnamed7803();
    o.targetedInventorySizes = buildUnnamed7804();
  }
  buildCounterInventorySizeTargeting--;
  return o;
}

void checkInventorySizeTargeting(api.InventorySizeTargeting o) {
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    checkUnnamed7803(o.excludedInventorySizes!);
    checkUnnamed7804(o.targetedInventorySizes!);
  }
  buildCounterInventorySizeTargeting--;
}

core.List<api.BidMetricsRow> buildUnnamed7805() {
  var o = <api.BidMetricsRow>[];
  o.add(buildBidMetricsRow());
  o.add(buildBidMetricsRow());
  return o;
}

void checkUnnamed7805(core.List<api.BidMetricsRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBidMetricsRow(o[0] as api.BidMetricsRow);
  checkBidMetricsRow(o[1] as api.BidMetricsRow);
}

core.int buildCounterListBidMetricsResponse = 0;
api.ListBidMetricsResponse buildListBidMetricsResponse() {
  var o = api.ListBidMetricsResponse();
  buildCounterListBidMetricsResponse++;
  if (buildCounterListBidMetricsResponse < 3) {
    o.bidMetricsRows = buildUnnamed7805();
    o.nextPageToken = 'foo';
  }
  buildCounterListBidMetricsResponse--;
  return o;
}

void checkListBidMetricsResponse(api.ListBidMetricsResponse o) {
  buildCounterListBidMetricsResponse++;
  if (buildCounterListBidMetricsResponse < 3) {
    checkUnnamed7805(o.bidMetricsRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBidMetricsResponse--;
}

core.List<api.CalloutStatusRow> buildUnnamed7806() {
  var o = <api.CalloutStatusRow>[];
  o.add(buildCalloutStatusRow());
  o.add(buildCalloutStatusRow());
  return o;
}

void checkUnnamed7806(core.List<api.CalloutStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusRow(o[0] as api.CalloutStatusRow);
  checkCalloutStatusRow(o[1] as api.CalloutStatusRow);
}

core.int buildCounterListBidResponseErrorsResponse = 0;
api.ListBidResponseErrorsResponse buildListBidResponseErrorsResponse() {
  var o = api.ListBidResponseErrorsResponse();
  buildCounterListBidResponseErrorsResponse++;
  if (buildCounterListBidResponseErrorsResponse < 3) {
    o.calloutStatusRows = buildUnnamed7806();
    o.nextPageToken = 'foo';
  }
  buildCounterListBidResponseErrorsResponse--;
  return o;
}

void checkListBidResponseErrorsResponse(api.ListBidResponseErrorsResponse o) {
  buildCounterListBidResponseErrorsResponse++;
  if (buildCounterListBidResponseErrorsResponse < 3) {
    checkUnnamed7806(o.calloutStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBidResponseErrorsResponse--;
}

core.List<api.BidResponseWithoutBidsStatusRow> buildUnnamed7807() {
  var o = <api.BidResponseWithoutBidsStatusRow>[];
  o.add(buildBidResponseWithoutBidsStatusRow());
  o.add(buildBidResponseWithoutBidsStatusRow());
  return o;
}

void checkUnnamed7807(core.List<api.BidResponseWithoutBidsStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBidResponseWithoutBidsStatusRow(
      o[0] as api.BidResponseWithoutBidsStatusRow);
  checkBidResponseWithoutBidsStatusRow(
      o[1] as api.BidResponseWithoutBidsStatusRow);
}

core.int buildCounterListBidResponsesWithoutBidsResponse = 0;
api.ListBidResponsesWithoutBidsResponse
    buildListBidResponsesWithoutBidsResponse() {
  var o = api.ListBidResponsesWithoutBidsResponse();
  buildCounterListBidResponsesWithoutBidsResponse++;
  if (buildCounterListBidResponsesWithoutBidsResponse < 3) {
    o.bidResponseWithoutBidsStatusRows = buildUnnamed7807();
    o.nextPageToken = 'foo';
  }
  buildCounterListBidResponsesWithoutBidsResponse--;
  return o;
}

void checkListBidResponsesWithoutBidsResponse(
    api.ListBidResponsesWithoutBidsResponse o) {
  buildCounterListBidResponsesWithoutBidsResponse++;
  if (buildCounterListBidResponsesWithoutBidsResponse < 3) {
    checkUnnamed7807(o.bidResponseWithoutBidsStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBidResponsesWithoutBidsResponse--;
}

core.List<api.ClientUserInvitation> buildUnnamed7808() {
  var o = <api.ClientUserInvitation>[];
  o.add(buildClientUserInvitation());
  o.add(buildClientUserInvitation());
  return o;
}

void checkUnnamed7808(core.List<api.ClientUserInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUserInvitation(o[0] as api.ClientUserInvitation);
  checkClientUserInvitation(o[1] as api.ClientUserInvitation);
}

core.int buildCounterListClientUserInvitationsResponse = 0;
api.ListClientUserInvitationsResponse buildListClientUserInvitationsResponse() {
  var o = api.ListClientUserInvitationsResponse();
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    o.invitations = buildUnnamed7808();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientUserInvitationsResponse--;
  return o;
}

void checkListClientUserInvitationsResponse(
    api.ListClientUserInvitationsResponse o) {
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    checkUnnamed7808(o.invitations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClientUserInvitationsResponse--;
}

core.List<api.ClientUser> buildUnnamed7809() {
  var o = <api.ClientUser>[];
  o.add(buildClientUser());
  o.add(buildClientUser());
  return o;
}

void checkUnnamed7809(core.List<api.ClientUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUser(o[0] as api.ClientUser);
  checkClientUser(o[1] as api.ClientUser);
}

core.int buildCounterListClientUsersResponse = 0;
api.ListClientUsersResponse buildListClientUsersResponse() {
  var o = api.ListClientUsersResponse();
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.users = buildUnnamed7809();
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
    checkUnnamed7809(o.users!);
  }
  buildCounterListClientUsersResponse--;
}

core.List<api.Client> buildUnnamed7810() {
  var o = <api.Client>[];
  o.add(buildClient());
  o.add(buildClient());
  return o;
}

void checkUnnamed7810(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0] as api.Client);
  checkClient(o[1] as api.Client);
}

core.int buildCounterListClientsResponse = 0;
api.ListClientsResponse buildListClientsResponse() {
  var o = api.ListClientsResponse();
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    o.clients = buildUnnamed7810();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientsResponse--;
  return o;
}

void checkListClientsResponse(api.ListClientsResponse o) {
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    checkUnnamed7810(o.clients!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClientsResponse--;
}

core.List<api.FilteredBidCreativeRow> buildUnnamed7811() {
  var o = <api.FilteredBidCreativeRow>[];
  o.add(buildFilteredBidCreativeRow());
  o.add(buildFilteredBidCreativeRow());
  return o;
}

void checkUnnamed7811(core.List<api.FilteredBidCreativeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredBidCreativeRow(o[0] as api.FilteredBidCreativeRow);
  checkFilteredBidCreativeRow(o[1] as api.FilteredBidCreativeRow);
}

core.int buildCounterListCreativeStatusBreakdownByCreativeResponse = 0;
api.ListCreativeStatusBreakdownByCreativeResponse
    buildListCreativeStatusBreakdownByCreativeResponse() {
  var o = api.ListCreativeStatusBreakdownByCreativeResponse();
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    o.filteredBidCreativeRows = buildUnnamed7811();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
  return o;
}

void checkListCreativeStatusBreakdownByCreativeResponse(
    api.ListCreativeStatusBreakdownByCreativeResponse o) {
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    checkUnnamed7811(o.filteredBidCreativeRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
}

core.List<api.FilteredBidDetailRow> buildUnnamed7812() {
  var o = <api.FilteredBidDetailRow>[];
  o.add(buildFilteredBidDetailRow());
  o.add(buildFilteredBidDetailRow());
  return o;
}

void checkUnnamed7812(core.List<api.FilteredBidDetailRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredBidDetailRow(o[0] as api.FilteredBidDetailRow);
  checkFilteredBidDetailRow(o[1] as api.FilteredBidDetailRow);
}

core.int buildCounterListCreativeStatusBreakdownByDetailResponse = 0;
api.ListCreativeStatusBreakdownByDetailResponse
    buildListCreativeStatusBreakdownByDetailResponse() {
  var o = api.ListCreativeStatusBreakdownByDetailResponse();
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    o.detailType = 'foo';
    o.filteredBidDetailRows = buildUnnamed7812();
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
    checkUnnamed7812(o.filteredBidDetailRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
}

core.List<api.Creative> buildUnnamed7813() {
  var o = <api.Creative>[];
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

void checkUnnamed7813(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0] as api.Creative);
  checkCreative(o[1] as api.Creative);
}

core.int buildCounterListCreativesResponse = 0;
api.ListCreativesResponse buildListCreativesResponse() {
  var o = api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed7813();
    o.nextPageToken = 'foo';
  }
  buildCounterListCreativesResponse--;
  return o;
}

void checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed7813(o.creatives!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCreativesResponse--;
}

core.List<api.CreativeDealAssociation> buildUnnamed7814() {
  var o = <api.CreativeDealAssociation>[];
  o.add(buildCreativeDealAssociation());
  o.add(buildCreativeDealAssociation());
  return o;
}

void checkUnnamed7814(core.List<api.CreativeDealAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealAssociation(o[0] as api.CreativeDealAssociation);
  checkCreativeDealAssociation(o[1] as api.CreativeDealAssociation);
}

core.int buildCounterListDealAssociationsResponse = 0;
api.ListDealAssociationsResponse buildListDealAssociationsResponse() {
  var o = api.ListDealAssociationsResponse();
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    o.associations = buildUnnamed7814();
    o.nextPageToken = 'foo';
  }
  buildCounterListDealAssociationsResponse--;
  return o;
}

void checkListDealAssociationsResponse(api.ListDealAssociationsResponse o) {
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    checkUnnamed7814(o.associations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDealAssociationsResponse--;
}

core.List<api.FilterSet> buildUnnamed7815() {
  var o = <api.FilterSet>[];
  o.add(buildFilterSet());
  o.add(buildFilterSet());
  return o;
}

void checkUnnamed7815(core.List<api.FilterSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSet(o[0] as api.FilterSet);
  checkFilterSet(o[1] as api.FilterSet);
}

core.int buildCounterListFilterSetsResponse = 0;
api.ListFilterSetsResponse buildListFilterSetsResponse() {
  var o = api.ListFilterSetsResponse();
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    o.filterSets = buildUnnamed7815();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilterSetsResponse--;
  return o;
}

void checkListFilterSetsResponse(api.ListFilterSetsResponse o) {
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    checkUnnamed7815(o.filterSets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilterSetsResponse--;
}

core.List<api.CalloutStatusRow> buildUnnamed7816() {
  var o = <api.CalloutStatusRow>[];
  o.add(buildCalloutStatusRow());
  o.add(buildCalloutStatusRow());
  return o;
}

void checkUnnamed7816(core.List<api.CalloutStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusRow(o[0] as api.CalloutStatusRow);
  checkCalloutStatusRow(o[1] as api.CalloutStatusRow);
}

core.int buildCounterListFilteredBidRequestsResponse = 0;
api.ListFilteredBidRequestsResponse buildListFilteredBidRequestsResponse() {
  var o = api.ListFilteredBidRequestsResponse();
  buildCounterListFilteredBidRequestsResponse++;
  if (buildCounterListFilteredBidRequestsResponse < 3) {
    o.calloutStatusRows = buildUnnamed7816();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilteredBidRequestsResponse--;
  return o;
}

void checkListFilteredBidRequestsResponse(
    api.ListFilteredBidRequestsResponse o) {
  buildCounterListFilteredBidRequestsResponse++;
  if (buildCounterListFilteredBidRequestsResponse < 3) {
    checkUnnamed7816(o.calloutStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilteredBidRequestsResponse--;
}

core.List<api.CreativeStatusRow> buildUnnamed7817() {
  var o = <api.CreativeStatusRow>[];
  o.add(buildCreativeStatusRow());
  o.add(buildCreativeStatusRow());
  return o;
}

void checkUnnamed7817(core.List<api.CreativeStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusRow(o[0] as api.CreativeStatusRow);
  checkCreativeStatusRow(o[1] as api.CreativeStatusRow);
}

core.int buildCounterListFilteredBidsResponse = 0;
api.ListFilteredBidsResponse buildListFilteredBidsResponse() {
  var o = api.ListFilteredBidsResponse();
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    o.creativeStatusRows = buildUnnamed7817();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilteredBidsResponse--;
  return o;
}

void checkListFilteredBidsResponse(api.ListFilteredBidsResponse o) {
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    checkUnnamed7817(o.creativeStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilteredBidsResponse--;
}

core.List<api.ImpressionMetricsRow> buildUnnamed7818() {
  var o = <api.ImpressionMetricsRow>[];
  o.add(buildImpressionMetricsRow());
  o.add(buildImpressionMetricsRow());
  return o;
}

void checkUnnamed7818(core.List<api.ImpressionMetricsRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImpressionMetricsRow(o[0] as api.ImpressionMetricsRow);
  checkImpressionMetricsRow(o[1] as api.ImpressionMetricsRow);
}

core.int buildCounterListImpressionMetricsResponse = 0;
api.ListImpressionMetricsResponse buildListImpressionMetricsResponse() {
  var o = api.ListImpressionMetricsResponse();
  buildCounterListImpressionMetricsResponse++;
  if (buildCounterListImpressionMetricsResponse < 3) {
    o.impressionMetricsRows = buildUnnamed7818();
    o.nextPageToken = 'foo';
  }
  buildCounterListImpressionMetricsResponse--;
  return o;
}

void checkListImpressionMetricsResponse(api.ListImpressionMetricsResponse o) {
  buildCounterListImpressionMetricsResponse++;
  if (buildCounterListImpressionMetricsResponse < 3) {
    checkUnnamed7818(o.impressionMetricsRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListImpressionMetricsResponse--;
}

core.List<api.CreativeStatusRow> buildUnnamed7819() {
  var o = <api.CreativeStatusRow>[];
  o.add(buildCreativeStatusRow());
  o.add(buildCreativeStatusRow());
  return o;
}

void checkUnnamed7819(core.List<api.CreativeStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusRow(o[0] as api.CreativeStatusRow);
  checkCreativeStatusRow(o[1] as api.CreativeStatusRow);
}

core.int buildCounterListLosingBidsResponse = 0;
api.ListLosingBidsResponse buildListLosingBidsResponse() {
  var o = api.ListLosingBidsResponse();
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    o.creativeStatusRows = buildUnnamed7819();
    o.nextPageToken = 'foo';
  }
  buildCounterListLosingBidsResponse--;
  return o;
}

void checkListLosingBidsResponse(api.ListLosingBidsResponse o) {
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    checkUnnamed7819(o.creativeStatusRows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLosingBidsResponse--;
}

core.List<api.NonBillableWinningBidStatusRow> buildUnnamed7820() {
  var o = <api.NonBillableWinningBidStatusRow>[];
  o.add(buildNonBillableWinningBidStatusRow());
  o.add(buildNonBillableWinningBidStatusRow());
  return o;
}

void checkUnnamed7820(core.List<api.NonBillableWinningBidStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonBillableWinningBidStatusRow(
      o[0] as api.NonBillableWinningBidStatusRow);
  checkNonBillableWinningBidStatusRow(
      o[1] as api.NonBillableWinningBidStatusRow);
}

core.int buildCounterListNonBillableWinningBidsResponse = 0;
api.ListNonBillableWinningBidsResponse
    buildListNonBillableWinningBidsResponse() {
  var o = api.ListNonBillableWinningBidsResponse();
  buildCounterListNonBillableWinningBidsResponse++;
  if (buildCounterListNonBillableWinningBidsResponse < 3) {
    o.nextPageToken = 'foo';
    o.nonBillableWinningBidStatusRows = buildUnnamed7820();
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
    checkUnnamed7820(o.nonBillableWinningBidStatusRows!);
  }
  buildCounterListNonBillableWinningBidsResponse--;
}

core.List<api.Product> buildUnnamed7821() {
  var o = <api.Product>[];
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

void checkUnnamed7821(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0] as api.Product);
  checkProduct(o[1] as api.Product);
}

core.int buildCounterListProductsResponse = 0;
api.ListProductsResponse buildListProductsResponse() {
  var o = api.ListProductsResponse();
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed7821();
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
    checkUnnamed7821(o.products!);
  }
  buildCounterListProductsResponse--;
}

core.List<api.Proposal> buildUnnamed7822() {
  var o = <api.Proposal>[];
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

void checkUnnamed7822(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0] as api.Proposal);
  checkProposal(o[1] as api.Proposal);
}

core.int buildCounterListProposalsResponse = 0;
api.ListProposalsResponse buildListProposalsResponse() {
  var o = api.ListProposalsResponse();
  buildCounterListProposalsResponse++;
  if (buildCounterListProposalsResponse < 3) {
    o.nextPageToken = 'foo';
    o.proposals = buildUnnamed7822();
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
    checkUnnamed7822(o.proposals!);
  }
  buildCounterListProposalsResponse--;
}

core.List<api.PublisherProfile> buildUnnamed7823() {
  var o = <api.PublisherProfile>[];
  o.add(buildPublisherProfile());
  o.add(buildPublisherProfile());
  return o;
}

void checkUnnamed7823(core.List<api.PublisherProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfile(o[0] as api.PublisherProfile);
  checkPublisherProfile(o[1] as api.PublisherProfile);
}

core.int buildCounterListPublisherProfilesResponse = 0;
api.ListPublisherProfilesResponse buildListPublisherProfilesResponse() {
  var o = api.ListPublisherProfilesResponse();
  buildCounterListPublisherProfilesResponse++;
  if (buildCounterListPublisherProfilesResponse < 3) {
    o.nextPageToken = 'foo';
    o.publisherProfiles = buildUnnamed7823();
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
    checkUnnamed7823(o.publisherProfiles!);
  }
  buildCounterListPublisherProfilesResponse--;
}

core.List<core.int> buildUnnamed7824() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7824(core.List<core.int> o) {
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
  var o = api.LocationContext();
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    o.geoCriteriaIds = buildUnnamed7824();
  }
  buildCounterLocationContext--;
  return o;
}

void checkLocationContext(api.LocationContext o) {
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    checkUnnamed7824(o.geoCriteriaIds!);
  }
  buildCounterLocationContext--;
}

core.int buildCounterMarketplaceTargeting = 0;
api.MarketplaceTargeting buildMarketplaceTargeting() {
  var o = api.MarketplaceTargeting();
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
    checkCriteriaTargeting(o.geoTargeting! as api.CriteriaTargeting);
    checkInventorySizeTargeting(
        o.inventorySizeTargeting! as api.InventorySizeTargeting);
    checkPlacementTargeting(o.placementTargeting! as api.PlacementTargeting);
    checkTechnologyTargeting(o.technologyTargeting! as api.TechnologyTargeting);
    checkVideoTargeting(o.videoTargeting! as api.VideoTargeting);
  }
  buildCounterMarketplaceTargeting--;
}

core.int buildCounterMetricValue = 0;
api.MetricValue buildMetricValue() {
  var o = api.MetricValue();
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
  var o = api.MobileApplicationTargeting();
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
    checkFirstPartyMobileApplicationTargeting(
        o.firstPartyTargeting! as api.FirstPartyMobileApplicationTargeting);
  }
  buildCounterMobileApplicationTargeting--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  var o = api.Money();
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
  var o = api.NativeContent();
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
    checkImage(o.appIcon! as api.Image);
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
    checkImage(o.image! as api.Image);
    checkImage(o.logo! as api.Image);
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
  var o = api.NonBillableWinningBidStatusRow();
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
    checkMetricValue(o.bidCount! as api.MetricValue);
    checkRowDimensions(o.rowDimensions! as api.RowDimensions);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonBillableWinningBidStatusRow--;
}

core.List<api.PricePerBuyer> buildUnnamed7825() {
  var o = <api.PricePerBuyer>[];
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

void checkUnnamed7825(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0] as api.PricePerBuyer);
  checkPricePerBuyer(o[1] as api.PricePerBuyer);
}

core.int buildCounterNonGuaranteedAuctionTerms = 0;
api.NonGuaranteedAuctionTerms buildNonGuaranteedAuctionTerms() {
  var o = api.NonGuaranteedAuctionTerms();
  buildCounterNonGuaranteedAuctionTerms++;
  if (buildCounterNonGuaranteedAuctionTerms < 3) {
    o.autoOptimizePrivateAuction = true;
    o.reservePricesPerBuyer = buildUnnamed7825();
  }
  buildCounterNonGuaranteedAuctionTerms--;
  return o;
}

void checkNonGuaranteedAuctionTerms(api.NonGuaranteedAuctionTerms o) {
  buildCounterNonGuaranteedAuctionTerms++;
  if (buildCounterNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.autoOptimizePrivateAuction!, unittest.isTrue);
    checkUnnamed7825(o.reservePricesPerBuyer!);
  }
  buildCounterNonGuaranteedAuctionTerms--;
}

core.List<api.PricePerBuyer> buildUnnamed7826() {
  var o = <api.PricePerBuyer>[];
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

void checkUnnamed7826(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0] as api.PricePerBuyer);
  checkPricePerBuyer(o[1] as api.PricePerBuyer);
}

core.int buildCounterNonGuaranteedFixedPriceTerms = 0;
api.NonGuaranteedFixedPriceTerms buildNonGuaranteedFixedPriceTerms() {
  var o = api.NonGuaranteedFixedPriceTerms();
  buildCounterNonGuaranteedFixedPriceTerms++;
  if (buildCounterNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed7826();
  }
  buildCounterNonGuaranteedFixedPriceTerms--;
  return o;
}

void checkNonGuaranteedFixedPriceTerms(api.NonGuaranteedFixedPriceTerms o) {
  buildCounterNonGuaranteedFixedPriceTerms++;
  if (buildCounterNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed7826(o.fixedPrices!);
  }
  buildCounterNonGuaranteedFixedPriceTerms--;
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  var o = api.Note();
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
  var o = api.OperatingSystemTargeting();
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
    checkCriteriaTargeting(o.operatingSystemCriteria! as api.CriteriaTargeting);
    checkCriteriaTargeting(
        o.operatingSystemVersionCriteria! as api.CriteriaTargeting);
  }
  buildCounterOperatingSystemTargeting--;
}

core.List<core.String> buildUnnamed7827() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7827(core.List<core.String> o) {
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
  var o = api.PauseProposalDealsRequest();
  buildCounterPauseProposalDealsRequest++;
  if (buildCounterPauseProposalDealsRequest < 3) {
    o.externalDealIds = buildUnnamed7827();
    o.reason = 'foo';
  }
  buildCounterPauseProposalDealsRequest--;
  return o;
}

void checkPauseProposalDealsRequest(api.PauseProposalDealsRequest o) {
  buildCounterPauseProposalDealsRequest++;
  if (buildCounterPauseProposalDealsRequest < 3) {
    checkUnnamed7827(o.externalDealIds!);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterPauseProposalDealsRequest--;
}

core.int buildCounterPauseProposalRequest = 0;
api.PauseProposalRequest buildPauseProposalRequest() {
  var o = api.PauseProposalRequest();
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
  var o = api.PlacementTargeting();
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
    checkMobileApplicationTargeting(
        o.mobileApplicationTargeting! as api.MobileApplicationTargeting);
    checkUrlTargeting(o.urlTargeting! as api.UrlTargeting);
  }
  buildCounterPlacementTargeting--;
}

core.List<core.String> buildUnnamed7828() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7828(core.List<core.String> o) {
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
  var o = api.PlatformContext();
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    o.platforms = buildUnnamed7828();
  }
  buildCounterPlatformContext--;
  return o;
}

void checkPlatformContext(api.PlatformContext o) {
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    checkUnnamed7828(o.platforms!);
  }
  buildCounterPlatformContext--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  var o = api.Price();
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
    checkMoney(o.amount! as api.Money);
    unittest.expect(
      o.pricingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.List<core.String> buildUnnamed7829() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7829(core.List<core.String> o) {
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
  var o = api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.advertiserIds = buildUnnamed7829();
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

void checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    checkUnnamed7829(o.advertiserIds!);
    checkBuyer(o.buyer! as api.Buyer);
    checkPrice(o.price! as api.Price);
  }
  buildCounterPricePerBuyer--;
}

core.int buildCounterPrivateData = 0;
api.PrivateData buildPrivateData() {
  var o = api.PrivateData();
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

core.List<api.ContactInformation> buildUnnamed7830() {
  var o = <api.ContactInformation>[];
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

void checkUnnamed7830(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0] as api.ContactInformation);
  checkContactInformation(o[1] as api.ContactInformation);
}

core.List<api.TargetingCriteria> buildUnnamed7831() {
  var o = <api.TargetingCriteria>[];
  o.add(buildTargetingCriteria());
  o.add(buildTargetingCriteria());
  return o;
}

void checkUnnamed7831(core.List<api.TargetingCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingCriteria(o[0] as api.TargetingCriteria);
  checkTargetingCriteria(o[1] as api.TargetingCriteria);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  var o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.availableEndTime = 'foo';
    o.availableStartTime = 'foo';
    o.createTime = 'foo';
    o.creatorContacts = buildUnnamed7830();
    o.displayName = 'foo';
    o.hasCreatorSignedOff = true;
    o.productId = 'foo';
    o.productRevision = 'foo';
    o.publisherProfileId = 'foo';
    o.seller = buildSeller();
    o.syndicationProduct = 'foo';
    o.targetingCriterion = buildUnnamed7831();
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
    checkUnnamed7830(o.creatorContacts!);
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
    checkSeller(o.seller! as api.Seller);
    unittest.expect(
      o.syndicationProduct!,
      unittest.equals('foo'),
    );
    checkUnnamed7831(o.targetingCriterion!);
    checkDealTerms(o.terms! as api.DealTerms);
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

core.List<api.ContactInformation> buildUnnamed7832() {
  var o = <api.ContactInformation>[];
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

void checkUnnamed7832(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0] as api.ContactInformation);
  checkContactInformation(o[1] as api.ContactInformation);
}

core.List<api.Deal> buildUnnamed7833() {
  var o = <api.Deal>[];
  o.add(buildDeal());
  o.add(buildDeal());
  return o;
}

void checkUnnamed7833(core.List<api.Deal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeal(o[0] as api.Deal);
  checkDeal(o[1] as api.Deal);
}

core.List<api.Note> buildUnnamed7834() {
  var o = <api.Note>[];
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

void checkUnnamed7834(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0] as api.Note);
  checkNote(o[1] as api.Note);
}

core.List<api.ContactInformation> buildUnnamed7835() {
  var o = <api.ContactInformation>[];
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

void checkUnnamed7835(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0] as api.ContactInformation);
  checkContactInformation(o[1] as api.ContactInformation);
}

core.int buildCounterProposal = 0;
api.Proposal buildProposal() {
  var o = api.Proposal();
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.buyerContacts = buildUnnamed7832();
    o.buyerPrivateData = buildPrivateData();
    o.deals = buildUnnamed7833();
    o.displayName = 'foo';
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.lastUpdaterOrCommentorRole = 'foo';
    o.notes = buildUnnamed7834();
    o.originatorRole = 'foo';
    o.privateAuctionId = 'foo';
    o.proposalId = 'foo';
    o.proposalRevision = 'foo';
    o.proposalState = 'foo';
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed7835();
    o.termsAndConditions = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterProposal--;
  return o;
}

void checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    checkBuyer(o.billedBuyer! as api.Buyer);
    checkBuyer(o.buyer! as api.Buyer);
    checkUnnamed7832(o.buyerContacts!);
    checkPrivateData(o.buyerPrivateData! as api.PrivateData);
    checkUnnamed7833(o.deals!);
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
    checkUnnamed7834(o.notes!);
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
    checkSeller(o.seller! as api.Seller);
    checkUnnamed7835(o.sellerContacts!);
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

core.List<core.String> buildUnnamed7836() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7836(core.List<core.String> o) {
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

core.List<api.PublisherProfileMobileApplication> buildUnnamed7837() {
  var o = <api.PublisherProfileMobileApplication>[];
  o.add(buildPublisherProfileMobileApplication());
  o.add(buildPublisherProfileMobileApplication());
  return o;
}

void checkUnnamed7837(core.List<api.PublisherProfileMobileApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfileMobileApplication(
      o[0] as api.PublisherProfileMobileApplication);
  checkPublisherProfileMobileApplication(
      o[1] as api.PublisherProfileMobileApplication);
}

core.List<core.String> buildUnnamed7838() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7838(core.List<core.String> o) {
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
  var o = api.PublisherProfile();
  buildCounterPublisherProfile++;
  if (buildCounterPublisherProfile < 3) {
    o.audienceDescription = 'foo';
    o.buyerPitchStatement = 'foo';
    o.directDealsContact = 'foo';
    o.displayName = 'foo';
    o.domains = buildUnnamed7836();
    o.googlePlusUrl = 'foo';
    o.isParent = true;
    o.logoUrl = 'foo';
    o.mediaKitUrl = 'foo';
    o.mobileApps = buildUnnamed7837();
    o.overview = 'foo';
    o.programmaticDealsContact = 'foo';
    o.publisherProfileId = 'foo';
    o.rateCardInfoUrl = 'foo';
    o.samplePageUrl = 'foo';
    o.seller = buildSeller();
    o.topHeadlines = buildUnnamed7838();
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
    checkUnnamed7836(o.domains!);
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
    checkUnnamed7837(o.mobileApps!);
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
    checkSeller(o.seller! as api.Seller);
    checkUnnamed7838(o.topHeadlines!);
  }
  buildCounterPublisherProfile--;
}

core.int buildCounterPublisherProfileMobileApplication = 0;
api.PublisherProfileMobileApplication buildPublisherProfileMobileApplication() {
  var o = api.PublisherProfileMobileApplication();
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
  var o = api.RealtimeTimeRange();
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
  var o = api.RelativeDateRange();
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
  var o = api.RemoveDealAssociationRequest();
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
    checkCreativeDealAssociation(o.association! as api.CreativeDealAssociation);
  }
  buildCounterRemoveDealAssociationRequest--;
}

core.List<core.String> buildUnnamed7839() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7839(core.List<core.String> o) {
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
  var o = api.ResumeProposalDealsRequest();
  buildCounterResumeProposalDealsRequest++;
  if (buildCounterResumeProposalDealsRequest < 3) {
    o.externalDealIds = buildUnnamed7839();
  }
  buildCounterResumeProposalDealsRequest--;
  return o;
}

void checkResumeProposalDealsRequest(api.ResumeProposalDealsRequest o) {
  buildCounterResumeProposalDealsRequest++;
  if (buildCounterResumeProposalDealsRequest < 3) {
    checkUnnamed7839(o.externalDealIds!);
  }
  buildCounterResumeProposalDealsRequest--;
}

core.int buildCounterResumeProposalRequest = 0;
api.ResumeProposalRequest buildResumeProposalRequest() {
  var o = api.ResumeProposalRequest();
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
  var o = api.RowDimensions();
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
    checkTimeInterval(o.timeInterval! as api.TimeInterval);
  }
  buildCounterRowDimensions--;
}

core.List<core.String> buildUnnamed7840() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7840(core.List<core.String> o) {
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
  var o = api.SecurityContext();
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    o.securities = buildUnnamed7840();
  }
  buildCounterSecurityContext--;
  return o;
}

void checkSecurityContext(api.SecurityContext o) {
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    checkUnnamed7840(o.securities!);
  }
  buildCounterSecurityContext--;
}

core.int buildCounterSeller = 0;
api.Seller buildSeller() {
  var o = api.Seller();
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
  var o = api.ServingContext();
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
    checkAppContext(o.appType! as api.AppContext);
    checkAuctionContext(o.auctionType! as api.AuctionContext);
    checkLocationContext(o.location! as api.LocationContext);
    checkPlatformContext(o.platform! as api.PlatformContext);
    checkSecurityContext(o.securityType! as api.SecurityContext);
  }
  buildCounterServingContext--;
}

core.List<api.ServingContext> buildUnnamed7841() {
  var o = <api.ServingContext>[];
  o.add(buildServingContext());
  o.add(buildServingContext());
  return o;
}

void checkUnnamed7841(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0] as api.ServingContext);
  checkServingContext(o[1] as api.ServingContext);
}

core.List<api.Disapproval> buildUnnamed7842() {
  var o = <api.Disapproval>[];
  o.add(buildDisapproval());
  o.add(buildDisapproval());
  return o;
}

void checkUnnamed7842(core.List<api.Disapproval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisapproval(o[0] as api.Disapproval);
  checkDisapproval(o[1] as api.Disapproval);
}

core.int buildCounterServingRestriction = 0;
api.ServingRestriction buildServingRestriction() {
  var o = api.ServingRestriction();
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    o.contexts = buildUnnamed7841();
    o.disapproval = buildDisapproval();
    o.disapprovalReasons = buildUnnamed7842();
    o.status = 'foo';
  }
  buildCounterServingRestriction--;
  return o;
}

void checkServingRestriction(api.ServingRestriction o) {
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    checkUnnamed7841(o.contexts!);
    checkDisapproval(o.disapproval! as api.Disapproval);
    checkUnnamed7842(o.disapprovalReasons!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterServingRestriction--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  var o = api.Size();
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
  var o = api.StopWatchingCreativeRequest();
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

core.List<api.TargetingValue> buildUnnamed7843() {
  var o = <api.TargetingValue>[];
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

void checkUnnamed7843(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0] as api.TargetingValue);
  checkTargetingValue(o[1] as api.TargetingValue);
}

core.List<api.TargetingValue> buildUnnamed7844() {
  var o = <api.TargetingValue>[];
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

void checkUnnamed7844(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0] as api.TargetingValue);
  checkTargetingValue(o[1] as api.TargetingValue);
}

core.int buildCounterTargetingCriteria = 0;
api.TargetingCriteria buildTargetingCriteria() {
  var o = api.TargetingCriteria();
  buildCounterTargetingCriteria++;
  if (buildCounterTargetingCriteria < 3) {
    o.exclusions = buildUnnamed7843();
    o.inclusions = buildUnnamed7844();
    o.key = 'foo';
  }
  buildCounterTargetingCriteria--;
  return o;
}

void checkTargetingCriteria(api.TargetingCriteria o) {
  buildCounterTargetingCriteria++;
  if (buildCounterTargetingCriteria < 3) {
    checkUnnamed7843(o.exclusions!);
    checkUnnamed7844(o.inclusions!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterTargetingCriteria--;
}

core.int buildCounterTargetingValue = 0;
api.TargetingValue buildTargetingValue() {
  var o = api.TargetingValue();
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
    checkCreativeSize(o.creativeSizeValue! as api.CreativeSize);
    checkDayPartTargeting(o.dayPartTargetingValue! as api.DayPartTargeting);
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
  var o = api.TechnologyTargeting();
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
    checkCriteriaTargeting(
        o.deviceCapabilityTargeting! as api.CriteriaTargeting);
    checkCriteriaTargeting(o.deviceCategoryTargeting! as api.CriteriaTargeting);
    checkOperatingSystemTargeting(
        o.operatingSystemTargeting! as api.OperatingSystemTargeting);
  }
  buildCounterTechnologyTargeting--;
}

core.int buildCounterTimeInterval = 0;
api.TimeInterval buildTimeInterval() {
  var o = api.TimeInterval();
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
  var o = api.TimeOfDay();
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

core.List<core.String> buildUnnamed7845() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7845(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7846() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7846(core.List<core.String> o) {
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
  var o = api.UrlTargeting();
  buildCounterUrlTargeting++;
  if (buildCounterUrlTargeting < 3) {
    o.excludedUrls = buildUnnamed7845();
    o.targetedUrls = buildUnnamed7846();
  }
  buildCounterUrlTargeting--;
  return o;
}

void checkUrlTargeting(api.UrlTargeting o) {
  buildCounterUrlTargeting++;
  if (buildCounterUrlTargeting < 3) {
    checkUnnamed7845(o.excludedUrls!);
    checkUnnamed7846(o.targetedUrls!);
  }
  buildCounterUrlTargeting--;
}

core.int buildCounterVideoContent = 0;
api.VideoContent buildVideoContent() {
  var o = api.VideoContent();
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

core.List<core.String> buildUnnamed7847() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7847(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7848() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7848(core.List<core.String> o) {
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
  var o = api.VideoTargeting();
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    o.excludedPositionTypes = buildUnnamed7847();
    o.targetedPositionTypes = buildUnnamed7848();
  }
  buildCounterVideoTargeting--;
  return o;
}

void checkVideoTargeting(api.VideoTargeting o) {
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    checkUnnamed7847(o.excludedPositionTypes!);
    checkUnnamed7848(o.targetedPositionTypes!);
  }
  buildCounterVideoTargeting--;
}

core.int buildCounterWatchCreativeRequest = 0;
api.WatchCreativeRequest buildWatchCreativeRequest() {
  var o = api.WatchCreativeRequest();
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
      var o = buildAbsoluteDateRange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AbsoluteDateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbsoluteDateRange(od as api.AbsoluteDateRange);
    });
  });

  unittest.group('obj-schema-AcceptProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAcceptProposalRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AcceptProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceptProposalRequest(od as api.AcceptProposalRequest);
    });
  });

  unittest.group('obj-schema-AdSize', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AdSize.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdSize(od as api.AdSize);
    });
  });

  unittest.group('obj-schema-AdTechnologyProviders', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdTechnologyProviders();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AdTechnologyProviders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdTechnologyProviders(od as api.AdTechnologyProviders);
    });
  });

  unittest.group('obj-schema-AddDealAssociationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAddDealAssociationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AddDealAssociationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDealAssociationRequest(od as api.AddDealAssociationRequest);
    });
  });

  unittest.group('obj-schema-AddNoteRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAddNoteRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AddNoteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddNoteRequest(od as api.AddNoteRequest);
    });
  });

  unittest.group('obj-schema-AppContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAppContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AppContext.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppContext(od as api.AppContext);
    });
  });

  unittest.group('obj-schema-AuctionContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuctionContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuctionContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuctionContext(od as api.AuctionContext);
    });
  });

  unittest.group('obj-schema-BidMetricsRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBidMetricsRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BidMetricsRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBidMetricsRow(od as api.BidMetricsRow);
    });
  });

  unittest.group('obj-schema-BidResponseWithoutBidsStatusRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBidResponseWithoutBidsStatusRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BidResponseWithoutBidsStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBidResponseWithoutBidsStatusRow(
          od as api.BidResponseWithoutBidsStatusRow);
    });
  });

  unittest.group('obj-schema-Buyer', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBuyer();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Buyer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuyer(od as api.Buyer);
    });
  });

  unittest.group('obj-schema-CalloutStatusRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCalloutStatusRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CalloutStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCalloutStatusRow(od as api.CalloutStatusRow);
    });
  });

  unittest.group('obj-schema-CancelNegotiationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelNegotiationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelNegotiationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelNegotiationRequest(od as api.CancelNegotiationRequest);
    });
  });

  unittest.group('obj-schema-Client', () {
    unittest.test('to-json--from-json', () async {
      var o = buildClient();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Client.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClient(od as api.Client);
    });
  });

  unittest.group('obj-schema-ClientUser', () {
    unittest.test('to-json--from-json', () async {
      var o = buildClientUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ClientUser.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClientUser(od as api.ClientUser);
    });
  });

  unittest.group('obj-schema-ClientUserInvitation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildClientUserInvitation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ClientUserInvitation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientUserInvitation(od as api.ClientUserInvitation);
    });
  });

  unittest.group('obj-schema-CompleteSetupRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCompleteSetupRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CompleteSetupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteSetupRequest(od as api.CompleteSetupRequest);
    });
  });

  unittest.group('obj-schema-ContactInformation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContactInformation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContactInformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactInformation(od as api.ContactInformation);
    });
  });

  unittest.group('obj-schema-Correction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCorrection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Correction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCorrection(od as api.Correction);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreative();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Creative.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCreative(od as api.Creative);
    });
  });

  unittest.group('obj-schema-CreativeDealAssociation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreativeDealAssociation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreativeDealAssociation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeDealAssociation(od as api.CreativeDealAssociation);
    });
  });

  unittest.group('obj-schema-CreativeRestrictions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreativeRestrictions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreativeRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeRestrictions(od as api.CreativeRestrictions);
    });
  });

  unittest.group('obj-schema-CreativeSize', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreativeSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreativeSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeSize(od as api.CreativeSize);
    });
  });

  unittest.group('obj-schema-CreativeSpecification', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreativeSpecification();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreativeSpecification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeSpecification(od as api.CreativeSpecification);
    });
  });

  unittest.group('obj-schema-CreativeStatusRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCreativeStatusRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CreativeStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeStatusRow(od as api.CreativeStatusRow);
    });
  });

  unittest.group('obj-schema-CriteriaTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCriteriaTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CriteriaTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCriteriaTargeting(od as api.CriteriaTargeting);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DayPart', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDayPart();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.DayPart.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDayPart(od as api.DayPart);
    });
  });

  unittest.group('obj-schema-DayPartTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDayPartTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DayPartTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDayPartTargeting(od as api.DayPartTargeting);
    });
  });

  unittest.group('obj-schema-Deal', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeal();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Deal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeal(od as api.Deal);
    });
  });

  unittest.group('obj-schema-DealPauseStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDealPauseStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DealPauseStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealPauseStatus(od as api.DealPauseStatus);
    });
  });

  unittest.group('obj-schema-DealServingMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDealServingMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DealServingMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealServingMetadata(od as api.DealServingMetadata);
    });
  });

  unittest.group('obj-schema-DealTerms', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDealTerms();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.DealTerms.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDealTerms(od as api.DealTerms);
    });
  });

  unittest.group('obj-schema-DeliveryControl', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeliveryControl();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeliveryControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryControl(od as api.DeliveryControl);
    });
  });

  unittest.group('obj-schema-Disapproval', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDisapproval();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Disapproval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisapproval(od as api.Disapproval);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-FilterSet', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFilterSet();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.FilterSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilterSet(od as api.FilterSet);
    });
  });

  unittest.group('obj-schema-FilteredBidCreativeRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFilteredBidCreativeRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FilteredBidCreativeRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilteredBidCreativeRow(od as api.FilteredBidCreativeRow);
    });
  });

  unittest.group('obj-schema-FilteredBidDetailRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFilteredBidDetailRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FilteredBidDetailRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilteredBidDetailRow(od as api.FilteredBidDetailRow);
    });
  });

  unittest.group('obj-schema-FirstPartyMobileApplicationTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFirstPartyMobileApplicationTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FirstPartyMobileApplicationTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFirstPartyMobileApplicationTargeting(
          od as api.FirstPartyMobileApplicationTargeting);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFrequencyCap();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FrequencyCap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFrequencyCap(od as api.FrequencyCap);
    });
  });

  unittest.group('obj-schema-GuaranteedFixedPriceTerms', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGuaranteedFixedPriceTerms();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GuaranteedFixedPriceTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuaranteedFixedPriceTerms(od as api.GuaranteedFixedPriceTerms);
    });
  });

  unittest.group('obj-schema-HtmlContent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHtmlContent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.HtmlContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHtmlContent(od as api.HtmlContent);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od as api.Image);
    });
  });

  unittest.group('obj-schema-ImpressionMetricsRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImpressionMetricsRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImpressionMetricsRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImpressionMetricsRow(od as api.ImpressionMetricsRow);
    });
  });

  unittest.group('obj-schema-InventorySizeTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInventorySizeTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InventorySizeTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventorySizeTargeting(od as api.InventorySizeTargeting);
    });
  });

  unittest.group('obj-schema-ListBidMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListBidMetricsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListBidMetricsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBidMetricsResponse(od as api.ListBidMetricsResponse);
    });
  });

  unittest.group('obj-schema-ListBidResponseErrorsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListBidResponseErrorsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListBidResponseErrorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBidResponseErrorsResponse(
          od as api.ListBidResponseErrorsResponse);
    });
  });

  unittest.group('obj-schema-ListBidResponsesWithoutBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListBidResponsesWithoutBidsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListBidResponsesWithoutBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBidResponsesWithoutBidsResponse(
          od as api.ListBidResponsesWithoutBidsResponse);
    });
  });

  unittest.group('obj-schema-ListClientUserInvitationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListClientUserInvitationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListClientUserInvitationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClientUserInvitationsResponse(
          od as api.ListClientUserInvitationsResponse);
    });
  });

  unittest.group('obj-schema-ListClientUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListClientUsersResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListClientUsersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClientUsersResponse(od as api.ListClientUsersResponse);
    });
  });

  unittest.group('obj-schema-ListClientsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListClientsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListClientsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClientsResponse(od as api.ListClientsResponse);
    });
  });

  unittest.group('obj-schema-ListCreativeStatusBreakdownByCreativeResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCreativeStatusBreakdownByCreativeResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCreativeStatusBreakdownByCreativeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCreativeStatusBreakdownByCreativeResponse(
          od as api.ListCreativeStatusBreakdownByCreativeResponse);
    });
  });

  unittest.group('obj-schema-ListCreativeStatusBreakdownByDetailResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCreativeStatusBreakdownByDetailResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCreativeStatusBreakdownByDetailResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCreativeStatusBreakdownByDetailResponse(
          od as api.ListCreativeStatusBreakdownByDetailResponse);
    });
  });

  unittest.group('obj-schema-ListCreativesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCreativesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCreativesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCreativesResponse(od as api.ListCreativesResponse);
    });
  });

  unittest.group('obj-schema-ListDealAssociationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListDealAssociationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListDealAssociationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDealAssociationsResponse(od as api.ListDealAssociationsResponse);
    });
  });

  unittest.group('obj-schema-ListFilterSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListFilterSetsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListFilterSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilterSetsResponse(od as api.ListFilterSetsResponse);
    });
  });

  unittest.group('obj-schema-ListFilteredBidRequestsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListFilteredBidRequestsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListFilteredBidRequestsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilteredBidRequestsResponse(
          od as api.ListFilteredBidRequestsResponse);
    });
  });

  unittest.group('obj-schema-ListFilteredBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListFilteredBidsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListFilteredBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilteredBidsResponse(od as api.ListFilteredBidsResponse);
    });
  });

  unittest.group('obj-schema-ListImpressionMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListImpressionMetricsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListImpressionMetricsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImpressionMetricsResponse(
          od as api.ListImpressionMetricsResponse);
    });
  });

  unittest.group('obj-schema-ListLosingBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListLosingBidsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListLosingBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLosingBidsResponse(od as api.ListLosingBidsResponse);
    });
  });

  unittest.group('obj-schema-ListNonBillableWinningBidsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListNonBillableWinningBidsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListNonBillableWinningBidsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNonBillableWinningBidsResponse(
          od as api.ListNonBillableWinningBidsResponse);
    });
  });

  unittest.group('obj-schema-ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListProductsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductsResponse(od as api.ListProductsResponse);
    });
  });

  unittest.group('obj-schema-ListProposalsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListProposalsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListProposalsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProposalsResponse(od as api.ListProposalsResponse);
    });
  });

  unittest.group('obj-schema-ListPublisherProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListPublisherProfilesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListPublisherProfilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPublisherProfilesResponse(
          od as api.ListPublisherProfilesResponse);
    });
  });

  unittest.group('obj-schema-LocationContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocationContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LocationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationContext(od as api.LocationContext);
    });
  });

  unittest.group('obj-schema-MarketplaceTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMarketplaceTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MarketplaceTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceTargeting(od as api.MarketplaceTargeting);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMetricValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricValue(od as api.MetricValue);
    });
  });

  unittest.group('obj-schema-MobileApplicationTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMobileApplicationTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MobileApplicationTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileApplicationTargeting(od as api.MobileApplicationTargeting);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMoney();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od as api.Money);
    });
  });

  unittest.group('obj-schema-NativeContent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNativeContent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NativeContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNativeContent(od as api.NativeContent);
    });
  });

  unittest.group('obj-schema-NonBillableWinningBidStatusRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonBillableWinningBidStatusRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonBillableWinningBidStatusRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonBillableWinningBidStatusRow(
          od as api.NonBillableWinningBidStatusRow);
    });
  });

  unittest.group('obj-schema-NonGuaranteedAuctionTerms', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonGuaranteedAuctionTerms();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonGuaranteedAuctionTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonGuaranteedAuctionTerms(od as api.NonGuaranteedAuctionTerms);
    });
  });

  unittest.group('obj-schema-NonGuaranteedFixedPriceTerms', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonGuaranteedFixedPriceTerms();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonGuaranteedFixedPriceTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonGuaranteedFixedPriceTerms(od as api.NonGuaranteedFixedPriceTerms);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNote();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od as api.Note);
    });
  });

  unittest.group('obj-schema-OperatingSystemTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperatingSystemTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperatingSystemTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperatingSystemTargeting(od as api.OperatingSystemTargeting);
    });
  });

  unittest.group('obj-schema-PauseProposalDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPauseProposalDealsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PauseProposalDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseProposalDealsRequest(od as api.PauseProposalDealsRequest);
    });
  });

  unittest.group('obj-schema-PauseProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPauseProposalRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PauseProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseProposalRequest(od as api.PauseProposalRequest);
    });
  });

  unittest.group('obj-schema-PlacementTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPlacementTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PlacementTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementTargeting(od as api.PlacementTargeting);
    });
  });

  unittest.group('obj-schema-PlatformContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPlatformContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PlatformContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlatformContext(od as api.PlatformContext);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPrice();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Price.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrice(od as api.Price);
    });
  });

  unittest.group('obj-schema-PricePerBuyer', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPricePerBuyer();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PricePerBuyer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricePerBuyer(od as api.PricePerBuyer);
    });
  });

  unittest.group('obj-schema-PrivateData', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPrivateData();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PrivateData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateData(od as api.PrivateData);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProduct();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od as api.Product);
    });
  });

  unittest.group('obj-schema-Proposal', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProposal();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Proposal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProposal(od as api.Proposal);
    });
  });

  unittest.group('obj-schema-PublisherProfile', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPublisherProfile();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PublisherProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherProfile(od as api.PublisherProfile);
    });
  });

  unittest.group('obj-schema-PublisherProfileMobileApplication', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPublisherProfileMobileApplication();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PublisherProfileMobileApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublisherProfileMobileApplication(
          od as api.PublisherProfileMobileApplication);
    });
  });

  unittest.group('obj-schema-RealtimeTimeRange', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRealtimeTimeRange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RealtimeTimeRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealtimeTimeRange(od as api.RealtimeTimeRange);
    });
  });

  unittest.group('obj-schema-RelativeDateRange', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRelativeDateRange();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RelativeDateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelativeDateRange(od as api.RelativeDateRange);
    });
  });

  unittest.group('obj-schema-RemoveDealAssociationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRemoveDealAssociationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RemoveDealAssociationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDealAssociationRequest(od as api.RemoveDealAssociationRequest);
    });
  });

  unittest.group('obj-schema-ResumeProposalDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResumeProposalDealsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ResumeProposalDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeProposalDealsRequest(od as api.ResumeProposalDealsRequest);
    });
  });

  unittest.group('obj-schema-ResumeProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResumeProposalRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ResumeProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeProposalRequest(od as api.ResumeProposalRequest);
    });
  });

  unittest.group('obj-schema-RowDimensions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRowDimensions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RowDimensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRowDimensions(od as api.RowDimensions);
    });
  });

  unittest.group('obj-schema-SecurityContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSecurityContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SecurityContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityContext(od as api.SecurityContext);
    });
  });

  unittest.group('obj-schema-Seller', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSeller();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Seller.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSeller(od as api.Seller);
    });
  });

  unittest.group('obj-schema-ServingContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServingContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServingContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServingContext(od as api.ServingContext);
    });
  });

  unittest.group('obj-schema-ServingRestriction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServingRestriction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServingRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServingRestriction(od as api.ServingRestriction);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSize();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Size.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSize(od as api.Size);
    });
  });

  unittest.group('obj-schema-StopWatchingCreativeRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStopWatchingCreativeRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StopWatchingCreativeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopWatchingCreativeRequest(od as api.StopWatchingCreativeRequest);
    });
  });

  unittest.group('obj-schema-TargetingCriteria', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTargetingCriteria();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TargetingCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingCriteria(od as api.TargetingCriteria);
    });
  });

  unittest.group('obj-schema-TargetingValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTargetingValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TargetingValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingValue(od as api.TargetingValue);
    });
  });

  unittest.group('obj-schema-TechnologyTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTechnologyTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TechnologyTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTechnologyTargeting(od as api.TechnologyTargeting);
    });
  });

  unittest.group('obj-schema-TimeInterval', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimeInterval();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TimeInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeInterval(od as api.TimeInterval);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimeOfDay();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od as api.TimeOfDay);
    });
  });

  unittest.group('obj-schema-UrlTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUrlTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UrlTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlTargeting(od as api.UrlTargeting);
    });
  });

  unittest.group('obj-schema-VideoContent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVideoContent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VideoContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoContent(od as api.VideoContent);
    });
  });

  unittest.group('obj-schema-VideoTargeting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVideoTargeting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VideoTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoTargeting(od as api.VideoTargeting);
    });
  });

  unittest.group('obj-schema-WatchCreativeRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWatchCreativeRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WatchCreativeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWatchCreativeRequest(od as api.WatchCreativeRequest);
    });
  });

  unittest.group('resource-AccountsClientsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      var arg_request = buildClient();
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Client.fromJson(json as core.Map<core.String, core.dynamic>);
        checkClient(obj as api.Client);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients"),
        );
        pathOffset += 8;

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
        var resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );

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
        var resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_clientAccountId,
          $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      var arg_accountId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_partnerClientId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients"),
        );
        pathOffset += 8;

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
          queryMap["partnerClientId"]!.first,
          unittest.equals(arg_partnerClientId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListClientsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients;
      var arg_request = buildClient();
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Client.fromJson(json as core.Map<core.String, core.dynamic>);
        checkClient(obj as api.Client);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientAccountId'),
        );

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
        var resp = convert.json.encode(buildClient());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients.invitations;
      var arg_request = buildClientUserInvitation();
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ClientUserInvitation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientUserInvitation(obj as api.ClientUserInvitation);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
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
          unittest.equals("/invitations"),
        );
        pathOffset += 12;

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
        var resp = convert.json.encode(buildClientUserInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_accountId, arg_clientAccountId,
          $fields: arg_$fields);
      checkClientUserInvitation(response as api.ClientUserInvitation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients.invitations;
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
      var arg_invitationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
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
          unittest.equals("/invitations/"),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_invitationId'),
        );

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
        var resp = convert.json.encode(buildClientUserInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_clientAccountId, arg_invitationId,
          $fields: arg_$fields);
      checkClientUserInvitation(response as api.ClientUserInvitation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients.invitations;
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
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
          unittest.equals("/invitations"),
        );
        pathOffset += 12;

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
        var resp =
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients.users;
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
      var arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
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
          unittest.equals("/users/"),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        var resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_clientAccountId, arg_userId,
          $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients.users;
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
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
          unittest.equals("/users"),
        );
        pathOffset += 6;

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
        var resp = convert.json.encode(buildListClientUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_clientAccountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClientUsersResponse(response as api.ListClientUsersResponse);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.clients.users;
      var arg_request = buildClientUser();
      var arg_accountId = 'foo';
      var arg_clientAccountId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ClientUser.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientUser(obj as api.ClientUser);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/clients/"),
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
          unittest.equals("/users/"),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        var resp = convert.json.encode(buildClientUser());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      var arg_request = buildCreative();
      var arg_accountId = 'foo';
      var arg_duplicateIdMode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCreative(obj as api.Creative);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives"),
        );
        pathOffset += 10;

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
          queryMap["duplicateIdMode"]!.first,
          unittest.equals(arg_duplicateIdMode),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_accountId,
          duplicateIdMode: arg_duplicateIdMode, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );

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
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_creativeId, $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      var arg_accountId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives"),
        );
        pathOffset += 10;

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
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCreativesResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      var arg_request = buildStopWatchingCreativeRequest();
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StopWatchingCreativeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopWatchingCreativeRequest(
            obj as api.StopWatchingCreativeRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
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
          unittest.equals(":stopWatching"),
        );
        pathOffset += 13;

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.stopWatching(
          arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      var arg_request = buildCreative();
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Creative.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCreative(obj as api.Creative);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_creativeId'),
        );

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
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkCreative(response as api.Creative);
    });

    unittest.test('method--watch', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.creatives;
      var arg_request = buildWatchCreativeRequest();
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.WatchCreativeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWatchCreativeRequest(obj as api.WatchCreativeRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
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
          unittest.equals(":watch"),
        );
        pathOffset += 6;

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
        var resp = convert.json.encode(buildEmpty());
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).accounts.creatives.dealAssociations;
      var arg_request = buildAddDealAssociationRequest();
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddDealAssociationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDealAssociationRequest(obj as api.AddDealAssociationRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
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
          unittest.equals("/dealAssociations:add"),
        );
        pathOffset += 21;

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.add(arg_request, arg_accountId, arg_creativeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).accounts.creatives.dealAssociations;
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
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
          unittest.equals("/dealAssociations"),
        );
        pathOffset += 17;

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
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDealAssociationsResponse());
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).accounts.creatives.dealAssociations;
      var arg_request = buildRemoveDealAssociationRequest();
      var arg_accountId = 'foo';
      var arg_creativeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveDealAssociationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDealAssociationRequest(
            obj as api.RemoveDealAssociationRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/creatives/"),
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
          unittest.equals("/dealAssociations:remove"),
        );
        pathOffset += 24;

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
        var resp = convert.json.encode(buildEmpty());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.finalizedProposals;
      var arg_accountId = 'foo';
      var arg_filter = 'foo';
      var arg_filterSyntax = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/finalizedProposals"),
        );
        pathOffset += 19;

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
          queryMap["filterSyntax"]!.first,
          unittest.equals(arg_filterSyntax),
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
        var resp = convert.json.encode(buildListProposalsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.finalizedProposals;
      var arg_request = buildPauseProposalDealsRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PauseProposalDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseProposalDealsRequest(obj as api.PauseProposalDealsRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/finalizedProposals/"),
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
          unittest.equals(":pause"),
        );
        pathOffset += 6;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pause(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--resume', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.finalizedProposals;
      var arg_request = buildResumeProposalDealsRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResumeProposalDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeProposalDealsRequest(obj as api.ResumeProposalDealsRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/finalizedProposals/"),
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
          unittest.equals(":resume"),
        );
        pathOffset += 7;

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
        var resp = convert.json.encode(buildProposal());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.products;
      var arg_accountId = 'foo';
      var arg_productId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/products/"),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );

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
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_productId, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.products;
      var arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/products"),
        );
        pathOffset += 9;

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
        var resp = convert.json.encode(buildListProductsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildAcceptProposalRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AcceptProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAcceptProposalRequest(obj as api.AcceptProposalRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
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
          unittest.equals(":accept"),
        );
        pathOffset += 7;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.accept(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--addNote', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildAddNoteRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddNoteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddNoteRequest(obj as api.AddNoteRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
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
          unittest.equals(":addNote"),
        );
        pathOffset += 8;

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
        var resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addNote(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--cancelNegotiation', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildCancelNegotiationRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelNegotiationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelNegotiationRequest(obj as api.CancelNegotiationRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
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
          unittest.equals(":cancelNegotiation"),
        );
        pathOffset += 18;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancelNegotiation(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--completeSetup', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildCompleteSetupRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CompleteSetupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteSetupRequest(obj as api.CompleteSetupRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
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
          unittest.equals(":completeSetup"),
        );
        pathOffset += 14;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.completeSetup(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildProposal();
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Proposal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProposal(obj as api.Proposal);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals"),
        );
        pathOffset += 10;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_proposalId, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_accountId = 'foo';
      var arg_filter = 'foo';
      var arg_filterSyntax = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals"),
        );
        pathOffset += 10;

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
          queryMap["filterSyntax"]!.first,
          unittest.equals(arg_filterSyntax),
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
        var resp = convert.json.encode(buildListProposalsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildPauseProposalRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PauseProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseProposalRequest(obj as api.PauseProposalRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
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
          unittest.equals(":pause"),
        );
        pathOffset += 6;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pause(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--resume', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildResumeProposalRequest();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResumeProposalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeProposalRequest(obj as api.ResumeProposalRequest);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
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
          unittest.equals(":resume"),
        );
        pathOffset += 7;

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
        var resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resume(
          arg_request, arg_accountId, arg_proposalId,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.proposals;
      var arg_request = buildProposal();
      var arg_accountId = 'foo';
      var arg_proposalId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Proposal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProposal(obj as api.Proposal);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/proposals/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_proposalId'),
        );

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
        var resp = convert.json.encode(buildProposal());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.publisherProfiles;
      var arg_accountId = 'foo';
      var arg_publisherProfileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/publisherProfiles/"),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_publisherProfileId'),
        );

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
        var resp = convert.json.encode(buildPublisherProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_publisherProfileId,
          $fields: arg_$fields);
      checkPublisherProfile(response as api.PublisherProfile);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).accounts.publisherProfiles;
      var arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("v2beta1/accounts/"),
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
          unittest.equals("/publisherProfiles"),
        );
        pathOffset += 18;

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
        var resp = convert.json.encode(buildListPublisherProfilesResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
      var arg_request = buildFilterSet();
      var arg_ownerName = 'foo';
      var arg_isTransient = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.FilterSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilterSet(obj as api.FilterSet);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
          queryMap["isTransient"]!.first,
          unittest.equals("$arg_isTransient"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_ownerName,
          isTransient: arg_isTransient, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets;
      var arg_ownerName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFilterSetsResponse());
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets.bidMetrics;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListBidMetricsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .bidResponseErrors;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListBidResponseErrorsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .bidResponsesWithoutBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp =
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBidRequests;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFilteredBidRequestsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFilteredBidsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBids
          .creatives;
      var arg_filterSetName = 'foo';
      var arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .filteredBids
          .details;
      var arg_filterSetName = 'foo';
      var arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .impressionMetrics;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListImpressionMetricsResponse());
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).bidders.accounts.filterSets.losingBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListLosingBidsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .accounts
          .filterSets
          .nonBillableWinningBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp =
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
      var arg_request = buildFilterSet();
      var arg_ownerName = 'foo';
      var arg_isTransient = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.FilterSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilterSet(obj as api.FilterSet);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
          queryMap["isTransient"]!.first,
          unittest.equals("$arg_isTransient"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_ownerName,
          isTransient: arg_isTransient, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildFilterSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFilterSet(response as api.FilterSet);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets;
      var arg_ownerName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFilterSetsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets.bidMetrics;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListBidMetricsResponse());
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.bidResponseErrors;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListBidResponseErrorsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .bidResponsesWithoutBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp =
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.filteredBidRequests;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFilteredBidRequestsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets.filteredBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFilteredBidsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .filteredBids
          .creatives;
      var arg_filterSetName = 'foo';
      var arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .filteredBids
          .details;
      var arg_filterSetName = 'foo';
      var arg_creativeStatusId = 42;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json
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
      var mock = HttpServerMock();
      var res =
          api.AdExchangeBuyerIIApi(mock).bidders.filterSets.impressionMetrics;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListImpressionMetricsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock).bidders.filterSets.losingBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListLosingBidsResponse());
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
      var mock = HttpServerMock();
      var res = api.AdExchangeBuyerIIApi(mock)
          .bidders
          .filterSets
          .nonBillableWinningBids;
      var arg_filterSetName = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v2beta1/"),
        );
        pathOffset += 8;
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
        var resp =
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
