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

import 'package:googleapis/merchantapi/accounts_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbout = 0;
api.About buildAbout() {
  final o = api.About();
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    o.state = 'foo';
    o.uri = 'foo';
  }
  buildCounterAbout--;
  return o;
}

void checkAbout(api.About o) {
  buildCounterAbout++;
  if (buildCounterAbout < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterAbout--;
}

core.int buildCounterAcceptTermsOfServiceResponse = 0;
api.AcceptTermsOfServiceResponse buildAcceptTermsOfServiceResponse() {
  final o = api.AcceptTermsOfServiceResponse();
  buildCounterAcceptTermsOfServiceResponse++;
  if (buildCounterAcceptTermsOfServiceResponse < 3) {
    o.termsOfServiceAgreementState = buildTermsOfServiceAgreementState();
  }
  buildCounterAcceptTermsOfServiceResponse--;
  return o;
}

void checkAcceptTermsOfServiceResponse(api.AcceptTermsOfServiceResponse o) {
  buildCounterAcceptTermsOfServiceResponse++;
  if (buildCounterAcceptTermsOfServiceResponse < 3) {
    checkTermsOfServiceAgreementState(o.termsOfServiceAgreementState!);
  }
  buildCounterAcceptTermsOfServiceResponse--;
}

core.int buildCounterAccepted = 0;
api.Accepted buildAccepted() {
  final o = api.Accepted();
  buildCounterAccepted++;
  if (buildCounterAccepted < 3) {
    o.acceptedBy = 'foo';
    o.termsOfService = 'foo';
    o.validUntil = buildDate();
  }
  buildCounterAccepted--;
  return o;
}

void checkAccepted(api.Accepted o) {
  buildCounterAccepted++;
  if (buildCounterAccepted < 3) {
    unittest.expect(o.acceptedBy!, unittest.equals('foo'));
    unittest.expect(o.termsOfService!, unittest.equals('foo'));
    checkDate(o.validUntil!);
  }
  buildCounterAccepted--;
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.accountId = 'foo';
    o.accountName = 'foo';
    o.adultContent = true;
    o.languageCode = 'foo';
    o.name = 'foo';
    o.testAccount = true;
    o.timeZone = buildTimeZone();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.accountName!, unittest.equals('foo'));
    unittest.expect(o.adultContent!, unittest.isTrue);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.testAccount!, unittest.isTrue);
    checkTimeZone(o.timeZone!);
  }
  buildCounterAccount--;
}

core.int buildCounterAccountAggregation = 0;
api.AccountAggregation buildAccountAggregation() {
  final o = api.AccountAggregation();
  buildCounterAccountAggregation++;
  if (buildCounterAccountAggregation < 3) {}
  buildCounterAccountAggregation--;
  return o;
}

void checkAccountAggregation(api.AccountAggregation o) {
  buildCounterAccountAggregation++;
  if (buildCounterAccountAggregation < 3) {}
  buildCounterAccountAggregation--;
}

core.List<api.ImpactedDestination> buildUnnamed0() => [
  buildImpactedDestination(),
  buildImpactedDestination(),
];

void checkUnnamed0(core.List<api.ImpactedDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImpactedDestination(o[0]);
  checkImpactedDestination(o[1]);
}

core.int buildCounterAccountIssue = 0;
api.AccountIssue buildAccountIssue() {
  final o = api.AccountIssue();
  buildCounterAccountIssue++;
  if (buildCounterAccountIssue < 3) {
    o.detail = 'foo';
    o.documentationUri = 'foo';
    o.impactedDestinations = buildUnnamed0();
    o.name = 'foo';
    o.severity = 'foo';
    o.title = 'foo';
  }
  buildCounterAccountIssue--;
  return o;
}

void checkAccountIssue(api.AccountIssue o) {
  buildCounterAccountIssue++;
  if (buildCounterAccountIssue < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    checkUnnamed0(o.impactedDestinations!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAccountIssue--;
}

core.int buildCounterAccountManagement = 0;
api.AccountManagement buildAccountManagement() {
  final o = api.AccountManagement();
  buildCounterAccountManagement++;
  if (buildCounterAccountManagement < 3) {}
  buildCounterAccountManagement--;
  return o;
}

void checkAccountManagement(api.AccountManagement o) {
  buildCounterAccountManagement++;
  if (buildCounterAccountManagement < 3) {}
  buildCounterAccountManagement--;
}

core.int buildCounterAccountRelationship = 0;
api.AccountRelationship buildAccountRelationship() {
  final o = api.AccountRelationship();
  buildCounterAccountRelationship++;
  if (buildCounterAccountRelationship < 3) {
    o.accountIdAlias = 'foo';
    o.name = 'foo';
    o.provider = 'foo';
    o.providerDisplayName = 'foo';
  }
  buildCounterAccountRelationship--;
  return o;
}

void checkAccountRelationship(api.AccountRelationship o) {
  buildCounterAccountRelationship++;
  if (buildCounterAccountRelationship < 3) {
    unittest.expect(o.accountIdAlias!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.provider!, unittest.equals('foo'));
    unittest.expect(o.providerDisplayName!, unittest.equals('foo'));
  }
  buildCounterAccountRelationship--;
}

core.int buildCounterAccountService = 0;
api.AccountService buildAccountService() {
  final o = api.AccountService();
  buildCounterAccountService++;
  if (buildCounterAccountService < 3) {
    o.accountAggregation = buildAccountAggregation();
    o.accountManagement = buildAccountManagement();
    o.campaignsManagement = buildCampaignsManagement();
    o.comparisonShopping = buildComparisonShopping();
    o.externalAccountId = 'foo';
    o.handshake = buildHandshake();
    o.localListingManagement = buildLocalListingManagement();
    o.mutability = 'foo';
    o.name = 'foo';
    o.productsManagement = buildProductsManagement();
    o.provider = 'foo';
    o.providerDisplayName = 'foo';
  }
  buildCounterAccountService--;
  return o;
}

void checkAccountService(api.AccountService o) {
  buildCounterAccountService++;
  if (buildCounterAccountService < 3) {
    checkAccountAggregation(o.accountAggregation!);
    checkAccountManagement(o.accountManagement!);
    checkCampaignsManagement(o.campaignsManagement!);
    checkComparisonShopping(o.comparisonShopping!);
    unittest.expect(o.externalAccountId!, unittest.equals('foo'));
    checkHandshake(o.handshake!);
    checkLocalListingManagement(o.localListingManagement!);
    unittest.expect(o.mutability!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProductsManagement(o.productsManagement!);
    unittest.expect(o.provider!, unittest.equals('foo'));
    unittest.expect(o.providerDisplayName!, unittest.equals('foo'));
  }
  buildCounterAccountService--;
}

core.int buildCounterAddAccountService = 0;
api.AddAccountService buildAddAccountService() {
  final o = api.AddAccountService();
  buildCounterAddAccountService++;
  if (buildCounterAddAccountService < 3) {
    o.accountAggregation = buildAccountAggregation();
    o.accountManagement = buildAccountManagement();
    o.campaignsManagement = buildCampaignsManagement();
    o.comparisonShopping = buildComparisonShopping();
    o.externalAccountId = 'foo';
    o.productsManagement = buildProductsManagement();
    o.provider = 'foo';
  }
  buildCounterAddAccountService--;
  return o;
}

void checkAddAccountService(api.AddAccountService o) {
  buildCounterAddAccountService++;
  if (buildCounterAddAccountService < 3) {
    checkAccountAggregation(o.accountAggregation!);
    checkAccountManagement(o.accountManagement!);
    checkCampaignsManagement(o.campaignsManagement!);
    checkComparisonShopping(o.comparisonShopping!);
    unittest.expect(o.externalAccountId!, unittest.equals('foo'));
    checkProductsManagement(o.productsManagement!);
    unittest.expect(o.provider!, unittest.equals('foo'));
  }
  buildCounterAddAccountService--;
}

core.int buildCounterAddUser = 0;
api.AddUser buildAddUser() {
  final o = api.AddUser();
  buildCounterAddUser++;
  if (buildCounterAddUser < 3) {
    o.user = buildUser();
    o.userId = 'foo';
    o.verificationMailSettings = buildVerificationMailSettings();
  }
  buildCounterAddUser--;
  return o;
}

void checkAddUser(api.AddUser o) {
  buildCounterAddUser++;
  if (buildCounterAddUser < 3) {
    checkUser(o.user!);
    unittest.expect(o.userId!, unittest.equals('foo'));
    checkVerificationMailSettings(o.verificationMailSettings!);
  }
  buildCounterAddUser--;
}

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  final o = api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.administrativeArea = 'foo';
    o.city = 'foo';
    o.postalCode = 'foo';
    o.regionCode = 'foo';
    o.streetAddress = 'foo';
  }
  buildCounterAddress--;
  return o;
}

void checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(o.administrativeArea!, unittest.equals('foo'));
    unittest.expect(o.city!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.streetAddress!, unittest.equals('foo'));
  }
  buildCounterAddress--;
}

core.int buildCounterApproveAccountServiceRequest = 0;
api.ApproveAccountServiceRequest buildApproveAccountServiceRequest() {
  final o = api.ApproveAccountServiceRequest();
  buildCounterApproveAccountServiceRequest++;
  if (buildCounterApproveAccountServiceRequest < 3) {}
  buildCounterApproveAccountServiceRequest--;
  return o;
}

void checkApproveAccountServiceRequest(api.ApproveAccountServiceRequest o) {
  buildCounterApproveAccountServiceRequest++;
  if (buildCounterApproveAccountServiceRequest < 3) {}
  buildCounterApproveAccountServiceRequest--;
}

core.int buildCounterAutofeedSettings = 0;
api.AutofeedSettings buildAutofeedSettings() {
  final o = api.AutofeedSettings();
  buildCounterAutofeedSettings++;
  if (buildCounterAutofeedSettings < 3) {
    o.eligible = true;
    o.enableProducts = true;
    o.name = 'foo';
  }
  buildCounterAutofeedSettings--;
  return o;
}

void checkAutofeedSettings(api.AutofeedSettings o) {
  buildCounterAutofeedSettings++;
  if (buildCounterAutofeedSettings < 3) {
    unittest.expect(o.eligible!, unittest.isTrue);
    unittest.expect(o.enableProducts!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAutofeedSettings--;
}

core.int buildCounterAutomaticImageImprovements = 0;
api.AutomaticImageImprovements buildAutomaticImageImprovements() {
  final o = api.AutomaticImageImprovements();
  buildCounterAutomaticImageImprovements++;
  if (buildCounterAutomaticImageImprovements < 3) {
    o.accountImageImprovementsSettings =
        buildImageImprovementsAccountLevelSettings();
    o.effectiveAllowAutomaticImageImprovements = true;
  }
  buildCounterAutomaticImageImprovements--;
  return o;
}

void checkAutomaticImageImprovements(api.AutomaticImageImprovements o) {
  buildCounterAutomaticImageImprovements++;
  if (buildCounterAutomaticImageImprovements < 3) {
    checkImageImprovementsAccountLevelSettings(
      o.accountImageImprovementsSettings!,
    );
    unittest.expect(
      o.effectiveAllowAutomaticImageImprovements!,
      unittest.isTrue,
    );
  }
  buildCounterAutomaticImageImprovements--;
}

core.int buildCounterAutomaticImprovements = 0;
api.AutomaticImprovements buildAutomaticImprovements() {
  final o = api.AutomaticImprovements();
  buildCounterAutomaticImprovements++;
  if (buildCounterAutomaticImprovements < 3) {
    o.imageImprovements = buildAutomaticImageImprovements();
    o.itemUpdates = buildAutomaticItemUpdates();
    o.name = 'foo';
    o.shippingImprovements = buildAutomaticShippingImprovements();
  }
  buildCounterAutomaticImprovements--;
  return o;
}

void checkAutomaticImprovements(api.AutomaticImprovements o) {
  buildCounterAutomaticImprovements++;
  if (buildCounterAutomaticImprovements < 3) {
    checkAutomaticImageImprovements(o.imageImprovements!);
    checkAutomaticItemUpdates(o.itemUpdates!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAutomaticShippingImprovements(o.shippingImprovements!);
  }
  buildCounterAutomaticImprovements--;
}

core.int buildCounterAutomaticItemUpdates = 0;
api.AutomaticItemUpdates buildAutomaticItemUpdates() {
  final o = api.AutomaticItemUpdates();
  buildCounterAutomaticItemUpdates++;
  if (buildCounterAutomaticItemUpdates < 3) {
    o.accountItemUpdatesSettings = buildItemUpdatesAccountLevelSettings();
    o.effectiveAllowAvailabilityUpdates = true;
    o.effectiveAllowConditionUpdates = true;
    o.effectiveAllowPriceUpdates = true;
    o.effectiveAllowStrictAvailabilityUpdates = true;
  }
  buildCounterAutomaticItemUpdates--;
  return o;
}

void checkAutomaticItemUpdates(api.AutomaticItemUpdates o) {
  buildCounterAutomaticItemUpdates++;
  if (buildCounterAutomaticItemUpdates < 3) {
    checkItemUpdatesAccountLevelSettings(o.accountItemUpdatesSettings!);
    unittest.expect(o.effectiveAllowAvailabilityUpdates!, unittest.isTrue);
    unittest.expect(o.effectiveAllowConditionUpdates!, unittest.isTrue);
    unittest.expect(o.effectiveAllowPriceUpdates!, unittest.isTrue);
    unittest.expect(
      o.effectiveAllowStrictAvailabilityUpdates!,
      unittest.isTrue,
    );
  }
  buildCounterAutomaticItemUpdates--;
}

core.int buildCounterAutomaticShippingImprovements = 0;
api.AutomaticShippingImprovements buildAutomaticShippingImprovements() {
  final o = api.AutomaticShippingImprovements();
  buildCounterAutomaticShippingImprovements++;
  if (buildCounterAutomaticShippingImprovements < 3) {
    o.allowShippingImprovements = true;
  }
  buildCounterAutomaticShippingImprovements--;
  return o;
}

void checkAutomaticShippingImprovements(api.AutomaticShippingImprovements o) {
  buildCounterAutomaticShippingImprovements++;
  if (buildCounterAutomaticShippingImprovements < 3) {
    unittest.expect(o.allowShippingImprovements!, unittest.isTrue);
  }
  buildCounterAutomaticShippingImprovements--;
}

core.List<api.CreateRegionRequest> buildUnnamed1() => [
  buildCreateRegionRequest(),
  buildCreateRegionRequest(),
];

void checkUnnamed1(core.List<api.CreateRegionRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateRegionRequest(o[0]);
  checkCreateRegionRequest(o[1]);
}

core.int buildCounterBatchCreateRegionsRequest = 0;
api.BatchCreateRegionsRequest buildBatchCreateRegionsRequest() {
  final o = api.BatchCreateRegionsRequest();
  buildCounterBatchCreateRegionsRequest++;
  if (buildCounterBatchCreateRegionsRequest < 3) {
    o.requests = buildUnnamed1();
  }
  buildCounterBatchCreateRegionsRequest--;
  return o;
}

void checkBatchCreateRegionsRequest(api.BatchCreateRegionsRequest o) {
  buildCounterBatchCreateRegionsRequest++;
  if (buildCounterBatchCreateRegionsRequest < 3) {
    checkUnnamed1(o.requests!);
  }
  buildCounterBatchCreateRegionsRequest--;
}

core.List<api.Region> buildUnnamed2() => [buildRegion(), buildRegion()];

void checkUnnamed2(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterBatchCreateRegionsResponse = 0;
api.BatchCreateRegionsResponse buildBatchCreateRegionsResponse() {
  final o = api.BatchCreateRegionsResponse();
  buildCounterBatchCreateRegionsResponse++;
  if (buildCounterBatchCreateRegionsResponse < 3) {
    o.regions = buildUnnamed2();
  }
  buildCounterBatchCreateRegionsResponse--;
  return o;
}

void checkBatchCreateRegionsResponse(api.BatchCreateRegionsResponse o) {
  buildCounterBatchCreateRegionsResponse++;
  if (buildCounterBatchCreateRegionsResponse < 3) {
    checkUnnamed2(o.regions!);
  }
  buildCounterBatchCreateRegionsResponse--;
}

core.List<api.DeleteRegionRequest> buildUnnamed3() => [
  buildDeleteRegionRequest(),
  buildDeleteRegionRequest(),
];

void checkUnnamed3(core.List<api.DeleteRegionRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeleteRegionRequest(o[0]);
  checkDeleteRegionRequest(o[1]);
}

core.int buildCounterBatchDeleteRegionsRequest = 0;
api.BatchDeleteRegionsRequest buildBatchDeleteRegionsRequest() {
  final o = api.BatchDeleteRegionsRequest();
  buildCounterBatchDeleteRegionsRequest++;
  if (buildCounterBatchDeleteRegionsRequest < 3) {
    o.requests = buildUnnamed3();
  }
  buildCounterBatchDeleteRegionsRequest--;
  return o;
}

void checkBatchDeleteRegionsRequest(api.BatchDeleteRegionsRequest o) {
  buildCounterBatchDeleteRegionsRequest++;
  if (buildCounterBatchDeleteRegionsRequest < 3) {
    checkUnnamed3(o.requests!);
  }
  buildCounterBatchDeleteRegionsRequest--;
}

core.List<api.UpdateRegionRequest> buildUnnamed4() => [
  buildUpdateRegionRequest(),
  buildUpdateRegionRequest(),
];

void checkUnnamed4(core.List<api.UpdateRegionRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateRegionRequest(o[0]);
  checkUpdateRegionRequest(o[1]);
}

core.int buildCounterBatchUpdateRegionsRequest = 0;
api.BatchUpdateRegionsRequest buildBatchUpdateRegionsRequest() {
  final o = api.BatchUpdateRegionsRequest();
  buildCounterBatchUpdateRegionsRequest++;
  if (buildCounterBatchUpdateRegionsRequest < 3) {
    o.requests = buildUnnamed4();
  }
  buildCounterBatchUpdateRegionsRequest--;
  return o;
}

void checkBatchUpdateRegionsRequest(api.BatchUpdateRegionsRequest o) {
  buildCounterBatchUpdateRegionsRequest++;
  if (buildCounterBatchUpdateRegionsRequest < 3) {
    checkUnnamed4(o.requests!);
  }
  buildCounterBatchUpdateRegionsRequest--;
}

core.List<api.Region> buildUnnamed5() => [buildRegion(), buildRegion()];

void checkUnnamed5(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterBatchUpdateRegionsResponse = 0;
api.BatchUpdateRegionsResponse buildBatchUpdateRegionsResponse() {
  final o = api.BatchUpdateRegionsResponse();
  buildCounterBatchUpdateRegionsResponse++;
  if (buildCounterBatchUpdateRegionsResponse < 3) {
    o.regions = buildUnnamed5();
  }
  buildCounterBatchUpdateRegionsResponse--;
  return o;
}

void checkBatchUpdateRegionsResponse(api.BatchUpdateRegionsResponse o) {
  buildCounterBatchUpdateRegionsResponse++;
  if (buildCounterBatchUpdateRegionsResponse < 3) {
    checkUnnamed5(o.regions!);
  }
  buildCounterBatchUpdateRegionsResponse--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBusinessDayConfig = 0;
api.BusinessDayConfig buildBusinessDayConfig() {
  final o = api.BusinessDayConfig();
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    o.businessDays = buildUnnamed6();
  }
  buildCounterBusinessDayConfig--;
  return o;
}

void checkBusinessDayConfig(api.BusinessDayConfig o) {
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    checkUnnamed6(o.businessDays!);
  }
  buildCounterBusinessDayConfig--;
}

core.int buildCounterBusinessIdentity = 0;
api.BusinessIdentity buildBusinessIdentity() {
  final o = api.BusinessIdentity();
  buildCounterBusinessIdentity++;
  if (buildCounterBusinessIdentity < 3) {
    o.blackOwned = buildIdentityAttribute();
    o.latinoOwned = buildIdentityAttribute();
    o.name = 'foo';
    o.promotionsConsent = 'foo';
    o.smallBusiness = buildIdentityAttribute();
    o.veteranOwned = buildIdentityAttribute();
    o.womenOwned = buildIdentityAttribute();
  }
  buildCounterBusinessIdentity--;
  return o;
}

void checkBusinessIdentity(api.BusinessIdentity o) {
  buildCounterBusinessIdentity++;
  if (buildCounterBusinessIdentity < 3) {
    checkIdentityAttribute(o.blackOwned!);
    checkIdentityAttribute(o.latinoOwned!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.promotionsConsent!, unittest.equals('foo'));
    checkIdentityAttribute(o.smallBusiness!);
    checkIdentityAttribute(o.veteranOwned!);
    checkIdentityAttribute(o.womenOwned!);
  }
  buildCounterBusinessIdentity--;
}

core.int buildCounterBusinessInfo = 0;
api.BusinessInfo buildBusinessInfo() {
  final o = api.BusinessInfo();
  buildCounterBusinessInfo++;
  if (buildCounterBusinessInfo < 3) {
    o.address = buildPostalAddress();
    o.customerService = buildCustomerService();
    o.koreanBusinessRegistrationNumber = 'foo';
    o.name = 'foo';
    o.phone = buildPhoneNumber();
    o.phoneVerificationState = 'foo';
  }
  buildCounterBusinessInfo--;
  return o;
}

void checkBusinessInfo(api.BusinessInfo o) {
  buildCounterBusinessInfo++;
  if (buildCounterBusinessInfo < 3) {
    checkPostalAddress(o.address!);
    checkCustomerService(o.customerService!);
    unittest.expect(
      o.koreanBusinessRegistrationNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPhoneNumber(o.phone!);
    unittest.expect(o.phoneVerificationState!, unittest.equals('foo'));
  }
  buildCounterBusinessInfo--;
}

core.int buildCounterCampaignsManagement = 0;
api.CampaignsManagement buildCampaignsManagement() {
  final o = api.CampaignsManagement();
  buildCounterCampaignsManagement++;
  if (buildCounterCampaignsManagement < 3) {}
  buildCounterCampaignsManagement--;
  return o;
}

void checkCampaignsManagement(api.CampaignsManagement o) {
  buildCounterCampaignsManagement++;
  if (buildCounterCampaignsManagement < 3) {}
  buildCounterCampaignsManagement--;
}

core.int buildCounterCarrierRate = 0;
api.CarrierRate buildCarrierRate() {
  final o = api.CarrierRate();
  buildCounterCarrierRate++;
  if (buildCounterCarrierRate < 3) {
    o.carrier = 'foo';
    o.carrierService = 'foo';
    o.flatAdjustment = buildPrice();
    o.name = 'foo';
    o.originPostalCode = 'foo';
    o.percentageAdjustment = 'foo';
  }
  buildCounterCarrierRate--;
  return o;
}

void checkCarrierRate(api.CarrierRate o) {
  buildCounterCarrierRate++;
  if (buildCounterCarrierRate < 3) {
    unittest.expect(o.carrier!, unittest.equals('foo'));
    unittest.expect(o.carrierService!, unittest.equals('foo'));
    checkPrice(o.flatAdjustment!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.originPostalCode!, unittest.equals('foo'));
    unittest.expect(o.percentageAdjustment!, unittest.equals('foo'));
  }
  buildCounterCarrierRate--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCheckoutSettings = 0;
api.CheckoutSettings buildCheckoutSettings() {
  final o = api.CheckoutSettings();
  buildCounterCheckoutSettings++;
  if (buildCounterCheckoutSettings < 3) {
    o.effectiveEnrollmentState = 'foo';
    o.effectiveReviewState = 'foo';
    o.effectiveUriSettings = buildUriSettings();
    o.eligibleDestinations = buildUnnamed7();
    o.enrollmentState = 'foo';
    o.name = 'foo';
    o.reviewState = 'foo';
    o.uriSettings = buildUriSettings();
  }
  buildCounterCheckoutSettings--;
  return o;
}

void checkCheckoutSettings(api.CheckoutSettings o) {
  buildCounterCheckoutSettings++;
  if (buildCounterCheckoutSettings < 3) {
    unittest.expect(o.effectiveEnrollmentState!, unittest.equals('foo'));
    unittest.expect(o.effectiveReviewState!, unittest.equals('foo'));
    checkUriSettings(o.effectiveUriSettings!);
    checkUnnamed7(o.eligibleDestinations!);
    unittest.expect(o.enrollmentState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reviewState!, unittest.equals('foo'));
    checkUriSettings(o.uriSettings!);
  }
  buildCounterCheckoutSettings--;
}

core.int buildCounterClaimHomepageRequest = 0;
api.ClaimHomepageRequest buildClaimHomepageRequest() {
  final o = api.ClaimHomepageRequest();
  buildCounterClaimHomepageRequest++;
  if (buildCounterClaimHomepageRequest < 3) {
    o.overwrite = true;
  }
  buildCounterClaimHomepageRequest--;
  return o;
}

void checkClaimHomepageRequest(api.ClaimHomepageRequest o) {
  buildCounterClaimHomepageRequest++;
  if (buildCounterClaimHomepageRequest < 3) {
    unittest.expect(o.overwrite!, unittest.isTrue);
  }
  buildCounterClaimHomepageRequest--;
}

core.int buildCounterComparisonShopping = 0;
api.ComparisonShopping buildComparisonShopping() {
  final o = api.ComparisonShopping();
  buildCounterComparisonShopping++;
  if (buildCounterComparisonShopping < 3) {}
  buildCounterComparisonShopping--;
  return o;
}

void checkComparisonShopping(api.ComparisonShopping o) {
  buildCounterComparisonShopping++;
  if (buildCounterComparisonShopping < 3) {}
  buildCounterComparisonShopping--;
}

core.List<api.AddAccountService> buildUnnamed8() => [
  buildAddAccountService(),
  buildAddAccountService(),
];

void checkUnnamed8(core.List<api.AddAccountService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddAccountService(o[0]);
  checkAddAccountService(o[1]);
}

core.List<api.SetAliasForRelationship> buildUnnamed9() => [
  buildSetAliasForRelationship(),
  buildSetAliasForRelationship(),
];

void checkUnnamed9(core.List<api.SetAliasForRelationship> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetAliasForRelationship(o[0]);
  checkSetAliasForRelationship(o[1]);
}

core.List<api.AddUser> buildUnnamed10() => [buildAddUser(), buildAddUser()];

void checkUnnamed10(core.List<api.AddUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddUser(o[0]);
  checkAddUser(o[1]);
}

core.int buildCounterCreateAndConfigureAccountRequest = 0;
api.CreateAndConfigureAccountRequest buildCreateAndConfigureAccountRequest() {
  final o = api.CreateAndConfigureAccountRequest();
  buildCounterCreateAndConfigureAccountRequest++;
  if (buildCounterCreateAndConfigureAccountRequest < 3) {
    o.account = buildAccount();
    o.service = buildUnnamed8();
    o.setAlias = buildUnnamed9();
    o.user = buildUnnamed10();
  }
  buildCounterCreateAndConfigureAccountRequest--;
  return o;
}

void checkCreateAndConfigureAccountRequest(
  api.CreateAndConfigureAccountRequest o,
) {
  buildCounterCreateAndConfigureAccountRequest++;
  if (buildCounterCreateAndConfigureAccountRequest < 3) {
    checkAccount(o.account!);
    checkUnnamed8(o.service!);
    checkUnnamed9(o.setAlias!);
    checkUnnamed10(o.user!);
  }
  buildCounterCreateAndConfigureAccountRequest--;
}

core.int buildCounterCreateRegionRequest = 0;
api.CreateRegionRequest buildCreateRegionRequest() {
  final o = api.CreateRegionRequest();
  buildCounterCreateRegionRequest++;
  if (buildCounterCreateRegionRequest < 3) {
    o.parent = 'foo';
    o.region = buildRegion();
    o.regionId = 'foo';
  }
  buildCounterCreateRegionRequest--;
  return o;
}

void checkCreateRegionRequest(api.CreateRegionRequest o) {
  buildCounterCreateRegionRequest++;
  if (buildCounterCreateRegionRequest < 3) {
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkRegion(o.region!);
    unittest.expect(o.regionId!, unittest.equals('foo'));
  }
  buildCounterCreateRegionRequest--;
}

core.int buildCounterCustomerService = 0;
api.CustomerService buildCustomerService() {
  final o = api.CustomerService();
  buildCounterCustomerService++;
  if (buildCounterCustomerService < 3) {
    o.email = 'foo';
    o.phone = buildPhoneNumber();
    o.uri = 'foo';
  }
  buildCounterCustomerService--;
  return o;
}

void checkCustomerService(api.CustomerService o) {
  buildCounterCustomerService++;
  if (buildCounterCustomerService < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    checkPhoneNumber(o.phone!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterCustomerService--;
}

core.int buildCounterCutoffConfig = 0;
api.CutoffConfig buildCutoffConfig() {
  final o = api.CutoffConfig();
  buildCounterCutoffConfig++;
  if (buildCounterCutoffConfig < 3) {
    o.localCutoffTime = buildLocalCutoffTime();
    o.noDeliveryPostCutoff = true;
    o.storeCloseOffsetHours = 'foo';
  }
  buildCounterCutoffConfig--;
  return o;
}

void checkCutoffConfig(api.CutoffConfig o) {
  buildCounterCutoffConfig++;
  if (buildCounterCutoffConfig < 3) {
    checkLocalCutoffTime(o.localCutoffTime!);
    unittest.expect(o.noDeliveryPostCutoff!, unittest.isTrue);
    unittest.expect(o.storeCloseOffsetHours!, unittest.equals('foo'));
  }
  buildCounterCutoffConfig--;
}

core.int buildCounterCutoffTime = 0;
api.CutoffTime buildCutoffTime() {
  final o = api.CutoffTime();
  buildCounterCutoffTime++;
  if (buildCounterCutoffTime < 3) {
    o.hour = 42;
    o.minute = 42;
    o.timeZone = 'foo';
  }
  buildCounterCutoffTime--;
  return o;
}

void checkCutoffTime(api.CutoffTime o) {
  buildCounterCutoffTime++;
  if (buildCounterCutoffTime < 3) {
    unittest.expect(o.hour!, unittest.equals(42));
    unittest.expect(o.minute!, unittest.equals(42));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterCutoffTime--;
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeleteRegionRequest = 0;
api.DeleteRegionRequest buildDeleteRegionRequest() {
  final o = api.DeleteRegionRequest();
  buildCounterDeleteRegionRequest++;
  if (buildCounterDeleteRegionRequest < 3) {
    o.name = 'foo';
  }
  buildCounterDeleteRegionRequest--;
  return o;
}

void checkDeleteRegionRequest(api.DeleteRegionRequest o) {
  buildCounterDeleteRegionRequest++;
  if (buildCounterDeleteRegionRequest < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterDeleteRegionRequest--;
}

core.List<api.WarehouseBasedDeliveryTime> buildUnnamed11() => [
  buildWarehouseBasedDeliveryTime(),
  buildWarehouseBasedDeliveryTime(),
];

void checkUnnamed11(core.List<api.WarehouseBasedDeliveryTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarehouseBasedDeliveryTime(o[0]);
  checkWarehouseBasedDeliveryTime(o[1]);
}

core.int buildCounterDeliveryTime = 0;
api.DeliveryTime buildDeliveryTime() {
  final o = api.DeliveryTime();
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    o.cutoffTime = buildCutoffTime();
    o.handlingBusinessDayConfig = buildBusinessDayConfig();
    o.maxHandlingDays = 42;
    o.maxTransitDays = 42;
    o.minHandlingDays = 42;
    o.minTransitDays = 42;
    o.transitBusinessDayConfig = buildBusinessDayConfig();
    o.transitTimeTable = buildTransitTable();
    o.warehouseBasedDeliveryTimes = buildUnnamed11();
  }
  buildCounterDeliveryTime--;
  return o;
}

void checkDeliveryTime(api.DeliveryTime o) {
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    checkCutoffTime(o.cutoffTime!);
    checkBusinessDayConfig(o.handlingBusinessDayConfig!);
    unittest.expect(o.maxHandlingDays!, unittest.equals(42));
    unittest.expect(o.maxTransitDays!, unittest.equals(42));
    unittest.expect(o.minHandlingDays!, unittest.equals(42));
    unittest.expect(o.minTransitDays!, unittest.equals(42));
    checkBusinessDayConfig(o.transitBusinessDayConfig!);
    checkTransitTable(o.transitTimeTable!);
    checkUnnamed11(o.warehouseBasedDeliveryTimes!);
  }
  buildCounterDeliveryTime--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeveloperRegistration = 0;
api.DeveloperRegistration buildDeveloperRegistration() {
  final o = api.DeveloperRegistration();
  buildCounterDeveloperRegistration++;
  if (buildCounterDeveloperRegistration < 3) {
    o.gcpIds = buildUnnamed12();
    o.name = 'foo';
  }
  buildCounterDeveloperRegistration--;
  return o;
}

void checkDeveloperRegistration(api.DeveloperRegistration o) {
  buildCounterDeveloperRegistration++;
  if (buildCounterDeveloperRegistration < 3) {
    checkUnnamed12(o.gcpIds!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterDeveloperRegistration--;
}

core.int buildCounterDisableProgramRequest = 0;
api.DisableProgramRequest buildDisableProgramRequest() {
  final o = api.DisableProgramRequest();
  buildCounterDisableProgramRequest++;
  if (buildCounterDisableProgramRequest < 3) {}
  buildCounterDisableProgramRequest--;
  return o;
}

void checkDisableProgramRequest(api.DisableProgramRequest o) {
  buildCounterDisableProgramRequest++;
  if (buildCounterDisableProgramRequest < 3) {}
  buildCounterDisableProgramRequest--;
}

core.int buildCounterDistance = 0;
api.Distance buildDistance() {
  final o = api.Distance();
  buildCounterDistance++;
  if (buildCounterDistance < 3) {
    o.unit = 'foo';
    o.value = 'foo';
  }
  buildCounterDistance--;
  return o;
}

void checkDistance(api.Distance o) {
  buildCounterDistance++;
  if (buildCounterDistance < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDistance--;
}

core.int buildCounterEmailPreferences = 0;
api.EmailPreferences buildEmailPreferences() {
  final o = api.EmailPreferences();
  buildCounterEmailPreferences++;
  if (buildCounterEmailPreferences < 3) {
    o.name = 'foo';
    o.newsAndTips = 'foo';
  }
  buildCounterEmailPreferences--;
  return o;
}

void checkEmailPreferences(api.EmailPreferences o) {
  buildCounterEmailPreferences++;
  if (buildCounterEmailPreferences < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.newsAndTips!, unittest.equals('foo'));
  }
  buildCounterEmailPreferences--;
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

core.int buildCounterEnableProgramRequest = 0;
api.EnableProgramRequest buildEnableProgramRequest() {
  final o = api.EnableProgramRequest();
  buildCounterEnableProgramRequest++;
  if (buildCounterEnableProgramRequest < 3) {}
  buildCounterEnableProgramRequest--;
  return o;
}

void checkEnableProgramRequest(api.EnableProgramRequest o) {
  buildCounterEnableProgramRequest++;
  if (buildCounterEnableProgramRequest < 3) {}
  buildCounterEnableProgramRequest--;
}

core.List<api.LfpProvider> buildUnnamed13() => [
  buildLfpProvider(),
  buildLfpProvider(),
];

void checkUnnamed13(core.List<api.LfpProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfpProvider(o[0]);
  checkLfpProvider(o[1]);
}

core.int buildCounterFindLfpProvidersResponse = 0;
api.FindLfpProvidersResponse buildFindLfpProvidersResponse() {
  final o = api.FindLfpProvidersResponse();
  buildCounterFindLfpProvidersResponse++;
  if (buildCounterFindLfpProvidersResponse < 3) {
    o.lfpProviders = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterFindLfpProvidersResponse--;
  return o;
}

void checkFindLfpProvidersResponse(api.FindLfpProvidersResponse o) {
  buildCounterFindLfpProvidersResponse++;
  if (buildCounterFindLfpProvidersResponse < 3) {
    checkUnnamed13(o.lfpProviders!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterFindLfpProvidersResponse--;
}

core.int buildCounterGbpAccount = 0;
api.GbpAccount buildGbpAccount() {
  final o = api.GbpAccount();
  buildCounterGbpAccount++;
  if (buildCounterGbpAccount < 3) {
    o.gbpAccountId = 'foo';
    o.gbpAccountName = 'foo';
    o.listingCount = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGbpAccount--;
  return o;
}

void checkGbpAccount(api.GbpAccount o) {
  buildCounterGbpAccount++;
  if (buildCounterGbpAccount < 3) {
    unittest.expect(o.gbpAccountId!, unittest.equals('foo'));
    unittest.expect(o.gbpAccountName!, unittest.equals('foo'));
    unittest.expect(o.listingCount!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGbpAccount--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGeoTargetArea = 0;
api.GeoTargetArea buildGeoTargetArea() {
  final o = api.GeoTargetArea();
  buildCounterGeoTargetArea++;
  if (buildCounterGeoTargetArea < 3) {
    o.geotargetCriteriaIds = buildUnnamed14();
  }
  buildCounterGeoTargetArea--;
  return o;
}

void checkGeoTargetArea(api.GeoTargetArea o) {
  buildCounterGeoTargetArea++;
  if (buildCounterGeoTargetArea < 3) {
    checkUnnamed14(o.geotargetCriteriaIds!);
  }
  buildCounterGeoTargetArea--;
}

core.int buildCounterGetAccountForGcpRegistrationResponse = 0;
api.GetAccountForGcpRegistrationResponse
buildGetAccountForGcpRegistrationResponse() {
  final o = api.GetAccountForGcpRegistrationResponse();
  buildCounterGetAccountForGcpRegistrationResponse++;
  if (buildCounterGetAccountForGcpRegistrationResponse < 3) {
    o.name = 'foo';
  }
  buildCounterGetAccountForGcpRegistrationResponse--;
  return o;
}

void checkGetAccountForGcpRegistrationResponse(
  api.GetAccountForGcpRegistrationResponse o,
) {
  buildCounterGetAccountForGcpRegistrationResponse++;
  if (buildCounterGetAccountForGcpRegistrationResponse < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGetAccountForGcpRegistrationResponse--;
}

core.int buildCounterHandshake = 0;
api.Handshake buildHandshake() {
  final o = api.Handshake();
  buildCounterHandshake++;
  if (buildCounterHandshake < 3) {
    o.actor = 'foo';
    o.approvalState = 'foo';
  }
  buildCounterHandshake--;
  return o;
}

void checkHandshake(api.Handshake o) {
  buildCounterHandshake++;
  if (buildCounterHandshake < 3) {
    unittest.expect(o.actor!, unittest.equals('foo'));
    unittest.expect(o.approvalState!, unittest.equals('foo'));
  }
  buildCounterHandshake--;
}

core.List<api.LocationIdSet> buildUnnamed15() => [
  buildLocationIdSet(),
  buildLocationIdSet(),
];

void checkUnnamed15(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0]);
  checkLocationIdSet(o[1]);
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Price> buildUnnamed18() => [buildPrice(), buildPrice()];

void checkUnnamed18(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0]);
  checkPrice(o[1]);
}

core.List<api.Weight> buildUnnamed19() => [buildWeight(), buildWeight()];

void checkUnnamed19(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0]);
  checkWeight(o[1]);
}

core.int buildCounterHeaders = 0;
api.Headers buildHeaders() {
  final o = api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed15();
    o.numberOfItems = buildUnnamed16();
    o.postalCodeGroupNames = buildUnnamed17();
    o.prices = buildUnnamed18();
    o.weights = buildUnnamed19();
  }
  buildCounterHeaders--;
  return o;
}

void checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed15(o.locations!);
    checkUnnamed16(o.numberOfItems!);
    checkUnnamed17(o.postalCodeGroupNames!);
    checkUnnamed18(o.prices!);
    checkUnnamed19(o.weights!);
  }
  buildCounterHeaders--;
}

core.int buildCounterHomepage = 0;
api.Homepage buildHomepage() {
  final o = api.Homepage();
  buildCounterHomepage++;
  if (buildCounterHomepage < 3) {
    o.claimed = true;
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterHomepage--;
  return o;
}

void checkHomepage(api.Homepage o) {
  buildCounterHomepage++;
  if (buildCounterHomepage < 3) {
    unittest.expect(o.claimed!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterHomepage--;
}

core.int buildCounterIdentityAttribute = 0;
api.IdentityAttribute buildIdentityAttribute() {
  final o = api.IdentityAttribute();
  buildCounterIdentityAttribute++;
  if (buildCounterIdentityAttribute < 3) {
    o.identityDeclaration = 'foo';
  }
  buildCounterIdentityAttribute--;
  return o;
}

void checkIdentityAttribute(api.IdentityAttribute o) {
  buildCounterIdentityAttribute++;
  if (buildCounterIdentityAttribute < 3) {
    unittest.expect(o.identityDeclaration!, unittest.equals('foo'));
  }
  buildCounterIdentityAttribute--;
}

core.int buildCounterImageImprovementsAccountLevelSettings = 0;
api.ImageImprovementsAccountLevelSettings
buildImageImprovementsAccountLevelSettings() {
  final o = api.ImageImprovementsAccountLevelSettings();
  buildCounterImageImprovementsAccountLevelSettings++;
  if (buildCounterImageImprovementsAccountLevelSettings < 3) {
    o.allowAutomaticImageImprovements = true;
  }
  buildCounterImageImprovementsAccountLevelSettings--;
  return o;
}

void checkImageImprovementsAccountLevelSettings(
  api.ImageImprovementsAccountLevelSettings o,
) {
  buildCounterImageImprovementsAccountLevelSettings++;
  if (buildCounterImageImprovementsAccountLevelSettings < 3) {
    unittest.expect(o.allowAutomaticImageImprovements!, unittest.isTrue);
  }
  buildCounterImageImprovementsAccountLevelSettings--;
}

core.int buildCounterImpact = 0;
api.Impact buildImpact() {
  final o = api.Impact();
  buildCounterImpact++;
  if (buildCounterImpact < 3) {
    o.regionCode = 'foo';
    o.severity = 'foo';
  }
  buildCounterImpact--;
  return o;
}

void checkImpact(api.Impact o) {
  buildCounterImpact++;
  if (buildCounterImpact < 3) {
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterImpact--;
}

core.List<api.Impact> buildUnnamed20() => [buildImpact(), buildImpact()];

void checkUnnamed20(core.List<api.Impact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImpact(o[0]);
  checkImpact(o[1]);
}

core.int buildCounterImpactedDestination = 0;
api.ImpactedDestination buildImpactedDestination() {
  final o = api.ImpactedDestination();
  buildCounterImpactedDestination++;
  if (buildCounterImpactedDestination < 3) {
    o.impacts = buildUnnamed20();
    o.reportingContext = 'foo';
  }
  buildCounterImpactedDestination--;
  return o;
}

void checkImpactedDestination(api.ImpactedDestination o) {
  buildCounterImpactedDestination++;
  if (buildCounterImpactedDestination < 3) {
    checkUnnamed20(o.impacts!);
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
  }
  buildCounterImpactedDestination--;
}

core.int buildCounterInStock = 0;
api.InStock buildInStock() {
  final o = api.InStock();
  buildCounterInStock++;
  if (buildCounterInStock < 3) {
    o.state = 'foo';
    o.uri = 'foo';
  }
  buildCounterInStock--;
  return o;
}

void checkInStock(api.InStock o) {
  buildCounterInStock++;
  if (buildCounterInStock < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterInStock--;
}

core.int buildCounterInventoryVerification = 0;
api.InventoryVerification buildInventoryVerification() {
  final o = api.InventoryVerification();
  buildCounterInventoryVerification++;
  if (buildCounterInventoryVerification < 3) {
    o.contact = 'foo';
    o.contactEmail = 'foo';
    o.contactState = 'foo';
    o.state = 'foo';
  }
  buildCounterInventoryVerification--;
  return o;
}

void checkInventoryVerification(api.InventoryVerification o) {
  buildCounterInventoryVerification++;
  if (buildCounterInventoryVerification < 3) {
    unittest.expect(o.contact!, unittest.equals('foo'));
    unittest.expect(o.contactEmail!, unittest.equals('foo'));
    unittest.expect(o.contactState!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterInventoryVerification--;
}

core.int buildCounterItemUpdatesAccountLevelSettings = 0;
api.ItemUpdatesAccountLevelSettings buildItemUpdatesAccountLevelSettings() {
  final o = api.ItemUpdatesAccountLevelSettings();
  buildCounterItemUpdatesAccountLevelSettings++;
  if (buildCounterItemUpdatesAccountLevelSettings < 3) {
    o.allowAvailabilityUpdates = true;
    o.allowConditionUpdates = true;
    o.allowPriceUpdates = true;
    o.allowStrictAvailabilityUpdates = true;
  }
  buildCounterItemUpdatesAccountLevelSettings--;
  return o;
}

void checkItemUpdatesAccountLevelSettings(
  api.ItemUpdatesAccountLevelSettings o,
) {
  buildCounterItemUpdatesAccountLevelSettings++;
  if (buildCounterItemUpdatesAccountLevelSettings < 3) {
    unittest.expect(o.allowAvailabilityUpdates!, unittest.isTrue);
    unittest.expect(o.allowConditionUpdates!, unittest.isTrue);
    unittest.expect(o.allowPriceUpdates!, unittest.isTrue);
    unittest.expect(o.allowStrictAvailabilityUpdates!, unittest.isTrue);
  }
  buildCounterItemUpdatesAccountLevelSettings--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.int buildCounterLfpLink = 0;
api.LfpLink buildLfpLink() {
  final o = api.LfpLink();
  buildCounterLfpLink++;
  if (buildCounterLfpLink < 3) {
    o.externalAccountId = 'foo';
    o.lfpProvider = 'foo';
    o.state = 'foo';
  }
  buildCounterLfpLink--;
  return o;
}

void checkLfpLink(api.LfpLink o) {
  buildCounterLfpLink++;
  if (buildCounterLfpLink < 3) {
    unittest.expect(o.externalAccountId!, unittest.equals('foo'));
    unittest.expect(o.lfpProvider!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterLfpLink--;
}

core.int buildCounterLfpProvider = 0;
api.LfpProvider buildLfpProvider() {
  final o = api.LfpProvider();
  buildCounterLfpProvider++;
  if (buildCounterLfpProvider < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLfpProvider--;
  return o;
}

void checkLfpProvider(api.LfpProvider o) {
  buildCounterLfpProvider++;
  if (buildCounterLfpProvider < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterLfpProvider--;
}

core.int buildCounterLinkGbpAccountRequest = 0;
api.LinkGbpAccountRequest buildLinkGbpAccountRequest() {
  final o = api.LinkGbpAccountRequest();
  buildCounterLinkGbpAccountRequest++;
  if (buildCounterLinkGbpAccountRequest < 3) {
    o.gbpEmail = 'foo';
  }
  buildCounterLinkGbpAccountRequest--;
  return o;
}

void checkLinkGbpAccountRequest(api.LinkGbpAccountRequest o) {
  buildCounterLinkGbpAccountRequest++;
  if (buildCounterLinkGbpAccountRequest < 3) {
    unittest.expect(o.gbpEmail!, unittest.equals('foo'));
  }
  buildCounterLinkGbpAccountRequest--;
}

core.int buildCounterLinkGbpAccountResponse = 0;
api.LinkGbpAccountResponse buildLinkGbpAccountResponse() {
  final o = api.LinkGbpAccountResponse();
  buildCounterLinkGbpAccountResponse++;
  if (buildCounterLinkGbpAccountResponse < 3) {
    o.response = buildEmpty();
  }
  buildCounterLinkGbpAccountResponse--;
  return o;
}

void checkLinkGbpAccountResponse(api.LinkGbpAccountResponse o) {
  buildCounterLinkGbpAccountResponse++;
  if (buildCounterLinkGbpAccountResponse < 3) {
    checkEmpty(o.response!);
  }
  buildCounterLinkGbpAccountResponse--;
}

core.int buildCounterLinkLfpProviderRequest = 0;
api.LinkLfpProviderRequest buildLinkLfpProviderRequest() {
  final o = api.LinkLfpProviderRequest();
  buildCounterLinkLfpProviderRequest++;
  if (buildCounterLinkLfpProviderRequest < 3) {
    o.externalAccountId = 'foo';
  }
  buildCounterLinkLfpProviderRequest--;
  return o;
}

void checkLinkLfpProviderRequest(api.LinkLfpProviderRequest o) {
  buildCounterLinkLfpProviderRequest++;
  if (buildCounterLinkLfpProviderRequest < 3) {
    unittest.expect(o.externalAccountId!, unittest.equals('foo'));
  }
  buildCounterLinkLfpProviderRequest--;
}

core.int buildCounterLinkLfpProviderResponse = 0;
api.LinkLfpProviderResponse buildLinkLfpProviderResponse() {
  final o = api.LinkLfpProviderResponse();
  buildCounterLinkLfpProviderResponse++;
  if (buildCounterLinkLfpProviderResponse < 3) {
    o.response = buildEmpty();
  }
  buildCounterLinkLfpProviderResponse--;
  return o;
}

void checkLinkLfpProviderResponse(api.LinkLfpProviderResponse o) {
  buildCounterLinkLfpProviderResponse++;
  if (buildCounterLinkLfpProviderResponse < 3) {
    checkEmpty(o.response!);
  }
  buildCounterLinkLfpProviderResponse--;
}

core.List<api.AccountIssue> buildUnnamed21() => [
  buildAccountIssue(),
  buildAccountIssue(),
];

void checkUnnamed21(core.List<api.AccountIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIssue(o[0]);
  checkAccountIssue(o[1]);
}

core.int buildCounterListAccountIssuesResponse = 0;
api.ListAccountIssuesResponse buildListAccountIssuesResponse() {
  final o = api.ListAccountIssuesResponse();
  buildCounterListAccountIssuesResponse++;
  if (buildCounterListAccountIssuesResponse < 3) {
    o.accountIssues = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountIssuesResponse--;
  return o;
}

void checkListAccountIssuesResponse(api.ListAccountIssuesResponse o) {
  buildCounterListAccountIssuesResponse++;
  if (buildCounterListAccountIssuesResponse < 3) {
    checkUnnamed21(o.accountIssues!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountIssuesResponse--;
}

core.List<api.AccountRelationship> buildUnnamed22() => [
  buildAccountRelationship(),
  buildAccountRelationship(),
];

void checkUnnamed22(core.List<api.AccountRelationship> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountRelationship(o[0]);
  checkAccountRelationship(o[1]);
}

core.int buildCounterListAccountRelationshipsResponse = 0;
api.ListAccountRelationshipsResponse buildListAccountRelationshipsResponse() {
  final o = api.ListAccountRelationshipsResponse();
  buildCounterListAccountRelationshipsResponse++;
  if (buildCounterListAccountRelationshipsResponse < 3) {
    o.accountRelationships = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountRelationshipsResponse--;
  return o;
}

void checkListAccountRelationshipsResponse(
  api.ListAccountRelationshipsResponse o,
) {
  buildCounterListAccountRelationshipsResponse++;
  if (buildCounterListAccountRelationshipsResponse < 3) {
    checkUnnamed22(o.accountRelationships!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountRelationshipsResponse--;
}

core.List<api.AccountService> buildUnnamed23() => [
  buildAccountService(),
  buildAccountService(),
];

void checkUnnamed23(core.List<api.AccountService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountService(o[0]);
  checkAccountService(o[1]);
}

core.int buildCounterListAccountServicesResponse = 0;
api.ListAccountServicesResponse buildListAccountServicesResponse() {
  final o = api.ListAccountServicesResponse();
  buildCounterListAccountServicesResponse++;
  if (buildCounterListAccountServicesResponse < 3) {
    o.accountServices = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountServicesResponse--;
  return o;
}

void checkListAccountServicesResponse(api.ListAccountServicesResponse o) {
  buildCounterListAccountServicesResponse++;
  if (buildCounterListAccountServicesResponse < 3) {
    checkUnnamed23(o.accountServices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountServicesResponse--;
}

core.List<api.Account> buildUnnamed24() => [buildAccount(), buildAccount()];

void checkUnnamed24(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListAccountsResponse = 0;
api.ListAccountsResponse buildListAccountsResponse() {
  final o = api.ListAccountsResponse();
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    o.accounts = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountsResponse--;
  return o;
}

void checkListAccountsResponse(api.ListAccountsResponse o) {
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    checkUnnamed24(o.accounts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountsResponse--;
}

core.List<api.GbpAccount> buildUnnamed25() => [
  buildGbpAccount(),
  buildGbpAccount(),
];

void checkUnnamed25(core.List<api.GbpAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGbpAccount(o[0]);
  checkGbpAccount(o[1]);
}

core.int buildCounterListGbpAccountsResponse = 0;
api.ListGbpAccountsResponse buildListGbpAccountsResponse() {
  final o = api.ListGbpAccountsResponse();
  buildCounterListGbpAccountsResponse++;
  if (buildCounterListGbpAccountsResponse < 3) {
    o.gbpAccounts = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListGbpAccountsResponse--;
  return o;
}

void checkListGbpAccountsResponse(api.ListGbpAccountsResponse o) {
  buildCounterListGbpAccountsResponse++;
  if (buildCounterListGbpAccountsResponse < 3) {
    checkUnnamed25(o.gbpAccounts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGbpAccountsResponse--;
}

core.List<api.OmnichannelSetting> buildUnnamed26() => [
  buildOmnichannelSetting(),
  buildOmnichannelSetting(),
];

void checkUnnamed26(core.List<api.OmnichannelSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOmnichannelSetting(o[0]);
  checkOmnichannelSetting(o[1]);
}

core.int buildCounterListOmnichannelSettingsResponse = 0;
api.ListOmnichannelSettingsResponse buildListOmnichannelSettingsResponse() {
  final o = api.ListOmnichannelSettingsResponse();
  buildCounterListOmnichannelSettingsResponse++;
  if (buildCounterListOmnichannelSettingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.omnichannelSettings = buildUnnamed26();
  }
  buildCounterListOmnichannelSettingsResponse--;
  return o;
}

void checkListOmnichannelSettingsResponse(
  api.ListOmnichannelSettingsResponse o,
) {
  buildCounterListOmnichannelSettingsResponse++;
  if (buildCounterListOmnichannelSettingsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.omnichannelSettings!);
  }
  buildCounterListOmnichannelSettingsResponse--;
}

core.List<api.OnlineReturnPolicy> buildUnnamed27() => [
  buildOnlineReturnPolicy(),
  buildOnlineReturnPolicy(),
];

void checkUnnamed27(core.List<api.OnlineReturnPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOnlineReturnPolicy(o[0]);
  checkOnlineReturnPolicy(o[1]);
}

core.int buildCounterListOnlineReturnPoliciesResponse = 0;
api.ListOnlineReturnPoliciesResponse buildListOnlineReturnPoliciesResponse() {
  final o = api.ListOnlineReturnPoliciesResponse();
  buildCounterListOnlineReturnPoliciesResponse++;
  if (buildCounterListOnlineReturnPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.onlineReturnPolicies = buildUnnamed27();
  }
  buildCounterListOnlineReturnPoliciesResponse--;
  return o;
}

void checkListOnlineReturnPoliciesResponse(
  api.ListOnlineReturnPoliciesResponse o,
) {
  buildCounterListOnlineReturnPoliciesResponse++;
  if (buildCounterListOnlineReturnPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.onlineReturnPolicies!);
  }
  buildCounterListOnlineReturnPoliciesResponse--;
}

core.List<api.Program> buildUnnamed28() => [buildProgram(), buildProgram()];

void checkUnnamed28(core.List<api.Program> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProgram(o[0]);
  checkProgram(o[1]);
}

core.int buildCounterListProgramsResponse = 0;
api.ListProgramsResponse buildListProgramsResponse() {
  final o = api.ListProgramsResponse();
  buildCounterListProgramsResponse++;
  if (buildCounterListProgramsResponse < 3) {
    o.nextPageToken = 'foo';
    o.programs = buildUnnamed28();
  }
  buildCounterListProgramsResponse--;
  return o;
}

void checkListProgramsResponse(api.ListProgramsResponse o) {
  buildCounterListProgramsResponse++;
  if (buildCounterListProgramsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.programs!);
  }
  buildCounterListProgramsResponse--;
}

core.List<api.Region> buildUnnamed29() => [buildRegion(), buildRegion()];

void checkUnnamed29(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterListRegionsResponse = 0;
api.ListRegionsResponse buildListRegionsResponse() {
  final o = api.ListRegionsResponse();
  buildCounterListRegionsResponse++;
  if (buildCounterListRegionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.regions = buildUnnamed29();
  }
  buildCounterListRegionsResponse--;
  return o;
}

void checkListRegionsResponse(api.ListRegionsResponse o) {
  buildCounterListRegionsResponse++;
  if (buildCounterListRegionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.regions!);
  }
  buildCounterListRegionsResponse--;
}

core.List<api.Account> buildUnnamed30() => [buildAccount(), buildAccount()];

void checkUnnamed30(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListSubAccountsResponse = 0;
api.ListSubAccountsResponse buildListSubAccountsResponse() {
  final o = api.ListSubAccountsResponse();
  buildCounterListSubAccountsResponse++;
  if (buildCounterListSubAccountsResponse < 3) {
    o.accounts = buildUnnamed30();
    o.nextPageToken = 'foo';
  }
  buildCounterListSubAccountsResponse--;
  return o;
}

void checkListSubAccountsResponse(api.ListSubAccountsResponse o) {
  buildCounterListSubAccountsResponse++;
  if (buildCounterListSubAccountsResponse < 3) {
    checkUnnamed30(o.accounts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListSubAccountsResponse--;
}

core.List<api.User> buildUnnamed31() => [buildUser(), buildUser()];

void checkUnnamed31(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterListUsersResponse = 0;
api.ListUsersResponse buildListUsersResponse() {
  final o = api.ListUsersResponse();
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.users = buildUnnamed31();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed31(o.users!);
  }
  buildCounterListUsersResponse--;
}

core.int buildCounterLocalCutoffTime = 0;
api.LocalCutoffTime buildLocalCutoffTime() {
  final o = api.LocalCutoffTime();
  buildCounterLocalCutoffTime++;
  if (buildCounterLocalCutoffTime < 3) {
    o.hour = 'foo';
    o.minute = 'foo';
  }
  buildCounterLocalCutoffTime--;
  return o;
}

void checkLocalCutoffTime(api.LocalCutoffTime o) {
  buildCounterLocalCutoffTime++;
  if (buildCounterLocalCutoffTime < 3) {
    unittest.expect(o.hour!, unittest.equals('foo'));
    unittest.expect(o.minute!, unittest.equals('foo'));
  }
  buildCounterLocalCutoffTime--;
}

core.int buildCounterLocalListingManagement = 0;
api.LocalListingManagement buildLocalListingManagement() {
  final o = api.LocalListingManagement();
  buildCounterLocalListingManagement++;
  if (buildCounterLocalListingManagement < 3) {}
  buildCounterLocalListingManagement--;
  return o;
}

void checkLocalListingManagement(api.LocalListingManagement o) {
  buildCounterLocalListingManagement++;
  if (buildCounterLocalListingManagement < 3) {}
  buildCounterLocalListingManagement--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocationIdSet = 0;
api.LocationIdSet buildLocationIdSet() {
  final o = api.LocationIdSet();
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    o.locationIds = buildUnnamed32();
  }
  buildCounterLocationIdSet--;
  return o;
}

void checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed32(o.locationIds!);
  }
  buildCounterLocationIdSet--;
}

core.List<api.LoyaltyProgramTiers> buildUnnamed33() => [
  buildLoyaltyProgramTiers(),
  buildLoyaltyProgramTiers(),
];

void checkUnnamed33(core.List<api.LoyaltyProgramTiers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyProgramTiers(o[0]);
  checkLoyaltyProgramTiers(o[1]);
}

core.int buildCounterLoyaltyProgram = 0;
api.LoyaltyProgram buildLoyaltyProgram() {
  final o = api.LoyaltyProgram();
  buildCounterLoyaltyProgram++;
  if (buildCounterLoyaltyProgram < 3) {
    o.loyaltyProgramTiers = buildUnnamed33();
    o.programLabel = 'foo';
  }
  buildCounterLoyaltyProgram--;
  return o;
}

void checkLoyaltyProgram(api.LoyaltyProgram o) {
  buildCounterLoyaltyProgram++;
  if (buildCounterLoyaltyProgram < 3) {
    checkUnnamed33(o.loyaltyProgramTiers!);
    unittest.expect(o.programLabel!, unittest.equals('foo'));
  }
  buildCounterLoyaltyProgram--;
}

core.int buildCounterLoyaltyProgramTiers = 0;
api.LoyaltyProgramTiers buildLoyaltyProgramTiers() {
  final o = api.LoyaltyProgramTiers();
  buildCounterLoyaltyProgramTiers++;
  if (buildCounterLoyaltyProgramTiers < 3) {
    o.tierLabel = 'foo';
  }
  buildCounterLoyaltyProgramTiers--;
  return o;
}

void checkLoyaltyProgramTiers(api.LoyaltyProgramTiers o) {
  buildCounterLoyaltyProgramTiers++;
  if (buildCounterLoyaltyProgramTiers < 3) {
    unittest.expect(o.tierLabel!, unittest.equals('foo'));
  }
  buildCounterLoyaltyProgramTiers--;
}

core.List<api.StoreCodeSetWithMov> buildUnnamed34() => [
  buildStoreCodeSetWithMov(),
  buildStoreCodeSetWithMov(),
];

void checkUnnamed34(core.List<api.StoreCodeSetWithMov> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStoreCodeSetWithMov(o[0]);
  checkStoreCodeSetWithMov(o[1]);
}

core.int buildCounterMinimumOrderValueTable = 0;
api.MinimumOrderValueTable buildMinimumOrderValueTable() {
  final o = api.MinimumOrderValueTable();
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    o.storeCodeSetWithMovs = buildUnnamed34();
  }
  buildCounterMinimumOrderValueTable--;
  return o;
}

void checkMinimumOrderValueTable(api.MinimumOrderValueTable o) {
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    checkUnnamed34(o.storeCodeSetWithMovs!);
  }
  buildCounterMinimumOrderValueTable--;
}

core.int buildCounterOmnichannelSetting = 0;
api.OmnichannelSetting buildOmnichannelSetting() {
  final o = api.OmnichannelSetting();
  buildCounterOmnichannelSetting++;
  if (buildCounterOmnichannelSetting < 3) {
    o.about = buildAbout();
    o.inStock = buildInStock();
    o.inventoryVerification = buildInventoryVerification();
    o.lfpLink = buildLfpLink();
    o.lsfType = 'foo';
    o.name = 'foo';
    o.odo = buildOnDisplayToOrder();
    o.pickup = buildPickup();
    o.regionCode = 'foo';
  }
  buildCounterOmnichannelSetting--;
  return o;
}

void checkOmnichannelSetting(api.OmnichannelSetting o) {
  buildCounterOmnichannelSetting++;
  if (buildCounterOmnichannelSetting < 3) {
    checkAbout(o.about!);
    checkInStock(o.inStock!);
    checkInventoryVerification(o.inventoryVerification!);
    checkLfpLink(o.lfpLink!);
    unittest.expect(o.lsfType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOnDisplayToOrder(o.odo!);
    checkPickup(o.pickup!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterOmnichannelSetting--;
}

core.int buildCounterOnDisplayToOrder = 0;
api.OnDisplayToOrder buildOnDisplayToOrder() {
  final o = api.OnDisplayToOrder();
  buildCounterOnDisplayToOrder++;
  if (buildCounterOnDisplayToOrder < 3) {
    o.state = 'foo';
    o.uri = 'foo';
  }
  buildCounterOnDisplayToOrder--;
  return o;
}

void checkOnDisplayToOrder(api.OnDisplayToOrder o) {
  buildCounterOnDisplayToOrder++;
  if (buildCounterOnDisplayToOrder < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterOnDisplayToOrder--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SeasonalOverride> buildUnnamed38() => [
  buildSeasonalOverride(),
  buildSeasonalOverride(),
];

void checkUnnamed38(core.List<api.SeasonalOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeasonalOverride(o[0]);
  checkSeasonalOverride(o[1]);
}

core.int buildCounterOnlineReturnPolicy = 0;
api.OnlineReturnPolicy buildOnlineReturnPolicy() {
  final o = api.OnlineReturnPolicy();
  buildCounterOnlineReturnPolicy++;
  if (buildCounterOnlineReturnPolicy < 3) {
    o.acceptDefectiveOnly = true;
    o.acceptExchange = true;
    o.countries = buildUnnamed35();
    o.itemConditions = buildUnnamed36();
    o.label = 'foo';
    o.name = 'foo';
    o.policy = buildPolicy();
    o.processRefundDays = 42;
    o.restockingFee = buildRestockingFee();
    o.returnLabelSource = 'foo';
    o.returnMethods = buildUnnamed37();
    o.returnPolicyId = 'foo';
    o.returnPolicyUri = 'foo';
    o.returnShippingFee = buildReturnShippingFee();
    o.seasonalOverrides = buildUnnamed38();
  }
  buildCounterOnlineReturnPolicy--;
  return o;
}

void checkOnlineReturnPolicy(api.OnlineReturnPolicy o) {
  buildCounterOnlineReturnPolicy++;
  if (buildCounterOnlineReturnPolicy < 3) {
    unittest.expect(o.acceptDefectiveOnly!, unittest.isTrue);
    unittest.expect(o.acceptExchange!, unittest.isTrue);
    checkUnnamed35(o.countries!);
    checkUnnamed36(o.itemConditions!);
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPolicy(o.policy!);
    unittest.expect(o.processRefundDays!, unittest.equals(42));
    checkRestockingFee(o.restockingFee!);
    unittest.expect(o.returnLabelSource!, unittest.equals('foo'));
    checkUnnamed37(o.returnMethods!);
    unittest.expect(o.returnPolicyId!, unittest.equals('foo'));
    unittest.expect(o.returnPolicyUri!, unittest.equals('foo'));
    checkReturnShippingFee(o.returnShippingFee!);
    checkUnnamed38(o.seasonalOverrides!);
  }
  buildCounterOnlineReturnPolicy--;
}

core.int buildCounterPhoneNumber = 0;
api.PhoneNumber buildPhoneNumber() {
  final o = api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.e164Number = 'foo';
    o.extension = 'foo';
    o.shortCode = buildShortCode();
  }
  buildCounterPhoneNumber--;
  return o;
}

void checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(o.e164Number!, unittest.equals('foo'));
    unittest.expect(o.extension!, unittest.equals('foo'));
    checkShortCode(o.shortCode!);
  }
  buildCounterPhoneNumber--;
}

core.int buildCounterPickup = 0;
api.Pickup buildPickup() {
  final o = api.Pickup();
  buildCounterPickup++;
  if (buildCounterPickup < 3) {
    o.state = 'foo';
    o.uri = 'foo';
  }
  buildCounterPickup--;
  return o;
}

void checkPickup(api.Pickup o) {
  buildCounterPickup++;
  if (buildCounterPickup < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterPickup--;
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.days = 'foo';
    o.type = 'foo';
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    unittest.expect(o.days!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  final o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed39();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed40();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterPostalAddress--;
  return o;
}

void checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed39(o.addressLines!);
    unittest.expect(o.administrativeArea!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.locality!, unittest.equals('foo'));
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    checkUnnamed40(o.recipients!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals(42));
    unittest.expect(o.sortingCode!, unittest.equals('foo'));
    unittest.expect(o.sublocality!, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
}

core.List<api.PostalCodeRange> buildUnnamed41() => [
  buildPostalCodeRange(),
  buildPostalCodeRange(),
];

void checkUnnamed41(core.List<api.PostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeRange(o[0]);
  checkPostalCodeRange(o[1]);
}

core.int buildCounterPostalCodeArea = 0;
api.PostalCodeArea buildPostalCodeArea() {
  final o = api.PostalCodeArea();
  buildCounterPostalCodeArea++;
  if (buildCounterPostalCodeArea < 3) {
    o.postalCodes = buildUnnamed41();
    o.regionCode = 'foo';
  }
  buildCounterPostalCodeArea--;
  return o;
}

void checkPostalCodeArea(api.PostalCodeArea o) {
  buildCounterPostalCodeArea++;
  if (buildCounterPostalCodeArea < 3) {
    checkUnnamed41(o.postalCodes!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterPostalCodeArea--;
}

core.int buildCounterPostalCodeRange = 0;
api.PostalCodeRange buildPostalCodeRange() {
  final o = api.PostalCodeRange();
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    o.begin = 'foo';
    o.end = 'foo';
  }
  buildCounterPostalCodeRange--;
  return o;
}

void checkPostalCodeRange(api.PostalCodeRange o) {
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    unittest.expect(o.begin!, unittest.equals('foo'));
    unittest.expect(o.end!, unittest.equals('foo'));
  }
  buildCounterPostalCodeRange--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 'foo';
    o.currencyCode = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterProductsManagement = 0;
api.ProductsManagement buildProductsManagement() {
  final o = api.ProductsManagement();
  buildCounterProductsManagement++;
  if (buildCounterProductsManagement < 3) {}
  buildCounterProductsManagement--;
  return o;
}

void checkProductsManagement(api.ProductsManagement o) {
  buildCounterProductsManagement++;
  if (buildCounterProductsManagement < 3) {}
  buildCounterProductsManagement--;
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Requirement> buildUnnamed43() => [
  buildRequirement(),
  buildRequirement(),
];

void checkUnnamed43(core.List<api.Requirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequirement(o[0]);
  checkRequirement(o[1]);
}

core.int buildCounterProgram = 0;
api.Program buildProgram() {
  final o = api.Program();
  buildCounterProgram++;
  if (buildCounterProgram < 3) {
    o.activeRegionCodes = buildUnnamed42();
    o.documentationUri = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.unmetRequirements = buildUnnamed43();
  }
  buildCounterProgram--;
  return o;
}

void checkProgram(api.Program o) {
  buildCounterProgram++;
  if (buildCounterProgram < 3) {
    checkUnnamed42(o.activeRegionCodes!);
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed43(o.unmetRequirements!);
  }
  buildCounterProgram--;
}

core.int buildCounterProposeAccountServiceRequest = 0;
api.ProposeAccountServiceRequest buildProposeAccountServiceRequest() {
  final o = api.ProposeAccountServiceRequest();
  buildCounterProposeAccountServiceRequest++;
  if (buildCounterProposeAccountServiceRequest < 3) {
    o.accountService = buildAccountService();
    o.provider = 'foo';
  }
  buildCounterProposeAccountServiceRequest--;
  return o;
}

void checkProposeAccountServiceRequest(api.ProposeAccountServiceRequest o) {
  buildCounterProposeAccountServiceRequest++;
  if (buildCounterProposeAccountServiceRequest < 3) {
    checkAccountService(o.accountService!);
    unittest.expect(o.provider!, unittest.equals('foo'));
  }
  buildCounterProposeAccountServiceRequest--;
}

core.int buildCounterRadiusArea = 0;
api.RadiusArea buildRadiusArea() {
  final o = api.RadiusArea();
  buildCounterRadiusArea++;
  if (buildCounterRadiusArea < 3) {
    o.latLng = buildLatLng();
    o.radius = 42.0;
    o.radiusUnits = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterRadiusArea--;
  return o;
}

void checkRadiusArea(api.RadiusArea o) {
  buildCounterRadiusArea++;
  if (buildCounterRadiusArea < 3) {
    checkLatLng(o.latLng!);
    unittest.expect(o.radius!, unittest.equals(42.0));
    unittest.expect(o.radiusUnits!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterRadiusArea--;
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CarrierRate> buildUnnamed45() => [
  buildCarrierRate(),
  buildCarrierRate(),
];

void checkUnnamed45(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0]);
  checkCarrierRate(o[1]);
}

core.List<api.Table> buildUnnamed46() => [buildTable(), buildTable()];

void checkUnnamed46(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterRateGroup = 0;
api.RateGroup buildRateGroup() {
  final o = api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed44();
    o.carrierRates = buildUnnamed45();
    o.mainTable = buildTable();
    o.name = 'foo';
    o.singleValue = buildValue();
    o.subtables = buildUnnamed46();
  }
  buildCounterRateGroup--;
  return o;
}

void checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed44(o.applicableShippingLabels!);
    checkUnnamed45(o.carrierRates!);
    checkTable(o.mainTable!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkValue(o.singleValue!);
    checkUnnamed46(o.subtables!);
  }
  buildCounterRateGroup--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  final o = api.Region();
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    o.displayName = 'foo';
    o.geotargetArea = buildGeoTargetArea();
    o.name = 'foo';
    o.postalCodeArea = buildPostalCodeArea();
    o.radiusArea = buildRadiusArea();
    o.regionalInventoryEligible = true;
    o.shippingEligible = true;
  }
  buildCounterRegion--;
  return o;
}

void checkRegion(api.Region o) {
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGeoTargetArea(o.geotargetArea!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPostalCodeArea(o.postalCodeArea!);
    checkRadiusArea(o.radiusArea!);
    unittest.expect(o.regionalInventoryEligible!, unittest.isTrue);
    unittest.expect(o.shippingEligible!, unittest.isTrue);
  }
  buildCounterRegion--;
}

core.int buildCounterRegisterGcpRequest = 0;
api.RegisterGcpRequest buildRegisterGcpRequest() {
  final o = api.RegisterGcpRequest();
  buildCounterRegisterGcpRequest++;
  if (buildCounterRegisterGcpRequest < 3) {
    o.developerEmail = 'foo';
  }
  buildCounterRegisterGcpRequest--;
  return o;
}

void checkRegisterGcpRequest(api.RegisterGcpRequest o) {
  buildCounterRegisterGcpRequest++;
  if (buildCounterRegisterGcpRequest < 3) {
    unittest.expect(o.developerEmail!, unittest.equals('foo'));
  }
  buildCounterRegisterGcpRequest--;
}

core.int buildCounterRejectAccountServiceRequest = 0;
api.RejectAccountServiceRequest buildRejectAccountServiceRequest() {
  final o = api.RejectAccountServiceRequest();
  buildCounterRejectAccountServiceRequest++;
  if (buildCounterRejectAccountServiceRequest < 3) {}
  buildCounterRejectAccountServiceRequest--;
  return o;
}

void checkRejectAccountServiceRequest(api.RejectAccountServiceRequest o) {
  buildCounterRejectAccountServiceRequest++;
  if (buildCounterRejectAccountServiceRequest < 3) {}
  buildCounterRejectAccountServiceRequest--;
}

core.int buildCounterRequestInventoryVerificationRequest = 0;
api.RequestInventoryVerificationRequest
buildRequestInventoryVerificationRequest() {
  final o = api.RequestInventoryVerificationRequest();
  buildCounterRequestInventoryVerificationRequest++;
  if (buildCounterRequestInventoryVerificationRequest < 3) {}
  buildCounterRequestInventoryVerificationRequest--;
  return o;
}

void checkRequestInventoryVerificationRequest(
  api.RequestInventoryVerificationRequest o,
) {
  buildCounterRequestInventoryVerificationRequest++;
  if (buildCounterRequestInventoryVerificationRequest < 3) {}
  buildCounterRequestInventoryVerificationRequest--;
}

core.int buildCounterRequestInventoryVerificationResponse = 0;
api.RequestInventoryVerificationResponse
buildRequestInventoryVerificationResponse() {
  final o = api.RequestInventoryVerificationResponse();
  buildCounterRequestInventoryVerificationResponse++;
  if (buildCounterRequestInventoryVerificationResponse < 3) {
    o.omnichannelSetting = buildOmnichannelSetting();
  }
  buildCounterRequestInventoryVerificationResponse--;
  return o;
}

void checkRequestInventoryVerificationResponse(
  api.RequestInventoryVerificationResponse o,
) {
  buildCounterRequestInventoryVerificationResponse++;
  if (buildCounterRequestInventoryVerificationResponse < 3) {
    checkOmnichannelSetting(o.omnichannelSetting!);
  }
  buildCounterRequestInventoryVerificationResponse--;
}

core.int buildCounterRequired = 0;
api.Required buildRequired() {
  final o = api.Required();
  buildCounterRequired++;
  if (buildCounterRequired < 3) {
    o.termsOfService = 'foo';
    o.tosFileUri = 'foo';
  }
  buildCounterRequired--;
  return o;
}

void checkRequired(api.Required o) {
  buildCounterRequired++;
  if (buildCounterRequired < 3) {
    unittest.expect(o.termsOfService!, unittest.equals('foo'));
    unittest.expect(o.tosFileUri!, unittest.equals('foo'));
  }
  buildCounterRequired--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRequirement = 0;
api.Requirement buildRequirement() {
  final o = api.Requirement();
  buildCounterRequirement++;
  if (buildCounterRequirement < 3) {
    o.affectedRegionCodes = buildUnnamed47();
    o.documentationUri = 'foo';
    o.title = 'foo';
  }
  buildCounterRequirement--;
  return o;
}

void checkRequirement(api.Requirement o) {
  buildCounterRequirement++;
  if (buildCounterRequirement < 3) {
    checkUnnamed47(o.affectedRegionCodes!);
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterRequirement--;
}

core.int buildCounterRestockingFee = 0;
api.RestockingFee buildRestockingFee() {
  final o = api.RestockingFee();
  buildCounterRestockingFee++;
  if (buildCounterRestockingFee < 3) {
    o.fixedFee = buildPrice();
    o.microPercent = 42;
  }
  buildCounterRestockingFee--;
  return o;
}

void checkRestockingFee(api.RestockingFee o) {
  buildCounterRestockingFee++;
  if (buildCounterRestockingFee < 3) {
    checkPrice(o.fixedFee!);
    unittest.expect(o.microPercent!, unittest.equals(42));
  }
  buildCounterRestockingFee--;
}

core.int buildCounterReturnShippingFee = 0;
api.ReturnShippingFee buildReturnShippingFee() {
  final o = api.ReturnShippingFee();
  buildCounterReturnShippingFee++;
  if (buildCounterReturnShippingFee < 3) {
    o.fixedFee = buildPrice();
    o.type = 'foo';
  }
  buildCounterReturnShippingFee--;
  return o;
}

void checkReturnShippingFee(api.ReturnShippingFee o) {
  buildCounterReturnShippingFee++;
  if (buildCounterReturnShippingFee < 3) {
    checkPrice(o.fixedFee!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterReturnShippingFee--;
}

core.List<api.Value> buildUnnamed48() => [buildValue(), buildValue()];

void checkUnnamed48(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed48();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed48(o.cells!);
  }
  buildCounterRow--;
}

core.int buildCounterSeasonalOverride = 0;
api.SeasonalOverride buildSeasonalOverride() {
  final o = api.SeasonalOverride();
  buildCounterSeasonalOverride++;
  if (buildCounterSeasonalOverride < 3) {
    o.endDate = buildDate();
    o.label = 'foo';
    o.returnDays = 42;
    o.returnUntilDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterSeasonalOverride--;
  return o;
}

void checkSeasonalOverride(api.SeasonalOverride o) {
  buildCounterSeasonalOverride++;
  if (buildCounterSeasonalOverride < 3) {
    checkDate(o.endDate!);
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.returnDays!, unittest.equals(42));
    checkDate(o.returnUntilDate!);
    checkDate(o.startDate!);
  }
  buildCounterSeasonalOverride--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LoyaltyProgram> buildUnnamed50() => [
  buildLoyaltyProgram(),
  buildLoyaltyProgram(),
];

void checkUnnamed50(core.List<api.LoyaltyProgram> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyProgram(o[0]);
  checkLoyaltyProgram(o[1]);
}

core.List<api.RateGroup> buildUnnamed51() => [
  buildRateGroup(),
  buildRateGroup(),
];

void checkUnnamed51(core.List<api.RateGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRateGroup(o[0]);
  checkRateGroup(o[1]);
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.active = true;
    o.currencyCode = 'foo';
    o.deliveryCountries = buildUnnamed49();
    o.deliveryTime = buildDeliveryTime();
    o.loyaltyPrograms = buildUnnamed50();
    o.minimumOrderValue = buildPrice();
    o.minimumOrderValueTable = buildMinimumOrderValueTable();
    o.rateGroups = buildUnnamed51();
    o.serviceName = 'foo';
    o.shipmentType = 'foo';
    o.storeConfig = buildStoreConfig();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    checkUnnamed49(o.deliveryCountries!);
    checkDeliveryTime(o.deliveryTime!);
    checkUnnamed50(o.loyaltyPrograms!);
    checkPrice(o.minimumOrderValue!);
    checkMinimumOrderValueTable(o.minimumOrderValueTable!);
    checkUnnamed51(o.rateGroups!);
    unittest.expect(o.serviceName!, unittest.equals('foo'));
    unittest.expect(o.shipmentType!, unittest.equals('foo'));
    checkStoreConfig(o.storeConfig!);
  }
  buildCounterService--;
}

core.int buildCounterSetAliasForRelationship = 0;
api.SetAliasForRelationship buildSetAliasForRelationship() {
  final o = api.SetAliasForRelationship();
  buildCounterSetAliasForRelationship++;
  if (buildCounterSetAliasForRelationship < 3) {
    o.accountIdAlias = 'foo';
    o.provider = 'foo';
  }
  buildCounterSetAliasForRelationship--;
  return o;
}

void checkSetAliasForRelationship(api.SetAliasForRelationship o) {
  buildCounterSetAliasForRelationship++;
  if (buildCounterSetAliasForRelationship < 3) {
    unittest.expect(o.accountIdAlias!, unittest.equals('foo'));
    unittest.expect(o.provider!, unittest.equals('foo'));
  }
  buildCounterSetAliasForRelationship--;
}

core.List<api.Service> buildUnnamed52() => [buildService(), buildService()];

void checkUnnamed52(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<api.Warehouse> buildUnnamed53() => [
  buildWarehouse(),
  buildWarehouse(),
];

void checkUnnamed53(core.List<api.Warehouse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarehouse(o[0]);
  checkWarehouse(o[1]);
}

core.int buildCounterShippingSettings = 0;
api.ShippingSettings buildShippingSettings() {
  final o = api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.services = buildUnnamed52();
    o.warehouses = buildUnnamed53();
  }
  buildCounterShippingSettings--;
  return o;
}

void checkShippingSettings(api.ShippingSettings o) {
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed52(o.services!);
    checkUnnamed53(o.warehouses!);
  }
  buildCounterShippingSettings--;
}

core.int buildCounterShortCode = 0;
api.ShortCode buildShortCode() {
  final o = api.ShortCode();
  buildCounterShortCode++;
  if (buildCounterShortCode < 3) {
    o.number = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterShortCode--;
  return o;
}

void checkShortCode(api.ShortCode o) {
  buildCounterShortCode++;
  if (buildCounterShortCode < 3) {
    unittest.expect(o.number!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterShortCode--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStoreCodeSetWithMov = 0;
api.StoreCodeSetWithMov buildStoreCodeSetWithMov() {
  final o = api.StoreCodeSetWithMov();
  buildCounterStoreCodeSetWithMov++;
  if (buildCounterStoreCodeSetWithMov < 3) {
    o.storeCodes = buildUnnamed54();
    o.value = buildPrice();
  }
  buildCounterStoreCodeSetWithMov--;
  return o;
}

void checkStoreCodeSetWithMov(api.StoreCodeSetWithMov o) {
  buildCounterStoreCodeSetWithMov++;
  if (buildCounterStoreCodeSetWithMov < 3) {
    checkUnnamed54(o.storeCodes!);
    checkPrice(o.value!);
  }
  buildCounterStoreCodeSetWithMov--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStoreConfig = 0;
api.StoreConfig buildStoreConfig() {
  final o = api.StoreConfig();
  buildCounterStoreConfig++;
  if (buildCounterStoreConfig < 3) {
    o.cutoffConfig = buildCutoffConfig();
    o.serviceRadius = buildDistance();
    o.storeCodes = buildUnnamed55();
    o.storeServiceType = 'foo';
  }
  buildCounterStoreConfig--;
  return o;
}

void checkStoreConfig(api.StoreConfig o) {
  buildCounterStoreConfig++;
  if (buildCounterStoreConfig < 3) {
    checkCutoffConfig(o.cutoffConfig!);
    checkDistance(o.serviceRadius!);
    checkUnnamed55(o.storeCodes!);
    unittest.expect(o.storeServiceType!, unittest.equals('foo'));
  }
  buildCounterStoreConfig--;
}

core.List<api.Row> buildUnnamed56() => [buildRow(), buildRow()];

void checkUnnamed56(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columnHeaders = buildHeaders();
    o.name = 'foo';
    o.rowHeaders = buildHeaders();
    o.rows = buildUnnamed56();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkHeaders(o.columnHeaders!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkHeaders(o.rowHeaders!);
    checkUnnamed56(o.rows!);
  }
  buildCounterTable--;
}

core.int buildCounterTermsOfService = 0;
api.TermsOfService buildTermsOfService() {
  final o = api.TermsOfService();
  buildCounterTermsOfService++;
  if (buildCounterTermsOfService < 3) {
    o.external_ = true;
    o.fileUri = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterTermsOfService--;
  return o;
}

void checkTermsOfService(api.TermsOfService o) {
  buildCounterTermsOfService++;
  if (buildCounterTermsOfService < 3) {
    unittest.expect(o.external_!, unittest.isTrue);
    unittest.expect(o.fileUri!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterTermsOfService--;
}

core.int buildCounterTermsOfServiceAgreementState = 0;
api.TermsOfServiceAgreementState buildTermsOfServiceAgreementState() {
  final o = api.TermsOfServiceAgreementState();
  buildCounterTermsOfServiceAgreementState++;
  if (buildCounterTermsOfServiceAgreementState < 3) {
    o.accepted = buildAccepted();
    o.name = 'foo';
    o.regionCode = 'foo';
    o.required = buildRequired();
    o.termsOfServiceKind = 'foo';
  }
  buildCounterTermsOfServiceAgreementState--;
  return o;
}

void checkTermsOfServiceAgreementState(api.TermsOfServiceAgreementState o) {
  buildCounterTermsOfServiceAgreementState++;
  if (buildCounterTermsOfServiceAgreementState < 3) {
    checkAccepted(o.accepted!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    checkRequired(o.required!);
    unittest.expect(o.termsOfServiceKind!, unittest.equals('foo'));
  }
  buildCounterTermsOfServiceAgreementState--;
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TransitTimeRow> buildUnnamed58() => [
  buildTransitTimeRow(),
  buildTransitTimeRow(),
];

void checkUnnamed58(core.List<api.TransitTimeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTimeRow(o[0]);
  checkTransitTimeRow(o[1]);
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransitTable = 0;
api.TransitTable buildTransitTable() {
  final o = api.TransitTable();
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    o.postalCodeGroupNames = buildUnnamed57();
    o.rows = buildUnnamed58();
    o.transitTimeLabels = buildUnnamed59();
  }
  buildCounterTransitTable--;
  return o;
}

void checkTransitTable(api.TransitTable o) {
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    checkUnnamed57(o.postalCodeGroupNames!);
    checkUnnamed58(o.rows!);
    checkUnnamed59(o.transitTimeLabels!);
  }
  buildCounterTransitTable--;
}

core.List<api.TransitTimeValue> buildUnnamed60() => [
  buildTransitTimeValue(),
  buildTransitTimeValue(),
];

void checkUnnamed60(core.List<api.TransitTimeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTimeValue(o[0]);
  checkTransitTimeValue(o[1]);
}

core.int buildCounterTransitTimeRow = 0;
api.TransitTimeRow buildTransitTimeRow() {
  final o = api.TransitTimeRow();
  buildCounterTransitTimeRow++;
  if (buildCounterTransitTimeRow < 3) {
    o.values = buildUnnamed60();
  }
  buildCounterTransitTimeRow--;
  return o;
}

void checkTransitTimeRow(api.TransitTimeRow o) {
  buildCounterTransitTimeRow++;
  if (buildCounterTransitTimeRow < 3) {
    checkUnnamed60(o.values!);
  }
  buildCounterTransitTimeRow--;
}

core.int buildCounterTransitTimeValue = 0;
api.TransitTimeValue buildTransitTimeValue() {
  final o = api.TransitTimeValue();
  buildCounterTransitTimeValue++;
  if (buildCounterTransitTimeValue < 3) {
    o.maxTransitDays = 42;
    o.minTransitDays = 42;
  }
  buildCounterTransitTimeValue--;
  return o;
}

void checkTransitTimeValue(api.TransitTimeValue o) {
  buildCounterTransitTimeValue++;
  if (buildCounterTransitTimeValue < 3) {
    unittest.expect(o.maxTransitDays!, unittest.equals(42));
    unittest.expect(o.minTransitDays!, unittest.equals(42));
  }
  buildCounterTransitTimeValue--;
}

core.int buildCounterUnclaimHomepageRequest = 0;
api.UnclaimHomepageRequest buildUnclaimHomepageRequest() {
  final o = api.UnclaimHomepageRequest();
  buildCounterUnclaimHomepageRequest++;
  if (buildCounterUnclaimHomepageRequest < 3) {}
  buildCounterUnclaimHomepageRequest--;
  return o;
}

void checkUnclaimHomepageRequest(api.UnclaimHomepageRequest o) {
  buildCounterUnclaimHomepageRequest++;
  if (buildCounterUnclaimHomepageRequest < 3) {}
  buildCounterUnclaimHomepageRequest--;
}

core.int buildCounterUnregisterGcpRequest = 0;
api.UnregisterGcpRequest buildUnregisterGcpRequest() {
  final o = api.UnregisterGcpRequest();
  buildCounterUnregisterGcpRequest++;
  if (buildCounterUnregisterGcpRequest < 3) {}
  buildCounterUnregisterGcpRequest--;
  return o;
}

void checkUnregisterGcpRequest(api.UnregisterGcpRequest o) {
  buildCounterUnregisterGcpRequest++;
  if (buildCounterUnregisterGcpRequest < 3) {}
  buildCounterUnregisterGcpRequest--;
}

core.int buildCounterUpdateRegionRequest = 0;
api.UpdateRegionRequest buildUpdateRegionRequest() {
  final o = api.UpdateRegionRequest();
  buildCounterUpdateRegionRequest++;
  if (buildCounterUpdateRegionRequest < 3) {
    o.region = buildRegion();
    o.updateMask = 'foo';
  }
  buildCounterUpdateRegionRequest--;
  return o;
}

void checkUpdateRegionRequest(api.UpdateRegionRequest o) {
  buildCounterUpdateRegionRequest++;
  if (buildCounterUpdateRegionRequest < 3) {
    checkRegion(o.region!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterUpdateRegionRequest--;
}

core.int buildCounterUriSettings = 0;
api.UriSettings buildUriSettings() {
  final o = api.UriSettings();
  buildCounterUriSettings++;
  if (buildCounterUriSettings < 3) {
    o.cartUriTemplate = 'foo';
    o.checkoutUriTemplate = 'foo';
  }
  buildCounterUriSettings--;
  return o;
}

void checkUriSettings(api.UriSettings o) {
  buildCounterUriSettings++;
  if (buildCounterUriSettings < 3) {
    unittest.expect(o.cartUriTemplate!, unittest.equals('foo'));
    unittest.expect(o.checkoutUriTemplate!, unittest.equals('foo'));
  }
  buildCounterUriSettings--;
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accessRights = buildUnnamed61();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkUnnamed61(o.accessRights!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  final o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.carrierRate = 'foo';
    o.flatRate = buildPrice();
    o.noShipping = true;
    o.pricePercentage = 'foo';
    o.subtable = 'foo';
  }
  buildCounterValue--;
  return o;
}

void checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.carrierRate!, unittest.equals('foo'));
    checkPrice(o.flatRate!);
    unittest.expect(o.noShipping!, unittest.isTrue);
    unittest.expect(o.pricePercentage!, unittest.equals('foo'));
    unittest.expect(o.subtable!, unittest.equals('foo'));
  }
  buildCounterValue--;
}

core.int buildCounterVerificationMailSettings = 0;
api.VerificationMailSettings buildVerificationMailSettings() {
  final o = api.VerificationMailSettings();
  buildCounterVerificationMailSettings++;
  if (buildCounterVerificationMailSettings < 3) {
    o.verificationMailMode = 'foo';
  }
  buildCounterVerificationMailSettings--;
  return o;
}

void checkVerificationMailSettings(api.VerificationMailSettings o) {
  buildCounterVerificationMailSettings++;
  if (buildCounterVerificationMailSettings < 3) {
    unittest.expect(o.verificationMailMode!, unittest.equals('foo'));
  }
  buildCounterVerificationMailSettings--;
}

core.int buildCounterVerifySelfRequest = 0;
api.VerifySelfRequest buildVerifySelfRequest() {
  final o = api.VerifySelfRequest();
  buildCounterVerifySelfRequest++;
  if (buildCounterVerifySelfRequest < 3) {}
  buildCounterVerifySelfRequest--;
  return o;
}

void checkVerifySelfRequest(api.VerifySelfRequest o) {
  buildCounterVerifySelfRequest++;
  if (buildCounterVerifySelfRequest < 3) {}
  buildCounterVerifySelfRequest--;
}

core.int buildCounterWarehouse = 0;
api.Warehouse buildWarehouse() {
  final o = api.Warehouse();
  buildCounterWarehouse++;
  if (buildCounterWarehouse < 3) {
    o.businessDayConfig = buildBusinessDayConfig();
    o.cutoffTime = buildWarehouseCutoffTime();
    o.handlingDays = 'foo';
    o.name = 'foo';
    o.shippingAddress = buildAddress();
  }
  buildCounterWarehouse--;
  return o;
}

void checkWarehouse(api.Warehouse o) {
  buildCounterWarehouse++;
  if (buildCounterWarehouse < 3) {
    checkBusinessDayConfig(o.businessDayConfig!);
    checkWarehouseCutoffTime(o.cutoffTime!);
    unittest.expect(o.handlingDays!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAddress(o.shippingAddress!);
  }
  buildCounterWarehouse--;
}

core.int buildCounterWarehouseBasedDeliveryTime = 0;
api.WarehouseBasedDeliveryTime buildWarehouseBasedDeliveryTime() {
  final o = api.WarehouseBasedDeliveryTime();
  buildCounterWarehouseBasedDeliveryTime++;
  if (buildCounterWarehouseBasedDeliveryTime < 3) {
    o.carrier = 'foo';
    o.carrierService = 'foo';
    o.warehouse = 'foo';
  }
  buildCounterWarehouseBasedDeliveryTime--;
  return o;
}

void checkWarehouseBasedDeliveryTime(api.WarehouseBasedDeliveryTime o) {
  buildCounterWarehouseBasedDeliveryTime++;
  if (buildCounterWarehouseBasedDeliveryTime < 3) {
    unittest.expect(o.carrier!, unittest.equals('foo'));
    unittest.expect(o.carrierService!, unittest.equals('foo'));
    unittest.expect(o.warehouse!, unittest.equals('foo'));
  }
  buildCounterWarehouseBasedDeliveryTime--;
}

core.int buildCounterWarehouseCutoffTime = 0;
api.WarehouseCutoffTime buildWarehouseCutoffTime() {
  final o = api.WarehouseCutoffTime();
  buildCounterWarehouseCutoffTime++;
  if (buildCounterWarehouseCutoffTime < 3) {
    o.hour = 42;
    o.minute = 42;
  }
  buildCounterWarehouseCutoffTime--;
  return o;
}

void checkWarehouseCutoffTime(api.WarehouseCutoffTime o) {
  buildCounterWarehouseCutoffTime++;
  if (buildCounterWarehouseCutoffTime < 3) {
    unittest.expect(o.hour!, unittest.equals(42));
    unittest.expect(o.minute!, unittest.equals(42));
  }
  buildCounterWarehouseCutoffTime--;
}

core.int buildCounterWeight = 0;
api.Weight buildWeight() {
  final o = api.Weight();
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    o.amountMicros = 'foo';
    o.unit = 'foo';
  }
  buildCounterWeight--;
  return o;
}

void checkWeight(api.Weight o) {
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterWeight--;
}

void main() {
  unittest.group('obj-schema-About', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.About.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAbout(od);
    });
  });

  unittest.group('obj-schema-AcceptTermsOfServiceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceptTermsOfServiceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceptTermsOfServiceResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcceptTermsOfServiceResponse(od);
    });
  });

  unittest.group('obj-schema-Accepted', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccepted();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Accepted.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccepted(od);
    });
  });

  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Account.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountAggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountAggregation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountAggregation(od);
    });
  });

  unittest.group('obj-schema-AccountIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountIssue(od);
    });
  });

  unittest.group('obj-schema-AccountManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountManagement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountManagement(od);
    });
  });

  unittest.group('obj-schema-AccountRelationship', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountRelationship();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountRelationship.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountRelationship(od);
    });
  });

  unittest.group('obj-schema-AccountService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountService(od);
    });
  });

  unittest.group('obj-schema-AddAccountService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddAccountService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddAccountService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddAccountService(od);
    });
  });

  unittest.group('obj-schema-AddUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddUser.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddUser(od);
    });
  });

  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Address.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddress(od);
    });
  });

  unittest.group('obj-schema-ApproveAccountServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveAccountServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveAccountServiceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApproveAccountServiceRequest(od);
    });
  });

  unittest.group('obj-schema-AutofeedSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutofeedSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutofeedSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutofeedSettings(od);
    });
  });

  unittest.group('obj-schema-AutomaticImageImprovements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomaticImageImprovements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomaticImageImprovements.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomaticImageImprovements(od);
    });
  });

  unittest.group('obj-schema-AutomaticImprovements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomaticImprovements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomaticImprovements.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomaticImprovements(od);
    });
  });

  unittest.group('obj-schema-AutomaticItemUpdates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomaticItemUpdates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomaticItemUpdates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomaticItemUpdates(od);
    });
  });

  unittest.group('obj-schema-AutomaticShippingImprovements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutomaticShippingImprovements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutomaticShippingImprovements.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutomaticShippingImprovements(od);
    });
  });

  unittest.group('obj-schema-BatchCreateRegionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateRegionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateRegionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateRegionsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateRegionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateRegionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateRegionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchCreateRegionsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteRegionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteRegionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteRegionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchDeleteRegionsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateRegionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateRegionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateRegionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchUpdateRegionsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateRegionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateRegionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateRegionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchUpdateRegionsResponse(od);
    });
  });

  unittest.group('obj-schema-BusinessDayConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessDayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessDayConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBusinessDayConfig(od);
    });
  });

  unittest.group('obj-schema-BusinessIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessIdentity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBusinessIdentity(od);
    });
  });

  unittest.group('obj-schema-BusinessInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBusinessInfo(od);
    });
  });

  unittest.group('obj-schema-CampaignsManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignsManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignsManagement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCampaignsManagement(od);
    });
  });

  unittest.group('obj-schema-CarrierRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCarrierRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CarrierRate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCarrierRate(od);
    });
  });

  unittest.group('obj-schema-CheckoutSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckoutSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckoutSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckoutSettings(od);
    });
  });

  unittest.group('obj-schema-ClaimHomepageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClaimHomepageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClaimHomepageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClaimHomepageRequest(od);
    });
  });

  unittest.group('obj-schema-ComparisonShopping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComparisonShopping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComparisonShopping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComparisonShopping(od);
    });
  });

  unittest.group('obj-schema-CreateAndConfigureAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAndConfigureAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAndConfigureAccountRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateAndConfigureAccountRequest(od);
    });
  });

  unittest.group('obj-schema-CreateRegionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateRegionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateRegionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateRegionRequest(od);
    });
  });

  unittest.group('obj-schema-CustomerService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomerService(od);
    });
  });

  unittest.group('obj-schema-CutoffConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutoffConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CutoffConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCutoffConfig(od);
    });
  });

  unittest.group('obj-schema-CutoffTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutoffTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CutoffTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCutoffTime(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DeleteRegionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteRegionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteRegionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteRegionRequest(od);
    });
  });

  unittest.group('obj-schema-DeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-DeveloperRegistration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperRegistration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperRegistration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeveloperRegistration(od);
    });
  });

  unittest.group('obj-schema-DisableProgramRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableProgramRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableProgramRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisableProgramRequest(od);
    });
  });

  unittest.group('obj-schema-Distance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDistance(od);
    });
  });

  unittest.group('obj-schema-EmailPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailPreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmailPreferences(od);
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

  unittest.group('obj-schema-EnableProgramRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableProgramRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableProgramRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnableProgramRequest(od);
    });
  });

  unittest.group('obj-schema-FindLfpProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindLfpProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindLfpProvidersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFindLfpProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-GbpAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGbpAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GbpAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGbpAccount(od);
    });
  });

  unittest.group('obj-schema-GeoTargetArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoTargetArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoTargetArea.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeoTargetArea(od);
    });
  });

  unittest.group('obj-schema-GetAccountForGcpRegistrationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetAccountForGcpRegistrationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetAccountForGcpRegistrationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetAccountForGcpRegistrationResponse(od);
    });
  });

  unittest.group('obj-schema-Handshake', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHandshake();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Handshake.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHandshake(od);
    });
  });

  unittest.group('obj-schema-Headers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Headers.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeaders(od);
    });
  });

  unittest.group('obj-schema-Homepage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHomepage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Homepage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHomepage(od);
    });
  });

  unittest.group('obj-schema-IdentityAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentityAttribute(od);
    });
  });

  unittest.group('obj-schema-ImageImprovementsAccountLevelSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageImprovementsAccountLevelSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageImprovementsAccountLevelSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageImprovementsAccountLevelSettings(od);
    });
  });

  unittest.group('obj-schema-Impact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Impact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImpact(od);
    });
  });

  unittest.group('obj-schema-ImpactedDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpactedDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImpactedDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImpactedDestination(od);
    });
  });

  unittest.group('obj-schema-InStock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInStock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InStock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInStock(od);
    });
  });

  unittest.group('obj-schema-InventoryVerification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInventoryVerification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InventoryVerification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInventoryVerification(od);
    });
  });

  unittest.group('obj-schema-ItemUpdatesAccountLevelSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemUpdatesAccountLevelSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemUpdatesAccountLevelSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemUpdatesAccountLevelSettings(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLng.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-LfpLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpLink(od);
    });
  });

  unittest.group('obj-schema-LfpProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfpProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfpProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfpProvider(od);
    });
  });

  unittest.group('obj-schema-LinkGbpAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkGbpAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkGbpAccountRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkGbpAccountRequest(od);
    });
  });

  unittest.group('obj-schema-LinkGbpAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkGbpAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkGbpAccountResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkGbpAccountResponse(od);
    });
  });

  unittest.group('obj-schema-LinkLfpProviderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkLfpProviderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkLfpProviderRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkLfpProviderRequest(od);
    });
  });

  unittest.group('obj-schema-LinkLfpProviderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkLfpProviderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkLfpProviderResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkLfpProviderResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccountIssuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountIssuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountIssuesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountIssuesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccountRelationshipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountRelationshipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountRelationshipsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountRelationshipsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccountServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountServicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountServicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGbpAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGbpAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGbpAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGbpAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOmnichannelSettingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOmnichannelSettingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOmnichannelSettingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOmnichannelSettingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOnlineReturnPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOnlineReturnPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOnlineReturnPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOnlineReturnPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListProgramsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProgramsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProgramsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProgramsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRegionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRegionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRegionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRegionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSubAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-LocalCutoffTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalCutoffTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalCutoffTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalCutoffTime(od);
    });
  });

  unittest.group('obj-schema-LocalListingManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalListingManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalListingManagement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalListingManagement(od);
    });
  });

  unittest.group('obj-schema-LocationIdSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationIdSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationIdSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocationIdSet(od);
    });
  });

  unittest.group('obj-schema-LoyaltyProgram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyProgram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyProgram.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyProgram(od);
    });
  });

  unittest.group('obj-schema-LoyaltyProgramTiers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyProgramTiers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyProgramTiers.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyProgramTiers(od);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMinimumOrderValueTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MinimumOrderValueTable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMinimumOrderValueTable(od);
    });
  });

  unittest.group('obj-schema-OmnichannelSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOmnichannelSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OmnichannelSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOmnichannelSetting(od);
    });
  });

  unittest.group('obj-schema-OnDisplayToOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnDisplayToOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnDisplayToOrder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOnDisplayToOrder(od);
    });
  });

  unittest.group('obj-schema-OnlineReturnPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnlineReturnPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnlineReturnPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOnlineReturnPolicy(od);
    });
  });

  unittest.group('obj-schema-PhoneNumber', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoneNumber();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhoneNumber.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPhoneNumber(od);
    });
  });

  unittest.group('obj-schema-Pickup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPickup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pickup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPickup(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalAddress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostalAddress(od);
    });
  });

  unittest.group('obj-schema-PostalCodeArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalCodeArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalCodeArea.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostalCodeArea(od);
    });
  });

  unittest.group('obj-schema-PostalCodeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalCodeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalCodeRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostalCodeRange(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Price.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-ProductsManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsManagement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductsManagement(od);
    });
  });

  unittest.group('obj-schema-Program', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProgram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Program.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProgram(od);
    });
  });

  unittest.group('obj-schema-ProposeAccountServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProposeAccountServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProposeAccountServiceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProposeAccountServiceRequest(od);
    });
  });

  unittest.group('obj-schema-RadiusArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRadiusArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RadiusArea.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRadiusArea(od);
    });
  });

  unittest.group('obj-schema-RateGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRateGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RateGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRateGroup(od);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Region.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegion(od);
    });
  });

  unittest.group('obj-schema-RegisterGcpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegisterGcpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegisterGcpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegisterGcpRequest(od);
    });
  });

  unittest.group('obj-schema-RejectAccountServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectAccountServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectAccountServiceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRejectAccountServiceRequest(od);
    });
  });

  unittest.group('obj-schema-RequestInventoryVerificationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestInventoryVerificationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestInventoryVerificationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestInventoryVerificationRequest(od);
    });
  });

  unittest.group('obj-schema-RequestInventoryVerificationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestInventoryVerificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestInventoryVerificationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestInventoryVerificationResponse(od);
    });
  });

  unittest.group('obj-schema-Required', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequired();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Required.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequired(od);
    });
  });

  unittest.group('obj-schema-Requirement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequirement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Requirement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequirement(od);
    });
  });

  unittest.group('obj-schema-RestockingFee', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestockingFee();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestockingFee.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestockingFee(od);
    });
  });

  unittest.group('obj-schema-ReturnShippingFee', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnShippingFee();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnShippingFee.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReturnShippingFee(od);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Row.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRow(od);
    });
  });

  unittest.group('obj-schema-SeasonalOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeasonalOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeasonalOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSeasonalOverride(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Service.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkService(od);
    });
  });

  unittest.group('obj-schema-SetAliasForRelationship', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetAliasForRelationship();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetAliasForRelationship.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetAliasForRelationship(od);
    });
  });

  unittest.group('obj-schema-ShippingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShippingSettings(od);
    });
  });

  unittest.group('obj-schema-ShortCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShortCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShortCode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShortCode(od);
    });
  });

  unittest.group('obj-schema-StoreCodeSetWithMov', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoreCodeSetWithMov();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoreCodeSetWithMov.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStoreCodeSetWithMov(od);
    });
  });

  unittest.group('obj-schema-StoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStoreConfig(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Table.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TermsOfService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTermsOfService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TermsOfService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTermsOfService(od);
    });
  });

  unittest.group('obj-schema-TermsOfServiceAgreementState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTermsOfServiceAgreementState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TermsOfServiceAgreementState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTermsOfServiceAgreementState(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZone(od);
    });
  });

  unittest.group('obj-schema-TransitTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitTable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitTable(od);
    });
  });

  unittest.group('obj-schema-TransitTimeRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitTimeRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitTimeRow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitTimeRow(od);
    });
  });

  unittest.group('obj-schema-TransitTimeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitTimeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitTimeValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitTimeValue(od);
    });
  });

  unittest.group('obj-schema-UnclaimHomepageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnclaimHomepageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnclaimHomepageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnclaimHomepageRequest(od);
    });
  });

  unittest.group('obj-schema-UnregisterGcpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnregisterGcpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnregisterGcpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnregisterGcpRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateRegionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateRegionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateRegionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateRegionRequest(od);
    });
  });

  unittest.group('obj-schema-UriSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUriSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UriSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUriSettings(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.User.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUser(od);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Value.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValue(od);
    });
  });

  unittest.group('obj-schema-VerificationMailSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationMailSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationMailSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerificationMailSettings(od);
    });
  });

  unittest.group('obj-schema-VerifySelfRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifySelfRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifySelfRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVerifySelfRequest(od);
    });
  });

  unittest.group('obj-schema-Warehouse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Warehouse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarehouse(od);
    });
  });

  unittest.group('obj-schema-WarehouseBasedDeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouseBasedDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarehouseBasedDeliveryTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarehouseBasedDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-WarehouseCutoffTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouseCutoffTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarehouseCutoffTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarehouseCutoffTime(od);
    });
  });

  unittest.group('obj-schema-Weight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Weight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeight(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--createAndConfigure', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts;
      final arg_request = buildCreateAndConfigureAccountRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateAndConfigureAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateAndConfigureAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 39),
            unittest.equals('accounts/v1/accounts:createAndConfigure'),
          );
          pathOffset += 39;

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
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.createAndConfigure(
        arg_request,
        $fields: arg_$fields,
      );
      checkAccount(response as api.Account);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts;
      final arg_name = 'foo';
      final arg_force = true;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
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
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts;
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('accounts/v1/accounts'),
          );
          pathOffset += 20;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAccountsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAccountsResponse(response as api.ListAccountsResponse);
    });

    unittest.test('method--listSubaccounts', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts;
      final arg_provider = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildListSubAccountsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listSubaccounts(
        arg_provider,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSubAccountsResponse(response as api.ListSubAccountsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Account.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccount(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAccount(response as api.Account);
    });
  });

  unittest.group('resource-AccountsAutofeedSettingsResource', () {
    unittest.test('method--getAutofeedSettings', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.autofeedSettings;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAutofeedSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAutofeedSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkAutofeedSettings(response as api.AutofeedSettings);
    });

    unittest.test('method--updateAutofeedSettings', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.autofeedSettings;
      final arg_request = buildAutofeedSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutofeedSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutofeedSettings(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutofeedSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateAutofeedSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAutofeedSettings(response as api.AutofeedSettings);
    });
  });

  unittest.group('resource-AccountsAutomaticImprovementsResource', () {
    unittest.test('method--getAutomaticImprovements', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.automaticImprovements;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAutomaticImprovements());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAutomaticImprovements(
        arg_name,
        $fields: arg_$fields,
      );
      checkAutomaticImprovements(response as api.AutomaticImprovements);
    });

    unittest.test('method--updateAutomaticImprovements', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.automaticImprovements;
      final arg_request = buildAutomaticImprovements();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutomaticImprovements.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutomaticImprovements(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutomaticImprovements());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateAutomaticImprovements(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAutomaticImprovements(response as api.AutomaticImprovements);
    });
  });

  unittest.group('resource-AccountsBusinessIdentityResource', () {
    unittest.test('method--getBusinessIdentity', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.businessIdentity;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildBusinessIdentity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getBusinessIdentity(
        arg_name,
        $fields: arg_$fields,
      );
      checkBusinessIdentity(response as api.BusinessIdentity);
    });

    unittest.test('method--updateBusinessIdentity', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.businessIdentity;
      final arg_request = buildBusinessIdentity();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BusinessIdentity.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBusinessIdentity(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBusinessIdentity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateBusinessIdentity(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkBusinessIdentity(response as api.BusinessIdentity);
    });
  });

  unittest.group('resource-AccountsBusinessInfoResource', () {
    unittest.test('method--getBusinessInfo', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.businessInfo;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildBusinessInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getBusinessInfo(
        arg_name,
        $fields: arg_$fields,
      );
      checkBusinessInfo(response as api.BusinessInfo);
    });

    unittest.test('method--updateBusinessInfo', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.businessInfo;
      final arg_request = buildBusinessInfo();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BusinessInfo.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBusinessInfo(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBusinessInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateBusinessInfo(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkBusinessInfo(response as api.BusinessInfo);
    });
  });

  unittest.group('resource-AccountsDeveloperRegistrationResource', () {
    unittest.test('method--getAccountForGcpRegistration', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.developerRegistration;
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
            path.substring(pathOffset, pathOffset + 49),
            unittest.equals(
              'accounts/v1/accounts:getAccountForGcpRegistration',
            ),
          );
          pathOffset += 49;

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
          final resp = convert.json.encode(
            buildGetAccountForGcpRegistrationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getAccountForGcpRegistration(
        $fields: arg_$fields,
      );
      checkGetAccountForGcpRegistrationResponse(
        response as api.GetAccountForGcpRegistrationResponse,
      );
    });

    unittest.test('method--getDeveloperRegistration', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.developerRegistration;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildDeveloperRegistration());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDeveloperRegistration(
        arg_name,
        $fields: arg_$fields,
      );
      checkDeveloperRegistration(response as api.DeveloperRegistration);
    });

    unittest.test('method--registerGcp', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.developerRegistration;
      final arg_request = buildRegisterGcpRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RegisterGcpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRegisterGcpRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildDeveloperRegistration());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.registerGcp(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkDeveloperRegistration(response as api.DeveloperRegistration);
    });

    unittest.test('method--unregisterGcp', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.developerRegistration;
      final arg_request = buildUnregisterGcpRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnregisterGcpRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnregisterGcpRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final response = await res.unregisterGcp(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-AccountsEmailPreferencesResource', () {
    unittest.test('method--getEmailPreferences', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.emailPreferences;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildEmailPreferences());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getEmailPreferences(
        arg_name,
        $fields: arg_$fields,
      );
      checkEmailPreferences(response as api.EmailPreferences);
    });

    unittest.test('method--updateEmailPreferences', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.emailPreferences;
      final arg_request = buildEmailPreferences();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EmailPreferences.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEmailPreferences(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmailPreferences());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateEmailPreferences(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkEmailPreferences(response as api.EmailPreferences);
    });
  });

  unittest.group('resource-AccountsGbpAccountsResource', () {
    unittest.test('method--linkGbpAccount', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.gbpAccounts;
      final arg_request = buildLinkGbpAccountRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LinkGbpAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLinkGbpAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildLinkGbpAccountResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.linkGbpAccount(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkLinkGbpAccountResponse(response as api.LinkGbpAccountResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.gbpAccounts;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildListGbpAccountsResponse());
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
      checkListGbpAccountsResponse(response as api.ListGbpAccountsResponse);
    });
  });

  unittest.group('resource-AccountsHomepageResource', () {
    unittest.test('method--claim', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.homepage;
      final arg_request = buildClaimHomepageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ClaimHomepageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkClaimHomepageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildHomepage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.claim(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkHomepage(response as api.Homepage);
    });

    unittest.test('method--getHomepage', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.homepage;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildHomepage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getHomepage(arg_name, $fields: arg_$fields);
      checkHomepage(response as api.Homepage);
    });

    unittest.test('method--unclaim', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.homepage;
      final arg_request = buildUnclaimHomepageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnclaimHomepageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnclaimHomepageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildHomepage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.unclaim(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkHomepage(response as api.Homepage);
    });

    unittest.test('method--updateHomepage', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.homepage;
      final arg_request = buildHomepage();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Homepage.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHomepage(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildHomepage());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateHomepage(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkHomepage(response as api.Homepage);
    });
  });

  unittest.group('resource-AccountsIssuesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.issues;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_timeZone = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
            queryMap['timeZone']!.first,
            unittest.equals(arg_timeZone),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAccountIssuesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        timeZone: arg_timeZone,
        $fields: arg_$fields,
      );
      checkListAccountIssuesResponse(response as api.ListAccountIssuesResponse);
    });
  });

  unittest.group('resource-AccountsOmnichannelSettingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.omnichannelSettings;
      final arg_request = buildOmnichannelSetting();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OmnichannelSetting.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOmnichannelSetting(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildOmnichannelSetting());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOmnichannelSetting(response as api.OmnichannelSetting);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.omnichannelSettings;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildOmnichannelSetting());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOmnichannelSetting(response as api.OmnichannelSetting);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.omnichannelSettings;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(
            buildListOmnichannelSettingsResponse(),
          );
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
      checkListOmnichannelSettingsResponse(
        response as api.ListOmnichannelSettingsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.omnichannelSettings;
      final arg_request = buildOmnichannelSetting();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OmnichannelSetting.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOmnichannelSetting(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOmnichannelSetting());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOmnichannelSetting(response as api.OmnichannelSetting);
    });

    unittest.test('method--requestInventoryVerification', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.omnichannelSettings;
      final arg_request = buildRequestInventoryVerificationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RequestInventoryVerificationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRequestInventoryVerificationRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(
            buildRequestInventoryVerificationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.requestInventoryVerification(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRequestInventoryVerificationResponse(
        response as api.RequestInventoryVerificationResponse,
      );
    });
  });

  unittest.group('resource-AccountsOmnichannelSettingsLfpProvidersResource', () {
    unittest.test('method--find', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(
        mock,
      ).accounts.omnichannelSettings.lfpProviders;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildFindLfpProvidersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.find(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFindLfpProvidersResponse(response as api.FindLfpProvidersResponse);
    });

    unittest.test('method--linkLfpProvider', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(
        mock,
      ).accounts.omnichannelSettings.lfpProviders;
      final arg_request = buildLinkLfpProviderRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LinkLfpProviderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLinkLfpProviderRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildLinkLfpProviderResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.linkLfpProvider(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkLinkLfpProviderResponse(response as api.LinkLfpProviderResponse);
    });
  });

  unittest.group('resource-AccountsOnlineReturnPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.onlineReturnPolicies;
      final arg_request = buildOnlineReturnPolicy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OnlineReturnPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOnlineReturnPolicy(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildOnlineReturnPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOnlineReturnPolicy(response as api.OnlineReturnPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.onlineReturnPolicies;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final res = api.MerchantApi(mock).accounts.onlineReturnPolicies;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildOnlineReturnPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOnlineReturnPolicy(response as api.OnlineReturnPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.onlineReturnPolicies;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(
            buildListOnlineReturnPoliciesResponse(),
          );
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
      checkListOnlineReturnPoliciesResponse(
        response as api.ListOnlineReturnPoliciesResponse,
      );
    });
  });

  unittest.group('resource-AccountsProgramsResource', () {
    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs;
      final arg_request = buildDisableProgramRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DisableProgramRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDisableProgramRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildProgram());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkProgram(response as api.Program);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs;
      final arg_request = buildEnableProgramRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnableProgramRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnableProgramRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildProgram());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkProgram(response as api.Program);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildProgram());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProgram(response as api.Program);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildListProgramsResponse());
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
      checkListProgramsResponse(response as api.ListProgramsResponse);
    });
  });

  unittest.group('resource-AccountsProgramsCheckoutSettingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs.checkoutSettings;
      final arg_request = buildCheckoutSettings();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CheckoutSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCheckoutSettings(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildCheckoutSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkCheckoutSettings(response as api.CheckoutSettings);
    });

    unittest.test('method--deleteCheckoutSettings', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs.checkoutSettings;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final response = await res.deleteCheckoutSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--getCheckoutSettings', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs.checkoutSettings;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildCheckoutSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCheckoutSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkCheckoutSettings(response as api.CheckoutSettings);
    });

    unittest.test('method--updateCheckoutSettings', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.programs.checkoutSettings;
      final arg_request = buildCheckoutSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CheckoutSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCheckoutSettings(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCheckoutSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateCheckoutSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkCheckoutSettings(response as api.CheckoutSettings);
    });
  });

  unittest.group('resource-AccountsRegionsResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
      final arg_request = buildBatchCreateRegionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchCreateRegionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchCreateRegionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildBatchCreateRegionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchCreate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchCreateRegionsResponse(
        response as api.BatchCreateRegionsResponse,
      );
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
      final arg_request = buildBatchDeleteRegionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchDeleteRegionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchDeleteRegionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
      final arg_request = buildBatchUpdateRegionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchUpdateRegionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchUpdateRegionsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildBatchUpdateRegionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchUpdate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchUpdateRegionsResponse(
        response as api.BatchUpdateRegionsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
      final arg_request = buildRegion();
      final arg_parent = 'foo';
      final arg_regionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Region.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRegion(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['regionId']!.first,
            unittest.equals(arg_regionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRegion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        regionId: arg_regionId,
        $fields: arg_$fields,
      );
      checkRegion(response as api.Region);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final res = api.MerchantApi(mock).accounts.regions;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildRegion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRegion(response as api.Region);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildListRegionsResponse());
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
      checkListRegionsResponse(response as api.ListRegionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.regions;
      final arg_request = buildRegion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Region.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRegion(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRegion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkRegion(response as api.Region);
    });
  });

  unittest.group('resource-AccountsRelationshipsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.relationships;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAccountRelationship());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccountRelationship(response as api.AccountRelationship);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.relationships;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(
            buildListAccountRelationshipsResponse(),
          );
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
      checkListAccountRelationshipsResponse(
        response as api.ListAccountRelationshipsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.relationships;
      final arg_request = buildAccountRelationship();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccountRelationship.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccountRelationship(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccountRelationship());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAccountRelationship(response as api.AccountRelationship);
    });
  });

  unittest.group('resource-AccountsServicesResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.services;
      final arg_request = buildApproveAccountServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ApproveAccountServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApproveAccountServiceRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAccountService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.approve(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAccountService(response as api.AccountService);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.services;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAccountService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccountService(response as api.AccountService);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.services;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildListAccountServicesResponse());
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
      checkListAccountServicesResponse(
        response as api.ListAccountServicesResponse,
      );
    });

    unittest.test('method--propose', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.services;
      final arg_request = buildProposeAccountServiceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProposeAccountServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkProposeAccountServiceRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildAccountService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.propose(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAccountService(response as api.AccountService);
    });

    unittest.test('method--reject', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.services;
      final arg_request = buildRejectAccountServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RejectAccountServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRejectAccountServiceRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final response = await res.reject(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-AccountsShippingSettingsResource', () {
    unittest.test('method--getShippingSettings', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.shippingSettings;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildShippingSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getShippingSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkShippingSettings(response as api.ShippingSettings);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.shippingSettings;
      final arg_request = buildShippingSettings();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ShippingSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkShippingSettings(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildShippingSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkShippingSettings(response as api.ShippingSettings);
    });
  });

  unittest.group('resource-AccountsTermsOfServiceAgreementStatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.termsOfServiceAgreementStates;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildTermsOfServiceAgreementState());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTermsOfServiceAgreementState(
        response as api.TermsOfServiceAgreementState,
      );
    });

    unittest.test('method--retrieveForApplication', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.termsOfServiceAgreementStates;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildTermsOfServiceAgreementState());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieveForApplication(
        arg_parent,
        $fields: arg_$fields,
      );
      checkTermsOfServiceAgreementState(
        response as api.TermsOfServiceAgreementState,
      );
    });
  });

  unittest.group('resource-AccountsUsersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.users;
      final arg_request = buildUser();
      final arg_parent = 'foo';
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.User.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUser(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['userId']!.first,
            unittest.equals(arg_userId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        userId: arg_userId,
        $fields: arg_$fields,
      );
      checkUser(response as api.User);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.users;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
      final res = api.MerchantApi(mock).accounts.users;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.users;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildListUsersResponse());
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
      checkListUsersResponse(response as api.ListUsersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.users;
      final arg_request = buildUser();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.User.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUser(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkUser(response as api.User);
    });
  });

  unittest.group('resource-AccountsUsersMeResource', () {
    unittest.test('method--verifySelf', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.users.me;
      final arg_request = buildVerifySelfRequest();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.VerifySelfRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkVerifySelfRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.verifySelf(
        arg_request,
        arg_account,
        $fields: arg_$fields,
      );
      checkUser(response as api.User);
    });
  });

  unittest.group('resource-TermsOfServiceResource', () {
    unittest.test('method--accept', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).termsOfService;
      final arg_name = 'foo';
      final arg_account = 'foo';
      final arg_regionCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
            queryMap['account']!.first,
            unittest.equals(arg_account),
          );
          unittest.expect(
            queryMap['regionCode']!.first,
            unittest.equals(arg_regionCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAcceptTermsOfServiceResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accept(
        arg_name,
        account: arg_account,
        regionCode: arg_regionCode,
        $fields: arg_$fields,
      );
      checkAcceptTermsOfServiceResponse(
        response as api.AcceptTermsOfServiceResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).termsOfService;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('accounts/v1/'),
          );
          pathOffset += 12;
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
          final resp = convert.json.encode(buildTermsOfService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTermsOfService(response as api.TermsOfService);
    });

    unittest.test('method--retrieveLatest', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).termsOfService;
      final arg_kind = 'foo';
      final arg_regionCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 41),
            unittest.equals('accounts/v1/termsOfService:retrieveLatest'),
          );
          pathOffset += 41;

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
          unittest.expect(queryMap['kind']!.first, unittest.equals(arg_kind));
          unittest.expect(
            queryMap['regionCode']!.first,
            unittest.equals(arg_regionCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTermsOfService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieveLatest(
        kind: arg_kind,
        regionCode: arg_regionCode,
        $fields: arg_$fields,
      );
      checkTermsOfService(response as api.TermsOfService);
    });
  });
}
