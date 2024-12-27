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

import 'package:googleapis/content/v2_1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AccountAdsLink> buildUnnamed0() => [
      buildAccountAdsLink(),
      buildAccountAdsLink(),
    ];

void checkUnnamed0(core.List<api.AccountAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdsLink(o[0]);
  checkAccountAdsLink(o[1]);
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.List<api.AccountUser> buildUnnamed3() => [
      buildAccountUser(),
      buildAccountUser(),
    ];

void checkUnnamed3(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0]);
  checkAccountUser(o[1]);
}

core.List<api.AccountYouTubeChannelLink> buildUnnamed4() => [
      buildAccountYouTubeChannelLink(),
      buildAccountYouTubeChannelLink(),
    ];

void checkUnnamed4(core.List<api.AccountYouTubeChannelLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountYouTubeChannelLink(o[0]);
  checkAccountYouTubeChannelLink(o[1]);
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.accountManagement = 'foo';
    o.adsLinks = buildUnnamed0();
    o.adultContent = true;
    o.automaticImprovements = buildAccountAutomaticImprovements();
    o.automaticLabelIds = buildUnnamed1();
    o.businessIdentity = buildAccountBusinessIdentity();
    o.businessInformation = buildAccountBusinessInformation();
    o.conversionSettings = buildAccountConversionSettings();
    o.cssId = 'foo';
    o.googleMyBusinessLink = buildAccountGoogleMyBusinessLink();
    o.id = 'foo';
    o.kind = 'foo';
    o.labelIds = buildUnnamed2();
    o.name = 'foo';
    o.sellerId = 'foo';
    o.users = buildUnnamed3();
    o.websiteUrl = 'foo';
    o.youtubeChannelLinks = buildUnnamed4();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(
      o.accountManagement!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.adsLinks!);
    unittest.expect(o.adultContent!, unittest.isTrue);
    checkAccountAutomaticImprovements(o.automaticImprovements!);
    checkUnnamed1(o.automaticLabelIds!);
    checkAccountBusinessIdentity(o.businessIdentity!);
    checkAccountBusinessInformation(o.businessInformation!);
    checkAccountConversionSettings(o.conversionSettings!);
    unittest.expect(
      o.cssId!,
      unittest.equals('foo'),
    );
    checkAccountGoogleMyBusinessLink(o.googleMyBusinessLink!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.labelIds!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sellerId!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.users!);
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.youtubeChannelLinks!);
  }
  buildCounterAccount--;
}

core.int buildCounterAccountAddress = 0;
api.AccountAddress buildAccountAddress() {
  final o = api.AccountAddress();
  buildCounterAccountAddress++;
  if (buildCounterAccountAddress < 3) {
    o.country = 'foo';
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.region = 'foo';
    o.streetAddress = 'foo';
  }
  buildCounterAccountAddress--;
  return o;
}

void checkAccountAddress(api.AccountAddress o) {
  buildCounterAccountAddress++;
  if (buildCounterAccountAddress < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streetAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountAddress--;
}

core.int buildCounterAccountAdsLink = 0;
api.AccountAdsLink buildAccountAdsLink() {
  final o = api.AccountAdsLink();
  buildCounterAccountAdsLink++;
  if (buildCounterAccountAdsLink < 3) {
    o.adsId = 'foo';
    o.status = 'foo';
  }
  buildCounterAccountAdsLink--;
  return o;
}

void checkAccountAdsLink(api.AccountAdsLink o) {
  buildCounterAccountAdsLink++;
  if (buildCounterAccountAdsLink < 3) {
    unittest.expect(
      o.adsId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountAdsLink--;
}

core.int buildCounterAccountAutomaticImprovements = 0;
api.AccountAutomaticImprovements buildAccountAutomaticImprovements() {
  final o = api.AccountAutomaticImprovements();
  buildCounterAccountAutomaticImprovements++;
  if (buildCounterAccountAutomaticImprovements < 3) {
    o.imageImprovements = buildAccountImageImprovements();
    o.itemUpdates = buildAccountItemUpdates();
    o.shippingImprovements = buildAccountShippingImprovements();
  }
  buildCounterAccountAutomaticImprovements--;
  return o;
}

void checkAccountAutomaticImprovements(api.AccountAutomaticImprovements o) {
  buildCounterAccountAutomaticImprovements++;
  if (buildCounterAccountAutomaticImprovements < 3) {
    checkAccountImageImprovements(o.imageImprovements!);
    checkAccountItemUpdates(o.itemUpdates!);
    checkAccountShippingImprovements(o.shippingImprovements!);
  }
  buildCounterAccountAutomaticImprovements--;
}

core.int buildCounterAccountBusinessIdentity = 0;
api.AccountBusinessIdentity buildAccountBusinessIdentity() {
  final o = api.AccountBusinessIdentity();
  buildCounterAccountBusinessIdentity++;
  if (buildCounterAccountBusinessIdentity < 3) {
    o.blackOwned = buildAccountIdentityType();
    o.includeForPromotions = true;
    o.latinoOwned = buildAccountIdentityType();
    o.smallBusiness = buildAccountIdentityType();
    o.veteranOwned = buildAccountIdentityType();
    o.womenOwned = buildAccountIdentityType();
  }
  buildCounterAccountBusinessIdentity--;
  return o;
}

void checkAccountBusinessIdentity(api.AccountBusinessIdentity o) {
  buildCounterAccountBusinessIdentity++;
  if (buildCounterAccountBusinessIdentity < 3) {
    checkAccountIdentityType(o.blackOwned!);
    unittest.expect(o.includeForPromotions!, unittest.isTrue);
    checkAccountIdentityType(o.latinoOwned!);
    checkAccountIdentityType(o.smallBusiness!);
    checkAccountIdentityType(o.veteranOwned!);
    checkAccountIdentityType(o.womenOwned!);
  }
  buildCounterAccountBusinessIdentity--;
}

core.int buildCounterAccountBusinessInformation = 0;
api.AccountBusinessInformation buildAccountBusinessInformation() {
  final o = api.AccountBusinessInformation();
  buildCounterAccountBusinessInformation++;
  if (buildCounterAccountBusinessInformation < 3) {
    o.address = buildAccountAddress();
    o.customerService = buildAccountCustomerService();
    o.koreanBusinessRegistrationNumber = 'foo';
    o.phoneNumber = 'foo';
    o.phoneVerificationStatus = 'foo';
  }
  buildCounterAccountBusinessInformation--;
  return o;
}

void checkAccountBusinessInformation(api.AccountBusinessInformation o) {
  buildCounterAccountBusinessInformation++;
  if (buildCounterAccountBusinessInformation < 3) {
    checkAccountAddress(o.address!);
    checkAccountCustomerService(o.customerService!);
    unittest.expect(
      o.koreanBusinessRegistrationNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneVerificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountBusinessInformation--;
}

core.int buildCounterAccountConversionSettings = 0;
api.AccountConversionSettings buildAccountConversionSettings() {
  final o = api.AccountConversionSettings();
  buildCounterAccountConversionSettings++;
  if (buildCounterAccountConversionSettings < 3) {
    o.freeListingsAutoTaggingEnabled = true;
  }
  buildCounterAccountConversionSettings--;
  return o;
}

void checkAccountConversionSettings(api.AccountConversionSettings o) {
  buildCounterAccountConversionSettings++;
  if (buildCounterAccountConversionSettings < 3) {
    unittest.expect(o.freeListingsAutoTaggingEnabled!, unittest.isTrue);
  }
  buildCounterAccountConversionSettings--;
}

core.int buildCounterAccountCredentials = 0;
api.AccountCredentials buildAccountCredentials() {
  final o = api.AccountCredentials();
  buildCounterAccountCredentials++;
  if (buildCounterAccountCredentials < 3) {
    o.accessToken = 'foo';
    o.expiresIn = 'foo';
    o.purpose = 'foo';
  }
  buildCounterAccountCredentials--;
  return o;
}

void checkAccountCredentials(api.AccountCredentials o) {
  buildCounterAccountCredentials++;
  if (buildCounterAccountCredentials < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purpose!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountCredentials--;
}

core.int buildCounterAccountCustomerService = 0;
api.AccountCustomerService buildAccountCustomerService() {
  final o = api.AccountCustomerService();
  buildCounterAccountCustomerService++;
  if (buildCounterAccountCustomerService < 3) {
    o.email = 'foo';
    o.phoneNumber = 'foo';
    o.url = 'foo';
  }
  buildCounterAccountCustomerService--;
  return o;
}

void checkAccountCustomerService(api.AccountCustomerService o) {
  buildCounterAccountCustomerService++;
  if (buildCounterAccountCustomerService < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountCustomerService--;
}

core.int buildCounterAccountGoogleMyBusinessLink = 0;
api.AccountGoogleMyBusinessLink buildAccountGoogleMyBusinessLink() {
  final o = api.AccountGoogleMyBusinessLink();
  buildCounterAccountGoogleMyBusinessLink++;
  if (buildCounterAccountGoogleMyBusinessLink < 3) {
    o.gmbAccountId = 'foo';
    o.gmbEmail = 'foo';
    o.status = 'foo';
  }
  buildCounterAccountGoogleMyBusinessLink--;
  return o;
}

void checkAccountGoogleMyBusinessLink(api.AccountGoogleMyBusinessLink o) {
  buildCounterAccountGoogleMyBusinessLink++;
  if (buildCounterAccountGoogleMyBusinessLink < 3) {
    unittest.expect(
      o.gmbAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gmbEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountGoogleMyBusinessLink--;
}

core.int buildCounterAccountIdentifier = 0;
api.AccountIdentifier buildAccountIdentifier() {
  final o = api.AccountIdentifier();
  buildCounterAccountIdentifier++;
  if (buildCounterAccountIdentifier < 3) {
    o.aggregatorId = 'foo';
    o.merchantId = 'foo';
  }
  buildCounterAccountIdentifier--;
  return o;
}

void checkAccountIdentifier(api.AccountIdentifier o) {
  buildCounterAccountIdentifier++;
  if (buildCounterAccountIdentifier < 3) {
    unittest.expect(
      o.aggregatorId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountIdentifier--;
}

core.int buildCounterAccountIdentityType = 0;
api.AccountIdentityType buildAccountIdentityType() {
  final o = api.AccountIdentityType();
  buildCounterAccountIdentityType++;
  if (buildCounterAccountIdentityType < 3) {
    o.selfIdentified = true;
  }
  buildCounterAccountIdentityType--;
  return o;
}

void checkAccountIdentityType(api.AccountIdentityType o) {
  buildCounterAccountIdentityType++;
  if (buildCounterAccountIdentityType < 3) {
    unittest.expect(o.selfIdentified!, unittest.isTrue);
  }
  buildCounterAccountIdentityType--;
}

core.int buildCounterAccountImageImprovements = 0;
api.AccountImageImprovements buildAccountImageImprovements() {
  final o = api.AccountImageImprovements();
  buildCounterAccountImageImprovements++;
  if (buildCounterAccountImageImprovements < 3) {
    o.accountImageImprovementsSettings =
        buildAccountImageImprovementsSettings();
    o.effectiveAllowAutomaticImageImprovements = true;
  }
  buildCounterAccountImageImprovements--;
  return o;
}

void checkAccountImageImprovements(api.AccountImageImprovements o) {
  buildCounterAccountImageImprovements++;
  if (buildCounterAccountImageImprovements < 3) {
    checkAccountImageImprovementsSettings(o.accountImageImprovementsSettings!);
    unittest.expect(
        o.effectiveAllowAutomaticImageImprovements!, unittest.isTrue);
  }
  buildCounterAccountImageImprovements--;
}

core.int buildCounterAccountImageImprovementsSettings = 0;
api.AccountImageImprovementsSettings buildAccountImageImprovementsSettings() {
  final o = api.AccountImageImprovementsSettings();
  buildCounterAccountImageImprovementsSettings++;
  if (buildCounterAccountImageImprovementsSettings < 3) {
    o.allowAutomaticImageImprovements = true;
  }
  buildCounterAccountImageImprovementsSettings--;
  return o;
}

void checkAccountImageImprovementsSettings(
    api.AccountImageImprovementsSettings o) {
  buildCounterAccountImageImprovementsSettings++;
  if (buildCounterAccountImageImprovementsSettings < 3) {
    unittest.expect(o.allowAutomaticImageImprovements!, unittest.isTrue);
  }
  buildCounterAccountImageImprovementsSettings--;
}

core.List<api.Action> buildUnnamed5() => [
      buildAction(),
      buildAction(),
    ];

void checkUnnamed5(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.int buildCounterAccountIssue = 0;
api.AccountIssue buildAccountIssue() {
  final o = api.AccountIssue();
  buildCounterAccountIssue++;
  if (buildCounterAccountIssue < 3) {
    o.actions = buildUnnamed5();
    o.impact = buildAccountIssueImpact();
    o.prerenderedContent = 'foo';
    o.title = 'foo';
  }
  buildCounterAccountIssue--;
  return o;
}

void checkAccountIssue(api.AccountIssue o) {
  buildCounterAccountIssue++;
  if (buildCounterAccountIssue < 3) {
    checkUnnamed5(o.actions!);
    checkAccountIssueImpact(o.impact!);
    unittest.expect(
      o.prerenderedContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountIssue--;
}

core.List<api.Breakdown> buildUnnamed6() => [
      buildBreakdown(),
      buildBreakdown(),
    ];

void checkUnnamed6(core.List<api.Breakdown> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdown(o[0]);
  checkBreakdown(o[1]);
}

core.int buildCounterAccountIssueImpact = 0;
api.AccountIssueImpact buildAccountIssueImpact() {
  final o = api.AccountIssueImpact();
  buildCounterAccountIssueImpact++;
  if (buildCounterAccountIssueImpact < 3) {
    o.breakdowns = buildUnnamed6();
    o.message = 'foo';
    o.severity = 'foo';
  }
  buildCounterAccountIssueImpact--;
  return o;
}

void checkAccountIssueImpact(api.AccountIssueImpact o) {
  buildCounterAccountIssueImpact++;
  if (buildCounterAccountIssueImpact < 3) {
    checkUnnamed6(o.breakdowns!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountIssueImpact--;
}

core.int buildCounterAccountItemUpdates = 0;
api.AccountItemUpdates buildAccountItemUpdates() {
  final o = api.AccountItemUpdates();
  buildCounterAccountItemUpdates++;
  if (buildCounterAccountItemUpdates < 3) {
    o.accountItemUpdatesSettings = buildAccountItemUpdatesSettings();
    o.effectiveAllowAvailabilityUpdates = true;
    o.effectiveAllowConditionUpdates = true;
    o.effectiveAllowPriceUpdates = true;
    o.effectiveAllowStrictAvailabilityUpdates = true;
  }
  buildCounterAccountItemUpdates--;
  return o;
}

void checkAccountItemUpdates(api.AccountItemUpdates o) {
  buildCounterAccountItemUpdates++;
  if (buildCounterAccountItemUpdates < 3) {
    checkAccountItemUpdatesSettings(o.accountItemUpdatesSettings!);
    unittest.expect(o.effectiveAllowAvailabilityUpdates!, unittest.isTrue);
    unittest.expect(o.effectiveAllowConditionUpdates!, unittest.isTrue);
    unittest.expect(o.effectiveAllowPriceUpdates!, unittest.isTrue);
    unittest.expect(
        o.effectiveAllowStrictAvailabilityUpdates!, unittest.isTrue);
  }
  buildCounterAccountItemUpdates--;
}

core.int buildCounterAccountItemUpdatesSettings = 0;
api.AccountItemUpdatesSettings buildAccountItemUpdatesSettings() {
  final o = api.AccountItemUpdatesSettings();
  buildCounterAccountItemUpdatesSettings++;
  if (buildCounterAccountItemUpdatesSettings < 3) {
    o.allowAvailabilityUpdates = true;
    o.allowConditionUpdates = true;
    o.allowPriceUpdates = true;
    o.allowStrictAvailabilityUpdates = true;
  }
  buildCounterAccountItemUpdatesSettings--;
  return o;
}

void checkAccountItemUpdatesSettings(api.AccountItemUpdatesSettings o) {
  buildCounterAccountItemUpdatesSettings++;
  if (buildCounterAccountItemUpdatesSettings < 3) {
    unittest.expect(o.allowAvailabilityUpdates!, unittest.isTrue);
    unittest.expect(o.allowConditionUpdates!, unittest.isTrue);
    unittest.expect(o.allowPriceUpdates!, unittest.isTrue);
    unittest.expect(o.allowStrictAvailabilityUpdates!, unittest.isTrue);
  }
  buildCounterAccountItemUpdatesSettings--;
}

core.int buildCounterAccountLabel = 0;
api.AccountLabel buildAccountLabel() {
  final o = api.AccountLabel();
  buildCounterAccountLabel++;
  if (buildCounterAccountLabel < 3) {
    o.accountId = 'foo';
    o.description = 'foo';
    o.labelId = 'foo';
    o.labelType = 'foo';
    o.name = 'foo';
  }
  buildCounterAccountLabel--;
  return o;
}

void checkAccountLabel(api.AccountLabel o) {
  buildCounterAccountLabel++;
  if (buildCounterAccountLabel < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountLabel--;
}

core.int buildCounterAccountReturnCarrier = 0;
api.AccountReturnCarrier buildAccountReturnCarrier() {
  final o = api.AccountReturnCarrier();
  buildCounterAccountReturnCarrier++;
  if (buildCounterAccountReturnCarrier < 3) {
    o.carrierAccountId = 'foo';
    o.carrierAccountName = 'foo';
    o.carrierAccountNumber = 'foo';
    o.carrierCode = 'foo';
  }
  buildCounterAccountReturnCarrier--;
  return o;
}

void checkAccountReturnCarrier(api.AccountReturnCarrier o) {
  buildCounterAccountReturnCarrier++;
  if (buildCounterAccountReturnCarrier < 3) {
    unittest.expect(
      o.carrierAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierAccountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierAccountNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountReturnCarrier--;
}

core.int buildCounterAccountShippingImprovements = 0;
api.AccountShippingImprovements buildAccountShippingImprovements() {
  final o = api.AccountShippingImprovements();
  buildCounterAccountShippingImprovements++;
  if (buildCounterAccountShippingImprovements < 3) {
    o.allowShippingImprovements = true;
  }
  buildCounterAccountShippingImprovements--;
  return o;
}

void checkAccountShippingImprovements(api.AccountShippingImprovements o) {
  buildCounterAccountShippingImprovements++;
  if (buildCounterAccountShippingImprovements < 3) {
    unittest.expect(o.allowShippingImprovements!, unittest.isTrue);
  }
  buildCounterAccountShippingImprovements--;
}

core.List<api.AccountStatusAccountLevelIssue> buildUnnamed7() => [
      buildAccountStatusAccountLevelIssue(),
      buildAccountStatusAccountLevelIssue(),
    ];

void checkUnnamed7(core.List<api.AccountStatusAccountLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusAccountLevelIssue(o[0]);
  checkAccountStatusAccountLevelIssue(o[1]);
}

core.List<api.AccountStatusProducts> buildUnnamed8() => [
      buildAccountStatusProducts(),
      buildAccountStatusProducts(),
    ];

void checkUnnamed8(core.List<api.AccountStatusProducts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusProducts(o[0]);
  checkAccountStatusProducts(o[1]);
}

core.int buildCounterAccountStatus = 0;
api.AccountStatus buildAccountStatus() {
  final o = api.AccountStatus();
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    o.accountId = 'foo';
    o.accountLevelIssues = buildUnnamed7();
    o.accountManagement = 'foo';
    o.kind = 'foo';
    o.products = buildUnnamed8();
    o.websiteClaimed = true;
  }
  buildCounterAccountStatus--;
  return o;
}

void checkAccountStatus(api.AccountStatus o) {
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.accountLevelIssues!);
    unittest.expect(
      o.accountManagement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.products!);
    unittest.expect(o.websiteClaimed!, unittest.isTrue);
  }
  buildCounterAccountStatus--;
}

core.int buildCounterAccountStatusAccountLevelIssue = 0;
api.AccountStatusAccountLevelIssue buildAccountStatusAccountLevelIssue() {
  final o = api.AccountStatusAccountLevelIssue();
  buildCounterAccountStatusAccountLevelIssue++;
  if (buildCounterAccountStatusAccountLevelIssue < 3) {
    o.country = 'foo';
    o.destination = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.id = 'foo';
    o.severity = 'foo';
    o.title = 'foo';
  }
  buildCounterAccountStatusAccountLevelIssue--;
  return o;
}

void checkAccountStatusAccountLevelIssue(api.AccountStatusAccountLevelIssue o) {
  buildCounterAccountStatusAccountLevelIssue++;
  if (buildCounterAccountStatusAccountLevelIssue < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountStatusAccountLevelIssue--;
}

core.int buildCounterAccountStatusItemLevelIssue = 0;
api.AccountStatusItemLevelIssue buildAccountStatusItemLevelIssue() {
  final o = api.AccountStatusItemLevelIssue();
  buildCounterAccountStatusItemLevelIssue++;
  if (buildCounterAccountStatusItemLevelIssue < 3) {
    o.attributeName = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.numItems = 'foo';
    o.resolution = 'foo';
    o.servability = 'foo';
  }
  buildCounterAccountStatusItemLevelIssue--;
  return o;
}

void checkAccountStatusItemLevelIssue(api.AccountStatusItemLevelIssue o) {
  buildCounterAccountStatusItemLevelIssue++;
  if (buildCounterAccountStatusItemLevelIssue < 3) {
    unittest.expect(
      o.attributeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numItems!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servability!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountStatusItemLevelIssue--;
}

core.List<api.AccountStatusItemLevelIssue> buildUnnamed9() => [
      buildAccountStatusItemLevelIssue(),
      buildAccountStatusItemLevelIssue(),
    ];

void checkUnnamed9(core.List<api.AccountStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusItemLevelIssue(o[0]);
  checkAccountStatusItemLevelIssue(o[1]);
}

core.int buildCounterAccountStatusProducts = 0;
api.AccountStatusProducts buildAccountStatusProducts() {
  final o = api.AccountStatusProducts();
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    o.channel = 'foo';
    o.country = 'foo';
    o.destination = 'foo';
    o.itemLevelIssues = buildUnnamed9();
    o.statistics = buildAccountStatusStatistics();
  }
  buildCounterAccountStatusProducts--;
  return o;
}

void checkAccountStatusProducts(api.AccountStatusProducts o) {
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.itemLevelIssues!);
    checkAccountStatusStatistics(o.statistics!);
  }
  buildCounterAccountStatusProducts--;
}

core.int buildCounterAccountStatusStatistics = 0;
api.AccountStatusStatistics buildAccountStatusStatistics() {
  final o = api.AccountStatusStatistics();
  buildCounterAccountStatusStatistics++;
  if (buildCounterAccountStatusStatistics < 3) {
    o.active = 'foo';
    o.disapproved = 'foo';
    o.expiring = 'foo';
    o.pending = 'foo';
  }
  buildCounterAccountStatusStatistics--;
  return o;
}

void checkAccountStatusStatistics(api.AccountStatusStatistics o) {
  buildCounterAccountStatusStatistics++;
  if (buildCounterAccountStatusStatistics < 3) {
    unittest.expect(
      o.active!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disapproved!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiring!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pending!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountStatusStatistics--;
}

core.List<api.AccountTaxTaxRule> buildUnnamed10() => [
      buildAccountTaxTaxRule(),
      buildAccountTaxTaxRule(),
    ];

void checkUnnamed10(core.List<api.AccountTaxTaxRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTaxTaxRule(o[0]);
  checkAccountTaxTaxRule(o[1]);
}

core.int buildCounterAccountTax = 0;
api.AccountTax buildAccountTax() {
  final o = api.AccountTax();
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    o.accountId = 'foo';
    o.kind = 'foo';
    o.rules = buildUnnamed10();
  }
  buildCounterAccountTax--;
  return o;
}

void checkAccountTax(api.AccountTax o) {
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.rules!);
  }
  buildCounterAccountTax--;
}

core.int buildCounterAccountTaxTaxRule = 0;
api.AccountTaxTaxRule buildAccountTaxTaxRule() {
  final o = api.AccountTaxTaxRule();
  buildCounterAccountTaxTaxRule++;
  if (buildCounterAccountTaxTaxRule < 3) {
    o.country = 'foo';
    o.locationId = 'foo';
    o.ratePercent = 'foo';
    o.shippingTaxed = true;
    o.useGlobalRate = true;
  }
  buildCounterAccountTaxTaxRule--;
  return o;
}

void checkAccountTaxTaxRule(api.AccountTaxTaxRule o) {
  buildCounterAccountTaxTaxRule++;
  if (buildCounterAccountTaxTaxRule < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ratePercent!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shippingTaxed!, unittest.isTrue);
    unittest.expect(o.useGlobalRate!, unittest.isTrue);
  }
  buildCounterAccountTaxTaxRule--;
}

core.int buildCounterAccountUser = 0;
api.AccountUser buildAccountUser() {
  final o = api.AccountUser();
  buildCounterAccountUser++;
  if (buildCounterAccountUser < 3) {
    o.admin = true;
    o.emailAddress = 'foo';
    o.orderManager = true;
    o.paymentsAnalyst = true;
    o.paymentsManager = true;
    o.reportingManager = true;
  }
  buildCounterAccountUser--;
  return o;
}

void checkAccountUser(api.AccountUser o) {
  buildCounterAccountUser++;
  if (buildCounterAccountUser < 3) {
    unittest.expect(o.admin!, unittest.isTrue);
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.orderManager!, unittest.isTrue);
    unittest.expect(o.paymentsAnalyst!, unittest.isTrue);
    unittest.expect(o.paymentsManager!, unittest.isTrue);
    unittest.expect(o.reportingManager!, unittest.isTrue);
  }
  buildCounterAccountUser--;
}

core.int buildCounterAccountYouTubeChannelLink = 0;
api.AccountYouTubeChannelLink buildAccountYouTubeChannelLink() {
  final o = api.AccountYouTubeChannelLink();
  buildCounterAccountYouTubeChannelLink++;
  if (buildCounterAccountYouTubeChannelLink < 3) {
    o.channelId = 'foo';
    o.status = 'foo';
  }
  buildCounterAccountYouTubeChannelLink--;
  return o;
}

void checkAccountYouTubeChannelLink(api.AccountYouTubeChannelLink o) {
  buildCounterAccountYouTubeChannelLink++;
  if (buildCounterAccountYouTubeChannelLink < 3) {
    unittest.expect(
      o.channelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountYouTubeChannelLink--;
}

core.List<api.AccountIdentifier> buildUnnamed11() => [
      buildAccountIdentifier(),
      buildAccountIdentifier(),
    ];

void checkUnnamed11(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0]);
  checkAccountIdentifier(o[1]);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
api.AccountsAuthInfoResponse buildAccountsAuthInfoResponse() {
  final o = api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed11();
    o.kind = 'foo';
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

void checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed11(o.accountIdentifiers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsAuthInfoResponse--;
}

core.int buildCounterAccountsClaimWebsiteResponse = 0;
api.AccountsClaimWebsiteResponse buildAccountsClaimWebsiteResponse() {
  final o = api.AccountsClaimWebsiteResponse();
  buildCounterAccountsClaimWebsiteResponse++;
  if (buildCounterAccountsClaimWebsiteResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterAccountsClaimWebsiteResponse--;
  return o;
}

void checkAccountsClaimWebsiteResponse(api.AccountsClaimWebsiteResponse o) {
  buildCounterAccountsClaimWebsiteResponse++;
  if (buildCounterAccountsClaimWebsiteResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsClaimWebsiteResponse--;
}

core.List<api.AccountsCustomBatchRequestEntry> buildUnnamed12() => [
      buildAccountsCustomBatchRequestEntry(),
      buildAccountsCustomBatchRequestEntry(),
    ];

void checkUnnamed12(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(o[0]);
  checkAccountsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
api.AccountsCustomBatchRequest buildAccountsCustomBatchRequest() {
  final o = api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed12();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

void checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed12(o.entries!);
  }
  buildCounterAccountsCustomBatchRequest--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterAccountsCustomBatchRequestEntry = 0;
api.AccountsCustomBatchRequestEntry buildAccountsCustomBatchRequestEntry() {
  final o = api.AccountsCustomBatchRequestEntry();
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    o.account = buildAccount();
    o.accountId = 'foo';
    o.batchId = 42;
    o.force = true;
    o.labelIds = buildUnnamed13();
    o.linkRequest = buildAccountsCustomBatchRequestEntryLinkRequest();
    o.merchantId = 'foo';
    o.method = 'foo';
    o.overwrite = true;
    o.view = 'foo';
  }
  buildCounterAccountsCustomBatchRequestEntry--;
  return o;
}

void checkAccountsCustomBatchRequestEntry(
    api.AccountsCustomBatchRequestEntry o) {
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    checkAccount(o.account!);
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(o.force!, unittest.isTrue);
    checkUnnamed13(o.labelIds!);
    checkAccountsCustomBatchRequestEntryLinkRequest(o.linkRequest!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(o.overwrite!, unittest.isTrue);
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsCustomBatchRequestEntry--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterAccountsCustomBatchRequestEntryLinkRequest = 0;
api.AccountsCustomBatchRequestEntryLinkRequest
    buildAccountsCustomBatchRequestEntryLinkRequest() {
  final o = api.AccountsCustomBatchRequestEntryLinkRequest();
  buildCounterAccountsCustomBatchRequestEntryLinkRequest++;
  if (buildCounterAccountsCustomBatchRequestEntryLinkRequest < 3) {
    o.action = 'foo';
    o.linkType = 'foo';
    o.linkedAccountId = 'foo';
    o.services = buildUnnamed14();
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
  return o;
}

void checkAccountsCustomBatchRequestEntryLinkRequest(
    api.AccountsCustomBatchRequestEntryLinkRequest o) {
  buildCounterAccountsCustomBatchRequestEntryLinkRequest++;
  if (buildCounterAccountsCustomBatchRequestEntryLinkRequest < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedAccountId!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.services!);
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
}

core.List<api.AccountsCustomBatchResponseEntry> buildUnnamed15() => [
      buildAccountsCustomBatchResponseEntry(),
      buildAccountsCustomBatchResponseEntry(),
    ];

void checkUnnamed15(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(o[0]);
  checkAccountsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
api.AccountsCustomBatchResponse buildAccountsCustomBatchResponse() {
  final o = api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed15();
    o.kind = 'foo';
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

void checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed15(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsCustomBatchResponse--;
}

core.int buildCounterAccountsCustomBatchResponseEntry = 0;
api.AccountsCustomBatchResponseEntry buildAccountsCustomBatchResponseEntry() {
  final o = api.AccountsCustomBatchResponseEntry();
  buildCounterAccountsCustomBatchResponseEntry++;
  if (buildCounterAccountsCustomBatchResponseEntry < 3) {
    o.account = buildAccount();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
  }
  buildCounterAccountsCustomBatchResponseEntry--;
  return o;
}

void checkAccountsCustomBatchResponseEntry(
    api.AccountsCustomBatchResponseEntry o) {
  buildCounterAccountsCustomBatchResponseEntry++;
  if (buildCounterAccountsCustomBatchResponseEntry < 3) {
    checkAccount(o.account!);
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsCustomBatchResponseEntry--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterAccountsLinkRequest = 0;
api.AccountsLinkRequest buildAccountsLinkRequest() {
  final o = api.AccountsLinkRequest();
  buildCounterAccountsLinkRequest++;
  if (buildCounterAccountsLinkRequest < 3) {
    o.action = 'foo';
    o.eCommercePlatformLinkInfo = buildECommercePlatformLinkInfo();
    o.linkType = 'foo';
    o.linkedAccountId = 'foo';
    o.paymentServiceProviderLinkInfo = buildPaymentServiceProviderLinkInfo();
    o.services = buildUnnamed16();
  }
  buildCounterAccountsLinkRequest--;
  return o;
}

void checkAccountsLinkRequest(api.AccountsLinkRequest o) {
  buildCounterAccountsLinkRequest++;
  if (buildCounterAccountsLinkRequest < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkECommercePlatformLinkInfo(o.eCommercePlatformLinkInfo!);
    unittest.expect(
      o.linkType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedAccountId!,
      unittest.equals('foo'),
    );
    checkPaymentServiceProviderLinkInfo(o.paymentServiceProviderLinkInfo!);
    checkUnnamed16(o.services!);
  }
  buildCounterAccountsLinkRequest--;
}

core.int buildCounterAccountsLinkResponse = 0;
api.AccountsLinkResponse buildAccountsLinkResponse() {
  final o = api.AccountsLinkResponse();
  buildCounterAccountsLinkResponse++;
  if (buildCounterAccountsLinkResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterAccountsLinkResponse--;
  return o;
}

void checkAccountsLinkResponse(api.AccountsLinkResponse o) {
  buildCounterAccountsLinkResponse++;
  if (buildCounterAccountsLinkResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsLinkResponse--;
}

core.List<api.LinkedAccount> buildUnnamed17() => [
      buildLinkedAccount(),
      buildLinkedAccount(),
    ];

void checkUnnamed17(core.List<api.LinkedAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedAccount(o[0]);
  checkLinkedAccount(o[1]);
}

core.int buildCounterAccountsListLinksResponse = 0;
api.AccountsListLinksResponse buildAccountsListLinksResponse() {
  final o = api.AccountsListLinksResponse();
  buildCounterAccountsListLinksResponse++;
  if (buildCounterAccountsListLinksResponse < 3) {
    o.kind = 'foo';
    o.links = buildUnnamed17();
    o.nextPageToken = 'foo';
  }
  buildCounterAccountsListLinksResponse--;
  return o;
}

void checkAccountsListLinksResponse(api.AccountsListLinksResponse o) {
  buildCounterAccountsListLinksResponse++;
  if (buildCounterAccountsListLinksResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.links!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsListLinksResponse--;
}

core.List<api.Account> buildUnnamed18() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed18(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsListResponse = 0;
api.AccountsListResponse buildAccountsListResponse() {
  final o = api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed18();
  }
  buildCounterAccountsListResponse--;
  return o;
}

void checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.resources!);
  }
  buildCounterAccountsListResponse--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterAccountsUpdateLabelsRequest = 0;
api.AccountsUpdateLabelsRequest buildAccountsUpdateLabelsRequest() {
  final o = api.AccountsUpdateLabelsRequest();
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    o.labelIds = buildUnnamed19();
  }
  buildCounterAccountsUpdateLabelsRequest--;
  return o;
}

void checkAccountsUpdateLabelsRequest(api.AccountsUpdateLabelsRequest o) {
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    checkUnnamed19(o.labelIds!);
  }
  buildCounterAccountsUpdateLabelsRequest--;
}

core.int buildCounterAccountsUpdateLabelsResponse = 0;
api.AccountsUpdateLabelsResponse buildAccountsUpdateLabelsResponse() {
  final o = api.AccountsUpdateLabelsResponse();
  buildCounterAccountsUpdateLabelsResponse++;
  if (buildCounterAccountsUpdateLabelsResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterAccountsUpdateLabelsResponse--;
  return o;
}

void checkAccountsUpdateLabelsResponse(api.AccountsUpdateLabelsResponse o) {
  buildCounterAccountsUpdateLabelsResponse++;
  if (buildCounterAccountsUpdateLabelsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsUpdateLabelsResponse--;
}

core.List<api.AccountstatusesCustomBatchRequestEntry> buildUnnamed20() => [
      buildAccountstatusesCustomBatchRequestEntry(),
      buildAccountstatusesCustomBatchRequestEntry(),
    ];

void checkUnnamed20(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(o[0]);
  checkAccountstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
api.AccountstatusesCustomBatchRequest buildAccountstatusesCustomBatchRequest() {
  final o = api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed20();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

void checkAccountstatusesCustomBatchRequest(
    api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed20(o.entries!);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
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

core.int buildCounterAccountstatusesCustomBatchRequestEntry = 0;
api.AccountstatusesCustomBatchRequestEntry
    buildAccountstatusesCustomBatchRequestEntry() {
  final o = api.AccountstatusesCustomBatchRequestEntry();
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    o.accountId = 'foo';
    o.batchId = 42;
    o.destinations = buildUnnamed21();
    o.merchantId = 'foo';
    o.method = 'foo';
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
  return o;
}

void checkAccountstatusesCustomBatchRequestEntry(
    api.AccountstatusesCustomBatchRequestEntry o) {
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkUnnamed21(o.destinations!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
}

core.List<api.AccountstatusesCustomBatchResponseEntry> buildUnnamed22() => [
      buildAccountstatusesCustomBatchResponseEntry(),
      buildAccountstatusesCustomBatchResponseEntry(),
    ];

void checkUnnamed22(core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchResponseEntry(o[0]);
  checkAccountstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchResponse = 0;
api.AccountstatusesCustomBatchResponse
    buildAccountstatusesCustomBatchResponse() {
  final o = api.AccountstatusesCustomBatchResponse();
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed22();
    o.kind = 'foo';
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

void checkAccountstatusesCustomBatchResponse(
    api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed22(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountstatusesCustomBatchResponse--;
}

core.int buildCounterAccountstatusesCustomBatchResponseEntry = 0;
api.AccountstatusesCustomBatchResponseEntry
    buildAccountstatusesCustomBatchResponseEntry() {
  final o = api.AccountstatusesCustomBatchResponseEntry();
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    o.accountStatus = buildAccountStatus();
    o.batchId = 42;
    o.errors = buildErrors();
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
  return o;
}

void checkAccountstatusesCustomBatchResponseEntry(
    api.AccountstatusesCustomBatchResponseEntry o) {
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    checkAccountStatus(o.accountStatus!);
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
}

core.List<api.AccountStatus> buildUnnamed23() => [
      buildAccountStatus(),
      buildAccountStatus(),
    ];

void checkUnnamed23(core.List<api.AccountStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatus(o[0]);
  checkAccountStatus(o[1]);
}

core.int buildCounterAccountstatusesListResponse = 0;
api.AccountstatusesListResponse buildAccountstatusesListResponse() {
  final o = api.AccountstatusesListResponse();
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed23();
  }
  buildCounterAccountstatusesListResponse--;
  return o;
}

void checkAccountstatusesListResponse(api.AccountstatusesListResponse o) {
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.resources!);
  }
  buildCounterAccountstatusesListResponse--;
}

core.List<api.AccounttaxCustomBatchRequestEntry> buildUnnamed24() => [
      buildAccounttaxCustomBatchRequestEntry(),
      buildAccounttaxCustomBatchRequestEntry(),
    ];

void checkUnnamed24(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(o[0]);
  checkAccounttaxCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
api.AccounttaxCustomBatchRequest buildAccounttaxCustomBatchRequest() {
  final o = api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed24();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

void checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed24(o.entries!);
  }
  buildCounterAccounttaxCustomBatchRequest--;
}

core.int buildCounterAccounttaxCustomBatchRequestEntry = 0;
api.AccounttaxCustomBatchRequestEntry buildAccounttaxCustomBatchRequestEntry() {
  final o = api.AccounttaxCustomBatchRequestEntry();
  buildCounterAccounttaxCustomBatchRequestEntry++;
  if (buildCounterAccounttaxCustomBatchRequestEntry < 3) {
    o.accountId = 'foo';
    o.accountTax = buildAccountTax();
    o.batchId = 42;
    o.merchantId = 'foo';
    o.method = 'foo';
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
  return o;
}

void checkAccounttaxCustomBatchRequestEntry(
    api.AccounttaxCustomBatchRequestEntry o) {
  buildCounterAccounttaxCustomBatchRequestEntry++;
  if (buildCounterAccounttaxCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkAccountTax(o.accountTax!);
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
}

core.List<api.AccounttaxCustomBatchResponseEntry> buildUnnamed25() => [
      buildAccounttaxCustomBatchResponseEntry(),
      buildAccounttaxCustomBatchResponseEntry(),
    ];

void checkUnnamed25(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(o[0]);
  checkAccounttaxCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
api.AccounttaxCustomBatchResponse buildAccounttaxCustomBatchResponse() {
  final o = api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed25();
    o.kind = 'foo';
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

void checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed25(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccounttaxCustomBatchResponse--;
}

core.int buildCounterAccounttaxCustomBatchResponseEntry = 0;
api.AccounttaxCustomBatchResponseEntry
    buildAccounttaxCustomBatchResponseEntry() {
  final o = api.AccounttaxCustomBatchResponseEntry();
  buildCounterAccounttaxCustomBatchResponseEntry++;
  if (buildCounterAccounttaxCustomBatchResponseEntry < 3) {
    o.accountTax = buildAccountTax();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
  return o;
}

void checkAccounttaxCustomBatchResponseEntry(
    api.AccounttaxCustomBatchResponseEntry o) {
  buildCounterAccounttaxCustomBatchResponseEntry++;
  if (buildCounterAccounttaxCustomBatchResponseEntry < 3) {
    checkAccountTax(o.accountTax!);
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
}

core.List<api.AccountTax> buildUnnamed26() => [
      buildAccountTax(),
      buildAccountTax(),
    ];

void checkUnnamed26(core.List<api.AccountTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTax(o[0]);
  checkAccountTax(o[1]);
}

core.int buildCounterAccounttaxListResponse = 0;
api.AccounttaxListResponse buildAccounttaxListResponse() {
  final o = api.AccounttaxListResponse();
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed26();
  }
  buildCounterAccounttaxListResponse--;
  return o;
}

void checkAccounttaxListResponse(api.AccounttaxListResponse o) {
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.resources!);
  }
  buildCounterAccounttaxListResponse--;
}

core.List<api.ActionReason> buildUnnamed27() => [
      buildActionReason(),
      buildActionReason(),
    ];

void checkUnnamed27(core.List<api.ActionReason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionReason(o[0]);
  checkActionReason(o[1]);
}

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.builtinSimpleAction = buildBuiltInSimpleAction();
    o.builtinUserInputAction = buildBuiltInUserInputAction();
    o.buttonLabel = 'foo';
    o.externalAction = buildExternalAction();
    o.isAvailable = true;
    o.reasons = buildUnnamed27();
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    checkBuiltInSimpleAction(o.builtinSimpleAction!);
    checkBuiltInUserInputAction(o.builtinUserInputAction!);
    unittest.expect(
      o.buttonLabel!,
      unittest.equals('foo'),
    );
    checkExternalAction(o.externalAction!);
    unittest.expect(o.isAvailable!, unittest.isTrue);
    checkUnnamed27(o.reasons!);
  }
  buildCounterAction--;
}

core.List<api.InputField> buildUnnamed28() => [
      buildInputField(),
      buildInputField(),
    ];

void checkUnnamed28(core.List<api.InputField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputField(o[0]);
  checkInputField(o[1]);
}

core.int buildCounterActionFlow = 0;
api.ActionFlow buildActionFlow() {
  final o = api.ActionFlow();
  buildCounterActionFlow++;
  if (buildCounterActionFlow < 3) {
    o.dialogButtonLabel = 'foo';
    o.dialogCallout = buildCallout();
    o.dialogMessage = buildTextWithTooltip();
    o.dialogTitle = 'foo';
    o.id = 'foo';
    o.inputs = buildUnnamed28();
    o.label = 'foo';
  }
  buildCounterActionFlow--;
  return o;
}

void checkActionFlow(api.ActionFlow o) {
  buildCounterActionFlow++;
  if (buildCounterActionFlow < 3) {
    unittest.expect(
      o.dialogButtonLabel!,
      unittest.equals('foo'),
    );
    checkCallout(o.dialogCallout!);
    checkTextWithTooltip(o.dialogMessage!);
    unittest.expect(
      o.dialogTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.inputs!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
  }
  buildCounterActionFlow--;
}

core.List<api.InputValue> buildUnnamed29() => [
      buildInputValue(),
      buildInputValue(),
    ];

void checkUnnamed29(core.List<api.InputValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputValue(o[0]);
  checkInputValue(o[1]);
}

core.int buildCounterActionInput = 0;
api.ActionInput buildActionInput() {
  final o = api.ActionInput();
  buildCounterActionInput++;
  if (buildCounterActionInput < 3) {
    o.actionFlowId = 'foo';
    o.inputValues = buildUnnamed29();
  }
  buildCounterActionInput--;
  return o;
}

void checkActionInput(api.ActionInput o) {
  buildCounterActionInput++;
  if (buildCounterActionInput < 3) {
    unittest.expect(
      o.actionFlowId!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.inputValues!);
  }
  buildCounterActionInput--;
}

core.int buildCounterActionReason = 0;
api.ActionReason buildActionReason() {
  final o = api.ActionReason();
  buildCounterActionReason++;
  if (buildCounterActionReason < 3) {
    o.action = buildAction();
    o.detail = 'foo';
    o.message = 'foo';
  }
  buildCounterActionReason--;
  return o;
}

void checkActionReason(api.ActionReason o) {
  buildCounterActionReason++;
  if (buildCounterActionReason < 3) {
    checkAction(o.action!);
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterActionReason--;
}

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  final o = api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.administrativeArea = 'foo';
    o.city = 'foo';
    o.country = 'foo';
    o.postalCode = 'foo';
    o.streetAddress = 'foo';
  }
  buildCounterAddress--;
  return o;
}

void checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streetAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddress--;
}

core.int buildCounterAlternateDisputeResolution = 0;
api.AlternateDisputeResolution buildAlternateDisputeResolution() {
  final o = api.AlternateDisputeResolution();
  buildCounterAlternateDisputeResolution++;
  if (buildCounterAlternateDisputeResolution < 3) {
    o.label = 'foo';
    o.uri = 'foo';
  }
  buildCounterAlternateDisputeResolution--;
  return o;
}

void checkAlternateDisputeResolution(api.AlternateDisputeResolution o) {
  buildCounterAlternateDisputeResolution++;
  if (buildCounterAlternateDisputeResolution < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlternateDisputeResolution--;
}

core.List<api.AttributionSettingsConversionType> buildUnnamed30() => [
      buildAttributionSettingsConversionType(),
      buildAttributionSettingsConversionType(),
    ];

void checkUnnamed30(core.List<api.AttributionSettingsConversionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributionSettingsConversionType(o[0]);
  checkAttributionSettingsConversionType(o[1]);
}

core.int buildCounterAttributionSettings = 0;
api.AttributionSettings buildAttributionSettings() {
  final o = api.AttributionSettings();
  buildCounterAttributionSettings++;
  if (buildCounterAttributionSettings < 3) {
    o.attributionLookbackWindowInDays = 42;
    o.attributionModel = 'foo';
    o.conversionType = buildUnnamed30();
  }
  buildCounterAttributionSettings--;
  return o;
}

void checkAttributionSettings(api.AttributionSettings o) {
  buildCounterAttributionSettings++;
  if (buildCounterAttributionSettings < 3) {
    unittest.expect(
      o.attributionLookbackWindowInDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.attributionModel!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.conversionType!);
  }
  buildCounterAttributionSettings--;
}

core.int buildCounterAttributionSettingsConversionType = 0;
api.AttributionSettingsConversionType buildAttributionSettingsConversionType() {
  final o = api.AttributionSettingsConversionType();
  buildCounterAttributionSettingsConversionType++;
  if (buildCounterAttributionSettingsConversionType < 3) {
    o.includeInReporting = true;
    o.name = 'foo';
  }
  buildCounterAttributionSettingsConversionType--;
  return o;
}

void checkAttributionSettingsConversionType(
    api.AttributionSettingsConversionType o) {
  buildCounterAttributionSettingsConversionType++;
  if (buildCounterAttributionSettingsConversionType < 3) {
    unittest.expect(o.includeInReporting!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttributionSettingsConversionType--;
}

core.int buildCounterBestSellers = 0;
api.BestSellers buildBestSellers() {
  final o = api.BestSellers();
  buildCounterBestSellers++;
  if (buildCounterBestSellers < 3) {
    o.categoryId = 'foo';
    o.countryCode = 'foo';
    o.previousRank = 'foo';
    o.previousRelativeDemand = 'foo';
    o.rank = 'foo';
    o.relativeDemand = 'foo';
    o.relativeDemandChange = 'foo';
    o.reportDate = buildDate();
    o.reportGranularity = 'foo';
  }
  buildCounterBestSellers--;
  return o;
}

void checkBestSellers(api.BestSellers o) {
  buildCounterBestSellers++;
  if (buildCounterBestSellers < 3) {
    unittest.expect(
      o.categoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousRank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousRelativeDemand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeDemand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeDemandChange!,
      unittest.equals('foo'),
    );
    checkDate(o.reportDate!);
    unittest.expect(
      o.reportGranularity!,
      unittest.equals('foo'),
    );
  }
  buildCounterBestSellers--;
}

core.int buildCounterBrand = 0;
api.Brand buildBrand() {
  final o = api.Brand();
  buildCounterBrand++;
  if (buildCounterBrand < 3) {
    o.name = 'foo';
  }
  buildCounterBrand--;
  return o;
}

void checkBrand(api.Brand o) {
  buildCounterBrand++;
  if (buildCounterBrand < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterBrand--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.List<api.BreakdownRegion> buildUnnamed32() => [
      buildBreakdownRegion(),
      buildBreakdownRegion(),
    ];

void checkUnnamed32(core.List<api.BreakdownRegion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdownRegion(o[0]);
  checkBreakdownRegion(o[1]);
}

core.int buildCounterBreakdown = 0;
api.Breakdown buildBreakdown() {
  final o = api.Breakdown();
  buildCounterBreakdown++;
  if (buildCounterBreakdown < 3) {
    o.details = buildUnnamed31();
    o.regions = buildUnnamed32();
  }
  buildCounterBreakdown--;
  return o;
}

void checkBreakdown(api.Breakdown o) {
  buildCounterBreakdown++;
  if (buildCounterBreakdown < 3) {
    checkUnnamed31(o.details!);
    checkUnnamed32(o.regions!);
  }
  buildCounterBreakdown--;
}

core.int buildCounterBreakdownRegion = 0;
api.BreakdownRegion buildBreakdownRegion() {
  final o = api.BreakdownRegion();
  buildCounterBreakdownRegion++;
  if (buildCounterBreakdownRegion < 3) {
    o.code = 'foo';
    o.name = 'foo';
  }
  buildCounterBreakdownRegion--;
  return o;
}

void checkBreakdownRegion(api.BreakdownRegion o) {
  buildCounterBreakdownRegion++;
  if (buildCounterBreakdownRegion < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterBreakdownRegion--;
}

core.int buildCounterBuiltInSimpleAction = 0;
api.BuiltInSimpleAction buildBuiltInSimpleAction() {
  final o = api.BuiltInSimpleAction();
  buildCounterBuiltInSimpleAction++;
  if (buildCounterBuiltInSimpleAction < 3) {
    o.additionalContent = buildBuiltInSimpleActionAdditionalContent();
    o.attributeCode = 'foo';
    o.type = 'foo';
  }
  buildCounterBuiltInSimpleAction--;
  return o;
}

void checkBuiltInSimpleAction(api.BuiltInSimpleAction o) {
  buildCounterBuiltInSimpleAction++;
  if (buildCounterBuiltInSimpleAction < 3) {
    checkBuiltInSimpleActionAdditionalContent(o.additionalContent!);
    unittest.expect(
      o.attributeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuiltInSimpleAction--;
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterBuiltInSimpleActionAdditionalContent = 0;
api.BuiltInSimpleActionAdditionalContent
    buildBuiltInSimpleActionAdditionalContent() {
  final o = api.BuiltInSimpleActionAdditionalContent();
  buildCounterBuiltInSimpleActionAdditionalContent++;
  if (buildCounterBuiltInSimpleActionAdditionalContent < 3) {
    o.paragraphs = buildUnnamed33();
    o.title = 'foo';
  }
  buildCounterBuiltInSimpleActionAdditionalContent--;
  return o;
}

void checkBuiltInSimpleActionAdditionalContent(
    api.BuiltInSimpleActionAdditionalContent o) {
  buildCounterBuiltInSimpleActionAdditionalContent++;
  if (buildCounterBuiltInSimpleActionAdditionalContent < 3) {
    checkUnnamed33(o.paragraphs!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuiltInSimpleActionAdditionalContent--;
}

core.List<api.ActionFlow> buildUnnamed34() => [
      buildActionFlow(),
      buildActionFlow(),
    ];

void checkUnnamed34(core.List<api.ActionFlow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionFlow(o[0]);
  checkActionFlow(o[1]);
}

core.int buildCounterBuiltInUserInputAction = 0;
api.BuiltInUserInputAction buildBuiltInUserInputAction() {
  final o = api.BuiltInUserInputAction();
  buildCounterBuiltInUserInputAction++;
  if (buildCounterBuiltInUserInputAction < 3) {
    o.actionContext = 'foo';
    o.flows = buildUnnamed34();
  }
  buildCounterBuiltInUserInputAction--;
  return o;
}

void checkBuiltInUserInputAction(api.BuiltInUserInputAction o) {
  buildCounterBuiltInUserInputAction++;
  if (buildCounterBuiltInUserInputAction < 3) {
    unittest.expect(
      o.actionContext!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.flows!);
  }
  buildCounterBuiltInUserInputAction--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterBusinessDayConfig = 0;
api.BusinessDayConfig buildBusinessDayConfig() {
  final o = api.BusinessDayConfig();
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    o.businessDays = buildUnnamed35();
  }
  buildCounterBusinessDayConfig--;
  return o;
}

void checkBusinessDayConfig(api.BusinessDayConfig o) {
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    checkUnnamed35(o.businessDays!);
  }
  buildCounterBusinessDayConfig--;
}

core.int buildCounterCallout = 0;
api.Callout buildCallout() {
  final o = api.Callout();
  buildCounterCallout++;
  if (buildCounterCallout < 3) {
    o.fullMessage = buildTextWithTooltip();
    o.styleHint = 'foo';
  }
  buildCounterCallout--;
  return o;
}

void checkCallout(api.Callout o) {
  buildCounterCallout++;
  if (buildCounterCallout < 3) {
    checkTextWithTooltip(o.fullMessage!);
    unittest.expect(
      o.styleHint!,
      unittest.equals('foo'),
    );
  }
  buildCounterCallout--;
}

core.int buildCounterCarrierRate = 0;
api.CarrierRate buildCarrierRate() {
  final o = api.CarrierRate();
  buildCounterCarrierRate++;
  if (buildCounterCarrierRate < 3) {
    o.carrierName = 'foo';
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
    unittest.expect(
      o.carrierName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierService!,
      unittest.equals('foo'),
    );
    checkPrice(o.flatAdjustment!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originPostalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentageAdjustment!,
      unittest.equals('foo'),
    );
  }
  buildCounterCarrierRate--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterCarriersCarrier = 0;
api.CarriersCarrier buildCarriersCarrier() {
  final o = api.CarriersCarrier();
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    o.country = 'foo';
    o.eddServices = buildUnnamed36();
    o.name = 'foo';
    o.services = buildUnnamed37();
  }
  buildCounterCarriersCarrier--;
  return o;
}

void checkCarriersCarrier(api.CarriersCarrier o) {
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.eddServices!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.services!);
  }
  buildCounterCarriersCarrier--;
}

core.int buildCounterCheckoutSettings = 0;
api.CheckoutSettings buildCheckoutSettings() {
  final o = api.CheckoutSettings();
  buildCounterCheckoutSettings++;
  if (buildCounterCheckoutSettings < 3) {
    o.effectiveEnrollmentState = 'foo';
    o.effectiveReviewState = 'foo';
    o.effectiveUriSettings = buildUrlSettings();
    o.enrollmentState = 'foo';
    o.merchantId = 'foo';
    o.reviewState = 'foo';
    o.uriSettings = buildUrlSettings();
  }
  buildCounterCheckoutSettings--;
  return o;
}

void checkCheckoutSettings(api.CheckoutSettings o) {
  buildCounterCheckoutSettings++;
  if (buildCounterCheckoutSettings < 3) {
    unittest.expect(
      o.effectiveEnrollmentState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.effectiveReviewState!,
      unittest.equals('foo'),
    );
    checkUrlSettings(o.effectiveUriSettings!);
    unittest.expect(
      o.enrollmentState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewState!,
      unittest.equals('foo'),
    );
    checkUrlSettings(o.uriSettings!);
  }
  buildCounterCheckoutSettings--;
}

core.List<core.double> buildUnnamed38() => [
      42.0,
      42.0,
    ];

void checkUnnamed38(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.int buildCounterCloudExportAdditionalProperties = 0;
api.CloudExportAdditionalProperties buildCloudExportAdditionalProperties() {
  final o = api.CloudExportAdditionalProperties();
  buildCounterCloudExportAdditionalProperties++;
  if (buildCounterCloudExportAdditionalProperties < 3) {
    o.boolValue = true;
    o.floatValue = buildUnnamed38();
    o.intValue = buildUnnamed39();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.propertyName = 'foo';
    o.textValue = buildUnnamed40();
    o.unitCode = 'foo';
  }
  buildCounterCloudExportAdditionalProperties--;
  return o;
}

void checkCloudExportAdditionalProperties(
    api.CloudExportAdditionalProperties o) {
  buildCounterCloudExportAdditionalProperties++;
  if (buildCounterCloudExportAdditionalProperties < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkUnnamed38(o.floatValue!);
    checkUnnamed39(o.intValue!);
    unittest.expect(
      o.maxValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.propertyName!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.textValue!);
    unittest.expect(
      o.unitCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudExportAdditionalProperties--;
}

core.List<api.CollectionFeaturedProduct> buildUnnamed41() => [
      buildCollectionFeaturedProduct(),
      buildCollectionFeaturedProduct(),
    ];

void checkUnnamed41(core.List<api.CollectionFeaturedProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionFeaturedProduct(o[0]);
  checkCollectionFeaturedProduct(o[1]);
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.int buildCounterCollection = 0;
api.Collection buildCollection() {
  final o = api.Collection();
  buildCounterCollection++;
  if (buildCounterCollection < 3) {
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.featuredProduct = buildUnnamed41();
    o.headline = buildUnnamed42();
    o.id = 'foo';
    o.imageLink = buildUnnamed43();
    o.language = 'foo';
    o.link = 'foo';
    o.mobileLink = 'foo';
    o.productCountry = 'foo';
  }
  buildCounterCollection--;
  return o;
}

void checkCollection(api.Collection o) {
  buildCounterCollection++;
  if (buildCounterCollection < 3) {
    unittest.expect(
      o.customLabel0!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel4!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.featuredProduct!);
    checkUnnamed42(o.headline!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.imageLink!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productCountry!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollection--;
}

core.int buildCounterCollectionFeaturedProduct = 0;
api.CollectionFeaturedProduct buildCollectionFeaturedProduct() {
  final o = api.CollectionFeaturedProduct();
  buildCounterCollectionFeaturedProduct++;
  if (buildCounterCollectionFeaturedProduct < 3) {
    o.offerId = 'foo';
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterCollectionFeaturedProduct--;
  return o;
}

void checkCollectionFeaturedProduct(api.CollectionFeaturedProduct o) {
  buildCounterCollectionFeaturedProduct++;
  if (buildCounterCollectionFeaturedProduct < 3) {
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterCollectionFeaturedProduct--;
}

core.List<api.CollectionStatusItemLevelIssue> buildUnnamed44() => [
      buildCollectionStatusItemLevelIssue(),
      buildCollectionStatusItemLevelIssue(),
    ];

void checkUnnamed44(core.List<api.CollectionStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatusItemLevelIssue(o[0]);
  checkCollectionStatusItemLevelIssue(o[1]);
}

core.List<api.CollectionStatusDestinationStatus> buildUnnamed45() => [
      buildCollectionStatusDestinationStatus(),
      buildCollectionStatusDestinationStatus(),
    ];

void checkUnnamed45(core.List<api.CollectionStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatusDestinationStatus(o[0]);
  checkCollectionStatusDestinationStatus(o[1]);
}

core.int buildCounterCollectionStatus = 0;
api.CollectionStatus buildCollectionStatus() {
  final o = api.CollectionStatus();
  buildCounterCollectionStatus++;
  if (buildCounterCollectionStatus < 3) {
    o.collectionLevelIssuses = buildUnnamed44();
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed45();
    o.id = 'foo';
    o.lastUpdateDate = 'foo';
  }
  buildCounterCollectionStatus--;
  return o;
}

void checkCollectionStatus(api.CollectionStatus o) {
  buildCounterCollectionStatus++;
  if (buildCounterCollectionStatus < 3) {
    checkUnnamed44(o.collectionLevelIssuses!);
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.destinationStatuses!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollectionStatus--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterCollectionStatusDestinationStatus = 0;
api.CollectionStatusDestinationStatus buildCollectionStatusDestinationStatus() {
  final o = api.CollectionStatusDestinationStatus();
  buildCounterCollectionStatusDestinationStatus++;
  if (buildCounterCollectionStatusDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed46();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed47();
    o.pendingCountries = buildUnnamed48();
    o.status = 'foo';
  }
  buildCounterCollectionStatusDestinationStatus--;
  return o;
}

void checkCollectionStatusDestinationStatus(
    api.CollectionStatusDestinationStatus o) {
  buildCounterCollectionStatusDestinationStatus++;
  if (buildCounterCollectionStatusDestinationStatus < 3) {
    checkUnnamed46(o.approvedCountries!);
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.disapprovedCountries!);
    checkUnnamed48(o.pendingCountries!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollectionStatusDestinationStatus--;
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.int buildCounterCollectionStatusItemLevelIssue = 0;
api.CollectionStatusItemLevelIssue buildCollectionStatusItemLevelIssue() {
  final o = api.CollectionStatusItemLevelIssue();
  buildCounterCollectionStatusItemLevelIssue++;
  if (buildCounterCollectionStatusItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed49();
    o.attributeName = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.destination = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.resolution = 'foo';
    o.servability = 'foo';
  }
  buildCounterCollectionStatusItemLevelIssue--;
  return o;
}

void checkCollectionStatusItemLevelIssue(api.CollectionStatusItemLevelIssue o) {
  buildCounterCollectionStatusItemLevelIssue++;
  if (buildCounterCollectionStatusItemLevelIssue < 3) {
    checkUnnamed49(o.applicableCountries!);
    unittest.expect(
      o.attributeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servability!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollectionStatusItemLevelIssue--;
}

core.int buildCounterCompetitiveVisibility = 0;
api.CompetitiveVisibility buildCompetitiveVisibility() {
  final o = api.CompetitiveVisibility();
  buildCounterCompetitiveVisibility++;
  if (buildCounterCompetitiveVisibility < 3) {
    o.adsOrganicRatio = 42.0;
    o.categoryBenchmarkVisibilityTrend = 42.0;
    o.categoryId = 'foo';
    o.countryCode = 'foo';
    o.date = buildDate();
    o.domain = 'foo';
    o.higherPositionRate = 42.0;
    o.isYourDomain = true;
    o.pageOverlapRate = 42.0;
    o.rank = 'foo';
    o.relativeVisibility = 42.0;
    o.trafficSource = 'foo';
    o.yourDomainVisibilityTrend = 42.0;
  }
  buildCounterCompetitiveVisibility--;
  return o;
}

void checkCompetitiveVisibility(api.CompetitiveVisibility o) {
  buildCounterCompetitiveVisibility++;
  if (buildCounterCompetitiveVisibility < 3) {
    unittest.expect(
      o.adsOrganicRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.categoryBenchmarkVisibilityTrend!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.categoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    checkDate(o.date!);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.higherPositionRate!,
      unittest.equals(42.0),
    );
    unittest.expect(o.isYourDomain!, unittest.isTrue);
    unittest.expect(
      o.pageOverlapRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeVisibility!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.trafficSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.yourDomainVisibilityTrend!,
      unittest.equals(42.0),
    );
  }
  buildCounterCompetitiveVisibility--;
}

core.int buildCounterConversionSource = 0;
api.ConversionSource buildConversionSource() {
  final o = api.ConversionSource();
  buildCounterConversionSource++;
  if (buildCounterConversionSource < 3) {
    o.conversionSourceId = 'foo';
    o.expireTime = 'foo';
    o.googleAnalyticsLink = buildGoogleAnalyticsLink();
    o.merchantCenterDestination = buildMerchantCenterDestination();
    o.state = 'foo';
  }
  buildCounterConversionSource--;
  return o;
}

void checkConversionSource(api.ConversionSource o) {
  buildCounterConversionSource++;
  if (buildCounterConversionSource < 3) {
    unittest.expect(
      o.conversionSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsLink(o.googleAnalyticsLink!);
    checkMerchantCenterDestination(o.merchantCenterDestination!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionSource--;
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.int buildCounterCss = 0;
api.Css buildCss() {
  final o = api.Css();
  buildCounterCss++;
  if (buildCounterCss < 3) {
    o.cssDomainId = 'foo';
    o.cssGroupId = 'foo';
    o.displayName = 'foo';
    o.fullName = 'foo';
    o.homepageUri = 'foo';
    o.labelIds = buildUnnamed50();
  }
  buildCounterCss--;
  return o;
}

void checkCss(api.Css o) {
  buildCounterCss++;
  if (buildCounterCss < 3) {
    unittest.expect(
      o.cssDomainId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cssGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.homepageUri!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.labelIds!);
  }
  buildCounterCss--;
}

core.List<api.CustomAttribute> buildUnnamed51() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed51(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed51();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed51(o.groupValues!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCutoffTime = 0;
api.CutoffTime buildCutoffTime() {
  final o = api.CutoffTime();
  buildCounterCutoffTime++;
  if (buildCounterCutoffTime < 3) {
    o.hour = 42;
    o.minute = 42;
    o.timezone = 'foo';
  }
  buildCounterCutoffTime--;
  return o;
}

void checkCutoffTime(api.CutoffTime o) {
  buildCounterCutoffTime++;
  if (buildCounterCutoffTime < 3) {
    unittest.expect(
      o.hour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minute!,
      unittest.equals(42),
    );
    unittest.expect(
      o.timezone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCutoffTime--;
}

core.List<api.DatafeedTarget> buildUnnamed52() => [
      buildDatafeedTarget(),
      buildDatafeedTarget(),
    ];

void checkUnnamed52(core.List<api.DatafeedTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedTarget(o[0]);
  checkDatafeedTarget(o[1]);
}

core.int buildCounterDatafeed = 0;
api.Datafeed buildDatafeed() {
  final o = api.Datafeed();
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    o.attributeLanguage = 'foo';
    o.contentType = 'foo';
    o.fetchSchedule = buildDatafeedFetchSchedule();
    o.fileName = 'foo';
    o.format = buildDatafeedFormat();
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.targets = buildUnnamed52();
  }
  buildCounterDatafeed--;
  return o;
}

void checkDatafeed(api.Datafeed o) {
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    unittest.expect(
      o.attributeLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkDatafeedFetchSchedule(o.fetchSchedule!);
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    checkDatafeedFormat(o.format!);
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
    checkUnnamed52(o.targets!);
  }
  buildCounterDatafeed--;
}

core.int buildCounterDatafeedFetchSchedule = 0;
api.DatafeedFetchSchedule buildDatafeedFetchSchedule() {
  final o = api.DatafeedFetchSchedule();
  buildCounterDatafeedFetchSchedule++;
  if (buildCounterDatafeedFetchSchedule < 3) {
    o.dayOfMonth = 42;
    o.fetchUrl = 'foo';
    o.hour = 42;
    o.minuteOfHour = 42;
    o.password = 'foo';
    o.paused = true;
    o.timeZone = 'foo';
    o.username = 'foo';
    o.weekday = 'foo';
  }
  buildCounterDatafeedFetchSchedule--;
  return o;
}

void checkDatafeedFetchSchedule(api.DatafeedFetchSchedule o) {
  buildCounterDatafeedFetchSchedule++;
  if (buildCounterDatafeedFetchSchedule < 3) {
    unittest.expect(
      o.dayOfMonth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fetchUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minuteOfHour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(o.paused!, unittest.isTrue);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weekday!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedFetchSchedule--;
}

core.int buildCounterDatafeedFormat = 0;
api.DatafeedFormat buildDatafeedFormat() {
  final o = api.DatafeedFormat();
  buildCounterDatafeedFormat++;
  if (buildCounterDatafeedFormat < 3) {
    o.columnDelimiter = 'foo';
    o.fileEncoding = 'foo';
    o.quotingMode = 'foo';
  }
  buildCounterDatafeedFormat--;
  return o;
}

void checkDatafeedFormat(api.DatafeedFormat o) {
  buildCounterDatafeedFormat++;
  if (buildCounterDatafeedFormat < 3) {
    unittest.expect(
      o.columnDelimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotingMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedFormat--;
}

core.List<api.DatafeedStatusError> buildUnnamed53() => [
      buildDatafeedStatusError(),
      buildDatafeedStatusError(),
    ];

void checkUnnamed53(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.List<api.DatafeedStatusError> buildUnnamed54() => [
      buildDatafeedStatusError(),
      buildDatafeedStatusError(),
    ];

void checkUnnamed54(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.int buildCounterDatafeedStatus = 0;
api.DatafeedStatus buildDatafeedStatus() {
  final o = api.DatafeedStatus();
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    o.country = 'foo';
    o.datafeedId = 'foo';
    o.errors = buildUnnamed53();
    o.feedLabel = 'foo';
    o.itemsTotal = 'foo';
    o.itemsValid = 'foo';
    o.kind = 'foo';
    o.language = 'foo';
    o.lastUploadDate = 'foo';
    o.processingStatus = 'foo';
    o.warnings = buildUnnamed54();
  }
  buildCounterDatafeedStatus--;
  return o;
}

void checkDatafeedStatus(api.DatafeedStatus o) {
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datafeedId!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.errors!);
    unittest.expect(
      o.feedLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemsTotal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemsValid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUploadDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processingStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.warnings!);
  }
  buildCounterDatafeedStatus--;
}

core.List<api.DatafeedStatusExample> buildUnnamed55() => [
      buildDatafeedStatusExample(),
      buildDatafeedStatusExample(),
    ];

void checkUnnamed55(core.List<api.DatafeedStatusExample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusExample(o[0]);
  checkDatafeedStatusExample(o[1]);
}

core.int buildCounterDatafeedStatusError = 0;
api.DatafeedStatusError buildDatafeedStatusError() {
  final o = api.DatafeedStatusError();
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    o.code = 'foo';
    o.count = 'foo';
    o.examples = buildUnnamed55();
    o.message = 'foo';
  }
  buildCounterDatafeedStatusError--;
  return o;
}

void checkDatafeedStatusError(api.DatafeedStatusError o) {
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.examples!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedStatusError--;
}

core.int buildCounterDatafeedStatusExample = 0;
api.DatafeedStatusExample buildDatafeedStatusExample() {
  final o = api.DatafeedStatusExample();
  buildCounterDatafeedStatusExample++;
  if (buildCounterDatafeedStatusExample < 3) {
    o.itemId = 'foo';
    o.lineNumber = 'foo';
    o.value = 'foo';
  }
  buildCounterDatafeedStatusExample--;
  return o;
}

void checkDatafeedStatusExample(api.DatafeedStatusExample o) {
  buildCounterDatafeedStatusExample++;
  if (buildCounterDatafeedStatusExample < 3) {
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedStatusExample--;
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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

core.int buildCounterDatafeedTarget = 0;
api.DatafeedTarget buildDatafeedTarget() {
  final o = api.DatafeedTarget();
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    o.country = 'foo';
    o.excludedDestinations = buildUnnamed56();
    o.feedLabel = 'foo';
    o.includedDestinations = buildUnnamed57();
    o.language = 'foo';
    o.targetCountries = buildUnnamed58();
  }
  buildCounterDatafeedTarget--;
  return o;
}

void checkDatafeedTarget(api.DatafeedTarget o) {
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.excludedDestinations!);
    unittest.expect(
      o.feedLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.includedDestinations!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.targetCountries!);
  }
  buildCounterDatafeedTarget--;
}

core.List<api.DatafeedsCustomBatchRequestEntry> buildUnnamed59() => [
      buildDatafeedsCustomBatchRequestEntry(),
      buildDatafeedsCustomBatchRequestEntry(),
    ];

void checkUnnamed59(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(o[0]);
  checkDatafeedsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
api.DatafeedsCustomBatchRequest buildDatafeedsCustomBatchRequest() {
  final o = api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed59();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

void checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed59(o.entries!);
  }
  buildCounterDatafeedsCustomBatchRequest--;
}

core.int buildCounterDatafeedsCustomBatchRequestEntry = 0;
api.DatafeedsCustomBatchRequestEntry buildDatafeedsCustomBatchRequestEntry() {
  final o = api.DatafeedsCustomBatchRequestEntry();
  buildCounterDatafeedsCustomBatchRequestEntry++;
  if (buildCounterDatafeedsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.datafeed = buildDatafeed();
    o.datafeedId = 'foo';
    o.merchantId = 'foo';
    o.method = 'foo';
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
  return o;
}

void checkDatafeedsCustomBatchRequestEntry(
    api.DatafeedsCustomBatchRequestEntry o) {
  buildCounterDatafeedsCustomBatchRequestEntry++;
  if (buildCounterDatafeedsCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkDatafeed(o.datafeed!);
    unittest.expect(
      o.datafeedId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
}

core.List<api.DatafeedsCustomBatchResponseEntry> buildUnnamed60() => [
      buildDatafeedsCustomBatchResponseEntry(),
      buildDatafeedsCustomBatchResponseEntry(),
    ];

void checkUnnamed60(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(o[0]);
  checkDatafeedsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
api.DatafeedsCustomBatchResponse buildDatafeedsCustomBatchResponse() {
  final o = api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed60();
    o.kind = 'foo';
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

void checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed60(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedsCustomBatchResponse--;
}

core.int buildCounterDatafeedsCustomBatchResponseEntry = 0;
api.DatafeedsCustomBatchResponseEntry buildDatafeedsCustomBatchResponseEntry() {
  final o = api.DatafeedsCustomBatchResponseEntry();
  buildCounterDatafeedsCustomBatchResponseEntry++;
  if (buildCounterDatafeedsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.datafeed = buildDatafeed();
    o.errors = buildErrors();
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
  return o;
}

void checkDatafeedsCustomBatchResponseEntry(
    api.DatafeedsCustomBatchResponseEntry o) {
  buildCounterDatafeedsCustomBatchResponseEntry++;
  if (buildCounterDatafeedsCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkDatafeed(o.datafeed!);
    checkErrors(o.errors!);
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
}

core.int buildCounterDatafeedsFetchNowResponse = 0;
api.DatafeedsFetchNowResponse buildDatafeedsFetchNowResponse() {
  final o = api.DatafeedsFetchNowResponse();
  buildCounterDatafeedsFetchNowResponse++;
  if (buildCounterDatafeedsFetchNowResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterDatafeedsFetchNowResponse--;
  return o;
}

void checkDatafeedsFetchNowResponse(api.DatafeedsFetchNowResponse o) {
  buildCounterDatafeedsFetchNowResponse++;
  if (buildCounterDatafeedsFetchNowResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedsFetchNowResponse--;
}

core.List<api.Datafeed> buildUnnamed61() => [
      buildDatafeed(),
      buildDatafeed(),
    ];

void checkUnnamed61(core.List<api.Datafeed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeed(o[0]);
  checkDatafeed(o[1]);
}

core.int buildCounterDatafeedsListResponse = 0;
api.DatafeedsListResponse buildDatafeedsListResponse() {
  final o = api.DatafeedsListResponse();
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed61();
  }
  buildCounterDatafeedsListResponse--;
  return o;
}

void checkDatafeedsListResponse(api.DatafeedsListResponse o) {
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.resources!);
  }
  buildCounterDatafeedsListResponse--;
}

core.List<api.DatafeedstatusesCustomBatchRequestEntry> buildUnnamed62() => [
      buildDatafeedstatusesCustomBatchRequestEntry(),
      buildDatafeedstatusesCustomBatchRequestEntry(),
    ];

void checkUnnamed62(core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchRequestEntry(o[0]);
  checkDatafeedstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchRequest = 0;
api.DatafeedstatusesCustomBatchRequest
    buildDatafeedstatusesCustomBatchRequest() {
  final o = api.DatafeedstatusesCustomBatchRequest();
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed62();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

void checkDatafeedstatusesCustomBatchRequest(
    api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed62(o.entries!);
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
}

core.int buildCounterDatafeedstatusesCustomBatchRequestEntry = 0;
api.DatafeedstatusesCustomBatchRequestEntry
    buildDatafeedstatusesCustomBatchRequestEntry() {
  final o = api.DatafeedstatusesCustomBatchRequestEntry();
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.country = 'foo';
    o.datafeedId = 'foo';
    o.feedLabel = 'foo';
    o.language = 'foo';
    o.merchantId = 'foo';
    o.method = 'foo';
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
  return o;
}

void checkDatafeedstatusesCustomBatchRequestEntry(
    api.DatafeedstatusesCustomBatchRequestEntry o) {
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datafeedId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.feedLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
}

core.List<api.DatafeedstatusesCustomBatchResponseEntry> buildUnnamed63() => [
      buildDatafeedstatusesCustomBatchResponseEntry(),
      buildDatafeedstatusesCustomBatchResponseEntry(),
    ];

void checkUnnamed63(core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchResponseEntry(o[0]);
  checkDatafeedstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchResponse = 0;
api.DatafeedstatusesCustomBatchResponse
    buildDatafeedstatusesCustomBatchResponse() {
  final o = api.DatafeedstatusesCustomBatchResponse();
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed63();
    o.kind = 'foo';
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

void checkDatafeedstatusesCustomBatchResponse(
    api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed63(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
}

core.int buildCounterDatafeedstatusesCustomBatchResponseEntry = 0;
api.DatafeedstatusesCustomBatchResponseEntry
    buildDatafeedstatusesCustomBatchResponseEntry() {
  final o = api.DatafeedstatusesCustomBatchResponseEntry();
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.datafeedStatus = buildDatafeedStatus();
    o.errors = buildErrors();
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
  return o;
}

void checkDatafeedstatusesCustomBatchResponseEntry(
    api.DatafeedstatusesCustomBatchResponseEntry o) {
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkDatafeedStatus(o.datafeedStatus!);
    checkErrors(o.errors!);
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
}

core.List<api.DatafeedStatus> buildUnnamed64() => [
      buildDatafeedStatus(),
      buildDatafeedStatus(),
    ];

void checkUnnamed64(core.List<api.DatafeedStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatus(o[0]);
  checkDatafeedStatus(o[1]);
}

core.int buildCounterDatafeedstatusesListResponse = 0;
api.DatafeedstatusesListResponse buildDatafeedstatusesListResponse() {
  final o = api.DatafeedstatusesListResponse();
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed64();
  }
  buildCounterDatafeedstatusesListResponse--;
  return o;
}

void checkDatafeedstatusesListResponse(api.DatafeedstatusesListResponse o) {
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.resources!);
  }
  buildCounterDatafeedstatusesListResponse--;
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

core.int buildCounterDateTime = 0;
api.DateTime buildDateTime() {
  final o = api.DateTime();
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterDateTime--;
  return o;
}

void checkDateTime(api.DateTime o) {
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
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
    checkTimeZone(o.timeZone!);
    unittest.expect(
      o.utcOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDateTime--;
}

core.int buildCounterDeliveryArea = 0;
api.DeliveryArea buildDeliveryArea() {
  final o = api.DeliveryArea();
  buildCounterDeliveryArea++;
  if (buildCounterDeliveryArea < 3) {
    o.countryCode = 'foo';
    o.postalCodeRange = buildDeliveryAreaPostalCodeRange();
    o.regionCode = 'foo';
  }
  buildCounterDeliveryArea--;
  return o;
}

void checkDeliveryArea(api.DeliveryArea o) {
  buildCounterDeliveryArea++;
  if (buildCounterDeliveryArea < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    checkDeliveryAreaPostalCodeRange(o.postalCodeRange!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryArea--;
}

core.int buildCounterDeliveryAreaPostalCodeRange = 0;
api.DeliveryAreaPostalCodeRange buildDeliveryAreaPostalCodeRange() {
  final o = api.DeliveryAreaPostalCodeRange();
  buildCounterDeliveryAreaPostalCodeRange++;
  if (buildCounterDeliveryAreaPostalCodeRange < 3) {
    o.firstPostalCode = 'foo';
    o.lastPostalCode = 'foo';
  }
  buildCounterDeliveryAreaPostalCodeRange--;
  return o;
}

void checkDeliveryAreaPostalCodeRange(api.DeliveryAreaPostalCodeRange o) {
  buildCounterDeliveryAreaPostalCodeRange++;
  if (buildCounterDeliveryAreaPostalCodeRange < 3) {
    unittest.expect(
      o.firstPostalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastPostalCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryAreaPostalCodeRange--;
}

core.List<api.HolidayCutoff> buildUnnamed65() => [
      buildHolidayCutoff(),
      buildHolidayCutoff(),
    ];

void checkUnnamed65(core.List<api.HolidayCutoff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidayCutoff(o[0]);
  checkHolidayCutoff(o[1]);
}

core.List<api.WarehouseBasedDeliveryTime> buildUnnamed66() => [
      buildWarehouseBasedDeliveryTime(),
      buildWarehouseBasedDeliveryTime(),
    ];

void checkUnnamed66(core.List<api.WarehouseBasedDeliveryTime> o) {
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
    o.holidayCutoffs = buildUnnamed65();
    o.maxHandlingTimeInDays = 42;
    o.maxTransitTimeInDays = 42;
    o.minHandlingTimeInDays = 42;
    o.minTransitTimeInDays = 42;
    o.transitBusinessDayConfig = buildBusinessDayConfig();
    o.transitTimeTable = buildTransitTable();
    o.warehouseBasedDeliveryTimes = buildUnnamed66();
  }
  buildCounterDeliveryTime--;
  return o;
}

void checkDeliveryTime(api.DeliveryTime o) {
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    checkCutoffTime(o.cutoffTime!);
    checkBusinessDayConfig(o.handlingBusinessDayConfig!);
    checkUnnamed65(o.holidayCutoffs!);
    unittest.expect(
      o.maxHandlingTimeInDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxTransitTimeInDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minHandlingTimeInDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minTransitTimeInDays!,
      unittest.equals(42),
    );
    checkBusinessDayConfig(o.transitBusinessDayConfig!);
    checkTransitTable(o.transitTimeTable!);
    checkUnnamed66(o.warehouseBasedDeliveryTimes!);
  }
  buildCounterDeliveryTime--;
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
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDistance--;
}

core.int buildCounterECommercePlatformLinkInfo = 0;
api.ECommercePlatformLinkInfo buildECommercePlatformLinkInfo() {
  final o = api.ECommercePlatformLinkInfo();
  buildCounterECommercePlatformLinkInfo++;
  if (buildCounterECommercePlatformLinkInfo < 3) {
    o.externalAccountId = 'foo';
  }
  buildCounterECommercePlatformLinkInfo--;
  return o;
}

void checkECommercePlatformLinkInfo(api.ECommercePlatformLinkInfo o) {
  buildCounterECommercePlatformLinkInfo++;
  if (buildCounterECommercePlatformLinkInfo < 3) {
    unittest.expect(
      o.externalAccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterECommercePlatformLinkInfo--;
}

core.int buildCounterError = 0;
api.Error buildError() {
  final o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.domain = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
  }
  buildCounterError--;
  return o;
}

void checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterError--;
}

core.List<api.Error> buildUnnamed67() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed67(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterErrors = 0;
api.Errors buildErrors() {
  final o = api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 42;
    o.errors = buildUnnamed67();
    o.message = 'foo';
  }
  buildCounterErrors--;
  return o;
}

void checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed67(o.errors!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrors--;
}

core.int buildCounterExternalAction = 0;
api.ExternalAction buildExternalAction() {
  final o = api.ExternalAction();
  buildCounterExternalAction++;
  if (buildCounterExternalAction < 3) {
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterExternalAction--;
  return o;
}

void checkExternalAction(api.ExternalAction o) {
  buildCounterExternalAction++;
  if (buildCounterExternalAction < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalAction--;
}

core.List<api.FreeListingsProgramStatusRegionStatus> buildUnnamed68() => [
      buildFreeListingsProgramStatusRegionStatus(),
      buildFreeListingsProgramStatusRegionStatus(),
    ];

void checkUnnamed68(core.List<api.FreeListingsProgramStatusRegionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeListingsProgramStatusRegionStatus(o[0]);
  checkFreeListingsProgramStatusRegionStatus(o[1]);
}

core.int buildCounterFreeListingsProgramStatus = 0;
api.FreeListingsProgramStatus buildFreeListingsProgramStatus() {
  final o = api.FreeListingsProgramStatus();
  buildCounterFreeListingsProgramStatus++;
  if (buildCounterFreeListingsProgramStatus < 3) {
    o.globalState = 'foo';
    o.regionStatuses = buildUnnamed68();
  }
  buildCounterFreeListingsProgramStatus--;
  return o;
}

void checkFreeListingsProgramStatus(api.FreeListingsProgramStatus o) {
  buildCounterFreeListingsProgramStatus++;
  if (buildCounterFreeListingsProgramStatus < 3) {
    unittest.expect(
      o.globalState!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.regionStatuses!);
  }
  buildCounterFreeListingsProgramStatus--;
}

core.List<core.String> buildUnnamed69() => [
      'foo',
      'foo',
    ];

void checkUnnamed69(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed70() => [
      'foo',
      'foo',
    ];

void checkUnnamed70(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.int buildCounterFreeListingsProgramStatusRegionStatus = 0;
api.FreeListingsProgramStatusRegionStatus
    buildFreeListingsProgramStatusRegionStatus() {
  final o = api.FreeListingsProgramStatusRegionStatus();
  buildCounterFreeListingsProgramStatusRegionStatus++;
  if (buildCounterFreeListingsProgramStatusRegionStatus < 3) {
    o.disapprovalDate = 'foo';
    o.eligibilityStatus = 'foo';
    o.onboardingIssues = buildUnnamed69();
    o.regionCodes = buildUnnamed70();
    o.reviewEligibilityStatus = 'foo';
    o.reviewIneligibilityReason = 'foo';
    o.reviewIneligibilityReasonDescription = 'foo';
    o.reviewIneligibilityReasonDetails =
        buildFreeListingsProgramStatusReviewIneligibilityReasonDetails();
    o.reviewIssues = buildUnnamed71();
  }
  buildCounterFreeListingsProgramStatusRegionStatus--;
  return o;
}

void checkFreeListingsProgramStatusRegionStatus(
    api.FreeListingsProgramStatusRegionStatus o) {
  buildCounterFreeListingsProgramStatusRegionStatus++;
  if (buildCounterFreeListingsProgramStatusRegionStatus < 3) {
    unittest.expect(
      o.disapprovalDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eligibilityStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.onboardingIssues!);
    checkUnnamed70(o.regionCodes!);
    unittest.expect(
      o.reviewEligibilityStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewIneligibilityReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewIneligibilityReasonDescription!,
      unittest.equals('foo'),
    );
    checkFreeListingsProgramStatusReviewIneligibilityReasonDetails(
        o.reviewIneligibilityReasonDetails!);
    checkUnnamed71(o.reviewIssues!);
  }
  buildCounterFreeListingsProgramStatusRegionStatus--;
}

core.int buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails =
    0;
api.FreeListingsProgramStatusReviewIneligibilityReasonDetails
    buildFreeListingsProgramStatusReviewIneligibilityReasonDetails() {
  final o = api.FreeListingsProgramStatusReviewIneligibilityReasonDetails();
  buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails++;
  if (buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails <
      3) {
    o.cooldownTime = 'foo';
  }
  buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails--;
  return o;
}

void checkFreeListingsProgramStatusReviewIneligibilityReasonDetails(
    api.FreeListingsProgramStatusReviewIneligibilityReasonDetails o) {
  buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails++;
  if (buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails <
      3) {
    unittest.expect(
      o.cooldownTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterFreeListingsProgramStatusReviewIneligibilityReasonDetails--;
}

core.int buildCounterFreeShippingThreshold = 0;
api.FreeShippingThreshold buildFreeShippingThreshold() {
  final o = api.FreeShippingThreshold();
  buildCounterFreeShippingThreshold++;
  if (buildCounterFreeShippingThreshold < 3) {
    o.country = 'foo';
    o.priceThreshold = buildPrice();
  }
  buildCounterFreeShippingThreshold--;
  return o;
}

void checkFreeShippingThreshold(api.FreeShippingThreshold o) {
  buildCounterFreeShippingThreshold++;
  if (buildCounterFreeShippingThreshold < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkPrice(o.priceThreshold!);
  }
  buildCounterFreeShippingThreshold--;
}

core.List<api.Recommendation> buildUnnamed72() => [
      buildRecommendation(),
      buildRecommendation(),
    ];

void checkUnnamed72(core.List<api.Recommendation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecommendation(o[0]);
  checkRecommendation(o[1]);
}

core.int buildCounterGenerateRecommendationsResponse = 0;
api.GenerateRecommendationsResponse buildGenerateRecommendationsResponse() {
  final o = api.GenerateRecommendationsResponse();
  buildCounterGenerateRecommendationsResponse++;
  if (buildCounterGenerateRecommendationsResponse < 3) {
    o.recommendations = buildUnnamed72();
    o.responseToken = 'foo';
  }
  buildCounterGenerateRecommendationsResponse--;
  return o;
}

void checkGenerateRecommendationsResponse(
    api.GenerateRecommendationsResponse o) {
  buildCounterGenerateRecommendationsResponse++;
  if (buildCounterGenerateRecommendationsResponse < 3) {
    checkUnnamed72(o.recommendations!);
    unittest.expect(
      o.responseToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateRecommendationsResponse--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed73() => [
      buildGmbAccountsGmbAccount(),
      buildGmbAccountsGmbAccount(),
    ];

void checkUnnamed73(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterGmbAccounts = 0;
api.GmbAccounts buildGmbAccounts() {
  final o = api.GmbAccounts();
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    o.accountId = 'foo';
    o.gmbAccounts = buildUnnamed73();
  }
  buildCounterGmbAccounts--;
  return o;
}

void checkGmbAccounts(api.GmbAccounts o) {
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.gmbAccounts!);
  }
  buildCounterGmbAccounts--;
}

core.int buildCounterGmbAccountsGmbAccount = 0;
api.GmbAccountsGmbAccount buildGmbAccountsGmbAccount() {
  final o = api.GmbAccountsGmbAccount();
  buildCounterGmbAccountsGmbAccount++;
  if (buildCounterGmbAccountsGmbAccount < 3) {
    o.email = 'foo';
    o.listingCount = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGmbAccountsGmbAccount--;
  return o;
}

void checkGmbAccountsGmbAccount(api.GmbAccountsGmbAccount o) {
  buildCounterGmbAccountsGmbAccount++;
  if (buildCounterGmbAccountsGmbAccount < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listingCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGmbAccountsGmbAccount--;
}

core.int buildCounterGoogleAnalyticsLink = 0;
api.GoogleAnalyticsLink buildGoogleAnalyticsLink() {
  final o = api.GoogleAnalyticsLink();
  buildCounterGoogleAnalyticsLink++;
  if (buildCounterGoogleAnalyticsLink < 3) {
    o.attributionSettings = buildAttributionSettings();
    o.propertyId = 'foo';
    o.propertyName = 'foo';
  }
  buildCounterGoogleAnalyticsLink--;
  return o;
}

void checkGoogleAnalyticsLink(api.GoogleAnalyticsLink o) {
  buildCounterGoogleAnalyticsLink++;
  if (buildCounterGoogleAnalyticsLink < 3) {
    checkAttributionSettings(o.attributionSettings!);
    unittest.expect(
      o.propertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsLink--;
}

core.List<api.LocationIdSet> buildUnnamed74() => [
      buildLocationIdSet(),
      buildLocationIdSet(),
    ];

void checkUnnamed74(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0]);
  checkLocationIdSet(o[1]);
}

core.List<core.String> buildUnnamed75() => [
      'foo',
      'foo',
    ];

void checkUnnamed75(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed76() => [
      'foo',
      'foo',
    ];

void checkUnnamed76(core.List<core.String> o) {
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

core.List<api.Price> buildUnnamed77() => [
      buildPrice(),
      buildPrice(),
    ];

void checkUnnamed77(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0]);
  checkPrice(o[1]);
}

core.List<api.Weight> buildUnnamed78() => [
      buildWeight(),
      buildWeight(),
    ];

void checkUnnamed78(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0]);
  checkWeight(o[1]);
}

core.int buildCounterHeaders = 0;
api.Headers buildHeaders() {
  final o = api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed74();
    o.numberOfItems = buildUnnamed75();
    o.postalCodeGroupNames = buildUnnamed76();
    o.prices = buildUnnamed77();
    o.weights = buildUnnamed78();
  }
  buildCounterHeaders--;
  return o;
}

void checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed74(o.locations!);
    checkUnnamed75(o.numberOfItems!);
    checkUnnamed76(o.postalCodeGroupNames!);
    checkUnnamed77(o.prices!);
    checkUnnamed78(o.weights!);
  }
  buildCounterHeaders--;
}

core.int buildCounterHolidayCutoff = 0;
api.HolidayCutoff buildHolidayCutoff() {
  final o = api.HolidayCutoff();
  buildCounterHolidayCutoff++;
  if (buildCounterHolidayCutoff < 3) {
    o.deadlineDate = 'foo';
    o.deadlineHour = 42;
    o.deadlineTimezone = 'foo';
    o.holidayId = 'foo';
    o.visibleFromDate = 'foo';
  }
  buildCounterHolidayCutoff--;
  return o;
}

void checkHolidayCutoff(api.HolidayCutoff o) {
  buildCounterHolidayCutoff++;
  if (buildCounterHolidayCutoff < 3) {
    unittest.expect(
      o.deadlineDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deadlineHour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.deadlineTimezone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.holidayId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibleFromDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterHolidayCutoff--;
}

core.int buildCounterHolidaysHoliday = 0;
api.HolidaysHoliday buildHolidaysHoliday() {
  final o = api.HolidaysHoliday();
  buildCounterHolidaysHoliday++;
  if (buildCounterHolidaysHoliday < 3) {
    o.countryCode = 'foo';
    o.date = 'foo';
    o.deliveryGuaranteeDate = 'foo';
    o.deliveryGuaranteeHour = 'foo';
    o.id = 'foo';
    o.type = 'foo';
  }
  buildCounterHolidaysHoliday--;
  return o;
}

void checkHolidaysHoliday(api.HolidaysHoliday o) {
  buildCounterHolidaysHoliday++;
  if (buildCounterHolidaysHoliday < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryGuaranteeDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryGuaranteeHour!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterHolidaysHoliday--;
}

core.int buildCounterInputField = 0;
api.InputField buildInputField() {
  final o = api.InputField();
  buildCounterInputField++;
  if (buildCounterInputField < 3) {
    o.checkboxInput = buildInputFieldCheckboxInput();
    o.choiceInput = buildInputFieldChoiceInput();
    o.id = 'foo';
    o.label = buildTextWithTooltip();
    o.required = true;
    o.textInput = buildInputFieldTextInput();
  }
  buildCounterInputField--;
  return o;
}

void checkInputField(api.InputField o) {
  buildCounterInputField++;
  if (buildCounterInputField < 3) {
    checkInputFieldCheckboxInput(o.checkboxInput!);
    checkInputFieldChoiceInput(o.choiceInput!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkTextWithTooltip(o.label!);
    unittest.expect(o.required!, unittest.isTrue);
    checkInputFieldTextInput(o.textInput!);
  }
  buildCounterInputField--;
}

core.int buildCounterInputFieldCheckboxInput = 0;
api.InputFieldCheckboxInput buildInputFieldCheckboxInput() {
  final o = api.InputFieldCheckboxInput();
  buildCounterInputFieldCheckboxInput++;
  if (buildCounterInputFieldCheckboxInput < 3) {}
  buildCounterInputFieldCheckboxInput--;
  return o;
}

void checkInputFieldCheckboxInput(api.InputFieldCheckboxInput o) {
  buildCounterInputFieldCheckboxInput++;
  if (buildCounterInputFieldCheckboxInput < 3) {}
  buildCounterInputFieldCheckboxInput--;
}

core.List<api.InputFieldChoiceInputChoiceInputOption> buildUnnamed79() => [
      buildInputFieldChoiceInputChoiceInputOption(),
      buildInputFieldChoiceInputChoiceInputOption(),
    ];

void checkUnnamed79(core.List<api.InputFieldChoiceInputChoiceInputOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputFieldChoiceInputChoiceInputOption(o[0]);
  checkInputFieldChoiceInputChoiceInputOption(o[1]);
}

core.int buildCounterInputFieldChoiceInput = 0;
api.InputFieldChoiceInput buildInputFieldChoiceInput() {
  final o = api.InputFieldChoiceInput();
  buildCounterInputFieldChoiceInput++;
  if (buildCounterInputFieldChoiceInput < 3) {
    o.options = buildUnnamed79();
  }
  buildCounterInputFieldChoiceInput--;
  return o;
}

void checkInputFieldChoiceInput(api.InputFieldChoiceInput o) {
  buildCounterInputFieldChoiceInput++;
  if (buildCounterInputFieldChoiceInput < 3) {
    checkUnnamed79(o.options!);
  }
  buildCounterInputFieldChoiceInput--;
}

core.int buildCounterInputFieldChoiceInputChoiceInputOption = 0;
api.InputFieldChoiceInputChoiceInputOption
    buildInputFieldChoiceInputChoiceInputOption() {
  final o = api.InputFieldChoiceInputChoiceInputOption();
  buildCounterInputFieldChoiceInputChoiceInputOption++;
  if (buildCounterInputFieldChoiceInputChoiceInputOption < 3) {
    o.additionalInput = buildInputField();
    o.id = 'foo';
    o.label = buildTextWithTooltip();
  }
  buildCounterInputFieldChoiceInputChoiceInputOption--;
  return o;
}

void checkInputFieldChoiceInputChoiceInputOption(
    api.InputFieldChoiceInputChoiceInputOption o) {
  buildCounterInputFieldChoiceInputChoiceInputOption++;
  if (buildCounterInputFieldChoiceInputChoiceInputOption < 3) {
    checkInputField(o.additionalInput!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkTextWithTooltip(o.label!);
  }
  buildCounterInputFieldChoiceInputChoiceInputOption--;
}

core.int buildCounterInputFieldTextInput = 0;
api.InputFieldTextInput buildInputFieldTextInput() {
  final o = api.InputFieldTextInput();
  buildCounterInputFieldTextInput++;
  if (buildCounterInputFieldTextInput < 3) {
    o.additionalInfo = buildTextWithTooltip();
    o.ariaLabel = 'foo';
    o.formatInfo = 'foo';
    o.type = 'foo';
  }
  buildCounterInputFieldTextInput--;
  return o;
}

void checkInputFieldTextInput(api.InputFieldTextInput o) {
  buildCounterInputFieldTextInput++;
  if (buildCounterInputFieldTextInput < 3) {
    checkTextWithTooltip(o.additionalInfo!);
    unittest.expect(
      o.ariaLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formatInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputFieldTextInput--;
}

core.int buildCounterInputValue = 0;
api.InputValue buildInputValue() {
  final o = api.InputValue();
  buildCounterInputValue++;
  if (buildCounterInputValue < 3) {
    o.checkboxInputValue = buildInputValueCheckboxInputValue();
    o.choiceInputValue = buildInputValueChoiceInputValue();
    o.inputFieldId = 'foo';
    o.textInputValue = buildInputValueTextInputValue();
  }
  buildCounterInputValue--;
  return o;
}

void checkInputValue(api.InputValue o) {
  buildCounterInputValue++;
  if (buildCounterInputValue < 3) {
    checkInputValueCheckboxInputValue(o.checkboxInputValue!);
    checkInputValueChoiceInputValue(o.choiceInputValue!);
    unittest.expect(
      o.inputFieldId!,
      unittest.equals('foo'),
    );
    checkInputValueTextInputValue(o.textInputValue!);
  }
  buildCounterInputValue--;
}

core.int buildCounterInputValueCheckboxInputValue = 0;
api.InputValueCheckboxInputValue buildInputValueCheckboxInputValue() {
  final o = api.InputValueCheckboxInputValue();
  buildCounterInputValueCheckboxInputValue++;
  if (buildCounterInputValueCheckboxInputValue < 3) {
    o.value = true;
  }
  buildCounterInputValueCheckboxInputValue--;
  return o;
}

void checkInputValueCheckboxInputValue(api.InputValueCheckboxInputValue o) {
  buildCounterInputValueCheckboxInputValue++;
  if (buildCounterInputValueCheckboxInputValue < 3) {
    unittest.expect(o.value!, unittest.isTrue);
  }
  buildCounterInputValueCheckboxInputValue--;
}

core.int buildCounterInputValueChoiceInputValue = 0;
api.InputValueChoiceInputValue buildInputValueChoiceInputValue() {
  final o = api.InputValueChoiceInputValue();
  buildCounterInputValueChoiceInputValue++;
  if (buildCounterInputValueChoiceInputValue < 3) {
    o.choiceInputOptionId = 'foo';
  }
  buildCounterInputValueChoiceInputValue--;
  return o;
}

void checkInputValueChoiceInputValue(api.InputValueChoiceInputValue o) {
  buildCounterInputValueChoiceInputValue++;
  if (buildCounterInputValueChoiceInputValue < 3) {
    unittest.expect(
      o.choiceInputOptionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputValueChoiceInputValue--;
}

core.int buildCounterInputValueTextInputValue = 0;
api.InputValueTextInputValue buildInputValueTextInputValue() {
  final o = api.InputValueTextInputValue();
  buildCounterInputValueTextInputValue++;
  if (buildCounterInputValueTextInputValue < 3) {
    o.value = 'foo';
  }
  buildCounterInputValueTextInputValue--;
  return o;
}

void checkInputValueTextInputValue(api.InputValueTextInputValue o) {
  buildCounterInputValueTextInputValue++;
  if (buildCounterInputValueTextInputValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputValueTextInputValue--;
}

core.int buildCounterInsertCheckoutSettingsRequest = 0;
api.InsertCheckoutSettingsRequest buildInsertCheckoutSettingsRequest() {
  final o = api.InsertCheckoutSettingsRequest();
  buildCounterInsertCheckoutSettingsRequest++;
  if (buildCounterInsertCheckoutSettingsRequest < 3) {
    o.uriSettings = buildUrlSettings();
  }
  buildCounterInsertCheckoutSettingsRequest--;
  return o;
}

void checkInsertCheckoutSettingsRequest(api.InsertCheckoutSettingsRequest o) {
  buildCounterInsertCheckoutSettingsRequest++;
  if (buildCounterInsertCheckoutSettingsRequest < 3) {
    checkUrlSettings(o.uriSettings!);
  }
  buildCounterInsertCheckoutSettingsRequest--;
}

core.int buildCounterInstallment = 0;
api.Installment buildInstallment() {
  final o = api.Installment();
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    o.amount = buildPrice();
    o.creditType = 'foo';
    o.downpayment = buildPrice();
    o.months = 'foo';
  }
  buildCounterInstallment--;
  return o;
}

void checkInstallment(api.Installment o) {
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    checkPrice(o.amount!);
    unittest.expect(
      o.creditType!,
      unittest.equals('foo'),
    );
    checkPrice(o.downpayment!);
    unittest.expect(
      o.months!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstallment--;
}

core.List<core.String> buildUnnamed80() => [
      'foo',
      'foo',
    ];

void checkUnnamed80(core.List<core.String> o) {
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

core.int buildCounterLabelIds = 0;
api.LabelIds buildLabelIds() {
  final o = api.LabelIds();
  buildCounterLabelIds++;
  if (buildCounterLabelIds < 3) {
    o.labelIds = buildUnnamed80();
  }
  buildCounterLabelIds--;
  return o;
}

void checkLabelIds(api.LabelIds o) {
  buildCounterLabelIds++;
  if (buildCounterLabelIds < 3) {
    checkUnnamed80(o.labelIds!);
  }
  buildCounterLabelIds--;
}

core.int buildCounterLiaAboutPageSettings = 0;
api.LiaAboutPageSettings buildLiaAboutPageSettings() {
  final o = api.LiaAboutPageSettings();
  buildCounterLiaAboutPageSettings++;
  if (buildCounterLiaAboutPageSettings < 3) {
    o.status = 'foo';
    o.url = 'foo';
  }
  buildCounterLiaAboutPageSettings--;
  return o;
}

void checkLiaAboutPageSettings(api.LiaAboutPageSettings o) {
  buildCounterLiaAboutPageSettings++;
  if (buildCounterLiaAboutPageSettings < 3) {
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiaAboutPageSettings--;
}

core.int buildCounterLiaCountrySettings = 0;
api.LiaCountrySettings buildLiaCountrySettings() {
  final o = api.LiaCountrySettings();
  buildCounterLiaCountrySettings++;
  if (buildCounterLiaCountrySettings < 3) {
    o.about = buildLiaAboutPageSettings();
    o.country = 'foo';
    o.hostedLocalStorefrontActive = true;
    o.inventory = buildLiaInventorySettings();
    o.omnichannelExperience = buildLiaOmnichannelExperience();
    o.onDisplayToOrder = buildLiaOnDisplayToOrderSettings();
    o.posDataProvider = buildLiaPosDataProvider();
    o.storePickupActive = true;
  }
  buildCounterLiaCountrySettings--;
  return o;
}

void checkLiaCountrySettings(api.LiaCountrySettings o) {
  buildCounterLiaCountrySettings++;
  if (buildCounterLiaCountrySettings < 3) {
    checkLiaAboutPageSettings(o.about!);
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hostedLocalStorefrontActive!, unittest.isTrue);
    checkLiaInventorySettings(o.inventory!);
    checkLiaOmnichannelExperience(o.omnichannelExperience!);
    checkLiaOnDisplayToOrderSettings(o.onDisplayToOrder!);
    checkLiaPosDataProvider(o.posDataProvider!);
    unittest.expect(o.storePickupActive!, unittest.isTrue);
  }
  buildCounterLiaCountrySettings--;
}

core.int buildCounterLiaInventorySettings = 0;
api.LiaInventorySettings buildLiaInventorySettings() {
  final o = api.LiaInventorySettings();
  buildCounterLiaInventorySettings++;
  if (buildCounterLiaInventorySettings < 3) {
    o.inventoryVerificationContactEmail = 'foo';
    o.inventoryVerificationContactName = 'foo';
    o.inventoryVerificationContactStatus = 'foo';
    o.status = 'foo';
  }
  buildCounterLiaInventorySettings--;
  return o;
}

void checkLiaInventorySettings(api.LiaInventorySettings o) {
  buildCounterLiaInventorySettings++;
  if (buildCounterLiaInventorySettings < 3) {
    unittest.expect(
      o.inventoryVerificationContactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inventoryVerificationContactName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inventoryVerificationContactStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiaInventorySettings--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

core.int buildCounterLiaOmnichannelExperience = 0;
api.LiaOmnichannelExperience buildLiaOmnichannelExperience() {
  final o = api.LiaOmnichannelExperience();
  buildCounterLiaOmnichannelExperience++;
  if (buildCounterLiaOmnichannelExperience < 3) {
    o.country = 'foo';
    o.lsfType = 'foo';
    o.pickupTypes = buildUnnamed81();
  }
  buildCounterLiaOmnichannelExperience--;
  return o;
}

void checkLiaOmnichannelExperience(api.LiaOmnichannelExperience o) {
  buildCounterLiaOmnichannelExperience++;
  if (buildCounterLiaOmnichannelExperience < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lsfType!,
      unittest.equals('foo'),
    );
    checkUnnamed81(o.pickupTypes!);
  }
  buildCounterLiaOmnichannelExperience--;
}

core.int buildCounterLiaOnDisplayToOrderSettings = 0;
api.LiaOnDisplayToOrderSettings buildLiaOnDisplayToOrderSettings() {
  final o = api.LiaOnDisplayToOrderSettings();
  buildCounterLiaOnDisplayToOrderSettings++;
  if (buildCounterLiaOnDisplayToOrderSettings < 3) {
    o.shippingCostPolicyUrl = 'foo';
    o.status = 'foo';
  }
  buildCounterLiaOnDisplayToOrderSettings--;
  return o;
}

void checkLiaOnDisplayToOrderSettings(api.LiaOnDisplayToOrderSettings o) {
  buildCounterLiaOnDisplayToOrderSettings++;
  if (buildCounterLiaOnDisplayToOrderSettings < 3) {
    unittest.expect(
      o.shippingCostPolicyUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiaOnDisplayToOrderSettings--;
}

core.int buildCounterLiaPosDataProvider = 0;
api.LiaPosDataProvider buildLiaPosDataProvider() {
  final o = api.LiaPosDataProvider();
  buildCounterLiaPosDataProvider++;
  if (buildCounterLiaPosDataProvider < 3) {
    o.posDataProviderId = 'foo';
    o.posExternalAccountId = 'foo';
  }
  buildCounterLiaPosDataProvider--;
  return o;
}

void checkLiaPosDataProvider(api.LiaPosDataProvider o) {
  buildCounterLiaPosDataProvider++;
  if (buildCounterLiaPosDataProvider < 3) {
    unittest.expect(
      o.posDataProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.posExternalAccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiaPosDataProvider--;
}

core.List<api.LiaCountrySettings> buildUnnamed82() => [
      buildLiaCountrySettings(),
      buildLiaCountrySettings(),
    ];

void checkUnnamed82(core.List<api.LiaCountrySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaCountrySettings(o[0]);
  checkLiaCountrySettings(o[1]);
}

core.int buildCounterLiaSettings = 0;
api.LiaSettings buildLiaSettings() {
  final o = api.LiaSettings();
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    o.accountId = 'foo';
    o.countrySettings = buildUnnamed82();
    o.kind = 'foo';
  }
  buildCounterLiaSettings--;
  return o;
}

void checkLiaSettings(api.LiaSettings o) {
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.countrySettings!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiaSettings--;
}

core.List<api.LiasettingsCustomBatchRequestEntry> buildUnnamed83() => [
      buildLiasettingsCustomBatchRequestEntry(),
      buildLiasettingsCustomBatchRequestEntry(),
    ];

void checkUnnamed83(core.List<api.LiasettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchRequestEntry(o[0]);
  checkLiasettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchRequest = 0;
api.LiasettingsCustomBatchRequest buildLiasettingsCustomBatchRequest() {
  final o = api.LiasettingsCustomBatchRequest();
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed83();
  }
  buildCounterLiasettingsCustomBatchRequest--;
  return o;
}

void checkLiasettingsCustomBatchRequest(api.LiasettingsCustomBatchRequest o) {
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    checkUnnamed83(o.entries!);
  }
  buildCounterLiasettingsCustomBatchRequest--;
}

core.int buildCounterLiasettingsCustomBatchRequestEntry = 0;
api.LiasettingsCustomBatchRequestEntry
    buildLiasettingsCustomBatchRequestEntry() {
  final o = api.LiasettingsCustomBatchRequestEntry();
  buildCounterLiasettingsCustomBatchRequestEntry++;
  if (buildCounterLiasettingsCustomBatchRequestEntry < 3) {
    o.accountId = 'foo';
    o.batchId = 42;
    o.contactEmail = 'foo';
    o.contactName = 'foo';
    o.country = 'foo';
    o.gmbEmail = 'foo';
    o.liaSettings = buildLiaSettings();
    o.merchantId = 'foo';
    o.method = 'foo';
    o.omnichannelExperience = buildLiaOmnichannelExperience();
    o.posDataProviderId = 'foo';
    o.posExternalAccountId = 'foo';
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
  return o;
}

void checkLiasettingsCustomBatchRequestEntry(
    api.LiasettingsCustomBatchRequestEntry o) {
  buildCounterLiasettingsCustomBatchRequestEntry++;
  if (buildCounterLiasettingsCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gmbEmail!,
      unittest.equals('foo'),
    );
    checkLiaSettings(o.liaSettings!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkLiaOmnichannelExperience(o.omnichannelExperience!);
    unittest.expect(
      o.posDataProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.posExternalAccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
}

core.List<api.LiasettingsCustomBatchResponseEntry> buildUnnamed84() => [
      buildLiasettingsCustomBatchResponseEntry(),
      buildLiasettingsCustomBatchResponseEntry(),
    ];

void checkUnnamed84(core.List<api.LiasettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchResponseEntry(o[0]);
  checkLiasettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponse = 0;
api.LiasettingsCustomBatchResponse buildLiasettingsCustomBatchResponse() {
  final o = api.LiasettingsCustomBatchResponse();
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed84();
    o.kind = 'foo';
  }
  buildCounterLiasettingsCustomBatchResponse--;
  return o;
}

void checkLiasettingsCustomBatchResponse(api.LiasettingsCustomBatchResponse o) {
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    checkUnnamed84(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsCustomBatchResponse--;
}

core.List<api.PosDataProviders> buildUnnamed85() => [
      buildPosDataProviders(),
      buildPosDataProviders(),
    ];

void checkUnnamed85(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponseEntry = 0;
api.LiasettingsCustomBatchResponseEntry
    buildLiasettingsCustomBatchResponseEntry() {
  final o = api.LiasettingsCustomBatchResponseEntry();
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.gmbAccounts = buildGmbAccounts();
    o.kind = 'foo';
    o.liaSettings = buildLiaSettings();
    o.omnichannelExperience = buildLiaOmnichannelExperience();
    o.posDataProviders = buildUnnamed85();
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
  return o;
}

void checkLiasettingsCustomBatchResponseEntry(
    api.LiasettingsCustomBatchResponseEntry o) {
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    checkGmbAccounts(o.gmbAccounts!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkLiaSettings(o.liaSettings!);
    checkLiaOmnichannelExperience(o.omnichannelExperience!);
    checkUnnamed85(o.posDataProviders!);
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed86() => [
      buildGmbAccountsGmbAccount(),
      buildGmbAccountsGmbAccount(),
    ];

void checkUnnamed86(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterLiasettingsGetAccessibleGmbAccountsResponse = 0;
api.LiasettingsGetAccessibleGmbAccountsResponse
    buildLiasettingsGetAccessibleGmbAccountsResponse() {
  final o = api.LiasettingsGetAccessibleGmbAccountsResponse();
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    o.accountId = 'foo';
    o.gmbAccounts = buildUnnamed86();
    o.kind = 'foo';
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
  return o;
}

void checkLiasettingsGetAccessibleGmbAccountsResponse(
    api.LiasettingsGetAccessibleGmbAccountsResponse o) {
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.gmbAccounts!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
}

core.List<api.PosDataProviders> buildUnnamed87() => [
      buildPosDataProviders(),
      buildPosDataProviders(),
    ];

void checkUnnamed87(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
}

core.int buildCounterLiasettingsListPosDataProvidersResponse = 0;
api.LiasettingsListPosDataProvidersResponse
    buildLiasettingsListPosDataProvidersResponse() {
  final o = api.LiasettingsListPosDataProvidersResponse();
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    o.kind = 'foo';
    o.posDataProviders = buildUnnamed87();
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
  return o;
}

void checkLiasettingsListPosDataProvidersResponse(
    api.LiasettingsListPosDataProvidersResponse o) {
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed87(o.posDataProviders!);
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
}

core.List<api.LiaSettings> buildUnnamed88() => [
      buildLiaSettings(),
      buildLiaSettings(),
    ];

void checkUnnamed88(core.List<api.LiaSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaSettings(o[0]);
  checkLiaSettings(o[1]);
}

core.int buildCounterLiasettingsListResponse = 0;
api.LiasettingsListResponse buildLiasettingsListResponse() {
  final o = api.LiasettingsListResponse();
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed88();
  }
  buildCounterLiasettingsListResponse--;
  return o;
}

void checkLiasettingsListResponse(api.LiasettingsListResponse o) {
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed88(o.resources!);
  }
  buildCounterLiasettingsListResponse--;
}

core.int buildCounterLiasettingsRequestGmbAccessResponse = 0;
api.LiasettingsRequestGmbAccessResponse
    buildLiasettingsRequestGmbAccessResponse() {
  final o = api.LiasettingsRequestGmbAccessResponse();
  buildCounterLiasettingsRequestGmbAccessResponse++;
  if (buildCounterLiasettingsRequestGmbAccessResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
  return o;
}

void checkLiasettingsRequestGmbAccessResponse(
    api.LiasettingsRequestGmbAccessResponse o) {
  buildCounterLiasettingsRequestGmbAccessResponse++;
  if (buildCounterLiasettingsRequestGmbAccessResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
}

core.int buildCounterLiasettingsRequestInventoryVerificationResponse = 0;
api.LiasettingsRequestInventoryVerificationResponse
    buildLiasettingsRequestInventoryVerificationResponse() {
  final o = api.LiasettingsRequestInventoryVerificationResponse();
  buildCounterLiasettingsRequestInventoryVerificationResponse++;
  if (buildCounterLiasettingsRequestInventoryVerificationResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
  return o;
}

void checkLiasettingsRequestInventoryVerificationResponse(
    api.LiasettingsRequestInventoryVerificationResponse o) {
  buildCounterLiasettingsRequestInventoryVerificationResponse++;
  if (buildCounterLiasettingsRequestInventoryVerificationResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
}

core.int buildCounterLiasettingsSetInventoryVerificationContactResponse = 0;
api.LiasettingsSetInventoryVerificationContactResponse
    buildLiasettingsSetInventoryVerificationContactResponse() {
  final o = api.LiasettingsSetInventoryVerificationContactResponse();
  buildCounterLiasettingsSetInventoryVerificationContactResponse++;
  if (buildCounterLiasettingsSetInventoryVerificationContactResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
  return o;
}

void checkLiasettingsSetInventoryVerificationContactResponse(
    api.LiasettingsSetInventoryVerificationContactResponse o) {
  buildCounterLiasettingsSetInventoryVerificationContactResponse++;
  if (buildCounterLiasettingsSetInventoryVerificationContactResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
}

core.int buildCounterLiasettingsSetPosDataProviderResponse = 0;
api.LiasettingsSetPosDataProviderResponse
    buildLiasettingsSetPosDataProviderResponse() {
  final o = api.LiasettingsSetPosDataProviderResponse();
  buildCounterLiasettingsSetPosDataProviderResponse++;
  if (buildCounterLiasettingsSetPosDataProviderResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterLiasettingsSetPosDataProviderResponse--;
  return o;
}

void checkLiasettingsSetPosDataProviderResponse(
    api.LiasettingsSetPosDataProviderResponse o) {
  buildCounterLiasettingsSetPosDataProviderResponse++;
  if (buildCounterLiasettingsSetPosDataProviderResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsSetPosDataProviderResponse--;
}

core.int buildCounterLinkService = 0;
api.LinkService buildLinkService() {
  final o = api.LinkService();
  buildCounterLinkService++;
  if (buildCounterLinkService < 3) {
    o.service = 'foo';
    o.status = 'foo';
  }
  buildCounterLinkService--;
  return o;
}

void checkLinkService(api.LinkService o) {
  buildCounterLinkService++;
  if (buildCounterLinkService < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkService--;
}

core.List<api.LinkService> buildUnnamed89() => [
      buildLinkService(),
      buildLinkService(),
    ];

void checkUnnamed89(core.List<api.LinkService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkService(o[0]);
  checkLinkService(o[1]);
}

core.int buildCounterLinkedAccount = 0;
api.LinkedAccount buildLinkedAccount() {
  final o = api.LinkedAccount();
  buildCounterLinkedAccount++;
  if (buildCounterLinkedAccount < 3) {
    o.linkedAccountId = 'foo';
    o.services = buildUnnamed89();
  }
  buildCounterLinkedAccount--;
  return o;
}

void checkLinkedAccount(api.LinkedAccount o) {
  buildCounterLinkedAccount++;
  if (buildCounterLinkedAccount < 3) {
    unittest.expect(
      o.linkedAccountId!,
      unittest.equals('foo'),
    );
    checkUnnamed89(o.services!);
  }
  buildCounterLinkedAccount--;
}

core.List<api.AccountLabel> buildUnnamed90() => [
      buildAccountLabel(),
      buildAccountLabel(),
    ];

void checkUnnamed90(core.List<api.AccountLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountLabel(o[0]);
  checkAccountLabel(o[1]);
}

core.int buildCounterListAccountLabelsResponse = 0;
api.ListAccountLabelsResponse buildListAccountLabelsResponse() {
  final o = api.ListAccountLabelsResponse();
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    o.accountLabels = buildUnnamed90();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountLabelsResponse--;
  return o;
}

void checkListAccountLabelsResponse(api.ListAccountLabelsResponse o) {
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    checkUnnamed90(o.accountLabels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccountLabelsResponse--;
}

core.List<api.AccountReturnCarrier> buildUnnamed91() => [
      buildAccountReturnCarrier(),
      buildAccountReturnCarrier(),
    ];

void checkUnnamed91(core.List<api.AccountReturnCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountReturnCarrier(o[0]);
  checkAccountReturnCarrier(o[1]);
}

core.int buildCounterListAccountReturnCarrierResponse = 0;
api.ListAccountReturnCarrierResponse buildListAccountReturnCarrierResponse() {
  final o = api.ListAccountReturnCarrierResponse();
  buildCounterListAccountReturnCarrierResponse++;
  if (buildCounterListAccountReturnCarrierResponse < 3) {
    o.accountReturnCarriers = buildUnnamed91();
  }
  buildCounterListAccountReturnCarrierResponse--;
  return o;
}

void checkListAccountReturnCarrierResponse(
    api.ListAccountReturnCarrierResponse o) {
  buildCounterListAccountReturnCarrierResponse++;
  if (buildCounterListAccountReturnCarrierResponse < 3) {
    checkUnnamed91(o.accountReturnCarriers!);
  }
  buildCounterListAccountReturnCarrierResponse--;
}

core.List<api.CollectionStatus> buildUnnamed92() => [
      buildCollectionStatus(),
      buildCollectionStatus(),
    ];

void checkUnnamed92(core.List<api.CollectionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatus(o[0]);
  checkCollectionStatus(o[1]);
}

core.int buildCounterListCollectionStatusesResponse = 0;
api.ListCollectionStatusesResponse buildListCollectionStatusesResponse() {
  final o = api.ListCollectionStatusesResponse();
  buildCounterListCollectionStatusesResponse++;
  if (buildCounterListCollectionStatusesResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed92();
  }
  buildCounterListCollectionStatusesResponse--;
  return o;
}

void checkListCollectionStatusesResponse(api.ListCollectionStatusesResponse o) {
  buildCounterListCollectionStatusesResponse++;
  if (buildCounterListCollectionStatusesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed92(o.resources!);
  }
  buildCounterListCollectionStatusesResponse--;
}

core.List<api.Collection> buildUnnamed93() => [
      buildCollection(),
      buildCollection(),
    ];

void checkUnnamed93(core.List<api.Collection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollection(o[0]);
  checkCollection(o[1]);
}

core.int buildCounterListCollectionsResponse = 0;
api.ListCollectionsResponse buildListCollectionsResponse() {
  final o = api.ListCollectionsResponse();
  buildCounterListCollectionsResponse++;
  if (buildCounterListCollectionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed93();
  }
  buildCounterListCollectionsResponse--;
  return o;
}

void checkListCollectionsResponse(api.ListCollectionsResponse o) {
  buildCounterListCollectionsResponse++;
  if (buildCounterListCollectionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.resources!);
  }
  buildCounterListCollectionsResponse--;
}

core.List<api.ConversionSource> buildUnnamed94() => [
      buildConversionSource(),
      buildConversionSource(),
    ];

void checkUnnamed94(core.List<api.ConversionSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionSource(o[0]);
  checkConversionSource(o[1]);
}

core.int buildCounterListConversionSourcesResponse = 0;
api.ListConversionSourcesResponse buildListConversionSourcesResponse() {
  final o = api.ListConversionSourcesResponse();
  buildCounterListConversionSourcesResponse++;
  if (buildCounterListConversionSourcesResponse < 3) {
    o.conversionSources = buildUnnamed94();
    o.nextPageToken = 'foo';
  }
  buildCounterListConversionSourcesResponse--;
  return o;
}

void checkListConversionSourcesResponse(api.ListConversionSourcesResponse o) {
  buildCounterListConversionSourcesResponse++;
  if (buildCounterListConversionSourcesResponse < 3) {
    checkUnnamed94(o.conversionSources!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConversionSourcesResponse--;
}

core.List<api.Css> buildUnnamed95() => [
      buildCss(),
      buildCss(),
    ];

void checkUnnamed95(core.List<api.Css> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCss(o[0]);
  checkCss(o[1]);
}

core.int buildCounterListCssesResponse = 0;
api.ListCssesResponse buildListCssesResponse() {
  final o = api.ListCssesResponse();
  buildCounterListCssesResponse++;
  if (buildCounterListCssesResponse < 3) {
    o.csses = buildUnnamed95();
    o.nextPageToken = 'foo';
  }
  buildCounterListCssesResponse--;
  return o;
}

void checkListCssesResponse(api.ListCssesResponse o) {
  buildCounterListCssesResponse++;
  if (buildCounterListCssesResponse < 3) {
    checkUnnamed95(o.csses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCssesResponse--;
}

core.List<api.MethodQuota> buildUnnamed96() => [
      buildMethodQuota(),
      buildMethodQuota(),
    ];

void checkUnnamed96(core.List<api.MethodQuota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethodQuota(o[0]);
  checkMethodQuota(o[1]);
}

core.int buildCounterListMethodQuotasResponse = 0;
api.ListMethodQuotasResponse buildListMethodQuotasResponse() {
  final o = api.ListMethodQuotasResponse();
  buildCounterListMethodQuotasResponse++;
  if (buildCounterListMethodQuotasResponse < 3) {
    o.methodQuotas = buildUnnamed96();
    o.nextPageToken = 'foo';
  }
  buildCounterListMethodQuotasResponse--;
  return o;
}

void checkListMethodQuotasResponse(api.ListMethodQuotasResponse o) {
  buildCounterListMethodQuotasResponse++;
  if (buildCounterListMethodQuotasResponse < 3) {
    checkUnnamed96(o.methodQuotas!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMethodQuotasResponse--;
}

core.List<api.Promotion> buildUnnamed97() => [
      buildPromotion(),
      buildPromotion(),
    ];

void checkUnnamed97(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterListPromotionResponse = 0;
api.ListPromotionResponse buildListPromotionResponse() {
  final o = api.ListPromotionResponse();
  buildCounterListPromotionResponse++;
  if (buildCounterListPromotionResponse < 3) {
    o.nextPageToken = 'foo';
    o.promotions = buildUnnamed97();
  }
  buildCounterListPromotionResponse--;
  return o;
}

void checkListPromotionResponse(api.ListPromotionResponse o) {
  buildCounterListPromotionResponse++;
  if (buildCounterListPromotionResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed97(o.promotions!);
  }
  buildCounterListPromotionResponse--;
}

core.List<api.Region> buildUnnamed98() => [
      buildRegion(),
      buildRegion(),
    ];

void checkUnnamed98(core.List<api.Region> o) {
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
    o.regions = buildUnnamed98();
  }
  buildCounterListRegionsResponse--;
  return o;
}

void checkListRegionsResponse(api.ListRegionsResponse o) {
  buildCounterListRegionsResponse++;
  if (buildCounterListRegionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed98(o.regions!);
  }
  buildCounterListRegionsResponse--;
}

core.List<api.ReturnPolicyOnline> buildUnnamed99() => [
      buildReturnPolicyOnline(),
      buildReturnPolicyOnline(),
    ];

void checkUnnamed99(core.List<api.ReturnPolicyOnline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicyOnline(o[0]);
  checkReturnPolicyOnline(o[1]);
}

core.int buildCounterListReturnPolicyOnlineResponse = 0;
api.ListReturnPolicyOnlineResponse buildListReturnPolicyOnlineResponse() {
  final o = api.ListReturnPolicyOnlineResponse();
  buildCounterListReturnPolicyOnlineResponse++;
  if (buildCounterListReturnPolicyOnlineResponse < 3) {
    o.returnPolicies = buildUnnamed99();
  }
  buildCounterListReturnPolicyOnlineResponse--;
  return o;
}

void checkListReturnPolicyOnlineResponse(api.ListReturnPolicyOnlineResponse o) {
  buildCounterListReturnPolicyOnlineResponse++;
  if (buildCounterListReturnPolicyOnlineResponse < 3) {
    checkUnnamed99(o.returnPolicies!);
  }
  buildCounterListReturnPolicyOnlineResponse--;
}

core.List<api.CustomAttribute> buildUnnamed100() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed100(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterLocalInventory = 0;
api.LocalInventory buildLocalInventory() {
  final o = api.LocalInventory();
  buildCounterLocalInventory++;
  if (buildCounterLocalInventory < 3) {
    o.availability = 'foo';
    o.customAttributes = buildUnnamed100();
    o.instoreProductLocation = 'foo';
    o.kind = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.quantity = 42;
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = 'foo';
    o.storeCode = 'foo';
  }
  buildCounterLocalInventory--;
  return o;
}

void checkLocalInventory(api.LocalInventory o) {
  buildCounterLocalInventory++;
  if (buildCounterLocalInventory < 3) {
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    checkUnnamed100(o.customAttributes!);
    unittest.expect(
      o.instoreProductLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupSla!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    checkPrice(o.salePrice!);
    unittest.expect(
      o.salePriceEffectiveDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalInventory--;
}

core.List<api.LocalinventoryCustomBatchRequestEntry> buildUnnamed101() => [
      buildLocalinventoryCustomBatchRequestEntry(),
      buildLocalinventoryCustomBatchRequestEntry(),
    ];

void checkUnnamed101(core.List<api.LocalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchRequestEntry(o[0]);
  checkLocalinventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLocalinventoryCustomBatchRequest = 0;
api.LocalinventoryCustomBatchRequest buildLocalinventoryCustomBatchRequest() {
  final o = api.LocalinventoryCustomBatchRequest();
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed101();
  }
  buildCounterLocalinventoryCustomBatchRequest--;
  return o;
}

void checkLocalinventoryCustomBatchRequest(
    api.LocalinventoryCustomBatchRequest o) {
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    checkUnnamed101(o.entries!);
  }
  buildCounterLocalinventoryCustomBatchRequest--;
}

core.int buildCounterLocalinventoryCustomBatchRequestEntry = 0;
api.LocalinventoryCustomBatchRequestEntry
    buildLocalinventoryCustomBatchRequestEntry() {
  final o = api.LocalinventoryCustomBatchRequestEntry();
  buildCounterLocalinventoryCustomBatchRequestEntry++;
  if (buildCounterLocalinventoryCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.localInventory = buildLocalInventory();
    o.merchantId = 'foo';
    o.method = 'foo';
    o.productId = 'foo';
  }
  buildCounterLocalinventoryCustomBatchRequestEntry--;
  return o;
}

void checkLocalinventoryCustomBatchRequestEntry(
    api.LocalinventoryCustomBatchRequestEntry o) {
  buildCounterLocalinventoryCustomBatchRequestEntry++;
  if (buildCounterLocalinventoryCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkLocalInventory(o.localInventory!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalinventoryCustomBatchRequestEntry--;
}

core.List<api.LocalinventoryCustomBatchResponseEntry> buildUnnamed102() => [
      buildLocalinventoryCustomBatchResponseEntry(),
      buildLocalinventoryCustomBatchResponseEntry(),
    ];

void checkUnnamed102(core.List<api.LocalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchResponseEntry(o[0]);
  checkLocalinventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLocalinventoryCustomBatchResponse = 0;
api.LocalinventoryCustomBatchResponse buildLocalinventoryCustomBatchResponse() {
  final o = api.LocalinventoryCustomBatchResponse();
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed102();
    o.kind = 'foo';
  }
  buildCounterLocalinventoryCustomBatchResponse--;
  return o;
}

void checkLocalinventoryCustomBatchResponse(
    api.LocalinventoryCustomBatchResponse o) {
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    checkUnnamed102(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalinventoryCustomBatchResponse--;
}

core.int buildCounterLocalinventoryCustomBatchResponseEntry = 0;
api.LocalinventoryCustomBatchResponseEntry
    buildLocalinventoryCustomBatchResponseEntry() {
  final o = api.LocalinventoryCustomBatchResponseEntry();
  buildCounterLocalinventoryCustomBatchResponseEntry++;
  if (buildCounterLocalinventoryCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
  }
  buildCounterLocalinventoryCustomBatchResponseEntry--;
  return o;
}

void checkLocalinventoryCustomBatchResponseEntry(
    api.LocalinventoryCustomBatchResponseEntry o) {
  buildCounterLocalinventoryCustomBatchResponseEntry++;
  if (buildCounterLocalinventoryCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalinventoryCustomBatchResponseEntry--;
}

core.List<core.String> buildUnnamed103() => [
      'foo',
      'foo',
    ];

void checkUnnamed103(core.List<core.String> o) {
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

core.int buildCounterLocationIdSet = 0;
api.LocationIdSet buildLocationIdSet() {
  final o = api.LocationIdSet();
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    o.locationIds = buildUnnamed103();
  }
  buildCounterLocationIdSet--;
  return o;
}

void checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed103(o.locationIds!);
  }
  buildCounterLocationIdSet--;
}

core.int buildCounterLoyaltyProgram = 0;
api.LoyaltyProgram buildLoyaltyProgram() {
  final o = api.LoyaltyProgram();
  buildCounterLoyaltyProgram++;
  if (buildCounterLoyaltyProgram < 3) {
    o.cashbackForFutureUse = buildPrice();
    o.loyaltyPoints = 'foo';
    o.memberPriceEffectiveDate = 'foo';
    o.price = buildPrice();
    o.programLabel = 'foo';
    o.shippingLabel = 'foo';
    o.tierLabel = 'foo';
  }
  buildCounterLoyaltyProgram--;
  return o;
}

void checkLoyaltyProgram(api.LoyaltyProgram o) {
  buildCounterLoyaltyProgram++;
  if (buildCounterLoyaltyProgram < 3) {
    checkPrice(o.cashbackForFutureUse!);
    unittest.expect(
      o.loyaltyPoints!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memberPriceEffectiveDate!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.programLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shippingLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tierLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoyaltyProgram--;
}

core.int buildCounterMerchantCenterDestination = 0;
api.MerchantCenterDestination buildMerchantCenterDestination() {
  final o = api.MerchantCenterDestination();
  buildCounterMerchantCenterDestination++;
  if (buildCounterMerchantCenterDestination < 3) {
    o.attributionSettings = buildAttributionSettings();
    o.currencyCode = 'foo';
    o.destinationId = 'foo';
    o.displayName = 'foo';
  }
  buildCounterMerchantCenterDestination--;
  return o;
}

void checkMerchantCenterDestination(api.MerchantCenterDestination o) {
  buildCounterMerchantCenterDestination++;
  if (buildCounterMerchantCenterDestination < 3) {
    checkAttributionSettings(o.attributionSettings!);
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMerchantCenterDestination--;
}

core.int buildCounterMethodQuota = 0;
api.MethodQuota buildMethodQuota() {
  final o = api.MethodQuota();
  buildCounterMethodQuota++;
  if (buildCounterMethodQuota < 3) {
    o.method = 'foo';
    o.quotaLimit = 'foo';
    o.quotaMinuteLimit = 'foo';
    o.quotaUsage = 'foo';
  }
  buildCounterMethodQuota--;
  return o;
}

void checkMethodQuota(api.MethodQuota o) {
  buildCounterMethodQuota++;
  if (buildCounterMethodQuota < 3) {
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaMinuteLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaUsage!,
      unittest.equals('foo'),
    );
  }
  buildCounterMethodQuota--;
}

core.int buildCounterMetrics = 0;
api.Metrics buildMetrics() {
  final o = api.Metrics();
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    o.aos = 42.0;
    o.aovMicros = 42.0;
    o.clicks = 'foo';
    o.conversionRate = 42.0;
    o.conversionValueMicros = 'foo';
    o.conversions = 42.0;
    o.ctr = 42.0;
    o.daysToShip = 42.0;
    o.impressions = 'foo';
    o.itemDaysToShip = 42.0;
    o.itemFillRate = 42.0;
    o.orderedItemSalesMicros = 'foo';
    o.orderedItems = 'foo';
    o.orders = 'foo';
    o.rejectedItems = 'foo';
    o.returnRate = 42.0;
    o.returnedItems = 'foo';
    o.returnsMicros = 'foo';
    o.shippedItemSalesMicros = 'foo';
    o.shippedItems = 'foo';
    o.shippedOrders = 'foo';
    o.unshippedItems = 42.0;
    o.unshippedOrders = 42.0;
  }
  buildCounterMetrics--;
  return o;
}

void checkMetrics(api.Metrics o) {
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    unittest.expect(
      o.aos!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.aovMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.clicks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversionRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversionValueMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ctr!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.daysToShip!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impressions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemDaysToShip!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.itemFillRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orderedItemSalesMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderedItems!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orders!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rejectedItems!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.returnedItems!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnsMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shippedItemSalesMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shippedItems!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shippedOrders!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unshippedItems!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unshippedOrders!,
      unittest.equals(42.0),
    );
  }
  buildCounterMetrics--;
}

core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> buildUnnamed104() => [
      buildMinimumOrderValueTableStoreCodeSetWithMov(),
      buildMinimumOrderValueTableStoreCodeSetWithMov(),
    ];

void checkUnnamed104(
    core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMinimumOrderValueTableStoreCodeSetWithMov(o[0]);
  checkMinimumOrderValueTableStoreCodeSetWithMov(o[1]);
}

core.int buildCounterMinimumOrderValueTable = 0;
api.MinimumOrderValueTable buildMinimumOrderValueTable() {
  final o = api.MinimumOrderValueTable();
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    o.storeCodeSetWithMovs = buildUnnamed104();
  }
  buildCounterMinimumOrderValueTable--;
  return o;
}

void checkMinimumOrderValueTable(api.MinimumOrderValueTable o) {
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    checkUnnamed104(o.storeCodeSetWithMovs!);
  }
  buildCounterMinimumOrderValueTable--;
}

core.List<core.String> buildUnnamed105() => [
      'foo',
      'foo',
    ];

void checkUnnamed105(core.List<core.String> o) {
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

core.int buildCounterMinimumOrderValueTableStoreCodeSetWithMov = 0;
api.MinimumOrderValueTableStoreCodeSetWithMov
    buildMinimumOrderValueTableStoreCodeSetWithMov() {
  final o = api.MinimumOrderValueTableStoreCodeSetWithMov();
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov++;
  if (buildCounterMinimumOrderValueTableStoreCodeSetWithMov < 3) {
    o.storeCodes = buildUnnamed105();
    o.value = buildPrice();
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
  return o;
}

void checkMinimumOrderValueTableStoreCodeSetWithMov(
    api.MinimumOrderValueTableStoreCodeSetWithMov o) {
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov++;
  if (buildCounterMinimumOrderValueTableStoreCodeSetWithMov < 3) {
    checkUnnamed105(o.storeCodes!);
    checkPrice(o.value!);
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
}

core.List<api.OrderTrackingSignalLineItemDetails> buildUnnamed106() => [
      buildOrderTrackingSignalLineItemDetails(),
      buildOrderTrackingSignalLineItemDetails(),
    ];

void checkUnnamed106(core.List<api.OrderTrackingSignalLineItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalLineItemDetails(o[0]);
  checkOrderTrackingSignalLineItemDetails(o[1]);
}

core.List<api.OrderTrackingSignalShipmentLineItemMapping> buildUnnamed107() => [
      buildOrderTrackingSignalShipmentLineItemMapping(),
      buildOrderTrackingSignalShipmentLineItemMapping(),
    ];

void checkUnnamed107(
    core.List<api.OrderTrackingSignalShipmentLineItemMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalShipmentLineItemMapping(o[0]);
  checkOrderTrackingSignalShipmentLineItemMapping(o[1]);
}

core.List<api.OrderTrackingSignalShippingInfo> buildUnnamed108() => [
      buildOrderTrackingSignalShippingInfo(),
      buildOrderTrackingSignalShippingInfo(),
    ];

void checkUnnamed108(core.List<api.OrderTrackingSignalShippingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalShippingInfo(o[0]);
  checkOrderTrackingSignalShippingInfo(o[1]);
}

core.int buildCounterOrderTrackingSignal = 0;
api.OrderTrackingSignal buildOrderTrackingSignal() {
  final o = api.OrderTrackingSignal();
  buildCounterOrderTrackingSignal++;
  if (buildCounterOrderTrackingSignal < 3) {
    o.customerShippingFee = buildPriceAmount();
    o.deliveryPostalCode = 'foo';
    o.deliveryRegionCode = 'foo';
    o.lineItems = buildUnnamed106();
    o.merchantId = 'foo';
    o.orderCreatedTime = buildDateTime();
    o.orderId = 'foo';
    o.orderTrackingSignalId = 'foo';
    o.shipmentLineItemMapping = buildUnnamed107();
    o.shippingInfo = buildUnnamed108();
  }
  buildCounterOrderTrackingSignal--;
  return o;
}

void checkOrderTrackingSignal(api.OrderTrackingSignal o) {
  buildCounterOrderTrackingSignal++;
  if (buildCounterOrderTrackingSignal < 3) {
    checkPriceAmount(o.customerShippingFee!);
    unittest.expect(
      o.deliveryPostalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryRegionCode!,
      unittest.equals('foo'),
    );
    checkUnnamed106(o.lineItems!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    checkDateTime(o.orderCreatedTime!);
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderTrackingSignalId!,
      unittest.equals('foo'),
    );
    checkUnnamed107(o.shipmentLineItemMapping!);
    checkUnnamed108(o.shippingInfo!);
  }
  buildCounterOrderTrackingSignal--;
}

core.int buildCounterOrderTrackingSignalLineItemDetails = 0;
api.OrderTrackingSignalLineItemDetails
    buildOrderTrackingSignalLineItemDetails() {
  final o = api.OrderTrackingSignalLineItemDetails();
  buildCounterOrderTrackingSignalLineItemDetails++;
  if (buildCounterOrderTrackingSignalLineItemDetails < 3) {
    o.brand = 'foo';
    o.gtin = 'foo';
    o.lineItemId = 'foo';
    o.mpn = 'foo';
    o.productDescription = 'foo';
    o.productId = 'foo';
    o.productTitle = 'foo';
    o.quantity = 'foo';
    o.sku = 'foo';
    o.upc = 'foo';
  }
  buildCounterOrderTrackingSignalLineItemDetails--;
  return o;
}

void checkOrderTrackingSignalLineItemDetails(
    api.OrderTrackingSignalLineItemDetails o) {
  buildCounterOrderTrackingSignalLineItemDetails++;
  if (buildCounterOrderTrackingSignalLineItemDetails < 3) {
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upc!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderTrackingSignalLineItemDetails--;
}

core.int buildCounterOrderTrackingSignalShipmentLineItemMapping = 0;
api.OrderTrackingSignalShipmentLineItemMapping
    buildOrderTrackingSignalShipmentLineItemMapping() {
  final o = api.OrderTrackingSignalShipmentLineItemMapping();
  buildCounterOrderTrackingSignalShipmentLineItemMapping++;
  if (buildCounterOrderTrackingSignalShipmentLineItemMapping < 3) {
    o.lineItemId = 'foo';
    o.quantity = 'foo';
    o.shipmentId = 'foo';
  }
  buildCounterOrderTrackingSignalShipmentLineItemMapping--;
  return o;
}

void checkOrderTrackingSignalShipmentLineItemMapping(
    api.OrderTrackingSignalShipmentLineItemMapping o) {
  buildCounterOrderTrackingSignalShipmentLineItemMapping++;
  if (buildCounterOrderTrackingSignalShipmentLineItemMapping < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderTrackingSignalShipmentLineItemMapping--;
}

core.int buildCounterOrderTrackingSignalShippingInfo = 0;
api.OrderTrackingSignalShippingInfo buildOrderTrackingSignalShippingInfo() {
  final o = api.OrderTrackingSignalShippingInfo();
  buildCounterOrderTrackingSignalShippingInfo++;
  if (buildCounterOrderTrackingSignalShippingInfo < 3) {
    o.actualDeliveryTime = buildDateTime();
    o.carrierName = 'foo';
    o.carrierServiceName = 'foo';
    o.earliestDeliveryPromiseTime = buildDateTime();
    o.latestDeliveryPromiseTime = buildDateTime();
    o.originPostalCode = 'foo';
    o.originRegionCode = 'foo';
    o.shipmentId = 'foo';
    o.shippedTime = buildDateTime();
    o.shippingStatus = 'foo';
    o.trackingId = 'foo';
  }
  buildCounterOrderTrackingSignalShippingInfo--;
  return o;
}

void checkOrderTrackingSignalShippingInfo(
    api.OrderTrackingSignalShippingInfo o) {
  buildCounterOrderTrackingSignalShippingInfo++;
  if (buildCounterOrderTrackingSignalShippingInfo < 3) {
    checkDateTime(o.actualDeliveryTime!);
    unittest.expect(
      o.carrierName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierServiceName!,
      unittest.equals('foo'),
    );
    checkDateTime(o.earliestDeliveryPromiseTime!);
    checkDateTime(o.latestDeliveryPromiseTime!);
    unittest.expect(
      o.originPostalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originRegionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentId!,
      unittest.equals('foo'),
    );
    checkDateTime(o.shippedTime!);
    unittest.expect(
      o.shippingStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderTrackingSignalShippingInfo--;
}

core.int buildCounterPaymentServiceProviderLinkInfo = 0;
api.PaymentServiceProviderLinkInfo buildPaymentServiceProviderLinkInfo() {
  final o = api.PaymentServiceProviderLinkInfo();
  buildCounterPaymentServiceProviderLinkInfo++;
  if (buildCounterPaymentServiceProviderLinkInfo < 3) {
    o.externalAccountBusinessCountry = 'foo';
    o.externalAccountId = 'foo';
  }
  buildCounterPaymentServiceProviderLinkInfo--;
  return o;
}

void checkPaymentServiceProviderLinkInfo(api.PaymentServiceProviderLinkInfo o) {
  buildCounterPaymentServiceProviderLinkInfo++;
  if (buildCounterPaymentServiceProviderLinkInfo < 3) {
    unittest.expect(
      o.externalAccountBusinessCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalAccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPaymentServiceProviderLinkInfo--;
}

core.int buildCounterPickupCarrierService = 0;
api.PickupCarrierService buildPickupCarrierService() {
  final o = api.PickupCarrierService();
  buildCounterPickupCarrierService++;
  if (buildCounterPickupCarrierService < 3) {
    o.carrierName = 'foo';
    o.serviceName = 'foo';
  }
  buildCounterPickupCarrierService--;
  return o;
}

void checkPickupCarrierService(api.PickupCarrierService o) {
  buildCounterPickupCarrierService++;
  if (buildCounterPickupCarrierService < 3) {
    unittest.expect(
      o.carrierName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPickupCarrierService--;
}

core.int buildCounterPickupServicesPickupService = 0;
api.PickupServicesPickupService buildPickupServicesPickupService() {
  final o = api.PickupServicesPickupService();
  buildCounterPickupServicesPickupService++;
  if (buildCounterPickupServicesPickupService < 3) {
    o.carrierName = 'foo';
    o.country = 'foo';
    o.serviceName = 'foo';
  }
  buildCounterPickupServicesPickupService--;
  return o;
}

void checkPickupServicesPickupService(api.PickupServicesPickupService o) {
  buildCounterPickupServicesPickupService++;
  if (buildCounterPickupServicesPickupService < 3) {
    unittest.expect(
      o.carrierName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPickupServicesPickupService--;
}

core.List<api.PosCustomBatchRequestEntry> buildUnnamed109() => [
      buildPosCustomBatchRequestEntry(),
      buildPosCustomBatchRequestEntry(),
    ];

void checkUnnamed109(core.List<api.PosCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchRequestEntry(o[0]);
  checkPosCustomBatchRequestEntry(o[1]);
}

core.int buildCounterPosCustomBatchRequest = 0;
api.PosCustomBatchRequest buildPosCustomBatchRequest() {
  final o = api.PosCustomBatchRequest();
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    o.entries = buildUnnamed109();
  }
  buildCounterPosCustomBatchRequest--;
  return o;
}

void checkPosCustomBatchRequest(api.PosCustomBatchRequest o) {
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    checkUnnamed109(o.entries!);
  }
  buildCounterPosCustomBatchRequest--;
}

core.int buildCounterPosCustomBatchRequestEntry = 0;
api.PosCustomBatchRequestEntry buildPosCustomBatchRequestEntry() {
  final o = api.PosCustomBatchRequestEntry();
  buildCounterPosCustomBatchRequestEntry++;
  if (buildCounterPosCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.inventory = buildPosInventory();
    o.merchantId = 'foo';
    o.method = 'foo';
    o.sale = buildPosSale();
    o.store = buildPosStore();
    o.storeCode = 'foo';
    o.targetMerchantId = 'foo';
  }
  buildCounterPosCustomBatchRequestEntry--;
  return o;
}

void checkPosCustomBatchRequestEntry(api.PosCustomBatchRequestEntry o) {
  buildCounterPosCustomBatchRequestEntry++;
  if (buildCounterPosCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkPosInventory(o.inventory!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkPosSale(o.sale!);
    checkPosStore(o.store!);
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetMerchantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosCustomBatchRequestEntry--;
}

core.List<api.PosCustomBatchResponseEntry> buildUnnamed110() => [
      buildPosCustomBatchResponseEntry(),
      buildPosCustomBatchResponseEntry(),
    ];

void checkUnnamed110(core.List<api.PosCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchResponseEntry(o[0]);
  checkPosCustomBatchResponseEntry(o[1]);
}

core.int buildCounterPosCustomBatchResponse = 0;
api.PosCustomBatchResponse buildPosCustomBatchResponse() {
  final o = api.PosCustomBatchResponse();
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    o.entries = buildUnnamed110();
    o.kind = 'foo';
  }
  buildCounterPosCustomBatchResponse--;
  return o;
}

void checkPosCustomBatchResponse(api.PosCustomBatchResponse o) {
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    checkUnnamed110(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosCustomBatchResponse--;
}

core.int buildCounterPosCustomBatchResponseEntry = 0;
api.PosCustomBatchResponseEntry buildPosCustomBatchResponseEntry() {
  final o = api.PosCustomBatchResponseEntry();
  buildCounterPosCustomBatchResponseEntry++;
  if (buildCounterPosCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.inventory = buildPosInventory();
    o.kind = 'foo';
    o.sale = buildPosSale();
    o.store = buildPosStore();
  }
  buildCounterPosCustomBatchResponseEntry--;
  return o;
}

void checkPosCustomBatchResponseEntry(api.PosCustomBatchResponseEntry o) {
  buildCounterPosCustomBatchResponseEntry++;
  if (buildCounterPosCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    checkPosInventory(o.inventory!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPosSale(o.sale!);
    checkPosStore(o.store!);
  }
  buildCounterPosCustomBatchResponseEntry--;
}

core.List<api.PosDataProvidersPosDataProvider> buildUnnamed111() => [
      buildPosDataProvidersPosDataProvider(),
      buildPosDataProvidersPosDataProvider(),
    ];

void checkUnnamed111(core.List<api.PosDataProvidersPosDataProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProvidersPosDataProvider(o[0]);
  checkPosDataProvidersPosDataProvider(o[1]);
}

core.int buildCounterPosDataProviders = 0;
api.PosDataProviders buildPosDataProviders() {
  final o = api.PosDataProviders();
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    o.country = 'foo';
    o.posDataProviders = buildUnnamed111();
  }
  buildCounterPosDataProviders--;
  return o;
}

void checkPosDataProviders(api.PosDataProviders o) {
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkUnnamed111(o.posDataProviders!);
  }
  buildCounterPosDataProviders--;
}

core.int buildCounterPosDataProvidersPosDataProvider = 0;
api.PosDataProvidersPosDataProvider buildPosDataProvidersPosDataProvider() {
  final o = api.PosDataProvidersPosDataProvider();
  buildCounterPosDataProvidersPosDataProvider++;
  if (buildCounterPosDataProvidersPosDataProvider < 3) {
    o.displayName = 'foo';
    o.fullName = 'foo';
    o.providerId = 'foo';
  }
  buildCounterPosDataProvidersPosDataProvider--;
  return o;
}

void checkPosDataProvidersPosDataProvider(
    api.PosDataProvidersPosDataProvider o) {
  buildCounterPosDataProvidersPosDataProvider++;
  if (buildCounterPosDataProvidersPosDataProvider < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosDataProvidersPosDataProvider--;
}

core.int buildCounterPosInventory = 0;
api.PosInventory buildPosInventory() {
  final o = api.PosInventory();
  buildCounterPosInventory++;
  if (buildCounterPosInventory < 3) {
    o.contentLanguage = 'foo';
    o.gtin = 'foo';
    o.itemId = 'foo';
    o.kind = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.storeCode = 'foo';
    o.targetCountry = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterPosInventory--;
  return o;
}

void checkPosInventory(api.PosInventory o) {
  buildCounterPosInventory++;
  if (buildCounterPosInventory < 3) {
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupSla!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosInventory--;
}

core.int buildCounterPosInventoryRequest = 0;
api.PosInventoryRequest buildPosInventoryRequest() {
  final o = api.PosInventoryRequest();
  buildCounterPosInventoryRequest++;
  if (buildCounterPosInventoryRequest < 3) {
    o.contentLanguage = 'foo';
    o.gtin = 'foo';
    o.itemId = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.storeCode = 'foo';
    o.targetCountry = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterPosInventoryRequest--;
  return o;
}

void checkPosInventoryRequest(api.PosInventoryRequest o) {
  buildCounterPosInventoryRequest++;
  if (buildCounterPosInventoryRequest < 3) {
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupSla!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosInventoryRequest--;
}

core.int buildCounterPosInventoryResponse = 0;
api.PosInventoryResponse buildPosInventoryResponse() {
  final o = api.PosInventoryResponse();
  buildCounterPosInventoryResponse++;
  if (buildCounterPosInventoryResponse < 3) {
    o.contentLanguage = 'foo';
    o.gtin = 'foo';
    o.itemId = 'foo';
    o.kind = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.storeCode = 'foo';
    o.targetCountry = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterPosInventoryResponse--;
  return o;
}

void checkPosInventoryResponse(api.PosInventoryResponse o) {
  buildCounterPosInventoryResponse++;
  if (buildCounterPosInventoryResponse < 3) {
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupSla!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosInventoryResponse--;
}

core.List<api.PosStore> buildUnnamed112() => [
      buildPosStore(),
      buildPosStore(),
    ];

void checkUnnamed112(core.List<api.PosStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosStore(o[0]);
  checkPosStore(o[1]);
}

core.int buildCounterPosListResponse = 0;
api.PosListResponse buildPosListResponse() {
  final o = api.PosListResponse();
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    o.kind = 'foo';
    o.resources = buildUnnamed112();
  }
  buildCounterPosListResponse--;
  return o;
}

void checkPosListResponse(api.PosListResponse o) {
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed112(o.resources!);
  }
  buildCounterPosListResponse--;
}

core.int buildCounterPosSale = 0;
api.PosSale buildPosSale() {
  final o = api.PosSale();
  buildCounterPosSale++;
  if (buildCounterPosSale < 3) {
    o.contentLanguage = 'foo';
    o.gtin = 'foo';
    o.itemId = 'foo';
    o.kind = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.saleId = 'foo';
    o.storeCode = 'foo';
    o.targetCountry = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterPosSale--;
  return o;
}

void checkPosSale(api.PosSale o) {
  buildCounterPosSale++;
  if (buildCounterPosSale < 3) {
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.saleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosSale--;
}

core.int buildCounterPosSaleRequest = 0;
api.PosSaleRequest buildPosSaleRequest() {
  final o = api.PosSaleRequest();
  buildCounterPosSaleRequest++;
  if (buildCounterPosSaleRequest < 3) {
    o.contentLanguage = 'foo';
    o.gtin = 'foo';
    o.itemId = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.saleId = 'foo';
    o.storeCode = 'foo';
    o.targetCountry = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterPosSaleRequest--;
  return o;
}

void checkPosSaleRequest(api.PosSaleRequest o) {
  buildCounterPosSaleRequest++;
  if (buildCounterPosSaleRequest < 3) {
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.saleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosSaleRequest--;
}

core.int buildCounterPosSaleResponse = 0;
api.PosSaleResponse buildPosSaleResponse() {
  final o = api.PosSaleResponse();
  buildCounterPosSaleResponse++;
  if (buildCounterPosSaleResponse < 3) {
    o.contentLanguage = 'foo';
    o.gtin = 'foo';
    o.itemId = 'foo';
    o.kind = 'foo';
    o.price = buildPrice();
    o.quantity = 'foo';
    o.saleId = 'foo';
    o.storeCode = 'foo';
    o.targetCountry = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterPosSaleResponse--;
  return o;
}

void checkPosSaleResponse(api.PosSaleResponse o) {
  buildCounterPosSaleResponse++;
  if (buildCounterPosSaleResponse < 3) {
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.quantity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.saleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosSaleResponse--;
}

core.List<core.String> buildUnnamed113() => [
      'foo',
      'foo',
    ];

void checkUnnamed113(core.List<core.String> o) {
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

core.int buildCounterPosStore = 0;
api.PosStore buildPosStore() {
  final o = api.PosStore();
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    o.gcidCategory = buildUnnamed113();
    o.kind = 'foo';
    o.matchingStatus = 'foo';
    o.matchingStatusHint = 'foo';
    o.phoneNumber = 'foo';
    o.placeId = 'foo';
    o.storeAddress = 'foo';
    o.storeCode = 'foo';
    o.storeName = 'foo';
    o.websiteUrl = 'foo';
  }
  buildCounterPosStore--;
  return o;
}

void checkPosStore(api.PosStore o) {
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    checkUnnamed113(o.gcidCategory!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchingStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchingStatusHint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosStore--;
}

core.List<api.PostalCodeRange> buildUnnamed114() => [
      buildPostalCodeRange(),
      buildPostalCodeRange(),
    ];

void checkUnnamed114(core.List<api.PostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeRange(o[0]);
  checkPostalCodeRange(o[1]);
}

core.int buildCounterPostalCodeGroup = 0;
api.PostalCodeGroup buildPostalCodeGroup() {
  final o = api.PostalCodeGroup();
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    o.country = 'foo';
    o.name = 'foo';
    o.postalCodeRanges = buildUnnamed114();
  }
  buildCounterPostalCodeGroup--;
  return o;
}

void checkPostalCodeGroup(api.PostalCodeGroup o) {
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed114(o.postalCodeRanges!);
  }
  buildCounterPostalCodeGroup--;
}

core.int buildCounterPostalCodeRange = 0;
api.PostalCodeRange buildPostalCodeRange() {
  final o = api.PostalCodeRange();
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    o.postalCodeRangeBegin = 'foo';
    o.postalCodeRangeEnd = 'foo';
  }
  buildCounterPostalCodeRange--;
  return o;
}

void checkPostalCodeRange(api.PostalCodeRange o) {
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    unittest.expect(
      o.postalCodeRangeBegin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCodeRangeEnd!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostalCodeRange--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.currency = 'foo';
    o.value = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.int buildCounterPriceAmount = 0;
api.PriceAmount buildPriceAmount() {
  final o = api.PriceAmount();
  buildCounterPriceAmount++;
  if (buildCounterPriceAmount < 3) {
    o.currency = 'foo';
    o.value = 'foo';
  }
  buildCounterPriceAmount--;
  return o;
}

void checkPriceAmount(api.PriceAmount o) {
  buildCounterPriceAmount++;
  if (buildCounterPriceAmount < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPriceAmount--;
}

core.int buildCounterPriceCompetitiveness = 0;
api.PriceCompetitiveness buildPriceCompetitiveness() {
  final o = api.PriceCompetitiveness();
  buildCounterPriceCompetitiveness++;
  if (buildCounterPriceCompetitiveness < 3) {
    o.benchmarkPriceCurrencyCode = 'foo';
    o.benchmarkPriceMicros = 'foo';
    o.countryCode = 'foo';
  }
  buildCounterPriceCompetitiveness--;
  return o;
}

void checkPriceCompetitiveness(api.PriceCompetitiveness o) {
  buildCounterPriceCompetitiveness++;
  if (buildCounterPriceCompetitiveness < 3) {
    unittest.expect(
      o.benchmarkPriceCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.benchmarkPriceMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterPriceCompetitiveness--;
}

core.int buildCounterPriceInsights = 0;
api.PriceInsights buildPriceInsights() {
  final o = api.PriceInsights();
  buildCounterPriceInsights++;
  if (buildCounterPriceInsights < 3) {
    o.effectiveness = 'foo';
    o.predictedClicksChangeFraction = 42.0;
    o.predictedConversionsChangeFraction = 42.0;
    o.predictedGrossProfitChangeFraction = 42.0;
    o.predictedImpressionsChangeFraction = 42.0;
    o.predictedMonthlyGrossProfitChangeCurrencyCode = 'foo';
    o.predictedMonthlyGrossProfitChangeMicros = 'foo';
    o.suggestedPriceCurrencyCode = 'foo';
    o.suggestedPriceMicros = 'foo';
  }
  buildCounterPriceInsights--;
  return o;
}

void checkPriceInsights(api.PriceInsights o) {
  buildCounterPriceInsights++;
  if (buildCounterPriceInsights < 3) {
    unittest.expect(
      o.effectiveness!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predictedClicksChangeFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictedConversionsChangeFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictedGrossProfitChangeFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictedImpressionsChangeFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictedMonthlyGrossProfitChangeCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predictedMonthlyGrossProfitChangeMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.suggestedPriceCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.suggestedPriceMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterPriceInsights--;
}

core.List<core.String> buildUnnamed115() => [
      'foo',
      'foo',
    ];

void checkUnnamed115(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed116() => [
      'foo',
      'foo',
    ];

void checkUnnamed116(core.List<core.String> o) {
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

core.List<api.ProductCertification> buildUnnamed117() => [
      buildProductCertification(),
      buildProductCertification(),
    ];

void checkUnnamed117(core.List<api.ProductCertification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCertification(o[0]);
  checkProductCertification(o[1]);
}

core.List<api.CloudExportAdditionalProperties> buildUnnamed118() => [
      buildCloudExportAdditionalProperties(),
      buildCloudExportAdditionalProperties(),
    ];

void checkUnnamed118(core.List<api.CloudExportAdditionalProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudExportAdditionalProperties(o[0]);
  checkCloudExportAdditionalProperties(o[1]);
}

core.List<api.CustomAttribute> buildUnnamed119() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed119(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.List<core.String> buildUnnamed120() => [
      'foo',
      'foo',
    ];

void checkUnnamed120(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed121() => [
      'foo',
      'foo',
    ];

void checkUnnamed121(core.List<core.String> o) {
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

core.List<api.FreeShippingThreshold> buildUnnamed122() => [
      buildFreeShippingThreshold(),
      buildFreeShippingThreshold(),
    ];

void checkUnnamed122(core.List<api.FreeShippingThreshold> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeShippingThreshold(o[0]);
  checkFreeShippingThreshold(o[1]);
}

core.List<core.String> buildUnnamed123() => [
      'foo',
      'foo',
    ];

void checkUnnamed123(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed124() => [
      'foo',
      'foo',
    ];

void checkUnnamed124(core.List<core.String> o) {
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

core.List<api.LoyaltyProgram> buildUnnamed125() => [
      buildLoyaltyProgram(),
      buildLoyaltyProgram(),
    ];

void checkUnnamed125(core.List<api.LoyaltyProgram> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyProgram(o[0]);
  checkLoyaltyProgram(o[1]);
}

core.List<api.ProductProductDetail> buildUnnamed126() => [
      buildProductProductDetail(),
      buildProductProductDetail(),
    ];

void checkUnnamed126(core.List<api.ProductProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductProductDetail(o[0]);
  checkProductProductDetail(o[1]);
}

core.List<core.String> buildUnnamed127() => [
      'foo',
      'foo',
    ];

void checkUnnamed127(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed128() => [
      'foo',
      'foo',
    ];

void checkUnnamed128(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed129() => [
      'foo',
      'foo',
    ];

void checkUnnamed129(core.List<core.String> o) {
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

core.List<api.ProductShipping> buildUnnamed130() => [
      buildProductShipping(),
      buildProductShipping(),
    ];

void checkUnnamed130(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0]);
  checkProductShipping(o[1]);
}

core.List<core.String> buildUnnamed131() => [
      'foo',
      'foo',
    ];

void checkUnnamed131(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed132() => [
      'foo',
      'foo',
    ];

void checkUnnamed132(core.List<core.String> o) {
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

core.List<api.ProductSustainabilityIncentive> buildUnnamed133() => [
      buildProductSustainabilityIncentive(),
      buildProductSustainabilityIncentive(),
    ];

void checkUnnamed133(core.List<api.ProductSustainabilityIncentive> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductSustainabilityIncentive(o[0]);
  checkProductSustainabilityIncentive(o[1]);
}

core.List<api.ProductTax> buildUnnamed134() => [
      buildProductTax(),
      buildProductTax(),
    ];

void checkUnnamed134(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0]);
  checkProductTax(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed115();
    o.additionalSizeType = 'foo';
    o.adsGrouping = 'foo';
    o.adsLabels = buildUnnamed116();
    o.adsRedirect = 'foo';
    o.adult = true;
    o.ageGroup = 'foo';
    o.autoPricingMinPrice = buildPrice();
    o.availability = 'foo';
    o.availabilityDate = 'foo';
    o.brand = 'foo';
    o.canonicalLink = 'foo';
    o.certifications = buildUnnamed117();
    o.channel = 'foo';
    o.cloudExportAdditionalProperties = buildUnnamed118();
    o.color = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.costOfGoodsSold = buildPrice();
    o.customAttributes = buildUnnamed119();
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.description = 'foo';
    o.disclosureDate = 'foo';
    o.displayAdsId = 'foo';
    o.displayAdsLink = 'foo';
    o.displayAdsSimilarIds = buildUnnamed120();
    o.displayAdsTitle = 'foo';
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = 'foo';
    o.excludedDestinations = buildUnnamed121();
    o.expirationDate = 'foo';
    o.externalSellerId = 'foo';
    o.feedLabel = 'foo';
    o.freeShippingThreshold = buildUnnamed122();
    o.gender = 'foo';
    o.googleProductCategory = 'foo';
    o.gtin = 'foo';
    o.id = 'foo';
    o.identifierExists = true;
    o.imageLink = 'foo';
    o.includedDestinations = buildUnnamed123();
    o.installment = buildInstallment();
    o.isBundle = true;
    o.itemGroupId = 'foo';
    o.kind = 'foo';
    o.lifestyleImageLinks = buildUnnamed124();
    o.link = 'foo';
    o.linkTemplate = 'foo';
    o.loyaltyProgram = buildLoyaltyProgram();
    o.loyaltyPrograms = buildUnnamed125();
    o.material = 'foo';
    o.maxEnergyEfficiencyClass = 'foo';
    o.maxHandlingTime = 'foo';
    o.minEnergyEfficiencyClass = 'foo';
    o.minHandlingTime = 'foo';
    o.mobileLink = 'foo';
    o.mobileLinkTemplate = 'foo';
    o.mpn = 'foo';
    o.multipack = 'foo';
    o.offerId = 'foo';
    o.pattern = 'foo';
    o.pause = 'foo';
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.productDetails = buildUnnamed126();
    o.productHeight = buildProductDimension();
    o.productHighlights = buildUnnamed127();
    o.productLength = buildProductDimension();
    o.productTypes = buildUnnamed128();
    o.productWeight = buildProductWeight();
    o.productWidth = buildProductDimension();
    o.promotionIds = buildUnnamed129();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = 'foo';
    o.sellOnGoogleQuantity = 'foo';
    o.shipping = buildUnnamed130();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = 'foo';
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.shoppingAdsExcludedCountries = buildUnnamed131();
    o.sizeSystem = 'foo';
    o.sizeType = 'foo';
    o.sizes = buildUnnamed132();
    o.source = 'foo';
    o.structuredDescription = buildProductStructuredDescription();
    o.structuredTitle = buildProductStructuredTitle();
    o.subscriptionCost = buildProductSubscriptionCost();
    o.sustainabilityIncentives = buildUnnamed133();
    o.targetCountry = 'foo';
    o.taxCategory = 'foo';
    o.taxes = buildUnnamed134();
    o.title = 'foo';
    o.transitTimeLabel = 'foo';
    o.unitPricingBaseMeasure = buildProductUnitPricingBaseMeasure();
    o.unitPricingMeasure = buildProductUnitPricingMeasure();
    o.virtualModelLink = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed115(o.additionalImageLinks!);
    unittest.expect(
      o.additionalSizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adsGrouping!,
      unittest.equals('foo'),
    );
    checkUnnamed116(o.adsLabels!);
    unittest.expect(
      o.adsRedirect!,
      unittest.equals('foo'),
    );
    unittest.expect(o.adult!, unittest.isTrue);
    unittest.expect(
      o.ageGroup!,
      unittest.equals('foo'),
    );
    checkPrice(o.autoPricingMinPrice!);
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canonicalLink!,
      unittest.equals('foo'),
    );
    checkUnnamed117(o.certifications!);
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    checkUnnamed118(o.cloudExportAdditionalProperties!);
    unittest.expect(
      o.color!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    checkPrice(o.costOfGoodsSold!);
    checkUnnamed119(o.customAttributes!);
    unittest.expect(
      o.customLabel0!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disclosureDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayAdsId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayAdsLink!,
      unittest.equals('foo'),
    );
    checkUnnamed120(o.displayAdsSimilarIds!);
    unittest.expect(
      o.displayAdsTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayAdsValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.energyEfficiencyClass!,
      unittest.equals('foo'),
    );
    checkUnnamed121(o.excludedDestinations!);
    unittest.expect(
      o.expirationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalSellerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.feedLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed122(o.freeShippingThreshold!);
    unittest.expect(
      o.gender!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleProductCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.identifierExists!, unittest.isTrue);
    unittest.expect(
      o.imageLink!,
      unittest.equals('foo'),
    );
    checkUnnamed123(o.includedDestinations!);
    checkInstallment(o.installment!);
    unittest.expect(o.isBundle!, unittest.isTrue);
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed124(o.lifestyleImageLinks!);
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkTemplate!,
      unittest.equals('foo'),
    );
    checkLoyaltyProgram(o.loyaltyProgram!);
    checkUnnamed125(o.loyaltyPrograms!);
    unittest.expect(
      o.material!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxEnergyEfficiencyClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxHandlingTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minEnergyEfficiencyClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minHandlingTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mobileLinkTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.multipack!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pattern!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupSla!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    checkUnnamed126(o.productDetails!);
    checkProductDimension(o.productHeight!);
    checkUnnamed127(o.productHighlights!);
    checkProductDimension(o.productLength!);
    checkUnnamed128(o.productTypes!);
    checkProductWeight(o.productWeight!);
    checkProductDimension(o.productWidth!);
    checkUnnamed129(o.promotionIds!);
    checkPrice(o.salePrice!);
    unittest.expect(
      o.salePriceEffectiveDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sellOnGoogleQuantity!,
      unittest.equals('foo'),
    );
    checkUnnamed130(o.shipping!);
    checkProductShippingDimension(o.shippingHeight!);
    unittest.expect(
      o.shippingLabel!,
      unittest.equals('foo'),
    );
    checkProductShippingDimension(o.shippingLength!);
    checkProductShippingWeight(o.shippingWeight!);
    checkProductShippingDimension(o.shippingWidth!);
    checkUnnamed131(o.shoppingAdsExcludedCountries!);
    unittest.expect(
      o.sizeSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeType!,
      unittest.equals('foo'),
    );
    checkUnnamed132(o.sizes!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    checkProductStructuredDescription(o.structuredDescription!);
    checkProductStructuredTitle(o.structuredTitle!);
    checkProductSubscriptionCost(o.subscriptionCost!);
    checkUnnamed133(o.sustainabilityIncentives!);
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taxCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed134(o.taxes!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transitTimeLabel!,
      unittest.equals('foo'),
    );
    checkProductUnitPricingBaseMeasure(o.unitPricingBaseMeasure!);
    checkProductUnitPricingMeasure(o.unitPricingMeasure!);
    unittest.expect(
      o.virtualModelLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.int buildCounterProductCertification = 0;
api.ProductCertification buildProductCertification() {
  final o = api.ProductCertification();
  buildCounterProductCertification++;
  if (buildCounterProductCertification < 3) {
    o.certificationAuthority = 'foo';
    o.certificationCode = 'foo';
    o.certificationName = 'foo';
    o.certificationValue = 'foo';
  }
  buildCounterProductCertification--;
  return o;
}

void checkProductCertification(api.ProductCertification o) {
  buildCounterProductCertification++;
  if (buildCounterProductCertification < 3) {
    unittest.expect(
      o.certificationAuthority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificationCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificationValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductCertification--;
}

core.List<core.String> buildUnnamed135() => [
      'foo',
      'foo',
    ];

void checkUnnamed135(core.List<core.String> o) {
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

core.int buildCounterProductCluster = 0;
api.ProductCluster buildProductCluster() {
  final o = api.ProductCluster();
  buildCounterProductCluster++;
  if (buildCounterProductCluster < 3) {
    o.brand = 'foo';
    o.brandInventoryStatus = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.inventoryStatus = 'foo';
    o.title = 'foo';
    o.variantGtins = buildUnnamed135();
  }
  buildCounterProductCluster--;
  return o;
}

void checkProductCluster(api.ProductCluster o) {
  buildCounterProductCluster++;
  if (buildCounterProductCluster < 3) {
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brandInventoryStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inventoryStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed135(o.variantGtins!);
  }
  buildCounterProductCluster--;
}

core.List<api.ProductDeliveryTimeAreaDeliveryTime> buildUnnamed136() => [
      buildProductDeliveryTimeAreaDeliveryTime(),
      buildProductDeliveryTimeAreaDeliveryTime(),
    ];

void checkUnnamed136(core.List<api.ProductDeliveryTimeAreaDeliveryTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDeliveryTimeAreaDeliveryTime(o[0]);
  checkProductDeliveryTimeAreaDeliveryTime(o[1]);
}

core.int buildCounterProductDeliveryTime = 0;
api.ProductDeliveryTime buildProductDeliveryTime() {
  final o = api.ProductDeliveryTime();
  buildCounterProductDeliveryTime++;
  if (buildCounterProductDeliveryTime < 3) {
    o.areaDeliveryTimes = buildUnnamed136();
    o.productId = buildProductId();
  }
  buildCounterProductDeliveryTime--;
  return o;
}

void checkProductDeliveryTime(api.ProductDeliveryTime o) {
  buildCounterProductDeliveryTime++;
  if (buildCounterProductDeliveryTime < 3) {
    checkUnnamed136(o.areaDeliveryTimes!);
    checkProductId(o.productId!);
  }
  buildCounterProductDeliveryTime--;
}

core.int buildCounterProductDeliveryTimeAreaDeliveryTime = 0;
api.ProductDeliveryTimeAreaDeliveryTime
    buildProductDeliveryTimeAreaDeliveryTime() {
  final o = api.ProductDeliveryTimeAreaDeliveryTime();
  buildCounterProductDeliveryTimeAreaDeliveryTime++;
  if (buildCounterProductDeliveryTimeAreaDeliveryTime < 3) {
    o.deliveryArea = buildDeliveryArea();
    o.deliveryTime = buildProductDeliveryTimeAreaDeliveryTimeDeliveryTime();
  }
  buildCounterProductDeliveryTimeAreaDeliveryTime--;
  return o;
}

void checkProductDeliveryTimeAreaDeliveryTime(
    api.ProductDeliveryTimeAreaDeliveryTime o) {
  buildCounterProductDeliveryTimeAreaDeliveryTime++;
  if (buildCounterProductDeliveryTimeAreaDeliveryTime < 3) {
    checkDeliveryArea(o.deliveryArea!);
    checkProductDeliveryTimeAreaDeliveryTimeDeliveryTime(o.deliveryTime!);
  }
  buildCounterProductDeliveryTimeAreaDeliveryTime--;
}

core.int buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime = 0;
api.ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
    buildProductDeliveryTimeAreaDeliveryTimeDeliveryTime() {
  final o = api.ProductDeliveryTimeAreaDeliveryTimeDeliveryTime();
  buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime++;
  if (buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime < 3) {
    o.maxHandlingTimeDays = 42;
    o.maxTransitTimeDays = 42;
    o.minHandlingTimeDays = 42;
    o.minTransitTimeDays = 42;
  }
  buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime--;
  return o;
}

void checkProductDeliveryTimeAreaDeliveryTimeDeliveryTime(
    api.ProductDeliveryTimeAreaDeliveryTimeDeliveryTime o) {
  buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime++;
  if (buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime < 3) {
    unittest.expect(
      o.maxHandlingTimeDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxTransitTimeDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minHandlingTimeDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minTransitTimeDays!,
      unittest.equals(42),
    );
  }
  buildCounterProductDeliveryTimeAreaDeliveryTimeDeliveryTime--;
}

core.int buildCounterProductDimension = 0;
api.ProductDimension buildProductDimension() {
  final o = api.ProductDimension();
  buildCounterProductDimension++;
  if (buildCounterProductDimension < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductDimension--;
  return o;
}

void checkProductDimension(api.ProductDimension o) {
  buildCounterProductDimension++;
  if (buildCounterProductDimension < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterProductDimension--;
}

core.int buildCounterProductId = 0;
api.ProductId buildProductId() {
  final o = api.ProductId();
  buildCounterProductId++;
  if (buildCounterProductId < 3) {
    o.productId = 'foo';
  }
  buildCounterProductId--;
  return o;
}

void checkProductId(api.ProductId o) {
  buildCounterProductId++;
  if (buildCounterProductId < 3) {
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductId--;
}

core.List<api.Action> buildUnnamed137() => [
      buildAction(),
      buildAction(),
    ];

void checkUnnamed137(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.int buildCounterProductIssue = 0;
api.ProductIssue buildProductIssue() {
  final o = api.ProductIssue();
  buildCounterProductIssue++;
  if (buildCounterProductIssue < 3) {
    o.actions = buildUnnamed137();
    o.impact = buildProductIssueImpact();
    o.prerenderedContent = 'foo';
    o.title = 'foo';
  }
  buildCounterProductIssue--;
  return o;
}

void checkProductIssue(api.ProductIssue o) {
  buildCounterProductIssue++;
  if (buildCounterProductIssue < 3) {
    checkUnnamed137(o.actions!);
    checkProductIssueImpact(o.impact!);
    unittest.expect(
      o.prerenderedContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductIssue--;
}

core.List<api.Breakdown> buildUnnamed138() => [
      buildBreakdown(),
      buildBreakdown(),
    ];

void checkUnnamed138(core.List<api.Breakdown> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdown(o[0]);
  checkBreakdown(o[1]);
}

core.int buildCounterProductIssueImpact = 0;
api.ProductIssueImpact buildProductIssueImpact() {
  final o = api.ProductIssueImpact();
  buildCounterProductIssueImpact++;
  if (buildCounterProductIssueImpact < 3) {
    o.breakdowns = buildUnnamed138();
    o.message = 'foo';
    o.severity = 'foo';
  }
  buildCounterProductIssueImpact--;
  return o;
}

void checkProductIssueImpact(api.ProductIssueImpact o) {
  buildCounterProductIssueImpact++;
  if (buildCounterProductIssueImpact < 3) {
    checkUnnamed138(o.breakdowns!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductIssueImpact--;
}

core.int buildCounterProductProductDetail = 0;
api.ProductProductDetail buildProductProductDetail() {
  final o = api.ProductProductDetail();
  buildCounterProductProductDetail++;
  if (buildCounterProductProductDetail < 3) {
    o.attributeName = 'foo';
    o.attributeValue = 'foo';
    o.sectionName = 'foo';
  }
  buildCounterProductProductDetail--;
  return o;
}

void checkProductProductDetail(api.ProductProductDetail o) {
  buildCounterProductProductDetail++;
  if (buildCounterProductProductDetail < 3) {
    unittest.expect(
      o.attributeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attributeValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sectionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductProductDetail--;
}

core.int buildCounterProductShipping = 0;
api.ProductShipping buildProductShipping() {
  final o = api.ProductShipping();
  buildCounterProductShipping++;
  if (buildCounterProductShipping < 3) {
    o.country = 'foo';
    o.locationGroupName = 'foo';
    o.locationId = 'foo';
    o.maxHandlingTime = 'foo';
    o.maxTransitTime = 'foo';
    o.minHandlingTime = 'foo';
    o.minTransitTime = 'foo';
    o.postalCode = 'foo';
    o.price = buildPrice();
    o.region = 'foo';
    o.service = 'foo';
  }
  buildCounterProductShipping--;
  return o;
}

void checkProductShipping(api.ProductShipping o) {
  buildCounterProductShipping++;
  if (buildCounterProductShipping < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationGroupName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxHandlingTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxTransitTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minHandlingTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minTransitTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductShipping--;
}

core.int buildCounterProductShippingDimension = 0;
api.ProductShippingDimension buildProductShippingDimension() {
  final o = api.ProductShippingDimension();
  buildCounterProductShippingDimension++;
  if (buildCounterProductShippingDimension < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductShippingDimension--;
  return o;
}

void checkProductShippingDimension(api.ProductShippingDimension o) {
  buildCounterProductShippingDimension++;
  if (buildCounterProductShippingDimension < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterProductShippingDimension--;
}

core.int buildCounterProductShippingWeight = 0;
api.ProductShippingWeight buildProductShippingWeight() {
  final o = api.ProductShippingWeight();
  buildCounterProductShippingWeight++;
  if (buildCounterProductShippingWeight < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductShippingWeight--;
  return o;
}

void checkProductShippingWeight(api.ProductShippingWeight o) {
  buildCounterProductShippingWeight++;
  if (buildCounterProductShippingWeight < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterProductShippingWeight--;
}

core.List<api.ProductStatusDestinationStatus> buildUnnamed139() => [
      buildProductStatusDestinationStatus(),
      buildProductStatusDestinationStatus(),
    ];

void checkUnnamed139(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(o[0]);
  checkProductStatusDestinationStatus(o[1]);
}

core.List<api.ProductStatusItemLevelIssue> buildUnnamed140() => [
      buildProductStatusItemLevelIssue(),
      buildProductStatusItemLevelIssue(),
    ];

void checkUnnamed140(core.List<api.ProductStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusItemLevelIssue(o[0]);
  checkProductStatusItemLevelIssue(o[1]);
}

core.int buildCounterProductStatus = 0;
api.ProductStatus buildProductStatus() {
  final o = api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed139();
    o.googleExpirationDate = 'foo';
    o.itemLevelIssues = buildUnnamed140();
    o.kind = 'foo';
    o.lastUpdateDate = 'foo';
    o.link = 'foo';
    o.productId = 'foo';
    o.title = 'foo';
  }
  buildCounterProductStatus--;
  return o;
}

void checkProductStatus(api.ProductStatus o) {
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    checkUnnamed139(o.destinationStatuses!);
    unittest.expect(
      o.googleExpirationDate!,
      unittest.equals('foo'),
    );
    checkUnnamed140(o.itemLevelIssues!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductStatus--;
}

core.List<core.String> buildUnnamed141() => [
      'foo',
      'foo',
    ];

void checkUnnamed141(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed142() => [
      'foo',
      'foo',
    ];

void checkUnnamed142(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed143() => [
      'foo',
      'foo',
    ];

void checkUnnamed143(core.List<core.String> o) {
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

core.int buildCounterProductStatusDestinationStatus = 0;
api.ProductStatusDestinationStatus buildProductStatusDestinationStatus() {
  final o = api.ProductStatusDestinationStatus();
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed141();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed142();
    o.pendingCountries = buildUnnamed143();
    o.status = 'foo';
  }
  buildCounterProductStatusDestinationStatus--;
  return o;
}

void checkProductStatusDestinationStatus(api.ProductStatusDestinationStatus o) {
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    checkUnnamed141(o.approvedCountries!);
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkUnnamed142(o.disapprovedCountries!);
    checkUnnamed143(o.pendingCountries!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductStatusDestinationStatus--;
}

core.List<core.String> buildUnnamed144() => [
      'foo',
      'foo',
    ];

void checkUnnamed144(core.List<core.String> o) {
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

core.int buildCounterProductStatusItemLevelIssue = 0;
api.ProductStatusItemLevelIssue buildProductStatusItemLevelIssue() {
  final o = api.ProductStatusItemLevelIssue();
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed144();
    o.attributeName = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.destination = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.resolution = 'foo';
    o.servability = 'foo';
  }
  buildCounterProductStatusItemLevelIssue--;
  return o;
}

void checkProductStatusItemLevelIssue(api.ProductStatusItemLevelIssue o) {
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    checkUnnamed144(o.applicableCountries!);
    unittest.expect(
      o.attributeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servability!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductStatusItemLevelIssue--;
}

core.int buildCounterProductStructuredDescription = 0;
api.ProductStructuredDescription buildProductStructuredDescription() {
  final o = api.ProductStructuredDescription();
  buildCounterProductStructuredDescription++;
  if (buildCounterProductStructuredDescription < 3) {
    o.content = 'foo';
    o.digitalSourceType = 'foo';
  }
  buildCounterProductStructuredDescription--;
  return o;
}

void checkProductStructuredDescription(api.ProductStructuredDescription o) {
  buildCounterProductStructuredDescription++;
  if (buildCounterProductStructuredDescription < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.digitalSourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductStructuredDescription--;
}

core.int buildCounterProductStructuredTitle = 0;
api.ProductStructuredTitle buildProductStructuredTitle() {
  final o = api.ProductStructuredTitle();
  buildCounterProductStructuredTitle++;
  if (buildCounterProductStructuredTitle < 3) {
    o.content = 'foo';
    o.digitalSourceType = 'foo';
  }
  buildCounterProductStructuredTitle--;
  return o;
}

void checkProductStructuredTitle(api.ProductStructuredTitle o) {
  buildCounterProductStructuredTitle++;
  if (buildCounterProductStructuredTitle < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.digitalSourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductStructuredTitle--;
}

core.int buildCounterProductSubscriptionCost = 0;
api.ProductSubscriptionCost buildProductSubscriptionCost() {
  final o = api.ProductSubscriptionCost();
  buildCounterProductSubscriptionCost++;
  if (buildCounterProductSubscriptionCost < 3) {
    o.amount = buildPrice();
    o.period = 'foo';
    o.periodLength = 'foo';
  }
  buildCounterProductSubscriptionCost--;
  return o;
}

void checkProductSubscriptionCost(api.ProductSubscriptionCost o) {
  buildCounterProductSubscriptionCost++;
  if (buildCounterProductSubscriptionCost < 3) {
    checkPrice(o.amount!);
    unittest.expect(
      o.period!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.periodLength!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductSubscriptionCost--;
}

core.int buildCounterProductSustainabilityIncentive = 0;
api.ProductSustainabilityIncentive buildProductSustainabilityIncentive() {
  final o = api.ProductSustainabilityIncentive();
  buildCounterProductSustainabilityIncentive++;
  if (buildCounterProductSustainabilityIncentive < 3) {
    o.amount = buildPrice();
    o.percentage = 42.0;
    o.type = 'foo';
  }
  buildCounterProductSustainabilityIncentive--;
  return o;
}

void checkProductSustainabilityIncentive(api.ProductSustainabilityIncentive o) {
  buildCounterProductSustainabilityIncentive++;
  if (buildCounterProductSustainabilityIncentive < 3) {
    checkPrice(o.amount!);
    unittest.expect(
      o.percentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductSustainabilityIncentive--;
}

core.int buildCounterProductTax = 0;
api.ProductTax buildProductTax() {
  final o = api.ProductTax();
  buildCounterProductTax++;
  if (buildCounterProductTax < 3) {
    o.country = 'foo';
    o.locationId = 'foo';
    o.postalCode = 'foo';
    o.rate = 42.0;
    o.region = 'foo';
    o.taxShip = true;
  }
  buildCounterProductTax--;
  return o;
}

void checkProductTax(api.ProductTax o) {
  buildCounterProductTax++;
  if (buildCounterProductTax < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(o.taxShip!, unittest.isTrue);
  }
  buildCounterProductTax--;
}

core.int buildCounterProductUnitPricingBaseMeasure = 0;
api.ProductUnitPricingBaseMeasure buildProductUnitPricingBaseMeasure() {
  final o = api.ProductUnitPricingBaseMeasure();
  buildCounterProductUnitPricingBaseMeasure++;
  if (buildCounterProductUnitPricingBaseMeasure < 3) {
    o.unit = 'foo';
    o.value = 'foo';
  }
  buildCounterProductUnitPricingBaseMeasure--;
  return o;
}

void checkProductUnitPricingBaseMeasure(api.ProductUnitPricingBaseMeasure o) {
  buildCounterProductUnitPricingBaseMeasure++;
  if (buildCounterProductUnitPricingBaseMeasure < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductUnitPricingBaseMeasure--;
}

core.int buildCounterProductUnitPricingMeasure = 0;
api.ProductUnitPricingMeasure buildProductUnitPricingMeasure() {
  final o = api.ProductUnitPricingMeasure();
  buildCounterProductUnitPricingMeasure++;
  if (buildCounterProductUnitPricingMeasure < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductUnitPricingMeasure--;
  return o;
}

void checkProductUnitPricingMeasure(api.ProductUnitPricingMeasure o) {
  buildCounterProductUnitPricingMeasure++;
  if (buildCounterProductUnitPricingMeasure < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterProductUnitPricingMeasure--;
}

core.List<core.String> buildUnnamed145() => [
      'foo',
      'foo',
    ];

void checkUnnamed145(core.List<core.String> o) {
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

core.List<api.ProductViewItemIssue> buildUnnamed146() => [
      buildProductViewItemIssue(),
      buildProductViewItemIssue(),
    ];

void checkUnnamed146(core.List<api.ProductViewItemIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductViewItemIssue(o[0]);
  checkProductViewItemIssue(o[1]);
}

core.int buildCounterProductView = 0;
api.ProductView buildProductView() {
  final o = api.ProductView();
  buildCounterProductView++;
  if (buildCounterProductView < 3) {
    o.aggregatedDestinationStatus = 'foo';
    o.availability = 'foo';
    o.brand = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.channel = 'foo';
    o.clickPotential = 'foo';
    o.clickPotentialRank = 'foo';
    o.condition = 'foo';
    o.creationTime = 'foo';
    o.currencyCode = 'foo';
    o.expirationDate = buildDate();
    o.gtin = buildUnnamed145();
    o.id = 'foo';
    o.itemGroupId = 'foo';
    o.itemIssues = buildUnnamed146();
    o.languageCode = 'foo';
    o.offerId = 'foo';
    o.priceMicros = 'foo';
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.shippingLabel = 'foo';
    o.title = 'foo';
  }
  buildCounterProductView--;
  return o;
}

void checkProductView(api.ProductView o) {
  buildCounterProductView++;
  if (buildCounterProductView < 3) {
    unittest.expect(
      o.aggregatedDestinationStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickPotential!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clickPotentialRank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    checkDate(o.expirationDate!);
    checkUnnamed145(o.gtin!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    checkUnnamed146(o.itemIssues!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priceMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shippingLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductView--;
}

core.int buildCounterProductViewItemIssue = 0;
api.ProductViewItemIssue buildProductViewItemIssue() {
  final o = api.ProductViewItemIssue();
  buildCounterProductViewItemIssue++;
  if (buildCounterProductViewItemIssue < 3) {
    o.issueType = buildProductViewItemIssueItemIssueType();
    o.resolution = 'foo';
    o.severity = buildProductViewItemIssueItemIssueSeverity();
  }
  buildCounterProductViewItemIssue--;
  return o;
}

void checkProductViewItemIssue(api.ProductViewItemIssue o) {
  buildCounterProductViewItemIssue++;
  if (buildCounterProductViewItemIssue < 3) {
    checkProductViewItemIssueItemIssueType(o.issueType!);
    unittest.expect(
      o.resolution!,
      unittest.equals('foo'),
    );
    checkProductViewItemIssueItemIssueSeverity(o.severity!);
  }
  buildCounterProductViewItemIssue--;
}

core.List<core.String> buildUnnamed147() => [
      'foo',
      'foo',
    ];

void checkUnnamed147(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed148() => [
      'foo',
      'foo',
    ];

void checkUnnamed148(core.List<core.String> o) {
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

core.int buildCounterProductViewItemIssueIssueSeverityPerDestination = 0;
api.ProductViewItemIssueIssueSeverityPerDestination
    buildProductViewItemIssueIssueSeverityPerDestination() {
  final o = api.ProductViewItemIssueIssueSeverityPerDestination();
  buildCounterProductViewItemIssueIssueSeverityPerDestination++;
  if (buildCounterProductViewItemIssueIssueSeverityPerDestination < 3) {
    o.demotedCountries = buildUnnamed147();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed148();
  }
  buildCounterProductViewItemIssueIssueSeverityPerDestination--;
  return o;
}

void checkProductViewItemIssueIssueSeverityPerDestination(
    api.ProductViewItemIssueIssueSeverityPerDestination o) {
  buildCounterProductViewItemIssueIssueSeverityPerDestination++;
  if (buildCounterProductViewItemIssueIssueSeverityPerDestination < 3) {
    checkUnnamed147(o.demotedCountries!);
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkUnnamed148(o.disapprovedCountries!);
  }
  buildCounterProductViewItemIssueIssueSeverityPerDestination--;
}

core.List<api.ProductViewItemIssueIssueSeverityPerDestination>
    buildUnnamed149() => [
          buildProductViewItemIssueIssueSeverityPerDestination(),
          buildProductViewItemIssueIssueSeverityPerDestination(),
        ];

void checkUnnamed149(
    core.List<api.ProductViewItemIssueIssueSeverityPerDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductViewItemIssueIssueSeverityPerDestination(o[0]);
  checkProductViewItemIssueIssueSeverityPerDestination(o[1]);
}

core.int buildCounterProductViewItemIssueItemIssueSeverity = 0;
api.ProductViewItemIssueItemIssueSeverity
    buildProductViewItemIssueItemIssueSeverity() {
  final o = api.ProductViewItemIssueItemIssueSeverity();
  buildCounterProductViewItemIssueItemIssueSeverity++;
  if (buildCounterProductViewItemIssueItemIssueSeverity < 3) {
    o.aggregatedSeverity = 'foo';
    o.severityPerDestination = buildUnnamed149();
  }
  buildCounterProductViewItemIssueItemIssueSeverity--;
  return o;
}

void checkProductViewItemIssueItemIssueSeverity(
    api.ProductViewItemIssueItemIssueSeverity o) {
  buildCounterProductViewItemIssueItemIssueSeverity++;
  if (buildCounterProductViewItemIssueItemIssueSeverity < 3) {
    unittest.expect(
      o.aggregatedSeverity!,
      unittest.equals('foo'),
    );
    checkUnnamed149(o.severityPerDestination!);
  }
  buildCounterProductViewItemIssueItemIssueSeverity--;
}

core.int buildCounterProductViewItemIssueItemIssueType = 0;
api.ProductViewItemIssueItemIssueType buildProductViewItemIssueItemIssueType() {
  final o = api.ProductViewItemIssueItemIssueType();
  buildCounterProductViewItemIssueItemIssueType++;
  if (buildCounterProductViewItemIssueItemIssueType < 3) {
    o.canonicalAttribute = 'foo';
    o.code = 'foo';
  }
  buildCounterProductViewItemIssueItemIssueType--;
  return o;
}

void checkProductViewItemIssueItemIssueType(
    api.ProductViewItemIssueItemIssueType o) {
  buildCounterProductViewItemIssueItemIssueType++;
  if (buildCounterProductViewItemIssueItemIssueType < 3) {
    unittest.expect(
      o.canonicalAttribute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductViewItemIssueItemIssueType--;
}

core.int buildCounterProductWeight = 0;
api.ProductWeight buildProductWeight() {
  final o = api.ProductWeight();
  buildCounterProductWeight++;
  if (buildCounterProductWeight < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductWeight--;
  return o;
}

void checkProductWeight(api.ProductWeight o) {
  buildCounterProductWeight++;
  if (buildCounterProductWeight < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterProductWeight--;
}

core.List<api.ProductsCustomBatchRequestEntry> buildUnnamed150() => [
      buildProductsCustomBatchRequestEntry(),
      buildProductsCustomBatchRequestEntry(),
    ];

void checkUnnamed150(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(o[0]);
  checkProductsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductsCustomBatchRequest = 0;
api.ProductsCustomBatchRequest buildProductsCustomBatchRequest() {
  final o = api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed150();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

void checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed150(o.entries!);
  }
  buildCounterProductsCustomBatchRequest--;
}

core.int buildCounterProductsCustomBatchRequestEntry = 0;
api.ProductsCustomBatchRequestEntry buildProductsCustomBatchRequestEntry() {
  final o = api.ProductsCustomBatchRequestEntry();
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.feedId = 'foo';
    o.merchantId = 'foo';
    o.method = 'foo';
    o.product = buildProduct();
    o.productId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterProductsCustomBatchRequestEntry--;
  return o;
}

void checkProductsCustomBatchRequestEntry(
    api.ProductsCustomBatchRequestEntry o) {
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.feedId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkProduct(o.product!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductsCustomBatchRequestEntry--;
}

core.List<api.ProductsCustomBatchResponseEntry> buildUnnamed151() => [
      buildProductsCustomBatchResponseEntry(),
      buildProductsCustomBatchResponseEntry(),
    ];

void checkUnnamed151(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(o[0]);
  checkProductsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductsCustomBatchResponse = 0;
api.ProductsCustomBatchResponse buildProductsCustomBatchResponse() {
  final o = api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed151();
    o.kind = 'foo';
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

void checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed151(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductsCustomBatchResponse--;
}

core.int buildCounterProductsCustomBatchResponseEntry = 0;
api.ProductsCustomBatchResponseEntry buildProductsCustomBatchResponseEntry() {
  final o = api.ProductsCustomBatchResponseEntry();
  buildCounterProductsCustomBatchResponseEntry++;
  if (buildCounterProductsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
    o.product = buildProduct();
  }
  buildCounterProductsCustomBatchResponseEntry--;
  return o;
}

void checkProductsCustomBatchResponseEntry(
    api.ProductsCustomBatchResponseEntry o) {
  buildCounterProductsCustomBatchResponseEntry++;
  if (buildCounterProductsCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkProduct(o.product!);
  }
  buildCounterProductsCustomBatchResponseEntry--;
}

core.List<api.Product> buildUnnamed152() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed152(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterProductsListResponse = 0;
api.ProductsListResponse buildProductsListResponse() {
  final o = api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed152();
  }
  buildCounterProductsListResponse--;
  return o;
}

void checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed152(o.resources!);
  }
  buildCounterProductsListResponse--;
}

core.List<api.ProductstatusesCustomBatchRequestEntry> buildUnnamed153() => [
      buildProductstatusesCustomBatchRequestEntry(),
      buildProductstatusesCustomBatchRequestEntry(),
    ];

void checkUnnamed153(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(o[0]);
  checkProductstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
api.ProductstatusesCustomBatchRequest buildProductstatusesCustomBatchRequest() {
  final o = api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed153();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

void checkProductstatusesCustomBatchRequest(
    api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed153(o.entries!);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed154() => [
      'foo',
      'foo',
    ];

void checkUnnamed154(core.List<core.String> o) {
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

core.int buildCounterProductstatusesCustomBatchRequestEntry = 0;
api.ProductstatusesCustomBatchRequestEntry
    buildProductstatusesCustomBatchRequestEntry() {
  final o = api.ProductstatusesCustomBatchRequestEntry();
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.destinations = buildUnnamed154();
    o.includeAttributes = true;
    o.merchantId = 'foo';
    o.method = 'foo';
    o.productId = 'foo';
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
  return o;
}

void checkProductstatusesCustomBatchRequestEntry(
    api.ProductstatusesCustomBatchRequestEntry o) {
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkUnnamed154(o.destinations!);
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
}

core.List<api.ProductstatusesCustomBatchResponseEntry> buildUnnamed155() => [
      buildProductstatusesCustomBatchResponseEntry(),
      buildProductstatusesCustomBatchResponseEntry(),
    ];

void checkUnnamed155(core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchResponseEntry(o[0]);
  checkProductstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchResponse = 0;
api.ProductstatusesCustomBatchResponse
    buildProductstatusesCustomBatchResponse() {
  final o = api.ProductstatusesCustomBatchResponse();
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed155();
    o.kind = 'foo';
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

void checkProductstatusesCustomBatchResponse(
    api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed155(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductstatusesCustomBatchResponse--;
}

core.int buildCounterProductstatusesCustomBatchResponseEntry = 0;
api.ProductstatusesCustomBatchResponseEntry
    buildProductstatusesCustomBatchResponseEntry() {
  final o = api.ProductstatusesCustomBatchResponseEntry();
  buildCounterProductstatusesCustomBatchResponseEntry++;
  if (buildCounterProductstatusesCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
    o.productStatus = buildProductStatus();
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
  return o;
}

void checkProductstatusesCustomBatchResponseEntry(
    api.ProductstatusesCustomBatchResponseEntry o) {
  buildCounterProductstatusesCustomBatchResponseEntry++;
  if (buildCounterProductstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkProductStatus(o.productStatus!);
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
}

core.List<api.ProductStatus> buildUnnamed156() => [
      buildProductStatus(),
      buildProductStatus(),
    ];

void checkUnnamed156(core.List<api.ProductStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatus(o[0]);
  checkProductStatus(o[1]);
}

core.int buildCounterProductstatusesListResponse = 0;
api.ProductstatusesListResponse buildProductstatusesListResponse() {
  final o = api.ProductstatusesListResponse();
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed156();
  }
  buildCounterProductstatusesListResponse--;
  return o;
}

void checkProductstatusesListResponse(api.ProductstatusesListResponse o) {
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed156(o.resources!);
  }
  buildCounterProductstatusesListResponse--;
}

core.List<core.String> buildUnnamed157() => [
      'foo',
      'foo',
    ];

void checkUnnamed157(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed158() => [
      'foo',
      'foo',
    ];

void checkUnnamed158(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed159() => [
      'foo',
      'foo',
    ];

void checkUnnamed159(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed160() => [
      'foo',
      'foo',
    ];

void checkUnnamed160(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed161() => [
      'foo',
      'foo',
    ];

void checkUnnamed161(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed162() => [
      'foo',
      'foo',
    ];

void checkUnnamed162(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed163() => [
      'foo',
      'foo',
    ];

void checkUnnamed163(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed164() => [
      'foo',
      'foo',
    ];

void checkUnnamed164(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed165() => [
      'foo',
      'foo',
    ];

void checkUnnamed165(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed166() => [
      'foo',
      'foo',
    ];

void checkUnnamed166(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed167() => [
      'foo',
      'foo',
    ];

void checkUnnamed167(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed168() => [
      'foo',
      'foo',
    ];

void checkUnnamed168(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed169() => [
      'foo',
      'foo',
    ];

void checkUnnamed169(core.List<core.String> o) {
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

core.int buildCounterPromotion = 0;
api.Promotion buildPromotion() {
  final o = api.Promotion();
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    o.brand = buildUnnamed157();
    o.brandExclusion = buildUnnamed158();
    o.contentLanguage = 'foo';
    o.couponValueType = 'foo';
    o.freeGiftDescription = 'foo';
    o.freeGiftItemId = 'foo';
    o.freeGiftValue = buildPriceAmount();
    o.genericRedemptionCode = 'foo';
    o.getThisQuantityDiscounted = 42;
    o.id = 'foo';
    o.itemGroupId = buildUnnamed159();
    o.itemGroupIdExclusion = buildUnnamed160();
    o.itemId = buildUnnamed161();
    o.itemIdExclusion = buildUnnamed162();
    o.limitQuantity = 42;
    o.limitValue = buildPriceAmount();
    o.longTitle = 'foo';
    o.minimumPurchaseAmount = buildPriceAmount();
    o.minimumPurchaseQuantity = 42;
    o.moneyBudget = buildPriceAmount();
    o.moneyOffAmount = buildPriceAmount();
    o.offerType = 'foo';
    o.orderLimit = 42;
    o.percentOff = 42;
    o.productApplicability = 'foo';
    o.productType = buildUnnamed163();
    o.productTypeExclusion = buildUnnamed164();
    o.promotionDestinationIds = buildUnnamed165();
    o.promotionDisplayDates = 'foo';
    o.promotionDisplayTimePeriod = buildTimePeriod();
    o.promotionEffectiveDates = 'foo';
    o.promotionEffectiveTimePeriod = buildTimePeriod();
    o.promotionId = 'foo';
    o.promotionStatus = buildPromotionPromotionStatus();
    o.promotionUrl = 'foo';
    o.redemptionChannel = buildUnnamed166();
    o.shippingServiceNames = buildUnnamed167();
    o.storeApplicability = 'foo';
    o.storeCode = buildUnnamed168();
    o.storeCodeExclusion = buildUnnamed169();
    o.targetCountry = 'foo';
  }
  buildCounterPromotion--;
  return o;
}

void checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkUnnamed157(o.brand!);
    checkUnnamed158(o.brandExclusion!);
    unittest.expect(
      o.contentLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.couponValueType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeGiftDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeGiftItemId!,
      unittest.equals('foo'),
    );
    checkPriceAmount(o.freeGiftValue!);
    unittest.expect(
      o.genericRedemptionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.getThisQuantityDiscounted!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed159(o.itemGroupId!);
    checkUnnamed160(o.itemGroupIdExclusion!);
    checkUnnamed161(o.itemId!);
    checkUnnamed162(o.itemIdExclusion!);
    unittest.expect(
      o.limitQuantity!,
      unittest.equals(42),
    );
    checkPriceAmount(o.limitValue!);
    unittest.expect(
      o.longTitle!,
      unittest.equals('foo'),
    );
    checkPriceAmount(o.minimumPurchaseAmount!);
    unittest.expect(
      o.minimumPurchaseQuantity!,
      unittest.equals(42),
    );
    checkPriceAmount(o.moneyBudget!);
    checkPriceAmount(o.moneyOffAmount!);
    unittest.expect(
      o.offerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderLimit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.percentOff!,
      unittest.equals(42),
    );
    unittest.expect(
      o.productApplicability!,
      unittest.equals('foo'),
    );
    checkUnnamed163(o.productType!);
    checkUnnamed164(o.productTypeExclusion!);
    checkUnnamed165(o.promotionDestinationIds!);
    unittest.expect(
      o.promotionDisplayDates!,
      unittest.equals('foo'),
    );
    checkTimePeriod(o.promotionDisplayTimePeriod!);
    unittest.expect(
      o.promotionEffectiveDates!,
      unittest.equals('foo'),
    );
    checkTimePeriod(o.promotionEffectiveTimePeriod!);
    unittest.expect(
      o.promotionId!,
      unittest.equals('foo'),
    );
    checkPromotionPromotionStatus(o.promotionStatus!);
    unittest.expect(
      o.promotionUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed166(o.redemptionChannel!);
    checkUnnamed167(o.shippingServiceNames!);
    unittest.expect(
      o.storeApplicability!,
      unittest.equals('foo'),
    );
    checkUnnamed168(o.storeCode!);
    checkUnnamed169(o.storeCodeExclusion!);
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
  }
  buildCounterPromotion--;
}

core.List<api.PromotionPromotionStatusDestinationStatus> buildUnnamed170() => [
      buildPromotionPromotionStatusDestinationStatus(),
      buildPromotionPromotionStatusDestinationStatus(),
    ];

void checkUnnamed170(
    core.List<api.PromotionPromotionStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotionPromotionStatusDestinationStatus(o[0]);
  checkPromotionPromotionStatusDestinationStatus(o[1]);
}

core.List<api.PromotionPromotionStatusPromotionIssue> buildUnnamed171() => [
      buildPromotionPromotionStatusPromotionIssue(),
      buildPromotionPromotionStatusPromotionIssue(),
    ];

void checkUnnamed171(core.List<api.PromotionPromotionStatusPromotionIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotionPromotionStatusPromotionIssue(o[0]);
  checkPromotionPromotionStatusPromotionIssue(o[1]);
}

core.int buildCounterPromotionPromotionStatus = 0;
api.PromotionPromotionStatus buildPromotionPromotionStatus() {
  final o = api.PromotionPromotionStatus();
  buildCounterPromotionPromotionStatus++;
  if (buildCounterPromotionPromotionStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed170();
    o.lastUpdateDate = 'foo';
    o.promotionIssue = buildUnnamed171();
  }
  buildCounterPromotionPromotionStatus--;
  return o;
}

void checkPromotionPromotionStatus(api.PromotionPromotionStatus o) {
  buildCounterPromotionPromotionStatus++;
  if (buildCounterPromotionPromotionStatus < 3) {
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    checkUnnamed170(o.destinationStatuses!);
    unittest.expect(
      o.lastUpdateDate!,
      unittest.equals('foo'),
    );
    checkUnnamed171(o.promotionIssue!);
  }
  buildCounterPromotionPromotionStatus--;
}

core.int buildCounterPromotionPromotionStatusDestinationStatus = 0;
api.PromotionPromotionStatusDestinationStatus
    buildPromotionPromotionStatusDestinationStatus() {
  final o = api.PromotionPromotionStatusDestinationStatus();
  buildCounterPromotionPromotionStatusDestinationStatus++;
  if (buildCounterPromotionPromotionStatusDestinationStatus < 3) {
    o.destination = 'foo';
    o.status = 'foo';
  }
  buildCounterPromotionPromotionStatusDestinationStatus--;
  return o;
}

void checkPromotionPromotionStatusDestinationStatus(
    api.PromotionPromotionStatusDestinationStatus o) {
  buildCounterPromotionPromotionStatusDestinationStatus++;
  if (buildCounterPromotionPromotionStatusDestinationStatus < 3) {
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterPromotionPromotionStatusDestinationStatus--;
}

core.int buildCounterPromotionPromotionStatusPromotionIssue = 0;
api.PromotionPromotionStatusPromotionIssue
    buildPromotionPromotionStatusPromotionIssue() {
  final o = api.PromotionPromotionStatusPromotionIssue();
  buildCounterPromotionPromotionStatusPromotionIssue++;
  if (buildCounterPromotionPromotionStatusPromotionIssue < 3) {
    o.code = 'foo';
    o.detail = 'foo';
  }
  buildCounterPromotionPromotionStatusPromotionIssue--;
  return o;
}

void checkPromotionPromotionStatusPromotionIssue(
    api.PromotionPromotionStatusPromotionIssue o) {
  buildCounterPromotionPromotionStatusPromotionIssue++;
  if (buildCounterPromotionPromotionStatusPromotionIssue < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
  }
  buildCounterPromotionPromotionStatusPromotionIssue--;
}

core.List<core.String> buildUnnamed172() => [
      'foo',
      'foo',
    ];

void checkUnnamed172(core.List<core.String> o) {
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

core.int buildCounterPubsubNotificationSettings = 0;
api.PubsubNotificationSettings buildPubsubNotificationSettings() {
  final o = api.PubsubNotificationSettings();
  buildCounterPubsubNotificationSettings++;
  if (buildCounterPubsubNotificationSettings < 3) {
    o.cloudTopicName = 'foo';
    o.kind = 'foo';
    o.registeredEvents = buildUnnamed172();
  }
  buildCounterPubsubNotificationSettings--;
  return o;
}

void checkPubsubNotificationSettings(api.PubsubNotificationSettings o) {
  buildCounterPubsubNotificationSettings++;
  if (buildCounterPubsubNotificationSettings < 3) {
    unittest.expect(
      o.cloudTopicName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed172(o.registeredEvents!);
  }
  buildCounterPubsubNotificationSettings--;
}

core.List<core.String> buildUnnamed173() => [
      'foo',
      'foo',
    ];

void checkUnnamed173(core.List<core.String> o) {
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

core.List<api.CarrierRate> buildUnnamed174() => [
      buildCarrierRate(),
      buildCarrierRate(),
    ];

void checkUnnamed174(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0]);
  checkCarrierRate(o[1]);
}

core.List<api.Table> buildUnnamed175() => [
      buildTable(),
      buildTable(),
    ];

void checkUnnamed175(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterRateGroup = 0;
api.RateGroup buildRateGroup() {
  final o = api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed173();
    o.carrierRates = buildUnnamed174();
    o.mainTable = buildTable();
    o.name = 'foo';
    o.singleValue = buildValue();
    o.subtables = buildUnnamed175();
  }
  buildCounterRateGroup--;
  return o;
}

void checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed173(o.applicableShippingLabels!);
    checkUnnamed174(o.carrierRates!);
    checkTable(o.mainTable!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkValue(o.singleValue!);
    checkUnnamed175(o.subtables!);
  }
  buildCounterRateGroup--;
}

core.List<api.RecommendationCallToAction> buildUnnamed176() => [
      buildRecommendationCallToAction(),
      buildRecommendationCallToAction(),
    ];

void checkUnnamed176(core.List<api.RecommendationCallToAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecommendationCallToAction(o[0]);
  checkRecommendationCallToAction(o[1]);
}

core.List<api.RecommendationDescription> buildUnnamed177() => [
      buildRecommendationDescription(),
      buildRecommendationDescription(),
    ];

void checkUnnamed177(core.List<api.RecommendationDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecommendationDescription(o[0]);
  checkRecommendationDescription(o[1]);
}

core.List<api.RecommendationCreative> buildUnnamed178() => [
      buildRecommendationCreative(),
      buildRecommendationCreative(),
    ];

void checkUnnamed178(core.List<api.RecommendationCreative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecommendationCreative(o[0]);
  checkRecommendationCreative(o[1]);
}

core.int buildCounterRecommendation = 0;
api.Recommendation buildRecommendation() {
  final o = api.Recommendation();
  buildCounterRecommendation++;
  if (buildCounterRecommendation < 3) {
    o.additionalCallToAction = buildUnnamed176();
    o.additionalDescriptions = buildUnnamed177();
    o.creative = buildUnnamed178();
    o.defaultCallToAction = buildRecommendationCallToAction();
    o.defaultDescription = 'foo';
    o.numericalImpact = 42;
    o.paid = true;
    o.recommendationName = 'foo';
    o.subType = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterRecommendation--;
  return o;
}

void checkRecommendation(api.Recommendation o) {
  buildCounterRecommendation++;
  if (buildCounterRecommendation < 3) {
    checkUnnamed176(o.additionalCallToAction!);
    checkUnnamed177(o.additionalDescriptions!);
    checkUnnamed178(o.creative!);
    checkRecommendationCallToAction(o.defaultCallToAction!);
    unittest.expect(
      o.defaultDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numericalImpact!,
      unittest.equals(42),
    );
    unittest.expect(o.paid!, unittest.isTrue);
    unittest.expect(
      o.recommendationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecommendation--;
}

core.int buildCounterRecommendationCallToAction = 0;
api.RecommendationCallToAction buildRecommendationCallToAction() {
  final o = api.RecommendationCallToAction();
  buildCounterRecommendationCallToAction++;
  if (buildCounterRecommendationCallToAction < 3) {
    o.intent = 'foo';
    o.localizedText = 'foo';
    o.uri = 'foo';
  }
  buildCounterRecommendationCallToAction--;
  return o;
}

void checkRecommendationCallToAction(api.RecommendationCallToAction o) {
  buildCounterRecommendationCallToAction++;
  if (buildCounterRecommendationCallToAction < 3) {
    unittest.expect(
      o.intent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localizedText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecommendationCallToAction--;
}

core.int buildCounterRecommendationCreative = 0;
api.RecommendationCreative buildRecommendationCreative() {
  final o = api.RecommendationCreative();
  buildCounterRecommendationCreative++;
  if (buildCounterRecommendationCreative < 3) {
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterRecommendationCreative--;
  return o;
}

void checkRecommendationCreative(api.RecommendationCreative o) {
  buildCounterRecommendationCreative++;
  if (buildCounterRecommendationCreative < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecommendationCreative--;
}

core.int buildCounterRecommendationDescription = 0;
api.RecommendationDescription buildRecommendationDescription() {
  final o = api.RecommendationDescription();
  buildCounterRecommendationDescription++;
  if (buildCounterRecommendationDescription < 3) {
    o.text = 'foo';
    o.type = 'foo';
  }
  buildCounterRecommendationDescription--;
  return o;
}

void checkRecommendationDescription(api.RecommendationDescription o) {
  buildCounterRecommendationDescription++;
  if (buildCounterRecommendationDescription < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecommendationDescription--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  final o = api.Region();
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    o.displayName = 'foo';
    o.geotargetArea = buildRegionGeoTargetArea();
    o.merchantId = 'foo';
    o.postalCodeArea = buildRegionPostalCodeArea();
    o.regionId = 'foo';
    o.regionalInventoryEligible = true;
    o.shippingEligible = true;
  }
  buildCounterRegion--;
  return o;
}

void checkRegion(api.Region o) {
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkRegionGeoTargetArea(o.geotargetArea!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    checkRegionPostalCodeArea(o.postalCodeArea!);
    unittest.expect(
      o.regionId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.regionalInventoryEligible!, unittest.isTrue);
    unittest.expect(o.shippingEligible!, unittest.isTrue);
  }
  buildCounterRegion--;
}

core.List<core.String> buildUnnamed179() => [
      'foo',
      'foo',
    ];

void checkUnnamed179(core.List<core.String> o) {
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

core.int buildCounterRegionGeoTargetArea = 0;
api.RegionGeoTargetArea buildRegionGeoTargetArea() {
  final o = api.RegionGeoTargetArea();
  buildCounterRegionGeoTargetArea++;
  if (buildCounterRegionGeoTargetArea < 3) {
    o.geotargetCriteriaIds = buildUnnamed179();
  }
  buildCounterRegionGeoTargetArea--;
  return o;
}

void checkRegionGeoTargetArea(api.RegionGeoTargetArea o) {
  buildCounterRegionGeoTargetArea++;
  if (buildCounterRegionGeoTargetArea < 3) {
    checkUnnamed179(o.geotargetCriteriaIds!);
  }
  buildCounterRegionGeoTargetArea--;
}

core.List<api.RegionPostalCodeAreaPostalCodeRange> buildUnnamed180() => [
      buildRegionPostalCodeAreaPostalCodeRange(),
      buildRegionPostalCodeAreaPostalCodeRange(),
    ];

void checkUnnamed180(core.List<api.RegionPostalCodeAreaPostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionPostalCodeAreaPostalCodeRange(o[0]);
  checkRegionPostalCodeAreaPostalCodeRange(o[1]);
}

core.int buildCounterRegionPostalCodeArea = 0;
api.RegionPostalCodeArea buildRegionPostalCodeArea() {
  final o = api.RegionPostalCodeArea();
  buildCounterRegionPostalCodeArea++;
  if (buildCounterRegionPostalCodeArea < 3) {
    o.postalCodes = buildUnnamed180();
    o.regionCode = 'foo';
  }
  buildCounterRegionPostalCodeArea--;
  return o;
}

void checkRegionPostalCodeArea(api.RegionPostalCodeArea o) {
  buildCounterRegionPostalCodeArea++;
  if (buildCounterRegionPostalCodeArea < 3) {
    checkUnnamed180(o.postalCodes!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionPostalCodeArea--;
}

core.int buildCounterRegionPostalCodeAreaPostalCodeRange = 0;
api.RegionPostalCodeAreaPostalCodeRange
    buildRegionPostalCodeAreaPostalCodeRange() {
  final o = api.RegionPostalCodeAreaPostalCodeRange();
  buildCounterRegionPostalCodeAreaPostalCodeRange++;
  if (buildCounterRegionPostalCodeAreaPostalCodeRange < 3) {
    o.begin = 'foo';
    o.end = 'foo';
  }
  buildCounterRegionPostalCodeAreaPostalCodeRange--;
  return o;
}

void checkRegionPostalCodeAreaPostalCodeRange(
    api.RegionPostalCodeAreaPostalCodeRange o) {
  buildCounterRegionPostalCodeAreaPostalCodeRange++;
  if (buildCounterRegionPostalCodeAreaPostalCodeRange < 3) {
    unittest.expect(
      o.begin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.end!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionPostalCodeAreaPostalCodeRange--;
}

core.List<api.CustomAttribute> buildUnnamed181() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed181(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterRegionalInventory = 0;
api.RegionalInventory buildRegionalInventory() {
  final o = api.RegionalInventory();
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    o.availability = 'foo';
    o.customAttributes = buildUnnamed181();
    o.kind = 'foo';
    o.price = buildPrice();
    o.regionId = 'foo';
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = 'foo';
  }
  buildCounterRegionalInventory--;
  return o;
}

void checkRegionalInventory(api.RegionalInventory o) {
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    checkUnnamed181(o.customAttributes!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.regionId!,
      unittest.equals('foo'),
    );
    checkPrice(o.salePrice!);
    unittest.expect(
      o.salePriceEffectiveDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalInventory--;
}

core.List<api.RegionalinventoryCustomBatchRequestEntry> buildUnnamed182() => [
      buildRegionalinventoryCustomBatchRequestEntry(),
      buildRegionalinventoryCustomBatchRequestEntry(),
    ];

void checkUnnamed182(
    core.List<api.RegionalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchRequestEntry(o[0]);
  checkRegionalinventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterRegionalinventoryCustomBatchRequest = 0;
api.RegionalinventoryCustomBatchRequest
    buildRegionalinventoryCustomBatchRequest() {
  final o = api.RegionalinventoryCustomBatchRequest();
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed182();
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
  return o;
}

void checkRegionalinventoryCustomBatchRequest(
    api.RegionalinventoryCustomBatchRequest o) {
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    checkUnnamed182(o.entries!);
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
}

core.int buildCounterRegionalinventoryCustomBatchRequestEntry = 0;
api.RegionalinventoryCustomBatchRequestEntry
    buildRegionalinventoryCustomBatchRequestEntry() {
  final o = api.RegionalinventoryCustomBatchRequestEntry();
  buildCounterRegionalinventoryCustomBatchRequestEntry++;
  if (buildCounterRegionalinventoryCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = 'foo';
    o.method = 'foo';
    o.productId = 'foo';
    o.regionalInventory = buildRegionalInventory();
  }
  buildCounterRegionalinventoryCustomBatchRequestEntry--;
  return o;
}

void checkRegionalinventoryCustomBatchRequestEntry(
    api.RegionalinventoryCustomBatchRequestEntry o) {
  buildCounterRegionalinventoryCustomBatchRequestEntry++;
  if (buildCounterRegionalinventoryCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkRegionalInventory(o.regionalInventory!);
  }
  buildCounterRegionalinventoryCustomBatchRequestEntry--;
}

core.List<api.RegionalinventoryCustomBatchResponseEntry> buildUnnamed183() => [
      buildRegionalinventoryCustomBatchResponseEntry(),
      buildRegionalinventoryCustomBatchResponseEntry(),
    ];

void checkUnnamed183(
    core.List<api.RegionalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchResponseEntry(o[0]);
  checkRegionalinventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterRegionalinventoryCustomBatchResponse = 0;
api.RegionalinventoryCustomBatchResponse
    buildRegionalinventoryCustomBatchResponse() {
  final o = api.RegionalinventoryCustomBatchResponse();
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed183();
    o.kind = 'foo';
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
  return o;
}

void checkRegionalinventoryCustomBatchResponse(
    api.RegionalinventoryCustomBatchResponse o) {
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    checkUnnamed183(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
}

core.int buildCounterRegionalinventoryCustomBatchResponseEntry = 0;
api.RegionalinventoryCustomBatchResponseEntry
    buildRegionalinventoryCustomBatchResponseEntry() {
  final o = api.RegionalinventoryCustomBatchResponseEntry();
  buildCounterRegionalinventoryCustomBatchResponseEntry++;
  if (buildCounterRegionalinventoryCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
    o.regionalInventory = buildRegionalInventory();
  }
  buildCounterRegionalinventoryCustomBatchResponseEntry--;
  return o;
}

void checkRegionalinventoryCustomBatchResponseEntry(
    api.RegionalinventoryCustomBatchResponseEntry o) {
  buildCounterRegionalinventoryCustomBatchResponseEntry++;
  if (buildCounterRegionalinventoryCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkRegionalInventory(o.regionalInventory!);
  }
  buildCounterRegionalinventoryCustomBatchResponseEntry--;
}

core.int buildCounterRenderAccountIssuesRequestPayload = 0;
api.RenderAccountIssuesRequestPayload buildRenderAccountIssuesRequestPayload() {
  final o = api.RenderAccountIssuesRequestPayload();
  buildCounterRenderAccountIssuesRequestPayload++;
  if (buildCounterRenderAccountIssuesRequestPayload < 3) {
    o.contentOption = 'foo';
    o.userInputActionOption = 'foo';
  }
  buildCounterRenderAccountIssuesRequestPayload--;
  return o;
}

void checkRenderAccountIssuesRequestPayload(
    api.RenderAccountIssuesRequestPayload o) {
  buildCounterRenderAccountIssuesRequestPayload++;
  if (buildCounterRenderAccountIssuesRequestPayload < 3) {
    unittest.expect(
      o.contentOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInputActionOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenderAccountIssuesRequestPayload--;
}

core.List<api.AccountIssue> buildUnnamed184() => [
      buildAccountIssue(),
      buildAccountIssue(),
    ];

void checkUnnamed184(core.List<api.AccountIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIssue(o[0]);
  checkAccountIssue(o[1]);
}

core.int buildCounterRenderAccountIssuesResponse = 0;
api.RenderAccountIssuesResponse buildRenderAccountIssuesResponse() {
  final o = api.RenderAccountIssuesResponse();
  buildCounterRenderAccountIssuesResponse++;
  if (buildCounterRenderAccountIssuesResponse < 3) {
    o.alternateDisputeResolution = buildAlternateDisputeResolution();
    o.issues = buildUnnamed184();
  }
  buildCounterRenderAccountIssuesResponse--;
  return o;
}

void checkRenderAccountIssuesResponse(api.RenderAccountIssuesResponse o) {
  buildCounterRenderAccountIssuesResponse++;
  if (buildCounterRenderAccountIssuesResponse < 3) {
    checkAlternateDisputeResolution(o.alternateDisputeResolution!);
    checkUnnamed184(o.issues!);
  }
  buildCounterRenderAccountIssuesResponse--;
}

core.int buildCounterRenderProductIssuesRequestPayload = 0;
api.RenderProductIssuesRequestPayload buildRenderProductIssuesRequestPayload() {
  final o = api.RenderProductIssuesRequestPayload();
  buildCounterRenderProductIssuesRequestPayload++;
  if (buildCounterRenderProductIssuesRequestPayload < 3) {
    o.contentOption = 'foo';
    o.userInputActionOption = 'foo';
  }
  buildCounterRenderProductIssuesRequestPayload--;
  return o;
}

void checkRenderProductIssuesRequestPayload(
    api.RenderProductIssuesRequestPayload o) {
  buildCounterRenderProductIssuesRequestPayload++;
  if (buildCounterRenderProductIssuesRequestPayload < 3) {
    unittest.expect(
      o.contentOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInputActionOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterRenderProductIssuesRequestPayload--;
}

core.List<api.ProductIssue> buildUnnamed185() => [
      buildProductIssue(),
      buildProductIssue(),
    ];

void checkUnnamed185(core.List<api.ProductIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductIssue(o[0]);
  checkProductIssue(o[1]);
}

core.int buildCounterRenderProductIssuesResponse = 0;
api.RenderProductIssuesResponse buildRenderProductIssuesResponse() {
  final o = api.RenderProductIssuesResponse();
  buildCounterRenderProductIssuesResponse++;
  if (buildCounterRenderProductIssuesResponse < 3) {
    o.alternateDisputeResolution = buildAlternateDisputeResolution();
    o.issues = buildUnnamed185();
  }
  buildCounterRenderProductIssuesResponse--;
  return o;
}

void checkRenderProductIssuesResponse(api.RenderProductIssuesResponse o) {
  buildCounterRenderProductIssuesResponse++;
  if (buildCounterRenderProductIssuesResponse < 3) {
    checkAlternateDisputeResolution(o.alternateDisputeResolution!);
    checkUnnamed185(o.issues!);
  }
  buildCounterRenderProductIssuesResponse--;
}

core.int buildCounterReportInteractionRequest = 0;
api.ReportInteractionRequest buildReportInteractionRequest() {
  final o = api.ReportInteractionRequest();
  buildCounterReportInteractionRequest++;
  if (buildCounterReportInteractionRequest < 3) {
    o.interactionType = 'foo';
    o.responseToken = 'foo';
    o.subtype = 'foo';
    o.type = 'foo';
  }
  buildCounterReportInteractionRequest--;
  return o;
}

void checkReportInteractionRequest(api.ReportInteractionRequest o) {
  buildCounterReportInteractionRequest++;
  if (buildCounterReportInteractionRequest < 3) {
    unittest.expect(
      o.interactionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtype!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportInteractionRequest--;
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.bestSellers = buildBestSellers();
    o.brand = buildBrand();
    o.competitiveVisibility = buildCompetitiveVisibility();
    o.metrics = buildMetrics();
    o.priceCompetitiveness = buildPriceCompetitiveness();
    o.priceInsights = buildPriceInsights();
    o.productCluster = buildProductCluster();
    o.productView = buildProductView();
    o.segments = buildSegments();
    o.topicTrends = buildTopicTrends();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkBestSellers(o.bestSellers!);
    checkBrand(o.brand!);
    checkCompetitiveVisibility(o.competitiveVisibility!);
    checkMetrics(o.metrics!);
    checkPriceCompetitiveness(o.priceCompetitiveness!);
    checkPriceInsights(o.priceInsights!);
    checkProductCluster(o.productCluster!);
    checkProductView(o.productView!);
    checkSegments(o.segments!);
    checkTopicTrends(o.topicTrends!);
  }
  buildCounterReportRow--;
}

core.int buildCounterRequestPhoneVerificationRequest = 0;
api.RequestPhoneVerificationRequest buildRequestPhoneVerificationRequest() {
  final o = api.RequestPhoneVerificationRequest();
  buildCounterRequestPhoneVerificationRequest++;
  if (buildCounterRequestPhoneVerificationRequest < 3) {
    o.languageCode = 'foo';
    o.phoneNumber = 'foo';
    o.phoneRegionCode = 'foo';
    o.phoneVerificationMethod = 'foo';
  }
  buildCounterRequestPhoneVerificationRequest--;
  return o;
}

void checkRequestPhoneVerificationRequest(
    api.RequestPhoneVerificationRequest o) {
  buildCounterRequestPhoneVerificationRequest++;
  if (buildCounterRequestPhoneVerificationRequest < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneRegionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneVerificationMethod!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestPhoneVerificationRequest--;
}

core.int buildCounterRequestPhoneVerificationResponse = 0;
api.RequestPhoneVerificationResponse buildRequestPhoneVerificationResponse() {
  final o = api.RequestPhoneVerificationResponse();
  buildCounterRequestPhoneVerificationResponse++;
  if (buildCounterRequestPhoneVerificationResponse < 3) {
    o.verificationId = 'foo';
  }
  buildCounterRequestPhoneVerificationResponse--;
  return o;
}

void checkRequestPhoneVerificationResponse(
    api.RequestPhoneVerificationResponse o) {
  buildCounterRequestPhoneVerificationResponse++;
  if (buildCounterRequestPhoneVerificationResponse < 3) {
    unittest.expect(
      o.verificationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestPhoneVerificationResponse--;
}

core.int buildCounterRequestReviewFreeListingsRequest = 0;
api.RequestReviewFreeListingsRequest buildRequestReviewFreeListingsRequest() {
  final o = api.RequestReviewFreeListingsRequest();
  buildCounterRequestReviewFreeListingsRequest++;
  if (buildCounterRequestReviewFreeListingsRequest < 3) {
    o.regionCode = 'foo';
  }
  buildCounterRequestReviewFreeListingsRequest--;
  return o;
}

void checkRequestReviewFreeListingsRequest(
    api.RequestReviewFreeListingsRequest o) {
  buildCounterRequestReviewFreeListingsRequest++;
  if (buildCounterRequestReviewFreeListingsRequest < 3) {
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestReviewFreeListingsRequest--;
}

core.int buildCounterRequestReviewShoppingAdsRequest = 0;
api.RequestReviewShoppingAdsRequest buildRequestReviewShoppingAdsRequest() {
  final o = api.RequestReviewShoppingAdsRequest();
  buildCounterRequestReviewShoppingAdsRequest++;
  if (buildCounterRequestReviewShoppingAdsRequest < 3) {
    o.regionCode = 'foo';
  }
  buildCounterRequestReviewShoppingAdsRequest--;
  return o;
}

void checkRequestReviewShoppingAdsRequest(
    api.RequestReviewShoppingAdsRequest o) {
  buildCounterRequestReviewShoppingAdsRequest++;
  if (buildCounterRequestReviewShoppingAdsRequest < 3) {
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestReviewShoppingAdsRequest--;
}

core.int buildCounterReturnAddress = 0;
api.ReturnAddress buildReturnAddress() {
  final o = api.ReturnAddress();
  buildCounterReturnAddress++;
  if (buildCounterReturnAddress < 3) {
    o.address = buildReturnAddressAddress();
    o.country = 'foo';
    o.kind = 'foo';
    o.label = 'foo';
    o.phoneNumber = 'foo';
    o.returnAddressId = 'foo';
  }
  buildCounterReturnAddress--;
  return o;
}

void checkReturnAddress(api.ReturnAddress o) {
  buildCounterReturnAddress++;
  if (buildCounterReturnAddress < 3) {
    checkReturnAddressAddress(o.address!);
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnAddressId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnAddress--;
}

core.List<core.String> buildUnnamed186() => [
      'foo',
      'foo',
    ];

void checkUnnamed186(core.List<core.String> o) {
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

core.int buildCounterReturnAddressAddress = 0;
api.ReturnAddressAddress buildReturnAddressAddress() {
  final o = api.ReturnAddressAddress();
  buildCounterReturnAddressAddress++;
  if (buildCounterReturnAddressAddress < 3) {
    o.country = 'foo';
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed186();
  }
  buildCounterReturnAddressAddress--;
  return o;
}

void checkReturnAddressAddress(api.ReturnAddressAddress o) {
  buildCounterReturnAddressAddress++;
  if (buildCounterReturnAddressAddress < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recipientName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkUnnamed186(o.streetAddress!);
  }
  buildCounterReturnAddressAddress--;
}

core.List<core.String> buildUnnamed187() => [
      'foo',
      'foo',
    ];

void checkUnnamed187(core.List<core.String> o) {
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

core.List<api.ReturnPolicySeasonalOverride> buildUnnamed188() => [
      buildReturnPolicySeasonalOverride(),
      buildReturnPolicySeasonalOverride(),
    ];

void checkUnnamed188(core.List<api.ReturnPolicySeasonalOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicySeasonalOverride(o[0]);
  checkReturnPolicySeasonalOverride(o[1]);
}

core.int buildCounterReturnPolicy = 0;
api.ReturnPolicy buildReturnPolicy() {
  final o = api.ReturnPolicy();
  buildCounterReturnPolicy++;
  if (buildCounterReturnPolicy < 3) {
    o.country = 'foo';
    o.kind = 'foo';
    o.label = 'foo';
    o.name = 'foo';
    o.nonFreeReturnReasons = buildUnnamed187();
    o.policy = buildReturnPolicyPolicy();
    o.returnPolicyId = 'foo';
    o.returnShippingFee = buildPrice();
    o.seasonalOverrides = buildUnnamed188();
  }
  buildCounterReturnPolicy--;
  return o;
}

void checkReturnPolicy(api.ReturnPolicy o) {
  buildCounterReturnPolicy++;
  if (buildCounterReturnPolicy < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed187(o.nonFreeReturnReasons!);
    checkReturnPolicyPolicy(o.policy!);
    unittest.expect(
      o.returnPolicyId!,
      unittest.equals('foo'),
    );
    checkPrice(o.returnShippingFee!);
    checkUnnamed188(o.seasonalOverrides!);
  }
  buildCounterReturnPolicy--;
}

core.List<core.String> buildUnnamed189() => [
      'foo',
      'foo',
    ];

void checkUnnamed189(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed190() => [
      'foo',
      'foo',
    ];

void checkUnnamed190(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed191() => [
      'foo',
      'foo',
    ];

void checkUnnamed191(core.List<core.String> o) {
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

core.List<api.ReturnPolicyOnlineReturnReasonCategoryInfo> buildUnnamed192() => [
      buildReturnPolicyOnlineReturnReasonCategoryInfo(),
      buildReturnPolicyOnlineReturnReasonCategoryInfo(),
    ];

void checkUnnamed192(
    core.List<api.ReturnPolicyOnlineReturnReasonCategoryInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicyOnlineReturnReasonCategoryInfo(o[0]);
  checkReturnPolicyOnlineReturnReasonCategoryInfo(o[1]);
}

core.int buildCounterReturnPolicyOnline = 0;
api.ReturnPolicyOnline buildReturnPolicyOnline() {
  final o = api.ReturnPolicyOnline();
  buildCounterReturnPolicyOnline++;
  if (buildCounterReturnPolicyOnline < 3) {
    o.countries = buildUnnamed189();
    o.itemConditions = buildUnnamed190();
    o.label = 'foo';
    o.name = 'foo';
    o.policy = buildReturnPolicyOnlinePolicy();
    o.restockingFee = buildReturnPolicyOnlineRestockingFee();
    o.returnMethods = buildUnnamed191();
    o.returnPolicyId = 'foo';
    o.returnPolicyUri = 'foo';
    o.returnReasonCategoryInfo = buildUnnamed192();
  }
  buildCounterReturnPolicyOnline--;
  return o;
}

void checkReturnPolicyOnline(api.ReturnPolicyOnline o) {
  buildCounterReturnPolicyOnline++;
  if (buildCounterReturnPolicyOnline < 3) {
    checkUnnamed189(o.countries!);
    checkUnnamed190(o.itemConditions!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkReturnPolicyOnlinePolicy(o.policy!);
    checkReturnPolicyOnlineRestockingFee(o.restockingFee!);
    checkUnnamed191(o.returnMethods!);
    unittest.expect(
      o.returnPolicyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnPolicyUri!,
      unittest.equals('foo'),
    );
    checkUnnamed192(o.returnReasonCategoryInfo!);
  }
  buildCounterReturnPolicyOnline--;
}

core.int buildCounterReturnPolicyOnlinePolicy = 0;
api.ReturnPolicyOnlinePolicy buildReturnPolicyOnlinePolicy() {
  final o = api.ReturnPolicyOnlinePolicy();
  buildCounterReturnPolicyOnlinePolicy++;
  if (buildCounterReturnPolicyOnlinePolicy < 3) {
    o.days = 'foo';
    o.type = 'foo';
  }
  buildCounterReturnPolicyOnlinePolicy--;
  return o;
}

void checkReturnPolicyOnlinePolicy(api.ReturnPolicyOnlinePolicy o) {
  buildCounterReturnPolicyOnlinePolicy++;
  if (buildCounterReturnPolicyOnlinePolicy < 3) {
    unittest.expect(
      o.days!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnPolicyOnlinePolicy--;
}

core.int buildCounterReturnPolicyOnlineRestockingFee = 0;
api.ReturnPolicyOnlineRestockingFee buildReturnPolicyOnlineRestockingFee() {
  final o = api.ReturnPolicyOnlineRestockingFee();
  buildCounterReturnPolicyOnlineRestockingFee++;
  if (buildCounterReturnPolicyOnlineRestockingFee < 3) {
    o.fixedFee = buildPriceAmount();
    o.microPercent = 42;
  }
  buildCounterReturnPolicyOnlineRestockingFee--;
  return o;
}

void checkReturnPolicyOnlineRestockingFee(
    api.ReturnPolicyOnlineRestockingFee o) {
  buildCounterReturnPolicyOnlineRestockingFee++;
  if (buildCounterReturnPolicyOnlineRestockingFee < 3) {
    checkPriceAmount(o.fixedFee!);
    unittest.expect(
      o.microPercent!,
      unittest.equals(42),
    );
  }
  buildCounterReturnPolicyOnlineRestockingFee--;
}

core.int buildCounterReturnPolicyOnlineReturnReasonCategoryInfo = 0;
api.ReturnPolicyOnlineReturnReasonCategoryInfo
    buildReturnPolicyOnlineReturnReasonCategoryInfo() {
  final o = api.ReturnPolicyOnlineReturnReasonCategoryInfo();
  buildCounterReturnPolicyOnlineReturnReasonCategoryInfo++;
  if (buildCounterReturnPolicyOnlineReturnReasonCategoryInfo < 3) {
    o.returnLabelSource = 'foo';
    o.returnReasonCategory = 'foo';
    o.returnShippingFee = buildReturnPolicyOnlineReturnShippingFee();
  }
  buildCounterReturnPolicyOnlineReturnReasonCategoryInfo--;
  return o;
}

void checkReturnPolicyOnlineReturnReasonCategoryInfo(
    api.ReturnPolicyOnlineReturnReasonCategoryInfo o) {
  buildCounterReturnPolicyOnlineReturnReasonCategoryInfo++;
  if (buildCounterReturnPolicyOnlineReturnReasonCategoryInfo < 3) {
    unittest.expect(
      o.returnLabelSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnReasonCategory!,
      unittest.equals('foo'),
    );
    checkReturnPolicyOnlineReturnShippingFee(o.returnShippingFee!);
  }
  buildCounterReturnPolicyOnlineReturnReasonCategoryInfo--;
}

core.int buildCounterReturnPolicyOnlineReturnShippingFee = 0;
api.ReturnPolicyOnlineReturnShippingFee
    buildReturnPolicyOnlineReturnShippingFee() {
  final o = api.ReturnPolicyOnlineReturnShippingFee();
  buildCounterReturnPolicyOnlineReturnShippingFee++;
  if (buildCounterReturnPolicyOnlineReturnShippingFee < 3) {
    o.fixedFee = buildPriceAmount();
    o.type = 'foo';
  }
  buildCounterReturnPolicyOnlineReturnShippingFee--;
  return o;
}

void checkReturnPolicyOnlineReturnShippingFee(
    api.ReturnPolicyOnlineReturnShippingFee o) {
  buildCounterReturnPolicyOnlineReturnShippingFee++;
  if (buildCounterReturnPolicyOnlineReturnShippingFee < 3) {
    checkPriceAmount(o.fixedFee!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnPolicyOnlineReturnShippingFee--;
}

core.int buildCounterReturnPolicyPolicy = 0;
api.ReturnPolicyPolicy buildReturnPolicyPolicy() {
  final o = api.ReturnPolicyPolicy();
  buildCounterReturnPolicyPolicy++;
  if (buildCounterReturnPolicyPolicy < 3) {
    o.lastReturnDate = 'foo';
    o.numberOfDays = 'foo';
    o.type = 'foo';
  }
  buildCounterReturnPolicyPolicy--;
  return o;
}

void checkReturnPolicyPolicy(api.ReturnPolicyPolicy o) {
  buildCounterReturnPolicyPolicy++;
  if (buildCounterReturnPolicyPolicy < 3) {
    unittest.expect(
      o.lastReturnDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numberOfDays!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnPolicyPolicy--;
}

core.int buildCounterReturnPolicySeasonalOverride = 0;
api.ReturnPolicySeasonalOverride buildReturnPolicySeasonalOverride() {
  final o = api.ReturnPolicySeasonalOverride();
  buildCounterReturnPolicySeasonalOverride++;
  if (buildCounterReturnPolicySeasonalOverride < 3) {
    o.endDate = 'foo';
    o.name = 'foo';
    o.policy = buildReturnPolicyPolicy();
    o.startDate = 'foo';
  }
  buildCounterReturnPolicySeasonalOverride--;
  return o;
}

void checkReturnPolicySeasonalOverride(api.ReturnPolicySeasonalOverride o) {
  buildCounterReturnPolicySeasonalOverride++;
  if (buildCounterReturnPolicySeasonalOverride < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkReturnPolicyPolicy(o.policy!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnPolicySeasonalOverride--;
}

core.List<api.ReturnaddressCustomBatchRequestEntry> buildUnnamed193() => [
      buildReturnaddressCustomBatchRequestEntry(),
      buildReturnaddressCustomBatchRequestEntry(),
    ];

void checkUnnamed193(core.List<api.ReturnaddressCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchRequestEntry(o[0]);
  checkReturnaddressCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchRequest = 0;
api.ReturnaddressCustomBatchRequest buildReturnaddressCustomBatchRequest() {
  final o = api.ReturnaddressCustomBatchRequest();
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    o.entries = buildUnnamed193();
  }
  buildCounterReturnaddressCustomBatchRequest--;
  return o;
}

void checkReturnaddressCustomBatchRequest(
    api.ReturnaddressCustomBatchRequest o) {
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    checkUnnamed193(o.entries!);
  }
  buildCounterReturnaddressCustomBatchRequest--;
}

core.int buildCounterReturnaddressCustomBatchRequestEntry = 0;
api.ReturnaddressCustomBatchRequestEntry
    buildReturnaddressCustomBatchRequestEntry() {
  final o = api.ReturnaddressCustomBatchRequestEntry();
  buildCounterReturnaddressCustomBatchRequestEntry++;
  if (buildCounterReturnaddressCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = 'foo';
    o.method = 'foo';
    o.returnAddress = buildReturnAddress();
    o.returnAddressId = 'foo';
  }
  buildCounterReturnaddressCustomBatchRequestEntry--;
  return o;
}

void checkReturnaddressCustomBatchRequestEntry(
    api.ReturnaddressCustomBatchRequestEntry o) {
  buildCounterReturnaddressCustomBatchRequestEntry++;
  if (buildCounterReturnaddressCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkReturnAddress(o.returnAddress!);
    unittest.expect(
      o.returnAddressId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnaddressCustomBatchRequestEntry--;
}

core.List<api.ReturnaddressCustomBatchResponseEntry> buildUnnamed194() => [
      buildReturnaddressCustomBatchResponseEntry(),
      buildReturnaddressCustomBatchResponseEntry(),
    ];

void checkUnnamed194(core.List<api.ReturnaddressCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchResponseEntry(o[0]);
  checkReturnaddressCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchResponse = 0;
api.ReturnaddressCustomBatchResponse buildReturnaddressCustomBatchResponse() {
  final o = api.ReturnaddressCustomBatchResponse();
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    o.entries = buildUnnamed194();
    o.kind = 'foo';
  }
  buildCounterReturnaddressCustomBatchResponse--;
  return o;
}

void checkReturnaddressCustomBatchResponse(
    api.ReturnaddressCustomBatchResponse o) {
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    checkUnnamed194(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnaddressCustomBatchResponse--;
}

core.int buildCounterReturnaddressCustomBatchResponseEntry = 0;
api.ReturnaddressCustomBatchResponseEntry
    buildReturnaddressCustomBatchResponseEntry() {
  final o = api.ReturnaddressCustomBatchResponseEntry();
  buildCounterReturnaddressCustomBatchResponseEntry++;
  if (buildCounterReturnaddressCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
    o.returnAddress = buildReturnAddress();
  }
  buildCounterReturnaddressCustomBatchResponseEntry--;
  return o;
}

void checkReturnaddressCustomBatchResponseEntry(
    api.ReturnaddressCustomBatchResponseEntry o) {
  buildCounterReturnaddressCustomBatchResponseEntry++;
  if (buildCounterReturnaddressCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkReturnAddress(o.returnAddress!);
  }
  buildCounterReturnaddressCustomBatchResponseEntry--;
}

core.List<api.ReturnAddress> buildUnnamed195() => [
      buildReturnAddress(),
      buildReturnAddress(),
    ];

void checkUnnamed195(core.List<api.ReturnAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnAddress(o[0]);
  checkReturnAddress(o[1]);
}

core.int buildCounterReturnaddressListResponse = 0;
api.ReturnaddressListResponse buildReturnaddressListResponse() {
  final o = api.ReturnaddressListResponse();
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed195();
  }
  buildCounterReturnaddressListResponse--;
  return o;
}

void checkReturnaddressListResponse(api.ReturnaddressListResponse o) {
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed195(o.resources!);
  }
  buildCounterReturnaddressListResponse--;
}

core.List<api.ReturnpolicyCustomBatchRequestEntry> buildUnnamed196() => [
      buildReturnpolicyCustomBatchRequestEntry(),
      buildReturnpolicyCustomBatchRequestEntry(),
    ];

void checkUnnamed196(core.List<api.ReturnpolicyCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchRequestEntry(o[0]);
  checkReturnpolicyCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchRequest = 0;
api.ReturnpolicyCustomBatchRequest buildReturnpolicyCustomBatchRequest() {
  final o = api.ReturnpolicyCustomBatchRequest();
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    o.entries = buildUnnamed196();
  }
  buildCounterReturnpolicyCustomBatchRequest--;
  return o;
}

void checkReturnpolicyCustomBatchRequest(api.ReturnpolicyCustomBatchRequest o) {
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    checkUnnamed196(o.entries!);
  }
  buildCounterReturnpolicyCustomBatchRequest--;
}

core.int buildCounterReturnpolicyCustomBatchRequestEntry = 0;
api.ReturnpolicyCustomBatchRequestEntry
    buildReturnpolicyCustomBatchRequestEntry() {
  final o = api.ReturnpolicyCustomBatchRequestEntry();
  buildCounterReturnpolicyCustomBatchRequestEntry++;
  if (buildCounterReturnpolicyCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = 'foo';
    o.method = 'foo';
    o.returnPolicy = buildReturnPolicy();
    o.returnPolicyId = 'foo';
  }
  buildCounterReturnpolicyCustomBatchRequestEntry--;
  return o;
}

void checkReturnpolicyCustomBatchRequestEntry(
    api.ReturnpolicyCustomBatchRequestEntry o) {
  buildCounterReturnpolicyCustomBatchRequestEntry++;
  if (buildCounterReturnpolicyCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkReturnPolicy(o.returnPolicy!);
    unittest.expect(
      o.returnPolicyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnpolicyCustomBatchRequestEntry--;
}

core.List<api.ReturnpolicyCustomBatchResponseEntry> buildUnnamed197() => [
      buildReturnpolicyCustomBatchResponseEntry(),
      buildReturnpolicyCustomBatchResponseEntry(),
    ];

void checkUnnamed197(core.List<api.ReturnpolicyCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchResponseEntry(o[0]);
  checkReturnpolicyCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchResponse = 0;
api.ReturnpolicyCustomBatchResponse buildReturnpolicyCustomBatchResponse() {
  final o = api.ReturnpolicyCustomBatchResponse();
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    o.entries = buildUnnamed197();
    o.kind = 'foo';
  }
  buildCounterReturnpolicyCustomBatchResponse--;
  return o;
}

void checkReturnpolicyCustomBatchResponse(
    api.ReturnpolicyCustomBatchResponse o) {
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    checkUnnamed197(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnpolicyCustomBatchResponse--;
}

core.int buildCounterReturnpolicyCustomBatchResponseEntry = 0;
api.ReturnpolicyCustomBatchResponseEntry
    buildReturnpolicyCustomBatchResponseEntry() {
  final o = api.ReturnpolicyCustomBatchResponseEntry();
  buildCounterReturnpolicyCustomBatchResponseEntry++;
  if (buildCounterReturnpolicyCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
    o.returnPolicy = buildReturnPolicy();
  }
  buildCounterReturnpolicyCustomBatchResponseEntry--;
  return o;
}

void checkReturnpolicyCustomBatchResponseEntry(
    api.ReturnpolicyCustomBatchResponseEntry o) {
  buildCounterReturnpolicyCustomBatchResponseEntry++;
  if (buildCounterReturnpolicyCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkReturnPolicy(o.returnPolicy!);
  }
  buildCounterReturnpolicyCustomBatchResponseEntry--;
}

core.List<api.ReturnPolicy> buildUnnamed198() => [
      buildReturnPolicy(),
      buildReturnPolicy(),
    ];

void checkUnnamed198(core.List<api.ReturnPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicy(o[0]);
  checkReturnPolicy(o[1]);
}

core.int buildCounterReturnpolicyListResponse = 0;
api.ReturnpolicyListResponse buildReturnpolicyListResponse() {
  final o = api.ReturnpolicyListResponse();
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    o.kind = 'foo';
    o.resources = buildUnnamed198();
  }
  buildCounterReturnpolicyListResponse--;
  return o;
}

void checkReturnpolicyListResponse(api.ReturnpolicyListResponse o) {
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed198(o.resources!);
  }
  buildCounterReturnpolicyListResponse--;
}

core.List<api.Value> buildUnnamed199() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed199(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed199();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed199(o.cells!);
  }
  buildCounterRow--;
}

core.int buildCounterSearchRequest = 0;
api.SearchRequest buildSearchRequest() {
  final o = api.SearchRequest();
  buildCounterSearchRequest++;
  if (buildCounterSearchRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
  }
  buildCounterSearchRequest--;
  return o;
}

void checkSearchRequest(api.SearchRequest o) {
  buildCounterSearchRequest++;
  if (buildCounterSearchRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchRequest--;
}

core.List<api.ReportRow> buildUnnamed200() => [
      buildReportRow(),
      buildReportRow(),
    ];

void checkUnnamed200(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0]);
  checkReportRow(o[1]);
}

core.int buildCounterSearchResponse = 0;
api.SearchResponse buildSearchResponse() {
  final o = api.SearchResponse();
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed200();
  }
  buildCounterSearchResponse--;
  return o;
}

void checkSearchResponse(api.SearchResponse o) {
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed200(o.results!);
  }
  buildCounterSearchResponse--;
}

core.int buildCounterSegments = 0;
api.Segments buildSegments() {
  final o = api.Segments();
  buildCounterSegments++;
  if (buildCounterSegments < 3) {
    o.brand = 'foo';
    o.categoryL1 = 'foo';
    o.categoryL2 = 'foo';
    o.categoryL3 = 'foo';
    o.categoryL4 = 'foo';
    o.categoryL5 = 'foo';
    o.currencyCode = 'foo';
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.customerCountryCode = 'foo';
    o.date = buildDate();
    o.offerId = 'foo';
    o.productTypeL1 = 'foo';
    o.productTypeL2 = 'foo';
    o.productTypeL3 = 'foo';
    o.productTypeL4 = 'foo';
    o.productTypeL5 = 'foo';
    o.program = 'foo';
    o.title = 'foo';
    o.week = buildDate();
  }
  buildCounterSegments--;
  return o;
}

void checkSegments(api.Segments o) {
  buildCounterSegments++;
  if (buildCounterSegments < 3) {
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryL5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel0!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customLabel4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerCountryCode!,
      unittest.equals('foo'),
    );
    checkDate(o.date!);
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL4!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productTypeL5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.program!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkDate(o.week!);
  }
  buildCounterSegments--;
}

core.List<api.RateGroup> buildUnnamed201() => [
      buildRateGroup(),
      buildRateGroup(),
    ];

void checkUnnamed201(core.List<api.RateGroup> o) {
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
    o.currency = 'foo';
    o.deliveryCountry = 'foo';
    o.deliveryTime = buildDeliveryTime();
    o.eligibility = 'foo';
    o.minimumOrderValue = buildPrice();
    o.minimumOrderValueTable = buildMinimumOrderValueTable();
    o.name = 'foo';
    o.pickupService = buildPickupCarrierService();
    o.rateGroups = buildUnnamed201();
    o.shipmentType = 'foo';
    o.storeConfig = buildServiceStoreConfig();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryCountry!,
      unittest.equals('foo'),
    );
    checkDeliveryTime(o.deliveryTime!);
    unittest.expect(
      o.eligibility!,
      unittest.equals('foo'),
    );
    checkPrice(o.minimumOrderValue!);
    checkMinimumOrderValueTable(o.minimumOrderValueTable!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPickupCarrierService(o.pickupService!);
    checkUnnamed201(o.rateGroups!);
    unittest.expect(
      o.shipmentType!,
      unittest.equals('foo'),
    );
    checkServiceStoreConfig(o.storeConfig!);
  }
  buildCounterService--;
}

core.List<core.String> buildUnnamed202() => [
      'foo',
      'foo',
    ];

void checkUnnamed202(core.List<core.String> o) {
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

core.int buildCounterServiceStoreConfig = 0;
api.ServiceStoreConfig buildServiceStoreConfig() {
  final o = api.ServiceStoreConfig();
  buildCounterServiceStoreConfig++;
  if (buildCounterServiceStoreConfig < 3) {
    o.cutoffConfig = buildServiceStoreConfigCutoffConfig();
    o.serviceRadius = buildDistance();
    o.storeCodes = buildUnnamed202();
    o.storeServiceType = 'foo';
  }
  buildCounterServiceStoreConfig--;
  return o;
}

void checkServiceStoreConfig(api.ServiceStoreConfig o) {
  buildCounterServiceStoreConfig++;
  if (buildCounterServiceStoreConfig < 3) {
    checkServiceStoreConfigCutoffConfig(o.cutoffConfig!);
    checkDistance(o.serviceRadius!);
    checkUnnamed202(o.storeCodes!);
    unittest.expect(
      o.storeServiceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceStoreConfig--;
}

core.int buildCounterServiceStoreConfigCutoffConfig = 0;
api.ServiceStoreConfigCutoffConfig buildServiceStoreConfigCutoffConfig() {
  final o = api.ServiceStoreConfigCutoffConfig();
  buildCounterServiceStoreConfigCutoffConfig++;
  if (buildCounterServiceStoreConfigCutoffConfig < 3) {
    o.localCutoffTime = buildServiceStoreConfigCutoffConfigLocalCutoffTime();
    o.noDeliveryPostCutoff = true;
    o.storeCloseOffsetHours = 'foo';
  }
  buildCounterServiceStoreConfigCutoffConfig--;
  return o;
}

void checkServiceStoreConfigCutoffConfig(api.ServiceStoreConfigCutoffConfig o) {
  buildCounterServiceStoreConfigCutoffConfig++;
  if (buildCounterServiceStoreConfigCutoffConfig < 3) {
    checkServiceStoreConfigCutoffConfigLocalCutoffTime(o.localCutoffTime!);
    unittest.expect(o.noDeliveryPostCutoff!, unittest.isTrue);
    unittest.expect(
      o.storeCloseOffsetHours!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceStoreConfigCutoffConfig--;
}

core.int buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime = 0;
api.ServiceStoreConfigCutoffConfigLocalCutoffTime
    buildServiceStoreConfigCutoffConfigLocalCutoffTime() {
  final o = api.ServiceStoreConfigCutoffConfigLocalCutoffTime();
  buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime++;
  if (buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime < 3) {
    o.hour = 'foo';
    o.minute = 'foo';
  }
  buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime--;
  return o;
}

void checkServiceStoreConfigCutoffConfigLocalCutoffTime(
    api.ServiceStoreConfigCutoffConfigLocalCutoffTime o) {
  buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime++;
  if (buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime < 3) {
    unittest.expect(
      o.hour!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minute!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceStoreConfigCutoffConfigLocalCutoffTime--;
}

core.List<api.PostalCodeGroup> buildUnnamed203() => [
      buildPostalCodeGroup(),
      buildPostalCodeGroup(),
    ];

void checkUnnamed203(core.List<api.PostalCodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeGroup(o[0]);
  checkPostalCodeGroup(o[1]);
}

core.List<api.Service> buildUnnamed204() => [
      buildService(),
      buildService(),
    ];

void checkUnnamed204(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<api.Warehouse> buildUnnamed205() => [
      buildWarehouse(),
      buildWarehouse(),
    ];

void checkUnnamed205(core.List<api.Warehouse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarehouse(o[0]);
  checkWarehouse(o[1]);
}

core.int buildCounterShippingSettings = 0;
api.ShippingSettings buildShippingSettings() {
  final o = api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.accountId = 'foo';
    o.postalCodeGroups = buildUnnamed203();
    o.services = buildUnnamed204();
    o.warehouses = buildUnnamed205();
  }
  buildCounterShippingSettings--;
  return o;
}

void checkShippingSettings(api.ShippingSettings o) {
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed203(o.postalCodeGroups!);
    checkUnnamed204(o.services!);
    checkUnnamed205(o.warehouses!);
  }
  buildCounterShippingSettings--;
}

core.List<api.ShippingsettingsCustomBatchRequestEntry> buildUnnamed206() => [
      buildShippingsettingsCustomBatchRequestEntry(),
      buildShippingsettingsCustomBatchRequestEntry(),
    ];

void checkUnnamed206(core.List<api.ShippingsettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchRequestEntry(o[0]);
  checkShippingsettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchRequest = 0;
api.ShippingsettingsCustomBatchRequest
    buildShippingsettingsCustomBatchRequest() {
  final o = api.ShippingsettingsCustomBatchRequest();
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed206();
  }
  buildCounterShippingsettingsCustomBatchRequest--;
  return o;
}

void checkShippingsettingsCustomBatchRequest(
    api.ShippingsettingsCustomBatchRequest o) {
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    checkUnnamed206(o.entries!);
  }
  buildCounterShippingsettingsCustomBatchRequest--;
}

core.int buildCounterShippingsettingsCustomBatchRequestEntry = 0;
api.ShippingsettingsCustomBatchRequestEntry
    buildShippingsettingsCustomBatchRequestEntry() {
  final o = api.ShippingsettingsCustomBatchRequestEntry();
  buildCounterShippingsettingsCustomBatchRequestEntry++;
  if (buildCounterShippingsettingsCustomBatchRequestEntry < 3) {
    o.accountId = 'foo';
    o.batchId = 42;
    o.merchantId = 'foo';
    o.method = 'foo';
    o.shippingSettings = buildShippingSettings();
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
  return o;
}

void checkShippingsettingsCustomBatchRequestEntry(
    api.ShippingsettingsCustomBatchRequestEntry o) {
  buildCounterShippingsettingsCustomBatchRequestEntry++;
  if (buildCounterShippingsettingsCustomBatchRequestEntry < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    checkShippingSettings(o.shippingSettings!);
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
}

core.List<api.ShippingsettingsCustomBatchResponseEntry> buildUnnamed207() => [
      buildShippingsettingsCustomBatchResponseEntry(),
      buildShippingsettingsCustomBatchResponseEntry(),
    ];

void checkUnnamed207(
    core.List<api.ShippingsettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchResponseEntry(o[0]);
  checkShippingsettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchResponse = 0;
api.ShippingsettingsCustomBatchResponse
    buildShippingsettingsCustomBatchResponse() {
  final o = api.ShippingsettingsCustomBatchResponse();
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed207();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsCustomBatchResponse--;
  return o;
}

void checkShippingsettingsCustomBatchResponse(
    api.ShippingsettingsCustomBatchResponse o) {
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    checkUnnamed207(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterShippingsettingsCustomBatchResponse--;
}

core.int buildCounterShippingsettingsCustomBatchResponseEntry = 0;
api.ShippingsettingsCustomBatchResponseEntry
    buildShippingsettingsCustomBatchResponseEntry() {
  final o = api.ShippingsettingsCustomBatchResponseEntry();
  buildCounterShippingsettingsCustomBatchResponseEntry++;
  if (buildCounterShippingsettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = 'foo';
    o.shippingSettings = buildShippingSettings();
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
  return o;
}

void checkShippingsettingsCustomBatchResponseEntry(
    api.ShippingsettingsCustomBatchResponseEntry o) {
  buildCounterShippingsettingsCustomBatchResponseEntry++;
  if (buildCounterShippingsettingsCustomBatchResponseEntry < 3) {
    unittest.expect(
      o.batchId!,
      unittest.equals(42),
    );
    checkErrors(o.errors!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkShippingSettings(o.shippingSettings!);
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
}

core.List<api.CarriersCarrier> buildUnnamed208() => [
      buildCarriersCarrier(),
      buildCarriersCarrier(),
    ];

void checkUnnamed208(core.List<api.CarriersCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarriersCarrier(o[0]);
  checkCarriersCarrier(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedCarriersResponse = 0;
api.ShippingsettingsGetSupportedCarriersResponse
    buildShippingsettingsGetSupportedCarriersResponse() {
  final o = api.ShippingsettingsGetSupportedCarriersResponse();
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    o.carriers = buildUnnamed208();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
  return o;
}

void checkShippingsettingsGetSupportedCarriersResponse(
    api.ShippingsettingsGetSupportedCarriersResponse o) {
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    checkUnnamed208(o.carriers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
}

core.List<api.HolidaysHoliday> buildUnnamed209() => [
      buildHolidaysHoliday(),
      buildHolidaysHoliday(),
    ];

void checkUnnamed209(core.List<api.HolidaysHoliday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidaysHoliday(o[0]);
  checkHolidaysHoliday(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedHolidaysResponse = 0;
api.ShippingsettingsGetSupportedHolidaysResponse
    buildShippingsettingsGetSupportedHolidaysResponse() {
  final o = api.ShippingsettingsGetSupportedHolidaysResponse();
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    o.holidays = buildUnnamed209();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
  return o;
}

void checkShippingsettingsGetSupportedHolidaysResponse(
    api.ShippingsettingsGetSupportedHolidaysResponse o) {
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    checkUnnamed209(o.holidays!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
}

core.List<api.PickupServicesPickupService> buildUnnamed210() => [
      buildPickupServicesPickupService(),
      buildPickupServicesPickupService(),
    ];

void checkUnnamed210(core.List<api.PickupServicesPickupService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPickupServicesPickupService(o[0]);
  checkPickupServicesPickupService(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedPickupServicesResponse = 0;
api.ShippingsettingsGetSupportedPickupServicesResponse
    buildShippingsettingsGetSupportedPickupServicesResponse() {
  final o = api.ShippingsettingsGetSupportedPickupServicesResponse();
  buildCounterShippingsettingsGetSupportedPickupServicesResponse++;
  if (buildCounterShippingsettingsGetSupportedPickupServicesResponse < 3) {
    o.kind = 'foo';
    o.pickupServices = buildUnnamed210();
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
  return o;
}

void checkShippingsettingsGetSupportedPickupServicesResponse(
    api.ShippingsettingsGetSupportedPickupServicesResponse o) {
  buildCounterShippingsettingsGetSupportedPickupServicesResponse++;
  if (buildCounterShippingsettingsGetSupportedPickupServicesResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed210(o.pickupServices!);
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
}

core.List<api.ShippingSettings> buildUnnamed211() => [
      buildShippingSettings(),
      buildShippingSettings(),
    ];

void checkUnnamed211(core.List<api.ShippingSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingSettings(o[0]);
  checkShippingSettings(o[1]);
}

core.int buildCounterShippingsettingsListResponse = 0;
api.ShippingsettingsListResponse buildShippingsettingsListResponse() {
  final o = api.ShippingsettingsListResponse();
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed211();
  }
  buildCounterShippingsettingsListResponse--;
  return o;
}

void checkShippingsettingsListResponse(api.ShippingsettingsListResponse o) {
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed211(o.resources!);
  }
  buildCounterShippingsettingsListResponse--;
}

core.List<api.ShoppingAdsProgramStatusRegionStatus> buildUnnamed212() => [
      buildShoppingAdsProgramStatusRegionStatus(),
      buildShoppingAdsProgramStatusRegionStatus(),
    ];

void checkUnnamed212(core.List<api.ShoppingAdsProgramStatusRegionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShoppingAdsProgramStatusRegionStatus(o[0]);
  checkShoppingAdsProgramStatusRegionStatus(o[1]);
}

core.int buildCounterShoppingAdsProgramStatus = 0;
api.ShoppingAdsProgramStatus buildShoppingAdsProgramStatus() {
  final o = api.ShoppingAdsProgramStatus();
  buildCounterShoppingAdsProgramStatus++;
  if (buildCounterShoppingAdsProgramStatus < 3) {
    o.globalState = 'foo';
    o.regionStatuses = buildUnnamed212();
  }
  buildCounterShoppingAdsProgramStatus--;
  return o;
}

void checkShoppingAdsProgramStatus(api.ShoppingAdsProgramStatus o) {
  buildCounterShoppingAdsProgramStatus++;
  if (buildCounterShoppingAdsProgramStatus < 3) {
    unittest.expect(
      o.globalState!,
      unittest.equals('foo'),
    );
    checkUnnamed212(o.regionStatuses!);
  }
  buildCounterShoppingAdsProgramStatus--;
}

core.List<core.String> buildUnnamed213() => [
      'foo',
      'foo',
    ];

void checkUnnamed213(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed214() => [
      'foo',
      'foo',
    ];

void checkUnnamed214(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed215() => [
      'foo',
      'foo',
    ];

void checkUnnamed215(core.List<core.String> o) {
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

core.int buildCounterShoppingAdsProgramStatusRegionStatus = 0;
api.ShoppingAdsProgramStatusRegionStatus
    buildShoppingAdsProgramStatusRegionStatus() {
  final o = api.ShoppingAdsProgramStatusRegionStatus();
  buildCounterShoppingAdsProgramStatusRegionStatus++;
  if (buildCounterShoppingAdsProgramStatusRegionStatus < 3) {
    o.disapprovalDate = 'foo';
    o.eligibilityStatus = 'foo';
    o.onboardingIssues = buildUnnamed213();
    o.regionCodes = buildUnnamed214();
    o.reviewEligibilityStatus = 'foo';
    o.reviewIneligibilityReason = 'foo';
    o.reviewIneligibilityReasonDescription = 'foo';
    o.reviewIneligibilityReasonDetails =
        buildShoppingAdsProgramStatusReviewIneligibilityReasonDetails();
    o.reviewIssues = buildUnnamed215();
  }
  buildCounterShoppingAdsProgramStatusRegionStatus--;
  return o;
}

void checkShoppingAdsProgramStatusRegionStatus(
    api.ShoppingAdsProgramStatusRegionStatus o) {
  buildCounterShoppingAdsProgramStatusRegionStatus++;
  if (buildCounterShoppingAdsProgramStatusRegionStatus < 3) {
    unittest.expect(
      o.disapprovalDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eligibilityStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed213(o.onboardingIssues!);
    checkUnnamed214(o.regionCodes!);
    unittest.expect(
      o.reviewEligibilityStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewIneligibilityReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewIneligibilityReasonDescription!,
      unittest.equals('foo'),
    );
    checkShoppingAdsProgramStatusReviewIneligibilityReasonDetails(
        o.reviewIneligibilityReasonDetails!);
    checkUnnamed215(o.reviewIssues!);
  }
  buildCounterShoppingAdsProgramStatusRegionStatus--;
}

core.int buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails =
    0;
api.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
    buildShoppingAdsProgramStatusReviewIneligibilityReasonDetails() {
  final o = api.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails();
  buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails++;
  if (buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails <
      3) {
    o.cooldownTime = 'foo';
  }
  buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails--;
  return o;
}

void checkShoppingAdsProgramStatusReviewIneligibilityReasonDetails(
    api.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails o) {
  buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails++;
  if (buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails <
      3) {
    unittest.expect(
      o.cooldownTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterShoppingAdsProgramStatusReviewIneligibilityReasonDetails--;
}

core.List<api.Row> buildUnnamed216() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed216(core.List<api.Row> o) {
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
    o.rows = buildUnnamed216();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkHeaders(o.columnHeaders!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkHeaders(o.rowHeaders!);
    checkUnnamed216(o.rows!);
  }
  buildCounterTable--;
}

core.int buildCounterTextWithTooltip = 0;
api.TextWithTooltip buildTextWithTooltip() {
  final o = api.TextWithTooltip();
  buildCounterTextWithTooltip++;
  if (buildCounterTextWithTooltip < 3) {
    o.simpleTooltipValue = 'foo';
    o.simpleValue = 'foo';
    o.tooltipIconStyle = 'foo';
  }
  buildCounterTextWithTooltip--;
  return o;
}

void checkTextWithTooltip(api.TextWithTooltip o) {
  buildCounterTextWithTooltip++;
  if (buildCounterTextWithTooltip < 3) {
    unittest.expect(
      o.simpleTooltipValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.simpleValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tooltipIconStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextWithTooltip--;
}

core.int buildCounterTimePeriod = 0;
api.TimePeriod buildTimePeriod() {
  final o = api.TimePeriod();
  buildCounterTimePeriod++;
  if (buildCounterTimePeriod < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimePeriod--;
  return o;
}

void checkTimePeriod(api.TimePeriod o) {
  buildCounterTimePeriod++;
  if (buildCounterTimePeriod < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimePeriod--;
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

core.int buildCounterTopicTrends = 0;
api.TopicTrends buildTopicTrends() {
  final o = api.TopicTrends();
  buildCounterTopicTrends++;
  if (buildCounterTopicTrends < 3) {
    o.customerCountryCode = 'foo';
    o.date = buildDate();
    o.last120DaysSearchInterest = 42.0;
    o.last30DaysSearchInterest = 42.0;
    o.last7DaysSearchInterest = 42.0;
    o.last90DaysSearchInterest = 42.0;
    o.next7DaysSearchInterest = 42.0;
    o.searchInterest = 42.0;
    o.topic = 'foo';
  }
  buildCounterTopicTrends--;
  return o;
}

void checkTopicTrends(api.TopicTrends o) {
  buildCounterTopicTrends++;
  if (buildCounterTopicTrends < 3) {
    unittest.expect(
      o.customerCountryCode!,
      unittest.equals('foo'),
    );
    checkDate(o.date!);
    unittest.expect(
      o.last120DaysSearchInterest!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.last30DaysSearchInterest!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.last7DaysSearchInterest!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.last90DaysSearchInterest!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.next7DaysSearchInterest!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.searchInterest!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterTopicTrends--;
}

core.List<core.String> buildUnnamed217() => [
      'foo',
      'foo',
    ];

void checkUnnamed217(core.List<core.String> o) {
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

core.List<api.TransitTableTransitTimeRow> buildUnnamed218() => [
      buildTransitTableTransitTimeRow(),
      buildTransitTableTransitTimeRow(),
    ];

void checkUnnamed218(core.List<api.TransitTableTransitTimeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRow(o[0]);
  checkTransitTableTransitTimeRow(o[1]);
}

core.List<core.String> buildUnnamed219() => [
      'foo',
      'foo',
    ];

void checkUnnamed219(core.List<core.String> o) {
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

core.int buildCounterTransitTable = 0;
api.TransitTable buildTransitTable() {
  final o = api.TransitTable();
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    o.postalCodeGroupNames = buildUnnamed217();
    o.rows = buildUnnamed218();
    o.transitTimeLabels = buildUnnamed219();
  }
  buildCounterTransitTable--;
  return o;
}

void checkTransitTable(api.TransitTable o) {
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    checkUnnamed217(o.postalCodeGroupNames!);
    checkUnnamed218(o.rows!);
    checkUnnamed219(o.transitTimeLabels!);
  }
  buildCounterTransitTable--;
}

core.List<api.TransitTableTransitTimeRowTransitTimeValue> buildUnnamed220() => [
      buildTransitTableTransitTimeRowTransitTimeValue(),
      buildTransitTableTransitTimeRowTransitTimeValue(),
    ];

void checkUnnamed220(
    core.List<api.TransitTableTransitTimeRowTransitTimeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRowTransitTimeValue(o[0]);
  checkTransitTableTransitTimeRowTransitTimeValue(o[1]);
}

core.int buildCounterTransitTableTransitTimeRow = 0;
api.TransitTableTransitTimeRow buildTransitTableTransitTimeRow() {
  final o = api.TransitTableTransitTimeRow();
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    o.values = buildUnnamed220();
  }
  buildCounterTransitTableTransitTimeRow--;
  return o;
}

void checkTransitTableTransitTimeRow(api.TransitTableTransitTimeRow o) {
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    checkUnnamed220(o.values!);
  }
  buildCounterTransitTableTransitTimeRow--;
}

core.int buildCounterTransitTableTransitTimeRowTransitTimeValue = 0;
api.TransitTableTransitTimeRowTransitTimeValue
    buildTransitTableTransitTimeRowTransitTimeValue() {
  final o = api.TransitTableTransitTimeRowTransitTimeValue();
  buildCounterTransitTableTransitTimeRowTransitTimeValue++;
  if (buildCounterTransitTableTransitTimeRowTransitTimeValue < 3) {
    o.maxTransitTimeInDays = 42;
    o.minTransitTimeInDays = 42;
  }
  buildCounterTransitTableTransitTimeRowTransitTimeValue--;
  return o;
}

void checkTransitTableTransitTimeRowTransitTimeValue(
    api.TransitTableTransitTimeRowTransitTimeValue o) {
  buildCounterTransitTableTransitTimeRowTransitTimeValue++;
  if (buildCounterTransitTableTransitTimeRowTransitTimeValue < 3) {
    unittest.expect(
      o.maxTransitTimeInDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minTransitTimeInDays!,
      unittest.equals(42),
    );
  }
  buildCounterTransitTableTransitTimeRowTransitTimeValue--;
}

core.int buildCounterTriggerActionPayload = 0;
api.TriggerActionPayload buildTriggerActionPayload() {
  final o = api.TriggerActionPayload();
  buildCounterTriggerActionPayload++;
  if (buildCounterTriggerActionPayload < 3) {
    o.actionContext = 'foo';
    o.actionInput = buildActionInput();
  }
  buildCounterTriggerActionPayload--;
  return o;
}

void checkTriggerActionPayload(api.TriggerActionPayload o) {
  buildCounterTriggerActionPayload++;
  if (buildCounterTriggerActionPayload < 3) {
    unittest.expect(
      o.actionContext!,
      unittest.equals('foo'),
    );
    checkActionInput(o.actionInput!);
  }
  buildCounterTriggerActionPayload--;
}

core.int buildCounterTriggerActionResponse = 0;
api.TriggerActionResponse buildTriggerActionResponse() {
  final o = api.TriggerActionResponse();
  buildCounterTriggerActionResponse++;
  if (buildCounterTriggerActionResponse < 3) {
    o.message = 'foo';
  }
  buildCounterTriggerActionResponse--;
  return o;
}

void checkTriggerActionResponse(api.TriggerActionResponse o) {
  buildCounterTriggerActionResponse++;
  if (buildCounterTriggerActionResponse < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterTriggerActionResponse--;
}

core.int buildCounterUndeleteConversionSourceRequest = 0;
api.UndeleteConversionSourceRequest buildUndeleteConversionSourceRequest() {
  final o = api.UndeleteConversionSourceRequest();
  buildCounterUndeleteConversionSourceRequest++;
  if (buildCounterUndeleteConversionSourceRequest < 3) {}
  buildCounterUndeleteConversionSourceRequest--;
  return o;
}

void checkUndeleteConversionSourceRequest(
    api.UndeleteConversionSourceRequest o) {
  buildCounterUndeleteConversionSourceRequest++;
  if (buildCounterUndeleteConversionSourceRequest < 3) {}
  buildCounterUndeleteConversionSourceRequest--;
}

core.int buildCounterUrlSettings = 0;
api.UrlSettings buildUrlSettings() {
  final o = api.UrlSettings();
  buildCounterUrlSettings++;
  if (buildCounterUrlSettings < 3) {
    o.cartUriTemplate = 'foo';
    o.checkoutUriTemplate = 'foo';
  }
  buildCounterUrlSettings--;
  return o;
}

void checkUrlSettings(api.UrlSettings o) {
  buildCounterUrlSettings++;
  if (buildCounterUrlSettings < 3) {
    unittest.expect(
      o.cartUriTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.checkoutUriTemplate!,
      unittest.equals('foo'),
    );
  }
  buildCounterUrlSettings--;
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  final o = api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.carrierRateName = 'foo';
    o.flatRate = buildPrice();
    o.noShipping = true;
    o.pricePercentage = 'foo';
    o.subtableName = 'foo';
  }
  buildCounterValue--;
  return o;
}

void checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(
      o.carrierRateName!,
      unittest.equals('foo'),
    );
    checkPrice(o.flatRate!);
    unittest.expect(o.noShipping!, unittest.isTrue);
    unittest.expect(
      o.pricePercentage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterValue--;
}

core.int buildCounterVerifyPhoneNumberRequest = 0;
api.VerifyPhoneNumberRequest buildVerifyPhoneNumberRequest() {
  final o = api.VerifyPhoneNumberRequest();
  buildCounterVerifyPhoneNumberRequest++;
  if (buildCounterVerifyPhoneNumberRequest < 3) {
    o.phoneVerificationMethod = 'foo';
    o.verificationCode = 'foo';
    o.verificationId = 'foo';
  }
  buildCounterVerifyPhoneNumberRequest--;
  return o;
}

void checkVerifyPhoneNumberRequest(api.VerifyPhoneNumberRequest o) {
  buildCounterVerifyPhoneNumberRequest++;
  if (buildCounterVerifyPhoneNumberRequest < 3) {
    unittest.expect(
      o.phoneVerificationMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyPhoneNumberRequest--;
}

core.int buildCounterVerifyPhoneNumberResponse = 0;
api.VerifyPhoneNumberResponse buildVerifyPhoneNumberResponse() {
  final o = api.VerifyPhoneNumberResponse();
  buildCounterVerifyPhoneNumberResponse++;
  if (buildCounterVerifyPhoneNumberResponse < 3) {
    o.verifiedPhoneNumber = 'foo';
  }
  buildCounterVerifyPhoneNumberResponse--;
  return o;
}

void checkVerifyPhoneNumberResponse(api.VerifyPhoneNumberResponse o) {
  buildCounterVerifyPhoneNumberResponse++;
  if (buildCounterVerifyPhoneNumberResponse < 3) {
    unittest.expect(
      o.verifiedPhoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyPhoneNumberResponse--;
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
    unittest.expect(
      o.handlingDays!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    o.originAdministrativeArea = 'foo';
    o.originCity = 'foo';
    o.originCountry = 'foo';
    o.originPostalCode = 'foo';
    o.originStreetAddress = 'foo';
    o.warehouseName = 'foo';
  }
  buildCounterWarehouseBasedDeliveryTime--;
  return o;
}

void checkWarehouseBasedDeliveryTime(api.WarehouseBasedDeliveryTime o) {
  buildCounterWarehouseBasedDeliveryTime++;
  if (buildCounterWarehouseBasedDeliveryTime < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originAdministrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originCity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originPostalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originStreetAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.warehouseName!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.hour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minute!,
      unittest.equals(42),
    );
  }
  buildCounterWarehouseCutoffTime--;
}

core.int buildCounterWeight = 0;
api.Weight buildWeight() {
  final o = api.Weight();
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    o.unit = 'foo';
    o.value = 'foo';
  }
  buildCounterWeight--;
  return o;
}

void checkWeight(api.Weight o) {
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterWeight--;
}

core.List<core.String> buildUnnamed221() => [
      'foo',
      'foo',
    ];

void checkUnnamed221(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed222() => [
      'foo',
      'foo',
    ];

void checkUnnamed222(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed223() => [
      'foo',
      'foo',
    ];

void checkUnnamed223(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed224() => [
      'foo',
      'foo',
    ];

void checkUnnamed224(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed225() => [
      'foo',
      'foo',
    ];

void checkUnnamed225(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed226() => [
      'foo',
      'foo',
    ];

void checkUnnamed226(core.List<core.String> o) {
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
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountAddress(od);
    });
  });

  unittest.group('obj-schema-AccountAdsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountAdsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountAdsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountAdsLink(od);
    });
  });

  unittest.group('obj-schema-AccountAutomaticImprovements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountAutomaticImprovements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountAutomaticImprovements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountAutomaticImprovements(od);
    });
  });

  unittest.group('obj-schema-AccountBusinessIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountBusinessIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountBusinessIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountBusinessIdentity(od);
    });
  });

  unittest.group('obj-schema-AccountBusinessInformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountBusinessInformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountBusinessInformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountBusinessInformation(od);
    });
  });

  unittest.group('obj-schema-AccountConversionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountConversionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountConversionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountConversionSettings(od);
    });
  });

  unittest.group('obj-schema-AccountCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountCredentials(od);
    });
  });

  unittest.group('obj-schema-AccountCustomerService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountCustomerService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountCustomerService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountCustomerService(od);
    });
  });

  unittest.group('obj-schema-AccountGoogleMyBusinessLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountGoogleMyBusinessLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountGoogleMyBusinessLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountGoogleMyBusinessLink(od);
    });
  });

  unittest.group('obj-schema-AccountIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountIdentifier(od);
    });
  });

  unittest.group('obj-schema-AccountIdentityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountIdentityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountIdentityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountIdentityType(od);
    });
  });

  unittest.group('obj-schema-AccountImageImprovements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountImageImprovements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountImageImprovements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountImageImprovements(od);
    });
  });

  unittest.group('obj-schema-AccountImageImprovementsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountImageImprovementsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountImageImprovementsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountImageImprovementsSettings(od);
    });
  });

  unittest.group('obj-schema-AccountIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountIssue(od);
    });
  });

  unittest.group('obj-schema-AccountIssueImpact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountIssueImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountIssueImpact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountIssueImpact(od);
    });
  });

  unittest.group('obj-schema-AccountItemUpdates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountItemUpdates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountItemUpdates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountItemUpdates(od);
    });
  });

  unittest.group('obj-schema-AccountItemUpdatesSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountItemUpdatesSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountItemUpdatesSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountItemUpdatesSettings(od);
    });
  });

  unittest.group('obj-schema-AccountLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountLabel(od);
    });
  });

  unittest.group('obj-schema-AccountReturnCarrier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountReturnCarrier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountReturnCarrier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountReturnCarrier(od);
    });
  });

  unittest.group('obj-schema-AccountShippingImprovements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountShippingImprovements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountShippingImprovements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountShippingImprovements(od);
    });
  });

  unittest.group('obj-schema-AccountStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountStatus(od);
    });
  });

  unittest.group('obj-schema-AccountStatusAccountLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountStatusAccountLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountStatusAccountLevelIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountStatusAccountLevelIssue(od);
    });
  });

  unittest.group('obj-schema-AccountStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountStatusItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountStatusItemLevelIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountStatusItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-AccountStatusProducts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountStatusProducts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountStatusProducts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountStatusProducts(od);
    });
  });

  unittest.group('obj-schema-AccountStatusStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountStatusStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountStatusStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountStatusStatistics(od);
    });
  });

  unittest.group('obj-schema-AccountTax', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountTax();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AccountTax.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccountTax(od);
    });
  });

  unittest.group('obj-schema-AccountTaxTaxRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountTaxTaxRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountTaxTaxRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountTaxTaxRule(od);
    });
  });

  unittest.group('obj-schema-AccountUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountUser(od);
    });
  });

  unittest.group('obj-schema-AccountYouTubeChannelLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountYouTubeChannelLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountYouTubeChannelLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountYouTubeChannelLink(od);
    });
  });

  unittest.group('obj-schema-AccountsAuthInfoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsAuthInfoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsAuthInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsAuthInfoResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsClaimWebsiteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsClaimWebsiteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsClaimWebsiteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsClaimWebsiteResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequestEntryLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsCustomBatchRequestEntryLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsCustomBatchRequestEntryLinkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsCustomBatchRequestEntryLinkRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-AccountsLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsLinkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsLinkRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsLinkResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsLinkResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsLinkResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsLinkResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsListLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsListLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsListLinksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsListLinksResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsUpdateLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsUpdateLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsUpdateLabelsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsUpdateLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsUpdateLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountsUpdateLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountsUpdateLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountsUpdateLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountstatusesCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountstatusesCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountstatusesCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountstatusesCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountstatusesCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountstatusesCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountstatusesCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountstatusesCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountstatusesCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountstatusesCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountstatusesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountstatusesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountstatusesListResponse(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounttaxCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccounttaxCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccounttaxCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounttaxCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccounttaxCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccounttaxCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounttaxCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccounttaxCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccounttaxCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounttaxCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccounttaxCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccounttaxCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-AccounttaxListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounttaxListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccounttaxListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccounttaxListResponse(od);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Action.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAction(od);
    });
  });

  unittest.group('obj-schema-ActionFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ActionFlow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActionFlow(od);
    });
  });

  unittest.group('obj-schema-ActionInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionInput(od);
    });
  });

  unittest.group('obj-schema-ActionReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionReason(od);
    });
  });

  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Address.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAddress(od);
    });
  });

  unittest.group('obj-schema-AlternateDisputeResolution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlternateDisputeResolution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlternateDisputeResolution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlternateDisputeResolution(od);
    });
  });

  unittest.group('obj-schema-AttributionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttributionSettings(od);
    });
  });

  unittest.group('obj-schema-AttributionSettingsConversionType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributionSettingsConversionType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributionSettingsConversionType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttributionSettingsConversionType(od);
    });
  });

  unittest.group('obj-schema-BestSellers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBestSellers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BestSellers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBestSellers(od);
    });
  });

  unittest.group('obj-schema-Brand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Brand.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBrand(od);
    });
  });

  unittest.group('obj-schema-Breakdown', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBreakdown();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Breakdown.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBreakdown(od);
    });
  });

  unittest.group('obj-schema-BreakdownRegion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBreakdownRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BreakdownRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBreakdownRegion(od);
    });
  });

  unittest.group('obj-schema-BuiltInSimpleAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltInSimpleAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuiltInSimpleAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuiltInSimpleAction(od);
    });
  });

  unittest.group('obj-schema-BuiltInSimpleActionAdditionalContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltInSimpleActionAdditionalContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuiltInSimpleActionAdditionalContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuiltInSimpleActionAdditionalContent(od);
    });
  });

  unittest.group('obj-schema-BuiltInUserInputAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltInUserInputAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuiltInUserInputAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuiltInUserInputAction(od);
    });
  });

  unittest.group('obj-schema-BusinessDayConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessDayConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessDayConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBusinessDayConfig(od);
    });
  });

  unittest.group('obj-schema-Callout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Callout.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCallout(od);
    });
  });

  unittest.group('obj-schema-CarrierRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCarrierRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CarrierRate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCarrierRate(od);
    });
  });

  unittest.group('obj-schema-CarriersCarrier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCarriersCarrier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CarriersCarrier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCarriersCarrier(od);
    });
  });

  unittest.group('obj-schema-CheckoutSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckoutSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckoutSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckoutSettings(od);
    });
  });

  unittest.group('obj-schema-CloudExportAdditionalProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudExportAdditionalProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudExportAdditionalProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudExportAdditionalProperties(od);
    });
  });

  unittest.group('obj-schema-Collection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Collection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCollection(od);
    });
  });

  unittest.group('obj-schema-CollectionFeaturedProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionFeaturedProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionFeaturedProduct.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionFeaturedProduct(od);
    });
  });

  unittest.group('obj-schema-CollectionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionStatus(od);
    });
  });

  unittest.group('obj-schema-CollectionStatusDestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionStatusDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionStatusDestinationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionStatusDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-CollectionStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectionStatusItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectionStatusItemLevelIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionStatusItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-CompetitiveVisibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompetitiveVisibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompetitiveVisibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompetitiveVisibility(od);
    });
  });

  unittest.group('obj-schema-ConversionSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionSource(od);
    });
  });

  unittest.group('obj-schema-Css', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCss();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Css.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCss(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-CutoffTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCutoffTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CutoffTime.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCutoffTime(od);
    });
  });

  unittest.group('obj-schema-Datafeed', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeed();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Datafeed.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDatafeed(od);
    });
  });

  unittest.group('obj-schema-DatafeedFetchSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedFetchSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedFetchSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedFetchSchedule(od);
    });
  });

  unittest.group('obj-schema-DatafeedFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedFormat(od);
    });
  });

  unittest.group('obj-schema-DatafeedStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedStatus(od);
    });
  });

  unittest.group('obj-schema-DatafeedStatusError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedStatusError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedStatusError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedStatusError(od);
    });
  });

  unittest.group('obj-schema-DatafeedStatusExample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedStatusExample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedStatusExample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedStatusExample(od);
    });
  });

  unittest.group('obj-schema-DatafeedTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedTarget(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedsCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedsCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedsCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedsCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedsCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedsCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedsCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedsCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedsFetchNowResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedsFetchNowResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedsFetchNowResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedsFetchNowResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedsListResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedstatusesCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedstatusesCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedstatusesCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedstatusesCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedstatusesCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedstatusesCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedstatusesCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedstatusesCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedstatusesCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedstatusesCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatafeedstatusesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatafeedstatusesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatafeedstatusesListResponse(od);
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

  unittest.group('obj-schema-DateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DateTime.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDateTime(od);
    });
  });

  unittest.group('obj-schema-DeliveryArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryArea.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryArea(od);
    });
  });

  unittest.group('obj-schema-DeliveryAreaPostalCodeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryAreaPostalCodeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryAreaPostalCodeRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryAreaPostalCodeRange(od);
    });
  });

  unittest.group('obj-schema-DeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-Distance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Distance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDistance(od);
    });
  });

  unittest.group('obj-schema-ECommercePlatformLinkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildECommercePlatformLinkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ECommercePlatformLinkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkECommercePlatformLinkInfo(od);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () async {
      final o = buildError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Error.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkError(od);
    });
  });

  unittest.group('obj-schema-Errors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Errors.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrors(od);
    });
  });

  unittest.group('obj-schema-ExternalAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalAction(od);
    });
  });

  unittest.group('obj-schema-FreeListingsProgramStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreeListingsProgramStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeListingsProgramStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreeListingsProgramStatus(od);
    });
  });

  unittest.group('obj-schema-FreeListingsProgramStatusRegionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreeListingsProgramStatusRegionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeListingsProgramStatusRegionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreeListingsProgramStatusRegionStatus(od);
    });
  });

  unittest.group(
      'obj-schema-FreeListingsProgramStatusReviewIneligibilityReasonDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildFreeListingsProgramStatusReviewIneligibilityReasonDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeListingsProgramStatusReviewIneligibilityReasonDetails
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFreeListingsProgramStatusReviewIneligibilityReasonDetails(od);
    });
  });

  unittest.group('obj-schema-FreeShippingThreshold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreeShippingThreshold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeShippingThreshold.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreeShippingThreshold(od);
    });
  });

  unittest.group('obj-schema-GenerateRecommendationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateRecommendationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateRecommendationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateRecommendationsResponse(od);
    });
  });

  unittest.group('obj-schema-GmbAccounts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGmbAccounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GmbAccounts.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGmbAccounts(od);
    });
  });

  unittest.group('obj-schema-GmbAccountsGmbAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGmbAccountsGmbAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GmbAccountsGmbAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGmbAccountsGmbAccount(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsLink(od);
    });
  });

  unittest.group('obj-schema-Headers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Headers.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHeaders(od);
    });
  });

  unittest.group('obj-schema-HolidayCutoff', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHolidayCutoff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HolidayCutoff.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHolidayCutoff(od);
    });
  });

  unittest.group('obj-schema-HolidaysHoliday', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHolidaysHoliday();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HolidaysHoliday.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHolidaysHoliday(od);
    });
  });

  unittest.group('obj-schema-InputField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.InputField.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInputField(od);
    });
  });

  unittest.group('obj-schema-InputFieldCheckboxInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputFieldCheckboxInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputFieldCheckboxInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputFieldCheckboxInput(od);
    });
  });

  unittest.group('obj-schema-InputFieldChoiceInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputFieldChoiceInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputFieldChoiceInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputFieldChoiceInput(od);
    });
  });

  unittest.group('obj-schema-InputFieldChoiceInputChoiceInputOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputFieldChoiceInputChoiceInputOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputFieldChoiceInputChoiceInputOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputFieldChoiceInputChoiceInputOption(od);
    });
  });

  unittest.group('obj-schema-InputFieldTextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputFieldTextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputFieldTextInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputFieldTextInput(od);
    });
  });

  unittest.group('obj-schema-InputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.InputValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInputValue(od);
    });
  });

  unittest.group('obj-schema-InputValueCheckboxInputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputValueCheckboxInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputValueCheckboxInputValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputValueCheckboxInputValue(od);
    });
  });

  unittest.group('obj-schema-InputValueChoiceInputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputValueChoiceInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputValueChoiceInputValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputValueChoiceInputValue(od);
    });
  });

  unittest.group('obj-schema-InputValueTextInputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputValueTextInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputValueTextInputValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputValueTextInputValue(od);
    });
  });

  unittest.group('obj-schema-InsertCheckoutSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertCheckoutSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertCheckoutSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertCheckoutSettingsRequest(od);
    });
  });

  unittest.group('obj-schema-Installment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Installment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallment(od);
    });
  });

  unittest.group('obj-schema-LabelIds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelIds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LabelIds.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabelIds(od);
    });
  });

  unittest.group('obj-schema-LiaAboutPageSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaAboutPageSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaAboutPageSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaAboutPageSettings(od);
    });
  });

  unittest.group('obj-schema-LiaCountrySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaCountrySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaCountrySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaCountrySettings(od);
    });
  });

  unittest.group('obj-schema-LiaInventorySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaInventorySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaInventorySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaInventorySettings(od);
    });
  });

  unittest.group('obj-schema-LiaOmnichannelExperience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaOmnichannelExperience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaOmnichannelExperience.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaOmnichannelExperience(od);
    });
  });

  unittest.group('obj-schema-LiaOnDisplayToOrderSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaOnDisplayToOrderSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaOnDisplayToOrderSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaOnDisplayToOrderSettings(od);
    });
  });

  unittest.group('obj-schema-LiaPosDataProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaPosDataProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaPosDataProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaPosDataProvider(od);
    });
  });

  unittest.group('obj-schema-LiaSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiaSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiaSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiaSettings(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-LiasettingsGetAccessibleGmbAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsGetAccessibleGmbAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsGetAccessibleGmbAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsGetAccessibleGmbAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsListPosDataProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsListPosDataProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsListPosDataProvidersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsListPosDataProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsListResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsRequestGmbAccessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsRequestGmbAccessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsRequestGmbAccessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsRequestGmbAccessResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsRequestInventoryVerificationResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsRequestInventoryVerificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsRequestInventoryVerificationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsRequestInventoryVerificationResponse(od);
    });
  });

  unittest.group(
      'obj-schema-LiasettingsSetInventoryVerificationContactResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsSetInventoryVerificationContactResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LiasettingsSetInventoryVerificationContactResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsSetInventoryVerificationContactResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsSetPosDataProviderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLiasettingsSetPosDataProviderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LiasettingsSetPosDataProviderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLiasettingsSetPosDataProviderResponse(od);
    });
  });

  unittest.group('obj-schema-LinkService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkService(od);
    });
  });

  unittest.group('obj-schema-LinkedAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedAccount(od);
    });
  });

  unittest.group('obj-schema-ListAccountLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccountReturnCarrierResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountReturnCarrierResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountReturnCarrierResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountReturnCarrierResponse(od);
    });
  });

  unittest.group('obj-schema-ListCollectionStatusesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCollectionStatusesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCollectionStatusesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCollectionStatusesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCollectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCollectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCollectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCollectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConversionSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConversionSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConversionSourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConversionSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCssesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCssesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCssesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCssesResponse(od);
    });
  });

  unittest.group('obj-schema-ListMethodQuotasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMethodQuotasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMethodQuotasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMethodQuotasResponse(od);
    });
  });

  unittest.group('obj-schema-ListPromotionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPromotionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPromotionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPromotionResponse(od);
    });
  });

  unittest.group('obj-schema-ListRegionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRegionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRegionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRegionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReturnPolicyOnlineResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReturnPolicyOnlineResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReturnPolicyOnlineResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReturnPolicyOnlineResponse(od);
    });
  });

  unittest.group('obj-schema-LocalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalInventory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalInventory(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalinventoryCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalinventoryCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalinventoryCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalinventoryCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalinventoryCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalinventoryCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalinventoryCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalinventoryCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalinventoryCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalinventoryCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalinventoryCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalinventoryCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-LocationIdSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationIdSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationIdSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationIdSet(od);
    });
  });

  unittest.group('obj-schema-LoyaltyProgram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyProgram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyProgram.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoyaltyProgram(od);
    });
  });

  unittest.group('obj-schema-MerchantCenterDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantCenterDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantCenterDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMerchantCenterDestination(od);
    });
  });

  unittest.group('obj-schema-MethodQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethodQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MethodQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMethodQuota(od);
    });
  });

  unittest.group('obj-schema-Metrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metrics.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetrics(od);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMinimumOrderValueTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MinimumOrderValueTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMinimumOrderValueTable(od);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTableStoreCodeSetWithMov', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMinimumOrderValueTableStoreCodeSetWithMov();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MinimumOrderValueTableStoreCodeSetWithMov.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMinimumOrderValueTableStoreCodeSetWithMov(od);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderTrackingSignal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderTrackingSignal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderTrackingSignal(od);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignalLineItemDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderTrackingSignalLineItemDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderTrackingSignalLineItemDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderTrackingSignalLineItemDetails(od);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignalShipmentLineItemMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderTrackingSignalShipmentLineItemMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderTrackingSignalShipmentLineItemMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderTrackingSignalShipmentLineItemMapping(od);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignalShippingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderTrackingSignalShippingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderTrackingSignalShippingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderTrackingSignalShippingInfo(od);
    });
  });

  unittest.group('obj-schema-PaymentServiceProviderLinkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPaymentServiceProviderLinkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PaymentServiceProviderLinkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPaymentServiceProviderLinkInfo(od);
    });
  });

  unittest.group('obj-schema-PickupCarrierService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPickupCarrierService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PickupCarrierService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPickupCarrierService(od);
    });
  });

  unittest.group('obj-schema-PickupServicesPickupService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPickupServicesPickupService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PickupServicesPickupService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPickupServicesPickupService(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-PosDataProviders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosDataProviders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosDataProviders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosDataProviders(od);
    });
  });

  unittest.group('obj-schema-PosDataProvidersPosDataProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosDataProvidersPosDataProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosDataProvidersPosDataProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosDataProvidersPosDataProvider(od);
    });
  });

  unittest.group('obj-schema-PosInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosInventory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosInventory(od);
    });
  });

  unittest.group('obj-schema-PosInventoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosInventoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosInventoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosInventoryRequest(od);
    });
  });

  unittest.group('obj-schema-PosInventoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosInventoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosInventoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosInventoryResponse(od);
    });
  });

  unittest.group('obj-schema-PosListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosListResponse(od);
    });
  });

  unittest.group('obj-schema-PosSale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosSale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PosSale.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPosSale(od);
    });
  });

  unittest.group('obj-schema-PosSaleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosSaleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosSaleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosSaleRequest(od);
    });
  });

  unittest.group('obj-schema-PosSaleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosSaleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosSaleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosSaleResponse(od);
    });
  });

  unittest.group('obj-schema-PosStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PosStore.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPosStore(od);
    });
  });

  unittest.group('obj-schema-PostalCodeGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalCodeGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalCodeGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalCodeGroup(od);
    });
  });

  unittest.group('obj-schema-PostalCodeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalCodeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalCodeRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalCodeRange(od);
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

  unittest.group('obj-schema-PriceAmount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPriceAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PriceAmount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPriceAmount(od);
    });
  });

  unittest.group('obj-schema-PriceCompetitiveness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPriceCompetitiveness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PriceCompetitiveness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPriceCompetitiveness(od);
    });
  });

  unittest.group('obj-schema-PriceInsights', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPriceInsights();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PriceInsights.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPriceInsights(od);
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

  unittest.group('obj-schema-ProductCertification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductCertification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductCertification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductCertification(od);
    });
  });

  unittest.group('obj-schema-ProductCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductCluster(od);
    });
  });

  unittest.group('obj-schema-ProductDeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-ProductDeliveryTimeAreaDeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDeliveryTimeAreaDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDeliveryTimeAreaDeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductDeliveryTimeAreaDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-ProductDeliveryTimeAreaDeliveryTimeDeliveryTime',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDeliveryTimeAreaDeliveryTimeDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDeliveryTimeAreaDeliveryTimeDeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductDeliveryTimeAreaDeliveryTimeDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-ProductDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductDimension(od);
    });
  });

  unittest.group('obj-schema-ProductId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ProductId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProductId(od);
    });
  });

  unittest.group('obj-schema-ProductIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductIssue(od);
    });
  });

  unittest.group('obj-schema-ProductIssueImpact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductIssueImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductIssueImpact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductIssueImpact(od);
    });
  });

  unittest.group('obj-schema-ProductProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductProductDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductProductDetail(od);
    });
  });

  unittest.group('obj-schema-ProductShipping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductShipping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductShipping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductShipping(od);
    });
  });

  unittest.group('obj-schema-ProductShippingDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductShippingDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductShippingDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductShippingDimension(od);
    });
  });

  unittest.group('obj-schema-ProductShippingWeight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductShippingWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductShippingWeight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductShippingWeight(od);
    });
  });

  unittest.group('obj-schema-ProductStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductStatus(od);
    });
  });

  unittest.group('obj-schema-ProductStatusDestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductStatusDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductStatusDestinationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductStatusDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-ProductStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductStatusItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductStatusItemLevelIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductStatusItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ProductStructuredDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductStructuredDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductStructuredDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductStructuredDescription(od);
    });
  });

  unittest.group('obj-schema-ProductStructuredTitle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductStructuredTitle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductStructuredTitle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductStructuredTitle(od);
    });
  });

  unittest.group('obj-schema-ProductSubscriptionCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSubscriptionCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSubscriptionCost.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSubscriptionCost(od);
    });
  });

  unittest.group('obj-schema-ProductSustainabilityIncentive', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSustainabilityIncentive();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSustainabilityIncentive.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSustainabilityIncentive(od);
    });
  });

  unittest.group('obj-schema-ProductTax', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductTax();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ProductTax.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProductTax(od);
    });
  });

  unittest.group('obj-schema-ProductUnitPricingBaseMeasure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductUnitPricingBaseMeasure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductUnitPricingBaseMeasure.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductUnitPricingBaseMeasure(od);
    });
  });

  unittest.group('obj-schema-ProductUnitPricingMeasure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductUnitPricingMeasure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductUnitPricingMeasure.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductUnitPricingMeasure(od);
    });
  });

  unittest.group('obj-schema-ProductView', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductView();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductView.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductView(od);
    });
  });

  unittest.group('obj-schema-ProductViewItemIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductViewItemIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductViewItemIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductViewItemIssue(od);
    });
  });

  unittest.group('obj-schema-ProductViewItemIssueIssueSeverityPerDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductViewItemIssueIssueSeverityPerDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductViewItemIssueIssueSeverityPerDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductViewItemIssueIssueSeverityPerDestination(od);
    });
  });

  unittest.group('obj-schema-ProductViewItemIssueItemIssueSeverity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductViewItemIssueItemIssueSeverity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductViewItemIssueItemIssueSeverity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductViewItemIssueItemIssueSeverity(od);
    });
  });

  unittest.group('obj-schema-ProductViewItemIssueItemIssueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductViewItemIssueItemIssueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductViewItemIssueItemIssueType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductViewItemIssueItemIssueType(od);
    });
  });

  unittest.group('obj-schema-ProductWeight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductWeight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductWeight(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ProductsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsListResponse(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductstatusesCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductstatusesCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductstatusesCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductstatusesCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductstatusesCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductstatusesCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductstatusesCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductstatusesCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductstatusesCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductstatusesCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductstatusesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductstatusesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductstatusesListResponse(od);
    });
  });

  unittest.group('obj-schema-Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Promotion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPromotion(od);
    });
  });

  unittest.group('obj-schema-PromotionPromotionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionPromotionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionPromotionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPromotionPromotionStatus(od);
    });
  });

  unittest.group('obj-schema-PromotionPromotionStatusDestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionPromotionStatusDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionPromotionStatusDestinationStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPromotionPromotionStatusDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-PromotionPromotionStatusPromotionIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionPromotionStatusPromotionIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionPromotionStatusPromotionIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPromotionPromotionStatusPromotionIssue(od);
    });
  });

  unittest.group('obj-schema-PubsubNotificationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubNotificationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubNotificationSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubNotificationSettings(od);
    });
  });

  unittest.group('obj-schema-RateGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRateGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RateGroup.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRateGroup(od);
    });
  });

  unittest.group('obj-schema-Recommendation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecommendation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Recommendation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecommendation(od);
    });
  });

  unittest.group('obj-schema-RecommendationCallToAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecommendationCallToAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecommendationCallToAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecommendationCallToAction(od);
    });
  });

  unittest.group('obj-schema-RecommendationCreative', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecommendationCreative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecommendationCreative.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecommendationCreative(od);
    });
  });

  unittest.group('obj-schema-RecommendationDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecommendationDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecommendationDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecommendationDescription(od);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Region.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRegion(od);
    });
  });

  unittest.group('obj-schema-RegionGeoTargetArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionGeoTargetArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionGeoTargetArea.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionGeoTargetArea(od);
    });
  });

  unittest.group('obj-schema-RegionPostalCodeArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionPostalCodeArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionPostalCodeArea.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionPostalCodeArea(od);
    });
  });

  unittest.group('obj-schema-RegionPostalCodeAreaPostalCodeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionPostalCodeAreaPostalCodeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionPostalCodeAreaPostalCodeRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionPostalCodeAreaPostalCodeRange(od);
    });
  });

  unittest.group('obj-schema-RegionalInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalInventory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalInventory(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalinventoryCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalinventoryCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalinventoryCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalinventoryCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalinventoryCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalinventoryCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalinventoryCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalinventoryCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalinventoryCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalinventoryCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalinventoryCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalinventoryCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-RenderAccountIssuesRequestPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderAccountIssuesRequestPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderAccountIssuesRequestPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenderAccountIssuesRequestPayload(od);
    });
  });

  unittest.group('obj-schema-RenderAccountIssuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderAccountIssuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderAccountIssuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenderAccountIssuesResponse(od);
    });
  });

  unittest.group('obj-schema-RenderProductIssuesRequestPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderProductIssuesRequestPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderProductIssuesRequestPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenderProductIssuesRequestPayload(od);
    });
  });

  unittest.group('obj-schema-RenderProductIssuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderProductIssuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderProductIssuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenderProductIssuesResponse(od);
    });
  });

  unittest.group('obj-schema-ReportInteractionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportInteractionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportInteractionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportInteractionRequest(od);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-RequestPhoneVerificationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestPhoneVerificationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestPhoneVerificationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestPhoneVerificationRequest(od);
    });
  });

  unittest.group('obj-schema-RequestPhoneVerificationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestPhoneVerificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestPhoneVerificationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestPhoneVerificationResponse(od);
    });
  });

  unittest.group('obj-schema-RequestReviewFreeListingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestReviewFreeListingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestReviewFreeListingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestReviewFreeListingsRequest(od);
    });
  });

  unittest.group('obj-schema-RequestReviewShoppingAdsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestReviewShoppingAdsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestReviewShoppingAdsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestReviewShoppingAdsRequest(od);
    });
  });

  unittest.group('obj-schema-ReturnAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnAddress(od);
    });
  });

  unittest.group('obj-schema-ReturnAddressAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnAddressAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnAddressAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnAddressAddress(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicy(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyOnline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicyOnline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicyOnline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicyOnline(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyOnlinePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicyOnlinePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicyOnlinePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicyOnlinePolicy(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyOnlineRestockingFee', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicyOnlineRestockingFee();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicyOnlineRestockingFee.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicyOnlineRestockingFee(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyOnlineReturnReasonCategoryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicyOnlineReturnReasonCategoryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicyOnlineReturnReasonCategoryInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicyOnlineReturnReasonCategoryInfo(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyOnlineReturnShippingFee', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicyOnlineReturnShippingFee();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicyOnlineReturnShippingFee.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicyOnlineReturnShippingFee(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicyPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicyPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicyPolicy(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicySeasonalOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPolicySeasonalOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPolicySeasonalOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPolicySeasonalOverride(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnaddressCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnaddressCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnaddressCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnaddressCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnaddressCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnaddressCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnaddressCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnaddressCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnaddressCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnaddressCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnaddressCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnaddressCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnaddressListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnaddressListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnaddressListResponse(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnpolicyCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnpolicyCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnpolicyCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnpolicyCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnpolicyCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnpolicyCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnpolicyCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnpolicyCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnpolicyCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnpolicyCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnpolicyCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnpolicyCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnpolicyListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnpolicyListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnpolicyListResponse(od);
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

  unittest.group('obj-schema-SearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchRequest(od);
    });
  });

  unittest.group('obj-schema-SearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchResponse(od);
    });
  });

  unittest.group('obj-schema-Segments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Segments.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSegments(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Service.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkService(od);
    });
  });

  unittest.group('obj-schema-ServiceStoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceStoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceStoreConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceStoreConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceStoreConfigCutoffConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceStoreConfigCutoffConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceStoreConfigCutoffConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceStoreConfigCutoffConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceStoreConfigCutoffConfigLocalCutoffTime',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceStoreConfigCutoffConfigLocalCutoffTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceStoreConfigCutoffConfigLocalCutoffTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceStoreConfigCutoffConfigLocalCutoffTime(od);
    });
  });

  unittest.group('obj-schema-ShippingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingSettings(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsCustomBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsCustomBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsCustomBatchRequestEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsCustomBatchRequestEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsCustomBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsCustomBatchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsCustomBatchResponseEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsCustomBatchResponseEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsGetSupportedCarriersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsGetSupportedCarriersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsGetSupportedCarriersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsGetSupportedCarriersResponse(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsGetSupportedHolidaysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsGetSupportedHolidaysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsGetSupportedHolidaysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsGetSupportedHolidaysResponse(od);
    });
  });

  unittest.group(
      'obj-schema-ShippingsettingsGetSupportedPickupServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsGetSupportedPickupServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ShippingsettingsGetSupportedPickupServicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsGetSupportedPickupServicesResponse(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShippingsettingsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShippingsettingsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShippingsettingsListResponse(od);
    });
  });

  unittest.group('obj-schema-ShoppingAdsProgramStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShoppingAdsProgramStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShoppingAdsProgramStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShoppingAdsProgramStatus(od);
    });
  });

  unittest.group('obj-schema-ShoppingAdsProgramStatusRegionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShoppingAdsProgramStatusRegionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShoppingAdsProgramStatusRegionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShoppingAdsProgramStatusRegionStatus(od);
    });
  });

  unittest.group(
      'obj-schema-ShoppingAdsProgramStatusReviewIneligibilityReasonDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildShoppingAdsProgramStatusReviewIneligibilityReasonDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkShoppingAdsProgramStatusReviewIneligibilityReasonDetails(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TextWithTooltip', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextWithTooltip();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextWithTooltip.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextWithTooltip(od);
    });
  });

  unittest.group('obj-schema-TimePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimePeriod.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimePeriod(od);
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

  unittest.group('obj-schema-TopicTrends', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopicTrends();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TopicTrends.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTopicTrends(od);
    });
  });

  unittest.group('obj-schema-TransitTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransitTable(od);
    });
  });

  unittest.group('obj-schema-TransitTableTransitTimeRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitTableTransitTimeRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitTableTransitTimeRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransitTableTransitTimeRow(od);
    });
  });

  unittest.group('obj-schema-TransitTableTransitTimeRowTransitTimeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitTableTransitTimeRowTransitTimeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitTableTransitTimeRowTransitTimeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransitTableTransitTimeRowTransitTimeValue(od);
    });
  });

  unittest.group('obj-schema-TriggerActionPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggerActionPayload(od);
    });
  });

  unittest.group('obj-schema-TriggerActionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggerActionResponse(od);
    });
  });

  unittest.group('obj-schema-UndeleteConversionSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteConversionSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteConversionSourceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteConversionSourceRequest(od);
    });
  });

  unittest.group('obj-schema-UrlSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUrlSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UrlSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUrlSettings(od);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Value.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkValue(od);
    });
  });

  unittest.group('obj-schema-VerifyPhoneNumberRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyPhoneNumberRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyPhoneNumberRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyPhoneNumberRequest(od);
    });
  });

  unittest.group('obj-schema-VerifyPhoneNumberResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyPhoneNumberResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyPhoneNumberResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyPhoneNumberResponse(od);
    });
  });

  unittest.group('obj-schema-Warehouse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Warehouse.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWarehouse(od);
    });
  });

  unittest.group('obj-schema-WarehouseBasedDeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouseBasedDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarehouseBasedDeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWarehouseBasedDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-WarehouseCutoffTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouseCutoffTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarehouseCutoffTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWarehouseCutoffTime(od);
    });
  });

  unittest.group('obj-schema-Weight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Weight.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWeight(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--authinfo', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('accounts/authinfo'),
        );
        pathOffset += 17;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsAuthInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.authinfo($fields: arg_$fields);
      checkAccountsAuthInfoResponse(response as api.AccountsAuthInfoResponse);
    });

    unittest.test('method--claimwebsite', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_overwrite = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['overwrite']!.first,
          unittest.equals('$arg_overwrite'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsClaimWebsiteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.claimwebsite(arg_merchantId, arg_accountId,
          overwrite: arg_overwrite, $fields: arg_$fields);
      checkAccountsClaimWebsiteResponse(
          response as api.AccountsClaimWebsiteResponse);
    });

    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildAccountsCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountsCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('accounts/batch'),
        );
        pathOffset += 14;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkAccountsCustomBatchResponse(
          response as api.AccountsCustomBatchResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_accountId,
          force: arg_force, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['view']!.first,
          unittest.equals(arg_view),
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
      final response = await res.get(arg_merchantId, arg_accountId,
          view: arg_view, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_merchantId, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--link', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildAccountsLinkRequest();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountsLinkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountsLinkRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsLinkResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.link(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkAccountsLinkResponse(response as api.AccountsLinkResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_merchantId = 'foo';
      final arg_label = 'foo';
      final arg_maxResults = 42;
      final arg_name = 'foo';
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['label']!.first,
          unittest.equals(arg_label),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          label: arg_label,
          maxResults: arg_maxResults,
          name: arg_name,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkAccountsListResponse(response as api.AccountsListResponse);
    });

    unittest.test('method--listlinks', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildAccountsListLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listlinks(arg_merchantId, arg_accountId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAccountsListLinksResponse(response as api.AccountsListLinksResponse);
    });

    unittest.test('method--requestphoneverification', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildRequestPhoneVerificationRequest();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RequestPhoneVerificationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRequestPhoneVerificationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildRequestPhoneVerificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.requestphoneverification(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkRequestPhoneVerificationResponse(
          response as api.RequestPhoneVerificationResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--updatelabels', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildAccountsUpdateLabelsRequest();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountsUpdateLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountsUpdateLabelsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountsUpdateLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatelabels(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkAccountsUpdateLabelsResponse(
          response as api.AccountsUpdateLabelsResponse);
    });

    unittest.test('method--verifyphonenumber', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts;
      final arg_request = buildVerifyPhoneNumberRequest();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VerifyPhoneNumberRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyPhoneNumberRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVerifyPhoneNumberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verifyphonenumber(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkVerifyPhoneNumberResponse(response as api.VerifyPhoneNumberResponse);
    });
  });

  unittest.group('resource-AccountsCredentialsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.credentials;
      final arg_request = buildAccountCredentials();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountCredentials.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountCredentials(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/credentials', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/credentials'),
        );
        pathOffset += 12;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountCredentials());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkAccountCredentials(response as api.AccountCredentials);
    });
  });

  unittest.group('resource-AccountsLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.labels;
      final arg_request = buildAccountLabel();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountLabel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountLabel(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/labels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/labels'),
        );
        pathOffset += 7;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkAccountLabel(response as api.AccountLabel);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.labels;
      final arg_accountId = 'foo';
      final arg_labelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/labels/', pathOffset);
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
          unittest.equals('/labels/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_labelId'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_labelId, $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.labels;
      final arg_accountId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/labels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/labels'),
        );
        pathOffset += 7;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAccountLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAccountLabelsResponse(response as api.ListAccountLabelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.labels;
      final arg_request = buildAccountLabel();
      final arg_accountId = 'foo';
      final arg_labelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountLabel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountLabel(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/labels/', pathOffset);
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
          unittest.equals('/labels/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_labelId'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId, arg_labelId,
          $fields: arg_$fields);
      checkAccountLabel(response as api.AccountLabel);
    });
  });

  unittest.group('resource-AccountsReturncarrierResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.returncarrier;
      final arg_request = buildAccountReturnCarrier();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountReturnCarrier.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountReturnCarrier(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/returncarrier', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/returncarrier'),
        );
        pathOffset += 14;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountReturnCarrier());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkAccountReturnCarrier(response as api.AccountReturnCarrier);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.returncarrier;
      final arg_accountId = 'foo';
      final arg_carrierAccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/returncarrier/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/returncarrier/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_carrierAccountId'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_carrierAccountId,
          $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.returncarrier;
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/returncarrier', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/returncarrier'),
        );
        pathOffset += 14;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListAccountReturnCarrierResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, $fields: arg_$fields);
      checkListAccountReturnCarrierResponse(
          response as api.ListAccountReturnCarrierResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.returncarrier;
      final arg_request = buildAccountReturnCarrier();
      final arg_accountId = 'foo';
      final arg_carrierAccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountReturnCarrier.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountReturnCarrier(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('accounts/'),
        );
        pathOffset += 9;
        index = path.indexOf('/returncarrier/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/returncarrier/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_carrierAccountId'),
        );

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountReturnCarrier());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_carrierAccountId,
          $fields: arg_$fields);
      checkAccountReturnCarrier(response as api.AccountReturnCarrier);
    });
  });

  unittest.group('resource-AccountstatusesResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accountstatuses;
      final arg_request = buildAccountstatusesCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountstatusesCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountstatusesCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('accountstatuses/batch'),
        );
        pathOffset += 21;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildAccountstatusesCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkAccountstatusesCustomBatchResponse(
          response as api.AccountstatusesCustomBatchResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accountstatuses;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_destinations = buildUnnamed221();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['destinations']!,
          unittest.equals(arg_destinations),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_accountId,
          destinations: arg_destinations, $fields: arg_$fields);
      checkAccountStatus(response as api.AccountStatus);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accountstatuses;
      final arg_merchantId = 'foo';
      final arg_destinations = buildUnnamed222();
      final arg_maxResults = 42;
      final arg_name = 'foo';
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['destinations']!,
          unittest.equals(arg_destinations),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
        final resp = convert.json.encode(buildAccountstatusesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          destinations: arg_destinations,
          maxResults: arg_maxResults,
          name: arg_name,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAccountstatusesListResponse(
          response as api.AccountstatusesListResponse);
    });
  });

  unittest.group('resource-AccounttaxResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounttax;
      final arg_request = buildAccounttaxCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccounttaxCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccounttaxCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('accounttax/batch'),
        );
        pathOffset += 16;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccounttaxCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkAccounttaxCustomBatchResponse(
          response as api.AccounttaxCustomBatchResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounttax;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountTax());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_accountId, $fields: arg_$fields);
      checkAccountTax(response as api.AccountTax);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounttax;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildAccounttaxListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAccounttaxListResponse(response as api.AccounttaxListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounttax;
      final arg_request = buildAccountTax();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountTax.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountTax(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountTax());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkAccountTax(response as api.AccountTax);
    });
  });

  unittest.group('resource-CollectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collections;
      final arg_request = buildCollection();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Collection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCollection(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkCollection(response as api.Collection);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collections;
      final arg_merchantId = 'foo';
      final arg_collectionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_collectionId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collections;
      final arg_merchantId = 'foo';
      final arg_collectionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_collectionId, $fields: arg_$fields);
      checkCollection(response as api.Collection);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collections;
      final arg_merchantId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCollectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCollectionsResponse(response as api.ListCollectionsResponse);
    });
  });

  unittest.group('resource-CollectionstatusesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collectionstatuses;
      final arg_merchantId = 'foo';
      final arg_collectionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCollectionStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_collectionId, $fields: arg_$fields);
      checkCollectionStatus(response as api.CollectionStatus);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collectionstatuses;
      final arg_merchantId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCollectionStatusesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCollectionStatusesResponse(
          response as api.ListCollectionStatusesResponse);
    });
  });

  unittest.group('resource-ConversionsourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).conversionsources;
      final arg_request = buildConversionSource();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionSource(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConversionSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkConversionSource(response as api.ConversionSource);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).conversionsources;
      final arg_merchantId = 'foo';
      final arg_conversionSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_conversionSourceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).conversionsources;
      final arg_merchantId = 'foo';
      final arg_conversionSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConversionSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_conversionSourceId,
          $fields: arg_$fields);
      checkConversionSource(response as api.ConversionSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).conversionsources;
      final arg_merchantId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConversionSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListConversionSourcesResponse(
          response as api.ListConversionSourcesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).conversionsources;
      final arg_request = buildConversionSource();
      final arg_merchantId = 'foo';
      final arg_conversionSourceId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionSource(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConversionSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_merchantId, arg_conversionSourceId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkConversionSource(response as api.ConversionSource);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).conversionsources;
      final arg_request = buildUndeleteConversionSourceRequest();
      final arg_merchantId = 'foo';
      final arg_conversionSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteConversionSourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteConversionSourceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.undelete(arg_request, arg_merchantId, arg_conversionSourceId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-CssesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).csses;
      final arg_cssGroupId = 'foo';
      final arg_cssDomainId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCss());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_cssGroupId, arg_cssDomainId, $fields: arg_$fields);
      checkCss(response as api.Css);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).csses;
      final arg_cssGroupId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCssesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_cssGroupId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCssesResponse(response as api.ListCssesResponse);
    });

    unittest.test('method--updatelabels', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).csses;
      final arg_request = buildLabelIds();
      final arg_cssGroupId = 'foo';
      final arg_cssDomainId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.LabelIds.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLabelIds(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCss());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatelabels(
          arg_request, arg_cssGroupId, arg_cssDomainId,
          $fields: arg_$fields);
      checkCss(response as api.Css);
    });
  });

  unittest.group('resource-DatafeedsResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_request = buildDatafeedsCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatafeedsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatafeedsCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('datafeeds/batch'),
        );
        pathOffset += 15;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatafeedsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkDatafeedsCustomBatchResponse(
          response as api.DatafeedsCustomBatchResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_merchantId = 'foo';
      final arg_datafeedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_datafeedId, $fields: arg_$fields);
    });

    unittest.test('method--fetchnow', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_merchantId = 'foo';
      final arg_datafeedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatafeedsFetchNowResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchnow(arg_merchantId, arg_datafeedId,
          $fields: arg_$fields);
      checkDatafeedsFetchNowResponse(response as api.DatafeedsFetchNowResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_merchantId = 'foo';
      final arg_datafeedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatafeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_datafeedId, $fields: arg_$fields);
      checkDatafeed(response as api.Datafeed);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_request = buildDatafeed();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Datafeed.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatafeed(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatafeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_merchantId, $fields: arg_$fields);
      checkDatafeed(response as api.Datafeed);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildDatafeedsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkDatafeedsListResponse(response as api.DatafeedsListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_request = buildDatafeed();
      final arg_merchantId = 'foo';
      final arg_datafeedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Datafeed.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatafeed(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatafeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_datafeedId,
          $fields: arg_$fields);
      checkDatafeed(response as api.Datafeed);
    });
  });

  unittest.group('resource-DatafeedstatusesResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeedstatuses;
      final arg_request = buildDatafeedstatusesCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatafeedstatusesCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatafeedstatusesCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('datafeedstatuses/batch'),
        );
        pathOffset += 22;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildDatafeedstatusesCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkDatafeedstatusesCustomBatchResponse(
          response as api.DatafeedstatusesCustomBatchResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeedstatuses;
      final arg_merchantId = 'foo';
      final arg_datafeedId = 'foo';
      final arg_country = 'foo';
      final arg_feedLabel = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['feedLabel']!.first,
          unittest.equals(arg_feedLabel),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDatafeedStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_datafeedId,
          country: arg_country,
          feedLabel: arg_feedLabel,
          language: arg_language,
          $fields: arg_$fields);
      checkDatafeedStatus(response as api.DatafeedStatus);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeedstatuses;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildDatafeedstatusesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkDatafeedstatusesListResponse(
          response as api.DatafeedstatusesListResponse);
    });
  });

  unittest.group('resource-FreelistingsprogramResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).freelistingsprogram;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFreeListingsProgramStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, $fields: arg_$fields);
      checkFreeListingsProgramStatus(response as api.FreeListingsProgramStatus);
    });

    unittest.test('method--requestreview', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).freelistingsprogram;
      final arg_request = buildRequestReviewFreeListingsRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RequestReviewFreeListingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRequestReviewFreeListingsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.requestreview(arg_request, arg_merchantId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-FreelistingsprogramCheckoutsettingsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ShoppingContentApi(mock).freelistingsprogram.checkoutsettings;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ShoppingContentApi(mock).freelistingsprogram.checkoutsettings;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCheckoutSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, $fields: arg_$fields);
      checkCheckoutSettings(response as api.CheckoutSettings);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res =
          api.ShoppingContentApi(mock).freelistingsprogram.checkoutsettings;
      final arg_request = buildInsertCheckoutSettingsRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InsertCheckoutSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInsertCheckoutSettingsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCheckoutSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_merchantId, $fields: arg_$fields);
      checkCheckoutSettings(response as api.CheckoutSettings);
    });
  });

  unittest.group('resource-LiasettingsResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_request = buildLiasettingsCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiasettingsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiasettingsCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('liasettings/batch'),
        );
        pathOffset += 17;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiasettingsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkLiasettingsCustomBatchResponse(
          response as api.LiasettingsCustomBatchResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiaSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_accountId, $fields: arg_$fields);
      checkLiaSettings(response as api.LiaSettings);
    });

    unittest.test('method--getaccessiblegmbaccounts', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildLiasettingsGetAccessibleGmbAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getaccessiblegmbaccounts(
          arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkLiasettingsGetAccessibleGmbAccountsResponse(
          response as api.LiasettingsGetAccessibleGmbAccountsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildLiasettingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLiasettingsListResponse(response as api.LiasettingsListResponse);
    });

    unittest.test('method--listposdataproviders', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('liasettings/posdataproviders'),
        );
        pathOffset += 28;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildLiasettingsListPosDataProvidersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listposdataproviders($fields: arg_$fields);
      checkLiasettingsListPosDataProvidersResponse(
          response as api.LiasettingsListPosDataProvidersResponse);
    });

    unittest.test('method--requestgmbaccess', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_gmbEmail = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['gmbEmail']!.first,
          unittest.equals(arg_gmbEmail),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildLiasettingsRequestGmbAccessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.requestgmbaccess(
          arg_merchantId, arg_accountId, arg_gmbEmail,
          $fields: arg_$fields);
      checkLiasettingsRequestGmbAccessResponse(
          response as api.LiasettingsRequestGmbAccessResponse);
    });

    unittest.test('method--requestinventoryverification', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_country = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildLiasettingsRequestInventoryVerificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.requestinventoryverification(
          arg_merchantId, arg_accountId, arg_country,
          $fields: arg_$fields);
      checkLiasettingsRequestInventoryVerificationResponse(
          response as api.LiasettingsRequestInventoryVerificationResponse);
    });

    unittest.test('method--setinventoryverificationcontact', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_country = 'foo';
      final arg_language = 'foo';
      final arg_contactName = 'foo';
      final arg_contactEmail = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['contactName']!.first,
          unittest.equals(arg_contactName),
        );
        unittest.expect(
          queryMap['contactEmail']!.first,
          unittest.equals(arg_contactEmail),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildLiasettingsSetInventoryVerificationContactResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setinventoryverificationcontact(
          arg_merchantId,
          arg_accountId,
          arg_country,
          arg_language,
          arg_contactName,
          arg_contactEmail,
          $fields: arg_$fields);
      checkLiasettingsSetInventoryVerificationContactResponse(
          response as api.LiasettingsSetInventoryVerificationContactResponse);
    });

    unittest.test('method--setomnichannelexperience', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_country = 'foo';
      final arg_lsfType = 'foo';
      final arg_pickupTypes = buildUnnamed223();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['lsfType']!.first,
          unittest.equals(arg_lsfType),
        );
        unittest.expect(
          queryMap['pickupTypes']!,
          unittest.equals(arg_pickupTypes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiaOmnichannelExperience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setomnichannelexperience(
          arg_merchantId, arg_accountId,
          country: arg_country,
          lsfType: arg_lsfType,
          pickupTypes: arg_pickupTypes,
          $fields: arg_$fields);
      checkLiaOmnichannelExperience(response as api.LiaOmnichannelExperience);
    });

    unittest.test('method--setposdataprovider', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_country = 'foo';
      final arg_posDataProviderId = 'foo';
      final arg_posExternalAccountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['posDataProviderId']!.first,
          unittest.equals(arg_posDataProviderId),
        );
        unittest.expect(
          queryMap['posExternalAccountId']!.first,
          unittest.equals(arg_posExternalAccountId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildLiasettingsSetPosDataProviderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setposdataprovider(
          arg_merchantId, arg_accountId, arg_country,
          posDataProviderId: arg_posDataProviderId,
          posExternalAccountId: arg_posExternalAccountId,
          $fields: arg_$fields);
      checkLiasettingsSetPosDataProviderResponse(
          response as api.LiasettingsSetPosDataProviderResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).liasettings;
      final arg_request = buildLiaSettings();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LiaSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiaSettings(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLiaSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkLiaSettings(response as api.LiaSettings);
    });
  });

  unittest.group('resource-LocalinventoryResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).localinventory;
      final arg_request = buildLocalinventoryCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LocalinventoryCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLocalinventoryCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('localinventory/batch'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildLocalinventoryCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkLocalinventoryCustomBatchResponse(
          response as api.LocalinventoryCustomBatchResponse);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).localinventory;
      final arg_request = buildLocalInventory();
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LocalInventory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLocalInventory(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocalInventory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_merchantId, arg_productId,
          $fields: arg_$fields);
      checkLocalInventory(response as api.LocalInventory);
    });
  });

  unittest.group('resource-MerchantsupportResource', () {
    unittest.test('method--renderaccountissues', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).merchantsupport;
      final arg_request = buildRenderAccountIssuesRequestPayload();
      final arg_merchantId = 'foo';
      final arg_languageCode = 'foo';
      final arg_timeZone = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenderAccountIssuesRequestPayload.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenderAccountIssuesRequestPayload(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['timeZone']!.first,
          unittest.equals(arg_timeZone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRenderAccountIssuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.renderaccountissues(
          arg_request, arg_merchantId,
          languageCode: arg_languageCode,
          timeZone: arg_timeZone,
          $fields: arg_$fields);
      checkRenderAccountIssuesResponse(
          response as api.RenderAccountIssuesResponse);
    });

    unittest.test('method--renderproductissues', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).merchantsupport;
      final arg_request = buildRenderProductIssuesRequestPayload();
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_languageCode = 'foo';
      final arg_timeZone = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenderProductIssuesRequestPayload.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenderProductIssuesRequestPayload(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['timeZone']!.first,
          unittest.equals(arg_timeZone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRenderProductIssuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.renderproductissues(
          arg_request, arg_merchantId, arg_productId,
          languageCode: arg_languageCode,
          timeZone: arg_timeZone,
          $fields: arg_$fields);
      checkRenderProductIssuesResponse(
          response as api.RenderProductIssuesResponse);
    });

    unittest.test('method--triggeraction', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).merchantsupport;
      final arg_request = buildTriggerActionPayload();
      final arg_merchantId = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TriggerActionPayload.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTriggerActionPayload(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTriggerActionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.triggeraction(arg_request, arg_merchantId,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkTriggerActionResponse(response as api.TriggerActionResponse);
    });
  });

  unittest.group('resource-OrdertrackingsignalsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).ordertrackingsignals;
      final arg_request = buildOrderTrackingSignal();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrderTrackingSignal.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderTrackingSignal(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOrderTrackingSignal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkOrderTrackingSignal(response as api.OrderTrackingSignal);
    });
  });

  unittest.group('resource-PosResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_request = buildPosCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PosCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPosCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('pos/batch'),
        );
        pathOffset += 9;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPosCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkPosCustomBatchResponse(response as api.PosCustomBatchResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_merchantId = 'foo';
      final arg_targetMerchantId = 'foo';
      final arg_storeCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_targetMerchantId, arg_storeCode,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_merchantId = 'foo';
      final arg_targetMerchantId = 'foo';
      final arg_storeCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPosStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_merchantId, arg_targetMerchantId, arg_storeCode,
          $fields: arg_$fields);
      checkPosStore(response as api.PosStore);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_request = buildPosStore();
      final arg_merchantId = 'foo';
      final arg_targetMerchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.PosStore.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPosStore(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPosStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_merchantId, arg_targetMerchantId,
          $fields: arg_$fields);
      checkPosStore(response as api.PosStore);
    });

    unittest.test('method--inventory', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_request = buildPosInventoryRequest();
      final arg_merchantId = 'foo';
      final arg_targetMerchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PosInventoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPosInventoryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPosInventoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.inventory(
          arg_request, arg_merchantId, arg_targetMerchantId,
          $fields: arg_$fields);
      checkPosInventoryResponse(response as api.PosInventoryResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_merchantId = 'foo';
      final arg_targetMerchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPosListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId, arg_targetMerchantId,
          $fields: arg_$fields);
      checkPosListResponse(response as api.PosListResponse);
    });

    unittest.test('method--sale', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pos;
      final arg_request = buildPosSaleRequest();
      final arg_merchantId = 'foo';
      final arg_targetMerchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PosSaleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPosSaleRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPosSaleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sale(
          arg_request, arg_merchantId, arg_targetMerchantId,
          $fields: arg_$fields);
      checkPosSaleResponse(response as api.PosSaleResponse);
    });
  });

  unittest.group('resource-ProductdeliverytimeResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productdeliverytime;
      final arg_request = buildProductDeliveryTime();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductDeliveryTime.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductDeliveryTime(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProductDeliveryTime());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkProductDeliveryTime(response as api.ProductDeliveryTime);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productdeliverytime;
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_productId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productdeliverytime;
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProductDeliveryTime());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_productId, $fields: arg_$fields);
      checkProductDeliveryTime(response as api.ProductDeliveryTime);
    });
  });

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).products;
      final arg_request = buildProductsCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductsCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('products/batch'),
        );
        pathOffset += 14;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProductsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkProductsCustomBatchResponse(
          response as api.ProductsCustomBatchResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).products;
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_feedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['feedId']!.first,
          unittest.equals(arg_feedId),
        );
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
      await res.delete(arg_merchantId, arg_productId,
          feedId: arg_feedId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).products;
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_productId, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).products;
      final arg_request = buildProduct();
      final arg_merchantId = 'foo';
      final arg_feedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['feedId']!.first,
          unittest.equals(arg_feedId),
        );
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
      final response = await res.insert(arg_request, arg_merchantId,
          feedId: arg_feedId, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).products;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildProductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkProductsListResponse(response as api.ProductsListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).products;
      final arg_request = buildProduct();
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_productId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });
  });

  unittest.group('resource-ProductstatusesResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productstatuses;
      final arg_request = buildProductstatusesCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductstatusesCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductstatusesCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('productstatuses/batch'),
        );
        pathOffset += 21;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildProductstatusesCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkProductstatusesCustomBatchResponse(
          response as api.ProductstatusesCustomBatchResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productstatuses;
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_destinations = buildUnnamed224();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['destinations']!,
          unittest.equals(arg_destinations),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProductStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_productId,
          destinations: arg_destinations, $fields: arg_$fields);
      checkProductStatus(response as api.ProductStatus);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productstatuses;
      final arg_merchantId = 'foo';
      final arg_destinations = buildUnnamed225();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['destinations']!,
          unittest.equals(arg_destinations),
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
        final resp = convert.json.encode(buildProductstatusesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          destinations: arg_destinations,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkProductstatusesListResponse(
          response as api.ProductstatusesListResponse);
    });
  });

  unittest.group('resource-PromotionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).promotions;
      final arg_request = buildPromotion();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Promotion.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPromotion(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPromotion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkPromotion(response as api.Promotion);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).promotions;
      final arg_merchantId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPromotion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_id, $fields: arg_$fields);
      checkPromotion(response as api.Promotion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).promotions;
      final arg_merchantId = 'foo';
      final arg_countryCode = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['countryCode']!.first,
          unittest.equals(arg_countryCode),
        );
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPromotionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          countryCode: arg_countryCode,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPromotionResponse(response as api.ListPromotionResponse);
    });
  });

  unittest.group('resource-PubsubnotificationsettingsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pubsubnotificationsettings;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPubsubNotificationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, $fields: arg_$fields);
      checkPubsubNotificationSettings(
          response as api.PubsubNotificationSettings);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pubsubnotificationsettings;
      final arg_request = buildPubsubNotificationSettings();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PubsubNotificationSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPubsubNotificationSettings(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPubsubNotificationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_merchantId, $fields: arg_$fields);
      checkPubsubNotificationSettings(
          response as api.PubsubNotificationSettings);
    });
  });

  unittest.group('resource-QuotasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).quotas;
      final arg_merchantId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListMethodQuotasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMethodQuotasResponse(response as api.ListMethodQuotasResponse);
    });
  });

  unittest.group('resource-RecommendationsResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).recommendations;
      final arg_merchantId = 'foo';
      final arg_allowedTag = buildUnnamed226();
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['allowedTag']!,
          unittest.equals(arg_allowedTag),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGenerateRecommendationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generate(arg_merchantId,
          allowedTag: arg_allowedTag,
          languageCode: arg_languageCode,
          $fields: arg_$fields);
      checkGenerateRecommendationsResponse(
          response as api.GenerateRecommendationsResponse);
    });

    unittest.test('method--reportInteraction', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).recommendations;
      final arg_request = buildReportInteractionRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportInteractionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportInteractionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.reportInteraction(arg_request, arg_merchantId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-RegionalinventoryResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regionalinventory;
      final arg_request = buildRegionalinventoryCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegionalinventoryCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegionalinventoryCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('regionalinventory/batch'),
        );
        pathOffset += 23;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildRegionalinventoryCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkRegionalinventoryCustomBatchResponse(
          response as api.RegionalinventoryCustomBatchResponse);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regionalinventory;
      final arg_request = buildRegionalInventory();
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegionalInventory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegionalInventory(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRegionalInventory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_merchantId, arg_productId,
          $fields: arg_$fields);
      checkRegionalInventory(response as api.RegionalInventory);
    });
  });

  unittest.group('resource-RegionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regions;
      final arg_request = buildRegion();
      final arg_merchantId = 'foo';
      final arg_regionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Region.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRegion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_merchantId,
          regionId: arg_regionId, $fields: arg_$fields);
      checkRegion(response as api.Region);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regions;
      final arg_merchantId = 'foo';
      final arg_regionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_regionId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regions;
      final arg_merchantId = 'foo';
      final arg_regionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRegion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_regionId, $fields: arg_$fields);
      checkRegion(response as api.Region);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regions;
      final arg_merchantId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRegionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRegionsResponse(response as api.ListRegionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regions;
      final arg_request = buildRegion();
      final arg_merchantId = 'foo';
      final arg_regionId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Region.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRegion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_merchantId, arg_regionId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkRegion(response as api.Region);
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).reports;
      final arg_request = buildSearchRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_merchantId, $fields: arg_$fields);
      checkSearchResponse(response as api.SearchResponse);
    });
  });

  unittest.group('resource-ReturnaddressResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnaddress;
      final arg_request = buildReturnaddressCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnaddressCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnaddressCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('returnaddress/batch'),
        );
        pathOffset += 19;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildReturnaddressCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkReturnaddressCustomBatchResponse(
          response as api.ReturnaddressCustomBatchResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnaddress;
      final arg_merchantId = 'foo';
      final arg_returnAddressId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_returnAddressId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnaddress;
      final arg_merchantId = 'foo';
      final arg_returnAddressId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_returnAddressId,
          $fields: arg_$fields);
      checkReturnAddress(response as api.ReturnAddress);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnaddress;
      final arg_request = buildReturnAddress();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnAddress(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_merchantId, $fields: arg_$fields);
      checkReturnAddress(response as api.ReturnAddress);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnaddress;
      final arg_merchantId = 'foo';
      final arg_country = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
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
        final resp = convert.json.encode(buildReturnaddressListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          country: arg_country,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkReturnaddressListResponse(response as api.ReturnaddressListResponse);
    });
  });

  unittest.group('resource-ReturnpolicyResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicy;
      final arg_request = buildReturnpolicyCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnpolicyCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnpolicyCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('returnpolicy/batch'),
        );
        pathOffset += 18;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildReturnpolicyCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkReturnpolicyCustomBatchResponse(
          response as api.ReturnpolicyCustomBatchResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicy;
      final arg_merchantId = 'foo';
      final arg_returnPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_returnPolicyId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicy;
      final arg_merchantId = 'foo';
      final arg_returnPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_returnPolicyId,
          $fields: arg_$fields);
      checkReturnPolicy(response as api.ReturnPolicy);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicy;
      final arg_request = buildReturnPolicy();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnPolicy(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_merchantId, $fields: arg_$fields);
      checkReturnPolicy(response as api.ReturnPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicy;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnpolicyListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId, $fields: arg_$fields);
      checkReturnpolicyListResponse(response as api.ReturnpolicyListResponse);
    });
  });

  unittest.group('resource-ReturnpolicyonlineResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicyonline;
      final arg_request = buildReturnPolicyOnline();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnPolicyOnline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnPolicyOnline(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnPolicyOnline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkReturnPolicyOnline(response as api.ReturnPolicyOnline);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicyonline;
      final arg_merchantId = 'foo';
      final arg_returnPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_merchantId, arg_returnPolicyId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicyonline;
      final arg_merchantId = 'foo';
      final arg_returnPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnPolicyOnline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, arg_returnPolicyId,
          $fields: arg_$fields);
      checkReturnPolicyOnline(response as api.ReturnPolicyOnline);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicyonline;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListReturnPolicyOnlineResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId, $fields: arg_$fields);
      checkListReturnPolicyOnlineResponse(
          response as api.ListReturnPolicyOnlineResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).returnpolicyonline;
      final arg_request = buildReturnPolicyOnline();
      final arg_merchantId = 'foo';
      final arg_returnPolicyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnPolicyOnline.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnPolicyOnline(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReturnPolicyOnline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_merchantId, arg_returnPolicyId,
          $fields: arg_$fields);
      checkReturnPolicyOnline(response as api.ReturnPolicyOnline);
    });
  });

  unittest.group('resource-ShippingsettingsResource', () {
    unittest.test('method--custombatch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_request = buildShippingsettingsCustomBatchRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ShippingsettingsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkShippingsettingsCustomBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('shippingsettings/batch'),
        );
        pathOffset += 22;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildShippingsettingsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.custombatch(arg_request, $fields: arg_$fields);
      checkShippingsettingsCustomBatchResponse(
          response as api.ShippingsettingsCustomBatchResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildShippingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_accountId, $fields: arg_$fields);
      checkShippingSettings(response as api.ShippingSettings);
    });

    unittest.test('method--getsupportedcarriers', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildShippingsettingsGetSupportedCarriersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getsupportedcarriers(arg_merchantId, $fields: arg_$fields);
      checkShippingsettingsGetSupportedCarriersResponse(
          response as api.ShippingsettingsGetSupportedCarriersResponse);
    });

    unittest.test('method--getsupportedholidays', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildShippingsettingsGetSupportedHolidaysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getsupportedholidays(arg_merchantId, $fields: arg_$fields);
      checkShippingsettingsGetSupportedHolidaysResponse(
          response as api.ShippingsettingsGetSupportedHolidaysResponse);
    });

    unittest.test('method--getsupportedpickupservices', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildShippingsettingsGetSupportedPickupServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getsupportedpickupservices(arg_merchantId,
          $fields: arg_$fields);
      checkShippingsettingsGetSupportedPickupServicesResponse(
          response as api.ShippingsettingsGetSupportedPickupServicesResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildShippingsettingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkShippingsettingsListResponse(
          response as api.ShippingsettingsListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shippingsettings;
      final arg_request = buildShippingSettings();
      final arg_merchantId = 'foo';
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ShippingSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildShippingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkShippingSettings(response as api.ShippingSettings);
    });
  });

  unittest.group('resource-ShoppingadsprogramResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shoppingadsprogram;
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildShoppingAdsProgramStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_merchantId, $fields: arg_$fields);
      checkShoppingAdsProgramStatus(response as api.ShoppingAdsProgramStatus);
    });

    unittest.test('method--requestreview', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).shoppingadsprogram;
      final arg_request = buildRequestReviewShoppingAdsRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RequestReviewShoppingAdsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRequestReviewShoppingAdsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.requestreview(arg_request, arg_merchantId,
          $fields: arg_$fields);
    });
  });
}
