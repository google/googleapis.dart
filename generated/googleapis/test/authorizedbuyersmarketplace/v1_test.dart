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

import 'package:googleapis/authorizedbuyersmarketplace/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterActivateClientRequest = 0;
api.ActivateClientRequest buildActivateClientRequest() {
  final o = api.ActivateClientRequest();
  buildCounterActivateClientRequest++;
  if (buildCounterActivateClientRequest < 3) {}
  buildCounterActivateClientRequest--;
  return o;
}

void checkActivateClientRequest(api.ActivateClientRequest o) {
  buildCounterActivateClientRequest++;
  if (buildCounterActivateClientRequest < 3) {}
  buildCounterActivateClientRequest--;
}

core.int buildCounterActivateClientUserRequest = 0;
api.ActivateClientUserRequest buildActivateClientUserRequest() {
  final o = api.ActivateClientUserRequest();
  buildCounterActivateClientUserRequest++;
  if (buildCounterActivateClientUserRequest < 3) {}
  buildCounterActivateClientUserRequest--;
  return o;
}

void checkActivateClientUserRequest(api.ActivateClientUserRequest o) {
  buildCounterActivateClientUserRequest++;
  if (buildCounterActivateClientUserRequest < 3) {}
  buildCounterActivateClientUserRequest--;
}

core.int buildCounterAdSize = 0;
api.AdSize buildAdSize() {
  final o = api.AdSize();
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    o.height = 'foo';
    o.type = 'foo';
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
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdSize--;
}

core.int buildCounterAddCreativeRequest = 0;
api.AddCreativeRequest buildAddCreativeRequest() {
  final o = api.AddCreativeRequest();
  buildCounterAddCreativeRequest++;
  if (buildCounterAddCreativeRequest < 3) {
    o.creative = 'foo';
  }
  buildCounterAddCreativeRequest--;
  return o;
}

void checkAddCreativeRequest(api.AddCreativeRequest o) {
  buildCounterAddCreativeRequest++;
  if (buildCounterAddCreativeRequest < 3) {
    unittest.expect(
      o.creative!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddCreativeRequest--;
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

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterAuctionPackage = 0;
api.AuctionPackage buildAuctionPackage() {
  final o = api.AuctionPackage();
  buildCounterAuctionPackage++;
  if (buildCounterAuctionPackage < 3) {
    o.createTime = 'foo';
    o.creator = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.subscribedClients = buildUnnamed0();
    o.updateTime = 'foo';
  }
  buildCounterAuctionPackage--;
  return o;
}

void checkAuctionPackage(api.AuctionPackage o) {
  buildCounterAuctionPackage++;
  if (buildCounterAuctionPackage < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.subscribedClients!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuctionPackage--;
}

core.List<api.UpdateDealRequest> buildUnnamed1() => [
      buildUpdateDealRequest(),
      buildUpdateDealRequest(),
    ];

void checkUnnamed1(core.List<api.UpdateDealRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateDealRequest(o[0]);
  checkUpdateDealRequest(o[1]);
}

core.int buildCounterBatchUpdateDealsRequest = 0;
api.BatchUpdateDealsRequest buildBatchUpdateDealsRequest() {
  final o = api.BatchUpdateDealsRequest();
  buildCounterBatchUpdateDealsRequest++;
  if (buildCounterBatchUpdateDealsRequest < 3) {
    o.requests = buildUnnamed1();
  }
  buildCounterBatchUpdateDealsRequest--;
  return o;
}

void checkBatchUpdateDealsRequest(api.BatchUpdateDealsRequest o) {
  buildCounterBatchUpdateDealsRequest++;
  if (buildCounterBatchUpdateDealsRequest < 3) {
    checkUnnamed1(o.requests!);
  }
  buildCounterBatchUpdateDealsRequest--;
}

core.List<api.Deal> buildUnnamed2() => [
      buildDeal(),
      buildDeal(),
    ];

void checkUnnamed2(core.List<api.Deal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeal(o[0]);
  checkDeal(o[1]);
}

core.int buildCounterBatchUpdateDealsResponse = 0;
api.BatchUpdateDealsResponse buildBatchUpdateDealsResponse() {
  final o = api.BatchUpdateDealsResponse();
  buildCounterBatchUpdateDealsResponse++;
  if (buildCounterBatchUpdateDealsResponse < 3) {
    o.deals = buildUnnamed2();
  }
  buildCounterBatchUpdateDealsResponse--;
  return o;
}

void checkBatchUpdateDealsResponse(api.BatchUpdateDealsResponse o) {
  buildCounterBatchUpdateDealsResponse++;
  if (buildCounterBatchUpdateDealsResponse < 3) {
    checkUnnamed2(o.deals!);
  }
  buildCounterBatchUpdateDealsResponse--;
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
    o.displayName = 'foo';
    o.name = 'foo';
    o.partnerClientId = 'foo';
    o.role = 'foo';
    o.sellerVisible = true;
    o.state = 'foo';
  }
  buildCounterClient--;
  return o;
}

void checkClient(api.Client o) {
  buildCounterClient++;
  if (buildCounterClient < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
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
    unittest.expect(o.sellerVisible!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterClient--;
}

core.int buildCounterClientUser = 0;
api.ClientUser buildClientUser() {
  final o = api.ClientUser();
  buildCounterClientUser++;
  if (buildCounterClientUser < 3) {
    o.email = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterClientUser--;
  return o;
}

void checkClientUser(api.ClientUser o) {
  buildCounterClientUser++;
  if (buildCounterClientUser < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientUser--;
}

core.int buildCounterContact = 0;
api.Contact buildContact() {
  final o = api.Contact();
  buildCounterContact++;
  if (buildCounterContact < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
  }
  buildCounterContact--;
  return o;
}

void checkContact(api.Contact o) {
  buildCounterContact++;
  if (buildCounterContact < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterContact--;
}

core.int buildCounterCreativeRequirements = 0;
api.CreativeRequirements buildCreativeRequirements() {
  final o = api.CreativeRequirements();
  buildCounterCreativeRequirements++;
  if (buildCounterCreativeRequirements < 3) {
    o.creativeFormat = 'foo';
    o.creativePreApprovalPolicy = 'foo';
    o.creativeSafeFrameCompatibility = 'foo';
    o.maxAdDurationMs = 'foo';
    o.programmaticCreativeSource = 'foo';
    o.skippableAdType = 'foo';
  }
  buildCounterCreativeRequirements--;
  return o;
}

void checkCreativeRequirements(api.CreativeRequirements o) {
  buildCounterCreativeRequirements++;
  if (buildCounterCreativeRequirements < 3) {
    unittest.expect(
      o.creativeFormat!,
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
      o.maxAdDurationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.programmaticCreativeSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skippableAdType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreativeRequirements--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterCriteriaTargeting = 0;
api.CriteriaTargeting buildCriteriaTargeting() {
  final o = api.CriteriaTargeting();
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    o.excludedCriteriaIds = buildUnnamed3();
    o.targetedCriteriaIds = buildUnnamed4();
  }
  buildCounterCriteriaTargeting--;
  return o;
}

void checkCriteriaTargeting(api.CriteriaTargeting o) {
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    checkUnnamed3(o.excludedCriteriaIds!);
    checkUnnamed4(o.targetedCriteriaIds!);
  }
  buildCounterCriteriaTargeting--;
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

core.List<api.DayPart> buildUnnamed5() => [
      buildDayPart(),
      buildDayPart(),
    ];

void checkUnnamed5(core.List<api.DayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDayPart(o[0]);
  checkDayPart(o[1]);
}

core.int buildCounterDayPartTargeting = 0;
api.DayPartTargeting buildDayPartTargeting() {
  final o = api.DayPartTargeting();
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    o.dayParts = buildUnnamed5();
    o.timeZoneType = 'foo';
  }
  buildCounterDayPartTargeting--;
  return o;
}

void checkDayPartTargeting(api.DayPartTargeting o) {
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    checkUnnamed5(o.dayParts!);
    unittest.expect(
      o.timeZoneType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDayPartTargeting--;
}

core.int buildCounterDeactivateClientRequest = 0;
api.DeactivateClientRequest buildDeactivateClientRequest() {
  final o = api.DeactivateClientRequest();
  buildCounterDeactivateClientRequest++;
  if (buildCounterDeactivateClientRequest < 3) {}
  buildCounterDeactivateClientRequest--;
  return o;
}

void checkDeactivateClientRequest(api.DeactivateClientRequest o) {
  buildCounterDeactivateClientRequest++;
  if (buildCounterDeactivateClientRequest < 3) {}
  buildCounterDeactivateClientRequest--;
}

core.int buildCounterDeactivateClientUserRequest = 0;
api.DeactivateClientUserRequest buildDeactivateClientUserRequest() {
  final o = api.DeactivateClientUserRequest();
  buildCounterDeactivateClientUserRequest++;
  if (buildCounterDeactivateClientUserRequest < 3) {}
  buildCounterDeactivateClientUserRequest--;
  return o;
}

void checkDeactivateClientUserRequest(api.DeactivateClientUserRequest o) {
  buildCounterDeactivateClientUserRequest++;
  if (buildCounterDeactivateClientUserRequest < 3) {}
  buildCounterDeactivateClientUserRequest--;
}

core.int buildCounterDeal = 0;
api.Deal buildDeal() {
  final o = api.Deal();
  buildCounterDeal++;
  if (buildCounterDeal < 3) {
    o.billedBuyer = 'foo';
    o.buyer = 'foo';
    o.client = 'foo';
    o.createTime = 'foo';
    o.creativeRequirements = buildCreativeRequirements();
    o.dealType = 'foo';
    o.deliveryControl = buildDeliveryControl();
    o.description = 'foo';
    o.displayName = 'foo';
    o.estimatedGrossSpend = buildMoney();
    o.flightEndTime = 'foo';
    o.flightStartTime = 'foo';
    o.name = 'foo';
    o.preferredDealTerms = buildPreferredDealTerms();
    o.privateAuctionTerms = buildPrivateAuctionTerms();
    o.programmaticGuaranteedTerms = buildProgrammaticGuaranteedTerms();
    o.proposalRevision = 'foo';
    o.publisherProfile = 'foo';
    o.sellerTimeZone = buildTimeZone();
    o.targeting = buildMarketplaceTargeting();
    o.updateTime = 'foo';
  }
  buildCounterDeal--;
  return o;
}

void checkDeal(api.Deal o) {
  buildCounterDeal++;
  if (buildCounterDeal < 3) {
    unittest.expect(
      o.billedBuyer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buyer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.client!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkCreativeRequirements(o.creativeRequirements!);
    unittest.expect(
      o.dealType!,
      unittest.equals('foo'),
    );
    checkDeliveryControl(o.deliveryControl!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkMoney(o.estimatedGrossSpend!);
    unittest.expect(
      o.flightEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flightStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPreferredDealTerms(o.preferredDealTerms!);
    checkPrivateAuctionTerms(o.privateAuctionTerms!);
    checkProgrammaticGuaranteedTerms(o.programmaticGuaranteedTerms!);
    unittest.expect(
      o.proposalRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherProfile!,
      unittest.equals('foo'),
    );
    checkTimeZone(o.sellerTimeZone!);
    checkMarketplaceTargeting(o.targeting!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeal--;
}

core.int buildCounterDealPausingInfo = 0;
api.DealPausingInfo buildDealPausingInfo() {
  final o = api.DealPausingInfo();
  buildCounterDealPausingInfo++;
  if (buildCounterDealPausingInfo < 3) {
    o.pauseReason = 'foo';
    o.pauseRole = 'foo';
    o.pausingConsented = true;
  }
  buildCounterDealPausingInfo--;
  return o;
}

void checkDealPausingInfo(api.DealPausingInfo o) {
  buildCounterDealPausingInfo++;
  if (buildCounterDealPausingInfo < 3) {
    unittest.expect(
      o.pauseReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pauseRole!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pausingConsented!, unittest.isTrue);
  }
  buildCounterDealPausingInfo--;
}

core.List<api.FrequencyCap> buildUnnamed6() => [
      buildFrequencyCap(),
      buildFrequencyCap(),
    ];

void checkUnnamed6(core.List<api.FrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrequencyCap(o[0]);
  checkFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
api.DeliveryControl buildDeliveryControl() {
  final o = api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.companionDeliveryType = 'foo';
    o.creativeRotationType = 'foo';
    o.deliveryRateType = 'foo';
    o.frequencyCap = buildUnnamed6();
    o.roadblockingType = 'foo';
  }
  buildCounterDeliveryControl--;
  return o;
}

void checkDeliveryControl(api.DeliveryControl o) {
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    unittest.expect(
      o.companionDeliveryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creativeRotationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryRateType!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.frequencyCap!);
    unittest.expect(
      o.roadblockingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryControl--;
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

core.int buildCounterFinalizedDeal = 0;
api.FinalizedDeal buildFinalizedDeal() {
  final o = api.FinalizedDeal();
  buildCounterFinalizedDeal++;
  if (buildCounterFinalizedDeal < 3) {
    o.deal = buildDeal();
    o.dealPausingInfo = buildDealPausingInfo();
    o.dealServingStatus = 'foo';
    o.name = 'foo';
    o.readyToServe = true;
    o.rtbMetrics = buildRtbMetrics();
  }
  buildCounterFinalizedDeal--;
  return o;
}

void checkFinalizedDeal(api.FinalizedDeal o) {
  buildCounterFinalizedDeal++;
  if (buildCounterFinalizedDeal < 3) {
    checkDeal(o.deal!);
    checkDealPausingInfo(o.dealPausingInfo!);
    unittest.expect(
      o.dealServingStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.readyToServe!, unittest.isTrue);
    checkRtbMetrics(o.rtbMetrics!);
  }
  buildCounterFinalizedDeal--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterFirstPartyMobileApplicationTargeting = 0;
api.FirstPartyMobileApplicationTargeting
    buildFirstPartyMobileApplicationTargeting() {
  final o = api.FirstPartyMobileApplicationTargeting();
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    o.excludedAppIds = buildUnnamed7();
    o.targetedAppIds = buildUnnamed8();
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
  return o;
}

void checkFirstPartyMobileApplicationTargeting(
    api.FirstPartyMobileApplicationTargeting o) {
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    checkUnnamed7(o.excludedAppIds!);
    checkUnnamed8(o.targetedAppIds!);
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  final o = api.FrequencyCap();
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.timeUnitType = 'foo';
    o.timeUnitsCount = 42;
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
      o.timeUnitType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeUnitsCount!,
      unittest.equals(42),
    );
  }
  buildCounterFrequencyCap--;
}

core.List<api.AdSize> buildUnnamed9() => [
      buildAdSize(),
      buildAdSize(),
    ];

void checkUnnamed9(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.List<api.AdSize> buildUnnamed10() => [
      buildAdSize(),
      buildAdSize(),
    ];

void checkUnnamed10(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.int buildCounterInventorySizeTargeting = 0;
api.InventorySizeTargeting buildInventorySizeTargeting() {
  final o = api.InventorySizeTargeting();
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    o.excludedInventorySizes = buildUnnamed9();
    o.targetedInventorySizes = buildUnnamed10();
  }
  buildCounterInventorySizeTargeting--;
  return o;
}

void checkInventorySizeTargeting(api.InventorySizeTargeting o) {
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    checkUnnamed9(o.excludedInventorySizes!);
    checkUnnamed10(o.targetedInventorySizes!);
  }
  buildCounterInventorySizeTargeting--;
}

core.List<api.AuctionPackage> buildUnnamed11() => [
      buildAuctionPackage(),
      buildAuctionPackage(),
    ];

void checkUnnamed11(core.List<api.AuctionPackage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuctionPackage(o[0]);
  checkAuctionPackage(o[1]);
}

core.int buildCounterListAuctionPackagesResponse = 0;
api.ListAuctionPackagesResponse buildListAuctionPackagesResponse() {
  final o = api.ListAuctionPackagesResponse();
  buildCounterListAuctionPackagesResponse++;
  if (buildCounterListAuctionPackagesResponse < 3) {
    o.auctionPackages = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuctionPackagesResponse--;
  return o;
}

void checkListAuctionPackagesResponse(api.ListAuctionPackagesResponse o) {
  buildCounterListAuctionPackagesResponse++;
  if (buildCounterListAuctionPackagesResponse < 3) {
    checkUnnamed11(o.auctionPackages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAuctionPackagesResponse--;
}

core.List<api.ClientUser> buildUnnamed12() => [
      buildClientUser(),
      buildClientUser(),
    ];

void checkUnnamed12(core.List<api.ClientUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUser(o[0]);
  checkClientUser(o[1]);
}

core.int buildCounterListClientUsersResponse = 0;
api.ListClientUsersResponse buildListClientUsersResponse() {
  final o = api.ListClientUsersResponse();
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    o.clientUsers = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientUsersResponse--;
  return o;
}

void checkListClientUsersResponse(api.ListClientUsersResponse o) {
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    checkUnnamed12(o.clientUsers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClientUsersResponse--;
}

core.List<api.Client> buildUnnamed13() => [
      buildClient(),
      buildClient(),
    ];

void checkUnnamed13(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0]);
  checkClient(o[1]);
}

core.int buildCounterListClientsResponse = 0;
api.ListClientsResponse buildListClientsResponse() {
  final o = api.ListClientsResponse();
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    o.clients = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterListClientsResponse--;
  return o;
}

void checkListClientsResponse(api.ListClientsResponse o) {
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    checkUnnamed13(o.clients!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListClientsResponse--;
}

core.List<api.Deal> buildUnnamed14() => [
      buildDeal(),
      buildDeal(),
    ];

void checkUnnamed14(core.List<api.Deal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeal(o[0]);
  checkDeal(o[1]);
}

core.int buildCounterListDealsResponse = 0;
api.ListDealsResponse buildListDealsResponse() {
  final o = api.ListDealsResponse();
  buildCounterListDealsResponse++;
  if (buildCounterListDealsResponse < 3) {
    o.deals = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterListDealsResponse--;
  return o;
}

void checkListDealsResponse(api.ListDealsResponse o) {
  buildCounterListDealsResponse++;
  if (buildCounterListDealsResponse < 3) {
    checkUnnamed14(o.deals!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDealsResponse--;
}

core.List<api.FinalizedDeal> buildUnnamed15() => [
      buildFinalizedDeal(),
      buildFinalizedDeal(),
    ];

void checkUnnamed15(core.List<api.FinalizedDeal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFinalizedDeal(o[0]);
  checkFinalizedDeal(o[1]);
}

core.int buildCounterListFinalizedDealsResponse = 0;
api.ListFinalizedDealsResponse buildListFinalizedDealsResponse() {
  final o = api.ListFinalizedDealsResponse();
  buildCounterListFinalizedDealsResponse++;
  if (buildCounterListFinalizedDealsResponse < 3) {
    o.finalizedDeals = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListFinalizedDealsResponse--;
  return o;
}

void checkListFinalizedDealsResponse(api.ListFinalizedDealsResponse o) {
  buildCounterListFinalizedDealsResponse++;
  if (buildCounterListFinalizedDealsResponse < 3) {
    checkUnnamed15(o.finalizedDeals!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFinalizedDealsResponse--;
}

core.List<api.Proposal> buildUnnamed16() => [
      buildProposal(),
      buildProposal(),
    ];

void checkUnnamed16(core.List<api.Proposal> o) {
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
    o.proposals = buildUnnamed16();
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
    checkUnnamed16(o.proposals!);
  }
  buildCounterListProposalsResponse--;
}

core.List<api.PublisherProfile> buildUnnamed17() => [
      buildPublisherProfile(),
      buildPublisherProfile(),
    ];

void checkUnnamed17(core.List<api.PublisherProfile> o) {
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
    o.publisherProfiles = buildUnnamed17();
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
    checkUnnamed17(o.publisherProfiles!);
  }
  buildCounterListPublisherProfilesResponse--;
}

core.int buildCounterMarketplaceTargeting = 0;
api.MarketplaceTargeting buildMarketplaceTargeting() {
  final o = api.MarketplaceTargeting();
  buildCounterMarketplaceTargeting++;
  if (buildCounterMarketplaceTargeting < 3) {
    o.daypartTargeting = buildDayPartTargeting();
    o.geoTargeting = buildCriteriaTargeting();
    o.inventorySizeTargeting = buildInventorySizeTargeting();
    o.placementTargeting = buildPlacementTargeting();
    o.technologyTargeting = buildTechnologyTargeting();
    o.userListTargeting = buildCriteriaTargeting();
    o.videoTargeting = buildVideoTargeting();
  }
  buildCounterMarketplaceTargeting--;
  return o;
}

void checkMarketplaceTargeting(api.MarketplaceTargeting o) {
  buildCounterMarketplaceTargeting++;
  if (buildCounterMarketplaceTargeting < 3) {
    checkDayPartTargeting(o.daypartTargeting!);
    checkCriteriaTargeting(o.geoTargeting!);
    checkInventorySizeTargeting(o.inventorySizeTargeting!);
    checkPlacementTargeting(o.placementTargeting!);
    checkTechnologyTargeting(o.technologyTargeting!);
    checkCriteriaTargeting(o.userListTargeting!);
    checkVideoTargeting(o.videoTargeting!);
  }
  buildCounterMarketplaceTargeting--;
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

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.createTime = 'foo';
    o.creatorRole = 'foo';
    o.note = 'foo';
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

core.int buildCounterPauseFinalizedDealRequest = 0;
api.PauseFinalizedDealRequest buildPauseFinalizedDealRequest() {
  final o = api.PauseFinalizedDealRequest();
  buildCounterPauseFinalizedDealRequest++;
  if (buildCounterPauseFinalizedDealRequest < 3) {
    o.reason = 'foo';
  }
  buildCounterPauseFinalizedDealRequest--;
  return o;
}

void checkPauseFinalizedDealRequest(api.PauseFinalizedDealRequest o) {
  buildCounterPauseFinalizedDealRequest++;
  if (buildCounterPauseFinalizedDealRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterPauseFinalizedDealRequest--;
}

core.int buildCounterPlacementTargeting = 0;
api.PlacementTargeting buildPlacementTargeting() {
  final o = api.PlacementTargeting();
  buildCounterPlacementTargeting++;
  if (buildCounterPlacementTargeting < 3) {
    o.mobileApplicationTargeting = buildMobileApplicationTargeting();
    o.uriTargeting = buildUriTargeting();
  }
  buildCounterPlacementTargeting--;
  return o;
}

void checkPlacementTargeting(api.PlacementTargeting o) {
  buildCounterPlacementTargeting++;
  if (buildCounterPlacementTargeting < 3) {
    checkMobileApplicationTargeting(o.mobileApplicationTargeting!);
    checkUriTargeting(o.uriTargeting!);
  }
  buildCounterPlacementTargeting--;
}

core.int buildCounterPreferredDealTerms = 0;
api.PreferredDealTerms buildPreferredDealTerms() {
  final o = api.PreferredDealTerms();
  buildCounterPreferredDealTerms++;
  if (buildCounterPreferredDealTerms < 3) {
    o.fixedPrice = buildPrice();
  }
  buildCounterPreferredDealTerms--;
  return o;
}

void checkPreferredDealTerms(api.PreferredDealTerms o) {
  buildCounterPreferredDealTerms++;
  if (buildCounterPreferredDealTerms < 3) {
    checkPrice(o.fixedPrice!);
  }
  buildCounterPreferredDealTerms--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amount = buildMoney();
    o.type = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    checkMoney(o.amount!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.int buildCounterPrivateAuctionTerms = 0;
api.PrivateAuctionTerms buildPrivateAuctionTerms() {
  final o = api.PrivateAuctionTerms();
  buildCounterPrivateAuctionTerms++;
  if (buildCounterPrivateAuctionTerms < 3) {
    o.floorPrice = buildPrice();
    o.openAuctionAllowed = true;
  }
  buildCounterPrivateAuctionTerms--;
  return o;
}

void checkPrivateAuctionTerms(api.PrivateAuctionTerms o) {
  buildCounterPrivateAuctionTerms++;
  if (buildCounterPrivateAuctionTerms < 3) {
    checkPrice(o.floorPrice!);
    unittest.expect(o.openAuctionAllowed!, unittest.isTrue);
  }
  buildCounterPrivateAuctionTerms--;
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

core.int buildCounterProgrammaticGuaranteedTerms = 0;
api.ProgrammaticGuaranteedTerms buildProgrammaticGuaranteedTerms() {
  final o = api.ProgrammaticGuaranteedTerms();
  buildCounterProgrammaticGuaranteedTerms++;
  if (buildCounterProgrammaticGuaranteedTerms < 3) {
    o.fixedPrice = buildPrice();
    o.guaranteedLooks = 'foo';
    o.impressionCap = 'foo';
    o.minimumDailyLooks = 'foo';
    o.percentShareOfVoice = 'foo';
    o.reservationType = 'foo';
  }
  buildCounterProgrammaticGuaranteedTerms--;
  return o;
}

void checkProgrammaticGuaranteedTerms(api.ProgrammaticGuaranteedTerms o) {
  buildCounterProgrammaticGuaranteedTerms++;
  if (buildCounterProgrammaticGuaranteedTerms < 3) {
    checkPrice(o.fixedPrice!);
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
  buildCounterProgrammaticGuaranteedTerms--;
}

core.List<api.Contact> buildUnnamed18() => [
      buildContact(),
      buildContact(),
    ];

void checkUnnamed18(core.List<api.Contact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContact(o[0]);
  checkContact(o[1]);
}

core.List<api.Note> buildUnnamed19() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed19(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.List<api.Contact> buildUnnamed20() => [
      buildContact(),
      buildContact(),
    ];

void checkUnnamed20(core.List<api.Contact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContact(o[0]);
  checkContact(o[1]);
}

core.int buildCounterProposal = 0;
api.Proposal buildProposal() {
  final o = api.Proposal();
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    o.billedBuyer = 'foo';
    o.buyer = 'foo';
    o.buyerContacts = buildUnnamed18();
    o.buyerPrivateData = buildPrivateData();
    o.client = 'foo';
    o.dealType = 'foo';
    o.displayName = 'foo';
    o.isRenegotiating = true;
    o.lastUpdaterOrCommentorRole = 'foo';
    o.name = 'foo';
    o.notes = buildUnnamed19();
    o.originatorRole = 'foo';
    o.pausingConsented = true;
    o.proposalRevision = 'foo';
    o.publisherProfile = 'foo';
    o.sellerContacts = buildUnnamed20();
    o.state = 'foo';
    o.termsAndConditions = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterProposal--;
  return o;
}

void checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    unittest.expect(
      o.billedBuyer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buyer!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.buyerContacts!);
    checkPrivateData(o.buyerPrivateData!);
    unittest.expect(
      o.client!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dealType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRenegotiating!, unittest.isTrue);
    unittest.expect(
      o.lastUpdaterOrCommentorRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.notes!);
    unittest.expect(
      o.originatorRole!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pausingConsented!, unittest.isTrue);
    unittest.expect(
      o.proposalRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherProfile!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.sellerContacts!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<api.PublisherProfileMobileApplication> buildUnnamed22() => [
      buildPublisherProfileMobileApplication(),
      buildPublisherProfileMobileApplication(),
    ];

void checkUnnamed22(core.List<api.PublisherProfileMobileApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfileMobileApplication(o[0]);
  checkPublisherProfileMobileApplication(o[1]);
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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
    o.directDealsContact = 'foo';
    o.displayName = 'foo';
    o.domains = buildUnnamed21();
    o.isParent = true;
    o.logoUrl = 'foo';
    o.mediaKitUrl = 'foo';
    o.mobileApps = buildUnnamed22();
    o.name = 'foo';
    o.overview = 'foo';
    o.pitchStatement = 'foo';
    o.programmaticDealsContact = 'foo';
    o.publisherCode = 'foo';
    o.samplePageUrl = 'foo';
    o.topHeadlines = buildUnnamed23();
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
      o.directDealsContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.domains!);
    unittest.expect(o.isParent!, unittest.isTrue);
    unittest.expect(
      o.logoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaKitUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.mobileApps!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pitchStatement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.programmaticDealsContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.samplePageUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.topHeadlines!);
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

core.int buildCounterResumeFinalizedDealRequest = 0;
api.ResumeFinalizedDealRequest buildResumeFinalizedDealRequest() {
  final o = api.ResumeFinalizedDealRequest();
  buildCounterResumeFinalizedDealRequest++;
  if (buildCounterResumeFinalizedDealRequest < 3) {}
  buildCounterResumeFinalizedDealRequest--;
  return o;
}

void checkResumeFinalizedDealRequest(api.ResumeFinalizedDealRequest o) {
  buildCounterResumeFinalizedDealRequest++;
  if (buildCounterResumeFinalizedDealRequest < 3) {}
  buildCounterResumeFinalizedDealRequest--;
}

core.int buildCounterRtbMetrics = 0;
api.RtbMetrics buildRtbMetrics() {
  final o = api.RtbMetrics();
  buildCounterRtbMetrics++;
  if (buildCounterRtbMetrics < 3) {
    o.adImpressions7Days = 'foo';
    o.bidRate7Days = 42.0;
    o.bidRequests7Days = 'foo';
    o.bids7Days = 'foo';
    o.filteredBidRate7Days = 42.0;
    o.mustBidRateCurrentMonth = 42.0;
  }
  buildCounterRtbMetrics--;
  return o;
}

void checkRtbMetrics(api.RtbMetrics o) {
  buildCounterRtbMetrics++;
  if (buildCounterRtbMetrics < 3) {
    unittest.expect(
      o.adImpressions7Days!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bidRate7Days!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bidRequests7Days!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bids7Days!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filteredBidRate7Days!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.mustBidRateCurrentMonth!,
      unittest.equals(42.0),
    );
  }
  buildCounterRtbMetrics--;
}

core.List<api.Contact> buildUnnamed24() => [
      buildContact(),
      buildContact(),
    ];

void checkUnnamed24(core.List<api.Contact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContact(o[0]);
  checkContact(o[1]);
}

core.int buildCounterSendRfpRequest = 0;
api.SendRfpRequest buildSendRfpRequest() {
  final o = api.SendRfpRequest();
  buildCounterSendRfpRequest++;
  if (buildCounterSendRfpRequest < 3) {
    o.buyerContacts = buildUnnamed24();
    o.client = 'foo';
    o.displayName = 'foo';
    o.estimatedGrossSpend = buildMoney();
    o.flightEndTime = 'foo';
    o.flightStartTime = 'foo';
    o.geoTargeting = buildCriteriaTargeting();
    o.inventorySizeTargeting = buildInventorySizeTargeting();
    o.note = 'foo';
    o.preferredDealTerms = buildPreferredDealTerms();
    o.programmaticGuaranteedTerms = buildProgrammaticGuaranteedTerms();
    o.publisherProfile = 'foo';
  }
  buildCounterSendRfpRequest--;
  return o;
}

void checkSendRfpRequest(api.SendRfpRequest o) {
  buildCounterSendRfpRequest++;
  if (buildCounterSendRfpRequest < 3) {
    checkUnnamed24(o.buyerContacts!);
    unittest.expect(
      o.client!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkMoney(o.estimatedGrossSpend!);
    unittest.expect(
      o.flightEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flightStartTime!,
      unittest.equals('foo'),
    );
    checkCriteriaTargeting(o.geoTargeting!);
    checkInventorySizeTargeting(o.inventorySizeTargeting!);
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    checkPreferredDealTerms(o.preferredDealTerms!);
    checkProgrammaticGuaranteedTerms(o.programmaticGuaranteedTerms!);
    unittest.expect(
      o.publisherProfile!,
      unittest.equals('foo'),
    );
  }
  buildCounterSendRfpRequest--;
}

core.int buildCounterSetReadyToServeRequest = 0;
api.SetReadyToServeRequest buildSetReadyToServeRequest() {
  final o = api.SetReadyToServeRequest();
  buildCounterSetReadyToServeRequest++;
  if (buildCounterSetReadyToServeRequest < 3) {}
  buildCounterSetReadyToServeRequest--;
  return o;
}

void checkSetReadyToServeRequest(api.SetReadyToServeRequest o) {
  buildCounterSetReadyToServeRequest++;
  if (buildCounterSetReadyToServeRequest < 3) {}
  buildCounterSetReadyToServeRequest--;
}

core.int buildCounterSubscribeAuctionPackageRequest = 0;
api.SubscribeAuctionPackageRequest buildSubscribeAuctionPackageRequest() {
  final o = api.SubscribeAuctionPackageRequest();
  buildCounterSubscribeAuctionPackageRequest++;
  if (buildCounterSubscribeAuctionPackageRequest < 3) {}
  buildCounterSubscribeAuctionPackageRequest--;
  return o;
}

void checkSubscribeAuctionPackageRequest(api.SubscribeAuctionPackageRequest o) {
  buildCounterSubscribeAuctionPackageRequest++;
  if (buildCounterSubscribeAuctionPackageRequest < 3) {}
  buildCounterSubscribeAuctionPackageRequest--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.int buildCounterSubscribeClientsRequest = 0;
api.SubscribeClientsRequest buildSubscribeClientsRequest() {
  final o = api.SubscribeClientsRequest();
  buildCounterSubscribeClientsRequest++;
  if (buildCounterSubscribeClientsRequest < 3) {
    o.clients = buildUnnamed25();
  }
  buildCounterSubscribeClientsRequest--;
  return o;
}

void checkSubscribeClientsRequest(api.SubscribeClientsRequest o) {
  buildCounterSubscribeClientsRequest++;
  if (buildCounterSubscribeClientsRequest < 3) {
    checkUnnamed25(o.clients!);
  }
  buildCounterSubscribeClientsRequest--;
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

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeZone--;
}

core.int buildCounterUnsubscribeAuctionPackageRequest = 0;
api.UnsubscribeAuctionPackageRequest buildUnsubscribeAuctionPackageRequest() {
  final o = api.UnsubscribeAuctionPackageRequest();
  buildCounterUnsubscribeAuctionPackageRequest++;
  if (buildCounterUnsubscribeAuctionPackageRequest < 3) {}
  buildCounterUnsubscribeAuctionPackageRequest--;
  return o;
}

void checkUnsubscribeAuctionPackageRequest(
    api.UnsubscribeAuctionPackageRequest o) {
  buildCounterUnsubscribeAuctionPackageRequest++;
  if (buildCounterUnsubscribeAuctionPackageRequest < 3) {}
  buildCounterUnsubscribeAuctionPackageRequest--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterUnsubscribeClientsRequest = 0;
api.UnsubscribeClientsRequest buildUnsubscribeClientsRequest() {
  final o = api.UnsubscribeClientsRequest();
  buildCounterUnsubscribeClientsRequest++;
  if (buildCounterUnsubscribeClientsRequest < 3) {
    o.clients = buildUnnamed26();
  }
  buildCounterUnsubscribeClientsRequest--;
  return o;
}

void checkUnsubscribeClientsRequest(api.UnsubscribeClientsRequest o) {
  buildCounterUnsubscribeClientsRequest++;
  if (buildCounterUnsubscribeClientsRequest < 3) {
    checkUnnamed26(o.clients!);
  }
  buildCounterUnsubscribeClientsRequest--;
}

core.int buildCounterUpdateDealRequest = 0;
api.UpdateDealRequest buildUpdateDealRequest() {
  final o = api.UpdateDealRequest();
  buildCounterUpdateDealRequest++;
  if (buildCounterUpdateDealRequest < 3) {
    o.deal = buildDeal();
    o.updateMask = 'foo';
  }
  buildCounterUpdateDealRequest--;
  return o;
}

void checkUpdateDealRequest(api.UpdateDealRequest o) {
  buildCounterUpdateDealRequest++;
  if (buildCounterUpdateDealRequest < 3) {
    checkDeal(o.deal!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDealRequest--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterUriTargeting = 0;
api.UriTargeting buildUriTargeting() {
  final o = api.UriTargeting();
  buildCounterUriTargeting++;
  if (buildCounterUriTargeting < 3) {
    o.excludedUris = buildUnnamed27();
    o.targetedUris = buildUnnamed28();
  }
  buildCounterUriTargeting--;
  return o;
}

void checkUriTargeting(api.UriTargeting o) {
  buildCounterUriTargeting++;
  if (buildCounterUriTargeting < 3) {
    checkUnnamed27(o.excludedUris!);
    checkUnnamed28(o.targetedUris!);
  }
  buildCounterUriTargeting--;
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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
    o.excludedPositionTypes = buildUnnamed29();
    o.targetedPositionTypes = buildUnnamed30();
  }
  buildCounterVideoTargeting--;
  return o;
}

void checkVideoTargeting(api.VideoTargeting o) {
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    checkUnnamed29(o.excludedPositionTypes!);
    checkUnnamed30(o.targetedPositionTypes!);
  }
  buildCounterVideoTargeting--;
}

void main() {
  unittest.group('obj-schema-AcceptProposalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceptProposalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceptProposalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceptProposalRequest(od);
    });
  });

  unittest.group('obj-schema-ActivateClientRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateClientRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateClientRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateClientRequest(od);
    });
  });

  unittest.group('obj-schema-ActivateClientUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateClientUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateClientUserRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateClientUserRequest(od);
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

  unittest.group('obj-schema-AddCreativeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddCreativeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddCreativeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddCreativeRequest(od);
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

  unittest.group('obj-schema-AuctionPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuctionPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuctionPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuctionPackage(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDealsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateDealsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateDealsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateDealsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateDealsResponse(od);
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

  unittest.group('obj-schema-Contact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Contact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContact(od);
    });
  });

  unittest.group('obj-schema-CreativeRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreativeRequirements(od);
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

  unittest.group('obj-schema-DeactivateClientRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateClientRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateClientRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeactivateClientRequest(od);
    });
  });

  unittest.group('obj-schema-DeactivateClientUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateClientUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateClientUserRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeactivateClientUserRequest(od);
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

  unittest.group('obj-schema-DealPausingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDealPausingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DealPausingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDealPausingInfo(od);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FinalizedDeal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinalizedDeal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinalizedDeal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinalizedDeal(od);
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

  unittest.group('obj-schema-InventorySizeTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventorySizeTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventorySizeTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInventorySizeTargeting(od);
    });
  });

  unittest.group('obj-schema-ListAuctionPackagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuctionPackagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuctionPackagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAuctionPackagesResponse(od);
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

  unittest.group('obj-schema-ListDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDealsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFinalizedDealsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFinalizedDealsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFinalizedDealsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFinalizedDealsResponse(od);
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

  unittest.group('obj-schema-MarketplaceTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketplaceTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketplaceTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMarketplaceTargeting(od);
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

  unittest.group('obj-schema-PauseFinalizedDealRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseFinalizedDealRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseFinalizedDealRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseFinalizedDealRequest(od);
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

  unittest.group('obj-schema-PreferredDealTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreferredDealTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreferredDealTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreferredDealTerms(od);
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

  unittest.group('obj-schema-PrivateAuctionTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateAuctionTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateAuctionTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateAuctionTerms(od);
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

  unittest.group('obj-schema-ProgrammaticGuaranteedTerms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProgrammaticGuaranteedTerms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProgrammaticGuaranteedTerms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProgrammaticGuaranteedTerms(od);
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

  unittest.group('obj-schema-ResumeFinalizedDealRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeFinalizedDealRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeFinalizedDealRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeFinalizedDealRequest(od);
    });
  });

  unittest.group('obj-schema-RtbMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRtbMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RtbMetrics.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRtbMetrics(od);
    });
  });

  unittest.group('obj-schema-SendRfpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendRfpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendRfpRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendRfpRequest(od);
    });
  });

  unittest.group('obj-schema-SetReadyToServeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetReadyToServeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetReadyToServeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetReadyToServeRequest(od);
    });
  });

  unittest.group('obj-schema-SubscribeAuctionPackageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscribeAuctionPackageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscribeAuctionPackageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscribeAuctionPackageRequest(od);
    });
  });

  unittest.group('obj-schema-SubscribeClientsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscribeClientsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscribeClientsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscribeClientsRequest(od);
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

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeZone.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeZone(od);
    });
  });

  unittest.group('obj-schema-UnsubscribeAuctionPackageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnsubscribeAuctionPackageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnsubscribeAuctionPackageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnsubscribeAuctionPackageRequest(od);
    });
  });

  unittest.group('obj-schema-UnsubscribeClientsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnsubscribeClientsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnsubscribeClientsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnsubscribeClientsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDealRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDealRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDealRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDealRequest(od);
    });
  });

  unittest.group('obj-schema-UriTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUriTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UriTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUriTargeting(od);
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

  unittest.group('resource-BiddersFinalizedDealsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).bidders.finalizedDeals;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListFinalizedDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFinalizedDealsResponse(
          response as api.ListFinalizedDealsResponse);
    });
  });

  unittest.group('resource-BuyersAuctionPackagesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.auctionPackages;
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
        final resp = convert.json.encode(buildAuctionPackage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAuctionPackage(response as api.AuctionPackage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.auctionPackages;
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
        final resp = convert.json.encode(buildListAuctionPackagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAuctionPackagesResponse(
          response as api.ListAuctionPackagesResponse);
    });

    unittest.test('method--subscribe', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.auctionPackages;
      final arg_request = buildSubscribeAuctionPackageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscribeAuctionPackageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscribeAuctionPackageRequest(obj);

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
        final resp = convert.json.encode(buildAuctionPackage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.subscribe(arg_request, arg_name, $fields: arg_$fields);
      checkAuctionPackage(response as api.AuctionPackage);
    });

    unittest.test('method--subscribeClients', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.auctionPackages;
      final arg_request = buildSubscribeClientsRequest();
      final arg_auctionPackage = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscribeClientsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscribeClientsRequest(obj);

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
        final resp = convert.json.encode(buildAuctionPackage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.subscribeClients(
          arg_request, arg_auctionPackage,
          $fields: arg_$fields);
      checkAuctionPackage(response as api.AuctionPackage);
    });

    unittest.test('method--unsubscribe', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.auctionPackages;
      final arg_request = buildUnsubscribeAuctionPackageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnsubscribeAuctionPackageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnsubscribeAuctionPackageRequest(obj);

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
        final resp = convert.json.encode(buildAuctionPackage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unsubscribe(arg_request, arg_name, $fields: arg_$fields);
      checkAuctionPackage(response as api.AuctionPackage);
    });

    unittest.test('method--unsubscribeClients', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.auctionPackages;
      final arg_request = buildUnsubscribeClientsRequest();
      final arg_auctionPackage = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnsubscribeClientsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnsubscribeClientsRequest(obj);

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
        final resp = convert.json.encode(buildAuctionPackage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.unsubscribeClients(
          arg_request, arg_auctionPackage,
          $fields: arg_$fields);
      checkAuctionPackage(response as api.AuctionPackage);
    });
  });

  unittest.group('resource-BuyersClientsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients;
      final arg_request = buildActivateClientRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateClientRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateClientRequest(obj);

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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients;
      final arg_request = buildClient();
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients;
      final arg_request = buildDeactivateClientRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeactivateClientRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeactivateClientRequest(obj);

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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deactivate(arg_request, arg_name, $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients;
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
        final resp = convert.json.encode(buildClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkClient(response as api.Client);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients;
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
        final resp = convert.json.encode(buildListClientsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClientsResponse(response as api.ListClientsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients;
      final arg_request = buildClient();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
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
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkClient(response as api.Client);
    });
  });

  unittest.group('resource-BuyersClientsUsersResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients.users;
      final arg_request = buildActivateClientUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateClientUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateClientUserRequest(obj);

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
        final resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients.users;
      final arg_request = buildClientUser();
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients.users;
      final arg_request = buildDeactivateClientUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeactivateClientUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeactivateClientUserRequest(obj);

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
        final resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deactivate(arg_request, arg_name, $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients.users;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients.users;
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
        final resp = convert.json.encode(buildClientUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkClientUser(response as api.ClientUser);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.clients.users;
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
        final resp = convert.json.encode(buildListClientUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListClientUsersResponse(response as api.ListClientUsersResponse);
    });
  });

  unittest.group('resource-BuyersFinalizedDealsResource', () {
    unittest.test('method--addCreative', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.finalizedDeals;
      final arg_request = buildAddCreativeRequest();
      final arg_deal = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddCreativeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddCreativeRequest(obj);

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
        final resp = convert.json.encode(buildFinalizedDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addCreative(arg_request, arg_deal, $fields: arg_$fields);
      checkFinalizedDeal(response as api.FinalizedDeal);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.finalizedDeals;
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
        final resp = convert.json.encode(buildFinalizedDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFinalizedDeal(response as api.FinalizedDeal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.finalizedDeals;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListFinalizedDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFinalizedDealsResponse(
          response as api.ListFinalizedDealsResponse);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.finalizedDeals;
      final arg_request = buildPauseFinalizedDealRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseFinalizedDealRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseFinalizedDealRequest(obj);

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
        final resp = convert.json.encode(buildFinalizedDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.pause(arg_request, arg_name, $fields: arg_$fields);
      checkFinalizedDeal(response as api.FinalizedDeal);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.finalizedDeals;
      final arg_request = buildResumeFinalizedDealRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeFinalizedDealRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeFinalizedDealRequest(obj);

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
        final resp = convert.json.encode(buildFinalizedDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkFinalizedDeal(response as api.FinalizedDeal);
    });

    unittest.test('method--setReadyToServe', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.finalizedDeals;
      final arg_request = buildSetReadyToServeRequest();
      final arg_deal = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetReadyToServeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetReadyToServeRequest(obj);

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
        final resp = convert.json.encode(buildFinalizedDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setReadyToServe(arg_request, arg_deal,
          $fields: arg_$fields);
      checkFinalizedDeal(response as api.FinalizedDeal);
    });
  });

  unittest.group('resource-BuyersProposalsResource', () {
    unittest.test('method--accept', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
      final arg_request = buildAcceptProposalRequest();
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.accept(arg_request, arg_name, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--addNote', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
      final arg_request = buildAddNoteRequest();
      final arg_proposal = 'foo';
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addNote(arg_request, arg_proposal, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--cancelNegotiation', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
      final arg_request = buildCancelNegotiationRequest();
      final arg_proposal = 'foo';
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancelNegotiation(arg_request, arg_proposal,
          $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
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
        final resp = convert.json.encode(buildListProposalsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProposalsResponse(response as api.ListProposalsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
      final arg_request = buildProposal();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
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
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });

    unittest.test('method--sendRfp', () async {
      final mock = HttpServerMock();
      final res = api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals;
      final arg_request = buildSendRfpRequest();
      final arg_buyer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendRfpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendRfpRequest(obj);

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
        final resp = convert.json.encode(buildProposal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.sendRfp(arg_request, arg_buyer, $fields: arg_$fields);
      checkProposal(response as api.Proposal);
    });
  });

  unittest.group('resource-BuyersProposalsDealsResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals.deals;
      final arg_request = buildBatchUpdateDealsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateDealsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateDealsRequest(obj);

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
        final resp = convert.json.encode(buildBatchUpdateDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchUpdateDealsResponse(response as api.BatchUpdateDealsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals.deals;
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
        final resp = convert.json.encode(buildDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeal(response as api.Deal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals.deals;
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
        final resp = convert.json.encode(buildListDealsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDealsResponse(response as api.ListDealsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.proposals.deals;
      final arg_request = buildDeal();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Deal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDeal(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDeal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDeal(response as api.Deal);
    });
  });

  unittest.group('resource-BuyersPublisherProfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.publisherProfiles;
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
        final resp = convert.json.encode(buildPublisherProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPublisherProfile(response as api.PublisherProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AuthorizedBuyersMarketplaceApi(mock).buyers.publisherProfiles;
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
        final resp = convert.json.encode(buildListPublisherProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPublisherProfilesResponse(
          response as api.ListPublisherProfilesResponse);
    });
  });
}
