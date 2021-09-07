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

import 'package:googleapis/content/v2_1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AccountAdsLink> buildUnnamed5078() => [
      buildAccountAdsLink(),
      buildAccountAdsLink(),
    ];

void checkUnnamed5078(core.List<api.AccountAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdsLink(o[0]);
  checkAccountAdsLink(o[1]);
}

core.List<core.String> buildUnnamed5079() => [
      'foo',
      'foo',
    ];

void checkUnnamed5079(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5080() => [
      'foo',
      'foo',
    ];

void checkUnnamed5080(core.List<core.String> o) {
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

core.List<api.AccountUser> buildUnnamed5081() => [
      buildAccountUser(),
      buildAccountUser(),
    ];

void checkUnnamed5081(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0]);
  checkAccountUser(o[1]);
}

core.List<api.AccountYouTubeChannelLink> buildUnnamed5082() => [
      buildAccountYouTubeChannelLink(),
      buildAccountYouTubeChannelLink(),
    ];

void checkUnnamed5082(core.List<api.AccountYouTubeChannelLink> o) {
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
    o.adsLinks = buildUnnamed5078();
    o.adultContent = true;
    o.automaticLabelIds = buildUnnamed5079();
    o.businessInformation = buildAccountBusinessInformation();
    o.cssId = 'foo';
    o.googleMyBusinessLink = buildAccountGoogleMyBusinessLink();
    o.id = 'foo';
    o.kind = 'foo';
    o.labelIds = buildUnnamed5080();
    o.name = 'foo';
    o.sellerId = 'foo';
    o.users = buildUnnamed5081();
    o.websiteUrl = 'foo';
    o.youtubeChannelLinks = buildUnnamed5082();
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
    checkUnnamed5078(o.adsLinks!);
    unittest.expect(o.adultContent!, unittest.isTrue);
    checkUnnamed5079(o.automaticLabelIds!);
    checkAccountBusinessInformation(o.businessInformation!);
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
    checkUnnamed5080(o.labelIds!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sellerId!,
      unittest.equals('foo'),
    );
    checkUnnamed5081(o.users!);
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed5082(o.youtubeChannelLinks!);
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

core.int buildCounterAccountBusinessInformation = 0;
api.AccountBusinessInformation buildAccountBusinessInformation() {
  final o = api.AccountBusinessInformation();
  buildCounterAccountBusinessInformation++;
  if (buildCounterAccountBusinessInformation < 3) {
    o.address = buildAccountAddress();
    o.customerService = buildAccountCustomerService();
    o.phoneNumber = 'foo';
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
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountBusinessInformation--;
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

core.List<api.AccountStatusAccountLevelIssue> buildUnnamed5083() => [
      buildAccountStatusAccountLevelIssue(),
      buildAccountStatusAccountLevelIssue(),
    ];

void checkUnnamed5083(core.List<api.AccountStatusAccountLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusAccountLevelIssue(o[0]);
  checkAccountStatusAccountLevelIssue(o[1]);
}

core.List<api.AccountStatusProducts> buildUnnamed5084() => [
      buildAccountStatusProducts(),
      buildAccountStatusProducts(),
    ];

void checkUnnamed5084(core.List<api.AccountStatusProducts> o) {
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
    o.accountLevelIssues = buildUnnamed5083();
    o.accountManagement = 'foo';
    o.kind = 'foo';
    o.products = buildUnnamed5084();
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
    checkUnnamed5083(o.accountLevelIssues!);
    unittest.expect(
      o.accountManagement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5084(o.products!);
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

core.List<api.AccountStatusItemLevelIssue> buildUnnamed5085() => [
      buildAccountStatusItemLevelIssue(),
      buildAccountStatusItemLevelIssue(),
    ];

void checkUnnamed5085(core.List<api.AccountStatusItemLevelIssue> o) {
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
    o.itemLevelIssues = buildUnnamed5085();
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
    checkUnnamed5085(o.itemLevelIssues!);
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

core.List<api.AccountTaxTaxRule> buildUnnamed5086() => [
      buildAccountTaxTaxRule(),
      buildAccountTaxTaxRule(),
    ];

void checkUnnamed5086(core.List<api.AccountTaxTaxRule> o) {
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
    o.rules = buildUnnamed5086();
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
    checkUnnamed5086(o.rules!);
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

core.List<api.AccountIdentifier> buildUnnamed5087() => [
      buildAccountIdentifier(),
      buildAccountIdentifier(),
    ];

void checkUnnamed5087(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0]);
  checkAccountIdentifier(o[1]);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
api.AccountsAuthInfoResponse buildAccountsAuthInfoResponse() {
  final o = api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed5087();
    o.kind = 'foo';
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

void checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed5087(o.accountIdentifiers!);
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

core.List<api.AccountsCustomBatchRequestEntry> buildUnnamed5088() => [
      buildAccountsCustomBatchRequestEntry(),
      buildAccountsCustomBatchRequestEntry(),
    ];

void checkUnnamed5088(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(o[0]);
  checkAccountsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
api.AccountsCustomBatchRequest buildAccountsCustomBatchRequest() {
  final o = api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed5088();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

void checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed5088(o.entries!);
  }
  buildCounterAccountsCustomBatchRequest--;
}

core.List<core.String> buildUnnamed5089() => [
      'foo',
      'foo',
    ];

void checkUnnamed5089(core.List<core.String> o) {
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
    o.labelIds = buildUnnamed5089();
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
    checkUnnamed5089(o.labelIds!);
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

core.List<core.String> buildUnnamed5090() => [
      'foo',
      'foo',
    ];

void checkUnnamed5090(core.List<core.String> o) {
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
    o.services = buildUnnamed5090();
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
    checkUnnamed5090(o.services!);
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
}

core.List<api.AccountsCustomBatchResponseEntry> buildUnnamed5091() => [
      buildAccountsCustomBatchResponseEntry(),
      buildAccountsCustomBatchResponseEntry(),
    ];

void checkUnnamed5091(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(o[0]);
  checkAccountsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
api.AccountsCustomBatchResponse buildAccountsCustomBatchResponse() {
  final o = api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed5091();
    o.kind = 'foo';
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

void checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed5091(o.entries!);
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

core.List<core.String> buildUnnamed5092() => [
      'foo',
      'foo',
    ];

void checkUnnamed5092(core.List<core.String> o) {
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
    o.linkType = 'foo';
    o.linkedAccountId = 'foo';
    o.paymentServiceProviderLinkInfo = buildPaymentServiceProviderLinkInfo();
    o.services = buildUnnamed5092();
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
    unittest.expect(
      o.linkType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedAccountId!,
      unittest.equals('foo'),
    );
    checkPaymentServiceProviderLinkInfo(o.paymentServiceProviderLinkInfo!);
    checkUnnamed5092(o.services!);
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

core.List<api.LinkedAccount> buildUnnamed5093() => [
      buildLinkedAccount(),
      buildLinkedAccount(),
    ];

void checkUnnamed5093(core.List<api.LinkedAccount> o) {
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
    o.links = buildUnnamed5093();
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
    checkUnnamed5093(o.links!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountsListLinksResponse--;
}

core.List<api.Account> buildUnnamed5094() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed5094(core.List<api.Account> o) {
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
    o.resources = buildUnnamed5094();
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
    checkUnnamed5094(o.resources!);
  }
  buildCounterAccountsListResponse--;
}

core.List<core.String> buildUnnamed5095() => [
      'foo',
      'foo',
    ];

void checkUnnamed5095(core.List<core.String> o) {
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
    o.labelIds = buildUnnamed5095();
  }
  buildCounterAccountsUpdateLabelsRequest--;
  return o;
}

void checkAccountsUpdateLabelsRequest(api.AccountsUpdateLabelsRequest o) {
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    checkUnnamed5095(o.labelIds!);
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

core.List<api.AccountstatusesCustomBatchRequestEntry> buildUnnamed5096() => [
      buildAccountstatusesCustomBatchRequestEntry(),
      buildAccountstatusesCustomBatchRequestEntry(),
    ];

void checkUnnamed5096(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(o[0]);
  checkAccountstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
api.AccountstatusesCustomBatchRequest buildAccountstatusesCustomBatchRequest() {
  final o = api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed5096();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

void checkAccountstatusesCustomBatchRequest(
    api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed5096(o.entries!);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed5097() => [
      'foo',
      'foo',
    ];

void checkUnnamed5097(core.List<core.String> o) {
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
    o.destinations = buildUnnamed5097();
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
    checkUnnamed5097(o.destinations!);
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

core.List<api.AccountstatusesCustomBatchResponseEntry> buildUnnamed5098() => [
      buildAccountstatusesCustomBatchResponseEntry(),
      buildAccountstatusesCustomBatchResponseEntry(),
    ];

void checkUnnamed5098(
    core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
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
    o.entries = buildUnnamed5098();
    o.kind = 'foo';
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

void checkAccountstatusesCustomBatchResponse(
    api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed5098(o.entries!);
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

core.List<api.AccountStatus> buildUnnamed5099() => [
      buildAccountStatus(),
      buildAccountStatus(),
    ];

void checkUnnamed5099(core.List<api.AccountStatus> o) {
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
    o.resources = buildUnnamed5099();
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
    checkUnnamed5099(o.resources!);
  }
  buildCounterAccountstatusesListResponse--;
}

core.List<api.AccounttaxCustomBatchRequestEntry> buildUnnamed5100() => [
      buildAccounttaxCustomBatchRequestEntry(),
      buildAccounttaxCustomBatchRequestEntry(),
    ];

void checkUnnamed5100(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(o[0]);
  checkAccounttaxCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
api.AccounttaxCustomBatchRequest buildAccounttaxCustomBatchRequest() {
  final o = api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed5100();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

void checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed5100(o.entries!);
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

core.List<api.AccounttaxCustomBatchResponseEntry> buildUnnamed5101() => [
      buildAccounttaxCustomBatchResponseEntry(),
      buildAccounttaxCustomBatchResponseEntry(),
    ];

void checkUnnamed5101(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(o[0]);
  checkAccounttaxCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
api.AccounttaxCustomBatchResponse buildAccounttaxCustomBatchResponse() {
  final o = api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed5101();
    o.kind = 'foo';
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

void checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed5101(o.entries!);
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

core.List<api.AccountTax> buildUnnamed5102() => [
      buildAccountTax(),
      buildAccountTax(),
    ];

void checkUnnamed5102(core.List<api.AccountTax> o) {
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
    o.resources = buildUnnamed5102();
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
    checkUnnamed5102(o.resources!);
  }
  buildCounterAccounttaxListResponse--;
}

core.int buildCounterActivateBuyOnGoogleProgramRequest = 0;
api.ActivateBuyOnGoogleProgramRequest buildActivateBuyOnGoogleProgramRequest() {
  final o = api.ActivateBuyOnGoogleProgramRequest();
  buildCounterActivateBuyOnGoogleProgramRequest++;
  if (buildCounterActivateBuyOnGoogleProgramRequest < 3) {}
  buildCounterActivateBuyOnGoogleProgramRequest--;
  return o;
}

void checkActivateBuyOnGoogleProgramRequest(
    api.ActivateBuyOnGoogleProgramRequest o) {
  buildCounterActivateBuyOnGoogleProgramRequest++;
  if (buildCounterActivateBuyOnGoogleProgramRequest < 3) {}
  buildCounterActivateBuyOnGoogleProgramRequest--;
}

core.int buildCounterAmount = 0;
api.Amount buildAmount() {
  final o = api.Amount();
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    o.priceAmount = buildPrice();
    o.taxAmount = buildPrice();
  }
  buildCounterAmount--;
  return o;
}

void checkAmount(api.Amount o) {
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    checkPrice(o.priceAmount!);
    checkPrice(o.taxAmount!);
  }
  buildCounterAmount--;
}

core.List<core.String> buildUnnamed5103() => [
      'foo',
      'foo',
    ];

void checkUnnamed5103(core.List<core.String> o) {
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
    o.businessDays = buildUnnamed5103();
  }
  buildCounterBusinessDayConfig--;
  return o;
}

void checkBusinessDayConfig(api.BusinessDayConfig o) {
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    checkUnnamed5103(o.businessDays!);
  }
  buildCounterBusinessDayConfig--;
}

core.int buildCounterBuyOnGoogleProgramStatus = 0;
api.BuyOnGoogleProgramStatus buildBuyOnGoogleProgramStatus() {
  final o = api.BuyOnGoogleProgramStatus();
  buildCounterBuyOnGoogleProgramStatus++;
  if (buildCounterBuyOnGoogleProgramStatus < 3) {
    o.customerServicePendingEmail = 'foo';
    o.customerServiceVerifiedEmail = 'foo';
    o.participationStage = 'foo';
  }
  buildCounterBuyOnGoogleProgramStatus--;
  return o;
}

void checkBuyOnGoogleProgramStatus(api.BuyOnGoogleProgramStatus o) {
  buildCounterBuyOnGoogleProgramStatus++;
  if (buildCounterBuyOnGoogleProgramStatus < 3) {
    unittest.expect(
      o.customerServicePendingEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerServiceVerifiedEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.participationStage!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuyOnGoogleProgramStatus--;
}

core.int buildCounterCaptureOrderRequest = 0;
api.CaptureOrderRequest buildCaptureOrderRequest() {
  final o = api.CaptureOrderRequest();
  buildCounterCaptureOrderRequest++;
  if (buildCounterCaptureOrderRequest < 3) {}
  buildCounterCaptureOrderRequest--;
  return o;
}

void checkCaptureOrderRequest(api.CaptureOrderRequest o) {
  buildCounterCaptureOrderRequest++;
  if (buildCounterCaptureOrderRequest < 3) {}
  buildCounterCaptureOrderRequest--;
}

core.int buildCounterCaptureOrderResponse = 0;
api.CaptureOrderResponse buildCaptureOrderResponse() {
  final o = api.CaptureOrderResponse();
  buildCounterCaptureOrderResponse++;
  if (buildCounterCaptureOrderResponse < 3) {
    o.executionStatus = 'foo';
  }
  buildCounterCaptureOrderResponse--;
  return o;
}

void checkCaptureOrderResponse(api.CaptureOrderResponse o) {
  buildCounterCaptureOrderResponse++;
  if (buildCounterCaptureOrderResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterCaptureOrderResponse--;
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

core.List<core.String> buildUnnamed5104() => [
      'foo',
      'foo',
    ];

void checkUnnamed5104(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5105() => [
      'foo',
      'foo',
    ];

void checkUnnamed5105(core.List<core.String> o) {
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
    o.eddServices = buildUnnamed5104();
    o.name = 'foo';
    o.services = buildUnnamed5105();
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
    checkUnnamed5104(o.eddServices!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5105(o.services!);
  }
  buildCounterCarriersCarrier--;
}

core.List<api.CollectionFeaturedProduct> buildUnnamed5106() => [
      buildCollectionFeaturedProduct(),
      buildCollectionFeaturedProduct(),
    ];

void checkUnnamed5106(core.List<api.CollectionFeaturedProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionFeaturedProduct(o[0]);
  checkCollectionFeaturedProduct(o[1]);
}

core.List<core.String> buildUnnamed5107() => [
      'foo',
      'foo',
    ];

void checkUnnamed5107(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5108() => [
      'foo',
      'foo',
    ];

void checkUnnamed5108(core.List<core.String> o) {
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
    o.featuredProduct = buildUnnamed5106();
    o.headline = buildUnnamed5107();
    o.id = 'foo';
    o.imageLink = buildUnnamed5108();
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
    checkUnnamed5106(o.featuredProduct!);
    checkUnnamed5107(o.headline!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed5108(o.imageLink!);
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

core.List<api.CollectionStatusItemLevelIssue> buildUnnamed5109() => [
      buildCollectionStatusItemLevelIssue(),
      buildCollectionStatusItemLevelIssue(),
    ];

void checkUnnamed5109(core.List<api.CollectionStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatusItemLevelIssue(o[0]);
  checkCollectionStatusItemLevelIssue(o[1]);
}

core.List<api.CollectionStatusDestinationStatus> buildUnnamed5110() => [
      buildCollectionStatusDestinationStatus(),
      buildCollectionStatusDestinationStatus(),
    ];

void checkUnnamed5110(core.List<api.CollectionStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatusDestinationStatus(o[0]);
  checkCollectionStatusDestinationStatus(o[1]);
}

core.int buildCounterCollectionStatus = 0;
api.CollectionStatus buildCollectionStatus() {
  final o = api.CollectionStatus();
  buildCounterCollectionStatus++;
  if (buildCounterCollectionStatus < 3) {
    o.collectionLevelIssuses = buildUnnamed5109();
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed5110();
    o.id = 'foo';
    o.lastUpdateDate = 'foo';
  }
  buildCounterCollectionStatus--;
  return o;
}

void checkCollectionStatus(api.CollectionStatus o) {
  buildCounterCollectionStatus++;
  if (buildCounterCollectionStatus < 3) {
    checkUnnamed5109(o.collectionLevelIssuses!);
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    checkUnnamed5110(o.destinationStatuses!);
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

core.int buildCounterCollectionStatusDestinationStatus = 0;
api.CollectionStatusDestinationStatus buildCollectionStatusDestinationStatus() {
  final o = api.CollectionStatusDestinationStatus();
  buildCounterCollectionStatusDestinationStatus++;
  if (buildCounterCollectionStatusDestinationStatus < 3) {
    o.destination = 'foo';
    o.status = 'foo';
  }
  buildCounterCollectionStatusDestinationStatus--;
  return o;
}

void checkCollectionStatusDestinationStatus(
    api.CollectionStatusDestinationStatus o) {
  buildCounterCollectionStatusDestinationStatus++;
  if (buildCounterCollectionStatusDestinationStatus < 3) {
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollectionStatusDestinationStatus--;
}

core.int buildCounterCollectionStatusItemLevelIssue = 0;
api.CollectionStatusItemLevelIssue buildCollectionStatusItemLevelIssue() {
  final o = api.CollectionStatusItemLevelIssue();
  buildCounterCollectionStatusItemLevelIssue++;
  if (buildCounterCollectionStatusItemLevelIssue < 3) {
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

core.List<core.String> buildUnnamed5111() => [
      'foo',
      'foo',
    ];

void checkUnnamed5111(core.List<core.String> o) {
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
    o.labelIds = buildUnnamed5111();
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
    checkUnnamed5111(o.labelIds!);
  }
  buildCounterCss--;
}

core.List<api.CustomAttribute> buildUnnamed5112() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed5112(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed5112();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed5112(o.groupValues!);
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

core.int buildCounterCustomerReturnReason = 0;
api.CustomerReturnReason buildCustomerReturnReason() {
  final o = api.CustomerReturnReason();
  buildCounterCustomerReturnReason++;
  if (buildCounterCustomerReturnReason < 3) {
    o.description = 'foo';
    o.reasonCode = 'foo';
  }
  buildCounterCustomerReturnReason--;
  return o;
}

void checkCustomerReturnReason(api.CustomerReturnReason o) {
  buildCounterCustomerReturnReason++;
  if (buildCounterCustomerReturnReason < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerReturnReason--;
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

core.List<api.DatafeedTarget> buildUnnamed5113() => [
      buildDatafeedTarget(),
      buildDatafeedTarget(),
    ];

void checkUnnamed5113(core.List<api.DatafeedTarget> o) {
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
    o.targets = buildUnnamed5113();
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
    checkUnnamed5113(o.targets!);
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

core.List<api.DatafeedStatusError> buildUnnamed5114() => [
      buildDatafeedStatusError(),
      buildDatafeedStatusError(),
    ];

void checkUnnamed5114(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.List<api.DatafeedStatusError> buildUnnamed5115() => [
      buildDatafeedStatusError(),
      buildDatafeedStatusError(),
    ];

void checkUnnamed5115(core.List<api.DatafeedStatusError> o) {
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
    o.errors = buildUnnamed5114();
    o.itemsTotal = 'foo';
    o.itemsValid = 'foo';
    o.kind = 'foo';
    o.language = 'foo';
    o.lastUploadDate = 'foo';
    o.processingStatus = 'foo';
    o.warnings = buildUnnamed5115();
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
    checkUnnamed5114(o.errors!);
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
    checkUnnamed5115(o.warnings!);
  }
  buildCounterDatafeedStatus--;
}

core.List<api.DatafeedStatusExample> buildUnnamed5116() => [
      buildDatafeedStatusExample(),
      buildDatafeedStatusExample(),
    ];

void checkUnnamed5116(core.List<api.DatafeedStatusExample> o) {
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
    o.examples = buildUnnamed5116();
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
    checkUnnamed5116(o.examples!);
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

core.List<core.String> buildUnnamed5117() => [
      'foo',
      'foo',
    ];

void checkUnnamed5117(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5118() => [
      'foo',
      'foo',
    ];

void checkUnnamed5118(core.List<core.String> o) {
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
    o.excludedDestinations = buildUnnamed5117();
    o.includedDestinations = buildUnnamed5118();
    o.language = 'foo';
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
    checkUnnamed5117(o.excludedDestinations!);
    checkUnnamed5118(o.includedDestinations!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatafeedTarget--;
}

core.List<api.DatafeedsCustomBatchRequestEntry> buildUnnamed5119() => [
      buildDatafeedsCustomBatchRequestEntry(),
      buildDatafeedsCustomBatchRequestEntry(),
    ];

void checkUnnamed5119(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(o[0]);
  checkDatafeedsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
api.DatafeedsCustomBatchRequest buildDatafeedsCustomBatchRequest() {
  final o = api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed5119();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

void checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed5119(o.entries!);
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

core.List<api.DatafeedsCustomBatchResponseEntry> buildUnnamed5120() => [
      buildDatafeedsCustomBatchResponseEntry(),
      buildDatafeedsCustomBatchResponseEntry(),
    ];

void checkUnnamed5120(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(o[0]);
  checkDatafeedsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
api.DatafeedsCustomBatchResponse buildDatafeedsCustomBatchResponse() {
  final o = api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed5120();
    o.kind = 'foo';
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

void checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed5120(o.entries!);
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

core.List<api.Datafeed> buildUnnamed5121() => [
      buildDatafeed(),
      buildDatafeed(),
    ];

void checkUnnamed5121(core.List<api.Datafeed> o) {
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
    o.resources = buildUnnamed5121();
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
    checkUnnamed5121(o.resources!);
  }
  buildCounterDatafeedsListResponse--;
}

core.List<api.DatafeedstatusesCustomBatchRequestEntry> buildUnnamed5122() => [
      buildDatafeedstatusesCustomBatchRequestEntry(),
      buildDatafeedstatusesCustomBatchRequestEntry(),
    ];

void checkUnnamed5122(
    core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
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
    o.entries = buildUnnamed5122();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

void checkDatafeedstatusesCustomBatchRequest(
    api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed5122(o.entries!);
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

core.List<api.DatafeedstatusesCustomBatchResponseEntry> buildUnnamed5123() => [
      buildDatafeedstatusesCustomBatchResponseEntry(),
      buildDatafeedstatusesCustomBatchResponseEntry(),
    ];

void checkUnnamed5123(
    core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
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
    o.entries = buildUnnamed5123();
    o.kind = 'foo';
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

void checkDatafeedstatusesCustomBatchResponse(
    api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed5123(o.entries!);
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

core.List<api.DatafeedStatus> buildUnnamed5124() => [
      buildDatafeedStatus(),
      buildDatafeedStatus(),
    ];

void checkUnnamed5124(core.List<api.DatafeedStatus> o) {
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
    o.resources = buildUnnamed5124();
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
    checkUnnamed5124(o.resources!);
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

core.List<api.HolidayCutoff> buildUnnamed5125() => [
      buildHolidayCutoff(),
      buildHolidayCutoff(),
    ];

void checkUnnamed5125(core.List<api.HolidayCutoff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidayCutoff(o[0]);
  checkHolidayCutoff(o[1]);
}

core.List<api.WarehouseBasedDeliveryTime> buildUnnamed5126() => [
      buildWarehouseBasedDeliveryTime(),
      buildWarehouseBasedDeliveryTime(),
    ];

void checkUnnamed5126(core.List<api.WarehouseBasedDeliveryTime> o) {
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
    o.holidayCutoffs = buildUnnamed5125();
    o.maxHandlingTimeInDays = 42;
    o.maxTransitTimeInDays = 42;
    o.minHandlingTimeInDays = 42;
    o.minTransitTimeInDays = 42;
    o.transitBusinessDayConfig = buildBusinessDayConfig();
    o.transitTimeTable = buildTransitTable();
    o.warehouseBasedDeliveryTimes = buildUnnamed5126();
  }
  buildCounterDeliveryTime--;
  return o;
}

void checkDeliveryTime(api.DeliveryTime o) {
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    checkCutoffTime(o.cutoffTime!);
    checkBusinessDayConfig(o.handlingBusinessDayConfig!);
    checkUnnamed5125(o.holidayCutoffs!);
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
    checkUnnamed5126(o.warehouseBasedDeliveryTimes!);
  }
  buildCounterDeliveryTime--;
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

core.List<api.Error> buildUnnamed5127() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed5127(core.List<api.Error> o) {
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
    o.errors = buildUnnamed5127();
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
    checkUnnamed5127(o.errors!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterErrors--;
}

core.List<api.FreeListingsProgramStatusRegionStatus> buildUnnamed5128() => [
      buildFreeListingsProgramStatusRegionStatus(),
      buildFreeListingsProgramStatusRegionStatus(),
    ];

void checkUnnamed5128(core.List<api.FreeListingsProgramStatusRegionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeListingsProgramStatusRegionStatus(o[0]);
  checkFreeListingsProgramStatusRegionStatus(o[1]);
}

core.int buildCounterFreeListingsProgramStatus = 0;
api.FreeListingsProgramStatus buildFreeListingsProgramStatus() {
  final o = api.FreeListingsProgramStatus();
  buildCounterFreeListingsProgramStatus++;
  if (buildCounterFreeListingsProgramStatus < 3) {
    o.regionStatuses = buildUnnamed5128();
    o.state = 'foo';
  }
  buildCounterFreeListingsProgramStatus--;
  return o;
}

void checkFreeListingsProgramStatus(api.FreeListingsProgramStatus o) {
  buildCounterFreeListingsProgramStatus++;
  if (buildCounterFreeListingsProgramStatus < 3) {
    checkUnnamed5128(o.regionStatuses!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterFreeListingsProgramStatus--;
}

core.List<core.String> buildUnnamed5129() => [
      'foo',
      'foo',
    ];

void checkUnnamed5129(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5130() => [
      'foo',
      'foo',
    ];

void checkUnnamed5130(core.List<core.String> o) {
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
    o.enhancedEligibilityStatus = 'foo';
    o.ineligibilityReason = 'foo';
    o.regionCodes = buildUnnamed5129();
    o.reviewEligibilityStatus = 'foo';
    o.reviewIssues = buildUnnamed5130();
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
    unittest.expect(
      o.enhancedEligibilityStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ineligibilityReason!,
      unittest.equals('foo'),
    );
    checkUnnamed5129(o.regionCodes!);
    unittest.expect(
      o.reviewEligibilityStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed5130(o.reviewIssues!);
  }
  buildCounterFreeListingsProgramStatusRegionStatus--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed5131() => [
      buildGmbAccountsGmbAccount(),
      buildGmbAccountsGmbAccount(),
    ];

void checkUnnamed5131(core.List<api.GmbAccountsGmbAccount> o) {
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
    o.gmbAccounts = buildUnnamed5131();
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
    checkUnnamed5131(o.gmbAccounts!);
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

core.List<api.LocationIdSet> buildUnnamed5132() => [
      buildLocationIdSet(),
      buildLocationIdSet(),
    ];

void checkUnnamed5132(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0]);
  checkLocationIdSet(o[1]);
}

core.List<core.String> buildUnnamed5133() => [
      'foo',
      'foo',
    ];

void checkUnnamed5133(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5134() => [
      'foo',
      'foo',
    ];

void checkUnnamed5134(core.List<core.String> o) {
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

core.List<api.Price> buildUnnamed5135() => [
      buildPrice(),
      buildPrice(),
    ];

void checkUnnamed5135(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0]);
  checkPrice(o[1]);
}

core.List<api.Weight> buildUnnamed5136() => [
      buildWeight(),
      buildWeight(),
    ];

void checkUnnamed5136(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0]);
  checkWeight(o[1]);
}

core.int buildCounterHeaders = 0;
api.Headers buildHeaders() {
  final o = api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed5132();
    o.numberOfItems = buildUnnamed5133();
    o.postalCodeGroupNames = buildUnnamed5134();
    o.prices = buildUnnamed5135();
    o.weights = buildUnnamed5136();
  }
  buildCounterHeaders--;
  return o;
}

void checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed5132(o.locations!);
    checkUnnamed5133(o.numberOfItems!);
    checkUnnamed5134(o.postalCodeGroupNames!);
    checkUnnamed5135(o.prices!);
    checkUnnamed5136(o.weights!);
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

core.int buildCounterInapplicabilityDetails = 0;
api.InapplicabilityDetails buildInapplicabilityDetails() {
  final o = api.InapplicabilityDetails();
  buildCounterInapplicabilityDetails++;
  if (buildCounterInapplicabilityDetails < 3) {
    o.inapplicableCount = 'foo';
    o.inapplicableReason = 'foo';
  }
  buildCounterInapplicabilityDetails--;
  return o;
}

void checkInapplicabilityDetails(api.InapplicabilityDetails o) {
  buildCounterInapplicabilityDetails++;
  if (buildCounterInapplicabilityDetails < 3) {
    unittest.expect(
      o.inapplicableCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inapplicableReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterInapplicabilityDetails--;
}

core.int buildCounterInstallment = 0;
api.Installment buildInstallment() {
  final o = api.Installment();
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    o.amount = buildPrice();
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
      o.months!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstallment--;
}

core.List<api.InvoiceSummaryAdditionalChargeSummary> buildUnnamed5137() => [
      buildInvoiceSummaryAdditionalChargeSummary(),
      buildInvoiceSummaryAdditionalChargeSummary(),
    ];

void checkUnnamed5137(core.List<api.InvoiceSummaryAdditionalChargeSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceSummaryAdditionalChargeSummary(o[0]);
  checkInvoiceSummaryAdditionalChargeSummary(o[1]);
}

core.int buildCounterInvoiceSummary = 0;
api.InvoiceSummary buildInvoiceSummary() {
  final o = api.InvoiceSummary();
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    o.additionalChargeSummaries = buildUnnamed5137();
    o.productTotal = buildAmount();
  }
  buildCounterInvoiceSummary--;
  return o;
}

void checkInvoiceSummary(api.InvoiceSummary o) {
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    checkUnnamed5137(o.additionalChargeSummaries!);
    checkAmount(o.productTotal!);
  }
  buildCounterInvoiceSummary--;
}

core.int buildCounterInvoiceSummaryAdditionalChargeSummary = 0;
api.InvoiceSummaryAdditionalChargeSummary
    buildInvoiceSummaryAdditionalChargeSummary() {
  final o = api.InvoiceSummaryAdditionalChargeSummary();
  buildCounterInvoiceSummaryAdditionalChargeSummary++;
  if (buildCounterInvoiceSummaryAdditionalChargeSummary < 3) {
    o.totalAmount = buildAmount();
    o.type = 'foo';
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
  return o;
}

void checkInvoiceSummaryAdditionalChargeSummary(
    api.InvoiceSummaryAdditionalChargeSummary o) {
  buildCounterInvoiceSummaryAdditionalChargeSummary++;
  if (buildCounterInvoiceSummaryAdditionalChargeSummary < 3) {
    checkAmount(o.totalAmount!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
}

core.List<core.String> buildUnnamed5138() => [
      'foo',
      'foo',
    ];

void checkUnnamed5138(core.List<core.String> o) {
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
    o.labelIds = buildUnnamed5138();
  }
  buildCounterLabelIds--;
  return o;
}

void checkLabelIds(api.LabelIds o) {
  buildCounterLabelIds++;
  if (buildCounterLabelIds < 3) {
    checkUnnamed5138(o.labelIds!);
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

core.List<api.LiaCountrySettings> buildUnnamed5139() => [
      buildLiaCountrySettings(),
      buildLiaCountrySettings(),
    ];

void checkUnnamed5139(core.List<api.LiaCountrySettings> o) {
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
    o.countrySettings = buildUnnamed5139();
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
    checkUnnamed5139(o.countrySettings!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiaSettings--;
}

core.List<api.LiasettingsCustomBatchRequestEntry> buildUnnamed5140() => [
      buildLiasettingsCustomBatchRequestEntry(),
      buildLiasettingsCustomBatchRequestEntry(),
    ];

void checkUnnamed5140(core.List<api.LiasettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchRequestEntry(o[0]);
  checkLiasettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchRequest = 0;
api.LiasettingsCustomBatchRequest buildLiasettingsCustomBatchRequest() {
  final o = api.LiasettingsCustomBatchRequest();
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed5140();
  }
  buildCounterLiasettingsCustomBatchRequest--;
  return o;
}

void checkLiasettingsCustomBatchRequest(api.LiasettingsCustomBatchRequest o) {
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    checkUnnamed5140(o.entries!);
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

core.List<api.LiasettingsCustomBatchResponseEntry> buildUnnamed5141() => [
      buildLiasettingsCustomBatchResponseEntry(),
      buildLiasettingsCustomBatchResponseEntry(),
    ];

void checkUnnamed5141(core.List<api.LiasettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchResponseEntry(o[0]);
  checkLiasettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponse = 0;
api.LiasettingsCustomBatchResponse buildLiasettingsCustomBatchResponse() {
  final o = api.LiasettingsCustomBatchResponse();
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed5141();
    o.kind = 'foo';
  }
  buildCounterLiasettingsCustomBatchResponse--;
  return o;
}

void checkLiasettingsCustomBatchResponse(api.LiasettingsCustomBatchResponse o) {
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    checkUnnamed5141(o.entries!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsCustomBatchResponse--;
}

core.List<api.PosDataProviders> buildUnnamed5142() => [
      buildPosDataProviders(),
      buildPosDataProviders(),
    ];

void checkUnnamed5142(core.List<api.PosDataProviders> o) {
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
    o.posDataProviders = buildUnnamed5142();
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
    checkUnnamed5142(o.posDataProviders!);
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed5143() => [
      buildGmbAccountsGmbAccount(),
      buildGmbAccountsGmbAccount(),
    ];

void checkUnnamed5143(core.List<api.GmbAccountsGmbAccount> o) {
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
    o.gmbAccounts = buildUnnamed5143();
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
    checkUnnamed5143(o.gmbAccounts!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
}

core.List<api.PosDataProviders> buildUnnamed5144() => [
      buildPosDataProviders(),
      buildPosDataProviders(),
    ];

void checkUnnamed5144(core.List<api.PosDataProviders> o) {
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
    o.posDataProviders = buildUnnamed5144();
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
    checkUnnamed5144(o.posDataProviders!);
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
}

core.List<api.LiaSettings> buildUnnamed5145() => [
      buildLiaSettings(),
      buildLiaSettings(),
    ];

void checkUnnamed5145(core.List<api.LiaSettings> o) {
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
    o.resources = buildUnnamed5145();
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
    checkUnnamed5145(o.resources!);
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

core.List<api.LinkService> buildUnnamed5146() => [
      buildLinkService(),
      buildLinkService(),
    ];

void checkUnnamed5146(core.List<api.LinkService> o) {
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
    o.services = buildUnnamed5146();
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
    checkUnnamed5146(o.services!);
  }
  buildCounterLinkedAccount--;
}

core.List<api.AccountLabel> buildUnnamed5147() => [
      buildAccountLabel(),
      buildAccountLabel(),
    ];

void checkUnnamed5147(core.List<api.AccountLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountLabel(o[0]);
  checkAccountLabel(o[1]);
}

core.int buildCounterListAccountLabelsResponse = 0;
api.ListAccountLabelsResponse buildListAccountLabelsResponse() {
  final o = api.ListAccountLabelsResponse();
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    o.accountLabels = buildUnnamed5147();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountLabelsResponse--;
  return o;
}

void checkListAccountLabelsResponse(api.ListAccountLabelsResponse o) {
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    checkUnnamed5147(o.accountLabels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccountLabelsResponse--;
}

core.List<api.AccountReturnCarrier> buildUnnamed5148() => [
      buildAccountReturnCarrier(),
      buildAccountReturnCarrier(),
    ];

void checkUnnamed5148(core.List<api.AccountReturnCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountReturnCarrier(o[0]);
  checkAccountReturnCarrier(o[1]);
}

core.int buildCounterListAccountReturnCarrierResponse = 0;
api.ListAccountReturnCarrierResponse buildListAccountReturnCarrierResponse() {
  final o = api.ListAccountReturnCarrierResponse();
  buildCounterListAccountReturnCarrierResponse++;
  if (buildCounterListAccountReturnCarrierResponse < 3) {
    o.accountReturnCarriers = buildUnnamed5148();
  }
  buildCounterListAccountReturnCarrierResponse--;
  return o;
}

void checkListAccountReturnCarrierResponse(
    api.ListAccountReturnCarrierResponse o) {
  buildCounterListAccountReturnCarrierResponse++;
  if (buildCounterListAccountReturnCarrierResponse < 3) {
    checkUnnamed5148(o.accountReturnCarriers!);
  }
  buildCounterListAccountReturnCarrierResponse--;
}

core.List<api.CollectionStatus> buildUnnamed5149() => [
      buildCollectionStatus(),
      buildCollectionStatus(),
    ];

void checkUnnamed5149(core.List<api.CollectionStatus> o) {
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
    o.resources = buildUnnamed5149();
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
    checkUnnamed5149(o.resources!);
  }
  buildCounterListCollectionStatusesResponse--;
}

core.List<api.Collection> buildUnnamed5150() => [
      buildCollection(),
      buildCollection(),
    ];

void checkUnnamed5150(core.List<api.Collection> o) {
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
    o.resources = buildUnnamed5150();
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
    checkUnnamed5150(o.resources!);
  }
  buildCounterListCollectionsResponse--;
}

core.List<api.Css> buildUnnamed5151() => [
      buildCss(),
      buildCss(),
    ];

void checkUnnamed5151(core.List<api.Css> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCss(o[0]);
  checkCss(o[1]);
}

core.int buildCounterListCssesResponse = 0;
api.ListCssesResponse buildListCssesResponse() {
  final o = api.ListCssesResponse();
  buildCounterListCssesResponse++;
  if (buildCounterListCssesResponse < 3) {
    o.csses = buildUnnamed5151();
    o.nextPageToken = 'foo';
  }
  buildCounterListCssesResponse--;
  return o;
}

void checkListCssesResponse(api.ListCssesResponse o) {
  buildCounterListCssesResponse++;
  if (buildCounterListCssesResponse < 3) {
    checkUnnamed5151(o.csses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCssesResponse--;
}

core.List<api.Region> buildUnnamed5152() => [
      buildRegion(),
      buildRegion(),
    ];

void checkUnnamed5152(core.List<api.Region> o) {
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
    o.regions = buildUnnamed5152();
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
    checkUnnamed5152(o.regions!);
  }
  buildCounterListRegionsResponse--;
}

core.List<api.RepricingProductReport> buildUnnamed5153() => [
      buildRepricingProductReport(),
      buildRepricingProductReport(),
    ];

void checkUnnamed5153(core.List<api.RepricingProductReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingProductReport(o[0]);
  checkRepricingProductReport(o[1]);
}

core.int buildCounterListRepricingProductReportsResponse = 0;
api.ListRepricingProductReportsResponse
    buildListRepricingProductReportsResponse() {
  final o = api.ListRepricingProductReportsResponse();
  buildCounterListRepricingProductReportsResponse++;
  if (buildCounterListRepricingProductReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.repricingProductReports = buildUnnamed5153();
  }
  buildCounterListRepricingProductReportsResponse--;
  return o;
}

void checkListRepricingProductReportsResponse(
    api.ListRepricingProductReportsResponse o) {
  buildCounterListRepricingProductReportsResponse++;
  if (buildCounterListRepricingProductReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5153(o.repricingProductReports!);
  }
  buildCounterListRepricingProductReportsResponse--;
}

core.List<api.RepricingRuleReport> buildUnnamed5154() => [
      buildRepricingRuleReport(),
      buildRepricingRuleReport(),
    ];

void checkUnnamed5154(core.List<api.RepricingRuleReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingRuleReport(o[0]);
  checkRepricingRuleReport(o[1]);
}

core.int buildCounterListRepricingRuleReportsResponse = 0;
api.ListRepricingRuleReportsResponse buildListRepricingRuleReportsResponse() {
  final o = api.ListRepricingRuleReportsResponse();
  buildCounterListRepricingRuleReportsResponse++;
  if (buildCounterListRepricingRuleReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.repricingRuleReports = buildUnnamed5154();
  }
  buildCounterListRepricingRuleReportsResponse--;
  return o;
}

void checkListRepricingRuleReportsResponse(
    api.ListRepricingRuleReportsResponse o) {
  buildCounterListRepricingRuleReportsResponse++;
  if (buildCounterListRepricingRuleReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5154(o.repricingRuleReports!);
  }
  buildCounterListRepricingRuleReportsResponse--;
}

core.List<api.RepricingRule> buildUnnamed5155() => [
      buildRepricingRule(),
      buildRepricingRule(),
    ];

void checkUnnamed5155(core.List<api.RepricingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingRule(o[0]);
  checkRepricingRule(o[1]);
}

core.int buildCounterListRepricingRulesResponse = 0;
api.ListRepricingRulesResponse buildListRepricingRulesResponse() {
  final o = api.ListRepricingRulesResponse();
  buildCounterListRepricingRulesResponse++;
  if (buildCounterListRepricingRulesResponse < 3) {
    o.nextPageToken = 'foo';
    o.repricingRules = buildUnnamed5155();
  }
  buildCounterListRepricingRulesResponse--;
  return o;
}

void checkListRepricingRulesResponse(api.ListRepricingRulesResponse o) {
  buildCounterListRepricingRulesResponse++;
  if (buildCounterListRepricingRulesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5155(o.repricingRules!);
  }
  buildCounterListRepricingRulesResponse--;
}

core.List<api.ReturnPolicyOnline> buildUnnamed5156() => [
      buildReturnPolicyOnline(),
      buildReturnPolicyOnline(),
    ];

void checkUnnamed5156(core.List<api.ReturnPolicyOnline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicyOnline(o[0]);
  checkReturnPolicyOnline(o[1]);
}

core.int buildCounterListReturnPolicyOnlineResponse = 0;
api.ListReturnPolicyOnlineResponse buildListReturnPolicyOnlineResponse() {
  final o = api.ListReturnPolicyOnlineResponse();
  buildCounterListReturnPolicyOnlineResponse++;
  if (buildCounterListReturnPolicyOnlineResponse < 3) {
    o.returnPolicies = buildUnnamed5156();
  }
  buildCounterListReturnPolicyOnlineResponse--;
  return o;
}

void checkListReturnPolicyOnlineResponse(api.ListReturnPolicyOnlineResponse o) {
  buildCounterListReturnPolicyOnlineResponse++;
  if (buildCounterListReturnPolicyOnlineResponse < 3) {
    checkUnnamed5156(o.returnPolicies!);
  }
  buildCounterListReturnPolicyOnlineResponse--;
}

core.int buildCounterLocalInventory = 0;
api.LocalInventory buildLocalInventory() {
  final o = api.LocalInventory();
  buildCounterLocalInventory++;
  if (buildCounterLocalInventory < 3) {
    o.availability = 'foo';
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

core.List<api.LocalinventoryCustomBatchRequestEntry> buildUnnamed5157() => [
      buildLocalinventoryCustomBatchRequestEntry(),
      buildLocalinventoryCustomBatchRequestEntry(),
    ];

void checkUnnamed5157(core.List<api.LocalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchRequestEntry(o[0]);
  checkLocalinventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLocalinventoryCustomBatchRequest = 0;
api.LocalinventoryCustomBatchRequest buildLocalinventoryCustomBatchRequest() {
  final o = api.LocalinventoryCustomBatchRequest();
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed5157();
  }
  buildCounterLocalinventoryCustomBatchRequest--;
  return o;
}

void checkLocalinventoryCustomBatchRequest(
    api.LocalinventoryCustomBatchRequest o) {
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    checkUnnamed5157(o.entries!);
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

core.List<api.LocalinventoryCustomBatchResponseEntry> buildUnnamed5158() => [
      buildLocalinventoryCustomBatchResponseEntry(),
      buildLocalinventoryCustomBatchResponseEntry(),
    ];

void checkUnnamed5158(core.List<api.LocalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchResponseEntry(o[0]);
  checkLocalinventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLocalinventoryCustomBatchResponse = 0;
api.LocalinventoryCustomBatchResponse buildLocalinventoryCustomBatchResponse() {
  final o = api.LocalinventoryCustomBatchResponse();
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed5158();
    o.kind = 'foo';
  }
  buildCounterLocalinventoryCustomBatchResponse--;
  return o;
}

void checkLocalinventoryCustomBatchResponse(
    api.LocalinventoryCustomBatchResponse o) {
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    checkUnnamed5158(o.entries!);
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

core.List<core.String> buildUnnamed5159() => [
      'foo',
      'foo',
    ];

void checkUnnamed5159(core.List<core.String> o) {
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
    o.locationIds = buildUnnamed5159();
  }
  buildCounterLocationIdSet--;
  return o;
}

void checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed5159(o.locationIds!);
  }
  buildCounterLocationIdSet--;
}

core.int buildCounterLoyaltyPoints = 0;
api.LoyaltyPoints buildLoyaltyPoints() {
  final o = api.LoyaltyPoints();
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    o.name = 'foo';
    o.pointsValue = 'foo';
    o.ratio = 42.0;
  }
  buildCounterLoyaltyPoints--;
  return o;
}

void checkLoyaltyPoints(api.LoyaltyPoints o) {
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pointsValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ratio!,
      unittest.equals(42.0),
    );
  }
  buildCounterLoyaltyPoints--;
}

core.List<api.MerchantOrderReturnItem> buildUnnamed5160() => [
      buildMerchantOrderReturnItem(),
      buildMerchantOrderReturnItem(),
    ];

void checkUnnamed5160(core.List<api.MerchantOrderReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturnItem(o[0]);
  checkMerchantOrderReturnItem(o[1]);
}

core.List<api.ReturnShipment> buildUnnamed5161() => [
      buildReturnShipment(),
      buildReturnShipment(),
    ];

void checkUnnamed5161(core.List<api.ReturnShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnShipment(o[0]);
  checkReturnShipment(o[1]);
}

core.int buildCounterMerchantOrderReturn = 0;
api.MerchantOrderReturn buildMerchantOrderReturn() {
  final o = api.MerchantOrderReturn();
  buildCounterMerchantOrderReturn++;
  if (buildCounterMerchantOrderReturn < 3) {
    o.creationDate = 'foo';
    o.merchantOrderId = 'foo';
    o.orderId = 'foo';
    o.orderReturnId = 'foo';
    o.returnItems = buildUnnamed5160();
    o.returnPricingInfo = buildReturnPricingInfo();
    o.returnShipments = buildUnnamed5161();
  }
  buildCounterMerchantOrderReturn--;
  return o;
}

void checkMerchantOrderReturn(api.MerchantOrderReturn o) {
  buildCounterMerchantOrderReturn++;
  if (buildCounterMerchantOrderReturn < 3) {
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderReturnId!,
      unittest.equals('foo'),
    );
    checkUnnamed5160(o.returnItems!);
    checkReturnPricingInfo(o.returnPricingInfo!);
    checkUnnamed5161(o.returnShipments!);
  }
  buildCounterMerchantOrderReturn--;
}

core.List<core.String> buildUnnamed5162() => [
      'foo',
      'foo',
    ];

void checkUnnamed5162(core.List<core.String> o) {
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

core.int buildCounterMerchantOrderReturnItem = 0;
api.MerchantOrderReturnItem buildMerchantOrderReturnItem() {
  final o = api.MerchantOrderReturnItem();
  buildCounterMerchantOrderReturnItem++;
  if (buildCounterMerchantOrderReturnItem < 3) {
    o.customerReturnReason = buildCustomerReturnReason();
    o.itemId = 'foo';
    o.merchantRejectionReason = buildMerchantRejectionReason();
    o.merchantReturnReason = buildRefundReason();
    o.product = buildOrderLineItemProduct();
    o.refundableAmount = buildMonetaryAmount();
    o.returnItemId = 'foo';
    o.returnShipmentIds = buildUnnamed5162();
    o.shipmentGroupId = 'foo';
    o.shipmentUnitId = 'foo';
    o.state = 'foo';
  }
  buildCounterMerchantOrderReturnItem--;
  return o;
}

void checkMerchantOrderReturnItem(api.MerchantOrderReturnItem o) {
  buildCounterMerchantOrderReturnItem++;
  if (buildCounterMerchantOrderReturnItem < 3) {
    checkCustomerReturnReason(o.customerReturnReason!);
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    checkMerchantRejectionReason(o.merchantRejectionReason!);
    checkRefundReason(o.merchantReturnReason!);
    checkOrderLineItemProduct(o.product!);
    checkMonetaryAmount(o.refundableAmount!);
    unittest.expect(
      o.returnItemId!,
      unittest.equals('foo'),
    );
    checkUnnamed5162(o.returnShipmentIds!);
    unittest.expect(
      o.shipmentGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterMerchantOrderReturnItem--;
}

core.int buildCounterMerchantRejectionReason = 0;
api.MerchantRejectionReason buildMerchantRejectionReason() {
  final o = api.MerchantRejectionReason();
  buildCounterMerchantRejectionReason++;
  if (buildCounterMerchantRejectionReason < 3) {
    o.description = 'foo';
    o.reasonCode = 'foo';
  }
  buildCounterMerchantRejectionReason--;
  return o;
}

void checkMerchantRejectionReason(api.MerchantRejectionReason o) {
  buildCounterMerchantRejectionReason++;
  if (buildCounterMerchantRejectionReason < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterMerchantRejectionReason--;
}

core.int buildCounterMetrics = 0;
api.Metrics buildMetrics() {
  final o = api.Metrics();
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    o.aos = 42.0;
    o.aovMicros = 42.0;
    o.clicks = 'foo';
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

core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> buildUnnamed5163() => [
      buildMinimumOrderValueTableStoreCodeSetWithMov(),
      buildMinimumOrderValueTableStoreCodeSetWithMov(),
    ];

void checkUnnamed5163(
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
    o.storeCodeSetWithMovs = buildUnnamed5163();
  }
  buildCounterMinimumOrderValueTable--;
  return o;
}

void checkMinimumOrderValueTable(api.MinimumOrderValueTable o) {
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    checkUnnamed5163(o.storeCodeSetWithMovs!);
  }
  buildCounterMinimumOrderValueTable--;
}

core.List<core.String> buildUnnamed5164() => [
      'foo',
      'foo',
    ];

void checkUnnamed5164(core.List<core.String> o) {
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
    o.storeCodes = buildUnnamed5164();
    o.value = buildPrice();
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
  return o;
}

void checkMinimumOrderValueTableStoreCodeSetWithMov(
    api.MinimumOrderValueTableStoreCodeSetWithMov o) {
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov++;
  if (buildCounterMinimumOrderValueTableStoreCodeSetWithMov < 3) {
    checkUnnamed5164(o.storeCodes!);
    checkPrice(o.value!);
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
}

core.int buildCounterMonetaryAmount = 0;
api.MonetaryAmount buildMonetaryAmount() {
  final o = api.MonetaryAmount();
  buildCounterMonetaryAmount++;
  if (buildCounterMonetaryAmount < 3) {
    o.priceAmount = buildPrice();
    o.taxAmount = buildPrice();
  }
  buildCounterMonetaryAmount--;
  return o;
}

void checkMonetaryAmount(api.MonetaryAmount o) {
  buildCounterMonetaryAmount++;
  if (buildCounterMonetaryAmount < 3) {
    checkPrice(o.priceAmount!);
    checkPrice(o.taxAmount!);
  }
  buildCounterMonetaryAmount--;
}

core.int buildCounterOnboardBuyOnGoogleProgramRequest = 0;
api.OnboardBuyOnGoogleProgramRequest buildOnboardBuyOnGoogleProgramRequest() {
  final o = api.OnboardBuyOnGoogleProgramRequest();
  buildCounterOnboardBuyOnGoogleProgramRequest++;
  if (buildCounterOnboardBuyOnGoogleProgramRequest < 3) {
    o.customerServiceEmail = 'foo';
  }
  buildCounterOnboardBuyOnGoogleProgramRequest--;
  return o;
}

void checkOnboardBuyOnGoogleProgramRequest(
    api.OnboardBuyOnGoogleProgramRequest o) {
  buildCounterOnboardBuyOnGoogleProgramRequest++;
  if (buildCounterOnboardBuyOnGoogleProgramRequest < 3) {
    unittest.expect(
      o.customerServiceEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterOnboardBuyOnGoogleProgramRequest--;
}

core.List<api.OrderOrderAnnotation> buildUnnamed5165() => [
      buildOrderOrderAnnotation(),
      buildOrderOrderAnnotation(),
    ];

void checkUnnamed5165(core.List<api.OrderOrderAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderOrderAnnotation(o[0]);
  checkOrderOrderAnnotation(o[1]);
}

core.List<api.OrderLineItem> buildUnnamed5166() => [
      buildOrderLineItem(),
      buildOrderLineItem(),
    ];

void checkUnnamed5166(core.List<api.OrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItem(o[0]);
  checkOrderLineItem(o[1]);
}

core.List<api.OrderPromotion> buildUnnamed5167() => [
      buildOrderPromotion(),
      buildOrderPromotion(),
    ];

void checkUnnamed5167(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

core.List<api.OrderRefund> buildUnnamed5168() => [
      buildOrderRefund(),
      buildOrderRefund(),
    ];

void checkUnnamed5168(core.List<api.OrderRefund> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderRefund(o[0]);
  checkOrderRefund(o[1]);
}

core.List<api.OrderShipment> buildUnnamed5169() => [
      buildOrderShipment(),
      buildOrderShipment(),
    ];

void checkUnnamed5169(core.List<api.OrderShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipment(o[0]);
  checkOrderShipment(o[1]);
}

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  final o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.acknowledged = true;
    o.annotations = buildUnnamed5165();
    o.billingAddress = buildOrderAddress();
    o.customer = buildOrderCustomer();
    o.deliveryDetails = buildOrderDeliveryDetails();
    o.id = 'foo';
    o.kind = 'foo';
    o.lineItems = buildUnnamed5166();
    o.merchantId = 'foo';
    o.merchantOrderId = 'foo';
    o.netPriceAmount = buildPrice();
    o.netTaxAmount = buildPrice();
    o.paymentStatus = 'foo';
    o.pickupDetails = buildOrderPickupDetails();
    o.placedDate = 'foo';
    o.promotions = buildUnnamed5167();
    o.refunds = buildUnnamed5168();
    o.shipments = buildUnnamed5169();
    o.shippingCost = buildPrice();
    o.shippingCostTax = buildPrice();
    o.status = 'foo';
    o.taxCollector = 'foo';
  }
  buildCounterOrder--;
  return o;
}

void checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(o.acknowledged!, unittest.isTrue);
    checkUnnamed5165(o.annotations!);
    checkOrderAddress(o.billingAddress!);
    checkOrderCustomer(o.customer!);
    checkOrderDeliveryDetails(o.deliveryDetails!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5166(o.lineItems!);
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantOrderId!,
      unittest.equals('foo'),
    );
    checkPrice(o.netPriceAmount!);
    checkPrice(o.netTaxAmount!);
    unittest.expect(
      o.paymentStatus!,
      unittest.equals('foo'),
    );
    checkOrderPickupDetails(o.pickupDetails!);
    unittest.expect(
      o.placedDate!,
      unittest.equals('foo'),
    );
    checkUnnamed5167(o.promotions!);
    checkUnnamed5168(o.refunds!);
    checkUnnamed5169(o.shipments!);
    checkPrice(o.shippingCost!);
    checkPrice(o.shippingCostTax!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taxCollector!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrder--;
}

core.List<core.String> buildUnnamed5170() => [
      'foo',
      'foo',
    ];

void checkUnnamed5170(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5171() => [
      'foo',
      'foo',
    ];

void checkUnnamed5171(core.List<core.String> o) {
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

core.int buildCounterOrderAddress = 0;
api.OrderAddress buildOrderAddress() {
  final o = api.OrderAddress();
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    o.country = 'foo';
    o.fullAddress = buildUnnamed5170();
    o.isPostOfficeBox = true;
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed5171();
  }
  buildCounterOrderAddress--;
  return o;
}

void checkOrderAddress(api.OrderAddress o) {
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkUnnamed5170(o.fullAddress!);
    unittest.expect(o.isPostOfficeBox!, unittest.isTrue);
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
    checkUnnamed5171(o.streetAddress!);
  }
  buildCounterOrderAddress--;
}

core.int buildCounterOrderCancellation = 0;
api.OrderCancellation buildOrderCancellation() {
  final o = api.OrderCancellation();
  buildCounterOrderCancellation++;
  if (buildCounterOrderCancellation < 3) {
    o.actor = 'foo';
    o.creationDate = 'foo';
    o.quantity = 42;
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrderCancellation--;
  return o;
}

void checkOrderCancellation(api.OrderCancellation o) {
  buildCounterOrderCancellation++;
  if (buildCounterOrderCancellation < 3) {
    unittest.expect(
      o.actor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderCancellation--;
}

core.int buildCounterOrderCustomer = 0;
api.OrderCustomer buildOrderCustomer() {
  final o = api.OrderCustomer();
  buildCounterOrderCustomer++;
  if (buildCounterOrderCustomer < 3) {
    o.fullName = 'foo';
    o.invoiceReceivingEmail = 'foo';
    o.loyaltyInfo = buildOrderCustomerLoyaltyInfo();
    o.marketingRightsInfo = buildOrderCustomerMarketingRightsInfo();
  }
  buildCounterOrderCustomer--;
  return o;
}

void checkOrderCustomer(api.OrderCustomer o) {
  buildCounterOrderCustomer++;
  if (buildCounterOrderCustomer < 3) {
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceReceivingEmail!,
      unittest.equals('foo'),
    );
    checkOrderCustomerLoyaltyInfo(o.loyaltyInfo!);
    checkOrderCustomerMarketingRightsInfo(o.marketingRightsInfo!);
  }
  buildCounterOrderCustomer--;
}

core.int buildCounterOrderCustomerLoyaltyInfo = 0;
api.OrderCustomerLoyaltyInfo buildOrderCustomerLoyaltyInfo() {
  final o = api.OrderCustomerLoyaltyInfo();
  buildCounterOrderCustomerLoyaltyInfo++;
  if (buildCounterOrderCustomerLoyaltyInfo < 3) {
    o.loyaltyNumber = 'foo';
    o.name = 'foo';
  }
  buildCounterOrderCustomerLoyaltyInfo--;
  return o;
}

void checkOrderCustomerLoyaltyInfo(api.OrderCustomerLoyaltyInfo o) {
  buildCounterOrderCustomerLoyaltyInfo++;
  if (buildCounterOrderCustomerLoyaltyInfo < 3) {
    unittest.expect(
      o.loyaltyNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderCustomerLoyaltyInfo--;
}

core.int buildCounterOrderCustomerMarketingRightsInfo = 0;
api.OrderCustomerMarketingRightsInfo buildOrderCustomerMarketingRightsInfo() {
  final o = api.OrderCustomerMarketingRightsInfo();
  buildCounterOrderCustomerMarketingRightsInfo++;
  if (buildCounterOrderCustomerMarketingRightsInfo < 3) {
    o.explicitMarketingPreference = 'foo';
    o.lastUpdatedTimestamp = 'foo';
    o.marketingEmailAddress = 'foo';
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
  return o;
}

void checkOrderCustomerMarketingRightsInfo(
    api.OrderCustomerMarketingRightsInfo o) {
  buildCounterOrderCustomerMarketingRightsInfo++;
  if (buildCounterOrderCustomerMarketingRightsInfo < 3) {
    unittest.expect(
      o.explicitMarketingPreference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdatedTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.marketingEmailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
}

core.int buildCounterOrderDeliveryDetails = 0;
api.OrderDeliveryDetails buildOrderDeliveryDetails() {
  final o = api.OrderDeliveryDetails();
  buildCounterOrderDeliveryDetails++;
  if (buildCounterOrderDeliveryDetails < 3) {
    o.address = buildOrderAddress();
    o.phoneNumber = 'foo';
  }
  buildCounterOrderDeliveryDetails--;
  return o;
}

void checkOrderDeliveryDetails(api.OrderDeliveryDetails o) {
  buildCounterOrderDeliveryDetails++;
  if (buildCounterOrderDeliveryDetails < 3) {
    checkOrderAddress(o.address!);
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderDeliveryDetails--;
}

core.List<api.OrderLineItemAdjustment> buildUnnamed5172() => [
      buildOrderLineItemAdjustment(),
      buildOrderLineItemAdjustment(),
    ];

void checkUnnamed5172(core.List<api.OrderLineItemAdjustment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemAdjustment(o[0]);
  checkOrderLineItemAdjustment(o[1]);
}

core.List<api.OrderMerchantProvidedAnnotation> buildUnnamed5173() => [
      buildOrderMerchantProvidedAnnotation(),
      buildOrderMerchantProvidedAnnotation(),
    ];

void checkUnnamed5173(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.List<api.OrderCancellation> buildUnnamed5174() => [
      buildOrderCancellation(),
      buildOrderCancellation(),
    ];

void checkUnnamed5174(core.List<api.OrderCancellation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderCancellation(o[0]);
  checkOrderCancellation(o[1]);
}

core.List<api.OrderReturn> buildUnnamed5175() => [
      buildOrderReturn(),
      buildOrderReturn(),
    ];

void checkUnnamed5175(core.List<api.OrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReturn(o[0]);
  checkOrderReturn(o[1]);
}

core.int buildCounterOrderLineItem = 0;
api.OrderLineItem buildOrderLineItem() {
  final o = api.OrderLineItem();
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    o.adjustments = buildUnnamed5172();
    o.annotations = buildUnnamed5173();
    o.cancellations = buildUnnamed5174();
    o.id = 'foo';
    o.price = buildPrice();
    o.product = buildOrderLineItemProduct();
    o.quantityCanceled = 42;
    o.quantityDelivered = 42;
    o.quantityOrdered = 42;
    o.quantityPending = 42;
    o.quantityReadyForPickup = 42;
    o.quantityReturned = 42;
    o.quantityShipped = 42;
    o.quantityUndeliverable = 42;
    o.returnInfo = buildOrderLineItemReturnInfo();
    o.returns = buildUnnamed5175();
    o.shippingDetails = buildOrderLineItemShippingDetails();
    o.tax = buildPrice();
  }
  buildCounterOrderLineItem--;
  return o;
}

void checkOrderLineItem(api.OrderLineItem o) {
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    checkUnnamed5172(o.adjustments!);
    checkUnnamed5173(o.annotations!);
    checkUnnamed5174(o.cancellations!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    checkOrderLineItemProduct(o.product!);
    unittest.expect(
      o.quantityCanceled!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityDelivered!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityOrdered!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityPending!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityReadyForPickup!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityReturned!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityShipped!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantityUndeliverable!,
      unittest.equals(42),
    );
    checkOrderLineItemReturnInfo(o.returnInfo!);
    checkUnnamed5175(o.returns!);
    checkOrderLineItemShippingDetails(o.shippingDetails!);
    checkPrice(o.tax!);
  }
  buildCounterOrderLineItem--;
}

core.int buildCounterOrderLineItemAdjustment = 0;
api.OrderLineItemAdjustment buildOrderLineItemAdjustment() {
  final o = api.OrderLineItemAdjustment();
  buildCounterOrderLineItemAdjustment++;
  if (buildCounterOrderLineItemAdjustment < 3) {
    o.priceAdjustment = buildPrice();
    o.taxAdjustment = buildPrice();
    o.type = 'foo';
  }
  buildCounterOrderLineItemAdjustment--;
  return o;
}

void checkOrderLineItemAdjustment(api.OrderLineItemAdjustment o) {
  buildCounterOrderLineItemAdjustment++;
  if (buildCounterOrderLineItemAdjustment < 3) {
    checkPrice(o.priceAdjustment!);
    checkPrice(o.taxAdjustment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderLineItemAdjustment--;
}

core.List<api.OrderLineItemProductFee> buildUnnamed5176() => [
      buildOrderLineItemProductFee(),
      buildOrderLineItemProductFee(),
    ];

void checkUnnamed5176(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0]);
  checkOrderLineItemProductFee(o[1]);
}

core.List<api.OrderLineItemProductVariantAttribute> buildUnnamed5177() => [
      buildOrderLineItemProductVariantAttribute(),
      buildOrderLineItemProductVariantAttribute(),
    ];

void checkUnnamed5177(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterOrderLineItemProduct = 0;
api.OrderLineItemProduct buildOrderLineItemProduct() {
  final o = api.OrderLineItemProduct();
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    o.brand = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.fees = buildUnnamed5176();
    o.gtin = 'foo';
    o.id = 'foo';
    o.imageLink = 'foo';
    o.itemGroupId = 'foo';
    o.mpn = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.shownImage = 'foo';
    o.targetCountry = 'foo';
    o.title = 'foo';
    o.variantAttributes = buildUnnamed5177();
  }
  buildCounterOrderLineItemProduct--;
  return o;
}

void checkOrderLineItemProduct(api.OrderLineItemProduct o) {
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    unittest.expect(
      o.brand!,
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
    checkUnnamed5176(o.fees!);
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.shownImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed5177(o.variantAttributes!);
  }
  buildCounterOrderLineItemProduct--;
}

core.int buildCounterOrderLineItemProductFee = 0;
api.OrderLineItemProductFee buildOrderLineItemProductFee() {
  final o = api.OrderLineItemProductFee();
  buildCounterOrderLineItemProductFee++;
  if (buildCounterOrderLineItemProductFee < 3) {
    o.amount = buildPrice();
    o.name = 'foo';
  }
  buildCounterOrderLineItemProductFee--;
  return o;
}

void checkOrderLineItemProductFee(api.OrderLineItemProductFee o) {
  buildCounterOrderLineItemProductFee++;
  if (buildCounterOrderLineItemProductFee < 3) {
    checkPrice(o.amount!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderLineItemProductFee--;
}

core.int buildCounterOrderLineItemProductVariantAttribute = 0;
api.OrderLineItemProductVariantAttribute
    buildOrderLineItemProductVariantAttribute() {
  final o = api.OrderLineItemProductVariantAttribute();
  buildCounterOrderLineItemProductVariantAttribute++;
  if (buildCounterOrderLineItemProductVariantAttribute < 3) {
    o.dimension = 'foo';
    o.value = 'foo';
  }
  buildCounterOrderLineItemProductVariantAttribute--;
  return o;
}

void checkOrderLineItemProductVariantAttribute(
    api.OrderLineItemProductVariantAttribute o) {
  buildCounterOrderLineItemProductVariantAttribute++;
  if (buildCounterOrderLineItemProductVariantAttribute < 3) {
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderLineItemProductVariantAttribute--;
}

core.int buildCounterOrderLineItemReturnInfo = 0;
api.OrderLineItemReturnInfo buildOrderLineItemReturnInfo() {
  final o = api.OrderLineItemReturnInfo();
  buildCounterOrderLineItemReturnInfo++;
  if (buildCounterOrderLineItemReturnInfo < 3) {
    o.daysToReturn = 42;
    o.isReturnable = true;
    o.policyUrl = 'foo';
  }
  buildCounterOrderLineItemReturnInfo--;
  return o;
}

void checkOrderLineItemReturnInfo(api.OrderLineItemReturnInfo o) {
  buildCounterOrderLineItemReturnInfo++;
  if (buildCounterOrderLineItemReturnInfo < 3) {
    unittest.expect(
      o.daysToReturn!,
      unittest.equals(42),
    );
    unittest.expect(o.isReturnable!, unittest.isTrue);
    unittest.expect(
      o.policyUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderLineItemReturnInfo--;
}

core.int buildCounterOrderLineItemShippingDetails = 0;
api.OrderLineItemShippingDetails buildOrderLineItemShippingDetails() {
  final o = api.OrderLineItemShippingDetails();
  buildCounterOrderLineItemShippingDetails++;
  if (buildCounterOrderLineItemShippingDetails < 3) {
    o.deliverByDate = 'foo';
    o.method = buildOrderLineItemShippingDetailsMethod();
    o.pickupPromiseInMinutes = 42;
    o.shipByDate = 'foo';
    o.type = 'foo';
  }
  buildCounterOrderLineItemShippingDetails--;
  return o;
}

void checkOrderLineItemShippingDetails(api.OrderLineItemShippingDetails o) {
  buildCounterOrderLineItemShippingDetails++;
  if (buildCounterOrderLineItemShippingDetails < 3) {
    unittest.expect(
      o.deliverByDate!,
      unittest.equals('foo'),
    );
    checkOrderLineItemShippingDetailsMethod(o.method!);
    unittest.expect(
      o.pickupPromiseInMinutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.shipByDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderLineItemShippingDetails--;
}

core.int buildCounterOrderLineItemShippingDetailsMethod = 0;
api.OrderLineItemShippingDetailsMethod
    buildOrderLineItemShippingDetailsMethod() {
  final o = api.OrderLineItemShippingDetailsMethod();
  buildCounterOrderLineItemShippingDetailsMethod++;
  if (buildCounterOrderLineItemShippingDetailsMethod < 3) {
    o.carrier = 'foo';
    o.maxDaysInTransit = 42;
    o.methodName = 'foo';
    o.minDaysInTransit = 42;
  }
  buildCounterOrderLineItemShippingDetailsMethod--;
  return o;
}

void checkOrderLineItemShippingDetailsMethod(
    api.OrderLineItemShippingDetailsMethod o) {
  buildCounterOrderLineItemShippingDetailsMethod++;
  if (buildCounterOrderLineItemShippingDetailsMethod < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDaysInTransit!,
      unittest.equals(42),
    );
    unittest.expect(
      o.methodName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minDaysInTransit!,
      unittest.equals(42),
    );
  }
  buildCounterOrderLineItemShippingDetailsMethod--;
}

core.int buildCounterOrderMerchantProvidedAnnotation = 0;
api.OrderMerchantProvidedAnnotation buildOrderMerchantProvidedAnnotation() {
  final o = api.OrderMerchantProvidedAnnotation();
  buildCounterOrderMerchantProvidedAnnotation++;
  if (buildCounterOrderMerchantProvidedAnnotation < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterOrderMerchantProvidedAnnotation--;
  return o;
}

void checkOrderMerchantProvidedAnnotation(
    api.OrderMerchantProvidedAnnotation o) {
  buildCounterOrderMerchantProvidedAnnotation++;
  if (buildCounterOrderMerchantProvidedAnnotation < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderMerchantProvidedAnnotation--;
}

core.int buildCounterOrderOrderAnnotation = 0;
api.OrderOrderAnnotation buildOrderOrderAnnotation() {
  final o = api.OrderOrderAnnotation();
  buildCounterOrderOrderAnnotation++;
  if (buildCounterOrderOrderAnnotation < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterOrderOrderAnnotation--;
  return o;
}

void checkOrderOrderAnnotation(api.OrderOrderAnnotation o) {
  buildCounterOrderOrderAnnotation++;
  if (buildCounterOrderOrderAnnotation < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderOrderAnnotation--;
}

core.List<api.OrderPickupDetailsCollector> buildUnnamed5178() => [
      buildOrderPickupDetailsCollector(),
      buildOrderPickupDetailsCollector(),
    ];

void checkUnnamed5178(core.List<api.OrderPickupDetailsCollector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPickupDetailsCollector(o[0]);
  checkOrderPickupDetailsCollector(o[1]);
}

core.int buildCounterOrderPickupDetails = 0;
api.OrderPickupDetails buildOrderPickupDetails() {
  final o = api.OrderPickupDetails();
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    o.address = buildOrderAddress();
    o.collectors = buildUnnamed5178();
    o.locationId = 'foo';
    o.pickupType = 'foo';
  }
  buildCounterOrderPickupDetails--;
  return o;
}

void checkOrderPickupDetails(api.OrderPickupDetails o) {
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    checkOrderAddress(o.address!);
    checkUnnamed5178(o.collectors!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupType!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderPickupDetails--;
}

core.int buildCounterOrderPickupDetailsCollector = 0;
api.OrderPickupDetailsCollector buildOrderPickupDetailsCollector() {
  final o = api.OrderPickupDetailsCollector();
  buildCounterOrderPickupDetailsCollector++;
  if (buildCounterOrderPickupDetailsCollector < 3) {
    o.name = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterOrderPickupDetailsCollector--;
  return o;
}

void checkOrderPickupDetailsCollector(api.OrderPickupDetailsCollector o) {
  buildCounterOrderPickupDetailsCollector++;
  if (buildCounterOrderPickupDetailsCollector < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderPickupDetailsCollector--;
}

core.List<api.OrderPromotionItem> buildUnnamed5179() => [
      buildOrderPromotionItem(),
      buildOrderPromotionItem(),
    ];

void checkUnnamed5179(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0]);
  checkOrderPromotionItem(o[1]);
}

core.List<api.OrderPromotionItem> buildUnnamed5180() => [
      buildOrderPromotionItem(),
      buildOrderPromotionItem(),
    ];

void checkUnnamed5180(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0]);
  checkOrderPromotionItem(o[1]);
}

core.int buildCounterOrderPromotion = 0;
api.OrderPromotion buildOrderPromotion() {
  final o = api.OrderPromotion();
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    o.applicableItems = buildUnnamed5179();
    o.appliedItems = buildUnnamed5180();
    o.endTime = 'foo';
    o.funder = 'foo';
    o.merchantPromotionId = 'foo';
    o.priceValue = buildPrice();
    o.shortTitle = 'foo';
    o.startTime = 'foo';
    o.subtype = 'foo';
    o.taxValue = buildPrice();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterOrderPromotion--;
  return o;
}

void checkOrderPromotion(api.OrderPromotion o) {
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    checkUnnamed5179(o.applicableItems!);
    checkUnnamed5180(o.appliedItems!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.funder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantPromotionId!,
      unittest.equals('foo'),
    );
    checkPrice(o.priceValue!);
    unittest.expect(
      o.shortTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtype!,
      unittest.equals('foo'),
    );
    checkPrice(o.taxValue!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderPromotion--;
}

core.int buildCounterOrderPromotionItem = 0;
api.OrderPromotionItem buildOrderPromotionItem() {
  final o = api.OrderPromotionItem();
  buildCounterOrderPromotionItem++;
  if (buildCounterOrderPromotionItem < 3) {
    o.lineItemId = 'foo';
    o.offerId = 'foo';
    o.productId = 'foo';
    o.quantity = 42;
  }
  buildCounterOrderPromotionItem--;
  return o;
}

void checkOrderPromotionItem(api.OrderPromotionItem o) {
  buildCounterOrderPromotionItem++;
  if (buildCounterOrderPromotionItem < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
  }
  buildCounterOrderPromotionItem--;
}

core.int buildCounterOrderRefund = 0;
api.OrderRefund buildOrderRefund() {
  final o = api.OrderRefund();
  buildCounterOrderRefund++;
  if (buildCounterOrderRefund < 3) {
    o.actor = 'foo';
    o.amount = buildPrice();
    o.creationDate = 'foo';
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrderRefund--;
  return o;
}

void checkOrderRefund(api.OrderRefund o) {
  buildCounterOrderRefund++;
  if (buildCounterOrderRefund < 3) {
    unittest.expect(
      o.actor!,
      unittest.equals('foo'),
    );
    checkPrice(o.amount!);
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderRefund--;
}

core.int buildCounterOrderReportDisbursement = 0;
api.OrderReportDisbursement buildOrderReportDisbursement() {
  final o = api.OrderReportDisbursement();
  buildCounterOrderReportDisbursement++;
  if (buildCounterOrderReportDisbursement < 3) {
    o.disbursementAmount = buildPrice();
    o.disbursementCreationDate = 'foo';
    o.disbursementDate = 'foo';
    o.disbursementId = 'foo';
    o.merchantId = 'foo';
  }
  buildCounterOrderReportDisbursement--;
  return o;
}

void checkOrderReportDisbursement(api.OrderReportDisbursement o) {
  buildCounterOrderReportDisbursement++;
  if (buildCounterOrderReportDisbursement < 3) {
    checkPrice(o.disbursementAmount!);
    unittest.expect(
      o.disbursementCreationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disbursementDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disbursementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderReportDisbursement--;
}

core.int buildCounterOrderReportTransaction = 0;
api.OrderReportTransaction buildOrderReportTransaction() {
  final o = api.OrderReportTransaction();
  buildCounterOrderReportTransaction++;
  if (buildCounterOrderReportTransaction < 3) {
    o.disbursementAmount = buildPrice();
    o.disbursementCreationDate = 'foo';
    o.disbursementDate = 'foo';
    o.disbursementId = 'foo';
    o.merchantId = 'foo';
    o.merchantOrderId = 'foo';
    o.orderId = 'foo';
    o.productAmount = buildProductAmount();
    o.transactionDate = 'foo';
  }
  buildCounterOrderReportTransaction--;
  return o;
}

void checkOrderReportTransaction(api.OrderReportTransaction o) {
  buildCounterOrderReportTransaction++;
  if (buildCounterOrderReportTransaction < 3) {
    checkPrice(o.disbursementAmount!);
    unittest.expect(
      o.disbursementCreationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disbursementDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disbursementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    checkProductAmount(o.productAmount!);
    unittest.expect(
      o.transactionDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderReportTransaction--;
}

core.int buildCounterOrderReturn = 0;
api.OrderReturn buildOrderReturn() {
  final o = api.OrderReturn();
  buildCounterOrderReturn++;
  if (buildCounterOrderReturn < 3) {
    o.actor = 'foo';
    o.creationDate = 'foo';
    o.quantity = 42;
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrderReturn--;
  return o;
}

void checkOrderReturn(api.OrderReturn o) {
  buildCounterOrderReturn++;
  if (buildCounterOrderReturn < 3) {
    unittest.expect(
      o.actor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderReturn--;
}

core.List<api.OrderShipmentLineItemShipment> buildUnnamed5181() => [
      buildOrderShipmentLineItemShipment(),
      buildOrderShipmentLineItemShipment(),
    ];

void checkUnnamed5181(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

core.int buildCounterOrderShipment = 0;
api.OrderShipment buildOrderShipment() {
  final o = api.OrderShipment();
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    o.carrier = 'foo';
    o.creationDate = 'foo';
    o.deliveryDate = 'foo';
    o.id = 'foo';
    o.lineItems = buildUnnamed5181();
    o.scheduledDeliveryDetails = buildOrderShipmentScheduledDeliveryDetails();
    o.shipmentGroupId = 'foo';
    o.status = 'foo';
    o.trackingId = 'foo';
  }
  buildCounterOrderShipment--;
  return o;
}

void checkOrderShipment(api.OrderShipment o) {
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed5181(o.lineItems!);
    checkOrderShipmentScheduledDeliveryDetails(o.scheduledDeliveryDetails!);
    unittest.expect(
      o.shipmentGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderShipment--;
}

core.int buildCounterOrderShipmentLineItemShipment = 0;
api.OrderShipmentLineItemShipment buildOrderShipmentLineItemShipment() {
  final o = api.OrderShipmentLineItemShipment();
  buildCounterOrderShipmentLineItemShipment++;
  if (buildCounterOrderShipmentLineItemShipment < 3) {
    o.lineItemId = 'foo';
    o.productId = 'foo';
    o.quantity = 42;
  }
  buildCounterOrderShipmentLineItemShipment--;
  return o;
}

void checkOrderShipmentLineItemShipment(api.OrderShipmentLineItemShipment o) {
  buildCounterOrderShipmentLineItemShipment++;
  if (buildCounterOrderShipmentLineItemShipment < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
  }
  buildCounterOrderShipmentLineItemShipment--;
}

core.int buildCounterOrderShipmentScheduledDeliveryDetails = 0;
api.OrderShipmentScheduledDeliveryDetails
    buildOrderShipmentScheduledDeliveryDetails() {
  final o = api.OrderShipmentScheduledDeliveryDetails();
  buildCounterOrderShipmentScheduledDeliveryDetails++;
  if (buildCounterOrderShipmentScheduledDeliveryDetails < 3) {
    o.carrierPhoneNumber = 'foo';
    o.scheduledDate = 'foo';
  }
  buildCounterOrderShipmentScheduledDeliveryDetails--;
  return o;
}

void checkOrderShipmentScheduledDeliveryDetails(
    api.OrderShipmentScheduledDeliveryDetails o) {
  buildCounterOrderShipmentScheduledDeliveryDetails++;
  if (buildCounterOrderShipmentScheduledDeliveryDetails < 3) {
    unittest.expect(
      o.carrierPhoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduledDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderShipmentScheduledDeliveryDetails--;
}

core.List<api.OrderTrackingSignalLineItemDetails> buildUnnamed5182() => [
      buildOrderTrackingSignalLineItemDetails(),
      buildOrderTrackingSignalLineItemDetails(),
    ];

void checkUnnamed5182(core.List<api.OrderTrackingSignalLineItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalLineItemDetails(o[0]);
  checkOrderTrackingSignalLineItemDetails(o[1]);
}

core.List<api.OrderTrackingSignalShipmentLineItemMapping> buildUnnamed5183() =>
    [
      buildOrderTrackingSignalShipmentLineItemMapping(),
      buildOrderTrackingSignalShipmentLineItemMapping(),
    ];

void checkUnnamed5183(
    core.List<api.OrderTrackingSignalShipmentLineItemMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalShipmentLineItemMapping(o[0]);
  checkOrderTrackingSignalShipmentLineItemMapping(o[1]);
}

core.List<api.OrderTrackingSignalShippingInfo> buildUnnamed5184() => [
      buildOrderTrackingSignalShippingInfo(),
      buildOrderTrackingSignalShippingInfo(),
    ];

void checkUnnamed5184(core.List<api.OrderTrackingSignalShippingInfo> o) {
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
    o.lineItems = buildUnnamed5182();
    o.merchantId = 'foo';
    o.orderCreatedTime = buildDateTime();
    o.orderId = 'foo';
    o.orderTrackingSignalId = 'foo';
    o.shipmentLineItemMapping = buildUnnamed5183();
    o.shippingInfo = buildUnnamed5184();
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
    checkUnnamed5182(o.lineItems!);
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
    checkUnnamed5183(o.shipmentLineItemMapping!);
    checkUnnamed5184(o.shippingInfo!);
  }
  buildCounterOrderTrackingSignal--;
}

core.int buildCounterOrderTrackingSignalLineItemDetails = 0;
api.OrderTrackingSignalLineItemDetails
    buildOrderTrackingSignalLineItemDetails() {
  final o = api.OrderTrackingSignalLineItemDetails();
  buildCounterOrderTrackingSignalLineItemDetails++;
  if (buildCounterOrderTrackingSignalLineItemDetails < 3) {
    o.gtin = 'foo';
    o.lineItemId = 'foo';
    o.mpn = 'foo';
    o.productId = 'foo';
    o.quantity = 'foo';
  }
  buildCounterOrderTrackingSignalLineItemDetails--;
  return o;
}

void checkOrderTrackingSignalLineItemDetails(
    api.OrderTrackingSignalLineItemDetails o) {
  buildCounterOrderTrackingSignalLineItemDetails++;
  if (buildCounterOrderTrackingSignalLineItemDetails < 3) {
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
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
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

core.List<api.ShipmentInvoiceLineItemInvoice> buildUnnamed5185() => [
      buildShipmentInvoiceLineItemInvoice(),
      buildShipmentInvoiceLineItemInvoice(),
    ];

void checkUnnamed5185(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceRequest = 0;
api.OrderinvoicesCreateChargeInvoiceRequest
    buildOrderinvoicesCreateChargeInvoiceRequest() {
  final o = api.OrderinvoicesCreateChargeInvoiceRequest();
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    o.invoiceId = 'foo';
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed5185();
    o.operationId = 'foo';
    o.shipmentGroupId = 'foo';
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
  return o;
}

void checkOrderinvoicesCreateChargeInvoiceRequest(
    api.OrderinvoicesCreateChargeInvoiceRequest o) {
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    unittest.expect(
      o.invoiceId!,
      unittest.equals('foo'),
    );
    checkInvoiceSummary(o.invoiceSummary!);
    checkUnnamed5185(o.lineItemInvoices!);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentGroupId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceResponse = 0;
api.OrderinvoicesCreateChargeInvoiceResponse
    buildOrderinvoicesCreateChargeInvoiceResponse() {
  final o = api.OrderinvoicesCreateChargeInvoiceResponse();
  buildCounterOrderinvoicesCreateChargeInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
  return o;
}

void checkOrderinvoicesCreateChargeInvoiceResponse(
    api.OrderinvoicesCreateChargeInvoiceResponse o) {
  buildCounterOrderinvoicesCreateChargeInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
}

core.List<api.ShipmentInvoice> buildUnnamed5186() => [
      buildShipmentInvoice(),
      buildShipmentInvoice(),
    ];

void checkUnnamed5186(core.List<api.ShipmentInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoice(o[0]);
  checkShipmentInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceRequest = 0;
api.OrderinvoicesCreateRefundInvoiceRequest
    buildOrderinvoicesCreateRefundInvoiceRequest() {
  final o = api.OrderinvoicesCreateRefundInvoiceRequest();
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    o.invoiceId = 'foo';
    o.operationId = 'foo';
    o.refundOnlyOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
    o.returnOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
    o.shipmentInvoices = buildUnnamed5186();
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
  return o;
}

void checkOrderinvoicesCreateRefundInvoiceRequest(
    api.OrderinvoicesCreateRefundInvoiceRequest o) {
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    unittest.expect(
      o.invoiceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
        o.refundOnlyOption!);
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
        o.returnOption!);
    checkUnnamed5186(o.shipmentInvoices!);
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceResponse = 0;
api.OrderinvoicesCreateRefundInvoiceResponse
    buildOrderinvoicesCreateRefundInvoiceResponse() {
  final o = api.OrderinvoicesCreateRefundInvoiceResponse();
  buildCounterOrderinvoicesCreateRefundInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrderinvoicesCreateRefundInvoiceResponse--;
  return o;
}

void checkOrderinvoicesCreateRefundInvoiceResponse(
    api.OrderinvoicesCreateRefundInvoiceResponse o) {
  buildCounterOrderinvoicesCreateRefundInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderinvoicesCreateRefundInvoiceResponse--;
}

core.int
    buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
    0;
api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption() {
  final o =
      api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption <
      3) {
    o.description = 'foo';
    o.reason = 'foo';
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption--;
  return o;
}

void checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
    api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption o) {
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption <
      3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption--;
}

core.int
    buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
    0;
api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption() {
  final o =
      api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption <
      3) {
    o.description = 'foo';
    o.reason = 'foo';
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
  return o;
}

void checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
    api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption o) {
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption <
      3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
}

core.List<api.OrderReportDisbursement> buildUnnamed5187() => [
      buildOrderReportDisbursement(),
      buildOrderReportDisbursement(),
    ];

void checkUnnamed5187(core.List<api.OrderReportDisbursement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportDisbursement(o[0]);
  checkOrderReportDisbursement(o[1]);
}

core.int buildCounterOrderreportsListDisbursementsResponse = 0;
api.OrderreportsListDisbursementsResponse
    buildOrderreportsListDisbursementsResponse() {
  final o = api.OrderreportsListDisbursementsResponse();
  buildCounterOrderreportsListDisbursementsResponse++;
  if (buildCounterOrderreportsListDisbursementsResponse < 3) {
    o.disbursements = buildUnnamed5187();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterOrderreportsListDisbursementsResponse--;
  return o;
}

void checkOrderreportsListDisbursementsResponse(
    api.OrderreportsListDisbursementsResponse o) {
  buildCounterOrderreportsListDisbursementsResponse++;
  if (buildCounterOrderreportsListDisbursementsResponse < 3) {
    checkUnnamed5187(o.disbursements!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreportsListDisbursementsResponse--;
}

core.List<api.OrderReportTransaction> buildUnnamed5188() => [
      buildOrderReportTransaction(),
      buildOrderReportTransaction(),
    ];

void checkUnnamed5188(core.List<api.OrderReportTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportTransaction(o[0]);
  checkOrderReportTransaction(o[1]);
}

core.int buildCounterOrderreportsListTransactionsResponse = 0;
api.OrderreportsListTransactionsResponse
    buildOrderreportsListTransactionsResponse() {
  final o = api.OrderreportsListTransactionsResponse();
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.transactions = buildUnnamed5188();
  }
  buildCounterOrderreportsListTransactionsResponse--;
  return o;
}

void checkOrderreportsListTransactionsResponse(
    api.OrderreportsListTransactionsResponse o) {
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5188(o.transactions!);
  }
  buildCounterOrderreportsListTransactionsResponse--;
}

core.int buildCounterOrderreturnsAcknowledgeRequest = 0;
api.OrderreturnsAcknowledgeRequest buildOrderreturnsAcknowledgeRequest() {
  final o = api.OrderreturnsAcknowledgeRequest();
  buildCounterOrderreturnsAcknowledgeRequest++;
  if (buildCounterOrderreturnsAcknowledgeRequest < 3) {
    o.operationId = 'foo';
  }
  buildCounterOrderreturnsAcknowledgeRequest--;
  return o;
}

void checkOrderreturnsAcknowledgeRequest(api.OrderreturnsAcknowledgeRequest o) {
  buildCounterOrderreturnsAcknowledgeRequest++;
  if (buildCounterOrderreturnsAcknowledgeRequest < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsAcknowledgeRequest--;
}

core.int buildCounterOrderreturnsAcknowledgeResponse = 0;
api.OrderreturnsAcknowledgeResponse buildOrderreturnsAcknowledgeResponse() {
  final o = api.OrderreturnsAcknowledgeResponse();
  buildCounterOrderreturnsAcknowledgeResponse++;
  if (buildCounterOrderreturnsAcknowledgeResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrderreturnsAcknowledgeResponse--;
  return o;
}

void checkOrderreturnsAcknowledgeResponse(
    api.OrderreturnsAcknowledgeResponse o) {
  buildCounterOrderreturnsAcknowledgeResponse++;
  if (buildCounterOrderreturnsAcknowledgeResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsAcknowledgeResponse--;
}

core.List<api.OrderreturnsLineItem> buildUnnamed5189() => [
      buildOrderreturnsLineItem(),
      buildOrderreturnsLineItem(),
    ];

void checkUnnamed5189(core.List<api.OrderreturnsLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderreturnsLineItem(o[0]);
  checkOrderreturnsLineItem(o[1]);
}

core.int buildCounterOrderreturnsCreateOrderReturnRequest = 0;
api.OrderreturnsCreateOrderReturnRequest
    buildOrderreturnsCreateOrderReturnRequest() {
  final o = api.OrderreturnsCreateOrderReturnRequest();
  buildCounterOrderreturnsCreateOrderReturnRequest++;
  if (buildCounterOrderreturnsCreateOrderReturnRequest < 3) {
    o.lineItems = buildUnnamed5189();
    o.operationId = 'foo';
    o.orderId = 'foo';
    o.returnMethodType = 'foo';
  }
  buildCounterOrderreturnsCreateOrderReturnRequest--;
  return o;
}

void checkOrderreturnsCreateOrderReturnRequest(
    api.OrderreturnsCreateOrderReturnRequest o) {
  buildCounterOrderreturnsCreateOrderReturnRequest++;
  if (buildCounterOrderreturnsCreateOrderReturnRequest < 3) {
    checkUnnamed5189(o.lineItems!);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnMethodType!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsCreateOrderReturnRequest--;
}

core.int buildCounterOrderreturnsCreateOrderReturnResponse = 0;
api.OrderreturnsCreateOrderReturnResponse
    buildOrderreturnsCreateOrderReturnResponse() {
  final o = api.OrderreturnsCreateOrderReturnResponse();
  buildCounterOrderreturnsCreateOrderReturnResponse++;
  if (buildCounterOrderreturnsCreateOrderReturnResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
    o.orderReturn = buildMerchantOrderReturn();
  }
  buildCounterOrderreturnsCreateOrderReturnResponse--;
  return o;
}

void checkOrderreturnsCreateOrderReturnResponse(
    api.OrderreturnsCreateOrderReturnResponse o) {
  buildCounterOrderreturnsCreateOrderReturnResponse++;
  if (buildCounterOrderreturnsCreateOrderReturnResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkMerchantOrderReturn(o.orderReturn!);
  }
  buildCounterOrderreturnsCreateOrderReturnResponse--;
}

core.int buildCounterOrderreturnsLineItem = 0;
api.OrderreturnsLineItem buildOrderreturnsLineItem() {
  final o = api.OrderreturnsLineItem();
  buildCounterOrderreturnsLineItem++;
  if (buildCounterOrderreturnsLineItem < 3) {
    o.lineItemId = 'foo';
    o.productId = 'foo';
    o.quantity = 42;
  }
  buildCounterOrderreturnsLineItem--;
  return o;
}

void checkOrderreturnsLineItem(api.OrderreturnsLineItem o) {
  buildCounterOrderreturnsLineItem++;
  if (buildCounterOrderreturnsLineItem < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
  }
  buildCounterOrderreturnsLineItem--;
}

core.List<api.MerchantOrderReturn> buildUnnamed5190() => [
      buildMerchantOrderReturn(),
      buildMerchantOrderReturn(),
    ];

void checkUnnamed5190(core.List<api.MerchantOrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturn(o[0]);
  checkMerchantOrderReturn(o[1]);
}

core.int buildCounterOrderreturnsListResponse = 0;
api.OrderreturnsListResponse buildOrderreturnsListResponse() {
  final o = api.OrderreturnsListResponse();
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed5190();
  }
  buildCounterOrderreturnsListResponse--;
  return o;
}

void checkOrderreturnsListResponse(api.OrderreturnsListResponse o) {
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5190(o.resources!);
  }
  buildCounterOrderreturnsListResponse--;
}

core.int buildCounterOrderreturnsPartialRefund = 0;
api.OrderreturnsPartialRefund buildOrderreturnsPartialRefund() {
  final o = api.OrderreturnsPartialRefund();
  buildCounterOrderreturnsPartialRefund++;
  if (buildCounterOrderreturnsPartialRefund < 3) {
    o.priceAmount = buildPrice();
    o.taxAmount = buildPrice();
  }
  buildCounterOrderreturnsPartialRefund--;
  return o;
}

void checkOrderreturnsPartialRefund(api.OrderreturnsPartialRefund o) {
  buildCounterOrderreturnsPartialRefund++;
  if (buildCounterOrderreturnsPartialRefund < 3) {
    checkPrice(o.priceAmount!);
    checkPrice(o.taxAmount!);
  }
  buildCounterOrderreturnsPartialRefund--;
}

core.List<api.OrderreturnsReturnItem> buildUnnamed5191() => [
      buildOrderreturnsReturnItem(),
      buildOrderreturnsReturnItem(),
    ];

void checkUnnamed5191(core.List<api.OrderreturnsReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderreturnsReturnItem(o[0]);
  checkOrderreturnsReturnItem(o[1]);
}

core.int buildCounterOrderreturnsProcessRequest = 0;
api.OrderreturnsProcessRequest buildOrderreturnsProcessRequest() {
  final o = api.OrderreturnsProcessRequest();
  buildCounterOrderreturnsProcessRequest++;
  if (buildCounterOrderreturnsProcessRequest < 3) {
    o.fullChargeReturnShippingCost = true;
    o.operationId = 'foo';
    o.refundShippingFee = buildOrderreturnsRefundOperation();
    o.returnItems = buildUnnamed5191();
  }
  buildCounterOrderreturnsProcessRequest--;
  return o;
}

void checkOrderreturnsProcessRequest(api.OrderreturnsProcessRequest o) {
  buildCounterOrderreturnsProcessRequest++;
  if (buildCounterOrderreturnsProcessRequest < 3) {
    unittest.expect(o.fullChargeReturnShippingCost!, unittest.isTrue);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    checkOrderreturnsRefundOperation(o.refundShippingFee!);
    checkUnnamed5191(o.returnItems!);
  }
  buildCounterOrderreturnsProcessRequest--;
}

core.int buildCounterOrderreturnsProcessResponse = 0;
api.OrderreturnsProcessResponse buildOrderreturnsProcessResponse() {
  final o = api.OrderreturnsProcessResponse();
  buildCounterOrderreturnsProcessResponse++;
  if (buildCounterOrderreturnsProcessResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrderreturnsProcessResponse--;
  return o;
}

void checkOrderreturnsProcessResponse(api.OrderreturnsProcessResponse o) {
  buildCounterOrderreturnsProcessResponse++;
  if (buildCounterOrderreturnsProcessResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsProcessResponse--;
}

core.int buildCounterOrderreturnsRefundOperation = 0;
api.OrderreturnsRefundOperation buildOrderreturnsRefundOperation() {
  final o = api.OrderreturnsRefundOperation();
  buildCounterOrderreturnsRefundOperation++;
  if (buildCounterOrderreturnsRefundOperation < 3) {
    o.fullRefund = true;
    o.partialRefund = buildOrderreturnsPartialRefund();
    o.paymentType = 'foo';
    o.reasonText = 'foo';
    o.returnRefundReason = 'foo';
  }
  buildCounterOrderreturnsRefundOperation--;
  return o;
}

void checkOrderreturnsRefundOperation(api.OrderreturnsRefundOperation o) {
  buildCounterOrderreturnsRefundOperation++;
  if (buildCounterOrderreturnsRefundOperation < 3) {
    unittest.expect(o.fullRefund!, unittest.isTrue);
    checkOrderreturnsPartialRefund(o.partialRefund!);
    unittest.expect(
      o.paymentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnRefundReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsRefundOperation--;
}

core.int buildCounterOrderreturnsRejectOperation = 0;
api.OrderreturnsRejectOperation buildOrderreturnsRejectOperation() {
  final o = api.OrderreturnsRejectOperation();
  buildCounterOrderreturnsRejectOperation++;
  if (buildCounterOrderreturnsRejectOperation < 3) {
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrderreturnsRejectOperation--;
  return o;
}

void checkOrderreturnsRejectOperation(api.OrderreturnsRejectOperation o) {
  buildCounterOrderreturnsRejectOperation++;
  if (buildCounterOrderreturnsRejectOperation < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsRejectOperation--;
}

core.int buildCounterOrderreturnsReturnItem = 0;
api.OrderreturnsReturnItem buildOrderreturnsReturnItem() {
  final o = api.OrderreturnsReturnItem();
  buildCounterOrderreturnsReturnItem++;
  if (buildCounterOrderreturnsReturnItem < 3) {
    o.refund = buildOrderreturnsRefundOperation();
    o.reject = buildOrderreturnsRejectOperation();
    o.returnItemId = 'foo';
  }
  buildCounterOrderreturnsReturnItem--;
  return o;
}

void checkOrderreturnsReturnItem(api.OrderreturnsReturnItem o) {
  buildCounterOrderreturnsReturnItem++;
  if (buildCounterOrderreturnsReturnItem < 3) {
    checkOrderreturnsRefundOperation(o.refund!);
    checkOrderreturnsRejectOperation(o.reject!);
    unittest.expect(
      o.returnItemId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderreturnsReturnItem--;
}

core.int buildCounterOrdersAcknowledgeRequest = 0;
api.OrdersAcknowledgeRequest buildOrdersAcknowledgeRequest() {
  final o = api.OrdersAcknowledgeRequest();
  buildCounterOrdersAcknowledgeRequest++;
  if (buildCounterOrdersAcknowledgeRequest < 3) {
    o.operationId = 'foo';
  }
  buildCounterOrdersAcknowledgeRequest--;
  return o;
}

void checkOrdersAcknowledgeRequest(api.OrdersAcknowledgeRequest o) {
  buildCounterOrdersAcknowledgeRequest++;
  if (buildCounterOrdersAcknowledgeRequest < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersAcknowledgeRequest--;
}

core.int buildCounterOrdersAcknowledgeResponse = 0;
api.OrdersAcknowledgeResponse buildOrdersAcknowledgeResponse() {
  final o = api.OrdersAcknowledgeResponse();
  buildCounterOrdersAcknowledgeResponse++;
  if (buildCounterOrdersAcknowledgeResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersAcknowledgeResponse--;
  return o;
}

void checkOrdersAcknowledgeResponse(api.OrdersAcknowledgeResponse o) {
  buildCounterOrdersAcknowledgeResponse++;
  if (buildCounterOrdersAcknowledgeResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersAcknowledgeResponse--;
}

core.int buildCounterOrdersAdvanceTestOrderResponse = 0;
api.OrdersAdvanceTestOrderResponse buildOrdersAdvanceTestOrderResponse() {
  final o = api.OrdersAdvanceTestOrderResponse();
  buildCounterOrdersAdvanceTestOrderResponse++;
  if (buildCounterOrdersAdvanceTestOrderResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
  return o;
}

void checkOrdersAdvanceTestOrderResponse(api.OrdersAdvanceTestOrderResponse o) {
  buildCounterOrdersAdvanceTestOrderResponse++;
  if (buildCounterOrdersAdvanceTestOrderResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
}

core.int buildCounterOrdersCancelLineItemRequest = 0;
api.OrdersCancelLineItemRequest buildOrdersCancelLineItemRequest() {
  final o = api.OrdersCancelLineItemRequest();
  buildCounterOrdersCancelLineItemRequest++;
  if (buildCounterOrdersCancelLineItemRequest < 3) {
    o.lineItemId = 'foo';
    o.operationId = 'foo';
    o.productId = 'foo';
    o.quantity = 42;
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrdersCancelLineItemRequest--;
  return o;
}

void checkOrdersCancelLineItemRequest(api.OrdersCancelLineItemRequest o) {
  buildCounterOrdersCancelLineItemRequest++;
  if (buildCounterOrdersCancelLineItemRequest < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCancelLineItemRequest--;
}

core.int buildCounterOrdersCancelLineItemResponse = 0;
api.OrdersCancelLineItemResponse buildOrdersCancelLineItemResponse() {
  final o = api.OrdersCancelLineItemResponse();
  buildCounterOrdersCancelLineItemResponse++;
  if (buildCounterOrdersCancelLineItemResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersCancelLineItemResponse--;
  return o;
}

void checkOrdersCancelLineItemResponse(api.OrdersCancelLineItemResponse o) {
  buildCounterOrdersCancelLineItemResponse++;
  if (buildCounterOrdersCancelLineItemResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCancelLineItemResponse--;
}

core.int buildCounterOrdersCancelRequest = 0;
api.OrdersCancelRequest buildOrdersCancelRequest() {
  final o = api.OrdersCancelRequest();
  buildCounterOrdersCancelRequest++;
  if (buildCounterOrdersCancelRequest < 3) {
    o.operationId = 'foo';
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrdersCancelRequest--;
  return o;
}

void checkOrdersCancelRequest(api.OrdersCancelRequest o) {
  buildCounterOrdersCancelRequest++;
  if (buildCounterOrdersCancelRequest < 3) {
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCancelRequest--;
}

core.int buildCounterOrdersCancelResponse = 0;
api.OrdersCancelResponse buildOrdersCancelResponse() {
  final o = api.OrdersCancelResponse();
  buildCounterOrdersCancelResponse++;
  if (buildCounterOrdersCancelResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersCancelResponse--;
  return o;
}

void checkOrdersCancelResponse(api.OrdersCancelResponse o) {
  buildCounterOrdersCancelResponse++;
  if (buildCounterOrdersCancelResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCancelResponse--;
}

core.int buildCounterOrdersCancelTestOrderByCustomerRequest = 0;
api.OrdersCancelTestOrderByCustomerRequest
    buildOrdersCancelTestOrderByCustomerRequest() {
  final o = api.OrdersCancelTestOrderByCustomerRequest();
  buildCounterOrdersCancelTestOrderByCustomerRequest++;
  if (buildCounterOrdersCancelTestOrderByCustomerRequest < 3) {
    o.reason = 'foo';
  }
  buildCounterOrdersCancelTestOrderByCustomerRequest--;
  return o;
}

void checkOrdersCancelTestOrderByCustomerRequest(
    api.OrdersCancelTestOrderByCustomerRequest o) {
  buildCounterOrdersCancelTestOrderByCustomerRequest++;
  if (buildCounterOrdersCancelTestOrderByCustomerRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCancelTestOrderByCustomerRequest--;
}

core.int buildCounterOrdersCancelTestOrderByCustomerResponse = 0;
api.OrdersCancelTestOrderByCustomerResponse
    buildOrdersCancelTestOrderByCustomerResponse() {
  final o = api.OrdersCancelTestOrderByCustomerResponse();
  buildCounterOrdersCancelTestOrderByCustomerResponse++;
  if (buildCounterOrdersCancelTestOrderByCustomerResponse < 3) {
    o.kind = 'foo';
  }
  buildCounterOrdersCancelTestOrderByCustomerResponse--;
  return o;
}

void checkOrdersCancelTestOrderByCustomerResponse(
    api.OrdersCancelTestOrderByCustomerResponse o) {
  buildCounterOrdersCancelTestOrderByCustomerResponse++;
  if (buildCounterOrdersCancelTestOrderByCustomerResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCancelTestOrderByCustomerResponse--;
}

core.int buildCounterOrdersCreateTestOrderRequest = 0;
api.OrdersCreateTestOrderRequest buildOrdersCreateTestOrderRequest() {
  final o = api.OrdersCreateTestOrderRequest();
  buildCounterOrdersCreateTestOrderRequest++;
  if (buildCounterOrdersCreateTestOrderRequest < 3) {
    o.country = 'foo';
    o.templateName = 'foo';
    o.testOrder = buildTestOrder();
  }
  buildCounterOrdersCreateTestOrderRequest--;
  return o;
}

void checkOrdersCreateTestOrderRequest(api.OrdersCreateTestOrderRequest o) {
  buildCounterOrdersCreateTestOrderRequest++;
  if (buildCounterOrdersCreateTestOrderRequest < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateName!,
      unittest.equals('foo'),
    );
    checkTestOrder(o.testOrder!);
  }
  buildCounterOrdersCreateTestOrderRequest--;
}

core.int buildCounterOrdersCreateTestOrderResponse = 0;
api.OrdersCreateTestOrderResponse buildOrdersCreateTestOrderResponse() {
  final o = api.OrdersCreateTestOrderResponse();
  buildCounterOrdersCreateTestOrderResponse++;
  if (buildCounterOrdersCreateTestOrderResponse < 3) {
    o.kind = 'foo';
    o.orderId = 'foo';
  }
  buildCounterOrdersCreateTestOrderResponse--;
  return o;
}

void checkOrdersCreateTestOrderResponse(api.OrdersCreateTestOrderResponse o) {
  buildCounterOrdersCreateTestOrderResponse++;
  if (buildCounterOrdersCreateTestOrderResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCreateTestOrderResponse--;
}

core.List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>
    buildUnnamed5192() => [
          buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(),
          buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(),
        ];

void checkUnnamed5192(
    core.List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(o[0]);
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(o[1]);
}

core.int buildCounterOrdersCreateTestReturnRequest = 0;
api.OrdersCreateTestReturnRequest buildOrdersCreateTestReturnRequest() {
  final o = api.OrdersCreateTestReturnRequest();
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    o.items = buildUnnamed5192();
  }
  buildCounterOrdersCreateTestReturnRequest--;
  return o;
}

void checkOrdersCreateTestReturnRequest(api.OrdersCreateTestReturnRequest o) {
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    checkUnnamed5192(o.items!);
  }
  buildCounterOrdersCreateTestReturnRequest--;
}

core.int buildCounterOrdersCreateTestReturnResponse = 0;
api.OrdersCreateTestReturnResponse buildOrdersCreateTestReturnResponse() {
  final o = api.OrdersCreateTestReturnResponse();
  buildCounterOrdersCreateTestReturnResponse++;
  if (buildCounterOrdersCreateTestReturnResponse < 3) {
    o.kind = 'foo';
    o.returnId = 'foo';
  }
  buildCounterOrdersCreateTestReturnResponse--;
  return o;
}

void checkOrdersCreateTestReturnResponse(api.OrdersCreateTestReturnResponse o) {
  buildCounterOrdersCreateTestReturnResponse++;
  if (buildCounterOrdersCreateTestReturnResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCreateTestReturnResponse--;
}

core.int buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem =
    0;
api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem() {
  final o = api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem++;
  if (buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem < 3) {
    o.lineItemId = 'foo';
    o.quantity = 42;
  }
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem--;
  return o;
}

void checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(
    api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem o) {
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem++;
  if (buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
  }
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryRefundItemItem = 0;
api.OrdersCustomBatchRequestEntryRefundItemItem
    buildOrdersCustomBatchRequestEntryRefundItemItem() {
  final o = api.OrdersCustomBatchRequestEntryRefundItemItem();
  buildCounterOrdersCustomBatchRequestEntryRefundItemItem++;
  if (buildCounterOrdersCustomBatchRequestEntryRefundItemItem < 3) {
    o.amount = buildMonetaryAmount();
    o.fullRefund = true;
    o.lineItemId = 'foo';
    o.productId = 'foo';
    o.quantity = 42;
  }
  buildCounterOrdersCustomBatchRequestEntryRefundItemItem--;
  return o;
}

void checkOrdersCustomBatchRequestEntryRefundItemItem(
    api.OrdersCustomBatchRequestEntryRefundItemItem o) {
  buildCounterOrdersCustomBatchRequestEntryRefundItemItem++;
  if (buildCounterOrdersCustomBatchRequestEntryRefundItemItem < 3) {
    checkMonetaryAmount(o.amount!);
    unittest.expect(o.fullRefund!, unittest.isTrue);
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
  }
  buildCounterOrdersCustomBatchRequestEntryRefundItemItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryRefundItemShipping = 0;
api.OrdersCustomBatchRequestEntryRefundItemShipping
    buildOrdersCustomBatchRequestEntryRefundItemShipping() {
  final o = api.OrdersCustomBatchRequestEntryRefundItemShipping();
  buildCounterOrdersCustomBatchRequestEntryRefundItemShipping++;
  if (buildCounterOrdersCustomBatchRequestEntryRefundItemShipping < 3) {
    o.amount = buildPrice();
    o.fullRefund = true;
  }
  buildCounterOrdersCustomBatchRequestEntryRefundItemShipping--;
  return o;
}

void checkOrdersCustomBatchRequestEntryRefundItemShipping(
    api.OrdersCustomBatchRequestEntryRefundItemShipping o) {
  buildCounterOrdersCustomBatchRequestEntryRefundItemShipping++;
  if (buildCounterOrdersCustomBatchRequestEntryRefundItemShipping < 3) {
    checkPrice(o.amount!);
    unittest.expect(o.fullRefund!, unittest.isTrue);
  }
  buildCounterOrdersCustomBatchRequestEntryRefundItemShipping--;
}

core.int buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo = 0;
api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo() {
  final o = api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo < 3) {
    o.carrier = 'foo';
    o.shipmentId = 'foo';
    o.trackingId = 'foo';
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo--;
  return o;
}

void checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(
    api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo o) {
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo--;
}

core.int
    buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails =
    0;
api.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    buildOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails() {
  final o =
      api.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails();
  buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails++;
  if (buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails <
      3) {
    o.carrierPhoneNumber = 'foo';
    o.scheduledDate = 'foo';
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails--;
  return o;
}

void checkOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails(
    api.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails o) {
  buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails++;
  if (buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails <
      3) {
    unittest.expect(
      o.carrierPhoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduledDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails--;
}

core.int buildCounterOrdersGetByMerchantOrderIdResponse = 0;
api.OrdersGetByMerchantOrderIdResponse
    buildOrdersGetByMerchantOrderIdResponse() {
  final o = api.OrdersGetByMerchantOrderIdResponse();
  buildCounterOrdersGetByMerchantOrderIdResponse++;
  if (buildCounterOrdersGetByMerchantOrderIdResponse < 3) {
    o.kind = 'foo';
    o.order = buildOrder();
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
  return o;
}

void checkOrdersGetByMerchantOrderIdResponse(
    api.OrdersGetByMerchantOrderIdResponse o) {
  buildCounterOrdersGetByMerchantOrderIdResponse++;
  if (buildCounterOrdersGetByMerchantOrderIdResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkOrder(o.order!);
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
}

core.int buildCounterOrdersGetTestOrderTemplateResponse = 0;
api.OrdersGetTestOrderTemplateResponse
    buildOrdersGetTestOrderTemplateResponse() {
  final o = api.OrdersGetTestOrderTemplateResponse();
  buildCounterOrdersGetTestOrderTemplateResponse++;
  if (buildCounterOrdersGetTestOrderTemplateResponse < 3) {
    o.kind = 'foo';
    o.template = buildTestOrder();
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
  return o;
}

void checkOrdersGetTestOrderTemplateResponse(
    api.OrdersGetTestOrderTemplateResponse o) {
  buildCounterOrdersGetTestOrderTemplateResponse++;
  if (buildCounterOrdersGetTestOrderTemplateResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkTestOrder(o.template!);
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
}

core.int buildCounterOrdersInStoreRefundLineItemRequest = 0;
api.OrdersInStoreRefundLineItemRequest
    buildOrdersInStoreRefundLineItemRequest() {
  final o = api.OrdersInStoreRefundLineItemRequest();
  buildCounterOrdersInStoreRefundLineItemRequest++;
  if (buildCounterOrdersInStoreRefundLineItemRequest < 3) {
    o.lineItemId = 'foo';
    o.operationId = 'foo';
    o.priceAmount = buildPrice();
    o.productId = 'foo';
    o.quantity = 42;
    o.reason = 'foo';
    o.reasonText = 'foo';
    o.taxAmount = buildPrice();
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
  return o;
}

void checkOrdersInStoreRefundLineItemRequest(
    api.OrdersInStoreRefundLineItemRequest o) {
  buildCounterOrdersInStoreRefundLineItemRequest++;
  if (buildCounterOrdersInStoreRefundLineItemRequest < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    checkPrice(o.priceAmount!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
    checkPrice(o.taxAmount!);
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
}

core.int buildCounterOrdersInStoreRefundLineItemResponse = 0;
api.OrdersInStoreRefundLineItemResponse
    buildOrdersInStoreRefundLineItemResponse() {
  final o = api.OrdersInStoreRefundLineItemResponse();
  buildCounterOrdersInStoreRefundLineItemResponse++;
  if (buildCounterOrdersInStoreRefundLineItemResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
  return o;
}

void checkOrdersInStoreRefundLineItemResponse(
    api.OrdersInStoreRefundLineItemResponse o) {
  buildCounterOrdersInStoreRefundLineItemResponse++;
  if (buildCounterOrdersInStoreRefundLineItemResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
}

core.List<api.Order> buildUnnamed5193() => [
      buildOrder(),
      buildOrder(),
    ];

void checkUnnamed5193(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterOrdersListResponse = 0;
api.OrdersListResponse buildOrdersListResponse() {
  final o = api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed5193();
  }
  buildCounterOrdersListResponse--;
  return o;
}

void checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5193(o.resources!);
  }
  buildCounterOrdersListResponse--;
}

core.List<api.OrdersCustomBatchRequestEntryRefundItemItem> buildUnnamed5194() =>
    [
      buildOrdersCustomBatchRequestEntryRefundItemItem(),
      buildOrdersCustomBatchRequestEntryRefundItemItem(),
    ];

void checkUnnamed5194(
    core.List<api.OrdersCustomBatchRequestEntryRefundItemItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryRefundItemItem(o[0]);
  checkOrdersCustomBatchRequestEntryRefundItemItem(o[1]);
}

core.int buildCounterOrdersRefundItemRequest = 0;
api.OrdersRefundItemRequest buildOrdersRefundItemRequest() {
  final o = api.OrdersRefundItemRequest();
  buildCounterOrdersRefundItemRequest++;
  if (buildCounterOrdersRefundItemRequest < 3) {
    o.items = buildUnnamed5194();
    o.operationId = 'foo';
    o.reason = 'foo';
    o.reasonText = 'foo';
    o.shipping = buildOrdersCustomBatchRequestEntryRefundItemShipping();
  }
  buildCounterOrdersRefundItemRequest--;
  return o;
}

void checkOrdersRefundItemRequest(api.OrdersRefundItemRequest o) {
  buildCounterOrdersRefundItemRequest++;
  if (buildCounterOrdersRefundItemRequest < 3) {
    checkUnnamed5194(o.items!);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
    checkOrdersCustomBatchRequestEntryRefundItemShipping(o.shipping!);
  }
  buildCounterOrdersRefundItemRequest--;
}

core.int buildCounterOrdersRefundItemResponse = 0;
api.OrdersRefundItemResponse buildOrdersRefundItemResponse() {
  final o = api.OrdersRefundItemResponse();
  buildCounterOrdersRefundItemResponse++;
  if (buildCounterOrdersRefundItemResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersRefundItemResponse--;
  return o;
}

void checkOrdersRefundItemResponse(api.OrdersRefundItemResponse o) {
  buildCounterOrdersRefundItemResponse++;
  if (buildCounterOrdersRefundItemResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersRefundItemResponse--;
}

core.int buildCounterOrdersRefundOrderRequest = 0;
api.OrdersRefundOrderRequest buildOrdersRefundOrderRequest() {
  final o = api.OrdersRefundOrderRequest();
  buildCounterOrdersRefundOrderRequest++;
  if (buildCounterOrdersRefundOrderRequest < 3) {
    o.amount = buildMonetaryAmount();
    o.fullRefund = true;
    o.operationId = 'foo';
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrdersRefundOrderRequest--;
  return o;
}

void checkOrdersRefundOrderRequest(api.OrdersRefundOrderRequest o) {
  buildCounterOrdersRefundOrderRequest++;
  if (buildCounterOrdersRefundOrderRequest < 3) {
    checkMonetaryAmount(o.amount!);
    unittest.expect(o.fullRefund!, unittest.isTrue);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersRefundOrderRequest--;
}

core.int buildCounterOrdersRefundOrderResponse = 0;
api.OrdersRefundOrderResponse buildOrdersRefundOrderResponse() {
  final o = api.OrdersRefundOrderResponse();
  buildCounterOrdersRefundOrderResponse++;
  if (buildCounterOrdersRefundOrderResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersRefundOrderResponse--;
  return o;
}

void checkOrdersRefundOrderResponse(api.OrdersRefundOrderResponse o) {
  buildCounterOrdersRefundOrderResponse++;
  if (buildCounterOrdersRefundOrderResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersRefundOrderResponse--;
}

core.int buildCounterOrdersRejectReturnLineItemRequest = 0;
api.OrdersRejectReturnLineItemRequest buildOrdersRejectReturnLineItemRequest() {
  final o = api.OrdersRejectReturnLineItemRequest();
  buildCounterOrdersRejectReturnLineItemRequest++;
  if (buildCounterOrdersRejectReturnLineItemRequest < 3) {
    o.lineItemId = 'foo';
    o.operationId = 'foo';
    o.productId = 'foo';
    o.quantity = 42;
    o.reason = 'foo';
    o.reasonText = 'foo';
  }
  buildCounterOrdersRejectReturnLineItemRequest--;
  return o;
}

void checkOrdersRejectReturnLineItemRequest(
    api.OrdersRejectReturnLineItemRequest o) {
  buildCounterOrdersRejectReturnLineItemRequest++;
  if (buildCounterOrdersRejectReturnLineItemRequest < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersRejectReturnLineItemRequest--;
}

core.int buildCounterOrdersRejectReturnLineItemResponse = 0;
api.OrdersRejectReturnLineItemResponse
    buildOrdersRejectReturnLineItemResponse() {
  final o = api.OrdersRejectReturnLineItemResponse();
  buildCounterOrdersRejectReturnLineItemResponse++;
  if (buildCounterOrdersRejectReturnLineItemResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
  return o;
}

void checkOrdersRejectReturnLineItemResponse(
    api.OrdersRejectReturnLineItemResponse o) {
  buildCounterOrdersRejectReturnLineItemResponse++;
  if (buildCounterOrdersRejectReturnLineItemResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
}

core.int buildCounterOrdersReturnRefundLineItemRequest = 0;
api.OrdersReturnRefundLineItemRequest buildOrdersReturnRefundLineItemRequest() {
  final o = api.OrdersReturnRefundLineItemRequest();
  buildCounterOrdersReturnRefundLineItemRequest++;
  if (buildCounterOrdersReturnRefundLineItemRequest < 3) {
    o.lineItemId = 'foo';
    o.operationId = 'foo';
    o.priceAmount = buildPrice();
    o.productId = 'foo';
    o.quantity = 42;
    o.reason = 'foo';
    o.reasonText = 'foo';
    o.taxAmount = buildPrice();
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
  return o;
}

void checkOrdersReturnRefundLineItemRequest(
    api.OrdersReturnRefundLineItemRequest o) {
  buildCounterOrdersReturnRefundLineItemRequest++;
  if (buildCounterOrdersReturnRefundLineItemRequest < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    checkPrice(o.priceAmount!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonText!,
      unittest.equals('foo'),
    );
    checkPrice(o.taxAmount!);
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
}

core.int buildCounterOrdersReturnRefundLineItemResponse = 0;
api.OrdersReturnRefundLineItemResponse
    buildOrdersReturnRefundLineItemResponse() {
  final o = api.OrdersReturnRefundLineItemResponse();
  buildCounterOrdersReturnRefundLineItemResponse++;
  if (buildCounterOrdersReturnRefundLineItemResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
  return o;
}

void checkOrdersReturnRefundLineItemResponse(
    api.OrdersReturnRefundLineItemResponse o) {
  buildCounterOrdersReturnRefundLineItemResponse++;
  if (buildCounterOrdersReturnRefundLineItemResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
}

core.List<api.OrderMerchantProvidedAnnotation> buildUnnamed5195() => [
      buildOrderMerchantProvidedAnnotation(),
      buildOrderMerchantProvidedAnnotation(),
    ];

void checkUnnamed5195(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.int buildCounterOrdersSetLineItemMetadataRequest = 0;
api.OrdersSetLineItemMetadataRequest buildOrdersSetLineItemMetadataRequest() {
  final o = api.OrdersSetLineItemMetadataRequest();
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    o.annotations = buildUnnamed5195();
    o.lineItemId = 'foo';
    o.operationId = 'foo';
    o.productId = 'foo';
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
  return o;
}

void checkOrdersSetLineItemMetadataRequest(
    api.OrdersSetLineItemMetadataRequest o) {
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    checkUnnamed5195(o.annotations!);
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
}

core.int buildCounterOrdersSetLineItemMetadataResponse = 0;
api.OrdersSetLineItemMetadataResponse buildOrdersSetLineItemMetadataResponse() {
  final o = api.OrdersSetLineItemMetadataResponse();
  buildCounterOrdersSetLineItemMetadataResponse++;
  if (buildCounterOrdersSetLineItemMetadataResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
  return o;
}

void checkOrdersSetLineItemMetadataResponse(
    api.OrdersSetLineItemMetadataResponse o) {
  buildCounterOrdersSetLineItemMetadataResponse++;
  if (buildCounterOrdersSetLineItemMetadataResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
}

core.List<api.OrderShipmentLineItemShipment> buildUnnamed5196() => [
      buildOrderShipmentLineItemShipment(),
      buildOrderShipmentLineItemShipment(),
    ];

void checkUnnamed5196(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>
    buildUnnamed5197() => [
          buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(),
          buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(),
        ];

void checkUnnamed5197(
    core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[0]);
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[1]);
}

core.int buildCounterOrdersShipLineItemsRequest = 0;
api.OrdersShipLineItemsRequest buildOrdersShipLineItemsRequest() {
  final o = api.OrdersShipLineItemsRequest();
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    o.lineItems = buildUnnamed5196();
    o.operationId = 'foo';
    o.shipmentGroupId = 'foo';
    o.shipmentInfos = buildUnnamed5197();
  }
  buildCounterOrdersShipLineItemsRequest--;
  return o;
}

void checkOrdersShipLineItemsRequest(api.OrdersShipLineItemsRequest o) {
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    checkUnnamed5196(o.lineItems!);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentGroupId!,
      unittest.equals('foo'),
    );
    checkUnnamed5197(o.shipmentInfos!);
  }
  buildCounterOrdersShipLineItemsRequest--;
}

core.int buildCounterOrdersShipLineItemsResponse = 0;
api.OrdersShipLineItemsResponse buildOrdersShipLineItemsResponse() {
  final o = api.OrdersShipLineItemsResponse();
  buildCounterOrdersShipLineItemsResponse++;
  if (buildCounterOrdersShipLineItemsResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersShipLineItemsResponse--;
  return o;
}

void checkOrdersShipLineItemsResponse(api.OrdersShipLineItemsResponse o) {
  buildCounterOrdersShipLineItemsResponse++;
  if (buildCounterOrdersShipLineItemsResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersShipLineItemsResponse--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsRequest = 0;
api.OrdersUpdateLineItemShippingDetailsRequest
    buildOrdersUpdateLineItemShippingDetailsRequest() {
  final o = api.OrdersUpdateLineItemShippingDetailsRequest();
  buildCounterOrdersUpdateLineItemShippingDetailsRequest++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsRequest < 3) {
    o.deliverByDate = 'foo';
    o.lineItemId = 'foo';
    o.operationId = 'foo';
    o.productId = 'foo';
    o.shipByDate = 'foo';
  }
  buildCounterOrdersUpdateLineItemShippingDetailsRequest--;
  return o;
}

void checkOrdersUpdateLineItemShippingDetailsRequest(
    api.OrdersUpdateLineItemShippingDetailsRequest o) {
  buildCounterOrdersUpdateLineItemShippingDetailsRequest++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsRequest < 3) {
    unittest.expect(
      o.deliverByDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipByDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersUpdateLineItemShippingDetailsRequest--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsResponse = 0;
api.OrdersUpdateLineItemShippingDetailsResponse
    buildOrdersUpdateLineItemShippingDetailsResponse() {
  final o = api.OrdersUpdateLineItemShippingDetailsResponse();
  buildCounterOrdersUpdateLineItemShippingDetailsResponse++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
  return o;
}

void checkOrdersUpdateLineItemShippingDetailsResponse(
    api.OrdersUpdateLineItemShippingDetailsResponse o) {
  buildCounterOrdersUpdateLineItemShippingDetailsResponse++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdRequest = 0;
api.OrdersUpdateMerchantOrderIdRequest
    buildOrdersUpdateMerchantOrderIdRequest() {
  final o = api.OrdersUpdateMerchantOrderIdRequest();
  buildCounterOrdersUpdateMerchantOrderIdRequest++;
  if (buildCounterOrdersUpdateMerchantOrderIdRequest < 3) {
    o.merchantOrderId = 'foo';
    o.operationId = 'foo';
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
  return o;
}

void checkOrdersUpdateMerchantOrderIdRequest(
    api.OrdersUpdateMerchantOrderIdRequest o) {
  buildCounterOrdersUpdateMerchantOrderIdRequest++;
  if (buildCounterOrdersUpdateMerchantOrderIdRequest < 3) {
    unittest.expect(
      o.merchantOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdResponse = 0;
api.OrdersUpdateMerchantOrderIdResponse
    buildOrdersUpdateMerchantOrderIdResponse() {
  final o = api.OrdersUpdateMerchantOrderIdResponse();
  buildCounterOrdersUpdateMerchantOrderIdResponse++;
  if (buildCounterOrdersUpdateMerchantOrderIdResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
  return o;
}

void checkOrdersUpdateMerchantOrderIdResponse(
    api.OrdersUpdateMerchantOrderIdResponse o) {
  buildCounterOrdersUpdateMerchantOrderIdResponse++;
  if (buildCounterOrdersUpdateMerchantOrderIdResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
}

core.int buildCounterOrdersUpdateShipmentRequest = 0;
api.OrdersUpdateShipmentRequest buildOrdersUpdateShipmentRequest() {
  final o = api.OrdersUpdateShipmentRequest();
  buildCounterOrdersUpdateShipmentRequest++;
  if (buildCounterOrdersUpdateShipmentRequest < 3) {
    o.carrier = 'foo';
    o.deliveryDate = 'foo';
    o.lastPickupDate = 'foo';
    o.operationId = 'foo';
    o.readyPickupDate = 'foo';
    o.scheduledDeliveryDetails =
        buildOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails();
    o.shipmentId = 'foo';
    o.status = 'foo';
    o.trackingId = 'foo';
    o.undeliveredDate = 'foo';
  }
  buildCounterOrdersUpdateShipmentRequest--;
  return o;
}

void checkOrdersUpdateShipmentRequest(api.OrdersUpdateShipmentRequest o) {
  buildCounterOrdersUpdateShipmentRequest++;
  if (buildCounterOrdersUpdateShipmentRequest < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastPickupDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readyPickupDate!,
      unittest.equals('foo'),
    );
    checkOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails(
        o.scheduledDeliveryDetails!);
    unittest.expect(
      o.shipmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.undeliveredDate!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersUpdateShipmentRequest--;
}

core.int buildCounterOrdersUpdateShipmentResponse = 0;
api.OrdersUpdateShipmentResponse buildOrdersUpdateShipmentResponse() {
  final o = api.OrdersUpdateShipmentResponse();
  buildCounterOrdersUpdateShipmentResponse++;
  if (buildCounterOrdersUpdateShipmentResponse < 3) {
    o.executionStatus = 'foo';
    o.kind = 'foo';
  }
  buildCounterOrdersUpdateShipmentResponse--;
  return o;
}

void checkOrdersUpdateShipmentResponse(api.OrdersUpdateShipmentResponse o) {
  buildCounterOrdersUpdateShipmentResponse++;
  if (buildCounterOrdersUpdateShipmentResponse < 3) {
    unittest.expect(
      o.executionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrdersUpdateShipmentResponse--;
}

core.int buildCounterPauseBuyOnGoogleProgramRequest = 0;
api.PauseBuyOnGoogleProgramRequest buildPauseBuyOnGoogleProgramRequest() {
  final o = api.PauseBuyOnGoogleProgramRequest();
  buildCounterPauseBuyOnGoogleProgramRequest++;
  if (buildCounterPauseBuyOnGoogleProgramRequest < 3) {}
  buildCounterPauseBuyOnGoogleProgramRequest--;
  return o;
}

void checkPauseBuyOnGoogleProgramRequest(api.PauseBuyOnGoogleProgramRequest o) {
  buildCounterPauseBuyOnGoogleProgramRequest++;
  if (buildCounterPauseBuyOnGoogleProgramRequest < 3) {}
  buildCounterPauseBuyOnGoogleProgramRequest--;
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

core.List<api.PosCustomBatchRequestEntry> buildUnnamed5198() => [
      buildPosCustomBatchRequestEntry(),
      buildPosCustomBatchRequestEntry(),
    ];

void checkUnnamed5198(core.List<api.PosCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchRequestEntry(o[0]);
  checkPosCustomBatchRequestEntry(o[1]);
}

core.int buildCounterPosCustomBatchRequest = 0;
api.PosCustomBatchRequest buildPosCustomBatchRequest() {
  final o = api.PosCustomBatchRequest();
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    o.entries = buildUnnamed5198();
  }
  buildCounterPosCustomBatchRequest--;
  return o;
}

void checkPosCustomBatchRequest(api.PosCustomBatchRequest o) {
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    checkUnnamed5198(o.entries!);
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

core.List<api.PosCustomBatchResponseEntry> buildUnnamed5199() => [
      buildPosCustomBatchResponseEntry(),
      buildPosCustomBatchResponseEntry(),
    ];

void checkUnnamed5199(core.List<api.PosCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchResponseEntry(o[0]);
  checkPosCustomBatchResponseEntry(o[1]);
}

core.int buildCounterPosCustomBatchResponse = 0;
api.PosCustomBatchResponse buildPosCustomBatchResponse() {
  final o = api.PosCustomBatchResponse();
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    o.entries = buildUnnamed5199();
    o.kind = 'foo';
  }
  buildCounterPosCustomBatchResponse--;
  return o;
}

void checkPosCustomBatchResponse(api.PosCustomBatchResponse o) {
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    checkUnnamed5199(o.entries!);
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

core.List<api.PosDataProvidersPosDataProvider> buildUnnamed5200() => [
      buildPosDataProvidersPosDataProvider(),
      buildPosDataProvidersPosDataProvider(),
    ];

void checkUnnamed5200(core.List<api.PosDataProvidersPosDataProvider> o) {
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
    o.posDataProviders = buildUnnamed5200();
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
    checkUnnamed5200(o.posDataProviders!);
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

core.List<api.PosStore> buildUnnamed5201() => [
      buildPosStore(),
      buildPosStore(),
    ];

void checkUnnamed5201(core.List<api.PosStore> o) {
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
    o.resources = buildUnnamed5201();
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
    checkUnnamed5201(o.resources!);
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

core.int buildCounterPosStore = 0;
api.PosStore buildPosStore() {
  final o = api.PosStore();
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    o.kind = 'foo';
    o.storeAddress = 'foo';
    o.storeCode = 'foo';
  }
  buildCounterPosStore--;
  return o;
}

void checkPosStore(api.PosStore o) {
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    unittest.expect(
      o.kind!,
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
  }
  buildCounterPosStore--;
}

core.List<api.PostalCodeRange> buildUnnamed5202() => [
      buildPostalCodeRange(),
      buildPostalCodeRange(),
    ];

void checkUnnamed5202(core.List<api.PostalCodeRange> o) {
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
    o.postalCodeRanges = buildUnnamed5202();
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
    checkUnnamed5202(o.postalCodeRanges!);
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

core.List<core.String> buildUnnamed5203() => [
      'foo',
      'foo',
    ];

void checkUnnamed5203(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5204() => [
      'foo',
      'foo',
    ];

void checkUnnamed5204(core.List<core.String> o) {
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

core.List<api.CustomAttribute> buildUnnamed5205() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed5205(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.List<core.String> buildUnnamed5206() => [
      'foo',
      'foo',
    ];

void checkUnnamed5206(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5207() => [
      'foo',
      'foo',
    ];

void checkUnnamed5207(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5208() => [
      'foo',
      'foo',
    ];

void checkUnnamed5208(core.List<core.String> o) {
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

core.List<api.ProductProductDetail> buildUnnamed5209() => [
      buildProductProductDetail(),
      buildProductProductDetail(),
    ];

void checkUnnamed5209(core.List<api.ProductProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductProductDetail(o[0]);
  checkProductProductDetail(o[1]);
}

core.List<core.String> buildUnnamed5210() => [
      'foo',
      'foo',
    ];

void checkUnnamed5210(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5211() => [
      'foo',
      'foo',
    ];

void checkUnnamed5211(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5212() => [
      'foo',
      'foo',
    ];

void checkUnnamed5212(core.List<core.String> o) {
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

core.List<api.ProductShipping> buildUnnamed5213() => [
      buildProductShipping(),
      buildProductShipping(),
    ];

void checkUnnamed5213(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0]);
  checkProductShipping(o[1]);
}

core.List<core.String> buildUnnamed5214() => [
      'foo',
      'foo',
    ];

void checkUnnamed5214(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5215() => [
      'foo',
      'foo',
    ];

void checkUnnamed5215(core.List<core.String> o) {
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

core.List<api.ProductTax> buildUnnamed5216() => [
      buildProductTax(),
      buildProductTax(),
    ];

void checkUnnamed5216(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0]);
  checkProductTax(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed5203();
    o.additionalSizeType = 'foo';
    o.adsGrouping = 'foo';
    o.adsLabels = buildUnnamed5204();
    o.adsRedirect = 'foo';
    o.adult = true;
    o.ageGroup = 'foo';
    o.availability = 'foo';
    o.availabilityDate = 'foo';
    o.brand = 'foo';
    o.canonicalLink = 'foo';
    o.channel = 'foo';
    o.color = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.costOfGoodsSold = buildPrice();
    o.customAttributes = buildUnnamed5205();
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.description = 'foo';
    o.displayAdsId = 'foo';
    o.displayAdsLink = 'foo';
    o.displayAdsSimilarIds = buildUnnamed5206();
    o.displayAdsTitle = 'foo';
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = 'foo';
    o.excludedDestinations = buildUnnamed5207();
    o.expirationDate = 'foo';
    o.gender = 'foo';
    o.googleProductCategory = 'foo';
    o.gtin = 'foo';
    o.id = 'foo';
    o.identifierExists = true;
    o.imageLink = 'foo';
    o.includedDestinations = buildUnnamed5208();
    o.installment = buildInstallment();
    o.isBundle = true;
    o.itemGroupId = 'foo';
    o.kind = 'foo';
    o.link = 'foo';
    o.linkTemplate = 'foo';
    o.loyaltyPoints = buildLoyaltyPoints();
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
    o.pickupMethod = 'foo';
    o.pickupSla = 'foo';
    o.price = buildPrice();
    o.productDetails = buildUnnamed5209();
    o.productHeight = buildProductDimension();
    o.productHighlights = buildUnnamed5210();
    o.productLength = buildProductDimension();
    o.productTypes = buildUnnamed5211();
    o.productWeight = buildProductWeight();
    o.productWidth = buildProductDimension();
    o.promotionIds = buildUnnamed5212();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = 'foo';
    o.sellOnGoogleQuantity = 'foo';
    o.shipping = buildUnnamed5213();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = 'foo';
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.shoppingAdsExcludedCountries = buildUnnamed5214();
    o.sizeSystem = 'foo';
    o.sizeType = 'foo';
    o.sizes = buildUnnamed5215();
    o.source = 'foo';
    o.subscriptionCost = buildProductSubscriptionCost();
    o.targetCountry = 'foo';
    o.taxCategory = 'foo';
    o.taxes = buildUnnamed5216();
    o.title = 'foo';
    o.transitTimeLabel = 'foo';
    o.unitPricingBaseMeasure = buildProductUnitPricingBaseMeasure();
    o.unitPricingMeasure = buildProductUnitPricingMeasure();
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed5203(o.additionalImageLinks!);
    unittest.expect(
      o.additionalSizeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.adsGrouping!,
      unittest.equals('foo'),
    );
    checkUnnamed5204(o.adsLabels!);
    unittest.expect(
      o.adsRedirect!,
      unittest.equals('foo'),
    );
    unittest.expect(o.adult!, unittest.isTrue);
    unittest.expect(
      o.ageGroup!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
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
    checkUnnamed5205(o.customAttributes!);
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
      o.displayAdsId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayAdsLink!,
      unittest.equals('foo'),
    );
    checkUnnamed5206(o.displayAdsSimilarIds!);
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
    checkUnnamed5207(o.excludedDestinations!);
    unittest.expect(
      o.expirationDate!,
      unittest.equals('foo'),
    );
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
    checkUnnamed5208(o.includedDestinations!);
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
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkTemplate!,
      unittest.equals('foo'),
    );
    checkLoyaltyPoints(o.loyaltyPoints!);
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
      o.pickupMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pickupSla!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    checkUnnamed5209(o.productDetails!);
    checkProductDimension(o.productHeight!);
    checkUnnamed5210(o.productHighlights!);
    checkProductDimension(o.productLength!);
    checkUnnamed5211(o.productTypes!);
    checkProductWeight(o.productWeight!);
    checkProductDimension(o.productWidth!);
    checkUnnamed5212(o.promotionIds!);
    checkPrice(o.salePrice!);
    unittest.expect(
      o.salePriceEffectiveDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sellOnGoogleQuantity!,
      unittest.equals('foo'),
    );
    checkUnnamed5213(o.shipping!);
    checkProductShippingDimension(o.shippingHeight!);
    unittest.expect(
      o.shippingLabel!,
      unittest.equals('foo'),
    );
    checkProductShippingDimension(o.shippingLength!);
    checkProductShippingWeight(o.shippingWeight!);
    checkProductShippingDimension(o.shippingWidth!);
    checkUnnamed5214(o.shoppingAdsExcludedCountries!);
    unittest.expect(
      o.sizeSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeType!,
      unittest.equals('foo'),
    );
    checkUnnamed5215(o.sizes!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    checkProductSubscriptionCost(o.subscriptionCost!);
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taxCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed5216(o.taxes!);
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
  }
  buildCounterProduct--;
}

core.int buildCounterProductAmount = 0;
api.ProductAmount buildProductAmount() {
  final o = api.ProductAmount();
  buildCounterProductAmount++;
  if (buildCounterProductAmount < 3) {
    o.priceAmount = buildPrice();
    o.remittedTaxAmount = buildPrice();
    o.taxAmount = buildPrice();
  }
  buildCounterProductAmount--;
  return o;
}

void checkProductAmount(api.ProductAmount o) {
  buildCounterProductAmount++;
  if (buildCounterProductAmount < 3) {
    checkPrice(o.priceAmount!);
    checkPrice(o.remittedTaxAmount!);
    checkPrice(o.taxAmount!);
  }
  buildCounterProductAmount--;
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

core.List<api.ProductStatusDestinationStatus> buildUnnamed5217() => [
      buildProductStatusDestinationStatus(),
      buildProductStatusDestinationStatus(),
    ];

void checkUnnamed5217(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(o[0]);
  checkProductStatusDestinationStatus(o[1]);
}

core.List<api.ProductStatusItemLevelIssue> buildUnnamed5218() => [
      buildProductStatusItemLevelIssue(),
      buildProductStatusItemLevelIssue(),
    ];

void checkUnnamed5218(core.List<api.ProductStatusItemLevelIssue> o) {
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
    o.destinationStatuses = buildUnnamed5217();
    o.googleExpirationDate = 'foo';
    o.itemLevelIssues = buildUnnamed5218();
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
    checkUnnamed5217(o.destinationStatuses!);
    unittest.expect(
      o.googleExpirationDate!,
      unittest.equals('foo'),
    );
    checkUnnamed5218(o.itemLevelIssues!);
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

core.List<core.String> buildUnnamed5219() => [
      'foo',
      'foo',
    ];

void checkUnnamed5219(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5220() => [
      'foo',
      'foo',
    ];

void checkUnnamed5220(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5221() => [
      'foo',
      'foo',
    ];

void checkUnnamed5221(core.List<core.String> o) {
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
    o.approvedCountries = buildUnnamed5219();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed5220();
    o.pendingCountries = buildUnnamed5221();
    o.status = 'foo';
  }
  buildCounterProductStatusDestinationStatus--;
  return o;
}

void checkProductStatusDestinationStatus(api.ProductStatusDestinationStatus o) {
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    checkUnnamed5219(o.approvedCountries!);
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkUnnamed5220(o.disapprovedCountries!);
    checkUnnamed5221(o.pendingCountries!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductStatusDestinationStatus--;
}

core.List<core.String> buildUnnamed5222() => [
      'foo',
      'foo',
    ];

void checkUnnamed5222(core.List<core.String> o) {
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
    o.applicableCountries = buildUnnamed5222();
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
    checkUnnamed5222(o.applicableCountries!);
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

core.List<api.ProductsCustomBatchRequestEntry> buildUnnamed5223() => [
      buildProductsCustomBatchRequestEntry(),
      buildProductsCustomBatchRequestEntry(),
    ];

void checkUnnamed5223(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(o[0]);
  checkProductsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductsCustomBatchRequest = 0;
api.ProductsCustomBatchRequest buildProductsCustomBatchRequest() {
  final o = api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed5223();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

void checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed5223(o.entries!);
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

core.List<api.ProductsCustomBatchResponseEntry> buildUnnamed5224() => [
      buildProductsCustomBatchResponseEntry(),
      buildProductsCustomBatchResponseEntry(),
    ];

void checkUnnamed5224(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(o[0]);
  checkProductsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductsCustomBatchResponse = 0;
api.ProductsCustomBatchResponse buildProductsCustomBatchResponse() {
  final o = api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed5224();
    o.kind = 'foo';
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

void checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed5224(o.entries!);
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

core.List<api.Product> buildUnnamed5225() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed5225(core.List<api.Product> o) {
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
    o.resources = buildUnnamed5225();
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
    checkUnnamed5225(o.resources!);
  }
  buildCounterProductsListResponse--;
}

core.List<api.ProductstatusesCustomBatchRequestEntry> buildUnnamed5226() => [
      buildProductstatusesCustomBatchRequestEntry(),
      buildProductstatusesCustomBatchRequestEntry(),
    ];

void checkUnnamed5226(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(o[0]);
  checkProductstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
api.ProductstatusesCustomBatchRequest buildProductstatusesCustomBatchRequest() {
  final o = api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed5226();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

void checkProductstatusesCustomBatchRequest(
    api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed5226(o.entries!);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed5227() => [
      'foo',
      'foo',
    ];

void checkUnnamed5227(core.List<core.String> o) {
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
    o.destinations = buildUnnamed5227();
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
    checkUnnamed5227(o.destinations!);
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

core.List<api.ProductstatusesCustomBatchResponseEntry> buildUnnamed5228() => [
      buildProductstatusesCustomBatchResponseEntry(),
      buildProductstatusesCustomBatchResponseEntry(),
    ];

void checkUnnamed5228(
    core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
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
    o.entries = buildUnnamed5228();
    o.kind = 'foo';
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

void checkProductstatusesCustomBatchResponse(
    api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed5228(o.entries!);
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

core.List<api.ProductStatus> buildUnnamed5229() => [
      buildProductStatus(),
      buildProductStatus(),
    ];

void checkUnnamed5229(core.List<api.ProductStatus> o) {
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
    o.resources = buildUnnamed5229();
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
    checkUnnamed5229(o.resources!);
  }
  buildCounterProductstatusesListResponse--;
}

core.List<core.String> buildUnnamed5230() => [
      'foo',
      'foo',
    ];

void checkUnnamed5230(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5231() => [
      'foo',
      'foo',
    ];

void checkUnnamed5231(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5232() => [
      'foo',
      'foo',
    ];

void checkUnnamed5232(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5233() => [
      'foo',
      'foo',
    ];

void checkUnnamed5233(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5234() => [
      'foo',
      'foo',
    ];

void checkUnnamed5234(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5235() => [
      'foo',
      'foo',
    ];

void checkUnnamed5235(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5236() => [
      'foo',
      'foo',
    ];

void checkUnnamed5236(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5237() => [
      'foo',
      'foo',
    ];

void checkUnnamed5237(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5238() => [
      'foo',
      'foo',
    ];

void checkUnnamed5238(core.List<core.String> o) {
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
    o.brand = buildUnnamed5230();
    o.brandExclusion = buildUnnamed5231();
    o.contentLanguage = 'foo';
    o.couponValueType = 'foo';
    o.freeGiftDescription = 'foo';
    o.freeGiftItemId = 'foo';
    o.freeGiftValue = buildPriceAmount();
    o.genericRedemptionCode = 'foo';
    o.getThisQuantityDiscounted = 42;
    o.id = 'foo';
    o.itemGroupId = buildUnnamed5232();
    o.itemGroupIdExclusion = buildUnnamed5233();
    o.itemId = buildUnnamed5234();
    o.itemIdExclusion = buildUnnamed5235();
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
    o.promotionDestinationIds = buildUnnamed5236();
    o.promotionDisplayDates = 'foo';
    o.promotionEffectiveDates = 'foo';
    o.promotionId = 'foo';
    o.redemptionChannel = buildUnnamed5237();
    o.shippingServiceNames = buildUnnamed5238();
    o.targetCountry = 'foo';
  }
  buildCounterPromotion--;
  return o;
}

void checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkUnnamed5230(o.brand!);
    checkUnnamed5231(o.brandExclusion!);
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
    checkUnnamed5232(o.itemGroupId!);
    checkUnnamed5233(o.itemGroupIdExclusion!);
    checkUnnamed5234(o.itemId!);
    checkUnnamed5235(o.itemIdExclusion!);
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
    checkUnnamed5236(o.promotionDestinationIds!);
    unittest.expect(
      o.promotionDisplayDates!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionEffectiveDates!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionId!,
      unittest.equals('foo'),
    );
    checkUnnamed5237(o.redemptionChannel!);
    checkUnnamed5238(o.shippingServiceNames!);
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
  }
  buildCounterPromotion--;
}

core.List<core.String> buildUnnamed5239() => [
      'foo',
      'foo',
    ];

void checkUnnamed5239(core.List<core.String> o) {
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
    o.registeredEvents = buildUnnamed5239();
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
    checkUnnamed5239(o.registeredEvents!);
  }
  buildCounterPubsubNotificationSettings--;
}

core.List<core.String> buildUnnamed5240() => [
      'foo',
      'foo',
    ];

void checkUnnamed5240(core.List<core.String> o) {
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

core.List<api.CarrierRate> buildUnnamed5241() => [
      buildCarrierRate(),
      buildCarrierRate(),
    ];

void checkUnnamed5241(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0]);
  checkCarrierRate(o[1]);
}

core.List<api.Table> buildUnnamed5242() => [
      buildTable(),
      buildTable(),
    ];

void checkUnnamed5242(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterRateGroup = 0;
api.RateGroup buildRateGroup() {
  final o = api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed5240();
    o.carrierRates = buildUnnamed5241();
    o.mainTable = buildTable();
    o.name = 'foo';
    o.singleValue = buildValue();
    o.subtables = buildUnnamed5242();
  }
  buildCounterRateGroup--;
  return o;
}

void checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed5240(o.applicableShippingLabels!);
    checkUnnamed5241(o.carrierRates!);
    checkTable(o.mainTable!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkValue(o.singleValue!);
    checkUnnamed5242(o.subtables!);
  }
  buildCounterRateGroup--;
}

core.int buildCounterRefundReason = 0;
api.RefundReason buildRefundReason() {
  final o = api.RefundReason();
  buildCounterRefundReason++;
  if (buildCounterRefundReason < 3) {
    o.description = 'foo';
    o.reasonCode = 'foo';
  }
  buildCounterRefundReason--;
  return o;
}

void checkRefundReason(api.RefundReason o) {
  buildCounterRefundReason++;
  if (buildCounterRefundReason < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRefundReason--;
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

core.List<core.String> buildUnnamed5243() => [
      'foo',
      'foo',
    ];

void checkUnnamed5243(core.List<core.String> o) {
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
    o.geotargetCriteriaIds = buildUnnamed5243();
  }
  buildCounterRegionGeoTargetArea--;
  return o;
}

void checkRegionGeoTargetArea(api.RegionGeoTargetArea o) {
  buildCounterRegionGeoTargetArea++;
  if (buildCounterRegionGeoTargetArea < 3) {
    checkUnnamed5243(o.geotargetCriteriaIds!);
  }
  buildCounterRegionGeoTargetArea--;
}

core.List<api.RegionPostalCodeAreaPostalCodeRange> buildUnnamed5244() => [
      buildRegionPostalCodeAreaPostalCodeRange(),
      buildRegionPostalCodeAreaPostalCodeRange(),
    ];

void checkUnnamed5244(core.List<api.RegionPostalCodeAreaPostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionPostalCodeAreaPostalCodeRange(o[0]);
  checkRegionPostalCodeAreaPostalCodeRange(o[1]);
}

core.int buildCounterRegionPostalCodeArea = 0;
api.RegionPostalCodeArea buildRegionPostalCodeArea() {
  final o = api.RegionPostalCodeArea();
  buildCounterRegionPostalCodeArea++;
  if (buildCounterRegionPostalCodeArea < 3) {
    o.postalCodes = buildUnnamed5244();
    o.regionCode = 'foo';
  }
  buildCounterRegionPostalCodeArea--;
  return o;
}

void checkRegionPostalCodeArea(api.RegionPostalCodeArea o) {
  buildCounterRegionPostalCodeArea++;
  if (buildCounterRegionPostalCodeArea < 3) {
    checkUnnamed5244(o.postalCodes!);
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

core.List<api.CustomAttribute> buildUnnamed5245() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed5245(core.List<api.CustomAttribute> o) {
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
    o.customAttributes = buildUnnamed5245();
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
    checkUnnamed5245(o.customAttributes!);
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

core.List<api.RegionalinventoryCustomBatchRequestEntry> buildUnnamed5246() => [
      buildRegionalinventoryCustomBatchRequestEntry(),
      buildRegionalinventoryCustomBatchRequestEntry(),
    ];

void checkUnnamed5246(
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
    o.entries = buildUnnamed5246();
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
  return o;
}

void checkRegionalinventoryCustomBatchRequest(
    api.RegionalinventoryCustomBatchRequest o) {
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    checkUnnamed5246(o.entries!);
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

core.List<api.RegionalinventoryCustomBatchResponseEntry> buildUnnamed5247() => [
      buildRegionalinventoryCustomBatchResponseEntry(),
      buildRegionalinventoryCustomBatchResponseEntry(),
    ];

void checkUnnamed5247(
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
    o.entries = buildUnnamed5247();
    o.kind = 'foo';
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
  return o;
}

void checkRegionalinventoryCustomBatchResponse(
    api.RegionalinventoryCustomBatchResponse o) {
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    checkUnnamed5247(o.entries!);
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

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  final o = api.ReportRow();
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    o.metrics = buildMetrics();
    o.segments = buildSegments();
  }
  buildCounterReportRow--;
  return o;
}

void checkReportRow(api.ReportRow o) {
  buildCounterReportRow++;
  if (buildCounterReportRow < 3) {
    checkMetrics(o.metrics!);
    checkSegments(o.segments!);
  }
  buildCounterReportRow--;
}

core.List<api.InapplicabilityDetails> buildUnnamed5248() => [
      buildInapplicabilityDetails(),
      buildInapplicabilityDetails(),
    ];

void checkUnnamed5248(core.List<api.InapplicabilityDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInapplicabilityDetails(o[0]);
  checkInapplicabilityDetails(o[1]);
}

core.List<core.String> buildUnnamed5249() => [
      'foo',
      'foo',
    ];

void checkUnnamed5249(core.List<core.String> o) {
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

core.int buildCounterRepricingProductReport = 0;
api.RepricingProductReport buildRepricingProductReport() {
  final o = api.RepricingProductReport();
  buildCounterRepricingProductReport++;
  if (buildCounterRepricingProductReport < 3) {
    o.applicationCount = 'foo';
    o.buyboxWinningProductStats =
        buildRepricingProductReportBuyboxWinningProductStats();
    o.date = buildDate();
    o.highWatermark = buildPriceAmount();
    o.inapplicabilityDetails = buildUnnamed5248();
    o.lowWatermark = buildPriceAmount();
    o.orderItemCount = 42;
    o.ruleIds = buildUnnamed5249();
    o.totalGmv = buildPriceAmount();
    o.type = 'foo';
  }
  buildCounterRepricingProductReport--;
  return o;
}

void checkRepricingProductReport(api.RepricingProductReport o) {
  buildCounterRepricingProductReport++;
  if (buildCounterRepricingProductReport < 3) {
    unittest.expect(
      o.applicationCount!,
      unittest.equals('foo'),
    );
    checkRepricingProductReportBuyboxWinningProductStats(
        o.buyboxWinningProductStats!);
    checkDate(o.date!);
    checkPriceAmount(o.highWatermark!);
    checkUnnamed5248(o.inapplicabilityDetails!);
    checkPriceAmount(o.lowWatermark!);
    unittest.expect(
      o.orderItemCount!,
      unittest.equals(42),
    );
    checkUnnamed5249(o.ruleIds!);
    checkPriceAmount(o.totalGmv!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingProductReport--;
}

core.int buildCounterRepricingProductReportBuyboxWinningProductStats = 0;
api.RepricingProductReportBuyboxWinningProductStats
    buildRepricingProductReportBuyboxWinningProductStats() {
  final o = api.RepricingProductReportBuyboxWinningProductStats();
  buildCounterRepricingProductReportBuyboxWinningProductStats++;
  if (buildCounterRepricingProductReportBuyboxWinningProductStats < 3) {
    o.buyboxWinsCount = 42;
  }
  buildCounterRepricingProductReportBuyboxWinningProductStats--;
  return o;
}

void checkRepricingProductReportBuyboxWinningProductStats(
    api.RepricingProductReportBuyboxWinningProductStats o) {
  buildCounterRepricingProductReportBuyboxWinningProductStats++;
  if (buildCounterRepricingProductReportBuyboxWinningProductStats < 3) {
    unittest.expect(
      o.buyboxWinsCount!,
      unittest.equals(42),
    );
  }
  buildCounterRepricingProductReportBuyboxWinningProductStats--;
}

core.int buildCounterRepricingRule = 0;
api.RepricingRule buildRepricingRule() {
  final o = api.RepricingRule();
  buildCounterRepricingRule++;
  if (buildCounterRepricingRule < 3) {
    o.cogsBasedRule = buildRepricingRuleCostOfGoodsSaleRule();
    o.countryCode = 'foo';
    o.effectiveTimePeriod = buildRepricingRuleEffectiveTime();
    o.eligibleOfferMatcher = buildRepricingRuleEligibleOfferMatcher();
    o.languageCode = 'foo';
    o.merchantId = 'foo';
    o.paused = true;
    o.restriction = buildRepricingRuleRestriction();
    o.ruleId = 'foo';
    o.statsBasedRule = buildRepricingRuleStatsBasedRule();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterRepricingRule--;
  return o;
}

void checkRepricingRule(api.RepricingRule o) {
  buildCounterRepricingRule++;
  if (buildCounterRepricingRule < 3) {
    checkRepricingRuleCostOfGoodsSaleRule(o.cogsBasedRule!);
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    checkRepricingRuleEffectiveTime(o.effectiveTimePeriod!);
    checkRepricingRuleEligibleOfferMatcher(o.eligibleOfferMatcher!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.paused!, unittest.isTrue);
    checkRepricingRuleRestriction(o.restriction!);
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
    checkRepricingRuleStatsBasedRule(o.statsBasedRule!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingRule--;
}

core.int buildCounterRepricingRuleCostOfGoodsSaleRule = 0;
api.RepricingRuleCostOfGoodsSaleRule buildRepricingRuleCostOfGoodsSaleRule() {
  final o = api.RepricingRuleCostOfGoodsSaleRule();
  buildCounterRepricingRuleCostOfGoodsSaleRule++;
  if (buildCounterRepricingRuleCostOfGoodsSaleRule < 3) {
    o.percentageDelta = 42;
    o.priceDelta = 'foo';
  }
  buildCounterRepricingRuleCostOfGoodsSaleRule--;
  return o;
}

void checkRepricingRuleCostOfGoodsSaleRule(
    api.RepricingRuleCostOfGoodsSaleRule o) {
  buildCounterRepricingRuleCostOfGoodsSaleRule++;
  if (buildCounterRepricingRuleCostOfGoodsSaleRule < 3) {
    unittest.expect(
      o.percentageDelta!,
      unittest.equals(42),
    );
    unittest.expect(
      o.priceDelta!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingRuleCostOfGoodsSaleRule--;
}

core.List<api.RepricingRuleEffectiveTimeFixedTimePeriod> buildUnnamed5250() => [
      buildRepricingRuleEffectiveTimeFixedTimePeriod(),
      buildRepricingRuleEffectiveTimeFixedTimePeriod(),
    ];

void checkUnnamed5250(
    core.List<api.RepricingRuleEffectiveTimeFixedTimePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingRuleEffectiveTimeFixedTimePeriod(o[0]);
  checkRepricingRuleEffectiveTimeFixedTimePeriod(o[1]);
}

core.int buildCounterRepricingRuleEffectiveTime = 0;
api.RepricingRuleEffectiveTime buildRepricingRuleEffectiveTime() {
  final o = api.RepricingRuleEffectiveTime();
  buildCounterRepricingRuleEffectiveTime++;
  if (buildCounterRepricingRuleEffectiveTime < 3) {
    o.fixedTimePeriods = buildUnnamed5250();
  }
  buildCounterRepricingRuleEffectiveTime--;
  return o;
}

void checkRepricingRuleEffectiveTime(api.RepricingRuleEffectiveTime o) {
  buildCounterRepricingRuleEffectiveTime++;
  if (buildCounterRepricingRuleEffectiveTime < 3) {
    checkUnnamed5250(o.fixedTimePeriods!);
  }
  buildCounterRepricingRuleEffectiveTime--;
}

core.int buildCounterRepricingRuleEffectiveTimeFixedTimePeriod = 0;
api.RepricingRuleEffectiveTimeFixedTimePeriod
    buildRepricingRuleEffectiveTimeFixedTimePeriod() {
  final o = api.RepricingRuleEffectiveTimeFixedTimePeriod();
  buildCounterRepricingRuleEffectiveTimeFixedTimePeriod++;
  if (buildCounterRepricingRuleEffectiveTimeFixedTimePeriod < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterRepricingRuleEffectiveTimeFixedTimePeriod--;
  return o;
}

void checkRepricingRuleEffectiveTimeFixedTimePeriod(
    api.RepricingRuleEffectiveTimeFixedTimePeriod o) {
  buildCounterRepricingRuleEffectiveTimeFixedTimePeriod++;
  if (buildCounterRepricingRuleEffectiveTimeFixedTimePeriod < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingRuleEffectiveTimeFixedTimePeriod--;
}

core.int buildCounterRepricingRuleEligibleOfferMatcher = 0;
api.RepricingRuleEligibleOfferMatcher buildRepricingRuleEligibleOfferMatcher() {
  final o = api.RepricingRuleEligibleOfferMatcher();
  buildCounterRepricingRuleEligibleOfferMatcher++;
  if (buildCounterRepricingRuleEligibleOfferMatcher < 3) {
    o.brandMatcher = buildRepricingRuleEligibleOfferMatcherStringMatcher();
    o.itemGroupIdMatcher =
        buildRepricingRuleEligibleOfferMatcherStringMatcher();
    o.matcherOption = 'foo';
    o.offerIdMatcher = buildRepricingRuleEligibleOfferMatcherStringMatcher();
    o.skipWhenOnPromotion = true;
  }
  buildCounterRepricingRuleEligibleOfferMatcher--;
  return o;
}

void checkRepricingRuleEligibleOfferMatcher(
    api.RepricingRuleEligibleOfferMatcher o) {
  buildCounterRepricingRuleEligibleOfferMatcher++;
  if (buildCounterRepricingRuleEligibleOfferMatcher < 3) {
    checkRepricingRuleEligibleOfferMatcherStringMatcher(o.brandMatcher!);
    checkRepricingRuleEligibleOfferMatcherStringMatcher(o.itemGroupIdMatcher!);
    unittest.expect(
      o.matcherOption!,
      unittest.equals('foo'),
    );
    checkRepricingRuleEligibleOfferMatcherStringMatcher(o.offerIdMatcher!);
    unittest.expect(o.skipWhenOnPromotion!, unittest.isTrue);
  }
  buildCounterRepricingRuleEligibleOfferMatcher--;
}

core.List<core.String> buildUnnamed5251() => [
      'foo',
      'foo',
    ];

void checkUnnamed5251(core.List<core.String> o) {
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

core.int buildCounterRepricingRuleEligibleOfferMatcherStringMatcher = 0;
api.RepricingRuleEligibleOfferMatcherStringMatcher
    buildRepricingRuleEligibleOfferMatcherStringMatcher() {
  final o = api.RepricingRuleEligibleOfferMatcherStringMatcher();
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher++;
  if (buildCounterRepricingRuleEligibleOfferMatcherStringMatcher < 3) {
    o.strAttributes = buildUnnamed5251();
  }
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher--;
  return o;
}

void checkRepricingRuleEligibleOfferMatcherStringMatcher(
    api.RepricingRuleEligibleOfferMatcherStringMatcher o) {
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher++;
  if (buildCounterRepricingRuleEligibleOfferMatcherStringMatcher < 3) {
    checkUnnamed5251(o.strAttributes!);
  }
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher--;
}

core.List<core.String> buildUnnamed5252() => [
      'foo',
      'foo',
    ];

void checkUnnamed5252(core.List<core.String> o) {
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

core.List<api.InapplicabilityDetails> buildUnnamed5253() => [
      buildInapplicabilityDetails(),
      buildInapplicabilityDetails(),
    ];

void checkUnnamed5253(core.List<api.InapplicabilityDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInapplicabilityDetails(o[0]);
  checkInapplicabilityDetails(o[1]);
}

core.List<core.String> buildUnnamed5254() => [
      'foo',
      'foo',
    ];

void checkUnnamed5254(core.List<core.String> o) {
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

core.int buildCounterRepricingRuleReport = 0;
api.RepricingRuleReport buildRepricingRuleReport() {
  final o = api.RepricingRuleReport();
  buildCounterRepricingRuleReport++;
  if (buildCounterRepricingRuleReport < 3) {
    o.buyboxWinningRuleStats = buildRepricingRuleReportBuyboxWinningRuleStats();
    o.date = buildDate();
    o.impactedProducts = buildUnnamed5252();
    o.inapplicabilityDetails = buildUnnamed5253();
    o.inapplicableProducts = buildUnnamed5254();
    o.orderItemCount = 42;
    o.ruleId = 'foo';
    o.totalGmv = buildPriceAmount();
    o.type = 'foo';
  }
  buildCounterRepricingRuleReport--;
  return o;
}

void checkRepricingRuleReport(api.RepricingRuleReport o) {
  buildCounterRepricingRuleReport++;
  if (buildCounterRepricingRuleReport < 3) {
    checkRepricingRuleReportBuyboxWinningRuleStats(o.buyboxWinningRuleStats!);
    checkDate(o.date!);
    checkUnnamed5252(o.impactedProducts!);
    checkUnnamed5253(o.inapplicabilityDetails!);
    checkUnnamed5254(o.inapplicableProducts!);
    unittest.expect(
      o.orderItemCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
    checkPriceAmount(o.totalGmv!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingRuleReport--;
}

core.int buildCounterRepricingRuleReportBuyboxWinningRuleStats = 0;
api.RepricingRuleReportBuyboxWinningRuleStats
    buildRepricingRuleReportBuyboxWinningRuleStats() {
  final o = api.RepricingRuleReportBuyboxWinningRuleStats();
  buildCounterRepricingRuleReportBuyboxWinningRuleStats++;
  if (buildCounterRepricingRuleReportBuyboxWinningRuleStats < 3) {
    o.buyboxWonProductCount = 42;
  }
  buildCounterRepricingRuleReportBuyboxWinningRuleStats--;
  return o;
}

void checkRepricingRuleReportBuyboxWinningRuleStats(
    api.RepricingRuleReportBuyboxWinningRuleStats o) {
  buildCounterRepricingRuleReportBuyboxWinningRuleStats++;
  if (buildCounterRepricingRuleReportBuyboxWinningRuleStats < 3) {
    unittest.expect(
      o.buyboxWonProductCount!,
      unittest.equals(42),
    );
  }
  buildCounterRepricingRuleReportBuyboxWinningRuleStats--;
}

core.int buildCounterRepricingRuleRestriction = 0;
api.RepricingRuleRestriction buildRepricingRuleRestriction() {
  final o = api.RepricingRuleRestriction();
  buildCounterRepricingRuleRestriction++;
  if (buildCounterRepricingRuleRestriction < 3) {
    o.floor = buildRepricingRuleRestrictionBoundary();
    o.useAutoPricingMinPrice = true;
  }
  buildCounterRepricingRuleRestriction--;
  return o;
}

void checkRepricingRuleRestriction(api.RepricingRuleRestriction o) {
  buildCounterRepricingRuleRestriction++;
  if (buildCounterRepricingRuleRestriction < 3) {
    checkRepricingRuleRestrictionBoundary(o.floor!);
    unittest.expect(o.useAutoPricingMinPrice!, unittest.isTrue);
  }
  buildCounterRepricingRuleRestriction--;
}

core.int buildCounterRepricingRuleRestrictionBoundary = 0;
api.RepricingRuleRestrictionBoundary buildRepricingRuleRestrictionBoundary() {
  final o = api.RepricingRuleRestrictionBoundary();
  buildCounterRepricingRuleRestrictionBoundary++;
  if (buildCounterRepricingRuleRestrictionBoundary < 3) {
    o.percentageDelta = 42;
    o.priceDelta = 'foo';
  }
  buildCounterRepricingRuleRestrictionBoundary--;
  return o;
}

void checkRepricingRuleRestrictionBoundary(
    api.RepricingRuleRestrictionBoundary o) {
  buildCounterRepricingRuleRestrictionBoundary++;
  if (buildCounterRepricingRuleRestrictionBoundary < 3) {
    unittest.expect(
      o.percentageDelta!,
      unittest.equals(42),
    );
    unittest.expect(
      o.priceDelta!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingRuleRestrictionBoundary--;
}

core.int buildCounterRepricingRuleStatsBasedRule = 0;
api.RepricingRuleStatsBasedRule buildRepricingRuleStatsBasedRule() {
  final o = api.RepricingRuleStatsBasedRule();
  buildCounterRepricingRuleStatsBasedRule++;
  if (buildCounterRepricingRuleStatsBasedRule < 3) {
    o.percentageDelta = 42;
    o.priceDelta = 'foo';
  }
  buildCounterRepricingRuleStatsBasedRule--;
  return o;
}

void checkRepricingRuleStatsBasedRule(api.RepricingRuleStatsBasedRule o) {
  buildCounterRepricingRuleStatsBasedRule++;
  if (buildCounterRepricingRuleStatsBasedRule < 3) {
    unittest.expect(
      o.percentageDelta!,
      unittest.equals(42),
    );
    unittest.expect(
      o.priceDelta!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepricingRuleStatsBasedRule--;
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

core.int buildCounterRequestReviewBuyOnGoogleProgramRequest = 0;
api.RequestReviewBuyOnGoogleProgramRequest
    buildRequestReviewBuyOnGoogleProgramRequest() {
  final o = api.RequestReviewBuyOnGoogleProgramRequest();
  buildCounterRequestReviewBuyOnGoogleProgramRequest++;
  if (buildCounterRequestReviewBuyOnGoogleProgramRequest < 3) {}
  buildCounterRequestReviewBuyOnGoogleProgramRequest--;
  return o;
}

void checkRequestReviewBuyOnGoogleProgramRequest(
    api.RequestReviewBuyOnGoogleProgramRequest o) {
  buildCounterRequestReviewBuyOnGoogleProgramRequest++;
  if (buildCounterRequestReviewBuyOnGoogleProgramRequest < 3) {}
  buildCounterRequestReviewBuyOnGoogleProgramRequest--;
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

core.List<core.String> buildUnnamed5255() => [
      'foo',
      'foo',
    ];

void checkUnnamed5255(core.List<core.String> o) {
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
    o.streetAddress = buildUnnamed5255();
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
    checkUnnamed5255(o.streetAddress!);
  }
  buildCounterReturnAddressAddress--;
}

core.List<core.String> buildUnnamed5256() => [
      'foo',
      'foo',
    ];

void checkUnnamed5256(core.List<core.String> o) {
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

core.List<api.ReturnPolicySeasonalOverride> buildUnnamed5257() => [
      buildReturnPolicySeasonalOverride(),
      buildReturnPolicySeasonalOverride(),
    ];

void checkUnnamed5257(core.List<api.ReturnPolicySeasonalOverride> o) {
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
    o.nonFreeReturnReasons = buildUnnamed5256();
    o.policy = buildReturnPolicyPolicy();
    o.returnPolicyId = 'foo';
    o.returnShippingFee = buildPrice();
    o.seasonalOverrides = buildUnnamed5257();
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
    checkUnnamed5256(o.nonFreeReturnReasons!);
    checkReturnPolicyPolicy(o.policy!);
    unittest.expect(
      o.returnPolicyId!,
      unittest.equals('foo'),
    );
    checkPrice(o.returnShippingFee!);
    checkUnnamed5257(o.seasonalOverrides!);
  }
  buildCounterReturnPolicy--;
}

core.List<core.String> buildUnnamed5258() => [
      'foo',
      'foo',
    ];

void checkUnnamed5258(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5259() => [
      'foo',
      'foo',
    ];

void checkUnnamed5259(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5260() => [
      'foo',
      'foo',
    ];

void checkUnnamed5260(core.List<core.String> o) {
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

core.List<api.ReturnPolicyOnlineReturnReasonCategoryInfo> buildUnnamed5261() =>
    [
      buildReturnPolicyOnlineReturnReasonCategoryInfo(),
      buildReturnPolicyOnlineReturnReasonCategoryInfo(),
    ];

void checkUnnamed5261(
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
    o.countries = buildUnnamed5258();
    o.itemConditions = buildUnnamed5259();
    o.label = 'foo';
    o.name = 'foo';
    o.policy = buildReturnPolicyOnlinePolicy();
    o.restockingFee = buildReturnPolicyOnlineRestockingFee();
    o.returnMethods = buildUnnamed5260();
    o.returnPolicyId = 'foo';
    o.returnPolicyUri = 'foo';
    o.returnReasonCategoryInfo = buildUnnamed5261();
  }
  buildCounterReturnPolicyOnline--;
  return o;
}

void checkReturnPolicyOnline(api.ReturnPolicyOnline o) {
  buildCounterReturnPolicyOnline++;
  if (buildCounterReturnPolicyOnline < 3) {
    checkUnnamed5258(o.countries!);
    checkUnnamed5259(o.itemConditions!);
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
    checkUnnamed5260(o.returnMethods!);
    unittest.expect(
      o.returnPolicyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnPolicyUri!,
      unittest.equals('foo'),
    );
    checkUnnamed5261(o.returnReasonCategoryInfo!);
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

core.int buildCounterReturnPricingInfo = 0;
api.ReturnPricingInfo buildReturnPricingInfo() {
  final o = api.ReturnPricingInfo();
  buildCounterReturnPricingInfo++;
  if (buildCounterReturnPricingInfo < 3) {
    o.chargeReturnShippingFee = true;
    o.maxReturnShippingFee = buildMonetaryAmount();
    o.refundableItemsTotalAmount = buildMonetaryAmount();
    o.refundableShippingAmount = buildMonetaryAmount();
    o.totalRefundedAmount = buildMonetaryAmount();
  }
  buildCounterReturnPricingInfo--;
  return o;
}

void checkReturnPricingInfo(api.ReturnPricingInfo o) {
  buildCounterReturnPricingInfo++;
  if (buildCounterReturnPricingInfo < 3) {
    unittest.expect(o.chargeReturnShippingFee!, unittest.isTrue);
    checkMonetaryAmount(o.maxReturnShippingFee!);
    checkMonetaryAmount(o.refundableItemsTotalAmount!);
    checkMonetaryAmount(o.refundableShippingAmount!);
    checkMonetaryAmount(o.totalRefundedAmount!);
  }
  buildCounterReturnPricingInfo--;
}

core.List<api.ShipmentTrackingInfo> buildUnnamed5262() => [
      buildShipmentTrackingInfo(),
      buildShipmentTrackingInfo(),
    ];

void checkUnnamed5262(core.List<api.ShipmentTrackingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentTrackingInfo(o[0]);
  checkShipmentTrackingInfo(o[1]);
}

core.int buildCounterReturnShipment = 0;
api.ReturnShipment buildReturnShipment() {
  final o = api.ReturnShipment();
  buildCounterReturnShipment++;
  if (buildCounterReturnShipment < 3) {
    o.creationDate = 'foo';
    o.deliveryDate = 'foo';
    o.returnMethodType = 'foo';
    o.shipmentId = 'foo';
    o.shipmentTrackingInfos = buildUnnamed5262();
    o.shippingDate = 'foo';
    o.state = 'foo';
  }
  buildCounterReturnShipment--;
  return o;
}

void checkReturnShipment(api.ReturnShipment o) {
  buildCounterReturnShipment++;
  if (buildCounterReturnShipment < 3) {
    unittest.expect(
      o.creationDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.returnMethodType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shipmentId!,
      unittest.equals('foo'),
    );
    checkUnnamed5262(o.shipmentTrackingInfos!);
    unittest.expect(
      o.shippingDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnShipment--;
}

core.int buildCounterReturnShippingLabel = 0;
api.ReturnShippingLabel buildReturnShippingLabel() {
  final o = api.ReturnShippingLabel();
  buildCounterReturnShippingLabel++;
  if (buildCounterReturnShippingLabel < 3) {
    o.carrier = 'foo';
    o.labelUri = 'foo';
    o.trackingId = 'foo';
  }
  buildCounterReturnShippingLabel--;
  return o;
}

void checkReturnShippingLabel(api.ReturnShippingLabel o) {
  buildCounterReturnShippingLabel++;
  if (buildCounterReturnShippingLabel < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReturnShippingLabel--;
}

core.List<api.ReturnaddressCustomBatchRequestEntry> buildUnnamed5263() => [
      buildReturnaddressCustomBatchRequestEntry(),
      buildReturnaddressCustomBatchRequestEntry(),
    ];

void checkUnnamed5263(core.List<api.ReturnaddressCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchRequestEntry(o[0]);
  checkReturnaddressCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchRequest = 0;
api.ReturnaddressCustomBatchRequest buildReturnaddressCustomBatchRequest() {
  final o = api.ReturnaddressCustomBatchRequest();
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    o.entries = buildUnnamed5263();
  }
  buildCounterReturnaddressCustomBatchRequest--;
  return o;
}

void checkReturnaddressCustomBatchRequest(
    api.ReturnaddressCustomBatchRequest o) {
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    checkUnnamed5263(o.entries!);
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

core.List<api.ReturnaddressCustomBatchResponseEntry> buildUnnamed5264() => [
      buildReturnaddressCustomBatchResponseEntry(),
      buildReturnaddressCustomBatchResponseEntry(),
    ];

void checkUnnamed5264(core.List<api.ReturnaddressCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchResponseEntry(o[0]);
  checkReturnaddressCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchResponse = 0;
api.ReturnaddressCustomBatchResponse buildReturnaddressCustomBatchResponse() {
  final o = api.ReturnaddressCustomBatchResponse();
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    o.entries = buildUnnamed5264();
    o.kind = 'foo';
  }
  buildCounterReturnaddressCustomBatchResponse--;
  return o;
}

void checkReturnaddressCustomBatchResponse(
    api.ReturnaddressCustomBatchResponse o) {
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    checkUnnamed5264(o.entries!);
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

core.List<api.ReturnAddress> buildUnnamed5265() => [
      buildReturnAddress(),
      buildReturnAddress(),
    ];

void checkUnnamed5265(core.List<api.ReturnAddress> o) {
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
    o.resources = buildUnnamed5265();
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
    checkUnnamed5265(o.resources!);
  }
  buildCounterReturnaddressListResponse--;
}

core.List<api.ReturnpolicyCustomBatchRequestEntry> buildUnnamed5266() => [
      buildReturnpolicyCustomBatchRequestEntry(),
      buildReturnpolicyCustomBatchRequestEntry(),
    ];

void checkUnnamed5266(core.List<api.ReturnpolicyCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchRequestEntry(o[0]);
  checkReturnpolicyCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchRequest = 0;
api.ReturnpolicyCustomBatchRequest buildReturnpolicyCustomBatchRequest() {
  final o = api.ReturnpolicyCustomBatchRequest();
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    o.entries = buildUnnamed5266();
  }
  buildCounterReturnpolicyCustomBatchRequest--;
  return o;
}

void checkReturnpolicyCustomBatchRequest(api.ReturnpolicyCustomBatchRequest o) {
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    checkUnnamed5266(o.entries!);
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

core.List<api.ReturnpolicyCustomBatchResponseEntry> buildUnnamed5267() => [
      buildReturnpolicyCustomBatchResponseEntry(),
      buildReturnpolicyCustomBatchResponseEntry(),
    ];

void checkUnnamed5267(core.List<api.ReturnpolicyCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchResponseEntry(o[0]);
  checkReturnpolicyCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchResponse = 0;
api.ReturnpolicyCustomBatchResponse buildReturnpolicyCustomBatchResponse() {
  final o = api.ReturnpolicyCustomBatchResponse();
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    o.entries = buildUnnamed5267();
    o.kind = 'foo';
  }
  buildCounterReturnpolicyCustomBatchResponse--;
  return o;
}

void checkReturnpolicyCustomBatchResponse(
    api.ReturnpolicyCustomBatchResponse o) {
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    checkUnnamed5267(o.entries!);
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

core.List<api.ReturnPolicy> buildUnnamed5268() => [
      buildReturnPolicy(),
      buildReturnPolicy(),
    ];

void checkUnnamed5268(core.List<api.ReturnPolicy> o) {
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
    o.resources = buildUnnamed5268();
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
    checkUnnamed5268(o.resources!);
  }
  buildCounterReturnpolicyListResponse--;
}

core.List<api.Value> buildUnnamed5269() => [
      buildValue(),
      buildValue(),
    ];

void checkUnnamed5269(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed5269();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed5269(o.cells!);
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

core.List<api.ReportRow> buildUnnamed5270() => [
      buildReportRow(),
      buildReportRow(),
    ];

void checkUnnamed5270(core.List<api.ReportRow> o) {
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
    o.results = buildUnnamed5270();
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
    checkUnnamed5270(o.results!);
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

core.List<api.RateGroup> buildUnnamed5271() => [
      buildRateGroup(),
      buildRateGroup(),
    ];

void checkUnnamed5271(core.List<api.RateGroup> o) {
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
    o.rateGroups = buildUnnamed5271();
    o.shipmentType = 'foo';
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
    checkUnnamed5271(o.rateGroups!);
    unittest.expect(
      o.shipmentType!,
      unittest.equals('foo'),
    );
  }
  buildCounterService--;
}

core.List<core.String> buildUnnamed5272() => [
      'foo',
      'foo',
    ];

void checkUnnamed5272(core.List<core.String> o) {
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

core.int buildCounterSettlementReport = 0;
api.SettlementReport buildSettlementReport() {
  final o = api.SettlementReport();
  buildCounterSettlementReport++;
  if (buildCounterSettlementReport < 3) {
    o.endDate = 'foo';
    o.kind = 'foo';
    o.previousBalance = buildPrice();
    o.settlementId = 'foo';
    o.startDate = 'foo';
    o.transferAmount = buildPrice();
    o.transferDate = 'foo';
    o.transferIds = buildUnnamed5272();
  }
  buildCounterSettlementReport--;
  return o;
}

void checkSettlementReport(api.SettlementReport o) {
  buildCounterSettlementReport++;
  if (buildCounterSettlementReport < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPrice(o.previousBalance!);
    unittest.expect(
      o.settlementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    checkPrice(o.transferAmount!);
    unittest.expect(
      o.transferDate!,
      unittest.equals('foo'),
    );
    checkUnnamed5272(o.transferIds!);
  }
  buildCounterSettlementReport--;
}

core.int buildCounterSettlementTransaction = 0;
api.SettlementTransaction buildSettlementTransaction() {
  final o = api.SettlementTransaction();
  buildCounterSettlementTransaction++;
  if (buildCounterSettlementTransaction < 3) {
    o.amount = buildSettlementTransactionAmount();
    o.identifiers = buildSettlementTransactionIdentifiers();
    o.kind = 'foo';
    o.transaction = buildSettlementTransactionTransaction();
  }
  buildCounterSettlementTransaction--;
  return o;
}

void checkSettlementTransaction(api.SettlementTransaction o) {
  buildCounterSettlementTransaction++;
  if (buildCounterSettlementTransaction < 3) {
    checkSettlementTransactionAmount(o.amount!);
    checkSettlementTransactionIdentifiers(o.identifiers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkSettlementTransactionTransaction(o.transaction!);
  }
  buildCounterSettlementTransaction--;
}

core.int buildCounterSettlementTransactionAmount = 0;
api.SettlementTransactionAmount buildSettlementTransactionAmount() {
  final o = api.SettlementTransactionAmount();
  buildCounterSettlementTransactionAmount++;
  if (buildCounterSettlementTransactionAmount < 3) {
    o.commission = buildSettlementTransactionAmountCommission();
    o.description = 'foo';
    o.transactionAmount = buildPrice();
    o.type = 'foo';
  }
  buildCounterSettlementTransactionAmount--;
  return o;
}

void checkSettlementTransactionAmount(api.SettlementTransactionAmount o) {
  buildCounterSettlementTransactionAmount++;
  if (buildCounterSettlementTransactionAmount < 3) {
    checkSettlementTransactionAmountCommission(o.commission!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkPrice(o.transactionAmount!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSettlementTransactionAmount--;
}

core.int buildCounterSettlementTransactionAmountCommission = 0;
api.SettlementTransactionAmountCommission
    buildSettlementTransactionAmountCommission() {
  final o = api.SettlementTransactionAmountCommission();
  buildCounterSettlementTransactionAmountCommission++;
  if (buildCounterSettlementTransactionAmountCommission < 3) {
    o.category = 'foo';
    o.rate = 'foo';
  }
  buildCounterSettlementTransactionAmountCommission--;
  return o;
}

void checkSettlementTransactionAmountCommission(
    api.SettlementTransactionAmountCommission o) {
  buildCounterSettlementTransactionAmountCommission++;
  if (buildCounterSettlementTransactionAmountCommission < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rate!,
      unittest.equals('foo'),
    );
  }
  buildCounterSettlementTransactionAmountCommission--;
}

core.List<core.String> buildUnnamed5273() => [
      'foo',
      'foo',
    ];

void checkUnnamed5273(core.List<core.String> o) {
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

core.int buildCounterSettlementTransactionIdentifiers = 0;
api.SettlementTransactionIdentifiers buildSettlementTransactionIdentifiers() {
  final o = api.SettlementTransactionIdentifiers();
  buildCounterSettlementTransactionIdentifiers++;
  if (buildCounterSettlementTransactionIdentifiers < 3) {
    o.adjustmentId = 'foo';
    o.merchantOrderId = 'foo';
    o.orderItemId = 'foo';
    o.settlementEntryId = 'foo';
    o.shipmentIds = buildUnnamed5273();
    o.transactionId = 'foo';
  }
  buildCounterSettlementTransactionIdentifiers--;
  return o;
}

void checkSettlementTransactionIdentifiers(
    api.SettlementTransactionIdentifiers o) {
  buildCounterSettlementTransactionIdentifiers++;
  if (buildCounterSettlementTransactionIdentifiers < 3) {
    unittest.expect(
      o.adjustmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settlementEntryId!,
      unittest.equals('foo'),
    );
    checkUnnamed5273(o.shipmentIds!);
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSettlementTransactionIdentifiers--;
}

core.int buildCounterSettlementTransactionTransaction = 0;
api.SettlementTransactionTransaction buildSettlementTransactionTransaction() {
  final o = api.SettlementTransactionTransaction();
  buildCounterSettlementTransactionTransaction++;
  if (buildCounterSettlementTransactionTransaction < 3) {
    o.postDate = 'foo';
    o.type = 'foo';
  }
  buildCounterSettlementTransactionTransaction--;
  return o;
}

void checkSettlementTransactionTransaction(
    api.SettlementTransactionTransaction o) {
  buildCounterSettlementTransactionTransaction++;
  if (buildCounterSettlementTransactionTransaction < 3) {
    unittest.expect(
      o.postDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSettlementTransactionTransaction--;
}

core.List<api.SettlementReport> buildUnnamed5274() => [
      buildSettlementReport(),
      buildSettlementReport(),
    ];

void checkUnnamed5274(core.List<api.SettlementReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSettlementReport(o[0]);
  checkSettlementReport(o[1]);
}

core.int buildCounterSettlementreportsListResponse = 0;
api.SettlementreportsListResponse buildSettlementreportsListResponse() {
  final o = api.SettlementreportsListResponse();
  buildCounterSettlementreportsListResponse++;
  if (buildCounterSettlementreportsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed5274();
  }
  buildCounterSettlementreportsListResponse--;
  return o;
}

void checkSettlementreportsListResponse(api.SettlementreportsListResponse o) {
  buildCounterSettlementreportsListResponse++;
  if (buildCounterSettlementreportsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5274(o.resources!);
  }
  buildCounterSettlementreportsListResponse--;
}

core.List<api.SettlementTransaction> buildUnnamed5275() => [
      buildSettlementTransaction(),
      buildSettlementTransaction(),
    ];

void checkUnnamed5275(core.List<api.SettlementTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSettlementTransaction(o[0]);
  checkSettlementTransaction(o[1]);
}

core.int buildCounterSettlementtransactionsListResponse = 0;
api.SettlementtransactionsListResponse
    buildSettlementtransactionsListResponse() {
  final o = api.SettlementtransactionsListResponse();
  buildCounterSettlementtransactionsListResponse++;
  if (buildCounterSettlementtransactionsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed5275();
  }
  buildCounterSettlementtransactionsListResponse--;
  return o;
}

void checkSettlementtransactionsListResponse(
    api.SettlementtransactionsListResponse o) {
  buildCounterSettlementtransactionsListResponse++;
  if (buildCounterSettlementtransactionsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5275(o.resources!);
  }
  buildCounterSettlementtransactionsListResponse--;
}

core.List<api.ShipmentInvoiceLineItemInvoice> buildUnnamed5276() => [
      buildShipmentInvoiceLineItemInvoice(),
      buildShipmentInvoiceLineItemInvoice(),
    ];

void checkUnnamed5276(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterShipmentInvoice = 0;
api.ShipmentInvoice buildShipmentInvoice() {
  final o = api.ShipmentInvoice();
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed5276();
    o.shipmentGroupId = 'foo';
  }
  buildCounterShipmentInvoice--;
  return o;
}

void checkShipmentInvoice(api.ShipmentInvoice o) {
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    checkInvoiceSummary(o.invoiceSummary!);
    checkUnnamed5276(o.lineItemInvoices!);
    unittest.expect(
      o.shipmentGroupId!,
      unittest.equals('foo'),
    );
  }
  buildCounterShipmentInvoice--;
}

core.List<core.String> buildUnnamed5277() => [
      'foo',
      'foo',
    ];

void checkUnnamed5277(core.List<core.String> o) {
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

core.int buildCounterShipmentInvoiceLineItemInvoice = 0;
api.ShipmentInvoiceLineItemInvoice buildShipmentInvoiceLineItemInvoice() {
  final o = api.ShipmentInvoiceLineItemInvoice();
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    o.lineItemId = 'foo';
    o.productId = 'foo';
    o.shipmentUnitIds = buildUnnamed5277();
    o.unitInvoice = buildUnitInvoice();
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
  return o;
}

void checkShipmentInvoiceLineItemInvoice(api.ShipmentInvoiceLineItemInvoice o) {
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkUnnamed5277(o.shipmentUnitIds!);
    checkUnitInvoice(o.unitInvoice!);
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
}

core.int buildCounterShipmentTrackingInfo = 0;
api.ShipmentTrackingInfo buildShipmentTrackingInfo() {
  final o = api.ShipmentTrackingInfo();
  buildCounterShipmentTrackingInfo++;
  if (buildCounterShipmentTrackingInfo < 3) {
    o.carrier = 'foo';
    o.trackingNumber = 'foo';
  }
  buildCounterShipmentTrackingInfo--;
  return o;
}

void checkShipmentTrackingInfo(api.ShipmentTrackingInfo o) {
  buildCounterShipmentTrackingInfo++;
  if (buildCounterShipmentTrackingInfo < 3) {
    unittest.expect(
      o.carrier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterShipmentTrackingInfo--;
}

core.List<api.PostalCodeGroup> buildUnnamed5278() => [
      buildPostalCodeGroup(),
      buildPostalCodeGroup(),
    ];

void checkUnnamed5278(core.List<api.PostalCodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeGroup(o[0]);
  checkPostalCodeGroup(o[1]);
}

core.List<api.Service> buildUnnamed5279() => [
      buildService(),
      buildService(),
    ];

void checkUnnamed5279(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterShippingSettings = 0;
api.ShippingSettings buildShippingSettings() {
  final o = api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.accountId = 'foo';
    o.postalCodeGroups = buildUnnamed5278();
    o.services = buildUnnamed5279();
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
    checkUnnamed5278(o.postalCodeGroups!);
    checkUnnamed5279(o.services!);
  }
  buildCounterShippingSettings--;
}

core.List<api.ShippingsettingsCustomBatchRequestEntry> buildUnnamed5280() => [
      buildShippingsettingsCustomBatchRequestEntry(),
      buildShippingsettingsCustomBatchRequestEntry(),
    ];

void checkUnnamed5280(
    core.List<api.ShippingsettingsCustomBatchRequestEntry> o) {
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
    o.entries = buildUnnamed5280();
  }
  buildCounterShippingsettingsCustomBatchRequest--;
  return o;
}

void checkShippingsettingsCustomBatchRequest(
    api.ShippingsettingsCustomBatchRequest o) {
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    checkUnnamed5280(o.entries!);
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

core.List<api.ShippingsettingsCustomBatchResponseEntry> buildUnnamed5281() => [
      buildShippingsettingsCustomBatchResponseEntry(),
      buildShippingsettingsCustomBatchResponseEntry(),
    ];

void checkUnnamed5281(
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
    o.entries = buildUnnamed5281();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsCustomBatchResponse--;
  return o;
}

void checkShippingsettingsCustomBatchResponse(
    api.ShippingsettingsCustomBatchResponse o) {
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    checkUnnamed5281(o.entries!);
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

core.List<api.CarriersCarrier> buildUnnamed5282() => [
      buildCarriersCarrier(),
      buildCarriersCarrier(),
    ];

void checkUnnamed5282(core.List<api.CarriersCarrier> o) {
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
    o.carriers = buildUnnamed5282();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
  return o;
}

void checkShippingsettingsGetSupportedCarriersResponse(
    api.ShippingsettingsGetSupportedCarriersResponse o) {
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    checkUnnamed5282(o.carriers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
}

core.List<api.HolidaysHoliday> buildUnnamed5283() => [
      buildHolidaysHoliday(),
      buildHolidaysHoliday(),
    ];

void checkUnnamed5283(core.List<api.HolidaysHoliday> o) {
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
    o.holidays = buildUnnamed5283();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
  return o;
}

void checkShippingsettingsGetSupportedHolidaysResponse(
    api.ShippingsettingsGetSupportedHolidaysResponse o) {
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    checkUnnamed5283(o.holidays!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
}

core.List<api.PickupServicesPickupService> buildUnnamed5284() => [
      buildPickupServicesPickupService(),
      buildPickupServicesPickupService(),
    ];

void checkUnnamed5284(core.List<api.PickupServicesPickupService> o) {
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
    o.pickupServices = buildUnnamed5284();
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
    checkUnnamed5284(o.pickupServices!);
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
}

core.List<api.ShippingSettings> buildUnnamed5285() => [
      buildShippingSettings(),
      buildShippingSettings(),
    ];

void checkUnnamed5285(core.List<api.ShippingSettings> o) {
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
    o.resources = buildUnnamed5285();
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
    checkUnnamed5285(o.resources!);
  }
  buildCounterShippingsettingsListResponse--;
}

core.List<api.ShoppingAdsProgramStatusRegionStatus> buildUnnamed5286() => [
      buildShoppingAdsProgramStatusRegionStatus(),
      buildShoppingAdsProgramStatusRegionStatus(),
    ];

void checkUnnamed5286(core.List<api.ShoppingAdsProgramStatusRegionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShoppingAdsProgramStatusRegionStatus(o[0]);
  checkShoppingAdsProgramStatusRegionStatus(o[1]);
}

core.int buildCounterShoppingAdsProgramStatus = 0;
api.ShoppingAdsProgramStatus buildShoppingAdsProgramStatus() {
  final o = api.ShoppingAdsProgramStatus();
  buildCounterShoppingAdsProgramStatus++;
  if (buildCounterShoppingAdsProgramStatus < 3) {
    o.regionStatuses = buildUnnamed5286();
    o.state = 'foo';
  }
  buildCounterShoppingAdsProgramStatus--;
  return o;
}

void checkShoppingAdsProgramStatus(api.ShoppingAdsProgramStatus o) {
  buildCounterShoppingAdsProgramStatus++;
  if (buildCounterShoppingAdsProgramStatus < 3) {
    checkUnnamed5286(o.regionStatuses!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterShoppingAdsProgramStatus--;
}

core.List<core.String> buildUnnamed5287() => [
      'foo',
      'foo',
    ];

void checkUnnamed5287(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5288() => [
      'foo',
      'foo',
    ];

void checkUnnamed5288(core.List<core.String> o) {
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
    o.ineligibilityReason = 'foo';
    o.regionCodes = buildUnnamed5287();
    o.reviewEligibilityStatus = 'foo';
    o.reviewIssues = buildUnnamed5288();
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
    unittest.expect(
      o.ineligibilityReason!,
      unittest.equals('foo'),
    );
    checkUnnamed5287(o.regionCodes!);
    unittest.expect(
      o.reviewEligibilityStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed5288(o.reviewIssues!);
  }
  buildCounterShoppingAdsProgramStatusRegionStatus--;
}

core.List<api.Row> buildUnnamed5289() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed5289(core.List<api.Row> o) {
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
    o.rows = buildUnnamed5289();
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
    checkUnnamed5289(o.rows!);
  }
  buildCounterTable--;
}

core.List<api.TestOrderLineItem> buildUnnamed5290() => [
      buildTestOrderLineItem(),
      buildTestOrderLineItem(),
    ];

void checkUnnamed5290(core.List<api.TestOrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderLineItem(o[0]);
  checkTestOrderLineItem(o[1]);
}

core.List<api.OrderPromotion> buildUnnamed5291() => [
      buildOrderPromotion(),
      buildOrderPromotion(),
    ];

void checkUnnamed5291(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

core.int buildCounterTestOrder = 0;
api.TestOrder buildTestOrder() {
  final o = api.TestOrder();
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    o.deliveryDetails = buildTestOrderDeliveryDetails();
    o.enableOrderinvoices = true;
    o.kind = 'foo';
    o.lineItems = buildUnnamed5290();
    o.notificationMode = 'foo';
    o.pickupDetails = buildTestOrderPickupDetails();
    o.predefinedBillingAddress = 'foo';
    o.predefinedDeliveryAddress = 'foo';
    o.predefinedEmail = 'foo';
    o.predefinedPickupDetails = 'foo';
    o.promotions = buildUnnamed5291();
    o.shippingCost = buildPrice();
    o.shippingOption = 'foo';
  }
  buildCounterTestOrder--;
  return o;
}

void checkTestOrder(api.TestOrder o) {
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    checkTestOrderDeliveryDetails(o.deliveryDetails!);
    unittest.expect(o.enableOrderinvoices!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5290(o.lineItems!);
    unittest.expect(
      o.notificationMode!,
      unittest.equals('foo'),
    );
    checkTestOrderPickupDetails(o.pickupDetails!);
    unittest.expect(
      o.predefinedBillingAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predefinedDeliveryAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predefinedEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predefinedPickupDetails!,
      unittest.equals('foo'),
    );
    checkUnnamed5291(o.promotions!);
    checkPrice(o.shippingCost!);
    unittest.expect(
      o.shippingOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestOrder--;
}

core.List<core.String> buildUnnamed5292() => [
      'foo',
      'foo',
    ];

void checkUnnamed5292(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5293() => [
      'foo',
      'foo',
    ];

void checkUnnamed5293(core.List<core.String> o) {
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

core.int buildCounterTestOrderAddress = 0;
api.TestOrderAddress buildTestOrderAddress() {
  final o = api.TestOrderAddress();
  buildCounterTestOrderAddress++;
  if (buildCounterTestOrderAddress < 3) {
    o.country = 'foo';
    o.fullAddress = buildUnnamed5292();
    o.isPostOfficeBox = true;
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed5293();
  }
  buildCounterTestOrderAddress--;
  return o;
}

void checkTestOrderAddress(api.TestOrderAddress o) {
  buildCounterTestOrderAddress++;
  if (buildCounterTestOrderAddress < 3) {
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkUnnamed5292(o.fullAddress!);
    unittest.expect(o.isPostOfficeBox!, unittest.isTrue);
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
    checkUnnamed5293(o.streetAddress!);
  }
  buildCounterTestOrderAddress--;
}

core.int buildCounterTestOrderDeliveryDetails = 0;
api.TestOrderDeliveryDetails buildTestOrderDeliveryDetails() {
  final o = api.TestOrderDeliveryDetails();
  buildCounterTestOrderDeliveryDetails++;
  if (buildCounterTestOrderDeliveryDetails < 3) {
    o.address = buildTestOrderAddress();
    o.isScheduledDelivery = true;
    o.phoneNumber = 'foo';
  }
  buildCounterTestOrderDeliveryDetails--;
  return o;
}

void checkTestOrderDeliveryDetails(api.TestOrderDeliveryDetails o) {
  buildCounterTestOrderDeliveryDetails++;
  if (buildCounterTestOrderDeliveryDetails < 3) {
    checkTestOrderAddress(o.address!);
    unittest.expect(o.isScheduledDelivery!, unittest.isTrue);
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestOrderDeliveryDetails--;
}

core.int buildCounterTestOrderLineItem = 0;
api.TestOrderLineItem buildTestOrderLineItem() {
  final o = api.TestOrderLineItem();
  buildCounterTestOrderLineItem++;
  if (buildCounterTestOrderLineItem < 3) {
    o.product = buildTestOrderLineItemProduct();
    o.quantityOrdered = 42;
    o.returnInfo = buildOrderLineItemReturnInfo();
    o.shippingDetails = buildOrderLineItemShippingDetails();
  }
  buildCounterTestOrderLineItem--;
  return o;
}

void checkTestOrderLineItem(api.TestOrderLineItem o) {
  buildCounterTestOrderLineItem++;
  if (buildCounterTestOrderLineItem < 3) {
    checkTestOrderLineItemProduct(o.product!);
    unittest.expect(
      o.quantityOrdered!,
      unittest.equals(42),
    );
    checkOrderLineItemReturnInfo(o.returnInfo!);
    checkOrderLineItemShippingDetails(o.shippingDetails!);
  }
  buildCounterTestOrderLineItem--;
}

core.List<api.OrderLineItemProductFee> buildUnnamed5294() => [
      buildOrderLineItemProductFee(),
      buildOrderLineItemProductFee(),
    ];

void checkUnnamed5294(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0]);
  checkOrderLineItemProductFee(o[1]);
}

core.List<api.OrderLineItemProductVariantAttribute> buildUnnamed5295() => [
      buildOrderLineItemProductVariantAttribute(),
      buildOrderLineItemProductVariantAttribute(),
    ];

void checkUnnamed5295(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterTestOrderLineItemProduct = 0;
api.TestOrderLineItemProduct buildTestOrderLineItemProduct() {
  final o = api.TestOrderLineItemProduct();
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    o.brand = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.fees = buildUnnamed5294();
    o.gtin = 'foo';
    o.imageLink = 'foo';
    o.itemGroupId = 'foo';
    o.mpn = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.targetCountry = 'foo';
    o.title = 'foo';
    o.variantAttributes = buildUnnamed5295();
  }
  buildCounterTestOrderLineItemProduct--;
  return o;
}

void checkTestOrderLineItemProduct(api.TestOrderLineItemProduct o) {
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    unittest.expect(
      o.brand!,
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
    checkUnnamed5294(o.fees!);
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemGroupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mpn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    checkPrice(o.price!);
    unittest.expect(
      o.targetCountry!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed5295(o.variantAttributes!);
  }
  buildCounterTestOrderLineItemProduct--;
}

core.List<api.TestOrderPickupDetailsPickupPerson> buildUnnamed5296() => [
      buildTestOrderPickupDetailsPickupPerson(),
      buildTestOrderPickupDetailsPickupPerson(),
    ];

void checkUnnamed5296(core.List<api.TestOrderPickupDetailsPickupPerson> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderPickupDetailsPickupPerson(o[0]);
  checkTestOrderPickupDetailsPickupPerson(o[1]);
}

core.int buildCounterTestOrderPickupDetails = 0;
api.TestOrderPickupDetails buildTestOrderPickupDetails() {
  final o = api.TestOrderPickupDetails();
  buildCounterTestOrderPickupDetails++;
  if (buildCounterTestOrderPickupDetails < 3) {
    o.locationCode = 'foo';
    o.pickupLocationAddress = buildTestOrderAddress();
    o.pickupLocationType = 'foo';
    o.pickupPersons = buildUnnamed5296();
  }
  buildCounterTestOrderPickupDetails--;
  return o;
}

void checkTestOrderPickupDetails(api.TestOrderPickupDetails o) {
  buildCounterTestOrderPickupDetails++;
  if (buildCounterTestOrderPickupDetails < 3) {
    unittest.expect(
      o.locationCode!,
      unittest.equals('foo'),
    );
    checkTestOrderAddress(o.pickupLocationAddress!);
    unittest.expect(
      o.pickupLocationType!,
      unittest.equals('foo'),
    );
    checkUnnamed5296(o.pickupPersons!);
  }
  buildCounterTestOrderPickupDetails--;
}

core.int buildCounterTestOrderPickupDetailsPickupPerson = 0;
api.TestOrderPickupDetailsPickupPerson
    buildTestOrderPickupDetailsPickupPerson() {
  final o = api.TestOrderPickupDetailsPickupPerson();
  buildCounterTestOrderPickupDetailsPickupPerson++;
  if (buildCounterTestOrderPickupDetailsPickupPerson < 3) {
    o.name = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterTestOrderPickupDetailsPickupPerson--;
  return o;
}

void checkTestOrderPickupDetailsPickupPerson(
    api.TestOrderPickupDetailsPickupPerson o) {
  buildCounterTestOrderPickupDetailsPickupPerson++;
  if (buildCounterTestOrderPickupDetailsPickupPerson < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestOrderPickupDetailsPickupPerson--;
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

core.List<core.String> buildUnnamed5297() => [
      'foo',
      'foo',
    ];

void checkUnnamed5297(core.List<core.String> o) {
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

core.List<api.TransitTableTransitTimeRow> buildUnnamed5298() => [
      buildTransitTableTransitTimeRow(),
      buildTransitTableTransitTimeRow(),
    ];

void checkUnnamed5298(core.List<api.TransitTableTransitTimeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRow(o[0]);
  checkTransitTableTransitTimeRow(o[1]);
}

core.List<core.String> buildUnnamed5299() => [
      'foo',
      'foo',
    ];

void checkUnnamed5299(core.List<core.String> o) {
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
    o.postalCodeGroupNames = buildUnnamed5297();
    o.rows = buildUnnamed5298();
    o.transitTimeLabels = buildUnnamed5299();
  }
  buildCounterTransitTable--;
  return o;
}

void checkTransitTable(api.TransitTable o) {
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    checkUnnamed5297(o.postalCodeGroupNames!);
    checkUnnamed5298(o.rows!);
    checkUnnamed5299(o.transitTimeLabels!);
  }
  buildCounterTransitTable--;
}

core.List<api.TransitTableTransitTimeRowTransitTimeValue> buildUnnamed5300() =>
    [
      buildTransitTableTransitTimeRowTransitTimeValue(),
      buildTransitTableTransitTimeRowTransitTimeValue(),
    ];

void checkUnnamed5300(
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
    o.values = buildUnnamed5300();
  }
  buildCounterTransitTableTransitTimeRow--;
  return o;
}

void checkTransitTableTransitTimeRow(api.TransitTableTransitTimeRow o) {
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    checkUnnamed5300(o.values!);
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

core.List<api.UnitInvoiceAdditionalCharge> buildUnnamed5301() => [
      buildUnitInvoiceAdditionalCharge(),
      buildUnitInvoiceAdditionalCharge(),
    ];

void checkUnnamed5301(core.List<api.UnitInvoiceAdditionalCharge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceAdditionalCharge(o[0]);
  checkUnitInvoiceAdditionalCharge(o[1]);
}

core.List<api.UnitInvoiceTaxLine> buildUnnamed5302() => [
      buildUnitInvoiceTaxLine(),
      buildUnitInvoiceTaxLine(),
    ];

void checkUnnamed5302(core.List<api.UnitInvoiceTaxLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceTaxLine(o[0]);
  checkUnitInvoiceTaxLine(o[1]);
}

core.int buildCounterUnitInvoice = 0;
api.UnitInvoice buildUnitInvoice() {
  final o = api.UnitInvoice();
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    o.additionalCharges = buildUnnamed5301();
    o.unitPrice = buildPrice();
    o.unitPriceTaxes = buildUnnamed5302();
  }
  buildCounterUnitInvoice--;
  return o;
}

void checkUnitInvoice(api.UnitInvoice o) {
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    checkUnnamed5301(o.additionalCharges!);
    checkPrice(o.unitPrice!);
    checkUnnamed5302(o.unitPriceTaxes!);
  }
  buildCounterUnitInvoice--;
}

core.int buildCounterUnitInvoiceAdditionalCharge = 0;
api.UnitInvoiceAdditionalCharge buildUnitInvoiceAdditionalCharge() {
  final o = api.UnitInvoiceAdditionalCharge();
  buildCounterUnitInvoiceAdditionalCharge++;
  if (buildCounterUnitInvoiceAdditionalCharge < 3) {
    o.additionalChargeAmount = buildAmount();
    o.type = 'foo';
  }
  buildCounterUnitInvoiceAdditionalCharge--;
  return o;
}

void checkUnitInvoiceAdditionalCharge(api.UnitInvoiceAdditionalCharge o) {
  buildCounterUnitInvoiceAdditionalCharge++;
  if (buildCounterUnitInvoiceAdditionalCharge < 3) {
    checkAmount(o.additionalChargeAmount!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnitInvoiceAdditionalCharge--;
}

core.int buildCounterUnitInvoiceTaxLine = 0;
api.UnitInvoiceTaxLine buildUnitInvoiceTaxLine() {
  final o = api.UnitInvoiceTaxLine();
  buildCounterUnitInvoiceTaxLine++;
  if (buildCounterUnitInvoiceTaxLine < 3) {
    o.taxAmount = buildPrice();
    o.taxName = 'foo';
    o.taxType = 'foo';
  }
  buildCounterUnitInvoiceTaxLine--;
  return o;
}

void checkUnitInvoiceTaxLine(api.UnitInvoiceTaxLine o) {
  buildCounterUnitInvoiceTaxLine++;
  if (buildCounterUnitInvoiceTaxLine < 3) {
    checkPrice(o.taxAmount!);
    unittest.expect(
      o.taxName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taxType!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnitInvoiceTaxLine--;
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
  }
  buildCounterWarehouseBasedDeliveryTime--;
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

core.List<core.String> buildUnnamed5303() => [
      'foo',
      'foo',
    ];

void checkUnnamed5303(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5304() => [
      'foo',
      'foo',
    ];

void checkUnnamed5304(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5305() => [
      'foo',
      'foo',
    ];

void checkUnnamed5305(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5306() => [
      'foo',
      'foo',
    ];

void checkUnnamed5306(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5307() => [
      'foo',
      'foo',
    ];

void checkUnnamed5307(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5308() => [
      'foo',
      'foo',
    ];

void checkUnnamed5308(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5309() => [
      'foo',
      'foo',
    ];

void checkUnnamed5309(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5310() => [
      'foo',
      'foo',
    ];

void checkUnnamed5310(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5311() => [
      'foo',
      'foo',
    ];

void checkUnnamed5311(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5312() => [
      'foo',
      'foo',
    ];

void checkUnnamed5312(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5313() => [
      'foo',
      'foo',
    ];

void checkUnnamed5313(core.List<core.String> o) {
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

  unittest.group('obj-schema-AccountBusinessInformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountBusinessInformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountBusinessInformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountBusinessInformation(od);
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

  unittest.group('obj-schema-ActivateBuyOnGoogleProgramRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateBuyOnGoogleProgramRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateBuyOnGoogleProgramRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateBuyOnGoogleProgramRequest(od);
    });
  });

  unittest.group('obj-schema-Amount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Amount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAmount(od);
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

  unittest.group('obj-schema-BuyOnGoogleProgramStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuyOnGoogleProgramStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuyOnGoogleProgramStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuyOnGoogleProgramStatus(od);
    });
  });

  unittest.group('obj-schema-CaptureOrderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaptureOrderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaptureOrderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCaptureOrderRequest(od);
    });
  });

  unittest.group('obj-schema-CaptureOrderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaptureOrderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaptureOrderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCaptureOrderResponse(od);
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

  unittest.group('obj-schema-CustomerReturnReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerReturnReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerReturnReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerReturnReason(od);
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

  unittest.group('obj-schema-DeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryTime(od);
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

  unittest.group('obj-schema-InapplicabilityDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInapplicabilityDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InapplicabilityDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInapplicabilityDetails(od);
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

  unittest.group('obj-schema-InvoiceSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvoiceSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InvoiceSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvoiceSummary(od);
    });
  });

  unittest.group('obj-schema-InvoiceSummaryAdditionalChargeSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvoiceSummaryAdditionalChargeSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InvoiceSummaryAdditionalChargeSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvoiceSummaryAdditionalChargeSummary(od);
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

  unittest.group('obj-schema-ListCssesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCssesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCssesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCssesResponse(od);
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

  unittest.group('obj-schema-ListRepricingProductReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRepricingProductReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRepricingProductReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRepricingProductReportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRepricingRuleReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRepricingRuleReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRepricingRuleReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRepricingRuleReportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRepricingRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRepricingRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRepricingRulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRepricingRulesResponse(od);
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

  unittest.group('obj-schema-LoyaltyPoints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyPoints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyPoints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoyaltyPoints(od);
    });
  });

  unittest.group('obj-schema-MerchantOrderReturn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantOrderReturn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantOrderReturn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMerchantOrderReturn(od);
    });
  });

  unittest.group('obj-schema-MerchantOrderReturnItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantOrderReturnItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantOrderReturnItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMerchantOrderReturnItem(od);
    });
  });

  unittest.group('obj-schema-MerchantRejectionReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantRejectionReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantRejectionReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMerchantRejectionReason(od);
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

  unittest.group('obj-schema-MonetaryAmount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonetaryAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonetaryAmount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonetaryAmount(od);
    });
  });

  unittest.group('obj-schema-OnboardBuyOnGoogleProgramRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnboardBuyOnGoogleProgramRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OnboardBuyOnGoogleProgramRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOnboardBuyOnGoogleProgramRequest(od);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Order.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrder(od);
    });
  });

  unittest.group('obj-schema-OrderAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderAddress(od);
    });
  });

  unittest.group('obj-schema-OrderCancellation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderCancellation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderCancellation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderCancellation(od);
    });
  });

  unittest.group('obj-schema-OrderCustomer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderCustomer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderCustomer(od);
    });
  });

  unittest.group('obj-schema-OrderCustomerLoyaltyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderCustomerLoyaltyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderCustomerLoyaltyInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderCustomerLoyaltyInfo(od);
    });
  });

  unittest.group('obj-schema-OrderCustomerMarketingRightsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderCustomerMarketingRightsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderCustomerMarketingRightsInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderCustomerMarketingRightsInfo(od);
    });
  });

  unittest.group('obj-schema-OrderDeliveryDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderDeliveryDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderDeliveryDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderDeliveryDetails(od);
    });
  });

  unittest.group('obj-schema-OrderLineItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItem(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemAdjustment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemAdjustment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemAdjustment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemAdjustment(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemProduct.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemProduct(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemProductFee', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemProductFee();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemProductFee.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemProductFee(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemProductVariantAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemProductVariantAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemProductVariantAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemProductVariantAttribute(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemReturnInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemReturnInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemReturnInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemReturnInfo(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemShippingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemShippingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemShippingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemShippingDetails(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemShippingDetailsMethod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderLineItemShippingDetailsMethod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderLineItemShippingDetailsMethod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderLineItemShippingDetailsMethod(od);
    });
  });

  unittest.group('obj-schema-OrderMerchantProvidedAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderMerchantProvidedAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderMerchantProvidedAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderMerchantProvidedAnnotation(od);
    });
  });

  unittest.group('obj-schema-OrderOrderAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderOrderAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderOrderAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderOrderAnnotation(od);
    });
  });

  unittest.group('obj-schema-OrderPickupDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderPickupDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderPickupDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderPickupDetails(od);
    });
  });

  unittest.group('obj-schema-OrderPickupDetailsCollector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderPickupDetailsCollector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderPickupDetailsCollector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderPickupDetailsCollector(od);
    });
  });

  unittest.group('obj-schema-OrderPromotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderPromotion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderPromotion(od);
    });
  });

  unittest.group('obj-schema-OrderPromotionItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderPromotionItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderPromotionItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderPromotionItem(od);
    });
  });

  unittest.group('obj-schema-OrderRefund', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderRefund();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderRefund.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderRefund(od);
    });
  });

  unittest.group('obj-schema-OrderReportDisbursement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderReportDisbursement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderReportDisbursement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderReportDisbursement(od);
    });
  });

  unittest.group('obj-schema-OrderReportTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderReportTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderReportTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderReportTransaction(od);
    });
  });

  unittest.group('obj-schema-OrderReturn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderReturn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderReturn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderReturn(od);
    });
  });

  unittest.group('obj-schema-OrderShipment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderShipment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderShipment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderShipment(od);
    });
  });

  unittest.group('obj-schema-OrderShipmentLineItemShipment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderShipmentLineItemShipment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderShipmentLineItemShipment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderShipmentLineItemShipment(od);
    });
  });

  unittest.group('obj-schema-OrderShipmentScheduledDeliveryDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderShipmentScheduledDeliveryDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderShipmentScheduledDeliveryDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderShipmentScheduledDeliveryDetails(od);
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

  unittest.group('obj-schema-OrderinvoicesCreateChargeInvoiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderinvoicesCreateChargeInvoiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderinvoicesCreateChargeInvoiceRequest(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateChargeInvoiceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderinvoicesCreateChargeInvoiceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderinvoicesCreateChargeInvoiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderinvoicesCreateChargeInvoiceResponse(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateRefundInvoiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderinvoicesCreateRefundInvoiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderinvoicesCreateRefundInvoiceRequest(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateRefundInvoiceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderinvoicesCreateRefundInvoiceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderinvoicesCreateRefundInvoiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderinvoicesCreateRefundInvoiceResponse(od);
    });
  });

  unittest.group(
      'obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
          od);
    });
  });

  unittest.group(
      'obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
          od);
    });
  });

  unittest.group('obj-schema-OrderreportsListDisbursementsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreportsListDisbursementsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreportsListDisbursementsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreportsListDisbursementsResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreportsListTransactionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreportsListTransactionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreportsListTransactionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreportsListTransactionsResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsAcknowledgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsAcknowledgeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsAcknowledgeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsAcknowledgeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsAcknowledgeResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsCreateOrderReturnRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsCreateOrderReturnRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsCreateOrderReturnRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsCreateOrderReturnRequest(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsCreateOrderReturnResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsCreateOrderReturnResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsCreateOrderReturnResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsCreateOrderReturnResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsLineItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsLineItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsLineItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsLineItem(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsListResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsPartialRefund', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsPartialRefund();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsPartialRefund.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsPartialRefund(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsProcessRequest(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsProcessResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsRefundOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsRefundOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsRefundOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsRefundOperation(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsRejectOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsRejectOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsRejectOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsRejectOperation(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsReturnItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderreturnsReturnItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderreturnsReturnItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderreturnsReturnItem(od);
    });
  });

  unittest.group('obj-schema-OrdersAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersAcknowledgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersAcknowledgeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersAcknowledgeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersAcknowledgeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersAcknowledgeResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersAdvanceTestOrderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersAdvanceTestOrderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersAdvanceTestOrderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersAdvanceTestOrderResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelLineItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCancelLineItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCancelLineItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCancelLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelLineItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCancelLineItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCancelLineItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCancelLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCancelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCancelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCancelRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCancelResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCancelResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCancelResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelTestOrderByCustomerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCancelTestOrderByCustomerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCancelTestOrderByCustomerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCancelTestOrderByCustomerRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelTestOrderByCustomerResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCancelTestOrderByCustomerResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCancelTestOrderByCustomerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCancelTestOrderByCustomerResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestOrderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCreateTestOrderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCreateTestOrderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCreateTestOrderRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestOrderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCreateTestOrderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCreateTestOrderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCreateTestOrderResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestReturnRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCreateTestReturnRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCreateTestReturnRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCreateTestReturnRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestReturnResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCreateTestReturnResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCreateTestReturnResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCreateTestReturnResponse(od);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryCreateTestReturnReturnItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(od);
    });
  });

  unittest.group('obj-schema-OrdersCustomBatchRequestEntryRefundItemItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCustomBatchRequestEntryRefundItemItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCustomBatchRequestEntryRefundItemItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCustomBatchRequestEntryRefundItemItem(od);
    });
  });

  unittest.group('obj-schema-OrdersCustomBatchRequestEntryRefundItemShipping',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCustomBatchRequestEntryRefundItemShipping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersCustomBatchRequestEntryRefundItemShipping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCustomBatchRequestEntryRefundItemShipping(od);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(od);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails(
          od);
    });
  });

  unittest.group('obj-schema-OrdersGetByMerchantOrderIdResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersGetByMerchantOrderIdResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersGetByMerchantOrderIdResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersGetByMerchantOrderIdResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersGetTestOrderTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersGetTestOrderTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersGetTestOrderTemplateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersGetTestOrderTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersInStoreRefundLineItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersInStoreRefundLineItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersInStoreRefundLineItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersInStoreRefundLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersInStoreRefundLineItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersInStoreRefundLineItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersInStoreRefundLineItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersInStoreRefundLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersListResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersRefundItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersRefundItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersRefundItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersRefundItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersRefundItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersRefundItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundOrderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersRefundOrderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersRefundOrderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersRefundOrderRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundOrderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersRefundOrderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersRefundOrderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersRefundOrderResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersRejectReturnLineItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersRejectReturnLineItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersRejectReturnLineItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersRejectReturnLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersRejectReturnLineItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersRejectReturnLineItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersRejectReturnLineItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersRejectReturnLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersReturnRefundLineItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersReturnRefundLineItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersReturnRefundLineItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersReturnRefundLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersReturnRefundLineItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersReturnRefundLineItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersReturnRefundLineItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersReturnRefundLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersSetLineItemMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersSetLineItemMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersSetLineItemMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersSetLineItemMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersSetLineItemMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersSetLineItemMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersSetLineItemMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersSetLineItemMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersShipLineItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersShipLineItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersShipLineItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersShipLineItemsRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersShipLineItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersShipLineItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersShipLineItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersShipLineItemsResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateLineItemShippingDetailsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersUpdateLineItemShippingDetailsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersUpdateLineItemShippingDetailsRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateLineItemShippingDetailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersUpdateLineItemShippingDetailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersUpdateLineItemShippingDetailsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersUpdateLineItemShippingDetailsResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateMerchantOrderIdRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersUpdateMerchantOrderIdRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersUpdateMerchantOrderIdRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersUpdateMerchantOrderIdRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateMerchantOrderIdResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersUpdateMerchantOrderIdResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersUpdateMerchantOrderIdResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersUpdateMerchantOrderIdResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateShipmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersUpdateShipmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersUpdateShipmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersUpdateShipmentRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateShipmentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrdersUpdateShipmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrdersUpdateShipmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrdersUpdateShipmentResponse(od);
    });
  });

  unittest.group('obj-schema-PauseBuyOnGoogleProgramRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseBuyOnGoogleProgramRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseBuyOnGoogleProgramRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseBuyOnGoogleProgramRequest(od);
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

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProductAmount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductAmount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductAmount(od);
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

  unittest.group('obj-schema-ProductSubscriptionCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSubscriptionCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSubscriptionCost.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSubscriptionCost(od);
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

  unittest.group('obj-schema-RefundReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefundReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefundReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefundReason(od);
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

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportRow(od);
    });
  });

  unittest.group('obj-schema-RepricingProductReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingProductReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingProductReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingProductReport(od);
    });
  });

  unittest.group('obj-schema-RepricingProductReportBuyboxWinningProductStats',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingProductReportBuyboxWinningProductStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingProductReportBuyboxWinningProductStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingProductReportBuyboxWinningProductStats(od);
    });
  });

  unittest.group('obj-schema-RepricingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRule(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleCostOfGoodsSaleRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleCostOfGoodsSaleRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleCostOfGoodsSaleRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleCostOfGoodsSaleRule(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleEffectiveTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleEffectiveTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleEffectiveTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleEffectiveTime(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleEffectiveTimeFixedTimePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleEffectiveTimeFixedTimePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleEffectiveTimeFixedTimePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleEffectiveTimeFixedTimePeriod(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleEligibleOfferMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleEligibleOfferMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleEligibleOfferMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleEligibleOfferMatcher(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleEligibleOfferMatcherStringMatcher',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleEligibleOfferMatcherStringMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleEligibleOfferMatcherStringMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleEligibleOfferMatcherStringMatcher(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleReport(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleReportBuyboxWinningRuleStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleReportBuyboxWinningRuleStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleReportBuyboxWinningRuleStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleReportBuyboxWinningRuleStats(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleRestriction(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleRestrictionBoundary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleRestrictionBoundary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleRestrictionBoundary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleRestrictionBoundary(od);
    });
  });

  unittest.group('obj-schema-RepricingRuleStatsBasedRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepricingRuleStatsBasedRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepricingRuleStatsBasedRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepricingRuleStatsBasedRule(od);
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

  unittest.group('obj-schema-RequestReviewBuyOnGoogleProgramRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestReviewBuyOnGoogleProgramRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestReviewBuyOnGoogleProgramRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestReviewBuyOnGoogleProgramRequest(od);
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

  unittest.group('obj-schema-ReturnPricingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnPricingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnPricingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnPricingInfo(od);
    });
  });

  unittest.group('obj-schema-ReturnShipment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnShipment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnShipment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnShipment(od);
    });
  });

  unittest.group('obj-schema-ReturnShippingLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnShippingLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnShippingLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnShippingLabel(od);
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

  unittest.group('obj-schema-SettlementReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementReport(od);
    });
  });

  unittest.group('obj-schema-SettlementTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementTransaction(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionAmount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementTransactionAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementTransactionAmount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementTransactionAmount(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionAmountCommission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementTransactionAmountCommission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementTransactionAmountCommission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementTransactionAmountCommission(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionIdentifiers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementTransactionIdentifiers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementTransactionIdentifiers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementTransactionIdentifiers(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementTransactionTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementTransactionTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementTransactionTransaction(od);
    });
  });

  unittest.group('obj-schema-SettlementreportsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementreportsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementreportsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementreportsListResponse(od);
    });
  });

  unittest.group('obj-schema-SettlementtransactionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettlementtransactionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SettlementtransactionsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSettlementtransactionsListResponse(od);
    });
  });

  unittest.group('obj-schema-ShipmentInvoice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShipmentInvoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShipmentInvoice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShipmentInvoice(od);
    });
  });

  unittest.group('obj-schema-ShipmentInvoiceLineItemInvoice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShipmentInvoiceLineItemInvoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShipmentInvoiceLineItemInvoice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShipmentInvoiceLineItemInvoice(od);
    });
  });

  unittest.group('obj-schema-ShipmentTrackingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShipmentTrackingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShipmentTrackingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShipmentTrackingInfo(od);
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

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TestOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TestOrder.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTestOrder(od);
    });
  });

  unittest.group('obj-schema-TestOrderAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrderAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestOrderAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestOrderAddress(od);
    });
  });

  unittest.group('obj-schema-TestOrderDeliveryDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrderDeliveryDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestOrderDeliveryDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestOrderDeliveryDetails(od);
    });
  });

  unittest.group('obj-schema-TestOrderLineItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrderLineItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestOrderLineItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestOrderLineItem(od);
    });
  });

  unittest.group('obj-schema-TestOrderLineItemProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrderLineItemProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestOrderLineItemProduct.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestOrderLineItemProduct(od);
    });
  });

  unittest.group('obj-schema-TestOrderPickupDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrderPickupDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestOrderPickupDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestOrderPickupDetails(od);
    });
  });

  unittest.group('obj-schema-TestOrderPickupDetailsPickupPerson', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestOrderPickupDetailsPickupPerson();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestOrderPickupDetailsPickupPerson.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestOrderPickupDetailsPickupPerson(od);
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

  unittest.group('obj-schema-UnitInvoice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitInvoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitInvoice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnitInvoice(od);
    });
  });

  unittest.group('obj-schema-UnitInvoiceAdditionalCharge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitInvoiceAdditionalCharge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitInvoiceAdditionalCharge.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnitInvoiceAdditionalCharge(od);
    });
  });

  unittest.group('obj-schema-UnitInvoiceTaxLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitInvoiceTaxLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitInvoiceTaxLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnitInvoiceTaxLine(od);
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

  unittest.group('obj-schema-WarehouseBasedDeliveryTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarehouseBasedDeliveryTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarehouseBasedDeliveryTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWarehouseBasedDeliveryTime(od);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('accounts/authinfo'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('accounts/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.delete(arg_accountId, arg_carrierAccountId,
          $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).accounts.returncarrier;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('accountstatuses/batch'),
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
      final arg_destinations = buildUnnamed5303();
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
      final arg_destinations = buildUnnamed5304();
      final arg_maxResults = 42;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('accounttax/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildAccountTax());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_merchantId, arg_accountId,
          $fields: arg_$fields);
      checkAccountTax(response as api.AccountTax);
    });
  });

  unittest.group('resource-BuyongoogleprogramsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).buyongoogleprograms;
      final arg_request = buildActivateBuyOnGoogleProgramRequest();
      final arg_merchantId = 'foo';
      final arg_regionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateBuyOnGoogleProgramRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateBuyOnGoogleProgramRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.activate(arg_request, arg_merchantId, arg_regionCode,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).buyongoogleprograms;
      final arg_merchantId = 'foo';
      final arg_regionCode = 'foo';
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
        final resp = convert.json.encode(buildBuyOnGoogleProgramStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_regionCode, $fields: arg_$fields);
      checkBuyOnGoogleProgramStatus(response as api.BuyOnGoogleProgramStatus);
    });

    unittest.test('method--onboard', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).buyongoogleprograms;
      final arg_request = buildOnboardBuyOnGoogleProgramRequest();
      final arg_merchantId = 'foo';
      final arg_regionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OnboardBuyOnGoogleProgramRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOnboardBuyOnGoogleProgramRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.onboard(arg_request, arg_merchantId, arg_regionCode,
          $fields: arg_$fields);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).buyongoogleprograms;
      final arg_request = buildPauseBuyOnGoogleProgramRequest();
      final arg_merchantId = 'foo';
      final arg_regionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseBuyOnGoogleProgramRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseBuyOnGoogleProgramRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.pause(arg_request, arg_merchantId, arg_regionCode,
          $fields: arg_$fields);
    });

    unittest.test('method--requestreview', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).buyongoogleprograms;
      final arg_request = buildRequestReviewBuyOnGoogleProgramRequest();
      final arg_merchantId = 'foo';
      final arg_regionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RequestReviewBuyOnGoogleProgramRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRequestReviewBuyOnGoogleProgramRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.requestreview(arg_request, arg_merchantId, arg_regionCode,
          $fields: arg_$fields);
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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.delete(arg_merchantId, arg_collectionId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).collections;
      final arg_merchantId = 'foo';
      final arg_collectionId = 'foo';
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

  unittest.group('resource-CssesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).csses;
      final arg_cssGroupId = 'foo';
      final arg_cssDomainId = 'foo';
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('datafeeds/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.delete(arg_merchantId, arg_datafeedId, $fields: arg_$fields);
    });

    unittest.test('method--fetchnow', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).datafeeds;
      final arg_merchantId = 'foo';
      final arg_datafeedId = 'foo';
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('datafeedstatuses/batch'),
        );
        pathOffset += 22;

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
      final arg_language = 'foo';
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
          queryMap['country']!.first,
          unittest.equals(arg_country),
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
          country: arg_country, language: arg_language, $fields: arg_$fields);
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.requestreview(arg_request, arg_merchantId,
          $fields: arg_$fields);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('liasettings/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('liasettings/posdataproviders'),
        );
        pathOffset += 28;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('localinventory/batch'),
        );
        pathOffset += 20;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildLocalInventory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_merchantId, arg_productId,
          $fields: arg_$fields);
      checkLocalInventory(response as api.LocalInventory);
    });
  });

  unittest.group('resource-OrderinvoicesResource', () {
    unittest.test('method--createchargeinvoice', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderinvoices;
      final arg_request = buildOrderinvoicesCreateChargeInvoiceRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderinvoicesCreateChargeInvoiceRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json
            .encode(buildOrderinvoicesCreateChargeInvoiceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createchargeinvoice(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrderinvoicesCreateChargeInvoiceResponse(
          response as api.OrderinvoicesCreateChargeInvoiceResponse);
    });

    unittest.test('method--createrefundinvoice', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderinvoices;
      final arg_request = buildOrderinvoicesCreateRefundInvoiceRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderinvoicesCreateRefundInvoiceRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json
            .encode(buildOrderinvoicesCreateRefundInvoiceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createrefundinvoice(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrderinvoicesCreateRefundInvoiceResponse(
          response as api.OrderinvoicesCreateRefundInvoiceResponse);
    });
  });

  unittest.group('resource-OrderreportsResource', () {
    unittest.test('method--listdisbursements', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreports;
      final arg_merchantId = 'foo';
      final arg_disbursementEndDate = 'foo';
      final arg_disbursementStartDate = 'foo';
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
          queryMap['disbursementEndDate']!.first,
          unittest.equals(arg_disbursementEndDate),
        );
        unittest.expect(
          queryMap['disbursementStartDate']!.first,
          unittest.equals(arg_disbursementStartDate),
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
        final resp =
            convert.json.encode(buildOrderreportsListDisbursementsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listdisbursements(arg_merchantId,
          disbursementEndDate: arg_disbursementEndDate,
          disbursementStartDate: arg_disbursementStartDate,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkOrderreportsListDisbursementsResponse(
          response as api.OrderreportsListDisbursementsResponse);
    });

    unittest.test('method--listtransactions', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreports;
      final arg_merchantId = 'foo';
      final arg_disbursementId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_transactionEndDate = 'foo';
      final arg_transactionStartDate = 'foo';
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['transactionEndDate']!.first,
          unittest.equals(arg_transactionEndDate),
        );
        unittest.expect(
          queryMap['transactionStartDate']!.first,
          unittest.equals(arg_transactionStartDate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildOrderreportsListTransactionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listtransactions(
          arg_merchantId, arg_disbursementId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          transactionEndDate: arg_transactionEndDate,
          transactionStartDate: arg_transactionStartDate,
          $fields: arg_$fields);
      checkOrderreportsListTransactionsResponse(
          response as api.OrderreportsListTransactionsResponse);
    });
  });

  unittest.group('resource-OrderreturnsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreturns;
      final arg_request = buildOrderreturnsAcknowledgeRequest();
      final arg_merchantId = 'foo';
      final arg_returnId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrderreturnsAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderreturnsAcknowledgeRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrderreturnsAcknowledgeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acknowledge(
          arg_request, arg_merchantId, arg_returnId,
          $fields: arg_$fields);
      checkOrderreturnsAcknowledgeResponse(
          response as api.OrderreturnsAcknowledgeResponse);
    });

    unittest.test('method--createorderreturn', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreturns;
      final arg_request = buildOrderreturnsCreateOrderReturnRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrderreturnsCreateOrderReturnRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderreturnsCreateOrderReturnRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrderreturnsCreateOrderReturnResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createorderreturn(arg_request, arg_merchantId,
          $fields: arg_$fields);
      checkOrderreturnsCreateOrderReturnResponse(
          response as api.OrderreturnsCreateOrderReturnResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreturns;
      final arg_merchantId = 'foo';
      final arg_returnId = 'foo';
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
        final resp = convert.json.encode(buildMerchantOrderReturn());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_returnId, $fields: arg_$fields);
      checkMerchantOrderReturn(response as api.MerchantOrderReturn);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreturns;
      final arg_merchantId = 'foo';
      final arg_acknowledged = true;
      final arg_createdEndDate = 'foo';
      final arg_createdStartDate = 'foo';
      final arg_googleOrderIds = buildUnnamed5305();
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_shipmentStates = buildUnnamed5306();
      final arg_shipmentStatus = buildUnnamed5307();
      final arg_shipmentTrackingNumbers = buildUnnamed5308();
      final arg_shipmentTypes = buildUnnamed5309();
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
          queryMap['acknowledged']!.first,
          unittest.equals('$arg_acknowledged'),
        );
        unittest.expect(
          queryMap['createdEndDate']!.first,
          unittest.equals(arg_createdEndDate),
        );
        unittest.expect(
          queryMap['createdStartDate']!.first,
          unittest.equals(arg_createdStartDate),
        );
        unittest.expect(
          queryMap['googleOrderIds']!,
          unittest.equals(arg_googleOrderIds),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['shipmentStates']!,
          unittest.equals(arg_shipmentStates),
        );
        unittest.expect(
          queryMap['shipmentStatus']!,
          unittest.equals(arg_shipmentStatus),
        );
        unittest.expect(
          queryMap['shipmentTrackingNumbers']!,
          unittest.equals(arg_shipmentTrackingNumbers),
        );
        unittest.expect(
          queryMap['shipmentTypes']!,
          unittest.equals(arg_shipmentTypes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOrderreturnsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          acknowledged: arg_acknowledged,
          createdEndDate: arg_createdEndDate,
          createdStartDate: arg_createdStartDate,
          googleOrderIds: arg_googleOrderIds,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          shipmentStates: arg_shipmentStates,
          shipmentStatus: arg_shipmentStatus,
          shipmentTrackingNumbers: arg_shipmentTrackingNumbers,
          shipmentTypes: arg_shipmentTypes,
          $fields: arg_$fields);
      checkOrderreturnsListResponse(response as api.OrderreturnsListResponse);
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreturns;
      final arg_request = buildOrderreturnsProcessRequest();
      final arg_merchantId = 'foo';
      final arg_returnId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrderreturnsProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderreturnsProcessRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrderreturnsProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.process(
          arg_request, arg_merchantId, arg_returnId,
          $fields: arg_$fields);
      checkOrderreturnsProcessResponse(
          response as api.OrderreturnsProcessResponse);
    });
  });

  unittest.group('resource-OrderreturnsLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orderreturns.labels;
      final arg_request = buildReturnShippingLabel();
      final arg_merchantId = 'foo';
      final arg_returnId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnShippingLabel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnShippingLabel(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildReturnShippingLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_merchantId, arg_returnId,
          $fields: arg_$fields);
      checkReturnShippingLabel(response as api.ReturnShippingLabel);
    });
  });

  unittest.group('resource-OrdersResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersAcknowledgeRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersAcknowledgeRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersAcknowledgeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acknowledge(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersAcknowledgeResponse(response as api.OrdersAcknowledgeResponse);
    });

    unittest.test('method--advancetestorder', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
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
        final resp = convert.json.encode(buildOrdersAdvanceTestOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.advancetestorder(arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersAdvanceTestOrderResponse(
          response as api.OrdersAdvanceTestOrderResponse);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersCancelRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersCancelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCancelRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersCancelResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersCancelResponse(response as api.OrdersCancelResponse);
    });

    unittest.test('method--cancellineitem', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersCancelLineItemRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersCancelLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCancelLineItemRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersCancelLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancellineitem(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersCancelLineItemResponse(
          response as api.OrdersCancelLineItemResponse);
    });

    unittest.test('method--canceltestorderbycustomer', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersCancelTestOrderByCustomerRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersCancelTestOrderByCustomerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCancelTestOrderByCustomerRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrdersCancelTestOrderByCustomerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.canceltestorderbycustomer(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersCancelTestOrderByCustomerResponse(
          response as api.OrdersCancelTestOrderByCustomerResponse);
    });

    unittest.test('method--captureOrder', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildCaptureOrderRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CaptureOrderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCaptureOrderRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildCaptureOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.captureOrder(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkCaptureOrderResponse(response as api.CaptureOrderResponse);
    });

    unittest.test('method--createtestorder', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersCreateTestOrderRequest();
      final arg_merchantId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersCreateTestOrderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCreateTestOrderRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersCreateTestOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createtestorder(arg_request, arg_merchantId,
          $fields: arg_$fields);
      checkOrdersCreateTestOrderResponse(
          response as api.OrdersCreateTestOrderResponse);
    });

    unittest.test('method--createtestreturn', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersCreateTestReturnRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersCreateTestReturnRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCreateTestReturnRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersCreateTestReturnResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createtestreturn(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersCreateTestReturnResponse(
          response as api.OrdersCreateTestReturnResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
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
        final resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_orderId, $fields: arg_$fields);
      checkOrder(response as api.Order);
    });

    unittest.test('method--getbymerchantorderid', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_merchantId = 'foo';
      final arg_merchantOrderId = 'foo';
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
            convert.json.encode(buildOrdersGetByMerchantOrderIdResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getbymerchantorderid(
          arg_merchantId, arg_merchantOrderId,
          $fields: arg_$fields);
      checkOrdersGetByMerchantOrderIdResponse(
          response as api.OrdersGetByMerchantOrderIdResponse);
    });

    unittest.test('method--gettestordertemplate', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_merchantId = 'foo';
      final arg_templateName = 'foo';
      final arg_country = 'foo';
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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildOrdersGetTestOrderTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.gettestordertemplate(
          arg_merchantId, arg_templateName,
          country: arg_country, $fields: arg_$fields);
      checkOrdersGetTestOrderTemplateResponse(
          response as api.OrdersGetTestOrderTemplateResponse);
    });

    unittest.test('method--instorerefundlineitem', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersInStoreRefundLineItemRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersInStoreRefundLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersInStoreRefundLineItemRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrdersInStoreRefundLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.instorerefundlineitem(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersInStoreRefundLineItemResponse(
          response as api.OrdersInStoreRefundLineItemResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_merchantId = 'foo';
      final arg_acknowledged = true;
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_placedDateEnd = 'foo';
      final arg_placedDateStart = 'foo';
      final arg_statuses = buildUnnamed5310();
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
          queryMap['acknowledged']!.first,
          unittest.equals('$arg_acknowledged'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['placedDateEnd']!.first,
          unittest.equals(arg_placedDateEnd),
        );
        unittest.expect(
          queryMap['placedDateStart']!.first,
          unittest.equals(arg_placedDateStart),
        );
        unittest.expect(
          queryMap['statuses']!,
          unittest.equals(arg_statuses),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOrdersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          acknowledged: arg_acknowledged,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          placedDateEnd: arg_placedDateEnd,
          placedDateStart: arg_placedDateStart,
          statuses: arg_statuses,
          $fields: arg_$fields);
      checkOrdersListResponse(response as api.OrdersListResponse);
    });

    unittest.test('method--refunditem', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersRefundItemRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersRefundItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersRefundItemRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersRefundItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.refunditem(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersRefundItemResponse(response as api.OrdersRefundItemResponse);
    });

    unittest.test('method--refundorder', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersRefundOrderRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersRefundOrderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersRefundOrderRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersRefundOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.refundorder(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersRefundOrderResponse(response as api.OrdersRefundOrderResponse);
    });

    unittest.test('method--rejectreturnlineitem', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersRejectReturnLineItemRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersRejectReturnLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersRejectReturnLineItemRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrdersRejectReturnLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rejectreturnlineitem(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersRejectReturnLineItemResponse(
          response as api.OrdersRejectReturnLineItemResponse);
    });

    unittest.test('method--returnrefundlineitem', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersReturnRefundLineItemRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersReturnRefundLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersReturnRefundLineItemRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrdersReturnRefundLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.returnrefundlineitem(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersReturnRefundLineItemResponse(
          response as api.OrdersReturnRefundLineItemResponse);
    });

    unittest.test('method--setlineitemmetadata', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersSetLineItemMetadataRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersSetLineItemMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersSetLineItemMetadataRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrdersSetLineItemMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setlineitemmetadata(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersSetLineItemMetadataResponse(
          response as api.OrdersSetLineItemMetadataResponse);
    });

    unittest.test('method--shiplineitems', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersShipLineItemsRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersShipLineItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersShipLineItemsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersShipLineItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.shiplineitems(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersShipLineItemsResponse(
          response as api.OrdersShipLineItemsResponse);
    });

    unittest.test('method--updatelineitemshippingdetails', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersUpdateLineItemShippingDetailsRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersUpdateLineItemShippingDetailsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json
            .encode(buildOrdersUpdateLineItemShippingDetailsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatelineitemshippingdetails(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersUpdateLineItemShippingDetailsResponse(
          response as api.OrdersUpdateLineItemShippingDetailsResponse);
    });

    unittest.test('method--updatemerchantorderid', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersUpdateMerchantOrderIdRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersUpdateMerchantOrderIdRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersUpdateMerchantOrderIdRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
            convert.json.encode(buildOrdersUpdateMerchantOrderIdResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatemerchantorderid(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersUpdateMerchantOrderIdResponse(
          response as api.OrdersUpdateMerchantOrderIdResponse);
    });

    unittest.test('method--updateshipment', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).orders;
      final arg_request = buildOrdersUpdateShipmentRequest();
      final arg_merchantId = 'foo';
      final arg_orderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.OrdersUpdateShipmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersUpdateShipmentRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildOrdersUpdateShipmentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateshipment(
          arg_request, arg_merchantId, arg_orderId,
          $fields: arg_$fields);
      checkOrdersUpdateShipmentResponse(
          response as api.OrdersUpdateShipmentResponse);
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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('pos/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildPosSaleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sale(
          arg_request, arg_merchantId, arg_targetMerchantId,
          $fields: arg_$fields);
      checkPosSaleResponse(response as api.PosSaleResponse);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('products/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('productstatuses/batch'),
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
      final arg_destinations = buildUnnamed5311();
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
      final arg_destinations = buildUnnamed5312();
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

  unittest.group('resource-ProductstatusesRepricingreportsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).productstatuses.repricingreports;
      final arg_merchantId = 'foo';
      final arg_productId = 'foo';
      final arg_endDate = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_ruleId = 'foo';
      final arg_startDate = 'foo';
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
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
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
          queryMap['ruleId']!.first,
          unittest.equals(arg_ruleId),
        );
        unittest.expect(
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListRepricingProductReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId, arg_productId,
          endDate: arg_endDate,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          ruleId: arg_ruleId,
          startDate: arg_startDate,
          $fields: arg_$fields);
      checkListRepricingProductReportsResponse(
          response as api.ListRepricingProductReportsResponse);
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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildPromotion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_merchantId, $fields: arg_$fields);
      checkPromotion(response as api.Promotion);
    });
  });

  unittest.group('resource-PubsubnotificationsettingsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).pubsubnotificationsettings;
      final arg_merchantId = 'foo';
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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildPubsubNotificationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_merchantId, $fields: arg_$fields);
      checkPubsubNotificationSettings(
          response as api.PubsubNotificationSettings);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('regionalinventory/batch'),
        );
        pathOffset += 23;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.delete(arg_merchantId, arg_regionId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).regions;
      final arg_merchantId = 'foo';
      final arg_regionId = 'foo';
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_merchantId, $fields: arg_$fields);
      checkSearchResponse(response as api.SearchResponse);
    });
  });

  unittest.group('resource-RepricingrulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).repricingrules;
      final arg_request = buildRepricingRule();
      final arg_merchantId = 'foo';
      final arg_ruleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RepricingRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepricingRule(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          queryMap['ruleId']!.first,
          unittest.equals(arg_ruleId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRepricingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_merchantId,
          ruleId: arg_ruleId, $fields: arg_$fields);
      checkRepricingRule(response as api.RepricingRule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).repricingrules;
      final arg_merchantId = 'foo';
      final arg_ruleId = 'foo';
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
      await res.delete(arg_merchantId, arg_ruleId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).repricingrules;
      final arg_merchantId = 'foo';
      final arg_ruleId = 'foo';
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
        final resp = convert.json.encode(buildRepricingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_ruleId, $fields: arg_$fields);
      checkRepricingRule(response as api.RepricingRule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).repricingrules;
      final arg_merchantId = 'foo';
      final arg_countryCode = 'foo';
      final arg_languageCode = 'foo';
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
        final resp = convert.json.encode(buildListRepricingRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          countryCode: arg_countryCode,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRepricingRulesResponse(
          response as api.ListRepricingRulesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).repricingrules;
      final arg_request = buildRepricingRule();
      final arg_merchantId = 'foo';
      final arg_ruleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RepricingRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepricingRule(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildRepricingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_merchantId, arg_ruleId,
          $fields: arg_$fields);
      checkRepricingRule(response as api.RepricingRule);
    });
  });

  unittest.group('resource-RepricingrulesRepricingreportsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).repricingrules.repricingreports;
      final arg_merchantId = 'foo';
      final arg_ruleId = 'foo';
      final arg_endDate = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startDate = 'foo';
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
          queryMap['endDate']!.first,
          unittest.equals(arg_endDate),
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
          queryMap['startDate']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListRepricingRuleReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId, arg_ruleId,
          endDate: arg_endDate,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startDate: arg_startDate,
          $fields: arg_$fields);
      checkListRepricingRuleReportsResponse(
          response as api.ListRepricingRuleReportsResponse);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('returnaddress/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('returnpolicy/batch'),
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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final resp = convert.json.encode(buildReturnPolicyOnline());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_merchantId, arg_returnPolicyId,
          $fields: arg_$fields);
      checkReturnPolicyOnline(response as api.ReturnPolicyOnline);
    });
  });

  unittest.group('resource-SettlementreportsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).settlementreports;
      final arg_merchantId = 'foo';
      final arg_settlementId = 'foo';
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
        final resp = convert.json.encode(buildSettlementReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_merchantId, arg_settlementId, $fields: arg_$fields);
      checkSettlementReport(response as api.SettlementReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).settlementreports;
      final arg_merchantId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_transferEndDate = 'foo';
      final arg_transferStartDate = 'foo';
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['transferEndDate']!.first,
          unittest.equals(arg_transferEndDate),
        );
        unittest.expect(
          queryMap['transferStartDate']!.first,
          unittest.equals(arg_transferStartDate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSettlementreportsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          transferEndDate: arg_transferEndDate,
          transferStartDate: arg_transferStartDate,
          $fields: arg_$fields);
      checkSettlementreportsListResponse(
          response as api.SettlementreportsListResponse);
    });
  });

  unittest.group('resource-SettlementtransactionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ShoppingContentApi(mock).settlementtransactions;
      final arg_merchantId = 'foo';
      final arg_settlementId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_transactionIds = buildUnnamed5313();
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['transactionIds']!,
          unittest.equals(arg_transactionIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSettlementtransactionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_merchantId, arg_settlementId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          transactionIds: arg_transactionIds,
          $fields: arg_$fields);
      checkSettlementtransactionsListResponse(
          response as api.SettlementtransactionsListResponse);
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('content/v2.1/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('shippingsettings/batch'),
        );
        pathOffset += 22;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;

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
      await res.requestreview(arg_request, arg_merchantId,
          $fields: arg_$fields);
    });
  });
}
