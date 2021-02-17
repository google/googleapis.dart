// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/content/v2_1.dart' as api;

import '../test_shared.dart';

core.List<api.AccountAdsLink> buildUnnamed4149() {
  var o = <api.AccountAdsLink>[];
  o.add(buildAccountAdsLink());
  o.add(buildAccountAdsLink());
  return o;
}

void checkUnnamed4149(core.List<api.AccountAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdsLink(o[0] as api.AccountAdsLink);
  checkAccountAdsLink(o[1] as api.AccountAdsLink);
}

core.List<core.String> buildUnnamed4150() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4150(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4151() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4151(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AccountUser> buildUnnamed4152() {
  var o = <api.AccountUser>[];
  o.add(buildAccountUser());
  o.add(buildAccountUser());
  return o;
}

void checkUnnamed4152(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0] as api.AccountUser);
  checkAccountUser(o[1] as api.AccountUser);
}

core.List<api.AccountYouTubeChannelLink> buildUnnamed4153() {
  var o = <api.AccountYouTubeChannelLink>[];
  o.add(buildAccountYouTubeChannelLink());
  o.add(buildAccountYouTubeChannelLink());
  return o;
}

void checkUnnamed4153(core.List<api.AccountYouTubeChannelLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountYouTubeChannelLink(o[0] as api.AccountYouTubeChannelLink);
  checkAccountYouTubeChannelLink(o[1] as api.AccountYouTubeChannelLink);
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  var o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.adsLinks = buildUnnamed4149();
    o.adultContent = true;
    o.automaticLabelIds = buildUnnamed4150();
    o.businessInformation = buildAccountBusinessInformation();
    o.cssId = 'foo';
    o.googleMyBusinessLink = buildAccountGoogleMyBusinessLink();
    o.id = 'foo';
    o.kind = 'foo';
    o.labelIds = buildUnnamed4151();
    o.name = 'foo';
    o.sellerId = 'foo';
    o.users = buildUnnamed4152();
    o.websiteUrl = 'foo';
    o.youtubeChannelLinks = buildUnnamed4153();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed4149(o.adsLinks);
    unittest.expect(o.adultContent, unittest.isTrue);
    checkUnnamed4150(o.automaticLabelIds);
    checkAccountBusinessInformation(
        o.businessInformation as api.AccountBusinessInformation);
    unittest.expect(o.cssId, unittest.equals('foo'));
    checkAccountGoogleMyBusinessLink(
        o.googleMyBusinessLink as api.AccountGoogleMyBusinessLink);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4151(o.labelIds);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sellerId, unittest.equals('foo'));
    checkUnnamed4152(o.users);
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
    checkUnnamed4153(o.youtubeChannelLinks);
  }
  buildCounterAccount--;
}

core.int buildCounterAccountAddress = 0;
api.AccountAddress buildAccountAddress() {
  var o = api.AccountAddress();
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
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.streetAddress, unittest.equals('foo'));
  }
  buildCounterAccountAddress--;
}

core.int buildCounterAccountAdsLink = 0;
api.AccountAdsLink buildAccountAdsLink() {
  var o = api.AccountAdsLink();
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
    unittest.expect(o.adsId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountAdsLink--;
}

core.int buildCounterAccountBusinessInformation = 0;
api.AccountBusinessInformation buildAccountBusinessInformation() {
  var o = api.AccountBusinessInformation();
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
    checkAccountAddress(o.address as api.AccountAddress);
    checkAccountCustomerService(
        o.customerService as api.AccountCustomerService);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterAccountBusinessInformation--;
}

core.int buildCounterAccountCustomerService = 0;
api.AccountCustomerService buildAccountCustomerService() {
  var o = api.AccountCustomerService();
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
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAccountCustomerService--;
}

core.int buildCounterAccountGoogleMyBusinessLink = 0;
api.AccountGoogleMyBusinessLink buildAccountGoogleMyBusinessLink() {
  var o = api.AccountGoogleMyBusinessLink();
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
    unittest.expect(o.gmbAccountId, unittest.equals('foo'));
    unittest.expect(o.gmbEmail, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountGoogleMyBusinessLink--;
}

core.int buildCounterAccountIdentifier = 0;
api.AccountIdentifier buildAccountIdentifier() {
  var o = api.AccountIdentifier();
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
    unittest.expect(o.aggregatorId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
  }
  buildCounterAccountIdentifier--;
}

core.int buildCounterAccountLabel = 0;
api.AccountLabel buildAccountLabel() {
  var o = api.AccountLabel();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.labelId, unittest.equals('foo'));
    unittest.expect(o.labelType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAccountLabel--;
}

core.int buildCounterAccountReturnCarrier = 0;
api.AccountReturnCarrier buildAccountReturnCarrier() {
  var o = api.AccountReturnCarrier();
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
    unittest.expect(o.carrierAccountId, unittest.equals('foo'));
    unittest.expect(o.carrierAccountName, unittest.equals('foo'));
    unittest.expect(o.carrierAccountNumber, unittest.equals('foo'));
    unittest.expect(o.carrierCode, unittest.equals('foo'));
  }
  buildCounterAccountReturnCarrier--;
}

core.List<api.AccountStatusAccountLevelIssue> buildUnnamed4154() {
  var o = <api.AccountStatusAccountLevelIssue>[];
  o.add(buildAccountStatusAccountLevelIssue());
  o.add(buildAccountStatusAccountLevelIssue());
  return o;
}

void checkUnnamed4154(core.List<api.AccountStatusAccountLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusAccountLevelIssue(
      o[0] as api.AccountStatusAccountLevelIssue);
  checkAccountStatusAccountLevelIssue(
      o[1] as api.AccountStatusAccountLevelIssue);
}

core.List<api.AccountStatusProducts> buildUnnamed4155() {
  var o = <api.AccountStatusProducts>[];
  o.add(buildAccountStatusProducts());
  o.add(buildAccountStatusProducts());
  return o;
}

void checkUnnamed4155(core.List<api.AccountStatusProducts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusProducts(o[0] as api.AccountStatusProducts);
  checkAccountStatusProducts(o[1] as api.AccountStatusProducts);
}

core.int buildCounterAccountStatus = 0;
api.AccountStatus buildAccountStatus() {
  var o = api.AccountStatus();
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    o.accountId = 'foo';
    o.accountLevelIssues = buildUnnamed4154();
    o.kind = 'foo';
    o.products = buildUnnamed4155();
    o.websiteClaimed = true;
  }
  buildCounterAccountStatus--;
  return o;
}

void checkAccountStatus(api.AccountStatus o) {
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4154(o.accountLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4155(o.products);
    unittest.expect(o.websiteClaimed, unittest.isTrue);
  }
  buildCounterAccountStatus--;
}

core.int buildCounterAccountStatusAccountLevelIssue = 0;
api.AccountStatusAccountLevelIssue buildAccountStatusAccountLevelIssue() {
  var o = api.AccountStatusAccountLevelIssue();
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
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccountStatusAccountLevelIssue--;
}

core.int buildCounterAccountStatusItemLevelIssue = 0;
api.AccountStatusItemLevelIssue buildAccountStatusItemLevelIssue() {
  var o = api.AccountStatusItemLevelIssue();
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
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.numItems, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
    unittest.expect(o.servability, unittest.equals('foo'));
  }
  buildCounterAccountStatusItemLevelIssue--;
}

core.List<api.AccountStatusItemLevelIssue> buildUnnamed4156() {
  var o = <api.AccountStatusItemLevelIssue>[];
  o.add(buildAccountStatusItemLevelIssue());
  o.add(buildAccountStatusItemLevelIssue());
  return o;
}

void checkUnnamed4156(core.List<api.AccountStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusItemLevelIssue(o[0] as api.AccountStatusItemLevelIssue);
  checkAccountStatusItemLevelIssue(o[1] as api.AccountStatusItemLevelIssue);
}

core.int buildCounterAccountStatusProducts = 0;
api.AccountStatusProducts buildAccountStatusProducts() {
  var o = api.AccountStatusProducts();
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    o.channel = 'foo';
    o.country = 'foo';
    o.destination = 'foo';
    o.itemLevelIssues = buildUnnamed4156();
    o.statistics = buildAccountStatusStatistics();
  }
  buildCounterAccountStatusProducts--;
  return o;
}

void checkAccountStatusProducts(api.AccountStatusProducts o) {
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed4156(o.itemLevelIssues);
    checkAccountStatusStatistics(o.statistics as api.AccountStatusStatistics);
  }
  buildCounterAccountStatusProducts--;
}

core.int buildCounterAccountStatusStatistics = 0;
api.AccountStatusStatistics buildAccountStatusStatistics() {
  var o = api.AccountStatusStatistics();
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
    unittest.expect(o.active, unittest.equals('foo'));
    unittest.expect(o.disapproved, unittest.equals('foo'));
    unittest.expect(o.expiring, unittest.equals('foo'));
    unittest.expect(o.pending, unittest.equals('foo'));
  }
  buildCounterAccountStatusStatistics--;
}

core.List<api.AccountTaxTaxRule> buildUnnamed4157() {
  var o = <api.AccountTaxTaxRule>[];
  o.add(buildAccountTaxTaxRule());
  o.add(buildAccountTaxTaxRule());
  return o;
}

void checkUnnamed4157(core.List<api.AccountTaxTaxRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTaxTaxRule(o[0] as api.AccountTaxTaxRule);
  checkAccountTaxTaxRule(o[1] as api.AccountTaxTaxRule);
}

core.int buildCounterAccountTax = 0;
api.AccountTax buildAccountTax() {
  var o = api.AccountTax();
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    o.accountId = 'foo';
    o.kind = 'foo';
    o.rules = buildUnnamed4157();
  }
  buildCounterAccountTax--;
  return o;
}

void checkAccountTax(api.AccountTax o) {
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4157(o.rules);
  }
  buildCounterAccountTax--;
}

core.int buildCounterAccountTaxTaxRule = 0;
api.AccountTaxTaxRule buildAccountTaxTaxRule() {
  var o = api.AccountTaxTaxRule();
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
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.ratePercent, unittest.equals('foo'));
    unittest.expect(o.shippingTaxed, unittest.isTrue);
    unittest.expect(o.useGlobalRate, unittest.isTrue);
  }
  buildCounterAccountTaxTaxRule--;
}

core.int buildCounterAccountUser = 0;
api.AccountUser buildAccountUser() {
  var o = api.AccountUser();
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
    unittest.expect(o.admin, unittest.isTrue);
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.orderManager, unittest.isTrue);
    unittest.expect(o.paymentsAnalyst, unittest.isTrue);
    unittest.expect(o.paymentsManager, unittest.isTrue);
  }
  buildCounterAccountUser--;
}

core.int buildCounterAccountYouTubeChannelLink = 0;
api.AccountYouTubeChannelLink buildAccountYouTubeChannelLink() {
  var o = api.AccountYouTubeChannelLink();
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
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountYouTubeChannelLink--;
}

core.List<api.AccountIdentifier> buildUnnamed4158() {
  var o = <api.AccountIdentifier>[];
  o.add(buildAccountIdentifier());
  o.add(buildAccountIdentifier());
  return o;
}

void checkUnnamed4158(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0] as api.AccountIdentifier);
  checkAccountIdentifier(o[1] as api.AccountIdentifier);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
api.AccountsAuthInfoResponse buildAccountsAuthInfoResponse() {
  var o = api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed4158();
    o.kind = 'foo';
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

void checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed4158(o.accountIdentifiers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsAuthInfoResponse--;
}

core.int buildCounterAccountsClaimWebsiteResponse = 0;
api.AccountsClaimWebsiteResponse buildAccountsClaimWebsiteResponse() {
  var o = api.AccountsClaimWebsiteResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsClaimWebsiteResponse--;
}

core.List<api.AccountsCustomBatchRequestEntry> buildUnnamed4159() {
  var o = <api.AccountsCustomBatchRequestEntry>[];
  o.add(buildAccountsCustomBatchRequestEntry());
  o.add(buildAccountsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4159(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(
      o[0] as api.AccountsCustomBatchRequestEntry);
  checkAccountsCustomBatchRequestEntry(
      o[1] as api.AccountsCustomBatchRequestEntry);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
api.AccountsCustomBatchRequest buildAccountsCustomBatchRequest() {
  var o = api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed4159();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

void checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed4159(o.entries);
  }
  buildCounterAccountsCustomBatchRequest--;
}

core.List<core.String> buildUnnamed4160() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountsCustomBatchRequestEntry = 0;
api.AccountsCustomBatchRequestEntry buildAccountsCustomBatchRequestEntry() {
  var o = api.AccountsCustomBatchRequestEntry();
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    o.account = buildAccount();
    o.accountId = 'foo';
    o.batchId = 42;
    o.force = true;
    o.labelIds = buildUnnamed4160();
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
    checkAccount(o.account as api.Account);
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.force, unittest.isTrue);
    checkUnnamed4160(o.labelIds);
    checkAccountsCustomBatchRequestEntryLinkRequest(
        o.linkRequest as api.AccountsCustomBatchRequestEntryLinkRequest);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.overwrite, unittest.isTrue);
    unittest.expect(o.view, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchRequestEntry--;
}

core.List<core.String> buildUnnamed4161() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4161(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountsCustomBatchRequestEntryLinkRequest = 0;
api.AccountsCustomBatchRequestEntryLinkRequest
    buildAccountsCustomBatchRequestEntryLinkRequest() {
  var o = api.AccountsCustomBatchRequestEntryLinkRequest();
  buildCounterAccountsCustomBatchRequestEntryLinkRequest++;
  if (buildCounterAccountsCustomBatchRequestEntryLinkRequest < 3) {
    o.action = 'foo';
    o.linkType = 'foo';
    o.linkedAccountId = 'foo';
    o.services = buildUnnamed4161();
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
  return o;
}

void checkAccountsCustomBatchRequestEntryLinkRequest(
    api.AccountsCustomBatchRequestEntryLinkRequest o) {
  buildCounterAccountsCustomBatchRequestEntryLinkRequest++;
  if (buildCounterAccountsCustomBatchRequestEntryLinkRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.linkType, unittest.equals('foo'));
    unittest.expect(o.linkedAccountId, unittest.equals('foo'));
    checkUnnamed4161(o.services);
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
}

core.List<api.AccountsCustomBatchResponseEntry> buildUnnamed4162() {
  var o = <api.AccountsCustomBatchResponseEntry>[];
  o.add(buildAccountsCustomBatchResponseEntry());
  o.add(buildAccountsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4162(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(
      o[0] as api.AccountsCustomBatchResponseEntry);
  checkAccountsCustomBatchResponseEntry(
      o[1] as api.AccountsCustomBatchResponseEntry);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
api.AccountsCustomBatchResponse buildAccountsCustomBatchResponse() {
  var o = api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed4162();
    o.kind = 'foo';
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

void checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed4162(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponse--;
}

core.int buildCounterAccountsCustomBatchResponseEntry = 0;
api.AccountsCustomBatchResponseEntry buildAccountsCustomBatchResponseEntry() {
  var o = api.AccountsCustomBatchResponseEntry();
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
    checkAccount(o.account as api.Account);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponseEntry--;
}

core.List<core.String> buildUnnamed4163() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountsLinkRequest = 0;
api.AccountsLinkRequest buildAccountsLinkRequest() {
  var o = api.AccountsLinkRequest();
  buildCounterAccountsLinkRequest++;
  if (buildCounterAccountsLinkRequest < 3) {
    o.action = 'foo';
    o.linkType = 'foo';
    o.linkedAccountId = 'foo';
    o.services = buildUnnamed4163();
  }
  buildCounterAccountsLinkRequest--;
  return o;
}

void checkAccountsLinkRequest(api.AccountsLinkRequest o) {
  buildCounterAccountsLinkRequest++;
  if (buildCounterAccountsLinkRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.linkType, unittest.equals('foo'));
    unittest.expect(o.linkedAccountId, unittest.equals('foo'));
    checkUnnamed4163(o.services);
  }
  buildCounterAccountsLinkRequest--;
}

core.int buildCounterAccountsLinkResponse = 0;
api.AccountsLinkResponse buildAccountsLinkResponse() {
  var o = api.AccountsLinkResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsLinkResponse--;
}

core.List<api.LinkedAccount> buildUnnamed4164() {
  var o = <api.LinkedAccount>[];
  o.add(buildLinkedAccount());
  o.add(buildLinkedAccount());
  return o;
}

void checkUnnamed4164(core.List<api.LinkedAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedAccount(o[0] as api.LinkedAccount);
  checkLinkedAccount(o[1] as api.LinkedAccount);
}

core.int buildCounterAccountsListLinksResponse = 0;
api.AccountsListLinksResponse buildAccountsListLinksResponse() {
  var o = api.AccountsListLinksResponse();
  buildCounterAccountsListLinksResponse++;
  if (buildCounterAccountsListLinksResponse < 3) {
    o.kind = 'foo';
    o.links = buildUnnamed4164();
    o.nextPageToken = 'foo';
  }
  buildCounterAccountsListLinksResponse--;
  return o;
}

void checkAccountsListLinksResponse(api.AccountsListLinksResponse o) {
  buildCounterAccountsListLinksResponse++;
  if (buildCounterAccountsListLinksResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4164(o.links);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAccountsListLinksResponse--;
}

core.List<api.Account> buildUnnamed4165() {
  var o = <api.Account>[];
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

void checkUnnamed4165(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0] as api.Account);
  checkAccount(o[1] as api.Account);
}

core.int buildCounterAccountsListResponse = 0;
api.AccountsListResponse buildAccountsListResponse() {
  var o = api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4165();
  }
  buildCounterAccountsListResponse--;
  return o;
}

void checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4165(o.resources);
  }
  buildCounterAccountsListResponse--;
}

core.List<core.String> buildUnnamed4166() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountsUpdateLabelsRequest = 0;
api.AccountsUpdateLabelsRequest buildAccountsUpdateLabelsRequest() {
  var o = api.AccountsUpdateLabelsRequest();
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    o.labelIds = buildUnnamed4166();
  }
  buildCounterAccountsUpdateLabelsRequest--;
  return o;
}

void checkAccountsUpdateLabelsRequest(api.AccountsUpdateLabelsRequest o) {
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    checkUnnamed4166(o.labelIds);
  }
  buildCounterAccountsUpdateLabelsRequest--;
}

core.int buildCounterAccountsUpdateLabelsResponse = 0;
api.AccountsUpdateLabelsResponse buildAccountsUpdateLabelsResponse() {
  var o = api.AccountsUpdateLabelsResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsUpdateLabelsResponse--;
}

core.List<api.AccountstatusesCustomBatchRequestEntry> buildUnnamed4167() {
  var o = <api.AccountstatusesCustomBatchRequestEntry>[];
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4167(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(
      o[0] as api.AccountstatusesCustomBatchRequestEntry);
  checkAccountstatusesCustomBatchRequestEntry(
      o[1] as api.AccountstatusesCustomBatchRequestEntry);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
api.AccountstatusesCustomBatchRequest buildAccountstatusesCustomBatchRequest() {
  var o = api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed4167();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

void checkAccountstatusesCustomBatchRequest(
    api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed4167(o.entries);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed4168() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4168(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountstatusesCustomBatchRequestEntry = 0;
api.AccountstatusesCustomBatchRequestEntry
    buildAccountstatusesCustomBatchRequestEntry() {
  var o = api.AccountstatusesCustomBatchRequestEntry();
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    o.accountId = 'foo';
    o.batchId = 42;
    o.destinations = buildUnnamed4168();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    checkUnnamed4168(o.destinations);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
}

core.List<api.AccountstatusesCustomBatchResponseEntry> buildUnnamed4169() {
  var o = <api.AccountstatusesCustomBatchResponseEntry>[];
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4169(
    core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchResponseEntry(
      o[0] as api.AccountstatusesCustomBatchResponseEntry);
  checkAccountstatusesCustomBatchResponseEntry(
      o[1] as api.AccountstatusesCustomBatchResponseEntry);
}

core.int buildCounterAccountstatusesCustomBatchResponse = 0;
api.AccountstatusesCustomBatchResponse
    buildAccountstatusesCustomBatchResponse() {
  var o = api.AccountstatusesCustomBatchResponse();
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed4169();
    o.kind = 'foo';
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

void checkAccountstatusesCustomBatchResponse(
    api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed4169(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchResponse--;
}

core.int buildCounterAccountstatusesCustomBatchResponseEntry = 0;
api.AccountstatusesCustomBatchResponseEntry
    buildAccountstatusesCustomBatchResponseEntry() {
  var o = api.AccountstatusesCustomBatchResponseEntry();
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
    checkAccountStatus(o.accountStatus as api.AccountStatus);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
}

core.List<api.AccountStatus> buildUnnamed4170() {
  var o = <api.AccountStatus>[];
  o.add(buildAccountStatus());
  o.add(buildAccountStatus());
  return o;
}

void checkUnnamed4170(core.List<api.AccountStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatus(o[0] as api.AccountStatus);
  checkAccountStatus(o[1] as api.AccountStatus);
}

core.int buildCounterAccountstatusesListResponse = 0;
api.AccountstatusesListResponse buildAccountstatusesListResponse() {
  var o = api.AccountstatusesListResponse();
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4170();
  }
  buildCounterAccountstatusesListResponse--;
  return o;
}

void checkAccountstatusesListResponse(api.AccountstatusesListResponse o) {
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4170(o.resources);
  }
  buildCounterAccountstatusesListResponse--;
}

core.List<api.AccounttaxCustomBatchRequestEntry> buildUnnamed4171() {
  var o = <api.AccounttaxCustomBatchRequestEntry>[];
  o.add(buildAccounttaxCustomBatchRequestEntry());
  o.add(buildAccounttaxCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4171(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(
      o[0] as api.AccounttaxCustomBatchRequestEntry);
  checkAccounttaxCustomBatchRequestEntry(
      o[1] as api.AccounttaxCustomBatchRequestEntry);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
api.AccounttaxCustomBatchRequest buildAccounttaxCustomBatchRequest() {
  var o = api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed4171();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

void checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed4171(o.entries);
  }
  buildCounterAccounttaxCustomBatchRequest--;
}

core.int buildCounterAccounttaxCustomBatchRequestEntry = 0;
api.AccounttaxCustomBatchRequestEntry buildAccounttaxCustomBatchRequestEntry() {
  var o = api.AccounttaxCustomBatchRequestEntry();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkAccountTax(o.accountTax as api.AccountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
}

core.List<api.AccounttaxCustomBatchResponseEntry> buildUnnamed4172() {
  var o = <api.AccounttaxCustomBatchResponseEntry>[];
  o.add(buildAccounttaxCustomBatchResponseEntry());
  o.add(buildAccounttaxCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4172(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(
      o[0] as api.AccounttaxCustomBatchResponseEntry);
  checkAccounttaxCustomBatchResponseEntry(
      o[1] as api.AccounttaxCustomBatchResponseEntry);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
api.AccounttaxCustomBatchResponse buildAccounttaxCustomBatchResponse() {
  var o = api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed4172();
    o.kind = 'foo';
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

void checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed4172(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponse--;
}

core.int buildCounterAccounttaxCustomBatchResponseEntry = 0;
api.AccounttaxCustomBatchResponseEntry
    buildAccounttaxCustomBatchResponseEntry() {
  var o = api.AccounttaxCustomBatchResponseEntry();
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
    checkAccountTax(o.accountTax as api.AccountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
}

core.List<api.AccountTax> buildUnnamed4173() {
  var o = <api.AccountTax>[];
  o.add(buildAccountTax());
  o.add(buildAccountTax());
  return o;
}

void checkUnnamed4173(core.List<api.AccountTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTax(o[0] as api.AccountTax);
  checkAccountTax(o[1] as api.AccountTax);
}

core.int buildCounterAccounttaxListResponse = 0;
api.AccounttaxListResponse buildAccounttaxListResponse() {
  var o = api.AccounttaxListResponse();
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4173();
  }
  buildCounterAccounttaxListResponse--;
  return o;
}

void checkAccounttaxListResponse(api.AccounttaxListResponse o) {
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4173(o.resources);
  }
  buildCounterAccounttaxListResponse--;
}

core.int buildCounterAmount = 0;
api.Amount buildAmount() {
  var o = api.Amount();
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
    checkPrice(o.priceAmount as api.Price);
    checkPrice(o.taxAmount as api.Price);
  }
  buildCounterAmount--;
}

core.List<core.String> buildUnnamed4174() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4174(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBusinessDayConfig = 0;
api.BusinessDayConfig buildBusinessDayConfig() {
  var o = api.BusinessDayConfig();
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    o.businessDays = buildUnnamed4174();
  }
  buildCounterBusinessDayConfig--;
  return o;
}

void checkBusinessDayConfig(api.BusinessDayConfig o) {
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    checkUnnamed4174(o.businessDays);
  }
  buildCounterBusinessDayConfig--;
}

core.int buildCounterCarrierRate = 0;
api.CarrierRate buildCarrierRate() {
  var o = api.CarrierRate();
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
    unittest.expect(o.carrierName, unittest.equals('foo'));
    unittest.expect(o.carrierService, unittest.equals('foo'));
    checkPrice(o.flatAdjustment as api.Price);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originPostalCode, unittest.equals('foo'));
    unittest.expect(o.percentageAdjustment, unittest.equals('foo'));
  }
  buildCounterCarrierRate--;
}

core.List<core.String> buildUnnamed4175() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4175(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCarriersCarrier = 0;
api.CarriersCarrier buildCarriersCarrier() {
  var o = api.CarriersCarrier();
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    o.country = 'foo';
    o.name = 'foo';
    o.services = buildUnnamed4175();
  }
  buildCounterCarriersCarrier--;
  return o;
}

void checkCarriersCarrier(api.CarriersCarrier o) {
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4175(o.services);
  }
  buildCounterCarriersCarrier--;
}

core.List<api.CollectionFeaturedProduct> buildUnnamed4176() {
  var o = <api.CollectionFeaturedProduct>[];
  o.add(buildCollectionFeaturedProduct());
  o.add(buildCollectionFeaturedProduct());
  return o;
}

void checkUnnamed4176(core.List<api.CollectionFeaturedProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionFeaturedProduct(o[0] as api.CollectionFeaturedProduct);
  checkCollectionFeaturedProduct(o[1] as api.CollectionFeaturedProduct);
}

core.List<core.String> buildUnnamed4177() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4178() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4178(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCollection = 0;
api.Collection buildCollection() {
  var o = api.Collection();
  buildCounterCollection++;
  if (buildCounterCollection < 3) {
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.featuredProduct = buildUnnamed4176();
    o.headline = buildUnnamed4177();
    o.id = 'foo';
    o.imageLink = buildUnnamed4178();
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
    unittest.expect(o.customLabel0, unittest.equals('foo'));
    unittest.expect(o.customLabel1, unittest.equals('foo'));
    unittest.expect(o.customLabel2, unittest.equals('foo'));
    unittest.expect(o.customLabel3, unittest.equals('foo'));
    unittest.expect(o.customLabel4, unittest.equals('foo'));
    checkUnnamed4176(o.featuredProduct);
    checkUnnamed4177(o.headline);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4178(o.imageLink);
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.mobileLink, unittest.equals('foo'));
    unittest.expect(o.productCountry, unittest.equals('foo'));
  }
  buildCounterCollection--;
}

core.int buildCounterCollectionFeaturedProduct = 0;
api.CollectionFeaturedProduct buildCollectionFeaturedProduct() {
  var o = api.CollectionFeaturedProduct();
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
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterCollectionFeaturedProduct--;
}

core.List<api.CollectionStatusItemLevelIssue> buildUnnamed4179() {
  var o = <api.CollectionStatusItemLevelIssue>[];
  o.add(buildCollectionStatusItemLevelIssue());
  o.add(buildCollectionStatusItemLevelIssue());
  return o;
}

void checkUnnamed4179(core.List<api.CollectionStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatusItemLevelIssue(
      o[0] as api.CollectionStatusItemLevelIssue);
  checkCollectionStatusItemLevelIssue(
      o[1] as api.CollectionStatusItemLevelIssue);
}

core.List<api.CollectionStatusDestinationStatus> buildUnnamed4180() {
  var o = <api.CollectionStatusDestinationStatus>[];
  o.add(buildCollectionStatusDestinationStatus());
  o.add(buildCollectionStatusDestinationStatus());
  return o;
}

void checkUnnamed4180(core.List<api.CollectionStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatusDestinationStatus(
      o[0] as api.CollectionStatusDestinationStatus);
  checkCollectionStatusDestinationStatus(
      o[1] as api.CollectionStatusDestinationStatus);
}

core.int buildCounterCollectionStatus = 0;
api.CollectionStatus buildCollectionStatus() {
  var o = api.CollectionStatus();
  buildCounterCollectionStatus++;
  if (buildCounterCollectionStatus < 3) {
    o.collectionLevelIssuses = buildUnnamed4179();
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed4180();
    o.id = 'foo';
    o.lastUpdateDate = 'foo';
  }
  buildCounterCollectionStatus--;
  return o;
}

void checkCollectionStatus(api.CollectionStatus o) {
  buildCounterCollectionStatus++;
  if (buildCounterCollectionStatus < 3) {
    checkUnnamed4179(o.collectionLevelIssuses);
    unittest.expect(o.creationDate, unittest.equals('foo'));
    checkUnnamed4180(o.destinationStatuses);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastUpdateDate, unittest.equals('foo'));
  }
  buildCounterCollectionStatus--;
}

core.int buildCounterCollectionStatusDestinationStatus = 0;
api.CollectionStatusDestinationStatus buildCollectionStatusDestinationStatus() {
  var o = api.CollectionStatusDestinationStatus();
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
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterCollectionStatusDestinationStatus--;
}

core.int buildCounterCollectionStatusItemLevelIssue = 0;
api.CollectionStatusItemLevelIssue buildCollectionStatusItemLevelIssue() {
  var o = api.CollectionStatusItemLevelIssue();
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
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
    unittest.expect(o.servability, unittest.equals('foo'));
  }
  buildCounterCollectionStatusItemLevelIssue--;
}

core.List<core.String> buildUnnamed4181() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4181(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCss = 0;
api.Css buildCss() {
  var o = api.Css();
  buildCounterCss++;
  if (buildCounterCss < 3) {
    o.cssDomainId = 'foo';
    o.cssGroupId = 'foo';
    o.displayName = 'foo';
    o.fullName = 'foo';
    o.homepageUri = 'foo';
    o.labelIds = buildUnnamed4181();
  }
  buildCounterCss--;
  return o;
}

void checkCss(api.Css o) {
  buildCounterCss++;
  if (buildCounterCss < 3) {
    unittest.expect(o.cssDomainId, unittest.equals('foo'));
    unittest.expect(o.cssGroupId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.homepageUri, unittest.equals('foo'));
    checkUnnamed4181(o.labelIds);
  }
  buildCounterCss--;
}

core.List<api.CustomAttribute> buildUnnamed4182() {
  var o = <api.CustomAttribute>[];
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

void checkUnnamed4182(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0] as api.CustomAttribute);
  checkCustomAttribute(o[1] as api.CustomAttribute);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  var o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed4182();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed4182(o.groupValues);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomerReturnReason = 0;
api.CustomerReturnReason buildCustomerReturnReason() {
  var o = api.CustomerReturnReason();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reasonCode, unittest.equals('foo'));
  }
  buildCounterCustomerReturnReason--;
}

core.int buildCounterCutoffTime = 0;
api.CutoffTime buildCutoffTime() {
  var o = api.CutoffTime();
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
    unittest.expect(o.hour, unittest.equals(42));
    unittest.expect(o.minute, unittest.equals(42));
    unittest.expect(o.timezone, unittest.equals('foo'));
  }
  buildCounterCutoffTime--;
}

core.List<api.DatafeedTarget> buildUnnamed4183() {
  var o = <api.DatafeedTarget>[];
  o.add(buildDatafeedTarget());
  o.add(buildDatafeedTarget());
  return o;
}

void checkUnnamed4183(core.List<api.DatafeedTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedTarget(o[0] as api.DatafeedTarget);
  checkDatafeedTarget(o[1] as api.DatafeedTarget);
}

core.int buildCounterDatafeed = 0;
api.Datafeed buildDatafeed() {
  var o = api.Datafeed();
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
    o.targets = buildUnnamed4183();
  }
  buildCounterDatafeed--;
  return o;
}

void checkDatafeed(api.Datafeed o) {
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    unittest.expect(o.attributeLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkDatafeedFetchSchedule(o.fetchSchedule as api.DatafeedFetchSchedule);
    unittest.expect(o.fileName, unittest.equals('foo'));
    checkDatafeedFormat(o.format as api.DatafeedFormat);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4183(o.targets);
  }
  buildCounterDatafeed--;
}

core.int buildCounterDatafeedFetchSchedule = 0;
api.DatafeedFetchSchedule buildDatafeedFetchSchedule() {
  var o = api.DatafeedFetchSchedule();
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
    unittest.expect(o.dayOfMonth, unittest.equals(42));
    unittest.expect(o.fetchUrl, unittest.equals('foo'));
    unittest.expect(o.hour, unittest.equals(42));
    unittest.expect(o.minuteOfHour, unittest.equals(42));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.paused, unittest.isTrue);
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
    unittest.expect(o.weekday, unittest.equals('foo'));
  }
  buildCounterDatafeedFetchSchedule--;
}

core.int buildCounterDatafeedFormat = 0;
api.DatafeedFormat buildDatafeedFormat() {
  var o = api.DatafeedFormat();
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
    unittest.expect(o.columnDelimiter, unittest.equals('foo'));
    unittest.expect(o.fileEncoding, unittest.equals('foo'));
    unittest.expect(o.quotingMode, unittest.equals('foo'));
  }
  buildCounterDatafeedFormat--;
}

core.List<api.DatafeedStatusError> buildUnnamed4184() {
  var o = <api.DatafeedStatusError>[];
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

void checkUnnamed4184(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0] as api.DatafeedStatusError);
  checkDatafeedStatusError(o[1] as api.DatafeedStatusError);
}

core.List<api.DatafeedStatusError> buildUnnamed4185() {
  var o = <api.DatafeedStatusError>[];
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

void checkUnnamed4185(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0] as api.DatafeedStatusError);
  checkDatafeedStatusError(o[1] as api.DatafeedStatusError);
}

core.int buildCounterDatafeedStatus = 0;
api.DatafeedStatus buildDatafeedStatus() {
  var o = api.DatafeedStatus();
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    o.country = 'foo';
    o.datafeedId = 'foo';
    o.errors = buildUnnamed4184();
    o.itemsTotal = 'foo';
    o.itemsValid = 'foo';
    o.kind = 'foo';
    o.language = 'foo';
    o.lastUploadDate = 'foo';
    o.processingStatus = 'foo';
    o.warnings = buildUnnamed4185();
  }
  buildCounterDatafeedStatus--;
  return o;
}

void checkDatafeedStatus(api.DatafeedStatus o) {
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    checkUnnamed4184(o.errors);
    unittest.expect(o.itemsTotal, unittest.equals('foo'));
    unittest.expect(o.itemsValid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastUploadDate, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    checkUnnamed4185(o.warnings);
  }
  buildCounterDatafeedStatus--;
}

core.List<api.DatafeedStatusExample> buildUnnamed4186() {
  var o = <api.DatafeedStatusExample>[];
  o.add(buildDatafeedStatusExample());
  o.add(buildDatafeedStatusExample());
  return o;
}

void checkUnnamed4186(core.List<api.DatafeedStatusExample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusExample(o[0] as api.DatafeedStatusExample);
  checkDatafeedStatusExample(o[1] as api.DatafeedStatusExample);
}

core.int buildCounterDatafeedStatusError = 0;
api.DatafeedStatusError buildDatafeedStatusError() {
  var o = api.DatafeedStatusError();
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    o.code = 'foo';
    o.count = 'foo';
    o.examples = buildUnnamed4186();
    o.message = 'foo';
  }
  buildCounterDatafeedStatusError--;
  return o;
}

void checkDatafeedStatusError(api.DatafeedStatusError o) {
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed4186(o.examples);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDatafeedStatusError--;
}

core.int buildCounterDatafeedStatusExample = 0;
api.DatafeedStatusExample buildDatafeedStatusExample() {
  var o = api.DatafeedStatusExample();
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
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.lineNumber, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDatafeedStatusExample--;
}

core.List<core.String> buildUnnamed4187() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4187(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4188() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4188(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatafeedTarget = 0;
api.DatafeedTarget buildDatafeedTarget() {
  var o = api.DatafeedTarget();
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    o.country = 'foo';
    o.excludedDestinations = buildUnnamed4187();
    o.includedDestinations = buildUnnamed4188();
    o.language = 'foo';
  }
  buildCounterDatafeedTarget--;
  return o;
}

void checkDatafeedTarget(api.DatafeedTarget o) {
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed4187(o.excludedDestinations);
    checkUnnamed4188(o.includedDestinations);
    unittest.expect(o.language, unittest.equals('foo'));
  }
  buildCounterDatafeedTarget--;
}

core.List<api.DatafeedsCustomBatchRequestEntry> buildUnnamed4189() {
  var o = <api.DatafeedsCustomBatchRequestEntry>[];
  o.add(buildDatafeedsCustomBatchRequestEntry());
  o.add(buildDatafeedsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4189(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(
      o[0] as api.DatafeedsCustomBatchRequestEntry);
  checkDatafeedsCustomBatchRequestEntry(
      o[1] as api.DatafeedsCustomBatchRequestEntry);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
api.DatafeedsCustomBatchRequest buildDatafeedsCustomBatchRequest() {
  var o = api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed4189();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

void checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed4189(o.entries);
  }
  buildCounterDatafeedsCustomBatchRequest--;
}

core.int buildCounterDatafeedsCustomBatchRequestEntry = 0;
api.DatafeedsCustomBatchRequestEntry buildDatafeedsCustomBatchRequestEntry() {
  var o = api.DatafeedsCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeed(o.datafeed as api.Datafeed);
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
}

core.List<api.DatafeedsCustomBatchResponseEntry> buildUnnamed4190() {
  var o = <api.DatafeedsCustomBatchResponseEntry>[];
  o.add(buildDatafeedsCustomBatchResponseEntry());
  o.add(buildDatafeedsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4190(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(
      o[0] as api.DatafeedsCustomBatchResponseEntry);
  checkDatafeedsCustomBatchResponseEntry(
      o[1] as api.DatafeedsCustomBatchResponseEntry);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
api.DatafeedsCustomBatchResponse buildDatafeedsCustomBatchResponse() {
  var o = api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed4190();
    o.kind = 'foo';
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

void checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed4190(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedsCustomBatchResponse--;
}

core.int buildCounterDatafeedsCustomBatchResponseEntry = 0;
api.DatafeedsCustomBatchResponseEntry buildDatafeedsCustomBatchResponseEntry() {
  var o = api.DatafeedsCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeed(o.datafeed as api.Datafeed);
    checkErrors(o.errors as api.Errors);
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
}

core.int buildCounterDatafeedsFetchNowResponse = 0;
api.DatafeedsFetchNowResponse buildDatafeedsFetchNowResponse() {
  var o = api.DatafeedsFetchNowResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedsFetchNowResponse--;
}

core.List<api.Datafeed> buildUnnamed4191() {
  var o = <api.Datafeed>[];
  o.add(buildDatafeed());
  o.add(buildDatafeed());
  return o;
}

void checkUnnamed4191(core.List<api.Datafeed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeed(o[0] as api.Datafeed);
  checkDatafeed(o[1] as api.Datafeed);
}

core.int buildCounterDatafeedsListResponse = 0;
api.DatafeedsListResponse buildDatafeedsListResponse() {
  var o = api.DatafeedsListResponse();
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4191();
  }
  buildCounterDatafeedsListResponse--;
  return o;
}

void checkDatafeedsListResponse(api.DatafeedsListResponse o) {
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4191(o.resources);
  }
  buildCounterDatafeedsListResponse--;
}

core.List<api.DatafeedstatusesCustomBatchRequestEntry> buildUnnamed4192() {
  var o = <api.DatafeedstatusesCustomBatchRequestEntry>[];
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4192(
    core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchRequestEntry(
      o[0] as api.DatafeedstatusesCustomBatchRequestEntry);
  checkDatafeedstatusesCustomBatchRequestEntry(
      o[1] as api.DatafeedstatusesCustomBatchRequestEntry);
}

core.int buildCounterDatafeedstatusesCustomBatchRequest = 0;
api.DatafeedstatusesCustomBatchRequest
    buildDatafeedstatusesCustomBatchRequest() {
  var o = api.DatafeedstatusesCustomBatchRequest();
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed4192();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

void checkDatafeedstatusesCustomBatchRequest(
    api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed4192(o.entries);
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
}

core.int buildCounterDatafeedstatusesCustomBatchRequestEntry = 0;
api.DatafeedstatusesCustomBatchRequestEntry
    buildDatafeedstatusesCustomBatchRequestEntry() {
  var o = api.DatafeedstatusesCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
}

core.List<api.DatafeedstatusesCustomBatchResponseEntry> buildUnnamed4193() {
  var o = <api.DatafeedstatusesCustomBatchResponseEntry>[];
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4193(
    core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchResponseEntry(
      o[0] as api.DatafeedstatusesCustomBatchResponseEntry);
  checkDatafeedstatusesCustomBatchResponseEntry(
      o[1] as api.DatafeedstatusesCustomBatchResponseEntry);
}

core.int buildCounterDatafeedstatusesCustomBatchResponse = 0;
api.DatafeedstatusesCustomBatchResponse
    buildDatafeedstatusesCustomBatchResponse() {
  var o = api.DatafeedstatusesCustomBatchResponse();
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed4193();
    o.kind = 'foo';
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

void checkDatafeedstatusesCustomBatchResponse(
    api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed4193(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
}

core.int buildCounterDatafeedstatusesCustomBatchResponseEntry = 0;
api.DatafeedstatusesCustomBatchResponseEntry
    buildDatafeedstatusesCustomBatchResponseEntry() {
  var o = api.DatafeedstatusesCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeedStatus(o.datafeedStatus as api.DatafeedStatus);
    checkErrors(o.errors as api.Errors);
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
}

core.List<api.DatafeedStatus> buildUnnamed4194() {
  var o = <api.DatafeedStatus>[];
  o.add(buildDatafeedStatus());
  o.add(buildDatafeedStatus());
  return o;
}

void checkUnnamed4194(core.List<api.DatafeedStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatus(o[0] as api.DatafeedStatus);
  checkDatafeedStatus(o[1] as api.DatafeedStatus);
}

core.int buildCounterDatafeedstatusesListResponse = 0;
api.DatafeedstatusesListResponse buildDatafeedstatusesListResponse() {
  var o = api.DatafeedstatusesListResponse();
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4194();
  }
  buildCounterDatafeedstatusesListResponse--;
  return o;
}

void checkDatafeedstatusesListResponse(api.DatafeedstatusesListResponse o) {
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4194(o.resources);
  }
  buildCounterDatafeedstatusesListResponse--;
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
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDateTime = 0;
api.DateTime buildDateTime() {
  var o = api.DateTime();
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
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
    checkTimeZone(o.timeZone as api.TimeZone);
    unittest.expect(o.utcOffset, unittest.equals('foo'));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDateTime--;
}

core.List<api.HolidayCutoff> buildUnnamed4195() {
  var o = <api.HolidayCutoff>[];
  o.add(buildHolidayCutoff());
  o.add(buildHolidayCutoff());
  return o;
}

void checkUnnamed4195(core.List<api.HolidayCutoff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidayCutoff(o[0] as api.HolidayCutoff);
  checkHolidayCutoff(o[1] as api.HolidayCutoff);
}

core.int buildCounterDeliveryTime = 0;
api.DeliveryTime buildDeliveryTime() {
  var o = api.DeliveryTime();
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    o.cutoffTime = buildCutoffTime();
    o.handlingBusinessDayConfig = buildBusinessDayConfig();
    o.holidayCutoffs = buildUnnamed4195();
    o.maxHandlingTimeInDays = 42;
    o.maxTransitTimeInDays = 42;
    o.minHandlingTimeInDays = 42;
    o.minTransitTimeInDays = 42;
    o.transitBusinessDayConfig = buildBusinessDayConfig();
    o.transitTimeTable = buildTransitTable();
  }
  buildCounterDeliveryTime--;
  return o;
}

void checkDeliveryTime(api.DeliveryTime o) {
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    checkCutoffTime(o.cutoffTime as api.CutoffTime);
    checkBusinessDayConfig(
        o.handlingBusinessDayConfig as api.BusinessDayConfig);
    checkUnnamed4195(o.holidayCutoffs);
    unittest.expect(o.maxHandlingTimeInDays, unittest.equals(42));
    unittest.expect(o.maxTransitTimeInDays, unittest.equals(42));
    unittest.expect(o.minHandlingTimeInDays, unittest.equals(42));
    unittest.expect(o.minTransitTimeInDays, unittest.equals(42));
    checkBusinessDayConfig(o.transitBusinessDayConfig as api.BusinessDayConfig);
    checkTransitTable(o.transitTimeTable as api.TransitTable);
  }
  buildCounterDeliveryTime--;
}

core.int buildCounterError = 0;
api.Error buildError() {
  var o = api.Error();
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
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterError--;
}

core.List<api.Error> buildUnnamed4196() {
  var o = <api.Error>[];
  o.add(buildError());
  o.add(buildError());
  return o;
}

void checkUnnamed4196(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0] as api.Error);
  checkError(o[1] as api.Error);
}

core.int buildCounterErrors = 0;
api.Errors buildErrors() {
  var o = api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 42;
    o.errors = buildUnnamed4196();
    o.message = 'foo';
  }
  buildCounterErrors--;
  return o;
}

void checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4196(o.errors);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterErrors--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed4197() {
  var o = <api.GmbAccountsGmbAccount>[];
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

void checkUnnamed4197(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0] as api.GmbAccountsGmbAccount);
  checkGmbAccountsGmbAccount(o[1] as api.GmbAccountsGmbAccount);
}

core.int buildCounterGmbAccounts = 0;
api.GmbAccounts buildGmbAccounts() {
  var o = api.GmbAccounts();
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    o.accountId = 'foo';
    o.gmbAccounts = buildUnnamed4197();
  }
  buildCounterGmbAccounts--;
  return o;
}

void checkGmbAccounts(api.GmbAccounts o) {
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4197(o.gmbAccounts);
  }
  buildCounterGmbAccounts--;
}

core.int buildCounterGmbAccountsGmbAccount = 0;
api.GmbAccountsGmbAccount buildGmbAccountsGmbAccount() {
  var o = api.GmbAccountsGmbAccount();
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
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.listingCount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGmbAccountsGmbAccount--;
}

core.List<api.LocationIdSet> buildUnnamed4198() {
  var o = <api.LocationIdSet>[];
  o.add(buildLocationIdSet());
  o.add(buildLocationIdSet());
  return o;
}

void checkUnnamed4198(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0] as api.LocationIdSet);
  checkLocationIdSet(o[1] as api.LocationIdSet);
}

core.List<core.String> buildUnnamed4199() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4199(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4200() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4200(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Price> buildUnnamed4201() {
  var o = <api.Price>[];
  o.add(buildPrice());
  o.add(buildPrice());
  return o;
}

void checkUnnamed4201(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0] as api.Price);
  checkPrice(o[1] as api.Price);
}

core.List<api.Weight> buildUnnamed4202() {
  var o = <api.Weight>[];
  o.add(buildWeight());
  o.add(buildWeight());
  return o;
}

void checkUnnamed4202(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0] as api.Weight);
  checkWeight(o[1] as api.Weight);
}

core.int buildCounterHeaders = 0;
api.Headers buildHeaders() {
  var o = api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed4198();
    o.numberOfItems = buildUnnamed4199();
    o.postalCodeGroupNames = buildUnnamed4200();
    o.prices = buildUnnamed4201();
    o.weights = buildUnnamed4202();
  }
  buildCounterHeaders--;
  return o;
}

void checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed4198(o.locations);
    checkUnnamed4199(o.numberOfItems);
    checkUnnamed4200(o.postalCodeGroupNames);
    checkUnnamed4201(o.prices);
    checkUnnamed4202(o.weights);
  }
  buildCounterHeaders--;
}

core.int buildCounterHolidayCutoff = 0;
api.HolidayCutoff buildHolidayCutoff() {
  var o = api.HolidayCutoff();
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
    unittest.expect(o.deadlineDate, unittest.equals('foo'));
    unittest.expect(o.deadlineHour, unittest.equals(42));
    unittest.expect(o.deadlineTimezone, unittest.equals('foo'));
    unittest.expect(o.holidayId, unittest.equals('foo'));
    unittest.expect(o.visibleFromDate, unittest.equals('foo'));
  }
  buildCounterHolidayCutoff--;
}

core.int buildCounterHolidaysHoliday = 0;
api.HolidaysHoliday buildHolidaysHoliday() {
  var o = api.HolidaysHoliday();
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
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.date, unittest.equals('foo'));
    unittest.expect(o.deliveryGuaranteeDate, unittest.equals('foo'));
    unittest.expect(o.deliveryGuaranteeHour, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterHolidaysHoliday--;
}

core.int buildCounterInapplicabilityDetails = 0;
api.InapplicabilityDetails buildInapplicabilityDetails() {
  var o = api.InapplicabilityDetails();
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
    unittest.expect(o.inapplicableCount, unittest.equals('foo'));
    unittest.expect(o.inapplicableReason, unittest.equals('foo'));
  }
  buildCounterInapplicabilityDetails--;
}

core.int buildCounterInstallment = 0;
api.Installment buildInstallment() {
  var o = api.Installment();
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
    checkPrice(o.amount as api.Price);
    unittest.expect(o.months, unittest.equals('foo'));
  }
  buildCounterInstallment--;
}

core.List<api.InvoiceSummaryAdditionalChargeSummary> buildUnnamed4203() {
  var o = <api.InvoiceSummaryAdditionalChargeSummary>[];
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  return o;
}

void checkUnnamed4203(core.List<api.InvoiceSummaryAdditionalChargeSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceSummaryAdditionalChargeSummary(
      o[0] as api.InvoiceSummaryAdditionalChargeSummary);
  checkInvoiceSummaryAdditionalChargeSummary(
      o[1] as api.InvoiceSummaryAdditionalChargeSummary);
}

core.int buildCounterInvoiceSummary = 0;
api.InvoiceSummary buildInvoiceSummary() {
  var o = api.InvoiceSummary();
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    o.additionalChargeSummaries = buildUnnamed4203();
    o.productTotal = buildAmount();
  }
  buildCounterInvoiceSummary--;
  return o;
}

void checkInvoiceSummary(api.InvoiceSummary o) {
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    checkUnnamed4203(o.additionalChargeSummaries);
    checkAmount(o.productTotal as api.Amount);
  }
  buildCounterInvoiceSummary--;
}

core.int buildCounterInvoiceSummaryAdditionalChargeSummary = 0;
api.InvoiceSummaryAdditionalChargeSummary
    buildInvoiceSummaryAdditionalChargeSummary() {
  var o = api.InvoiceSummaryAdditionalChargeSummary();
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
    checkAmount(o.totalAmount as api.Amount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
}

core.List<core.String> buildUnnamed4204() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4204(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLabelIds = 0;
api.LabelIds buildLabelIds() {
  var o = api.LabelIds();
  buildCounterLabelIds++;
  if (buildCounterLabelIds < 3) {
    o.labelIds = buildUnnamed4204();
  }
  buildCounterLabelIds--;
  return o;
}

void checkLabelIds(api.LabelIds o) {
  buildCounterLabelIds++;
  if (buildCounterLabelIds < 3) {
    checkUnnamed4204(o.labelIds);
  }
  buildCounterLabelIds--;
}

core.int buildCounterLiaAboutPageSettings = 0;
api.LiaAboutPageSettings buildLiaAboutPageSettings() {
  var o = api.LiaAboutPageSettings();
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
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLiaAboutPageSettings--;
}

core.int buildCounterLiaCountrySettings = 0;
api.LiaCountrySettings buildLiaCountrySettings() {
  var o = api.LiaCountrySettings();
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
    checkLiaAboutPageSettings(o.about as api.LiaAboutPageSettings);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.hostedLocalStorefrontActive, unittest.isTrue);
    checkLiaInventorySettings(o.inventory as api.LiaInventorySettings);
    checkLiaOnDisplayToOrderSettings(
        o.onDisplayToOrder as api.LiaOnDisplayToOrderSettings);
    checkLiaPosDataProvider(o.posDataProvider as api.LiaPosDataProvider);
    unittest.expect(o.storePickupActive, unittest.isTrue);
  }
  buildCounterLiaCountrySettings--;
}

core.int buildCounterLiaInventorySettings = 0;
api.LiaInventorySettings buildLiaInventorySettings() {
  var o = api.LiaInventorySettings();
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
        o.inventoryVerificationContactEmail, unittest.equals('foo'));
    unittest.expect(o.inventoryVerificationContactName, unittest.equals('foo'));
    unittest.expect(
        o.inventoryVerificationContactStatus, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLiaInventorySettings--;
}

core.int buildCounterLiaOnDisplayToOrderSettings = 0;
api.LiaOnDisplayToOrderSettings buildLiaOnDisplayToOrderSettings() {
  var o = api.LiaOnDisplayToOrderSettings();
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
    unittest.expect(o.shippingCostPolicyUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLiaOnDisplayToOrderSettings--;
}

core.int buildCounterLiaPosDataProvider = 0;
api.LiaPosDataProvider buildLiaPosDataProvider() {
  var o = api.LiaPosDataProvider();
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
    unittest.expect(o.posDataProviderId, unittest.equals('foo'));
    unittest.expect(o.posExternalAccountId, unittest.equals('foo'));
  }
  buildCounterLiaPosDataProvider--;
}

core.List<api.LiaCountrySettings> buildUnnamed4205() {
  var o = <api.LiaCountrySettings>[];
  o.add(buildLiaCountrySettings());
  o.add(buildLiaCountrySettings());
  return o;
}

void checkUnnamed4205(core.List<api.LiaCountrySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaCountrySettings(o[0] as api.LiaCountrySettings);
  checkLiaCountrySettings(o[1] as api.LiaCountrySettings);
}

core.int buildCounterLiaSettings = 0;
api.LiaSettings buildLiaSettings() {
  var o = api.LiaSettings();
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    o.accountId = 'foo';
    o.countrySettings = buildUnnamed4205();
    o.kind = 'foo';
  }
  buildCounterLiaSettings--;
  return o;
}

void checkLiaSettings(api.LiaSettings o) {
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4205(o.countrySettings);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiaSettings--;
}

core.List<api.LiasettingsCustomBatchRequestEntry> buildUnnamed4206() {
  var o = <api.LiasettingsCustomBatchRequestEntry>[];
  o.add(buildLiasettingsCustomBatchRequestEntry());
  o.add(buildLiasettingsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4206(core.List<api.LiasettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchRequestEntry(
      o[0] as api.LiasettingsCustomBatchRequestEntry);
  checkLiasettingsCustomBatchRequestEntry(
      o[1] as api.LiasettingsCustomBatchRequestEntry);
}

core.int buildCounterLiasettingsCustomBatchRequest = 0;
api.LiasettingsCustomBatchRequest buildLiasettingsCustomBatchRequest() {
  var o = api.LiasettingsCustomBatchRequest();
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed4206();
  }
  buildCounterLiasettingsCustomBatchRequest--;
  return o;
}

void checkLiasettingsCustomBatchRequest(api.LiasettingsCustomBatchRequest o) {
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    checkUnnamed4206(o.entries);
  }
  buildCounterLiasettingsCustomBatchRequest--;
}

core.int buildCounterLiasettingsCustomBatchRequestEntry = 0;
api.LiasettingsCustomBatchRequestEntry
    buildLiasettingsCustomBatchRequestEntry() {
  var o = api.LiasettingsCustomBatchRequestEntry();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.contactEmail, unittest.equals('foo'));
    unittest.expect(o.contactName, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.gmbEmail, unittest.equals('foo'));
    checkLiaSettings(o.liaSettings as api.LiaSettings);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.posDataProviderId, unittest.equals('foo'));
    unittest.expect(o.posExternalAccountId, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
}

core.List<api.LiasettingsCustomBatchResponseEntry> buildUnnamed4207() {
  var o = <api.LiasettingsCustomBatchResponseEntry>[];
  o.add(buildLiasettingsCustomBatchResponseEntry());
  o.add(buildLiasettingsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4207(core.List<api.LiasettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchResponseEntry(
      o[0] as api.LiasettingsCustomBatchResponseEntry);
  checkLiasettingsCustomBatchResponseEntry(
      o[1] as api.LiasettingsCustomBatchResponseEntry);
}

core.int buildCounterLiasettingsCustomBatchResponse = 0;
api.LiasettingsCustomBatchResponse buildLiasettingsCustomBatchResponse() {
  var o = api.LiasettingsCustomBatchResponse();
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed4207();
    o.kind = 'foo';
  }
  buildCounterLiasettingsCustomBatchResponse--;
  return o;
}

void checkLiasettingsCustomBatchResponse(api.LiasettingsCustomBatchResponse o) {
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    checkUnnamed4207(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchResponse--;
}

core.List<api.PosDataProviders> buildUnnamed4208() {
  var o = <api.PosDataProviders>[];
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

void checkUnnamed4208(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0] as api.PosDataProviders);
  checkPosDataProviders(o[1] as api.PosDataProviders);
}

core.int buildCounterLiasettingsCustomBatchResponseEntry = 0;
api.LiasettingsCustomBatchResponseEntry
    buildLiasettingsCustomBatchResponseEntry() {
  var o = api.LiasettingsCustomBatchResponseEntry();
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.gmbAccounts = buildGmbAccounts();
    o.kind = 'foo';
    o.liaSettings = buildLiaSettings();
    o.posDataProviders = buildUnnamed4208();
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
  return o;
}

void checkLiasettingsCustomBatchResponseEntry(
    api.LiasettingsCustomBatchResponseEntry o) {
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    checkGmbAccounts(o.gmbAccounts as api.GmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiaSettings(o.liaSettings as api.LiaSettings);
    checkUnnamed4208(o.posDataProviders);
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed4209() {
  var o = <api.GmbAccountsGmbAccount>[];
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

void checkUnnamed4209(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0] as api.GmbAccountsGmbAccount);
  checkGmbAccountsGmbAccount(o[1] as api.GmbAccountsGmbAccount);
}

core.int buildCounterLiasettingsGetAccessibleGmbAccountsResponse = 0;
api.LiasettingsGetAccessibleGmbAccountsResponse
    buildLiasettingsGetAccessibleGmbAccountsResponse() {
  var o = api.LiasettingsGetAccessibleGmbAccountsResponse();
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    o.accountId = 'foo';
    o.gmbAccounts = buildUnnamed4209();
    o.kind = 'foo';
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
  return o;
}

void checkLiasettingsGetAccessibleGmbAccountsResponse(
    api.LiasettingsGetAccessibleGmbAccountsResponse o) {
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4209(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
}

core.List<api.PosDataProviders> buildUnnamed4210() {
  var o = <api.PosDataProviders>[];
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

void checkUnnamed4210(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0] as api.PosDataProviders);
  checkPosDataProviders(o[1] as api.PosDataProviders);
}

core.int buildCounterLiasettingsListPosDataProvidersResponse = 0;
api.LiasettingsListPosDataProvidersResponse
    buildLiasettingsListPosDataProvidersResponse() {
  var o = api.LiasettingsListPosDataProvidersResponse();
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    o.kind = 'foo';
    o.posDataProviders = buildUnnamed4210();
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
  return o;
}

void checkLiasettingsListPosDataProvidersResponse(
    api.LiasettingsListPosDataProvidersResponse o) {
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4210(o.posDataProviders);
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
}

core.List<api.LiaSettings> buildUnnamed4211() {
  var o = <api.LiaSettings>[];
  o.add(buildLiaSettings());
  o.add(buildLiaSettings());
  return o;
}

void checkUnnamed4211(core.List<api.LiaSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaSettings(o[0] as api.LiaSettings);
  checkLiaSettings(o[1] as api.LiaSettings);
}

core.int buildCounterLiasettingsListResponse = 0;
api.LiasettingsListResponse buildLiasettingsListResponse() {
  var o = api.LiasettingsListResponse();
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4211();
  }
  buildCounterLiasettingsListResponse--;
  return o;
}

void checkLiasettingsListResponse(api.LiasettingsListResponse o) {
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4211(o.resources);
  }
  buildCounterLiasettingsListResponse--;
}

core.int buildCounterLiasettingsRequestGmbAccessResponse = 0;
api.LiasettingsRequestGmbAccessResponse
    buildLiasettingsRequestGmbAccessResponse() {
  var o = api.LiasettingsRequestGmbAccessResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
}

core.int buildCounterLiasettingsRequestInventoryVerificationResponse = 0;
api.LiasettingsRequestInventoryVerificationResponse
    buildLiasettingsRequestInventoryVerificationResponse() {
  var o = api.LiasettingsRequestInventoryVerificationResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
}

core.int buildCounterLiasettingsSetInventoryVerificationContactResponse = 0;
api.LiasettingsSetInventoryVerificationContactResponse
    buildLiasettingsSetInventoryVerificationContactResponse() {
  var o = api.LiasettingsSetInventoryVerificationContactResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
}

core.int buildCounterLiasettingsSetPosDataProviderResponse = 0;
api.LiasettingsSetPosDataProviderResponse
    buildLiasettingsSetPosDataProviderResponse() {
  var o = api.LiasettingsSetPosDataProviderResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsSetPosDataProviderResponse--;
}

core.int buildCounterLinkService = 0;
api.LinkService buildLinkService() {
  var o = api.LinkService();
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
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLinkService--;
}

core.List<api.LinkService> buildUnnamed4212() {
  var o = <api.LinkService>[];
  o.add(buildLinkService());
  o.add(buildLinkService());
  return o;
}

void checkUnnamed4212(core.List<api.LinkService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkService(o[0] as api.LinkService);
  checkLinkService(o[1] as api.LinkService);
}

core.int buildCounterLinkedAccount = 0;
api.LinkedAccount buildLinkedAccount() {
  var o = api.LinkedAccount();
  buildCounterLinkedAccount++;
  if (buildCounterLinkedAccount < 3) {
    o.linkedAccountId = 'foo';
    o.services = buildUnnamed4212();
  }
  buildCounterLinkedAccount--;
  return o;
}

void checkLinkedAccount(api.LinkedAccount o) {
  buildCounterLinkedAccount++;
  if (buildCounterLinkedAccount < 3) {
    unittest.expect(o.linkedAccountId, unittest.equals('foo'));
    checkUnnamed4212(o.services);
  }
  buildCounterLinkedAccount--;
}

core.List<api.AccountLabel> buildUnnamed4213() {
  var o = <api.AccountLabel>[];
  o.add(buildAccountLabel());
  o.add(buildAccountLabel());
  return o;
}

void checkUnnamed4213(core.List<api.AccountLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountLabel(o[0] as api.AccountLabel);
  checkAccountLabel(o[1] as api.AccountLabel);
}

core.int buildCounterListAccountLabelsResponse = 0;
api.ListAccountLabelsResponse buildListAccountLabelsResponse() {
  var o = api.ListAccountLabelsResponse();
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    o.accountLabels = buildUnnamed4213();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountLabelsResponse--;
  return o;
}

void checkListAccountLabelsResponse(api.ListAccountLabelsResponse o) {
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    checkUnnamed4213(o.accountLabels);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAccountLabelsResponse--;
}

core.List<api.AccountReturnCarrier> buildUnnamed4214() {
  var o = <api.AccountReturnCarrier>[];
  o.add(buildAccountReturnCarrier());
  o.add(buildAccountReturnCarrier());
  return o;
}

void checkUnnamed4214(core.List<api.AccountReturnCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountReturnCarrier(o[0] as api.AccountReturnCarrier);
  checkAccountReturnCarrier(o[1] as api.AccountReturnCarrier);
}

core.int buildCounterListAccountReturnCarrierResponse = 0;
api.ListAccountReturnCarrierResponse buildListAccountReturnCarrierResponse() {
  var o = api.ListAccountReturnCarrierResponse();
  buildCounterListAccountReturnCarrierResponse++;
  if (buildCounterListAccountReturnCarrierResponse < 3) {
    o.accountReturnCarriers = buildUnnamed4214();
  }
  buildCounterListAccountReturnCarrierResponse--;
  return o;
}

void checkListAccountReturnCarrierResponse(
    api.ListAccountReturnCarrierResponse o) {
  buildCounterListAccountReturnCarrierResponse++;
  if (buildCounterListAccountReturnCarrierResponse < 3) {
    checkUnnamed4214(o.accountReturnCarriers);
  }
  buildCounterListAccountReturnCarrierResponse--;
}

core.List<api.CollectionStatus> buildUnnamed4215() {
  var o = <api.CollectionStatus>[];
  o.add(buildCollectionStatus());
  o.add(buildCollectionStatus());
  return o;
}

void checkUnnamed4215(core.List<api.CollectionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectionStatus(o[0] as api.CollectionStatus);
  checkCollectionStatus(o[1] as api.CollectionStatus);
}

core.int buildCounterListCollectionStatusesResponse = 0;
api.ListCollectionStatusesResponse buildListCollectionStatusesResponse() {
  var o = api.ListCollectionStatusesResponse();
  buildCounterListCollectionStatusesResponse++;
  if (buildCounterListCollectionStatusesResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4215();
  }
  buildCounterListCollectionStatusesResponse--;
  return o;
}

void checkListCollectionStatusesResponse(api.ListCollectionStatusesResponse o) {
  buildCounterListCollectionStatusesResponse++;
  if (buildCounterListCollectionStatusesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4215(o.resources);
  }
  buildCounterListCollectionStatusesResponse--;
}

core.List<api.Collection> buildUnnamed4216() {
  var o = <api.Collection>[];
  o.add(buildCollection());
  o.add(buildCollection());
  return o;
}

void checkUnnamed4216(core.List<api.Collection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollection(o[0] as api.Collection);
  checkCollection(o[1] as api.Collection);
}

core.int buildCounterListCollectionsResponse = 0;
api.ListCollectionsResponse buildListCollectionsResponse() {
  var o = api.ListCollectionsResponse();
  buildCounterListCollectionsResponse++;
  if (buildCounterListCollectionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4216();
  }
  buildCounterListCollectionsResponse--;
  return o;
}

void checkListCollectionsResponse(api.ListCollectionsResponse o) {
  buildCounterListCollectionsResponse++;
  if (buildCounterListCollectionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4216(o.resources);
  }
  buildCounterListCollectionsResponse--;
}

core.List<api.Css> buildUnnamed4217() {
  var o = <api.Css>[];
  o.add(buildCss());
  o.add(buildCss());
  return o;
}

void checkUnnamed4217(core.List<api.Css> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCss(o[0] as api.Css);
  checkCss(o[1] as api.Css);
}

core.int buildCounterListCssesResponse = 0;
api.ListCssesResponse buildListCssesResponse() {
  var o = api.ListCssesResponse();
  buildCounterListCssesResponse++;
  if (buildCounterListCssesResponse < 3) {
    o.csses = buildUnnamed4217();
    o.nextPageToken = 'foo';
  }
  buildCounterListCssesResponse--;
  return o;
}

void checkListCssesResponse(api.ListCssesResponse o) {
  buildCounterListCssesResponse++;
  if (buildCounterListCssesResponse < 3) {
    checkUnnamed4217(o.csses);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCssesResponse--;
}

core.List<api.Region> buildUnnamed4218() {
  var o = <api.Region>[];
  o.add(buildRegion());
  o.add(buildRegion());
  return o;
}

void checkUnnamed4218(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0] as api.Region);
  checkRegion(o[1] as api.Region);
}

core.int buildCounterListRegionsResponse = 0;
api.ListRegionsResponse buildListRegionsResponse() {
  var o = api.ListRegionsResponse();
  buildCounterListRegionsResponse++;
  if (buildCounterListRegionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.regions = buildUnnamed4218();
  }
  buildCounterListRegionsResponse--;
  return o;
}

void checkListRegionsResponse(api.ListRegionsResponse o) {
  buildCounterListRegionsResponse++;
  if (buildCounterListRegionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4218(o.regions);
  }
  buildCounterListRegionsResponse--;
}

core.List<api.RepricingProductReport> buildUnnamed4219() {
  var o = <api.RepricingProductReport>[];
  o.add(buildRepricingProductReport());
  o.add(buildRepricingProductReport());
  return o;
}

void checkUnnamed4219(core.List<api.RepricingProductReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingProductReport(o[0] as api.RepricingProductReport);
  checkRepricingProductReport(o[1] as api.RepricingProductReport);
}

core.int buildCounterListRepricingProductReportsResponse = 0;
api.ListRepricingProductReportsResponse
    buildListRepricingProductReportsResponse() {
  var o = api.ListRepricingProductReportsResponse();
  buildCounterListRepricingProductReportsResponse++;
  if (buildCounterListRepricingProductReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.repricingProductReports = buildUnnamed4219();
  }
  buildCounterListRepricingProductReportsResponse--;
  return o;
}

void checkListRepricingProductReportsResponse(
    api.ListRepricingProductReportsResponse o) {
  buildCounterListRepricingProductReportsResponse++;
  if (buildCounterListRepricingProductReportsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4219(o.repricingProductReports);
  }
  buildCounterListRepricingProductReportsResponse--;
}

core.List<api.RepricingRuleReport> buildUnnamed4220() {
  var o = <api.RepricingRuleReport>[];
  o.add(buildRepricingRuleReport());
  o.add(buildRepricingRuleReport());
  return o;
}

void checkUnnamed4220(core.List<api.RepricingRuleReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingRuleReport(o[0] as api.RepricingRuleReport);
  checkRepricingRuleReport(o[1] as api.RepricingRuleReport);
}

core.int buildCounterListRepricingRuleReportsResponse = 0;
api.ListRepricingRuleReportsResponse buildListRepricingRuleReportsResponse() {
  var o = api.ListRepricingRuleReportsResponse();
  buildCounterListRepricingRuleReportsResponse++;
  if (buildCounterListRepricingRuleReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.repricingRuleReports = buildUnnamed4220();
  }
  buildCounterListRepricingRuleReportsResponse--;
  return o;
}

void checkListRepricingRuleReportsResponse(
    api.ListRepricingRuleReportsResponse o) {
  buildCounterListRepricingRuleReportsResponse++;
  if (buildCounterListRepricingRuleReportsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4220(o.repricingRuleReports);
  }
  buildCounterListRepricingRuleReportsResponse--;
}

core.List<api.RepricingRule> buildUnnamed4221() {
  var o = <api.RepricingRule>[];
  o.add(buildRepricingRule());
  o.add(buildRepricingRule());
  return o;
}

void checkUnnamed4221(core.List<api.RepricingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingRule(o[0] as api.RepricingRule);
  checkRepricingRule(o[1] as api.RepricingRule);
}

core.int buildCounterListRepricingRulesResponse = 0;
api.ListRepricingRulesResponse buildListRepricingRulesResponse() {
  var o = api.ListRepricingRulesResponse();
  buildCounterListRepricingRulesResponse++;
  if (buildCounterListRepricingRulesResponse < 3) {
    o.nextPageToken = 'foo';
    o.repricingRules = buildUnnamed4221();
  }
  buildCounterListRepricingRulesResponse--;
  return o;
}

void checkListRepricingRulesResponse(api.ListRepricingRulesResponse o) {
  buildCounterListRepricingRulesResponse++;
  if (buildCounterListRepricingRulesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4221(o.repricingRules);
  }
  buildCounterListRepricingRulesResponse--;
}

core.int buildCounterLocalInventory = 0;
api.LocalInventory buildLocalInventory() {
  var o = api.LocalInventory();
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
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.instoreProductLocation, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.pickupMethod, unittest.equals('foo'));
    unittest.expect(o.pickupSla, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals(42));
    checkPrice(o.salePrice as api.Price);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
  }
  buildCounterLocalInventory--;
}

core.List<api.LocalinventoryCustomBatchRequestEntry> buildUnnamed4222() {
  var o = <api.LocalinventoryCustomBatchRequestEntry>[];
  o.add(buildLocalinventoryCustomBatchRequestEntry());
  o.add(buildLocalinventoryCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4222(core.List<api.LocalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchRequestEntry(
      o[0] as api.LocalinventoryCustomBatchRequestEntry);
  checkLocalinventoryCustomBatchRequestEntry(
      o[1] as api.LocalinventoryCustomBatchRequestEntry);
}

core.int buildCounterLocalinventoryCustomBatchRequest = 0;
api.LocalinventoryCustomBatchRequest buildLocalinventoryCustomBatchRequest() {
  var o = api.LocalinventoryCustomBatchRequest();
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed4222();
  }
  buildCounterLocalinventoryCustomBatchRequest--;
  return o;
}

void checkLocalinventoryCustomBatchRequest(
    api.LocalinventoryCustomBatchRequest o) {
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    checkUnnamed4222(o.entries);
  }
  buildCounterLocalinventoryCustomBatchRequest--;
}

core.int buildCounterLocalinventoryCustomBatchRequestEntry = 0;
api.LocalinventoryCustomBatchRequestEntry
    buildLocalinventoryCustomBatchRequestEntry() {
  var o = api.LocalinventoryCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkLocalInventory(o.localInventory as api.LocalInventory);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterLocalinventoryCustomBatchRequestEntry--;
}

core.List<api.LocalinventoryCustomBatchResponseEntry> buildUnnamed4223() {
  var o = <api.LocalinventoryCustomBatchResponseEntry>[];
  o.add(buildLocalinventoryCustomBatchResponseEntry());
  o.add(buildLocalinventoryCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4223(core.List<api.LocalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchResponseEntry(
      o[0] as api.LocalinventoryCustomBatchResponseEntry);
  checkLocalinventoryCustomBatchResponseEntry(
      o[1] as api.LocalinventoryCustomBatchResponseEntry);
}

core.int buildCounterLocalinventoryCustomBatchResponse = 0;
api.LocalinventoryCustomBatchResponse buildLocalinventoryCustomBatchResponse() {
  var o = api.LocalinventoryCustomBatchResponse();
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed4223();
    o.kind = 'foo';
  }
  buildCounterLocalinventoryCustomBatchResponse--;
  return o;
}

void checkLocalinventoryCustomBatchResponse(
    api.LocalinventoryCustomBatchResponse o) {
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    checkUnnamed4223(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLocalinventoryCustomBatchResponse--;
}

core.int buildCounterLocalinventoryCustomBatchResponseEntry = 0;
api.LocalinventoryCustomBatchResponseEntry
    buildLocalinventoryCustomBatchResponseEntry() {
  var o = api.LocalinventoryCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLocalinventoryCustomBatchResponseEntry--;
}

core.List<core.String> buildUnnamed4224() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4224(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocationIdSet = 0;
api.LocationIdSet buildLocationIdSet() {
  var o = api.LocationIdSet();
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    o.locationIds = buildUnnamed4224();
  }
  buildCounterLocationIdSet--;
  return o;
}

void checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed4224(o.locationIds);
  }
  buildCounterLocationIdSet--;
}

core.int buildCounterLoyaltyPoints = 0;
api.LoyaltyPoints buildLoyaltyPoints() {
  var o = api.LoyaltyPoints();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pointsValue, unittest.equals('foo'));
    unittest.expect(o.ratio, unittest.equals(42.0));
  }
  buildCounterLoyaltyPoints--;
}

core.List<api.MerchantOrderReturnItem> buildUnnamed4225() {
  var o = <api.MerchantOrderReturnItem>[];
  o.add(buildMerchantOrderReturnItem());
  o.add(buildMerchantOrderReturnItem());
  return o;
}

void checkUnnamed4225(core.List<api.MerchantOrderReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturnItem(o[0] as api.MerchantOrderReturnItem);
  checkMerchantOrderReturnItem(o[1] as api.MerchantOrderReturnItem);
}

core.List<api.ReturnShipment> buildUnnamed4226() {
  var o = <api.ReturnShipment>[];
  o.add(buildReturnShipment());
  o.add(buildReturnShipment());
  return o;
}

void checkUnnamed4226(core.List<api.ReturnShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnShipment(o[0] as api.ReturnShipment);
  checkReturnShipment(o[1] as api.ReturnShipment);
}

core.int buildCounterMerchantOrderReturn = 0;
api.MerchantOrderReturn buildMerchantOrderReturn() {
  var o = api.MerchantOrderReturn();
  buildCounterMerchantOrderReturn++;
  if (buildCounterMerchantOrderReturn < 3) {
    o.creationDate = 'foo';
    o.merchantOrderId = 'foo';
    o.orderId = 'foo';
    o.orderReturnId = 'foo';
    o.returnItems = buildUnnamed4225();
    o.returnPricingInfo = buildReturnPricingInfo();
    o.returnShipments = buildUnnamed4226();
  }
  buildCounterMerchantOrderReturn--;
  return o;
}

void checkMerchantOrderReturn(api.MerchantOrderReturn o) {
  buildCounterMerchantOrderReturn++;
  if (buildCounterMerchantOrderReturn < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.orderReturnId, unittest.equals('foo'));
    checkUnnamed4225(o.returnItems);
    checkReturnPricingInfo(o.returnPricingInfo as api.ReturnPricingInfo);
    checkUnnamed4226(o.returnShipments);
  }
  buildCounterMerchantOrderReturn--;
}

core.List<core.String> buildUnnamed4227() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4227(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMerchantOrderReturnItem = 0;
api.MerchantOrderReturnItem buildMerchantOrderReturnItem() {
  var o = api.MerchantOrderReturnItem();
  buildCounterMerchantOrderReturnItem++;
  if (buildCounterMerchantOrderReturnItem < 3) {
    o.customerReturnReason = buildCustomerReturnReason();
    o.itemId = 'foo';
    o.merchantRejectionReason = buildMerchantRejectionReason();
    o.merchantReturnReason = buildRefundReason();
    o.product = buildOrderLineItemProduct();
    o.refundableAmount = buildMonetaryAmount();
    o.returnItemId = 'foo';
    o.returnShipmentIds = buildUnnamed4227();
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
    checkCustomerReturnReason(
        o.customerReturnReason as api.CustomerReturnReason);
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkMerchantRejectionReason(
        o.merchantRejectionReason as api.MerchantRejectionReason);
    checkRefundReason(o.merchantReturnReason as api.RefundReason);
    checkOrderLineItemProduct(o.product as api.OrderLineItemProduct);
    checkMonetaryAmount(o.refundableAmount as api.MonetaryAmount);
    unittest.expect(o.returnItemId, unittest.equals('foo'));
    checkUnnamed4227(o.returnShipmentIds);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    unittest.expect(o.shipmentUnitId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMerchantOrderReturnItem--;
}

core.int buildCounterMerchantRejectionReason = 0;
api.MerchantRejectionReason buildMerchantRejectionReason() {
  var o = api.MerchantRejectionReason();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reasonCode, unittest.equals('foo'));
  }
  buildCounterMerchantRejectionReason--;
}

core.int buildCounterMetrics = 0;
api.Metrics buildMetrics() {
  var o = api.Metrics();
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    o.clicks = 'foo';
    o.ctr = 42.0;
    o.impressions = 'foo';
  }
  buildCounterMetrics--;
  return o;
}

void checkMetrics(api.Metrics o) {
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    unittest.expect(o.clicks, unittest.equals('foo'));
    unittest.expect(o.ctr, unittest.equals(42.0));
    unittest.expect(o.impressions, unittest.equals('foo'));
  }
  buildCounterMetrics--;
}

core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> buildUnnamed4228() {
  var o = <api.MinimumOrderValueTableStoreCodeSetWithMov>[];
  o.add(buildMinimumOrderValueTableStoreCodeSetWithMov());
  o.add(buildMinimumOrderValueTableStoreCodeSetWithMov());
  return o;
}

void checkUnnamed4228(
    core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMinimumOrderValueTableStoreCodeSetWithMov(
      o[0] as api.MinimumOrderValueTableStoreCodeSetWithMov);
  checkMinimumOrderValueTableStoreCodeSetWithMov(
      o[1] as api.MinimumOrderValueTableStoreCodeSetWithMov);
}

core.int buildCounterMinimumOrderValueTable = 0;
api.MinimumOrderValueTable buildMinimumOrderValueTable() {
  var o = api.MinimumOrderValueTable();
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    o.storeCodeSetWithMovs = buildUnnamed4228();
  }
  buildCounterMinimumOrderValueTable--;
  return o;
}

void checkMinimumOrderValueTable(api.MinimumOrderValueTable o) {
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    checkUnnamed4228(o.storeCodeSetWithMovs);
  }
  buildCounterMinimumOrderValueTable--;
}

core.List<core.String> buildUnnamed4229() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4229(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMinimumOrderValueTableStoreCodeSetWithMov = 0;
api.MinimumOrderValueTableStoreCodeSetWithMov
    buildMinimumOrderValueTableStoreCodeSetWithMov() {
  var o = api.MinimumOrderValueTableStoreCodeSetWithMov();
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov++;
  if (buildCounterMinimumOrderValueTableStoreCodeSetWithMov < 3) {
    o.storeCodes = buildUnnamed4229();
    o.value = buildPrice();
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
  return o;
}

void checkMinimumOrderValueTableStoreCodeSetWithMov(
    api.MinimumOrderValueTableStoreCodeSetWithMov o) {
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov++;
  if (buildCounterMinimumOrderValueTableStoreCodeSetWithMov < 3) {
    checkUnnamed4229(o.storeCodes);
    checkPrice(o.value as api.Price);
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
}

core.int buildCounterMonetaryAmount = 0;
api.MonetaryAmount buildMonetaryAmount() {
  var o = api.MonetaryAmount();
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
    checkPrice(o.priceAmount as api.Price);
    checkPrice(o.taxAmount as api.Price);
  }
  buildCounterMonetaryAmount--;
}

core.List<api.OrderOrderAnnotation> buildUnnamed4230() {
  var o = <api.OrderOrderAnnotation>[];
  o.add(buildOrderOrderAnnotation());
  o.add(buildOrderOrderAnnotation());
  return o;
}

void checkUnnamed4230(core.List<api.OrderOrderAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderOrderAnnotation(o[0] as api.OrderOrderAnnotation);
  checkOrderOrderAnnotation(o[1] as api.OrderOrderAnnotation);
}

core.List<api.OrderLineItem> buildUnnamed4231() {
  var o = <api.OrderLineItem>[];
  o.add(buildOrderLineItem());
  o.add(buildOrderLineItem());
  return o;
}

void checkUnnamed4231(core.List<api.OrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItem(o[0] as api.OrderLineItem);
  checkOrderLineItem(o[1] as api.OrderLineItem);
}

core.List<api.OrderPromotion> buildUnnamed4232() {
  var o = <api.OrderPromotion>[];
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

void checkUnnamed4232(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0] as api.OrderPromotion);
  checkOrderPromotion(o[1] as api.OrderPromotion);
}

core.List<api.OrderRefund> buildUnnamed4233() {
  var o = <api.OrderRefund>[];
  o.add(buildOrderRefund());
  o.add(buildOrderRefund());
  return o;
}

void checkUnnamed4233(core.List<api.OrderRefund> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderRefund(o[0] as api.OrderRefund);
  checkOrderRefund(o[1] as api.OrderRefund);
}

core.List<api.OrderShipment> buildUnnamed4234() {
  var o = <api.OrderShipment>[];
  o.add(buildOrderShipment());
  o.add(buildOrderShipment());
  return o;
}

void checkUnnamed4234(core.List<api.OrderShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipment(o[0] as api.OrderShipment);
  checkOrderShipment(o[1] as api.OrderShipment);
}

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  var o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.acknowledged = true;
    o.annotations = buildUnnamed4230();
    o.billingAddress = buildOrderAddress();
    o.customer = buildOrderCustomer();
    o.deliveryDetails = buildOrderDeliveryDetails();
    o.id = 'foo';
    o.kind = 'foo';
    o.lineItems = buildUnnamed4231();
    o.merchantId = 'foo';
    o.merchantOrderId = 'foo';
    o.netPriceAmount = buildPrice();
    o.netTaxAmount = buildPrice();
    o.paymentStatus = 'foo';
    o.pickupDetails = buildOrderPickupDetails();
    o.placedDate = 'foo';
    o.promotions = buildUnnamed4232();
    o.refunds = buildUnnamed4233();
    o.shipments = buildUnnamed4234();
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
    unittest.expect(o.acknowledged, unittest.isTrue);
    checkUnnamed4230(o.annotations);
    checkOrderAddress(o.billingAddress as api.OrderAddress);
    checkOrderCustomer(o.customer as api.OrderCustomer);
    checkOrderDeliveryDetails(o.deliveryDetails as api.OrderDeliveryDetails);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4231(o.lineItems);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    checkPrice(o.netPriceAmount as api.Price);
    checkPrice(o.netTaxAmount as api.Price);
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    checkOrderPickupDetails(o.pickupDetails as api.OrderPickupDetails);
    unittest.expect(o.placedDate, unittest.equals('foo'));
    checkUnnamed4232(o.promotions);
    checkUnnamed4233(o.refunds);
    checkUnnamed4234(o.shipments);
    checkPrice(o.shippingCost as api.Price);
    checkPrice(o.shippingCostTax as api.Price);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.taxCollector, unittest.equals('foo'));
  }
  buildCounterOrder--;
}

core.List<core.String> buildUnnamed4235() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4235(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4236() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4236(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderAddress = 0;
api.OrderAddress buildOrderAddress() {
  var o = api.OrderAddress();
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    o.country = 'foo';
    o.fullAddress = buildUnnamed4235();
    o.isPostOfficeBox = true;
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed4236();
  }
  buildCounterOrderAddress--;
  return o;
}

void checkOrderAddress(api.OrderAddress o) {
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed4235(o.fullAddress);
    unittest.expect(o.isPostOfficeBox, unittest.isTrue);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed4236(o.streetAddress);
  }
  buildCounterOrderAddress--;
}

core.int buildCounterOrderCancellation = 0;
api.OrderCancellation buildOrderCancellation() {
  var o = api.OrderCancellation();
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
    unittest.expect(o.actor, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderCancellation--;
}

core.int buildCounterOrderCustomer = 0;
api.OrderCustomer buildOrderCustomer() {
  var o = api.OrderCustomer();
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
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.invoiceReceivingEmail, unittest.equals('foo'));
    checkOrderCustomerLoyaltyInfo(
        o.loyaltyInfo as api.OrderCustomerLoyaltyInfo);
    checkOrderCustomerMarketingRightsInfo(
        o.marketingRightsInfo as api.OrderCustomerMarketingRightsInfo);
  }
  buildCounterOrderCustomer--;
}

core.int buildCounterOrderCustomerLoyaltyInfo = 0;
api.OrderCustomerLoyaltyInfo buildOrderCustomerLoyaltyInfo() {
  var o = api.OrderCustomerLoyaltyInfo();
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
    unittest.expect(o.loyaltyNumber, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterOrderCustomerLoyaltyInfo--;
}

core.int buildCounterOrderCustomerMarketingRightsInfo = 0;
api.OrderCustomerMarketingRightsInfo buildOrderCustomerMarketingRightsInfo() {
  var o = api.OrderCustomerMarketingRightsInfo();
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
    unittest.expect(o.explicitMarketingPreference, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestamp, unittest.equals('foo'));
    unittest.expect(o.marketingEmailAddress, unittest.equals('foo'));
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
}

core.int buildCounterOrderDeliveryDetails = 0;
api.OrderDeliveryDetails buildOrderDeliveryDetails() {
  var o = api.OrderDeliveryDetails();
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
    checkOrderAddress(o.address as api.OrderAddress);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterOrderDeliveryDetails--;
}

core.List<api.OrderLineItemAdjustment> buildUnnamed4237() {
  var o = <api.OrderLineItemAdjustment>[];
  o.add(buildOrderLineItemAdjustment());
  o.add(buildOrderLineItemAdjustment());
  return o;
}

void checkUnnamed4237(core.List<api.OrderLineItemAdjustment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemAdjustment(o[0] as api.OrderLineItemAdjustment);
  checkOrderLineItemAdjustment(o[1] as api.OrderLineItemAdjustment);
}

core.List<api.OrderMerchantProvidedAnnotation> buildUnnamed4238() {
  var o = <api.OrderMerchantProvidedAnnotation>[];
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

void checkUnnamed4238(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(
      o[0] as api.OrderMerchantProvidedAnnotation);
  checkOrderMerchantProvidedAnnotation(
      o[1] as api.OrderMerchantProvidedAnnotation);
}

core.List<api.OrderCancellation> buildUnnamed4239() {
  var o = <api.OrderCancellation>[];
  o.add(buildOrderCancellation());
  o.add(buildOrderCancellation());
  return o;
}

void checkUnnamed4239(core.List<api.OrderCancellation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderCancellation(o[0] as api.OrderCancellation);
  checkOrderCancellation(o[1] as api.OrderCancellation);
}

core.List<api.OrderReturn> buildUnnamed4240() {
  var o = <api.OrderReturn>[];
  o.add(buildOrderReturn());
  o.add(buildOrderReturn());
  return o;
}

void checkUnnamed4240(core.List<api.OrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReturn(o[0] as api.OrderReturn);
  checkOrderReturn(o[1] as api.OrderReturn);
}

core.int buildCounterOrderLineItem = 0;
api.OrderLineItem buildOrderLineItem() {
  var o = api.OrderLineItem();
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    o.adjustments = buildUnnamed4237();
    o.annotations = buildUnnamed4238();
    o.cancellations = buildUnnamed4239();
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
    o.returns = buildUnnamed4240();
    o.shippingDetails = buildOrderLineItemShippingDetails();
    o.tax = buildPrice();
  }
  buildCounterOrderLineItem--;
  return o;
}

void checkOrderLineItem(api.OrderLineItem o) {
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    checkUnnamed4237(o.adjustments);
    checkUnnamed4238(o.annotations);
    checkUnnamed4239(o.cancellations);
    unittest.expect(o.id, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    checkOrderLineItemProduct(o.product as api.OrderLineItemProduct);
    unittest.expect(o.quantityCanceled, unittest.equals(42));
    unittest.expect(o.quantityDelivered, unittest.equals(42));
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    unittest.expect(o.quantityPending, unittest.equals(42));
    unittest.expect(o.quantityReadyForPickup, unittest.equals(42));
    unittest.expect(o.quantityReturned, unittest.equals(42));
    unittest.expect(o.quantityShipped, unittest.equals(42));
    unittest.expect(o.quantityUndeliverable, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo as api.OrderLineItemReturnInfo);
    checkUnnamed4240(o.returns);
    checkOrderLineItemShippingDetails(
        o.shippingDetails as api.OrderLineItemShippingDetails);
    checkPrice(o.tax as api.Price);
  }
  buildCounterOrderLineItem--;
}

core.int buildCounterOrderLineItemAdjustment = 0;
api.OrderLineItemAdjustment buildOrderLineItemAdjustment() {
  var o = api.OrderLineItemAdjustment();
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
    checkPrice(o.priceAdjustment as api.Price);
    checkPrice(o.taxAdjustment as api.Price);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderLineItemAdjustment--;
}

core.List<api.OrderLineItemProductFee> buildUnnamed4241() {
  var o = <api.OrderLineItemProductFee>[];
  o.add(buildOrderLineItemProductFee());
  o.add(buildOrderLineItemProductFee());
  return o;
}

void checkUnnamed4241(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0] as api.OrderLineItemProductFee);
  checkOrderLineItemProductFee(o[1] as api.OrderLineItemProductFee);
}

core.List<api.OrderLineItemProductVariantAttribute> buildUnnamed4242() {
  var o = <api.OrderLineItemProductVariantAttribute>[];
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

void checkUnnamed4242(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(
      o[0] as api.OrderLineItemProductVariantAttribute);
  checkOrderLineItemProductVariantAttribute(
      o[1] as api.OrderLineItemProductVariantAttribute);
}

core.int buildCounterOrderLineItemProduct = 0;
api.OrderLineItemProduct buildOrderLineItemProduct() {
  var o = api.OrderLineItemProduct();
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    o.brand = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.fees = buildUnnamed4241();
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
    o.variantAttributes = buildUnnamed4242();
  }
  buildCounterOrderLineItemProduct--;
  return o;
}

void checkOrderLineItemProduct(api.OrderLineItemProduct o) {
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed4241(o.fees);
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.shownImage, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed4242(o.variantAttributes);
  }
  buildCounterOrderLineItemProduct--;
}

core.int buildCounterOrderLineItemProductFee = 0;
api.OrderLineItemProductFee buildOrderLineItemProductFee() {
  var o = api.OrderLineItemProductFee();
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
    checkPrice(o.amount as api.Price);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterOrderLineItemProductFee--;
}

core.int buildCounterOrderLineItemProductVariantAttribute = 0;
api.OrderLineItemProductVariantAttribute
    buildOrderLineItemProductVariantAttribute() {
  var o = api.OrderLineItemProductVariantAttribute();
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
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderLineItemProductVariantAttribute--;
}

core.int buildCounterOrderLineItemReturnInfo = 0;
api.OrderLineItemReturnInfo buildOrderLineItemReturnInfo() {
  var o = api.OrderLineItemReturnInfo();
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
    unittest.expect(o.daysToReturn, unittest.equals(42));
    unittest.expect(o.isReturnable, unittest.isTrue);
    unittest.expect(o.policyUrl, unittest.equals('foo'));
  }
  buildCounterOrderLineItemReturnInfo--;
}

core.int buildCounterOrderLineItemShippingDetails = 0;
api.OrderLineItemShippingDetails buildOrderLineItemShippingDetails() {
  var o = api.OrderLineItemShippingDetails();
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
    unittest.expect(o.deliverByDate, unittest.equals('foo'));
    checkOrderLineItemShippingDetailsMethod(
        o.method as api.OrderLineItemShippingDetailsMethod);
    unittest.expect(o.pickupPromiseInMinutes, unittest.equals(42));
    unittest.expect(o.shipByDate, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderLineItemShippingDetails--;
}

core.int buildCounterOrderLineItemShippingDetailsMethod = 0;
api.OrderLineItemShippingDetailsMethod
    buildOrderLineItemShippingDetailsMethod() {
  var o = api.OrderLineItemShippingDetailsMethod();
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
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.maxDaysInTransit, unittest.equals(42));
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.minDaysInTransit, unittest.equals(42));
  }
  buildCounterOrderLineItemShippingDetailsMethod--;
}

core.int buildCounterOrderMerchantProvidedAnnotation = 0;
api.OrderMerchantProvidedAnnotation buildOrderMerchantProvidedAnnotation() {
  var o = api.OrderMerchantProvidedAnnotation();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderMerchantProvidedAnnotation--;
}

core.int buildCounterOrderOrderAnnotation = 0;
api.OrderOrderAnnotation buildOrderOrderAnnotation() {
  var o = api.OrderOrderAnnotation();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderOrderAnnotation--;
}

core.List<api.OrderPickupDetailsCollector> buildUnnamed4243() {
  var o = <api.OrderPickupDetailsCollector>[];
  o.add(buildOrderPickupDetailsCollector());
  o.add(buildOrderPickupDetailsCollector());
  return o;
}

void checkUnnamed4243(core.List<api.OrderPickupDetailsCollector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPickupDetailsCollector(o[0] as api.OrderPickupDetailsCollector);
  checkOrderPickupDetailsCollector(o[1] as api.OrderPickupDetailsCollector);
}

core.int buildCounterOrderPickupDetails = 0;
api.OrderPickupDetails buildOrderPickupDetails() {
  var o = api.OrderPickupDetails();
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    o.address = buildOrderAddress();
    o.collectors = buildUnnamed4243();
    o.locationId = 'foo';
    o.pickupType = 'foo';
  }
  buildCounterOrderPickupDetails--;
  return o;
}

void checkOrderPickupDetails(api.OrderPickupDetails o) {
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    checkOrderAddress(o.address as api.OrderAddress);
    checkUnnamed4243(o.collectors);
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.pickupType, unittest.equals('foo'));
  }
  buildCounterOrderPickupDetails--;
}

core.int buildCounterOrderPickupDetailsCollector = 0;
api.OrderPickupDetailsCollector buildOrderPickupDetailsCollector() {
  var o = api.OrderPickupDetailsCollector();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterOrderPickupDetailsCollector--;
}

core.List<api.OrderPromotionItem> buildUnnamed4244() {
  var o = <api.OrderPromotionItem>[];
  o.add(buildOrderPromotionItem());
  o.add(buildOrderPromotionItem());
  return o;
}

void checkUnnamed4244(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0] as api.OrderPromotionItem);
  checkOrderPromotionItem(o[1] as api.OrderPromotionItem);
}

core.List<api.OrderPromotionItem> buildUnnamed4245() {
  var o = <api.OrderPromotionItem>[];
  o.add(buildOrderPromotionItem());
  o.add(buildOrderPromotionItem());
  return o;
}

void checkUnnamed4245(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0] as api.OrderPromotionItem);
  checkOrderPromotionItem(o[1] as api.OrderPromotionItem);
}

core.int buildCounterOrderPromotion = 0;
api.OrderPromotion buildOrderPromotion() {
  var o = api.OrderPromotion();
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    o.applicableItems = buildUnnamed4244();
    o.appliedItems = buildUnnamed4245();
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
    checkUnnamed4244(o.applicableItems);
    checkUnnamed4245(o.appliedItems);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.funder, unittest.equals('foo'));
    unittest.expect(o.merchantPromotionId, unittest.equals('foo'));
    checkPrice(o.priceValue as api.Price);
    unittest.expect(o.shortTitle, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.subtype, unittest.equals('foo'));
    checkPrice(o.taxValue as api.Price);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderPromotion--;
}

core.int buildCounterOrderPromotionItem = 0;
api.OrderPromotionItem buildOrderPromotionItem() {
  var o = api.OrderPromotionItem();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrderPromotionItem--;
}

core.int buildCounterOrderRefund = 0;
api.OrderRefund buildOrderRefund() {
  var o = api.OrderRefund();
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
    unittest.expect(o.actor, unittest.equals('foo'));
    checkPrice(o.amount as api.Price);
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderRefund--;
}

core.int buildCounterOrderReportDisbursement = 0;
api.OrderReportDisbursement buildOrderReportDisbursement() {
  var o = api.OrderReportDisbursement();
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
    checkPrice(o.disbursementAmount as api.Price);
    unittest.expect(o.disbursementCreationDate, unittest.equals('foo'));
    unittest.expect(o.disbursementDate, unittest.equals('foo'));
    unittest.expect(o.disbursementId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
  }
  buildCounterOrderReportDisbursement--;
}

core.int buildCounterOrderReportTransaction = 0;
api.OrderReportTransaction buildOrderReportTransaction() {
  var o = api.OrderReportTransaction();
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
    checkPrice(o.disbursementAmount as api.Price);
    unittest.expect(o.disbursementCreationDate, unittest.equals('foo'));
    unittest.expect(o.disbursementDate, unittest.equals('foo'));
    unittest.expect(o.disbursementId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    checkProductAmount(o.productAmount as api.ProductAmount);
    unittest.expect(o.transactionDate, unittest.equals('foo'));
  }
  buildCounterOrderReportTransaction--;
}

core.int buildCounterOrderReturn = 0;
api.OrderReturn buildOrderReturn() {
  var o = api.OrderReturn();
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
    unittest.expect(o.actor, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderReturn--;
}

core.List<api.OrderShipmentLineItemShipment> buildUnnamed4246() {
  var o = <api.OrderShipmentLineItemShipment>[];
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

void checkUnnamed4246(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0] as api.OrderShipmentLineItemShipment);
  checkOrderShipmentLineItemShipment(o[1] as api.OrderShipmentLineItemShipment);
}

core.int buildCounterOrderShipment = 0;
api.OrderShipment buildOrderShipment() {
  var o = api.OrderShipment();
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    o.carrier = 'foo';
    o.creationDate = 'foo';
    o.deliveryDate = 'foo';
    o.id = 'foo';
    o.lineItems = buildUnnamed4246();
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
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4246(o.lineItems);
    checkOrderShipmentScheduledDeliveryDetails(o.scheduledDeliveryDetails
        as api.OrderShipmentScheduledDeliveryDetails);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrderShipment--;
}

core.int buildCounterOrderShipmentLineItemShipment = 0;
api.OrderShipmentLineItemShipment buildOrderShipmentLineItemShipment() {
  var o = api.OrderShipmentLineItemShipment();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrderShipmentLineItemShipment--;
}

core.int buildCounterOrderShipmentScheduledDeliveryDetails = 0;
api.OrderShipmentScheduledDeliveryDetails
    buildOrderShipmentScheduledDeliveryDetails() {
  var o = api.OrderShipmentScheduledDeliveryDetails();
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
    unittest.expect(o.carrierPhoneNumber, unittest.equals('foo'));
    unittest.expect(o.scheduledDate, unittest.equals('foo'));
  }
  buildCounterOrderShipmentScheduledDeliveryDetails--;
}

core.List<api.OrderTrackingSignalLineItemDetails> buildUnnamed4247() {
  var o = <api.OrderTrackingSignalLineItemDetails>[];
  o.add(buildOrderTrackingSignalLineItemDetails());
  o.add(buildOrderTrackingSignalLineItemDetails());
  return o;
}

void checkUnnamed4247(core.List<api.OrderTrackingSignalLineItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalLineItemDetails(
      o[0] as api.OrderTrackingSignalLineItemDetails);
  checkOrderTrackingSignalLineItemDetails(
      o[1] as api.OrderTrackingSignalLineItemDetails);
}

core.List<api.OrderTrackingSignalShipmentLineItemMapping> buildUnnamed4248() {
  var o = <api.OrderTrackingSignalShipmentLineItemMapping>[];
  o.add(buildOrderTrackingSignalShipmentLineItemMapping());
  o.add(buildOrderTrackingSignalShipmentLineItemMapping());
  return o;
}

void checkUnnamed4248(
    core.List<api.OrderTrackingSignalShipmentLineItemMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalShipmentLineItemMapping(
      o[0] as api.OrderTrackingSignalShipmentLineItemMapping);
  checkOrderTrackingSignalShipmentLineItemMapping(
      o[1] as api.OrderTrackingSignalShipmentLineItemMapping);
}

core.List<api.OrderTrackingSignalShippingInfo> buildUnnamed4249() {
  var o = <api.OrderTrackingSignalShippingInfo>[];
  o.add(buildOrderTrackingSignalShippingInfo());
  o.add(buildOrderTrackingSignalShippingInfo());
  return o;
}

void checkUnnamed4249(core.List<api.OrderTrackingSignalShippingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderTrackingSignalShippingInfo(
      o[0] as api.OrderTrackingSignalShippingInfo);
  checkOrderTrackingSignalShippingInfo(
      o[1] as api.OrderTrackingSignalShippingInfo);
}

core.int buildCounterOrderTrackingSignal = 0;
api.OrderTrackingSignal buildOrderTrackingSignal() {
  var o = api.OrderTrackingSignal();
  buildCounterOrderTrackingSignal++;
  if (buildCounterOrderTrackingSignal < 3) {
    o.customerShippingFee = buildPriceAmount();
    o.deliveryPostalCode = 'foo';
    o.deliveryRegionCode = 'foo';
    o.lineItems = buildUnnamed4247();
    o.merchantId = 'foo';
    o.orderCreatedTime = buildDateTime();
    o.orderId = 'foo';
    o.orderTrackingSignalId = 'foo';
    o.shipmentLineItemMapping = buildUnnamed4248();
    o.shippingInfo = buildUnnamed4249();
  }
  buildCounterOrderTrackingSignal--;
  return o;
}

void checkOrderTrackingSignal(api.OrderTrackingSignal o) {
  buildCounterOrderTrackingSignal++;
  if (buildCounterOrderTrackingSignal < 3) {
    checkPriceAmount(o.customerShippingFee as api.PriceAmount);
    unittest.expect(o.deliveryPostalCode, unittest.equals('foo'));
    unittest.expect(o.deliveryRegionCode, unittest.equals('foo'));
    checkUnnamed4247(o.lineItems);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    checkDateTime(o.orderCreatedTime as api.DateTime);
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.orderTrackingSignalId, unittest.equals('foo'));
    checkUnnamed4248(o.shipmentLineItemMapping);
    checkUnnamed4249(o.shippingInfo);
  }
  buildCounterOrderTrackingSignal--;
}

core.int buildCounterOrderTrackingSignalLineItemDetails = 0;
api.OrderTrackingSignalLineItemDetails
    buildOrderTrackingSignalLineItemDetails() {
  var o = api.OrderTrackingSignalLineItemDetails();
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
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals('foo'));
  }
  buildCounterOrderTrackingSignalLineItemDetails--;
}

core.int buildCounterOrderTrackingSignalShipmentLineItemMapping = 0;
api.OrderTrackingSignalShipmentLineItemMapping
    buildOrderTrackingSignalShipmentLineItemMapping() {
  var o = api.OrderTrackingSignalShipmentLineItemMapping();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
  }
  buildCounterOrderTrackingSignalShipmentLineItemMapping--;
}

core.int buildCounterOrderTrackingSignalShippingInfo = 0;
api.OrderTrackingSignalShippingInfo buildOrderTrackingSignalShippingInfo() {
  var o = api.OrderTrackingSignalShippingInfo();
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
    checkDateTime(o.actualDeliveryTime as api.DateTime);
    unittest.expect(o.carrierName, unittest.equals('foo'));
    unittest.expect(o.carrierServiceName, unittest.equals('foo'));
    checkDateTime(o.earliestDeliveryPromiseTime as api.DateTime);
    checkDateTime(o.latestDeliveryPromiseTime as api.DateTime);
    unittest.expect(o.originPostalCode, unittest.equals('foo'));
    unittest.expect(o.originRegionCode, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    checkDateTime(o.shippedTime as api.DateTime);
    unittest.expect(o.shippingStatus, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrderTrackingSignalShippingInfo--;
}

core.List<api.ShipmentInvoiceLineItemInvoice> buildUnnamed4250() {
  var o = <api.ShipmentInvoiceLineItemInvoice>[];
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

void checkUnnamed4250(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(
      o[0] as api.ShipmentInvoiceLineItemInvoice);
  checkShipmentInvoiceLineItemInvoice(
      o[1] as api.ShipmentInvoiceLineItemInvoice);
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceRequest = 0;
api.OrderinvoicesCreateChargeInvoiceRequest
    buildOrderinvoicesCreateChargeInvoiceRequest() {
  var o = api.OrderinvoicesCreateChargeInvoiceRequest();
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    o.invoiceId = 'foo';
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed4250();
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
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    checkInvoiceSummary(o.invoiceSummary as api.InvoiceSummary);
    checkUnnamed4250(o.lineItemInvoices);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceResponse = 0;
api.OrderinvoicesCreateChargeInvoiceResponse
    buildOrderinvoicesCreateChargeInvoiceResponse() {
  var o = api.OrderinvoicesCreateChargeInvoiceResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
}

core.List<api.ShipmentInvoice> buildUnnamed4251() {
  var o = <api.ShipmentInvoice>[];
  o.add(buildShipmentInvoice());
  o.add(buildShipmentInvoice());
  return o;
}

void checkUnnamed4251(core.List<api.ShipmentInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoice(o[0] as api.ShipmentInvoice);
  checkShipmentInvoice(o[1] as api.ShipmentInvoice);
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceRequest = 0;
api.OrderinvoicesCreateRefundInvoiceRequest
    buildOrderinvoicesCreateRefundInvoiceRequest() {
  var o = api.OrderinvoicesCreateRefundInvoiceRequest();
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    o.invoiceId = 'foo';
    o.operationId = 'foo';
    o.refundOnlyOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
    o.returnOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
    o.shipmentInvoices = buildUnnamed4251();
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
  return o;
}

void checkOrderinvoicesCreateRefundInvoiceRequest(
    api.OrderinvoicesCreateRefundInvoiceRequest o) {
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
        o.refundOnlyOption as api
            .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption);
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
        o.returnOption as api
            .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption);
    checkUnnamed4251(o.shipmentInvoices);
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceResponse = 0;
api.OrderinvoicesCreateRefundInvoiceResponse
    buildOrderinvoicesCreateRefundInvoiceResponse() {
  var o = api.OrderinvoicesCreateRefundInvoiceResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateRefundInvoiceResponse--;
}

core.int
    buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
    0;
api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption() {
  var o =
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption--;
}

core.int
    buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
    0;
api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption() {
  var o =
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
}

core.List<api.OrderReportDisbursement> buildUnnamed4252() {
  var o = <api.OrderReportDisbursement>[];
  o.add(buildOrderReportDisbursement());
  o.add(buildOrderReportDisbursement());
  return o;
}

void checkUnnamed4252(core.List<api.OrderReportDisbursement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportDisbursement(o[0] as api.OrderReportDisbursement);
  checkOrderReportDisbursement(o[1] as api.OrderReportDisbursement);
}

core.int buildCounterOrderreportsListDisbursementsResponse = 0;
api.OrderreportsListDisbursementsResponse
    buildOrderreportsListDisbursementsResponse() {
  var o = api.OrderreportsListDisbursementsResponse();
  buildCounterOrderreportsListDisbursementsResponse++;
  if (buildCounterOrderreportsListDisbursementsResponse < 3) {
    o.disbursements = buildUnnamed4252();
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
    checkUnnamed4252(o.disbursements);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterOrderreportsListDisbursementsResponse--;
}

core.List<api.OrderReportTransaction> buildUnnamed4253() {
  var o = <api.OrderReportTransaction>[];
  o.add(buildOrderReportTransaction());
  o.add(buildOrderReportTransaction());
  return o;
}

void checkUnnamed4253(core.List<api.OrderReportTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportTransaction(o[0] as api.OrderReportTransaction);
  checkOrderReportTransaction(o[1] as api.OrderReportTransaction);
}

core.int buildCounterOrderreportsListTransactionsResponse = 0;
api.OrderreportsListTransactionsResponse
    buildOrderreportsListTransactionsResponse() {
  var o = api.OrderreportsListTransactionsResponse();
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.transactions = buildUnnamed4253();
  }
  buildCounterOrderreportsListTransactionsResponse--;
  return o;
}

void checkOrderreportsListTransactionsResponse(
    api.OrderreportsListTransactionsResponse o) {
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4253(o.transactions);
  }
  buildCounterOrderreportsListTransactionsResponse--;
}

core.int buildCounterOrderreturnsAcknowledgeRequest = 0;
api.OrderreturnsAcknowledgeRequest buildOrderreturnsAcknowledgeRequest() {
  var o = api.OrderreturnsAcknowledgeRequest();
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
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrderreturnsAcknowledgeRequest--;
}

core.int buildCounterOrderreturnsAcknowledgeResponse = 0;
api.OrderreturnsAcknowledgeResponse buildOrderreturnsAcknowledgeResponse() {
  var o = api.OrderreturnsAcknowledgeResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderreturnsAcknowledgeResponse--;
}

core.List<api.OrderreturnsLineItem> buildUnnamed4254() {
  var o = <api.OrderreturnsLineItem>[];
  o.add(buildOrderreturnsLineItem());
  o.add(buildOrderreturnsLineItem());
  return o;
}

void checkUnnamed4254(core.List<api.OrderreturnsLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderreturnsLineItem(o[0] as api.OrderreturnsLineItem);
  checkOrderreturnsLineItem(o[1] as api.OrderreturnsLineItem);
}

core.int buildCounterOrderreturnsCreateOrderReturnRequest = 0;
api.OrderreturnsCreateOrderReturnRequest
    buildOrderreturnsCreateOrderReturnRequest() {
  var o = api.OrderreturnsCreateOrderReturnRequest();
  buildCounterOrderreturnsCreateOrderReturnRequest++;
  if (buildCounterOrderreturnsCreateOrderReturnRequest < 3) {
    o.lineItems = buildUnnamed4254();
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
    checkUnnamed4254(o.lineItems);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.returnMethodType, unittest.equals('foo'));
  }
  buildCounterOrderreturnsCreateOrderReturnRequest--;
}

core.int buildCounterOrderreturnsCreateOrderReturnResponse = 0;
api.OrderreturnsCreateOrderReturnResponse
    buildOrderreturnsCreateOrderReturnResponse() {
  var o = api.OrderreturnsCreateOrderReturnResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkMerchantOrderReturn(o.orderReturn as api.MerchantOrderReturn);
  }
  buildCounterOrderreturnsCreateOrderReturnResponse--;
}

core.int buildCounterOrderreturnsLineItem = 0;
api.OrderreturnsLineItem buildOrderreturnsLineItem() {
  var o = api.OrderreturnsLineItem();
  buildCounterOrderreturnsLineItem++;
  if (buildCounterOrderreturnsLineItem < 3) {
    o.lineItemId = 'foo';
    o.quantity = 42;
  }
  buildCounterOrderreturnsLineItem--;
  return o;
}

void checkOrderreturnsLineItem(api.OrderreturnsLineItem o) {
  buildCounterOrderreturnsLineItem++;
  if (buildCounterOrderreturnsLineItem < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrderreturnsLineItem--;
}

core.List<api.MerchantOrderReturn> buildUnnamed4255() {
  var o = <api.MerchantOrderReturn>[];
  o.add(buildMerchantOrderReturn());
  o.add(buildMerchantOrderReturn());
  return o;
}

void checkUnnamed4255(core.List<api.MerchantOrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturn(o[0] as api.MerchantOrderReturn);
  checkMerchantOrderReturn(o[1] as api.MerchantOrderReturn);
}

core.int buildCounterOrderreturnsListResponse = 0;
api.OrderreturnsListResponse buildOrderreturnsListResponse() {
  var o = api.OrderreturnsListResponse();
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4255();
  }
  buildCounterOrderreturnsListResponse--;
  return o;
}

void checkOrderreturnsListResponse(api.OrderreturnsListResponse o) {
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4255(o.resources);
  }
  buildCounterOrderreturnsListResponse--;
}

core.int buildCounterOrderreturnsPartialRefund = 0;
api.OrderreturnsPartialRefund buildOrderreturnsPartialRefund() {
  var o = api.OrderreturnsPartialRefund();
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
    checkPrice(o.priceAmount as api.Price);
    checkPrice(o.taxAmount as api.Price);
  }
  buildCounterOrderreturnsPartialRefund--;
}

core.List<api.OrderreturnsReturnItem> buildUnnamed4256() {
  var o = <api.OrderreturnsReturnItem>[];
  o.add(buildOrderreturnsReturnItem());
  o.add(buildOrderreturnsReturnItem());
  return o;
}

void checkUnnamed4256(core.List<api.OrderreturnsReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderreturnsReturnItem(o[0] as api.OrderreturnsReturnItem);
  checkOrderreturnsReturnItem(o[1] as api.OrderreturnsReturnItem);
}

core.int buildCounterOrderreturnsProcessRequest = 0;
api.OrderreturnsProcessRequest buildOrderreturnsProcessRequest() {
  var o = api.OrderreturnsProcessRequest();
  buildCounterOrderreturnsProcessRequest++;
  if (buildCounterOrderreturnsProcessRequest < 3) {
    o.fullChargeReturnShippingCost = true;
    o.operationId = 'foo';
    o.refundShippingFee = buildOrderreturnsRefundOperation();
    o.returnItems = buildUnnamed4256();
  }
  buildCounterOrderreturnsProcessRequest--;
  return o;
}

void checkOrderreturnsProcessRequest(api.OrderreturnsProcessRequest o) {
  buildCounterOrderreturnsProcessRequest++;
  if (buildCounterOrderreturnsProcessRequest < 3) {
    unittest.expect(o.fullChargeReturnShippingCost, unittest.isTrue);
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkOrderreturnsRefundOperation(
        o.refundShippingFee as api.OrderreturnsRefundOperation);
    checkUnnamed4256(o.returnItems);
  }
  buildCounterOrderreturnsProcessRequest--;
}

core.int buildCounterOrderreturnsProcessResponse = 0;
api.OrderreturnsProcessResponse buildOrderreturnsProcessResponse() {
  var o = api.OrderreturnsProcessResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderreturnsProcessResponse--;
}

core.int buildCounterOrderreturnsRefundOperation = 0;
api.OrderreturnsRefundOperation buildOrderreturnsRefundOperation() {
  var o = api.OrderreturnsRefundOperation();
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
    unittest.expect(o.fullRefund, unittest.isTrue);
    checkOrderreturnsPartialRefund(
        o.partialRefund as api.OrderreturnsPartialRefund);
    unittest.expect(o.paymentType, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    unittest.expect(o.returnRefundReason, unittest.equals('foo'));
  }
  buildCounterOrderreturnsRefundOperation--;
}

core.int buildCounterOrderreturnsRejectOperation = 0;
api.OrderreturnsRejectOperation buildOrderreturnsRejectOperation() {
  var o = api.OrderreturnsRejectOperation();
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
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderreturnsRejectOperation--;
}

core.int buildCounterOrderreturnsReturnItem = 0;
api.OrderreturnsReturnItem buildOrderreturnsReturnItem() {
  var o = api.OrderreturnsReturnItem();
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
    checkOrderreturnsRefundOperation(
        o.refund as api.OrderreturnsRefundOperation);
    checkOrderreturnsRejectOperation(
        o.reject as api.OrderreturnsRejectOperation);
    unittest.expect(o.returnItemId, unittest.equals('foo'));
  }
  buildCounterOrderreturnsReturnItem--;
}

core.int buildCounterOrdersAcknowledgeRequest = 0;
api.OrdersAcknowledgeRequest buildOrdersAcknowledgeRequest() {
  var o = api.OrdersAcknowledgeRequest();
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
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrdersAcknowledgeRequest--;
}

core.int buildCounterOrdersAcknowledgeResponse = 0;
api.OrdersAcknowledgeResponse buildOrdersAcknowledgeResponse() {
  var o = api.OrdersAcknowledgeResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersAcknowledgeResponse--;
}

core.int buildCounterOrdersAdvanceTestOrderResponse = 0;
api.OrdersAdvanceTestOrderResponse buildOrdersAdvanceTestOrderResponse() {
  var o = api.OrdersAdvanceTestOrderResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
}

core.int buildCounterOrdersCancelLineItemRequest = 0;
api.OrdersCancelLineItemRequest buildOrdersCancelLineItemRequest() {
  var o = api.OrdersCancelLineItemRequest();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCancelLineItemRequest--;
}

core.int buildCounterOrdersCancelLineItemResponse = 0;
api.OrdersCancelLineItemResponse buildOrdersCancelLineItemResponse() {
  var o = api.OrdersCancelLineItemResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelLineItemResponse--;
}

core.int buildCounterOrdersCancelRequest = 0;
api.OrdersCancelRequest buildOrdersCancelRequest() {
  var o = api.OrdersCancelRequest();
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
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCancelRequest--;
}

core.int buildCounterOrdersCancelResponse = 0;
api.OrdersCancelResponse buildOrdersCancelResponse() {
  var o = api.OrdersCancelResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelResponse--;
}

core.int buildCounterOrdersCancelTestOrderByCustomerRequest = 0;
api.OrdersCancelTestOrderByCustomerRequest
    buildOrdersCancelTestOrderByCustomerRequest() {
  var o = api.OrdersCancelTestOrderByCustomerRequest();
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
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrdersCancelTestOrderByCustomerRequest--;
}

core.int buildCounterOrdersCancelTestOrderByCustomerResponse = 0;
api.OrdersCancelTestOrderByCustomerResponse
    buildOrdersCancelTestOrderByCustomerResponse() {
  var o = api.OrdersCancelTestOrderByCustomerResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelTestOrderByCustomerResponse--;
}

core.int buildCounterOrdersCreateTestOrderRequest = 0;
api.OrdersCreateTestOrderRequest buildOrdersCreateTestOrderRequest() {
  var o = api.OrdersCreateTestOrderRequest();
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
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.templateName, unittest.equals('foo'));
    checkTestOrder(o.testOrder as api.TestOrder);
  }
  buildCounterOrdersCreateTestOrderRequest--;
}

core.int buildCounterOrdersCreateTestOrderResponse = 0;
api.OrdersCreateTestOrderResponse buildOrdersCreateTestOrderResponse() {
  var o = api.OrdersCreateTestOrderResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
  }
  buildCounterOrdersCreateTestOrderResponse--;
}

core.List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>
    buildUnnamed4257() {
  var o = <api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>[];
  o.add(buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem());
  o.add(buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem());
  return o;
}

void checkUnnamed4257(
    core.List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(
      o[0] as api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem);
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(
      o[1] as api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem);
}

core.int buildCounterOrdersCreateTestReturnRequest = 0;
api.OrdersCreateTestReturnRequest buildOrdersCreateTestReturnRequest() {
  var o = api.OrdersCreateTestReturnRequest();
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    o.items = buildUnnamed4257();
  }
  buildCounterOrdersCreateTestReturnRequest--;
  return o;
}

void checkOrdersCreateTestReturnRequest(api.OrdersCreateTestReturnRequest o) {
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    checkUnnamed4257(o.items);
  }
  buildCounterOrdersCreateTestReturnRequest--;
}

core.int buildCounterOrdersCreateTestReturnResponse = 0;
api.OrdersCreateTestReturnResponse buildOrdersCreateTestReturnResponse() {
  var o = api.OrdersCreateTestReturnResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.returnId, unittest.equals('foo'));
  }
  buildCounterOrdersCreateTestReturnResponse--;
}

core.int buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem =
    0;
api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem() {
  var o = api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryRefundItemItem = 0;
api.OrdersCustomBatchRequestEntryRefundItemItem
    buildOrdersCustomBatchRequestEntryRefundItemItem() {
  var o = api.OrdersCustomBatchRequestEntryRefundItemItem();
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
    checkMonetaryAmount(o.amount as api.MonetaryAmount);
    unittest.expect(o.fullRefund, unittest.isTrue);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrdersCustomBatchRequestEntryRefundItemItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryRefundItemShipping = 0;
api.OrdersCustomBatchRequestEntryRefundItemShipping
    buildOrdersCustomBatchRequestEntryRefundItemShipping() {
  var o = api.OrdersCustomBatchRequestEntryRefundItemShipping();
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
    checkPrice(o.amount as api.Price);
    unittest.expect(o.fullRefund, unittest.isTrue);
  }
  buildCounterOrdersCustomBatchRequestEntryRefundItemShipping--;
}

core.int buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo = 0;
api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo() {
  var o = api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
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
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo--;
}

core.int
    buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails =
    0;
api.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    buildOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails() {
  var o =
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
    unittest.expect(o.carrierPhoneNumber, unittest.equals('foo'));
    unittest.expect(o.scheduledDate, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails--;
}

core.int buildCounterOrdersGetByMerchantOrderIdResponse = 0;
api.OrdersGetByMerchantOrderIdResponse
    buildOrdersGetByMerchantOrderIdResponse() {
  var o = api.OrdersGetByMerchantOrderIdResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    checkOrder(o.order as api.Order);
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
}

core.int buildCounterOrdersGetTestOrderTemplateResponse = 0;
api.OrdersGetTestOrderTemplateResponse
    buildOrdersGetTestOrderTemplateResponse() {
  var o = api.OrdersGetTestOrderTemplateResponse();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    checkTestOrder(o.template as api.TestOrder);
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
}

core.int buildCounterOrdersInStoreRefundLineItemRequest = 0;
api.OrdersInStoreRefundLineItemRequest
    buildOrdersInStoreRefundLineItemRequest() {
  var o = api.OrdersInStoreRefundLineItemRequest();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkPrice(o.priceAmount as api.Price);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkPrice(o.taxAmount as api.Price);
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
}

core.int buildCounterOrdersInStoreRefundLineItemResponse = 0;
api.OrdersInStoreRefundLineItemResponse
    buildOrdersInStoreRefundLineItemResponse() {
  var o = api.OrdersInStoreRefundLineItemResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
}

core.List<api.Order> buildUnnamed4258() {
  var o = <api.Order>[];
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

void checkUnnamed4258(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0] as api.Order);
  checkOrder(o[1] as api.Order);
}

core.int buildCounterOrdersListResponse = 0;
api.OrdersListResponse buildOrdersListResponse() {
  var o = api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4258();
  }
  buildCounterOrdersListResponse--;
  return o;
}

void checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4258(o.resources);
  }
  buildCounterOrdersListResponse--;
}

core.List<api.OrdersCustomBatchRequestEntryRefundItemItem> buildUnnamed4259() {
  var o = <api.OrdersCustomBatchRequestEntryRefundItemItem>[];
  o.add(buildOrdersCustomBatchRequestEntryRefundItemItem());
  o.add(buildOrdersCustomBatchRequestEntryRefundItemItem());
  return o;
}

void checkUnnamed4259(
    core.List<api.OrdersCustomBatchRequestEntryRefundItemItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryRefundItemItem(
      o[0] as api.OrdersCustomBatchRequestEntryRefundItemItem);
  checkOrdersCustomBatchRequestEntryRefundItemItem(
      o[1] as api.OrdersCustomBatchRequestEntryRefundItemItem);
}

core.int buildCounterOrdersRefundItemRequest = 0;
api.OrdersRefundItemRequest buildOrdersRefundItemRequest() {
  var o = api.OrdersRefundItemRequest();
  buildCounterOrdersRefundItemRequest++;
  if (buildCounterOrdersRefundItemRequest < 3) {
    o.items = buildUnnamed4259();
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
    checkUnnamed4259(o.items);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkOrdersCustomBatchRequestEntryRefundItemShipping(
        o.shipping as api.OrdersCustomBatchRequestEntryRefundItemShipping);
  }
  buildCounterOrdersRefundItemRequest--;
}

core.int buildCounterOrdersRefundItemResponse = 0;
api.OrdersRefundItemResponse buildOrdersRefundItemResponse() {
  var o = api.OrdersRefundItemResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersRefundItemResponse--;
}

core.int buildCounterOrdersRefundOrderRequest = 0;
api.OrdersRefundOrderRequest buildOrdersRefundOrderRequest() {
  var o = api.OrdersRefundOrderRequest();
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
    checkMonetaryAmount(o.amount as api.MonetaryAmount);
    unittest.expect(o.fullRefund, unittest.isTrue);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersRefundOrderRequest--;
}

core.int buildCounterOrdersRefundOrderResponse = 0;
api.OrdersRefundOrderResponse buildOrdersRefundOrderResponse() {
  var o = api.OrdersRefundOrderResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersRefundOrderResponse--;
}

core.int buildCounterOrdersRejectReturnLineItemRequest = 0;
api.OrdersRejectReturnLineItemRequest buildOrdersRejectReturnLineItemRequest() {
  var o = api.OrdersRejectReturnLineItemRequest();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersRejectReturnLineItemRequest--;
}

core.int buildCounterOrdersRejectReturnLineItemResponse = 0;
api.OrdersRejectReturnLineItemResponse
    buildOrdersRejectReturnLineItemResponse() {
  var o = api.OrdersRejectReturnLineItemResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
}

core.int buildCounterOrdersReturnRefundLineItemRequest = 0;
api.OrdersReturnRefundLineItemRequest buildOrdersReturnRefundLineItemRequest() {
  var o = api.OrdersReturnRefundLineItemRequest();
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
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkPrice(o.priceAmount as api.Price);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkPrice(o.taxAmount as api.Price);
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
}

core.int buildCounterOrdersReturnRefundLineItemResponse = 0;
api.OrdersReturnRefundLineItemResponse
    buildOrdersReturnRefundLineItemResponse() {
  var o = api.OrdersReturnRefundLineItemResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
}

core.List<api.OrderMerchantProvidedAnnotation> buildUnnamed4260() {
  var o = <api.OrderMerchantProvidedAnnotation>[];
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

void checkUnnamed4260(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(
      o[0] as api.OrderMerchantProvidedAnnotation);
  checkOrderMerchantProvidedAnnotation(
      o[1] as api.OrderMerchantProvidedAnnotation);
}

core.int buildCounterOrdersSetLineItemMetadataRequest = 0;
api.OrdersSetLineItemMetadataRequest buildOrdersSetLineItemMetadataRequest() {
  var o = api.OrdersSetLineItemMetadataRequest();
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    o.annotations = buildUnnamed4260();
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
    checkUnnamed4260(o.annotations);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
}

core.int buildCounterOrdersSetLineItemMetadataResponse = 0;
api.OrdersSetLineItemMetadataResponse buildOrdersSetLineItemMetadataResponse() {
  var o = api.OrdersSetLineItemMetadataResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
}

core.List<api.OrderShipmentLineItemShipment> buildUnnamed4261() {
  var o = <api.OrderShipmentLineItemShipment>[];
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

void checkUnnamed4261(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0] as api.OrderShipmentLineItemShipment);
  checkOrderShipmentLineItemShipment(o[1] as api.OrderShipmentLineItemShipment);
}

core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>
    buildUnnamed4262() {
  var o = <api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>[];
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  return o;
}

void checkUnnamed4262(
    core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(
      o[0] as api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo);
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(
      o[1] as api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo);
}

core.int buildCounterOrdersShipLineItemsRequest = 0;
api.OrdersShipLineItemsRequest buildOrdersShipLineItemsRequest() {
  var o = api.OrdersShipLineItemsRequest();
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    o.lineItems = buildUnnamed4261();
    o.operationId = 'foo';
    o.shipmentGroupId = 'foo';
    o.shipmentInfos = buildUnnamed4262();
  }
  buildCounterOrdersShipLineItemsRequest--;
  return o;
}

void checkOrdersShipLineItemsRequest(api.OrdersShipLineItemsRequest o) {
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    checkUnnamed4261(o.lineItems);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    checkUnnamed4262(o.shipmentInfos);
  }
  buildCounterOrdersShipLineItemsRequest--;
}

core.int buildCounterOrdersShipLineItemsResponse = 0;
api.OrdersShipLineItemsResponse buildOrdersShipLineItemsResponse() {
  var o = api.OrdersShipLineItemsResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersShipLineItemsResponse--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsRequest = 0;
api.OrdersUpdateLineItemShippingDetailsRequest
    buildOrdersUpdateLineItemShippingDetailsRequest() {
  var o = api.OrdersUpdateLineItemShippingDetailsRequest();
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
    unittest.expect(o.deliverByDate, unittest.equals('foo'));
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.shipByDate, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateLineItemShippingDetailsRequest--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsResponse = 0;
api.OrdersUpdateLineItemShippingDetailsResponse
    buildOrdersUpdateLineItemShippingDetailsResponse() {
  var o = api.OrdersUpdateLineItemShippingDetailsResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdRequest = 0;
api.OrdersUpdateMerchantOrderIdRequest
    buildOrdersUpdateMerchantOrderIdRequest() {
  var o = api.OrdersUpdateMerchantOrderIdRequest();
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
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdResponse = 0;
api.OrdersUpdateMerchantOrderIdResponse
    buildOrdersUpdateMerchantOrderIdResponse() {
  var o = api.OrdersUpdateMerchantOrderIdResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
}

core.int buildCounterOrdersUpdateShipmentRequest = 0;
api.OrdersUpdateShipmentRequest buildOrdersUpdateShipmentRequest() {
  var o = api.OrdersUpdateShipmentRequest();
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
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.lastPickupDate, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.readyPickupDate, unittest.equals('foo'));
    checkOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails(
        o.scheduledDeliveryDetails as api
            .OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails);
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
    unittest.expect(o.undeliveredDate, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateShipmentRequest--;
}

core.int buildCounterOrdersUpdateShipmentResponse = 0;
api.OrdersUpdateShipmentResponse buildOrdersUpdateShipmentResponse() {
  var o = api.OrdersUpdateShipmentResponse();
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
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateShipmentResponse--;
}

core.int buildCounterPickupCarrierService = 0;
api.PickupCarrierService buildPickupCarrierService() {
  var o = api.PickupCarrierService();
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
    unittest.expect(o.carrierName, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterPickupCarrierService--;
}

core.int buildCounterPickupServicesPickupService = 0;
api.PickupServicesPickupService buildPickupServicesPickupService() {
  var o = api.PickupServicesPickupService();
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
    unittest.expect(o.carrierName, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterPickupServicesPickupService--;
}

core.List<api.PosCustomBatchRequestEntry> buildUnnamed4263() {
  var o = <api.PosCustomBatchRequestEntry>[];
  o.add(buildPosCustomBatchRequestEntry());
  o.add(buildPosCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4263(core.List<api.PosCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchRequestEntry(o[0] as api.PosCustomBatchRequestEntry);
  checkPosCustomBatchRequestEntry(o[1] as api.PosCustomBatchRequestEntry);
}

core.int buildCounterPosCustomBatchRequest = 0;
api.PosCustomBatchRequest buildPosCustomBatchRequest() {
  var o = api.PosCustomBatchRequest();
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    o.entries = buildUnnamed4263();
  }
  buildCounterPosCustomBatchRequest--;
  return o;
}

void checkPosCustomBatchRequest(api.PosCustomBatchRequest o) {
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    checkUnnamed4263(o.entries);
  }
  buildCounterPosCustomBatchRequest--;
}

core.int buildCounterPosCustomBatchRequestEntry = 0;
api.PosCustomBatchRequestEntry buildPosCustomBatchRequestEntry() {
  var o = api.PosCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkPosInventory(o.inventory as api.PosInventory);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkPosSale(o.sale as api.PosSale);
    checkPosStore(o.store as api.PosStore);
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetMerchantId, unittest.equals('foo'));
  }
  buildCounterPosCustomBatchRequestEntry--;
}

core.List<api.PosCustomBatchResponseEntry> buildUnnamed4264() {
  var o = <api.PosCustomBatchResponseEntry>[];
  o.add(buildPosCustomBatchResponseEntry());
  o.add(buildPosCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4264(core.List<api.PosCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchResponseEntry(o[0] as api.PosCustomBatchResponseEntry);
  checkPosCustomBatchResponseEntry(o[1] as api.PosCustomBatchResponseEntry);
}

core.int buildCounterPosCustomBatchResponse = 0;
api.PosCustomBatchResponse buildPosCustomBatchResponse() {
  var o = api.PosCustomBatchResponse();
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    o.entries = buildUnnamed4264();
    o.kind = 'foo';
  }
  buildCounterPosCustomBatchResponse--;
  return o;
}

void checkPosCustomBatchResponse(api.PosCustomBatchResponse o) {
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    checkUnnamed4264(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPosCustomBatchResponse--;
}

core.int buildCounterPosCustomBatchResponseEntry = 0;
api.PosCustomBatchResponseEntry buildPosCustomBatchResponseEntry() {
  var o = api.PosCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    checkPosInventory(o.inventory as api.PosInventory);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPosSale(o.sale as api.PosSale);
    checkPosStore(o.store as api.PosStore);
  }
  buildCounterPosCustomBatchResponseEntry--;
}

core.List<api.PosDataProvidersPosDataProvider> buildUnnamed4265() {
  var o = <api.PosDataProvidersPosDataProvider>[];
  o.add(buildPosDataProvidersPosDataProvider());
  o.add(buildPosDataProvidersPosDataProvider());
  return o;
}

void checkUnnamed4265(core.List<api.PosDataProvidersPosDataProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProvidersPosDataProvider(
      o[0] as api.PosDataProvidersPosDataProvider);
  checkPosDataProvidersPosDataProvider(
      o[1] as api.PosDataProvidersPosDataProvider);
}

core.int buildCounterPosDataProviders = 0;
api.PosDataProviders buildPosDataProviders() {
  var o = api.PosDataProviders();
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    o.country = 'foo';
    o.posDataProviders = buildUnnamed4265();
  }
  buildCounterPosDataProviders--;
  return o;
}

void checkPosDataProviders(api.PosDataProviders o) {
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed4265(o.posDataProviders);
  }
  buildCounterPosDataProviders--;
}

core.int buildCounterPosDataProvidersPosDataProvider = 0;
api.PosDataProvidersPosDataProvider buildPosDataProvidersPosDataProvider() {
  var o = api.PosDataProvidersPosDataProvider();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterPosDataProvidersPosDataProvider--;
}

core.int buildCounterPosInventory = 0;
api.PosInventory buildPosInventory() {
  var o = api.PosInventory();
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
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventory--;
}

core.int buildCounterPosInventoryRequest = 0;
api.PosInventoryRequest buildPosInventoryRequest() {
  var o = api.PosInventoryRequest();
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
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventoryRequest--;
}

core.int buildCounterPosInventoryResponse = 0;
api.PosInventoryResponse buildPosInventoryResponse() {
  var o = api.PosInventoryResponse();
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
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventoryResponse--;
}

core.List<api.PosStore> buildUnnamed4266() {
  var o = <api.PosStore>[];
  o.add(buildPosStore());
  o.add(buildPosStore());
  return o;
}

void checkUnnamed4266(core.List<api.PosStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosStore(o[0] as api.PosStore);
  checkPosStore(o[1] as api.PosStore);
}

core.int buildCounterPosListResponse = 0;
api.PosListResponse buildPosListResponse() {
  var o = api.PosListResponse();
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    o.kind = 'foo';
    o.resources = buildUnnamed4266();
  }
  buildCounterPosListResponse--;
  return o;
}

void checkPosListResponse(api.PosListResponse o) {
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4266(o.resources);
  }
  buildCounterPosListResponse--;
}

core.int buildCounterPosSale = 0;
api.PosSale buildPosSale() {
  var o = api.PosSale();
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
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.saleId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosSale--;
}

core.int buildCounterPosSaleRequest = 0;
api.PosSaleRequest buildPosSaleRequest() {
  var o = api.PosSaleRequest();
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
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.saleId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosSaleRequest--;
}

core.int buildCounterPosSaleResponse = 0;
api.PosSaleResponse buildPosSaleResponse() {
  var o = api.PosSaleResponse();
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
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.saleId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosSaleResponse--;
}

core.int buildCounterPosStore = 0;
api.PosStore buildPosStore() {
  var o = api.PosStore();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.storeAddress, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
  }
  buildCounterPosStore--;
}

core.List<api.PostalCodeRange> buildUnnamed4267() {
  var o = <api.PostalCodeRange>[];
  o.add(buildPostalCodeRange());
  o.add(buildPostalCodeRange());
  return o;
}

void checkUnnamed4267(core.List<api.PostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeRange(o[0] as api.PostalCodeRange);
  checkPostalCodeRange(o[1] as api.PostalCodeRange);
}

core.int buildCounterPostalCodeGroup = 0;
api.PostalCodeGroup buildPostalCodeGroup() {
  var o = api.PostalCodeGroup();
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    o.country = 'foo';
    o.name = 'foo';
    o.postalCodeRanges = buildUnnamed4267();
  }
  buildCounterPostalCodeGroup--;
  return o;
}

void checkPostalCodeGroup(api.PostalCodeGroup o) {
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4267(o.postalCodeRanges);
  }
  buildCounterPostalCodeGroup--;
}

core.int buildCounterPostalCodeRange = 0;
api.PostalCodeRange buildPostalCodeRange() {
  var o = api.PostalCodeRange();
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
    unittest.expect(o.postalCodeRangeBegin, unittest.equals('foo'));
    unittest.expect(o.postalCodeRangeEnd, unittest.equals('foo'));
  }
  buildCounterPostalCodeRange--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  var o = api.Price();
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
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterPriceAmount = 0;
api.PriceAmount buildPriceAmount() {
  var o = api.PriceAmount();
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
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPriceAmount--;
}

core.List<core.String> buildUnnamed4268() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4268(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4269() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4269(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CustomAttribute> buildUnnamed4270() {
  var o = <api.CustomAttribute>[];
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

void checkUnnamed4270(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0] as api.CustomAttribute);
  checkCustomAttribute(o[1] as api.CustomAttribute);
}

core.List<core.String> buildUnnamed4271() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4272() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4273() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductProductDetail> buildUnnamed4274() {
  var o = <api.ProductProductDetail>[];
  o.add(buildProductProductDetail());
  o.add(buildProductProductDetail());
  return o;
}

void checkUnnamed4274(core.List<api.ProductProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductProductDetail(o[0] as api.ProductProductDetail);
  checkProductProductDetail(o[1] as api.ProductProductDetail);
}

core.List<core.String> buildUnnamed4275() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4276() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4277() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4277(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductShipping> buildUnnamed4278() {
  var o = <api.ProductShipping>[];
  o.add(buildProductShipping());
  o.add(buildProductShipping());
  return o;
}

void checkUnnamed4278(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0] as api.ProductShipping);
  checkProductShipping(o[1] as api.ProductShipping);
}

core.List<core.String> buildUnnamed4279() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4279(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4280() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4280(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductTax> buildUnnamed4281() {
  var o = <api.ProductTax>[];
  o.add(buildProductTax());
  o.add(buildProductTax());
  return o;
}

void checkUnnamed4281(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0] as api.ProductTax);
  checkProductTax(o[1] as api.ProductTax);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  var o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed4268();
    o.adsGrouping = 'foo';
    o.adsLabels = buildUnnamed4269();
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
    o.customAttributes = buildUnnamed4270();
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.description = 'foo';
    o.displayAdsId = 'foo';
    o.displayAdsLink = 'foo';
    o.displayAdsSimilarIds = buildUnnamed4271();
    o.displayAdsTitle = 'foo';
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = 'foo';
    o.excludedDestinations = buildUnnamed4272();
    o.expirationDate = 'foo';
    o.gender = 'foo';
    o.googleProductCategory = 'foo';
    o.gtin = 'foo';
    o.id = 'foo';
    o.identifierExists = true;
    o.imageLink = 'foo';
    o.includedDestinations = buildUnnamed4273();
    o.installment = buildInstallment();
    o.isBundle = true;
    o.itemGroupId = 'foo';
    o.kind = 'foo';
    o.link = 'foo';
    o.loyaltyPoints = buildLoyaltyPoints();
    o.material = 'foo';
    o.maxEnergyEfficiencyClass = 'foo';
    o.maxHandlingTime = 'foo';
    o.minEnergyEfficiencyClass = 'foo';
    o.minHandlingTime = 'foo';
    o.mobileLink = 'foo';
    o.mpn = 'foo';
    o.multipack = 'foo';
    o.offerId = 'foo';
    o.pattern = 'foo';
    o.price = buildPrice();
    o.productDetails = buildUnnamed4274();
    o.productHighlights = buildUnnamed4275();
    o.productTypes = buildUnnamed4276();
    o.promotionIds = buildUnnamed4277();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = 'foo';
    o.sellOnGoogleQuantity = 'foo';
    o.shipping = buildUnnamed4278();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = 'foo';
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.shoppingAdsExcludedCountries = buildUnnamed4279();
    o.sizeSystem = 'foo';
    o.sizeType = 'foo';
    o.sizes = buildUnnamed4280();
    o.source = 'foo';
    o.subscriptionCost = buildProductSubscriptionCost();
    o.targetCountry = 'foo';
    o.taxCategory = 'foo';
    o.taxes = buildUnnamed4281();
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
    checkUnnamed4268(o.additionalImageLinks);
    unittest.expect(o.adsGrouping, unittest.equals('foo'));
    checkUnnamed4269(o.adsLabels);
    unittest.expect(o.adsRedirect, unittest.equals('foo'));
    unittest.expect(o.adult, unittest.isTrue);
    unittest.expect(o.ageGroup, unittest.equals('foo'));
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.availabilityDate, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.canonicalLink, unittest.equals('foo'));
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkPrice(o.costOfGoodsSold as api.Price);
    checkUnnamed4270(o.customAttributes);
    unittest.expect(o.customLabel0, unittest.equals('foo'));
    unittest.expect(o.customLabel1, unittest.equals('foo'));
    unittest.expect(o.customLabel2, unittest.equals('foo'));
    unittest.expect(o.customLabel3, unittest.equals('foo'));
    unittest.expect(o.customLabel4, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayAdsId, unittest.equals('foo'));
    unittest.expect(o.displayAdsLink, unittest.equals('foo'));
    checkUnnamed4271(o.displayAdsSimilarIds);
    unittest.expect(o.displayAdsTitle, unittest.equals('foo'));
    unittest.expect(o.displayAdsValue, unittest.equals(42.0));
    unittest.expect(o.energyEfficiencyClass, unittest.equals('foo'));
    checkUnnamed4272(o.excludedDestinations);
    unittest.expect(o.expirationDate, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.googleProductCategory, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.identifierExists, unittest.isTrue);
    unittest.expect(o.imageLink, unittest.equals('foo'));
    checkUnnamed4273(o.includedDestinations);
    checkInstallment(o.installment as api.Installment);
    unittest.expect(o.isBundle, unittest.isTrue);
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints as api.LoyaltyPoints);
    unittest.expect(o.material, unittest.equals('foo'));
    unittest.expect(o.maxEnergyEfficiencyClass, unittest.equals('foo'));
    unittest.expect(o.maxHandlingTime, unittest.equals('foo'));
    unittest.expect(o.minEnergyEfficiencyClass, unittest.equals('foo'));
    unittest.expect(o.minHandlingTime, unittest.equals('foo'));
    unittest.expect(o.mobileLink, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.multipack, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.pattern, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    checkUnnamed4274(o.productDetails);
    checkUnnamed4275(o.productHighlights);
    checkUnnamed4276(o.productTypes);
    checkUnnamed4277(o.promotionIds);
    checkPrice(o.salePrice as api.Price);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.sellOnGoogleQuantity, unittest.equals('foo'));
    checkUnnamed4278(o.shipping);
    checkProductShippingDimension(
        o.shippingHeight as api.ProductShippingDimension);
    unittest.expect(o.shippingLabel, unittest.equals('foo'));
    checkProductShippingDimension(
        o.shippingLength as api.ProductShippingDimension);
    checkProductShippingWeight(o.shippingWeight as api.ProductShippingWeight);
    checkProductShippingDimension(
        o.shippingWidth as api.ProductShippingDimension);
    checkUnnamed4279(o.shoppingAdsExcludedCountries);
    unittest.expect(o.sizeSystem, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    checkUnnamed4280(o.sizes);
    unittest.expect(o.source, unittest.equals('foo'));
    checkProductSubscriptionCost(
        o.subscriptionCost as api.ProductSubscriptionCost);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.taxCategory, unittest.equals('foo'));
    checkUnnamed4281(o.taxes);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.transitTimeLabel, unittest.equals('foo'));
    checkProductUnitPricingBaseMeasure(
        o.unitPricingBaseMeasure as api.ProductUnitPricingBaseMeasure);
    checkProductUnitPricingMeasure(
        o.unitPricingMeasure as api.ProductUnitPricingMeasure);
  }
  buildCounterProduct--;
}

core.int buildCounterProductAmount = 0;
api.ProductAmount buildProductAmount() {
  var o = api.ProductAmount();
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
    checkPrice(o.priceAmount as api.Price);
    checkPrice(o.remittedTaxAmount as api.Price);
    checkPrice(o.taxAmount as api.Price);
  }
  buildCounterProductAmount--;
}

core.int buildCounterProductProductDetail = 0;
api.ProductProductDetail buildProductProductDetail() {
  var o = api.ProductProductDetail();
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
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.attributeValue, unittest.equals('foo'));
    unittest.expect(o.sectionName, unittest.equals('foo'));
  }
  buildCounterProductProductDetail--;
}

core.int buildCounterProductShipping = 0;
api.ProductShipping buildProductShipping() {
  var o = api.ProductShipping();
  buildCounterProductShipping++;
  if (buildCounterProductShipping < 3) {
    o.country = 'foo';
    o.locationGroupName = 'foo';
    o.locationId = 'foo';
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
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locationGroupName, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterProductShipping--;
}

core.int buildCounterProductShippingDimension = 0;
api.ProductShippingDimension buildProductShippingDimension() {
  var o = api.ProductShippingDimension();
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
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductShippingDimension--;
}

core.int buildCounterProductShippingWeight = 0;
api.ProductShippingWeight buildProductShippingWeight() {
  var o = api.ProductShippingWeight();
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
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductShippingWeight--;
}

core.List<api.ProductStatusDestinationStatus> buildUnnamed4282() {
  var o = <api.ProductStatusDestinationStatus>[];
  o.add(buildProductStatusDestinationStatus());
  o.add(buildProductStatusDestinationStatus());
  return o;
}

void checkUnnamed4282(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(
      o[0] as api.ProductStatusDestinationStatus);
  checkProductStatusDestinationStatus(
      o[1] as api.ProductStatusDestinationStatus);
}

core.List<api.ProductStatusItemLevelIssue> buildUnnamed4283() {
  var o = <api.ProductStatusItemLevelIssue>[];
  o.add(buildProductStatusItemLevelIssue());
  o.add(buildProductStatusItemLevelIssue());
  return o;
}

void checkUnnamed4283(core.List<api.ProductStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusItemLevelIssue(o[0] as api.ProductStatusItemLevelIssue);
  checkProductStatusItemLevelIssue(o[1] as api.ProductStatusItemLevelIssue);
}

core.int buildCounterProductStatus = 0;
api.ProductStatus buildProductStatus() {
  var o = api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed4282();
    o.googleExpirationDate = 'foo';
    o.itemLevelIssues = buildUnnamed4283();
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
    unittest.expect(o.creationDate, unittest.equals('foo'));
    checkUnnamed4282(o.destinationStatuses);
    unittest.expect(o.googleExpirationDate, unittest.equals('foo'));
    checkUnnamed4283(o.itemLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateDate, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterProductStatus--;
}

core.List<core.String> buildUnnamed4284() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4284(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4285() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4285(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4286() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductStatusDestinationStatus = 0;
api.ProductStatusDestinationStatus buildProductStatusDestinationStatus() {
  var o = api.ProductStatusDestinationStatus();
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed4284();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed4285();
    o.pendingCountries = buildUnnamed4286();
    o.status = 'foo';
  }
  buildCounterProductStatusDestinationStatus--;
  return o;
}

void checkProductStatusDestinationStatus(api.ProductStatusDestinationStatus o) {
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    checkUnnamed4284(o.approvedCountries);
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed4285(o.disapprovedCountries);
    checkUnnamed4286(o.pendingCountries);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterProductStatusDestinationStatus--;
}

core.List<core.String> buildUnnamed4287() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4287(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductStatusItemLevelIssue = 0;
api.ProductStatusItemLevelIssue buildProductStatusItemLevelIssue() {
  var o = api.ProductStatusItemLevelIssue();
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed4287();
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
    checkUnnamed4287(o.applicableCountries);
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
    unittest.expect(o.servability, unittest.equals('foo'));
  }
  buildCounterProductStatusItemLevelIssue--;
}

core.int buildCounterProductSubscriptionCost = 0;
api.ProductSubscriptionCost buildProductSubscriptionCost() {
  var o = api.ProductSubscriptionCost();
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
    checkPrice(o.amount as api.Price);
    unittest.expect(o.period, unittest.equals('foo'));
    unittest.expect(o.periodLength, unittest.equals('foo'));
  }
  buildCounterProductSubscriptionCost--;
}

core.int buildCounterProductTax = 0;
api.ProductTax buildProductTax() {
  var o = api.ProductTax();
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
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.rate, unittest.equals(42.0));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.taxShip, unittest.isTrue);
  }
  buildCounterProductTax--;
}

core.int buildCounterProductUnitPricingBaseMeasure = 0;
api.ProductUnitPricingBaseMeasure buildProductUnitPricingBaseMeasure() {
  var o = api.ProductUnitPricingBaseMeasure();
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
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterProductUnitPricingBaseMeasure--;
}

core.int buildCounterProductUnitPricingMeasure = 0;
api.ProductUnitPricingMeasure buildProductUnitPricingMeasure() {
  var o = api.ProductUnitPricingMeasure();
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
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductUnitPricingMeasure--;
}

core.List<api.ProductsCustomBatchRequestEntry> buildUnnamed4288() {
  var o = <api.ProductsCustomBatchRequestEntry>[];
  o.add(buildProductsCustomBatchRequestEntry());
  o.add(buildProductsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4288(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(
      o[0] as api.ProductsCustomBatchRequestEntry);
  checkProductsCustomBatchRequestEntry(
      o[1] as api.ProductsCustomBatchRequestEntry);
}

core.int buildCounterProductsCustomBatchRequest = 0;
api.ProductsCustomBatchRequest buildProductsCustomBatchRequest() {
  var o = api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed4288();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

void checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed4288(o.entries);
  }
  buildCounterProductsCustomBatchRequest--;
}

core.int buildCounterProductsCustomBatchRequestEntry = 0;
api.ProductsCustomBatchRequestEntry buildProductsCustomBatchRequestEntry() {
  var o = api.ProductsCustomBatchRequestEntry();
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.feedId = 'foo';
    o.merchantId = 'foo';
    o.method = 'foo';
    o.product = buildProduct();
    o.productId = 'foo';
  }
  buildCounterProductsCustomBatchRequestEntry--;
  return o;
}

void checkProductsCustomBatchRequestEntry(
    api.ProductsCustomBatchRequestEntry o) {
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.feedId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkProduct(o.product as api.Product);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchRequestEntry--;
}

core.List<api.ProductsCustomBatchResponseEntry> buildUnnamed4289() {
  var o = <api.ProductsCustomBatchResponseEntry>[];
  o.add(buildProductsCustomBatchResponseEntry());
  o.add(buildProductsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4289(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(
      o[0] as api.ProductsCustomBatchResponseEntry);
  checkProductsCustomBatchResponseEntry(
      o[1] as api.ProductsCustomBatchResponseEntry);
}

core.int buildCounterProductsCustomBatchResponse = 0;
api.ProductsCustomBatchResponse buildProductsCustomBatchResponse() {
  var o = api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed4289();
    o.kind = 'foo';
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

void checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed4289(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchResponse--;
}

core.int buildCounterProductsCustomBatchResponseEntry = 0;
api.ProductsCustomBatchResponseEntry buildProductsCustomBatchResponseEntry() {
  var o = api.ProductsCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProduct(o.product as api.Product);
  }
  buildCounterProductsCustomBatchResponseEntry--;
}

core.List<api.Product> buildUnnamed4290() {
  var o = <api.Product>[];
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

void checkUnnamed4290(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0] as api.Product);
  checkProduct(o[1] as api.Product);
}

core.int buildCounterProductsListResponse = 0;
api.ProductsListResponse buildProductsListResponse() {
  var o = api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4290();
  }
  buildCounterProductsListResponse--;
  return o;
}

void checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4290(o.resources);
  }
  buildCounterProductsListResponse--;
}

core.List<api.ProductstatusesCustomBatchRequestEntry> buildUnnamed4291() {
  var o = <api.ProductstatusesCustomBatchRequestEntry>[];
  o.add(buildProductstatusesCustomBatchRequestEntry());
  o.add(buildProductstatusesCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4291(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(
      o[0] as api.ProductstatusesCustomBatchRequestEntry);
  checkProductstatusesCustomBatchRequestEntry(
      o[1] as api.ProductstatusesCustomBatchRequestEntry);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
api.ProductstatusesCustomBatchRequest buildProductstatusesCustomBatchRequest() {
  var o = api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed4291();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

void checkProductstatusesCustomBatchRequest(
    api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed4291(o.entries);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed4292() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4292(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductstatusesCustomBatchRequestEntry = 0;
api.ProductstatusesCustomBatchRequestEntry
    buildProductstatusesCustomBatchRequestEntry() {
  var o = api.ProductstatusesCustomBatchRequestEntry();
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.destinations = buildUnnamed4292();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkUnnamed4292(o.destinations);
    unittest.expect(o.includeAttributes, unittest.isTrue);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
}

core.List<api.ProductstatusesCustomBatchResponseEntry> buildUnnamed4293() {
  var o = <api.ProductstatusesCustomBatchResponseEntry>[];
  o.add(buildProductstatusesCustomBatchResponseEntry());
  o.add(buildProductstatusesCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4293(
    core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchResponseEntry(
      o[0] as api.ProductstatusesCustomBatchResponseEntry);
  checkProductstatusesCustomBatchResponseEntry(
      o[1] as api.ProductstatusesCustomBatchResponseEntry);
}

core.int buildCounterProductstatusesCustomBatchResponse = 0;
api.ProductstatusesCustomBatchResponse
    buildProductstatusesCustomBatchResponse() {
  var o = api.ProductstatusesCustomBatchResponse();
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed4293();
    o.kind = 'foo';
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

void checkProductstatusesCustomBatchResponse(
    api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed4293(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchResponse--;
}

core.int buildCounterProductstatusesCustomBatchResponseEntry = 0;
api.ProductstatusesCustomBatchResponseEntry
    buildProductstatusesCustomBatchResponseEntry() {
  var o = api.ProductstatusesCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProductStatus(o.productStatus as api.ProductStatus);
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
}

core.List<api.ProductStatus> buildUnnamed4294() {
  var o = <api.ProductStatus>[];
  o.add(buildProductStatus());
  o.add(buildProductStatus());
  return o;
}

void checkUnnamed4294(core.List<api.ProductStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatus(o[0] as api.ProductStatus);
  checkProductStatus(o[1] as api.ProductStatus);
}

core.int buildCounterProductstatusesListResponse = 0;
api.ProductstatusesListResponse buildProductstatusesListResponse() {
  var o = api.ProductstatusesListResponse();
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4294();
  }
  buildCounterProductstatusesListResponse--;
  return o;
}

void checkProductstatusesListResponse(api.ProductstatusesListResponse o) {
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4294(o.resources);
  }
  buildCounterProductstatusesListResponse--;
}

core.List<core.String> buildUnnamed4295() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4295(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPubsubNotificationSettings = 0;
api.PubsubNotificationSettings buildPubsubNotificationSettings() {
  var o = api.PubsubNotificationSettings();
  buildCounterPubsubNotificationSettings++;
  if (buildCounterPubsubNotificationSettings < 3) {
    o.cloudTopicName = 'foo';
    o.kind = 'foo';
    o.registeredEvents = buildUnnamed4295();
  }
  buildCounterPubsubNotificationSettings--;
  return o;
}

void checkPubsubNotificationSettings(api.PubsubNotificationSettings o) {
  buildCounterPubsubNotificationSettings++;
  if (buildCounterPubsubNotificationSettings < 3) {
    unittest.expect(o.cloudTopicName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4295(o.registeredEvents);
  }
  buildCounterPubsubNotificationSettings--;
}

core.List<core.String> buildUnnamed4296() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4296(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CarrierRate> buildUnnamed4297() {
  var o = <api.CarrierRate>[];
  o.add(buildCarrierRate());
  o.add(buildCarrierRate());
  return o;
}

void checkUnnamed4297(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0] as api.CarrierRate);
  checkCarrierRate(o[1] as api.CarrierRate);
}

core.List<api.Table> buildUnnamed4298() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed4298(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0] as api.Table);
  checkTable(o[1] as api.Table);
}

core.int buildCounterRateGroup = 0;
api.RateGroup buildRateGroup() {
  var o = api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed4296();
    o.carrierRates = buildUnnamed4297();
    o.mainTable = buildTable();
    o.name = 'foo';
    o.singleValue = buildValue();
    o.subtables = buildUnnamed4298();
  }
  buildCounterRateGroup--;
  return o;
}

void checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed4296(o.applicableShippingLabels);
    checkUnnamed4297(o.carrierRates);
    checkTable(o.mainTable as api.Table);
    unittest.expect(o.name, unittest.equals('foo'));
    checkValue(o.singleValue as api.Value);
    checkUnnamed4298(o.subtables);
  }
  buildCounterRateGroup--;
}

core.int buildCounterRefundReason = 0;
api.RefundReason buildRefundReason() {
  var o = api.RefundReason();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reasonCode, unittest.equals('foo'));
  }
  buildCounterRefundReason--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  var o = api.Region();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkRegionGeoTargetArea(o.geotargetArea as api.RegionGeoTargetArea);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    checkRegionPostalCodeArea(o.postalCodeArea as api.RegionPostalCodeArea);
    unittest.expect(o.regionId, unittest.equals('foo'));
    unittest.expect(o.regionalInventoryEligible, unittest.isTrue);
    unittest.expect(o.shippingEligible, unittest.isTrue);
  }
  buildCounterRegion--;
}

core.List<core.String> buildUnnamed4299() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4299(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionGeoTargetArea = 0;
api.RegionGeoTargetArea buildRegionGeoTargetArea() {
  var o = api.RegionGeoTargetArea();
  buildCounterRegionGeoTargetArea++;
  if (buildCounterRegionGeoTargetArea < 3) {
    o.geotargetCriteriaIds = buildUnnamed4299();
  }
  buildCounterRegionGeoTargetArea--;
  return o;
}

void checkRegionGeoTargetArea(api.RegionGeoTargetArea o) {
  buildCounterRegionGeoTargetArea++;
  if (buildCounterRegionGeoTargetArea < 3) {
    checkUnnamed4299(o.geotargetCriteriaIds);
  }
  buildCounterRegionGeoTargetArea--;
}

core.List<api.RegionPostalCodeAreaPostalCodeRange> buildUnnamed4300() {
  var o = <api.RegionPostalCodeAreaPostalCodeRange>[];
  o.add(buildRegionPostalCodeAreaPostalCodeRange());
  o.add(buildRegionPostalCodeAreaPostalCodeRange());
  return o;
}

void checkUnnamed4300(core.List<api.RegionPostalCodeAreaPostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionPostalCodeAreaPostalCodeRange(
      o[0] as api.RegionPostalCodeAreaPostalCodeRange);
  checkRegionPostalCodeAreaPostalCodeRange(
      o[1] as api.RegionPostalCodeAreaPostalCodeRange);
}

core.int buildCounterRegionPostalCodeArea = 0;
api.RegionPostalCodeArea buildRegionPostalCodeArea() {
  var o = api.RegionPostalCodeArea();
  buildCounterRegionPostalCodeArea++;
  if (buildCounterRegionPostalCodeArea < 3) {
    o.postalCodes = buildUnnamed4300();
    o.regionCode = 'foo';
  }
  buildCounterRegionPostalCodeArea--;
  return o;
}

void checkRegionPostalCodeArea(api.RegionPostalCodeArea o) {
  buildCounterRegionPostalCodeArea++;
  if (buildCounterRegionPostalCodeArea < 3) {
    checkUnnamed4300(o.postalCodes);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterRegionPostalCodeArea--;
}

core.int buildCounterRegionPostalCodeAreaPostalCodeRange = 0;
api.RegionPostalCodeAreaPostalCodeRange
    buildRegionPostalCodeAreaPostalCodeRange() {
  var o = api.RegionPostalCodeAreaPostalCodeRange();
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
    unittest.expect(o.begin, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
  }
  buildCounterRegionPostalCodeAreaPostalCodeRange--;
}

core.List<api.CustomAttribute> buildUnnamed4301() {
  var o = <api.CustomAttribute>[];
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

void checkUnnamed4301(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0] as api.CustomAttribute);
  checkCustomAttribute(o[1] as api.CustomAttribute);
}

core.int buildCounterRegionalInventory = 0;
api.RegionalInventory buildRegionalInventory() {
  var o = api.RegionalInventory();
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    o.availability = 'foo';
    o.customAttributes = buildUnnamed4301();
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
    unittest.expect(o.availability, unittest.equals('foo'));
    checkUnnamed4301(o.customAttributes);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.regionId, unittest.equals('foo'));
    checkPrice(o.salePrice as api.Price);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
  }
  buildCounterRegionalInventory--;
}

core.List<api.RegionalinventoryCustomBatchRequestEntry> buildUnnamed4302() {
  var o = <api.RegionalinventoryCustomBatchRequestEntry>[];
  o.add(buildRegionalinventoryCustomBatchRequestEntry());
  o.add(buildRegionalinventoryCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4302(
    core.List<api.RegionalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchRequestEntry(
      o[0] as api.RegionalinventoryCustomBatchRequestEntry);
  checkRegionalinventoryCustomBatchRequestEntry(
      o[1] as api.RegionalinventoryCustomBatchRequestEntry);
}

core.int buildCounterRegionalinventoryCustomBatchRequest = 0;
api.RegionalinventoryCustomBatchRequest
    buildRegionalinventoryCustomBatchRequest() {
  var o = api.RegionalinventoryCustomBatchRequest();
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed4302();
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
  return o;
}

void checkRegionalinventoryCustomBatchRequest(
    api.RegionalinventoryCustomBatchRequest o) {
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    checkUnnamed4302(o.entries);
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
}

core.int buildCounterRegionalinventoryCustomBatchRequestEntry = 0;
api.RegionalinventoryCustomBatchRequestEntry
    buildRegionalinventoryCustomBatchRequestEntry() {
  var o = api.RegionalinventoryCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    checkRegionalInventory(o.regionalInventory as api.RegionalInventory);
  }
  buildCounterRegionalinventoryCustomBatchRequestEntry--;
}

core.List<api.RegionalinventoryCustomBatchResponseEntry> buildUnnamed4303() {
  var o = <api.RegionalinventoryCustomBatchResponseEntry>[];
  o.add(buildRegionalinventoryCustomBatchResponseEntry());
  o.add(buildRegionalinventoryCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4303(
    core.List<api.RegionalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchResponseEntry(
      o[0] as api.RegionalinventoryCustomBatchResponseEntry);
  checkRegionalinventoryCustomBatchResponseEntry(
      o[1] as api.RegionalinventoryCustomBatchResponseEntry);
}

core.int buildCounterRegionalinventoryCustomBatchResponse = 0;
api.RegionalinventoryCustomBatchResponse
    buildRegionalinventoryCustomBatchResponse() {
  var o = api.RegionalinventoryCustomBatchResponse();
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed4303();
    o.kind = 'foo';
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
  return o;
}

void checkRegionalinventoryCustomBatchResponse(
    api.RegionalinventoryCustomBatchResponse o) {
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    checkUnnamed4303(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
}

core.int buildCounterRegionalinventoryCustomBatchResponseEntry = 0;
api.RegionalinventoryCustomBatchResponseEntry
    buildRegionalinventoryCustomBatchResponseEntry() {
  var o = api.RegionalinventoryCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkRegionalInventory(o.regionalInventory as api.RegionalInventory);
  }
  buildCounterRegionalinventoryCustomBatchResponseEntry--;
}

core.int buildCounterReportRow = 0;
api.ReportRow buildReportRow() {
  var o = api.ReportRow();
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
    checkMetrics(o.metrics as api.Metrics);
    checkSegments(o.segments as api.Segments);
  }
  buildCounterReportRow--;
}

core.List<api.InapplicabilityDetails> buildUnnamed4304() {
  var o = <api.InapplicabilityDetails>[];
  o.add(buildInapplicabilityDetails());
  o.add(buildInapplicabilityDetails());
  return o;
}

void checkUnnamed4304(core.List<api.InapplicabilityDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInapplicabilityDetails(o[0] as api.InapplicabilityDetails);
  checkInapplicabilityDetails(o[1] as api.InapplicabilityDetails);
}

core.List<core.String> buildUnnamed4305() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4305(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRepricingProductReport = 0;
api.RepricingProductReport buildRepricingProductReport() {
  var o = api.RepricingProductReport();
  buildCounterRepricingProductReport++;
  if (buildCounterRepricingProductReport < 3) {
    o.applicationCount = 'foo';
    o.buyboxWinningProductStats =
        buildRepricingProductReportBuyboxWinningProductStats();
    o.date = buildDate();
    o.highWatermark = buildPriceAmount();
    o.inapplicabilityDetails = buildUnnamed4304();
    o.lowWatermark = buildPriceAmount();
    o.orderItemCount = 42;
    o.ruleIds = buildUnnamed4305();
    o.totalGmv = buildPriceAmount();
    o.type = 'foo';
  }
  buildCounterRepricingProductReport--;
  return o;
}

void checkRepricingProductReport(api.RepricingProductReport o) {
  buildCounterRepricingProductReport++;
  if (buildCounterRepricingProductReport < 3) {
    unittest.expect(o.applicationCount, unittest.equals('foo'));
    checkRepricingProductReportBuyboxWinningProductStats(
        o.buyboxWinningProductStats
            as api.RepricingProductReportBuyboxWinningProductStats);
    checkDate(o.date as api.Date);
    checkPriceAmount(o.highWatermark as api.PriceAmount);
    checkUnnamed4304(o.inapplicabilityDetails);
    checkPriceAmount(o.lowWatermark as api.PriceAmount);
    unittest.expect(o.orderItemCount, unittest.equals(42));
    checkUnnamed4305(o.ruleIds);
    checkPriceAmount(o.totalGmv as api.PriceAmount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRepricingProductReport--;
}

core.int buildCounterRepricingProductReportBuyboxWinningProductStats = 0;
api.RepricingProductReportBuyboxWinningProductStats
    buildRepricingProductReportBuyboxWinningProductStats() {
  var o = api.RepricingProductReportBuyboxWinningProductStats();
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
    unittest.expect(o.buyboxWinsCount, unittest.equals(42));
  }
  buildCounterRepricingProductReportBuyboxWinningProductStats--;
}

core.int buildCounterRepricingRule = 0;
api.RepricingRule buildRepricingRule() {
  var o = api.RepricingRule();
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
    checkRepricingRuleCostOfGoodsSaleRule(
        o.cogsBasedRule as api.RepricingRuleCostOfGoodsSaleRule);
    unittest.expect(o.countryCode, unittest.equals('foo'));
    checkRepricingRuleEffectiveTime(
        o.effectiveTimePeriod as api.RepricingRuleEffectiveTime);
    checkRepricingRuleEligibleOfferMatcher(
        o.eligibleOfferMatcher as api.RepricingRuleEligibleOfferMatcher);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.paused, unittest.isTrue);
    checkRepricingRuleRestriction(
        o.restriction as api.RepricingRuleRestriction);
    unittest.expect(o.ruleId, unittest.equals('foo'));
    checkRepricingRuleStatsBasedRule(
        o.statsBasedRule as api.RepricingRuleStatsBasedRule);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRepricingRule--;
}

core.int buildCounterRepricingRuleCostOfGoodsSaleRule = 0;
api.RepricingRuleCostOfGoodsSaleRule buildRepricingRuleCostOfGoodsSaleRule() {
  var o = api.RepricingRuleCostOfGoodsSaleRule();
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
    unittest.expect(o.percentageDelta, unittest.equals(42));
    unittest.expect(o.priceDelta, unittest.equals('foo'));
  }
  buildCounterRepricingRuleCostOfGoodsSaleRule--;
}

core.List<api.RepricingRuleEffectiveTimeFixedTimePeriod> buildUnnamed4306() {
  var o = <api.RepricingRuleEffectiveTimeFixedTimePeriod>[];
  o.add(buildRepricingRuleEffectiveTimeFixedTimePeriod());
  o.add(buildRepricingRuleEffectiveTimeFixedTimePeriod());
  return o;
}

void checkUnnamed4306(
    core.List<api.RepricingRuleEffectiveTimeFixedTimePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepricingRuleEffectiveTimeFixedTimePeriod(
      o[0] as api.RepricingRuleEffectiveTimeFixedTimePeriod);
  checkRepricingRuleEffectiveTimeFixedTimePeriod(
      o[1] as api.RepricingRuleEffectiveTimeFixedTimePeriod);
}

core.int buildCounterRepricingRuleEffectiveTime = 0;
api.RepricingRuleEffectiveTime buildRepricingRuleEffectiveTime() {
  var o = api.RepricingRuleEffectiveTime();
  buildCounterRepricingRuleEffectiveTime++;
  if (buildCounterRepricingRuleEffectiveTime < 3) {
    o.fixedTimePeriods = buildUnnamed4306();
  }
  buildCounterRepricingRuleEffectiveTime--;
  return o;
}

void checkRepricingRuleEffectiveTime(api.RepricingRuleEffectiveTime o) {
  buildCounterRepricingRuleEffectiveTime++;
  if (buildCounterRepricingRuleEffectiveTime < 3) {
    checkUnnamed4306(o.fixedTimePeriods);
  }
  buildCounterRepricingRuleEffectiveTime--;
}

core.int buildCounterRepricingRuleEffectiveTimeFixedTimePeriod = 0;
api.RepricingRuleEffectiveTimeFixedTimePeriod
    buildRepricingRuleEffectiveTimeFixedTimePeriod() {
  var o = api.RepricingRuleEffectiveTimeFixedTimePeriod();
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterRepricingRuleEffectiveTimeFixedTimePeriod--;
}

core.int buildCounterRepricingRuleEligibleOfferMatcher = 0;
api.RepricingRuleEligibleOfferMatcher buildRepricingRuleEligibleOfferMatcher() {
  var o = api.RepricingRuleEligibleOfferMatcher();
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
    checkRepricingRuleEligibleOfferMatcherStringMatcher(
        o.brandMatcher as api.RepricingRuleEligibleOfferMatcherStringMatcher);
    checkRepricingRuleEligibleOfferMatcherStringMatcher(o.itemGroupIdMatcher
        as api.RepricingRuleEligibleOfferMatcherStringMatcher);
    unittest.expect(o.matcherOption, unittest.equals('foo'));
    checkRepricingRuleEligibleOfferMatcherStringMatcher(
        o.offerIdMatcher as api.RepricingRuleEligibleOfferMatcherStringMatcher);
    unittest.expect(o.skipWhenOnPromotion, unittest.isTrue);
  }
  buildCounterRepricingRuleEligibleOfferMatcher--;
}

core.List<core.String> buildUnnamed4307() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4307(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRepricingRuleEligibleOfferMatcherStringMatcher = 0;
api.RepricingRuleEligibleOfferMatcherStringMatcher
    buildRepricingRuleEligibleOfferMatcherStringMatcher() {
  var o = api.RepricingRuleEligibleOfferMatcherStringMatcher();
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher++;
  if (buildCounterRepricingRuleEligibleOfferMatcherStringMatcher < 3) {
    o.strAttributes = buildUnnamed4307();
  }
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher--;
  return o;
}

void checkRepricingRuleEligibleOfferMatcherStringMatcher(
    api.RepricingRuleEligibleOfferMatcherStringMatcher o) {
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher++;
  if (buildCounterRepricingRuleEligibleOfferMatcherStringMatcher < 3) {
    checkUnnamed4307(o.strAttributes);
  }
  buildCounterRepricingRuleEligibleOfferMatcherStringMatcher--;
}

core.List<core.String> buildUnnamed4308() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4308(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.InapplicabilityDetails> buildUnnamed4309() {
  var o = <api.InapplicabilityDetails>[];
  o.add(buildInapplicabilityDetails());
  o.add(buildInapplicabilityDetails());
  return o;
}

void checkUnnamed4309(core.List<api.InapplicabilityDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInapplicabilityDetails(o[0] as api.InapplicabilityDetails);
  checkInapplicabilityDetails(o[1] as api.InapplicabilityDetails);
}

core.List<core.String> buildUnnamed4310() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4310(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRepricingRuleReport = 0;
api.RepricingRuleReport buildRepricingRuleReport() {
  var o = api.RepricingRuleReport();
  buildCounterRepricingRuleReport++;
  if (buildCounterRepricingRuleReport < 3) {
    o.buyboxWinningRuleStats = buildRepricingRuleReportBuyboxWinningRuleStats();
    o.date = buildDate();
    o.impactedProducts = buildUnnamed4308();
    o.inapplicabilityDetails = buildUnnamed4309();
    o.inapplicableProducts = buildUnnamed4310();
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
    checkRepricingRuleReportBuyboxWinningRuleStats(o.buyboxWinningRuleStats
        as api.RepricingRuleReportBuyboxWinningRuleStats);
    checkDate(o.date as api.Date);
    checkUnnamed4308(o.impactedProducts);
    checkUnnamed4309(o.inapplicabilityDetails);
    checkUnnamed4310(o.inapplicableProducts);
    unittest.expect(o.orderItemCount, unittest.equals(42));
    unittest.expect(o.ruleId, unittest.equals('foo'));
    checkPriceAmount(o.totalGmv as api.PriceAmount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterRepricingRuleReport--;
}

core.int buildCounterRepricingRuleReportBuyboxWinningRuleStats = 0;
api.RepricingRuleReportBuyboxWinningRuleStats
    buildRepricingRuleReportBuyboxWinningRuleStats() {
  var o = api.RepricingRuleReportBuyboxWinningRuleStats();
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
    unittest.expect(o.buyboxWonProductCount, unittest.equals(42));
  }
  buildCounterRepricingRuleReportBuyboxWinningRuleStats--;
}

core.int buildCounterRepricingRuleRestriction = 0;
api.RepricingRuleRestriction buildRepricingRuleRestriction() {
  var o = api.RepricingRuleRestriction();
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
    checkRepricingRuleRestrictionBoundary(
        o.floor as api.RepricingRuleRestrictionBoundary);
    unittest.expect(o.useAutoPricingMinPrice, unittest.isTrue);
  }
  buildCounterRepricingRuleRestriction--;
}

core.int buildCounterRepricingRuleRestrictionBoundary = 0;
api.RepricingRuleRestrictionBoundary buildRepricingRuleRestrictionBoundary() {
  var o = api.RepricingRuleRestrictionBoundary();
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
    unittest.expect(o.percentageDelta, unittest.equals(42));
    unittest.expect(o.priceDelta, unittest.equals('foo'));
  }
  buildCounterRepricingRuleRestrictionBoundary--;
}

core.int buildCounterRepricingRuleStatsBasedRule = 0;
api.RepricingRuleStatsBasedRule buildRepricingRuleStatsBasedRule() {
  var o = api.RepricingRuleStatsBasedRule();
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
    unittest.expect(o.percentageDelta, unittest.equals(42));
    unittest.expect(o.priceDelta, unittest.equals('foo'));
  }
  buildCounterRepricingRuleStatsBasedRule--;
}

core.int buildCounterReturnAddress = 0;
api.ReturnAddress buildReturnAddress() {
  var o = api.ReturnAddress();
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
    checkReturnAddressAddress(o.address as api.ReturnAddressAddress);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.returnAddressId, unittest.equals('foo'));
  }
  buildCounterReturnAddress--;
}

core.List<core.String> buildUnnamed4311() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReturnAddressAddress = 0;
api.ReturnAddressAddress buildReturnAddressAddress() {
  var o = api.ReturnAddressAddress();
  buildCounterReturnAddressAddress++;
  if (buildCounterReturnAddressAddress < 3) {
    o.country = 'foo';
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed4311();
  }
  buildCounterReturnAddressAddress--;
  return o;
}

void checkReturnAddressAddress(api.ReturnAddressAddress o) {
  buildCounterReturnAddressAddress++;
  if (buildCounterReturnAddressAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed4311(o.streetAddress);
  }
  buildCounterReturnAddressAddress--;
}

core.List<core.String> buildUnnamed4312() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ReturnPolicySeasonalOverride> buildUnnamed4313() {
  var o = <api.ReturnPolicySeasonalOverride>[];
  o.add(buildReturnPolicySeasonalOverride());
  o.add(buildReturnPolicySeasonalOverride());
  return o;
}

void checkUnnamed4313(core.List<api.ReturnPolicySeasonalOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicySeasonalOverride(o[0] as api.ReturnPolicySeasonalOverride);
  checkReturnPolicySeasonalOverride(o[1] as api.ReturnPolicySeasonalOverride);
}

core.int buildCounterReturnPolicy = 0;
api.ReturnPolicy buildReturnPolicy() {
  var o = api.ReturnPolicy();
  buildCounterReturnPolicy++;
  if (buildCounterReturnPolicy < 3) {
    o.country = 'foo';
    o.kind = 'foo';
    o.label = 'foo';
    o.name = 'foo';
    o.nonFreeReturnReasons = buildUnnamed4312();
    o.policy = buildReturnPolicyPolicy();
    o.returnPolicyId = 'foo';
    o.returnShippingFee = buildPrice();
    o.seasonalOverrides = buildUnnamed4313();
  }
  buildCounterReturnPolicy--;
  return o;
}

void checkReturnPolicy(api.ReturnPolicy o) {
  buildCounterReturnPolicy++;
  if (buildCounterReturnPolicy < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4312(o.nonFreeReturnReasons);
    checkReturnPolicyPolicy(o.policy as api.ReturnPolicyPolicy);
    unittest.expect(o.returnPolicyId, unittest.equals('foo'));
    checkPrice(o.returnShippingFee as api.Price);
    checkUnnamed4313(o.seasonalOverrides);
  }
  buildCounterReturnPolicy--;
}

core.int buildCounterReturnPolicyPolicy = 0;
api.ReturnPolicyPolicy buildReturnPolicyPolicy() {
  var o = api.ReturnPolicyPolicy();
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
    unittest.expect(o.lastReturnDate, unittest.equals('foo'));
    unittest.expect(o.numberOfDays, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReturnPolicyPolicy--;
}

core.int buildCounterReturnPolicySeasonalOverride = 0;
api.ReturnPolicySeasonalOverride buildReturnPolicySeasonalOverride() {
  var o = api.ReturnPolicySeasonalOverride();
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
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkReturnPolicyPolicy(o.policy as api.ReturnPolicyPolicy);
    unittest.expect(o.startDate, unittest.equals('foo'));
  }
  buildCounterReturnPolicySeasonalOverride--;
}

core.int buildCounterReturnPricingInfo = 0;
api.ReturnPricingInfo buildReturnPricingInfo() {
  var o = api.ReturnPricingInfo();
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
    unittest.expect(o.chargeReturnShippingFee, unittest.isTrue);
    checkMonetaryAmount(o.maxReturnShippingFee as api.MonetaryAmount);
    checkMonetaryAmount(o.refundableItemsTotalAmount as api.MonetaryAmount);
    checkMonetaryAmount(o.refundableShippingAmount as api.MonetaryAmount);
    checkMonetaryAmount(o.totalRefundedAmount as api.MonetaryAmount);
  }
  buildCounterReturnPricingInfo--;
}

core.List<api.ShipmentTrackingInfo> buildUnnamed4314() {
  var o = <api.ShipmentTrackingInfo>[];
  o.add(buildShipmentTrackingInfo());
  o.add(buildShipmentTrackingInfo());
  return o;
}

void checkUnnamed4314(core.List<api.ShipmentTrackingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentTrackingInfo(o[0] as api.ShipmentTrackingInfo);
  checkShipmentTrackingInfo(o[1] as api.ShipmentTrackingInfo);
}

core.int buildCounterReturnShipment = 0;
api.ReturnShipment buildReturnShipment() {
  var o = api.ReturnShipment();
  buildCounterReturnShipment++;
  if (buildCounterReturnShipment < 3) {
    o.creationDate = 'foo';
    o.deliveryDate = 'foo';
    o.returnMethodType = 'foo';
    o.shipmentId = 'foo';
    o.shipmentTrackingInfos = buildUnnamed4314();
    o.shippingDate = 'foo';
    o.state = 'foo';
  }
  buildCounterReturnShipment--;
  return o;
}

void checkReturnShipment(api.ReturnShipment o) {
  buildCounterReturnShipment++;
  if (buildCounterReturnShipment < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.returnMethodType, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    checkUnnamed4314(o.shipmentTrackingInfos);
    unittest.expect(o.shippingDate, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterReturnShipment--;
}

core.List<api.ReturnaddressCustomBatchRequestEntry> buildUnnamed4315() {
  var o = <api.ReturnaddressCustomBatchRequestEntry>[];
  o.add(buildReturnaddressCustomBatchRequestEntry());
  o.add(buildReturnaddressCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4315(core.List<api.ReturnaddressCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchRequestEntry(
      o[0] as api.ReturnaddressCustomBatchRequestEntry);
  checkReturnaddressCustomBatchRequestEntry(
      o[1] as api.ReturnaddressCustomBatchRequestEntry);
}

core.int buildCounterReturnaddressCustomBatchRequest = 0;
api.ReturnaddressCustomBatchRequest buildReturnaddressCustomBatchRequest() {
  var o = api.ReturnaddressCustomBatchRequest();
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    o.entries = buildUnnamed4315();
  }
  buildCounterReturnaddressCustomBatchRequest--;
  return o;
}

void checkReturnaddressCustomBatchRequest(
    api.ReturnaddressCustomBatchRequest o) {
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    checkUnnamed4315(o.entries);
  }
  buildCounterReturnaddressCustomBatchRequest--;
}

core.int buildCounterReturnaddressCustomBatchRequestEntry = 0;
api.ReturnaddressCustomBatchRequestEntry
    buildReturnaddressCustomBatchRequestEntry() {
  var o = api.ReturnaddressCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkReturnAddress(o.returnAddress as api.ReturnAddress);
    unittest.expect(o.returnAddressId, unittest.equals('foo'));
  }
  buildCounterReturnaddressCustomBatchRequestEntry--;
}

core.List<api.ReturnaddressCustomBatchResponseEntry> buildUnnamed4316() {
  var o = <api.ReturnaddressCustomBatchResponseEntry>[];
  o.add(buildReturnaddressCustomBatchResponseEntry());
  o.add(buildReturnaddressCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4316(core.List<api.ReturnaddressCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchResponseEntry(
      o[0] as api.ReturnaddressCustomBatchResponseEntry);
  checkReturnaddressCustomBatchResponseEntry(
      o[1] as api.ReturnaddressCustomBatchResponseEntry);
}

core.int buildCounterReturnaddressCustomBatchResponse = 0;
api.ReturnaddressCustomBatchResponse buildReturnaddressCustomBatchResponse() {
  var o = api.ReturnaddressCustomBatchResponse();
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    o.entries = buildUnnamed4316();
    o.kind = 'foo';
  }
  buildCounterReturnaddressCustomBatchResponse--;
  return o;
}

void checkReturnaddressCustomBatchResponse(
    api.ReturnaddressCustomBatchResponse o) {
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    checkUnnamed4316(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterReturnaddressCustomBatchResponse--;
}

core.int buildCounterReturnaddressCustomBatchResponseEntry = 0;
api.ReturnaddressCustomBatchResponseEntry
    buildReturnaddressCustomBatchResponseEntry() {
  var o = api.ReturnaddressCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkReturnAddress(o.returnAddress as api.ReturnAddress);
  }
  buildCounterReturnaddressCustomBatchResponseEntry--;
}

core.List<api.ReturnAddress> buildUnnamed4317() {
  var o = <api.ReturnAddress>[];
  o.add(buildReturnAddress());
  o.add(buildReturnAddress());
  return o;
}

void checkUnnamed4317(core.List<api.ReturnAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnAddress(o[0] as api.ReturnAddress);
  checkReturnAddress(o[1] as api.ReturnAddress);
}

core.int buildCounterReturnaddressListResponse = 0;
api.ReturnaddressListResponse buildReturnaddressListResponse() {
  var o = api.ReturnaddressListResponse();
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4317();
  }
  buildCounterReturnaddressListResponse--;
  return o;
}

void checkReturnaddressListResponse(api.ReturnaddressListResponse o) {
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4317(o.resources);
  }
  buildCounterReturnaddressListResponse--;
}

core.List<api.ReturnpolicyCustomBatchRequestEntry> buildUnnamed4318() {
  var o = <api.ReturnpolicyCustomBatchRequestEntry>[];
  o.add(buildReturnpolicyCustomBatchRequestEntry());
  o.add(buildReturnpolicyCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4318(core.List<api.ReturnpolicyCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchRequestEntry(
      o[0] as api.ReturnpolicyCustomBatchRequestEntry);
  checkReturnpolicyCustomBatchRequestEntry(
      o[1] as api.ReturnpolicyCustomBatchRequestEntry);
}

core.int buildCounterReturnpolicyCustomBatchRequest = 0;
api.ReturnpolicyCustomBatchRequest buildReturnpolicyCustomBatchRequest() {
  var o = api.ReturnpolicyCustomBatchRequest();
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    o.entries = buildUnnamed4318();
  }
  buildCounterReturnpolicyCustomBatchRequest--;
  return o;
}

void checkReturnpolicyCustomBatchRequest(api.ReturnpolicyCustomBatchRequest o) {
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    checkUnnamed4318(o.entries);
  }
  buildCounterReturnpolicyCustomBatchRequest--;
}

core.int buildCounterReturnpolicyCustomBatchRequestEntry = 0;
api.ReturnpolicyCustomBatchRequestEntry
    buildReturnpolicyCustomBatchRequestEntry() {
  var o = api.ReturnpolicyCustomBatchRequestEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkReturnPolicy(o.returnPolicy as api.ReturnPolicy);
    unittest.expect(o.returnPolicyId, unittest.equals('foo'));
  }
  buildCounterReturnpolicyCustomBatchRequestEntry--;
}

core.List<api.ReturnpolicyCustomBatchResponseEntry> buildUnnamed4319() {
  var o = <api.ReturnpolicyCustomBatchResponseEntry>[];
  o.add(buildReturnpolicyCustomBatchResponseEntry());
  o.add(buildReturnpolicyCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4319(core.List<api.ReturnpolicyCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchResponseEntry(
      o[0] as api.ReturnpolicyCustomBatchResponseEntry);
  checkReturnpolicyCustomBatchResponseEntry(
      o[1] as api.ReturnpolicyCustomBatchResponseEntry);
}

core.int buildCounterReturnpolicyCustomBatchResponse = 0;
api.ReturnpolicyCustomBatchResponse buildReturnpolicyCustomBatchResponse() {
  var o = api.ReturnpolicyCustomBatchResponse();
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    o.entries = buildUnnamed4319();
    o.kind = 'foo';
  }
  buildCounterReturnpolicyCustomBatchResponse--;
  return o;
}

void checkReturnpolicyCustomBatchResponse(
    api.ReturnpolicyCustomBatchResponse o) {
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    checkUnnamed4319(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterReturnpolicyCustomBatchResponse--;
}

core.int buildCounterReturnpolicyCustomBatchResponseEntry = 0;
api.ReturnpolicyCustomBatchResponseEntry
    buildReturnpolicyCustomBatchResponseEntry() {
  var o = api.ReturnpolicyCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkReturnPolicy(o.returnPolicy as api.ReturnPolicy);
  }
  buildCounterReturnpolicyCustomBatchResponseEntry--;
}

core.List<api.ReturnPolicy> buildUnnamed4320() {
  var o = <api.ReturnPolicy>[];
  o.add(buildReturnPolicy());
  o.add(buildReturnPolicy());
  return o;
}

void checkUnnamed4320(core.List<api.ReturnPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicy(o[0] as api.ReturnPolicy);
  checkReturnPolicy(o[1] as api.ReturnPolicy);
}

core.int buildCounterReturnpolicyListResponse = 0;
api.ReturnpolicyListResponse buildReturnpolicyListResponse() {
  var o = api.ReturnpolicyListResponse();
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    o.kind = 'foo';
    o.resources = buildUnnamed4320();
  }
  buildCounterReturnpolicyListResponse--;
  return o;
}

void checkReturnpolicyListResponse(api.ReturnpolicyListResponse o) {
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4320(o.resources);
  }
  buildCounterReturnpolicyListResponse--;
}

core.List<api.Value> buildUnnamed4321() {
  var o = <api.Value>[];
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

void checkUnnamed4321(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0] as api.Value);
  checkValue(o[1] as api.Value);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  var o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed4321();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed4321(o.cells);
  }
  buildCounterRow--;
}

core.int buildCounterSearchRequest = 0;
api.SearchRequest buildSearchRequest() {
  var o = api.SearchRequest();
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
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
  }
  buildCounterSearchRequest--;
}

core.List<api.ReportRow> buildUnnamed4322() {
  var o = <api.ReportRow>[];
  o.add(buildReportRow());
  o.add(buildReportRow());
  return o;
}

void checkUnnamed4322(core.List<api.ReportRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportRow(o[0] as api.ReportRow);
  checkReportRow(o[1] as api.ReportRow);
}

core.int buildCounterSearchResponse = 0;
api.SearchResponse buildSearchResponse() {
  var o = api.SearchResponse();
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed4322();
  }
  buildCounterSearchResponse--;
  return o;
}

void checkSearchResponse(api.SearchResponse o) {
  buildCounterSearchResponse++;
  if (buildCounterSearchResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4322(o.results);
  }
  buildCounterSearchResponse--;
}

core.int buildCounterSegments = 0;
api.Segments buildSegments() {
  var o = api.Segments();
  buildCounterSegments++;
  if (buildCounterSegments < 3) {
    o.date = buildDate();
    o.offerId = 'foo';
    o.program = 'foo';
  }
  buildCounterSegments--;
  return o;
}

void checkSegments(api.Segments o) {
  buildCounterSegments++;
  if (buildCounterSegments < 3) {
    checkDate(o.date as api.Date);
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.program, unittest.equals('foo'));
  }
  buildCounterSegments--;
}

core.List<api.RateGroup> buildUnnamed4323() {
  var o = <api.RateGroup>[];
  o.add(buildRateGroup());
  o.add(buildRateGroup());
  return o;
}

void checkUnnamed4323(core.List<api.RateGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRateGroup(o[0] as api.RateGroup);
  checkRateGroup(o[1] as api.RateGroup);
}

core.int buildCounterService = 0;
api.Service buildService() {
  var o = api.Service();
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
    o.rateGroups = buildUnnamed4323();
    o.shipmentType = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.deliveryCountry, unittest.equals('foo'));
    checkDeliveryTime(o.deliveryTime as api.DeliveryTime);
    unittest.expect(o.eligibility, unittest.equals('foo'));
    checkPrice(o.minimumOrderValue as api.Price);
    checkMinimumOrderValueTable(
        o.minimumOrderValueTable as api.MinimumOrderValueTable);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPickupCarrierService(o.pickupService as api.PickupCarrierService);
    checkUnnamed4323(o.rateGroups);
    unittest.expect(o.shipmentType, unittest.equals('foo'));
  }
  buildCounterService--;
}

core.List<core.String> buildUnnamed4324() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4324(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSettlementReport = 0;
api.SettlementReport buildSettlementReport() {
  var o = api.SettlementReport();
  buildCounterSettlementReport++;
  if (buildCounterSettlementReport < 3) {
    o.endDate = 'foo';
    o.kind = 'foo';
    o.previousBalance = buildPrice();
    o.settlementId = 'foo';
    o.startDate = 'foo';
    o.transferAmount = buildPrice();
    o.transferDate = 'foo';
    o.transferIds = buildUnnamed4324();
  }
  buildCounterSettlementReport--;
  return o;
}

void checkSettlementReport(api.SettlementReport o) {
  buildCounterSettlementReport++;
  if (buildCounterSettlementReport < 3) {
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.previousBalance as api.Price);
    unittest.expect(o.settlementId, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    checkPrice(o.transferAmount as api.Price);
    unittest.expect(o.transferDate, unittest.equals('foo'));
    checkUnnamed4324(o.transferIds);
  }
  buildCounterSettlementReport--;
}

core.int buildCounterSettlementTransaction = 0;
api.SettlementTransaction buildSettlementTransaction() {
  var o = api.SettlementTransaction();
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
    checkSettlementTransactionAmount(
        o.amount as api.SettlementTransactionAmount);
    checkSettlementTransactionIdentifiers(
        o.identifiers as api.SettlementTransactionIdentifiers);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSettlementTransactionTransaction(
        o.transaction as api.SettlementTransactionTransaction);
  }
  buildCounterSettlementTransaction--;
}

core.int buildCounterSettlementTransactionAmount = 0;
api.SettlementTransactionAmount buildSettlementTransactionAmount() {
  var o = api.SettlementTransactionAmount();
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
    checkSettlementTransactionAmountCommission(
        o.commission as api.SettlementTransactionAmountCommission);
    unittest.expect(o.description, unittest.equals('foo'));
    checkPrice(o.transactionAmount as api.Price);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSettlementTransactionAmount--;
}

core.int buildCounterSettlementTransactionAmountCommission = 0;
api.SettlementTransactionAmountCommission
    buildSettlementTransactionAmountCommission() {
  var o = api.SettlementTransactionAmountCommission();
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
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.rate, unittest.equals('foo'));
  }
  buildCounterSettlementTransactionAmountCommission--;
}

core.List<core.String> buildUnnamed4325() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4325(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSettlementTransactionIdentifiers = 0;
api.SettlementTransactionIdentifiers buildSettlementTransactionIdentifiers() {
  var o = api.SettlementTransactionIdentifiers();
  buildCounterSettlementTransactionIdentifiers++;
  if (buildCounterSettlementTransactionIdentifiers < 3) {
    o.adjustmentId = 'foo';
    o.merchantOrderId = 'foo';
    o.orderItemId = 'foo';
    o.settlementEntryId = 'foo';
    o.shipmentIds = buildUnnamed4325();
    o.transactionId = 'foo';
  }
  buildCounterSettlementTransactionIdentifiers--;
  return o;
}

void checkSettlementTransactionIdentifiers(
    api.SettlementTransactionIdentifiers o) {
  buildCounterSettlementTransactionIdentifiers++;
  if (buildCounterSettlementTransactionIdentifiers < 3) {
    unittest.expect(o.adjustmentId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.orderItemId, unittest.equals('foo'));
    unittest.expect(o.settlementEntryId, unittest.equals('foo'));
    checkUnnamed4325(o.shipmentIds);
    unittest.expect(o.transactionId, unittest.equals('foo'));
  }
  buildCounterSettlementTransactionIdentifiers--;
}

core.int buildCounterSettlementTransactionTransaction = 0;
api.SettlementTransactionTransaction buildSettlementTransactionTransaction() {
  var o = api.SettlementTransactionTransaction();
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
    unittest.expect(o.postDate, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSettlementTransactionTransaction--;
}

core.List<api.SettlementReport> buildUnnamed4326() {
  var o = <api.SettlementReport>[];
  o.add(buildSettlementReport());
  o.add(buildSettlementReport());
  return o;
}

void checkUnnamed4326(core.List<api.SettlementReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSettlementReport(o[0] as api.SettlementReport);
  checkSettlementReport(o[1] as api.SettlementReport);
}

core.int buildCounterSettlementreportsListResponse = 0;
api.SettlementreportsListResponse buildSettlementreportsListResponse() {
  var o = api.SettlementreportsListResponse();
  buildCounterSettlementreportsListResponse++;
  if (buildCounterSettlementreportsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4326();
  }
  buildCounterSettlementreportsListResponse--;
  return o;
}

void checkSettlementreportsListResponse(api.SettlementreportsListResponse o) {
  buildCounterSettlementreportsListResponse++;
  if (buildCounterSettlementreportsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4326(o.resources);
  }
  buildCounterSettlementreportsListResponse--;
}

core.List<api.SettlementTransaction> buildUnnamed4327() {
  var o = <api.SettlementTransaction>[];
  o.add(buildSettlementTransaction());
  o.add(buildSettlementTransaction());
  return o;
}

void checkUnnamed4327(core.List<api.SettlementTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSettlementTransaction(o[0] as api.SettlementTransaction);
  checkSettlementTransaction(o[1] as api.SettlementTransaction);
}

core.int buildCounterSettlementtransactionsListResponse = 0;
api.SettlementtransactionsListResponse
    buildSettlementtransactionsListResponse() {
  var o = api.SettlementtransactionsListResponse();
  buildCounterSettlementtransactionsListResponse++;
  if (buildCounterSettlementtransactionsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4327();
  }
  buildCounterSettlementtransactionsListResponse--;
  return o;
}

void checkSettlementtransactionsListResponse(
    api.SettlementtransactionsListResponse o) {
  buildCounterSettlementtransactionsListResponse++;
  if (buildCounterSettlementtransactionsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4327(o.resources);
  }
  buildCounterSettlementtransactionsListResponse--;
}

core.List<api.ShipmentInvoiceLineItemInvoice> buildUnnamed4328() {
  var o = <api.ShipmentInvoiceLineItemInvoice>[];
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

void checkUnnamed4328(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(
      o[0] as api.ShipmentInvoiceLineItemInvoice);
  checkShipmentInvoiceLineItemInvoice(
      o[1] as api.ShipmentInvoiceLineItemInvoice);
}

core.int buildCounterShipmentInvoice = 0;
api.ShipmentInvoice buildShipmentInvoice() {
  var o = api.ShipmentInvoice();
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed4328();
    o.shipmentGroupId = 'foo';
  }
  buildCounterShipmentInvoice--;
  return o;
}

void checkShipmentInvoice(api.ShipmentInvoice o) {
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    checkInvoiceSummary(o.invoiceSummary as api.InvoiceSummary);
    checkUnnamed4328(o.lineItemInvoices);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterShipmentInvoice--;
}

core.List<core.String> buildUnnamed4329() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterShipmentInvoiceLineItemInvoice = 0;
api.ShipmentInvoiceLineItemInvoice buildShipmentInvoiceLineItemInvoice() {
  var o = api.ShipmentInvoiceLineItemInvoice();
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    o.lineItemId = 'foo';
    o.productId = 'foo';
    o.shipmentUnitIds = buildUnnamed4329();
    o.unitInvoice = buildUnitInvoice();
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
  return o;
}

void checkShipmentInvoiceLineItemInvoice(api.ShipmentInvoiceLineItemInvoice o) {
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed4329(o.shipmentUnitIds);
    checkUnitInvoice(o.unitInvoice as api.UnitInvoice);
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
}

core.int buildCounterShipmentTrackingInfo = 0;
api.ShipmentTrackingInfo buildShipmentTrackingInfo() {
  var o = api.ShipmentTrackingInfo();
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
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.trackingNumber, unittest.equals('foo'));
  }
  buildCounterShipmentTrackingInfo--;
}

core.List<api.PostalCodeGroup> buildUnnamed4330() {
  var o = <api.PostalCodeGroup>[];
  o.add(buildPostalCodeGroup());
  o.add(buildPostalCodeGroup());
  return o;
}

void checkUnnamed4330(core.List<api.PostalCodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeGroup(o[0] as api.PostalCodeGroup);
  checkPostalCodeGroup(o[1] as api.PostalCodeGroup);
}

core.List<api.Service> buildUnnamed4331() {
  var o = <api.Service>[];
  o.add(buildService());
  o.add(buildService());
  return o;
}

void checkUnnamed4331(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0] as api.Service);
  checkService(o[1] as api.Service);
}

core.int buildCounterShippingSettings = 0;
api.ShippingSettings buildShippingSettings() {
  var o = api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.accountId = 'foo';
    o.postalCodeGroups = buildUnnamed4330();
    o.services = buildUnnamed4331();
  }
  buildCounterShippingSettings--;
  return o;
}

void checkShippingSettings(api.ShippingSettings o) {
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4330(o.postalCodeGroups);
    checkUnnamed4331(o.services);
  }
  buildCounterShippingSettings--;
}

core.List<api.ShippingsettingsCustomBatchRequestEntry> buildUnnamed4332() {
  var o = <api.ShippingsettingsCustomBatchRequestEntry>[];
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed4332(
    core.List<api.ShippingsettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchRequestEntry(
      o[0] as api.ShippingsettingsCustomBatchRequestEntry);
  checkShippingsettingsCustomBatchRequestEntry(
      o[1] as api.ShippingsettingsCustomBatchRequestEntry);
}

core.int buildCounterShippingsettingsCustomBatchRequest = 0;
api.ShippingsettingsCustomBatchRequest
    buildShippingsettingsCustomBatchRequest() {
  var o = api.ShippingsettingsCustomBatchRequest();
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed4332();
  }
  buildCounterShippingsettingsCustomBatchRequest--;
  return o;
}

void checkShippingsettingsCustomBatchRequest(
    api.ShippingsettingsCustomBatchRequest o) {
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    checkUnnamed4332(o.entries);
  }
  buildCounterShippingsettingsCustomBatchRequest--;
}

core.int buildCounterShippingsettingsCustomBatchRequestEntry = 0;
api.ShippingsettingsCustomBatchRequestEntry
    buildShippingsettingsCustomBatchRequestEntry() {
  var o = api.ShippingsettingsCustomBatchRequestEntry();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkShippingSettings(o.shippingSettings as api.ShippingSettings);
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
}

core.List<api.ShippingsettingsCustomBatchResponseEntry> buildUnnamed4333() {
  var o = <api.ShippingsettingsCustomBatchResponseEntry>[];
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed4333(
    core.List<api.ShippingsettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchResponseEntry(
      o[0] as api.ShippingsettingsCustomBatchResponseEntry);
  checkShippingsettingsCustomBatchResponseEntry(
      o[1] as api.ShippingsettingsCustomBatchResponseEntry);
}

core.int buildCounterShippingsettingsCustomBatchResponse = 0;
api.ShippingsettingsCustomBatchResponse
    buildShippingsettingsCustomBatchResponse() {
  var o = api.ShippingsettingsCustomBatchResponse();
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed4333();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsCustomBatchResponse--;
  return o;
}

void checkShippingsettingsCustomBatchResponse(
    api.ShippingsettingsCustomBatchResponse o) {
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    checkUnnamed4333(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsCustomBatchResponse--;
}

core.int buildCounterShippingsettingsCustomBatchResponseEntry = 0;
api.ShippingsettingsCustomBatchResponseEntry
    buildShippingsettingsCustomBatchResponseEntry() {
  var o = api.ShippingsettingsCustomBatchResponseEntry();
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
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors as api.Errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkShippingSettings(o.shippingSettings as api.ShippingSettings);
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
}

core.List<api.CarriersCarrier> buildUnnamed4334() {
  var o = <api.CarriersCarrier>[];
  o.add(buildCarriersCarrier());
  o.add(buildCarriersCarrier());
  return o;
}

void checkUnnamed4334(core.List<api.CarriersCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarriersCarrier(o[0] as api.CarriersCarrier);
  checkCarriersCarrier(o[1] as api.CarriersCarrier);
}

core.int buildCounterShippingsettingsGetSupportedCarriersResponse = 0;
api.ShippingsettingsGetSupportedCarriersResponse
    buildShippingsettingsGetSupportedCarriersResponse() {
  var o = api.ShippingsettingsGetSupportedCarriersResponse();
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    o.carriers = buildUnnamed4334();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
  return o;
}

void checkShippingsettingsGetSupportedCarriersResponse(
    api.ShippingsettingsGetSupportedCarriersResponse o) {
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    checkUnnamed4334(o.carriers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
}

core.List<api.HolidaysHoliday> buildUnnamed4335() {
  var o = <api.HolidaysHoliday>[];
  o.add(buildHolidaysHoliday());
  o.add(buildHolidaysHoliday());
  return o;
}

void checkUnnamed4335(core.List<api.HolidaysHoliday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidaysHoliday(o[0] as api.HolidaysHoliday);
  checkHolidaysHoliday(o[1] as api.HolidaysHoliday);
}

core.int buildCounterShippingsettingsGetSupportedHolidaysResponse = 0;
api.ShippingsettingsGetSupportedHolidaysResponse
    buildShippingsettingsGetSupportedHolidaysResponse() {
  var o = api.ShippingsettingsGetSupportedHolidaysResponse();
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    o.holidays = buildUnnamed4335();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
  return o;
}

void checkShippingsettingsGetSupportedHolidaysResponse(
    api.ShippingsettingsGetSupportedHolidaysResponse o) {
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    checkUnnamed4335(o.holidays);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
}

core.List<api.PickupServicesPickupService> buildUnnamed4336() {
  var o = <api.PickupServicesPickupService>[];
  o.add(buildPickupServicesPickupService());
  o.add(buildPickupServicesPickupService());
  return o;
}

void checkUnnamed4336(core.List<api.PickupServicesPickupService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPickupServicesPickupService(o[0] as api.PickupServicesPickupService);
  checkPickupServicesPickupService(o[1] as api.PickupServicesPickupService);
}

core.int buildCounterShippingsettingsGetSupportedPickupServicesResponse = 0;
api.ShippingsettingsGetSupportedPickupServicesResponse
    buildShippingsettingsGetSupportedPickupServicesResponse() {
  var o = api.ShippingsettingsGetSupportedPickupServicesResponse();
  buildCounterShippingsettingsGetSupportedPickupServicesResponse++;
  if (buildCounterShippingsettingsGetSupportedPickupServicesResponse < 3) {
    o.kind = 'foo';
    o.pickupServices = buildUnnamed4336();
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
  return o;
}

void checkShippingsettingsGetSupportedPickupServicesResponse(
    api.ShippingsettingsGetSupportedPickupServicesResponse o) {
  buildCounterShippingsettingsGetSupportedPickupServicesResponse++;
  if (buildCounterShippingsettingsGetSupportedPickupServicesResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4336(o.pickupServices);
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
}

core.List<api.ShippingSettings> buildUnnamed4337() {
  var o = <api.ShippingSettings>[];
  o.add(buildShippingSettings());
  o.add(buildShippingSettings());
  return o;
}

void checkUnnamed4337(core.List<api.ShippingSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingSettings(o[0] as api.ShippingSettings);
  checkShippingSettings(o[1] as api.ShippingSettings);
}

core.int buildCounterShippingsettingsListResponse = 0;
api.ShippingsettingsListResponse buildShippingsettingsListResponse() {
  var o = api.ShippingsettingsListResponse();
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed4337();
  }
  buildCounterShippingsettingsListResponse--;
  return o;
}

void checkShippingsettingsListResponse(api.ShippingsettingsListResponse o) {
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4337(o.resources);
  }
  buildCounterShippingsettingsListResponse--;
}

core.List<api.Row> buildUnnamed4338() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed4338(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0] as api.Row);
  checkRow(o[1] as api.Row);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  var o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columnHeaders = buildHeaders();
    o.name = 'foo';
    o.rowHeaders = buildHeaders();
    o.rows = buildUnnamed4338();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkHeaders(o.columnHeaders as api.Headers);
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeaders(o.rowHeaders as api.Headers);
    checkUnnamed4338(o.rows);
  }
  buildCounterTable--;
}

core.List<api.TestOrderLineItem> buildUnnamed4339() {
  var o = <api.TestOrderLineItem>[];
  o.add(buildTestOrderLineItem());
  o.add(buildTestOrderLineItem());
  return o;
}

void checkUnnamed4339(core.List<api.TestOrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderLineItem(o[0] as api.TestOrderLineItem);
  checkTestOrderLineItem(o[1] as api.TestOrderLineItem);
}

core.List<api.OrderPromotion> buildUnnamed4340() {
  var o = <api.OrderPromotion>[];
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

void checkUnnamed4340(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0] as api.OrderPromotion);
  checkOrderPromotion(o[1] as api.OrderPromotion);
}

core.int buildCounterTestOrder = 0;
api.TestOrder buildTestOrder() {
  var o = api.TestOrder();
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    o.deliveryDetails = buildTestOrderDeliveryDetails();
    o.enableOrderinvoices = true;
    o.kind = 'foo';
    o.lineItems = buildUnnamed4339();
    o.notificationMode = 'foo';
    o.pickupDetails = buildTestOrderPickupDetails();
    o.predefinedBillingAddress = 'foo';
    o.predefinedDeliveryAddress = 'foo';
    o.predefinedEmail = 'foo';
    o.predefinedPickupDetails = 'foo';
    o.promotions = buildUnnamed4340();
    o.shippingCost = buildPrice();
    o.shippingOption = 'foo';
  }
  buildCounterTestOrder--;
  return o;
}

void checkTestOrder(api.TestOrder o) {
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    checkTestOrderDeliveryDetails(
        o.deliveryDetails as api.TestOrderDeliveryDetails);
    unittest.expect(o.enableOrderinvoices, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4339(o.lineItems);
    unittest.expect(o.notificationMode, unittest.equals('foo'));
    checkTestOrderPickupDetails(o.pickupDetails as api.TestOrderPickupDetails);
    unittest.expect(o.predefinedBillingAddress, unittest.equals('foo'));
    unittest.expect(o.predefinedDeliveryAddress, unittest.equals('foo'));
    unittest.expect(o.predefinedEmail, unittest.equals('foo'));
    unittest.expect(o.predefinedPickupDetails, unittest.equals('foo'));
    checkUnnamed4340(o.promotions);
    checkPrice(o.shippingCost as api.Price);
    unittest.expect(o.shippingOption, unittest.equals('foo'));
  }
  buildCounterTestOrder--;
}

core.List<core.String> buildUnnamed4341() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4341(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4342() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4342(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestOrderAddress = 0;
api.TestOrderAddress buildTestOrderAddress() {
  var o = api.TestOrderAddress();
  buildCounterTestOrderAddress++;
  if (buildCounterTestOrderAddress < 3) {
    o.country = 'foo';
    o.fullAddress = buildUnnamed4341();
    o.isPostOfficeBox = true;
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed4342();
  }
  buildCounterTestOrderAddress--;
  return o;
}

void checkTestOrderAddress(api.TestOrderAddress o) {
  buildCounterTestOrderAddress++;
  if (buildCounterTestOrderAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed4341(o.fullAddress);
    unittest.expect(o.isPostOfficeBox, unittest.isTrue);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed4342(o.streetAddress);
  }
  buildCounterTestOrderAddress--;
}

core.int buildCounterTestOrderDeliveryDetails = 0;
api.TestOrderDeliveryDetails buildTestOrderDeliveryDetails() {
  var o = api.TestOrderDeliveryDetails();
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
    checkTestOrderAddress(o.address as api.TestOrderAddress);
    unittest.expect(o.isScheduledDelivery, unittest.isTrue);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterTestOrderDeliveryDetails--;
}

core.int buildCounterTestOrderLineItem = 0;
api.TestOrderLineItem buildTestOrderLineItem() {
  var o = api.TestOrderLineItem();
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
    checkTestOrderLineItemProduct(o.product as api.TestOrderLineItemProduct);
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo as api.OrderLineItemReturnInfo);
    checkOrderLineItemShippingDetails(
        o.shippingDetails as api.OrderLineItemShippingDetails);
  }
  buildCounterTestOrderLineItem--;
}

core.List<api.OrderLineItemProductFee> buildUnnamed4343() {
  var o = <api.OrderLineItemProductFee>[];
  o.add(buildOrderLineItemProductFee());
  o.add(buildOrderLineItemProductFee());
  return o;
}

void checkUnnamed4343(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0] as api.OrderLineItemProductFee);
  checkOrderLineItemProductFee(o[1] as api.OrderLineItemProductFee);
}

core.List<api.OrderLineItemProductVariantAttribute> buildUnnamed4344() {
  var o = <api.OrderLineItemProductVariantAttribute>[];
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

void checkUnnamed4344(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(
      o[0] as api.OrderLineItemProductVariantAttribute);
  checkOrderLineItemProductVariantAttribute(
      o[1] as api.OrderLineItemProductVariantAttribute);
}

core.int buildCounterTestOrderLineItemProduct = 0;
api.TestOrderLineItemProduct buildTestOrderLineItemProduct() {
  var o = api.TestOrderLineItemProduct();
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    o.brand = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.fees = buildUnnamed4343();
    o.gtin = 'foo';
    o.imageLink = 'foo';
    o.itemGroupId = 'foo';
    o.mpn = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.targetCountry = 'foo';
    o.title = 'foo';
    o.variantAttributes = buildUnnamed4344();
  }
  buildCounterTestOrderLineItemProduct--;
  return o;
}

void checkTestOrderLineItemProduct(api.TestOrderLineItemProduct o) {
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed4343(o.fees);
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price as api.Price);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed4344(o.variantAttributes);
  }
  buildCounterTestOrderLineItemProduct--;
}

core.List<api.TestOrderPickupDetailsPickupPerson> buildUnnamed4345() {
  var o = <api.TestOrderPickupDetailsPickupPerson>[];
  o.add(buildTestOrderPickupDetailsPickupPerson());
  o.add(buildTestOrderPickupDetailsPickupPerson());
  return o;
}

void checkUnnamed4345(core.List<api.TestOrderPickupDetailsPickupPerson> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderPickupDetailsPickupPerson(
      o[0] as api.TestOrderPickupDetailsPickupPerson);
  checkTestOrderPickupDetailsPickupPerson(
      o[1] as api.TestOrderPickupDetailsPickupPerson);
}

core.int buildCounterTestOrderPickupDetails = 0;
api.TestOrderPickupDetails buildTestOrderPickupDetails() {
  var o = api.TestOrderPickupDetails();
  buildCounterTestOrderPickupDetails++;
  if (buildCounterTestOrderPickupDetails < 3) {
    o.locationCode = 'foo';
    o.pickupLocationAddress = buildTestOrderAddress();
    o.pickupLocationType = 'foo';
    o.pickupPersons = buildUnnamed4345();
  }
  buildCounterTestOrderPickupDetails--;
  return o;
}

void checkTestOrderPickupDetails(api.TestOrderPickupDetails o) {
  buildCounterTestOrderPickupDetails++;
  if (buildCounterTestOrderPickupDetails < 3) {
    unittest.expect(o.locationCode, unittest.equals('foo'));
    checkTestOrderAddress(o.pickupLocationAddress as api.TestOrderAddress);
    unittest.expect(o.pickupLocationType, unittest.equals('foo'));
    checkUnnamed4345(o.pickupPersons);
  }
  buildCounterTestOrderPickupDetails--;
}

core.int buildCounterTestOrderPickupDetailsPickupPerson = 0;
api.TestOrderPickupDetailsPickupPerson
    buildTestOrderPickupDetailsPickupPerson() {
  var o = api.TestOrderPickupDetailsPickupPerson();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterTestOrderPickupDetailsPickupPerson--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  var o = api.TimeZone();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

core.List<core.String> buildUnnamed4346() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4346(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TransitTableTransitTimeRow> buildUnnamed4347() {
  var o = <api.TransitTableTransitTimeRow>[];
  o.add(buildTransitTableTransitTimeRow());
  o.add(buildTransitTableTransitTimeRow());
  return o;
}

void checkUnnamed4347(core.List<api.TransitTableTransitTimeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRow(o[0] as api.TransitTableTransitTimeRow);
  checkTransitTableTransitTimeRow(o[1] as api.TransitTableTransitTimeRow);
}

core.List<core.String> buildUnnamed4348() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4348(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransitTable = 0;
api.TransitTable buildTransitTable() {
  var o = api.TransitTable();
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    o.postalCodeGroupNames = buildUnnamed4346();
    o.rows = buildUnnamed4347();
    o.transitTimeLabels = buildUnnamed4348();
  }
  buildCounterTransitTable--;
  return o;
}

void checkTransitTable(api.TransitTable o) {
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    checkUnnamed4346(o.postalCodeGroupNames);
    checkUnnamed4347(o.rows);
    checkUnnamed4348(o.transitTimeLabels);
  }
  buildCounterTransitTable--;
}

core.List<api.TransitTableTransitTimeRowTransitTimeValue> buildUnnamed4349() {
  var o = <api.TransitTableTransitTimeRowTransitTimeValue>[];
  o.add(buildTransitTableTransitTimeRowTransitTimeValue());
  o.add(buildTransitTableTransitTimeRowTransitTimeValue());
  return o;
}

void checkUnnamed4349(
    core.List<api.TransitTableTransitTimeRowTransitTimeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRowTransitTimeValue(
      o[0] as api.TransitTableTransitTimeRowTransitTimeValue);
  checkTransitTableTransitTimeRowTransitTimeValue(
      o[1] as api.TransitTableTransitTimeRowTransitTimeValue);
}

core.int buildCounterTransitTableTransitTimeRow = 0;
api.TransitTableTransitTimeRow buildTransitTableTransitTimeRow() {
  var o = api.TransitTableTransitTimeRow();
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    o.values = buildUnnamed4349();
  }
  buildCounterTransitTableTransitTimeRow--;
  return o;
}

void checkTransitTableTransitTimeRow(api.TransitTableTransitTimeRow o) {
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    checkUnnamed4349(o.values);
  }
  buildCounterTransitTableTransitTimeRow--;
}

core.int buildCounterTransitTableTransitTimeRowTransitTimeValue = 0;
api.TransitTableTransitTimeRowTransitTimeValue
    buildTransitTableTransitTimeRowTransitTimeValue() {
  var o = api.TransitTableTransitTimeRowTransitTimeValue();
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
    unittest.expect(o.maxTransitTimeInDays, unittest.equals(42));
    unittest.expect(o.minTransitTimeInDays, unittest.equals(42));
  }
  buildCounterTransitTableTransitTimeRowTransitTimeValue--;
}

core.List<api.UnitInvoiceAdditionalCharge> buildUnnamed4350() {
  var o = <api.UnitInvoiceAdditionalCharge>[];
  o.add(buildUnitInvoiceAdditionalCharge());
  o.add(buildUnitInvoiceAdditionalCharge());
  return o;
}

void checkUnnamed4350(core.List<api.UnitInvoiceAdditionalCharge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceAdditionalCharge(o[0] as api.UnitInvoiceAdditionalCharge);
  checkUnitInvoiceAdditionalCharge(o[1] as api.UnitInvoiceAdditionalCharge);
}

core.List<api.UnitInvoiceTaxLine> buildUnnamed4351() {
  var o = <api.UnitInvoiceTaxLine>[];
  o.add(buildUnitInvoiceTaxLine());
  o.add(buildUnitInvoiceTaxLine());
  return o;
}

void checkUnnamed4351(core.List<api.UnitInvoiceTaxLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceTaxLine(o[0] as api.UnitInvoiceTaxLine);
  checkUnitInvoiceTaxLine(o[1] as api.UnitInvoiceTaxLine);
}

core.int buildCounterUnitInvoice = 0;
api.UnitInvoice buildUnitInvoice() {
  var o = api.UnitInvoice();
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    o.additionalCharges = buildUnnamed4350();
    o.unitPrice = buildPrice();
    o.unitPriceTaxes = buildUnnamed4351();
  }
  buildCounterUnitInvoice--;
  return o;
}

void checkUnitInvoice(api.UnitInvoice o) {
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    checkUnnamed4350(o.additionalCharges);
    checkPrice(o.unitPrice as api.Price);
    checkUnnamed4351(o.unitPriceTaxes);
  }
  buildCounterUnitInvoice--;
}

core.int buildCounterUnitInvoiceAdditionalCharge = 0;
api.UnitInvoiceAdditionalCharge buildUnitInvoiceAdditionalCharge() {
  var o = api.UnitInvoiceAdditionalCharge();
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
    checkAmount(o.additionalChargeAmount as api.Amount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUnitInvoiceAdditionalCharge--;
}

core.int buildCounterUnitInvoiceTaxLine = 0;
api.UnitInvoiceTaxLine buildUnitInvoiceTaxLine() {
  var o = api.UnitInvoiceTaxLine();
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
    checkPrice(o.taxAmount as api.Price);
    unittest.expect(o.taxName, unittest.equals('foo'));
    unittest.expect(o.taxType, unittest.equals('foo'));
  }
  buildCounterUnitInvoiceTaxLine--;
}

core.int buildCounterValue = 0;
api.Value buildValue() {
  var o = api.Value();
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
    unittest.expect(o.carrierRateName, unittest.equals('foo'));
    checkPrice(o.flatRate as api.Price);
    unittest.expect(o.noShipping, unittest.isTrue);
    unittest.expect(o.pricePercentage, unittest.equals('foo'));
    unittest.expect(o.subtableName, unittest.equals('foo'));
  }
  buildCounterValue--;
}

core.int buildCounterWeight = 0;
api.Weight buildWeight() {
  var o = api.Weight();
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
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterWeight--;
}

core.List<core.String> buildUnnamed4352() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4353() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4353(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4354() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4355() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4356() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4357() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4358() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4359() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4360() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4361() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4361(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4362() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccount();
      var od = api.Account.fromJson(o.toJson());
      checkAccount(od as api.Account);
    });
  });

  unittest.group('obj-schema-AccountAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountAddress();
      var od = api.AccountAddress.fromJson(o.toJson());
      checkAccountAddress(od as api.AccountAddress);
    });
  });

  unittest.group('obj-schema-AccountAdsLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountAdsLink();
      var od = api.AccountAdsLink.fromJson(o.toJson());
      checkAccountAdsLink(od as api.AccountAdsLink);
    });
  });

  unittest.group('obj-schema-AccountBusinessInformation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountBusinessInformation();
      var od = api.AccountBusinessInformation.fromJson(o.toJson());
      checkAccountBusinessInformation(od as api.AccountBusinessInformation);
    });
  });

  unittest.group('obj-schema-AccountCustomerService', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountCustomerService();
      var od = api.AccountCustomerService.fromJson(o.toJson());
      checkAccountCustomerService(od as api.AccountCustomerService);
    });
  });

  unittest.group('obj-schema-AccountGoogleMyBusinessLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountGoogleMyBusinessLink();
      var od = api.AccountGoogleMyBusinessLink.fromJson(o.toJson());
      checkAccountGoogleMyBusinessLink(od as api.AccountGoogleMyBusinessLink);
    });
  });

  unittest.group('obj-schema-AccountIdentifier', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountIdentifier();
      var od = api.AccountIdentifier.fromJson(o.toJson());
      checkAccountIdentifier(od as api.AccountIdentifier);
    });
  });

  unittest.group('obj-schema-AccountLabel', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountLabel();
      var od = api.AccountLabel.fromJson(o.toJson());
      checkAccountLabel(od as api.AccountLabel);
    });
  });

  unittest.group('obj-schema-AccountReturnCarrier', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountReturnCarrier();
      var od = api.AccountReturnCarrier.fromJson(o.toJson());
      checkAccountReturnCarrier(od as api.AccountReturnCarrier);
    });
  });

  unittest.group('obj-schema-AccountStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatus();
      var od = api.AccountStatus.fromJson(o.toJson());
      checkAccountStatus(od as api.AccountStatus);
    });
  });

  unittest.group('obj-schema-AccountStatusAccountLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusAccountLevelIssue();
      var od = api.AccountStatusAccountLevelIssue.fromJson(o.toJson());
      checkAccountStatusAccountLevelIssue(
          od as api.AccountStatusAccountLevelIssue);
    });
  });

  unittest.group('obj-schema-AccountStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusItemLevelIssue();
      var od = api.AccountStatusItemLevelIssue.fromJson(o.toJson());
      checkAccountStatusItemLevelIssue(od as api.AccountStatusItemLevelIssue);
    });
  });

  unittest.group('obj-schema-AccountStatusProducts', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusProducts();
      var od = api.AccountStatusProducts.fromJson(o.toJson());
      checkAccountStatusProducts(od as api.AccountStatusProducts);
    });
  });

  unittest.group('obj-schema-AccountStatusStatistics', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusStatistics();
      var od = api.AccountStatusStatistics.fromJson(o.toJson());
      checkAccountStatusStatistics(od as api.AccountStatusStatistics);
    });
  });

  unittest.group('obj-schema-AccountTax', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountTax();
      var od = api.AccountTax.fromJson(o.toJson());
      checkAccountTax(od as api.AccountTax);
    });
  });

  unittest.group('obj-schema-AccountTaxTaxRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountTaxTaxRule();
      var od = api.AccountTaxTaxRule.fromJson(o.toJson());
      checkAccountTaxTaxRule(od as api.AccountTaxTaxRule);
    });
  });

  unittest.group('obj-schema-AccountUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountUser();
      var od = api.AccountUser.fromJson(o.toJson());
      checkAccountUser(od as api.AccountUser);
    });
  });

  unittest.group('obj-schema-AccountYouTubeChannelLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountYouTubeChannelLink();
      var od = api.AccountYouTubeChannelLink.fromJson(o.toJson());
      checkAccountYouTubeChannelLink(od as api.AccountYouTubeChannelLink);
    });
  });

  unittest.group('obj-schema-AccountsAuthInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsAuthInfoResponse();
      var od = api.AccountsAuthInfoResponse.fromJson(o.toJson());
      checkAccountsAuthInfoResponse(od as api.AccountsAuthInfoResponse);
    });
  });

  unittest.group('obj-schema-AccountsClaimWebsiteResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsClaimWebsiteResponse();
      var od = api.AccountsClaimWebsiteResponse.fromJson(o.toJson());
      checkAccountsClaimWebsiteResponse(od as api.AccountsClaimWebsiteResponse);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchRequest();
      var od = api.AccountsCustomBatchRequest.fromJson(o.toJson());
      checkAccountsCustomBatchRequest(od as api.AccountsCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchRequestEntry();
      var od = api.AccountsCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountsCustomBatchRequestEntry(
          od as api.AccountsCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequestEntryLinkRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchRequestEntryLinkRequest();
      var od =
          api.AccountsCustomBatchRequestEntryLinkRequest.fromJson(o.toJson());
      checkAccountsCustomBatchRequestEntryLinkRequest(
          od as api.AccountsCustomBatchRequestEntryLinkRequest);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchResponse();
      var od = api.AccountsCustomBatchResponse.fromJson(o.toJson());
      checkAccountsCustomBatchResponse(od as api.AccountsCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchResponseEntry();
      var od = api.AccountsCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountsCustomBatchResponseEntry(
          od as api.AccountsCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-AccountsLinkRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsLinkRequest();
      var od = api.AccountsLinkRequest.fromJson(o.toJson());
      checkAccountsLinkRequest(od as api.AccountsLinkRequest);
    });
  });

  unittest.group('obj-schema-AccountsLinkResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsLinkResponse();
      var od = api.AccountsLinkResponse.fromJson(o.toJson());
      checkAccountsLinkResponse(od as api.AccountsLinkResponse);
    });
  });

  unittest.group('obj-schema-AccountsListLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsListLinksResponse();
      var od = api.AccountsListLinksResponse.fromJson(o.toJson());
      checkAccountsListLinksResponse(od as api.AccountsListLinksResponse);
    });
  });

  unittest.group('obj-schema-AccountsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsListResponse();
      var od = api.AccountsListResponse.fromJson(o.toJson());
      checkAccountsListResponse(od as api.AccountsListResponse);
    });
  });

  unittest.group('obj-schema-AccountsUpdateLabelsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsUpdateLabelsRequest();
      var od = api.AccountsUpdateLabelsRequest.fromJson(o.toJson());
      checkAccountsUpdateLabelsRequest(od as api.AccountsUpdateLabelsRequest);
    });
  });

  unittest.group('obj-schema-AccountsUpdateLabelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsUpdateLabelsResponse();
      var od = api.AccountsUpdateLabelsResponse.fromJson(o.toJson());
      checkAccountsUpdateLabelsResponse(od as api.AccountsUpdateLabelsResponse);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchRequest();
      var od = api.AccountstatusesCustomBatchRequest.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequest(
          od as api.AccountstatusesCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchRequestEntry();
      var od = api.AccountstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequestEntry(
          od as api.AccountstatusesCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchResponse();
      var od = api.AccountstatusesCustomBatchResponse.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponse(
          od as api.AccountstatusesCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchResponseEntry();
      var od = api.AccountstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponseEntry(
          od as api.AccountstatusesCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-AccountstatusesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesListResponse();
      var od = api.AccountstatusesListResponse.fromJson(o.toJson());
      checkAccountstatusesListResponse(od as api.AccountstatusesListResponse);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchRequest();
      var od = api.AccounttaxCustomBatchRequest.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequest(od as api.AccounttaxCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchRequestEntry();
      var od = api.AccounttaxCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequestEntry(
          od as api.AccounttaxCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchResponse();
      var od = api.AccounttaxCustomBatchResponse.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponse(
          od as api.AccounttaxCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchResponseEntry();
      var od = api.AccounttaxCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponseEntry(
          od as api.AccounttaxCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-AccounttaxListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxListResponse();
      var od = api.AccounttaxListResponse.fromJson(o.toJson());
      checkAccounttaxListResponse(od as api.AccounttaxListResponse);
    });
  });

  unittest.group('obj-schema-Amount', () {
    unittest.test('to-json--from-json', () {
      var o = buildAmount();
      var od = api.Amount.fromJson(o.toJson());
      checkAmount(od as api.Amount);
    });
  });

  unittest.group('obj-schema-BusinessDayConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildBusinessDayConfig();
      var od = api.BusinessDayConfig.fromJson(o.toJson());
      checkBusinessDayConfig(od as api.BusinessDayConfig);
    });
  });

  unittest.group('obj-schema-CarrierRate', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarrierRate();
      var od = api.CarrierRate.fromJson(o.toJson());
      checkCarrierRate(od as api.CarrierRate);
    });
  });

  unittest.group('obj-schema-CarriersCarrier', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarriersCarrier();
      var od = api.CarriersCarrier.fromJson(o.toJson());
      checkCarriersCarrier(od as api.CarriersCarrier);
    });
  });

  unittest.group('obj-schema-Collection', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollection();
      var od = api.Collection.fromJson(o.toJson());
      checkCollection(od as api.Collection);
    });
  });

  unittest.group('obj-schema-CollectionFeaturedProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectionFeaturedProduct();
      var od = api.CollectionFeaturedProduct.fromJson(o.toJson());
      checkCollectionFeaturedProduct(od as api.CollectionFeaturedProduct);
    });
  });

  unittest.group('obj-schema-CollectionStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectionStatus();
      var od = api.CollectionStatus.fromJson(o.toJson());
      checkCollectionStatus(od as api.CollectionStatus);
    });
  });

  unittest.group('obj-schema-CollectionStatusDestinationStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectionStatusDestinationStatus();
      var od = api.CollectionStatusDestinationStatus.fromJson(o.toJson());
      checkCollectionStatusDestinationStatus(
          od as api.CollectionStatusDestinationStatus);
    });
  });

  unittest.group('obj-schema-CollectionStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectionStatusItemLevelIssue();
      var od = api.CollectionStatusItemLevelIssue.fromJson(o.toJson());
      checkCollectionStatusItemLevelIssue(
          od as api.CollectionStatusItemLevelIssue);
    });
  });

  unittest.group('obj-schema-Css', () {
    unittest.test('to-json--from-json', () {
      var o = buildCss();
      var od = api.Css.fromJson(o.toJson());
      checkCss(od as api.Css);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomAttribute();
      var od = api.CustomAttribute.fromJson(o.toJson());
      checkCustomAttribute(od as api.CustomAttribute);
    });
  });

  unittest.group('obj-schema-CustomerReturnReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomerReturnReason();
      var od = api.CustomerReturnReason.fromJson(o.toJson());
      checkCustomerReturnReason(od as api.CustomerReturnReason);
    });
  });

  unittest.group('obj-schema-CutoffTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildCutoffTime();
      var od = api.CutoffTime.fromJson(o.toJson());
      checkCutoffTime(od as api.CutoffTime);
    });
  });

  unittest.group('obj-schema-Datafeed', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeed();
      var od = api.Datafeed.fromJson(o.toJson());
      checkDatafeed(od as api.Datafeed);
    });
  });

  unittest.group('obj-schema-DatafeedFetchSchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedFetchSchedule();
      var od = api.DatafeedFetchSchedule.fromJson(o.toJson());
      checkDatafeedFetchSchedule(od as api.DatafeedFetchSchedule);
    });
  });

  unittest.group('obj-schema-DatafeedFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedFormat();
      var od = api.DatafeedFormat.fromJson(o.toJson());
      checkDatafeedFormat(od as api.DatafeedFormat);
    });
  });

  unittest.group('obj-schema-DatafeedStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedStatus();
      var od = api.DatafeedStatus.fromJson(o.toJson());
      checkDatafeedStatus(od as api.DatafeedStatus);
    });
  });

  unittest.group('obj-schema-DatafeedStatusError', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedStatusError();
      var od = api.DatafeedStatusError.fromJson(o.toJson());
      checkDatafeedStatusError(od as api.DatafeedStatusError);
    });
  });

  unittest.group('obj-schema-DatafeedStatusExample', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedStatusExample();
      var od = api.DatafeedStatusExample.fromJson(o.toJson());
      checkDatafeedStatusExample(od as api.DatafeedStatusExample);
    });
  });

  unittest.group('obj-schema-DatafeedTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedTarget();
      var od = api.DatafeedTarget.fromJson(o.toJson());
      checkDatafeedTarget(od as api.DatafeedTarget);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchRequest();
      var od = api.DatafeedsCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequest(od as api.DatafeedsCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchRequestEntry();
      var od = api.DatafeedsCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequestEntry(
          od as api.DatafeedsCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchResponse();
      var od = api.DatafeedsCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponse(od as api.DatafeedsCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchResponseEntry();
      var od = api.DatafeedsCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponseEntry(
          od as api.DatafeedsCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-DatafeedsFetchNowResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsFetchNowResponse();
      var od = api.DatafeedsFetchNowResponse.fromJson(o.toJson());
      checkDatafeedsFetchNowResponse(od as api.DatafeedsFetchNowResponse);
    });
  });

  unittest.group('obj-schema-DatafeedsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsListResponse();
      var od = api.DatafeedsListResponse.fromJson(o.toJson());
      checkDatafeedsListResponse(od as api.DatafeedsListResponse);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchRequest();
      var od = api.DatafeedstatusesCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequest(
          od as api.DatafeedstatusesCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchRequestEntry();
      var od = api.DatafeedstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequestEntry(
          od as api.DatafeedstatusesCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchResponse();
      var od = api.DatafeedstatusesCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponse(
          od as api.DatafeedstatusesCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchResponseEntry();
      var od =
          api.DatafeedstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponseEntry(
          od as api.DatafeedstatusesCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesListResponse();
      var od = api.DatafeedstatusesListResponse.fromJson(o.toJson());
      checkDatafeedstatusesListResponse(od as api.DatafeedstatusesListResponse);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DateTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateTime();
      var od = api.DateTime.fromJson(o.toJson());
      checkDateTime(od as api.DateTime);
    });
  });

  unittest.group('obj-schema-DeliveryTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeliveryTime();
      var od = api.DeliveryTime.fromJson(o.toJson());
      checkDeliveryTime(od as api.DeliveryTime);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () {
      var o = buildError();
      var od = api.Error.fromJson(o.toJson());
      checkError(od as api.Error);
    });
  });

  unittest.group('obj-schema-Errors', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrors();
      var od = api.Errors.fromJson(o.toJson());
      checkErrors(od as api.Errors);
    });
  });

  unittest.group('obj-schema-GmbAccounts', () {
    unittest.test('to-json--from-json', () {
      var o = buildGmbAccounts();
      var od = api.GmbAccounts.fromJson(o.toJson());
      checkGmbAccounts(od as api.GmbAccounts);
    });
  });

  unittest.group('obj-schema-GmbAccountsGmbAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildGmbAccountsGmbAccount();
      var od = api.GmbAccountsGmbAccount.fromJson(o.toJson());
      checkGmbAccountsGmbAccount(od as api.GmbAccountsGmbAccount);
    });
  });

  unittest.group('obj-schema-Headers', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeaders();
      var od = api.Headers.fromJson(o.toJson());
      checkHeaders(od as api.Headers);
    });
  });

  unittest.group('obj-schema-HolidayCutoff', () {
    unittest.test('to-json--from-json', () {
      var o = buildHolidayCutoff();
      var od = api.HolidayCutoff.fromJson(o.toJson());
      checkHolidayCutoff(od as api.HolidayCutoff);
    });
  });

  unittest.group('obj-schema-HolidaysHoliday', () {
    unittest.test('to-json--from-json', () {
      var o = buildHolidaysHoliday();
      var od = api.HolidaysHoliday.fromJson(o.toJson());
      checkHolidaysHoliday(od as api.HolidaysHoliday);
    });
  });

  unittest.group('obj-schema-InapplicabilityDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildInapplicabilityDetails();
      var od = api.InapplicabilityDetails.fromJson(o.toJson());
      checkInapplicabilityDetails(od as api.InapplicabilityDetails);
    });
  });

  unittest.group('obj-schema-Installment', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstallment();
      var od = api.Installment.fromJson(o.toJson());
      checkInstallment(od as api.Installment);
    });
  });

  unittest.group('obj-schema-InvoiceSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvoiceSummary();
      var od = api.InvoiceSummary.fromJson(o.toJson());
      checkInvoiceSummary(od as api.InvoiceSummary);
    });
  });

  unittest.group('obj-schema-InvoiceSummaryAdditionalChargeSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvoiceSummaryAdditionalChargeSummary();
      var od = api.InvoiceSummaryAdditionalChargeSummary.fromJson(o.toJson());
      checkInvoiceSummaryAdditionalChargeSummary(
          od as api.InvoiceSummaryAdditionalChargeSummary);
    });
  });

  unittest.group('obj-schema-LabelIds', () {
    unittest.test('to-json--from-json', () {
      var o = buildLabelIds();
      var od = api.LabelIds.fromJson(o.toJson());
      checkLabelIds(od as api.LabelIds);
    });
  });

  unittest.group('obj-schema-LiaAboutPageSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaAboutPageSettings();
      var od = api.LiaAboutPageSettings.fromJson(o.toJson());
      checkLiaAboutPageSettings(od as api.LiaAboutPageSettings);
    });
  });

  unittest.group('obj-schema-LiaCountrySettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaCountrySettings();
      var od = api.LiaCountrySettings.fromJson(o.toJson());
      checkLiaCountrySettings(od as api.LiaCountrySettings);
    });
  });

  unittest.group('obj-schema-LiaInventorySettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaInventorySettings();
      var od = api.LiaInventorySettings.fromJson(o.toJson());
      checkLiaInventorySettings(od as api.LiaInventorySettings);
    });
  });

  unittest.group('obj-schema-LiaOnDisplayToOrderSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaOnDisplayToOrderSettings();
      var od = api.LiaOnDisplayToOrderSettings.fromJson(o.toJson());
      checkLiaOnDisplayToOrderSettings(od as api.LiaOnDisplayToOrderSettings);
    });
  });

  unittest.group('obj-schema-LiaPosDataProvider', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaPosDataProvider();
      var od = api.LiaPosDataProvider.fromJson(o.toJson());
      checkLiaPosDataProvider(od as api.LiaPosDataProvider);
    });
  });

  unittest.group('obj-schema-LiaSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaSettings();
      var od = api.LiaSettings.fromJson(o.toJson());
      checkLiaSettings(od as api.LiaSettings);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchRequest();
      var od = api.LiasettingsCustomBatchRequest.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequest(
          od as api.LiasettingsCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchRequestEntry();
      var od = api.LiasettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequestEntry(
          od as api.LiasettingsCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchResponse();
      var od = api.LiasettingsCustomBatchResponse.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponse(
          od as api.LiasettingsCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchResponseEntry();
      var od = api.LiasettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponseEntry(
          od as api.LiasettingsCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-LiasettingsGetAccessibleGmbAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsGetAccessibleGmbAccountsResponse();
      var od =
          api.LiasettingsGetAccessibleGmbAccountsResponse.fromJson(o.toJson());
      checkLiasettingsGetAccessibleGmbAccountsResponse(
          od as api.LiasettingsGetAccessibleGmbAccountsResponse);
    });
  });

  unittest.group('obj-schema-LiasettingsListPosDataProvidersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsListPosDataProvidersResponse();
      var od = api.LiasettingsListPosDataProvidersResponse.fromJson(o.toJson());
      checkLiasettingsListPosDataProvidersResponse(
          od as api.LiasettingsListPosDataProvidersResponse);
    });
  });

  unittest.group('obj-schema-LiasettingsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsListResponse();
      var od = api.LiasettingsListResponse.fromJson(o.toJson());
      checkLiasettingsListResponse(od as api.LiasettingsListResponse);
    });
  });

  unittest.group('obj-schema-LiasettingsRequestGmbAccessResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsRequestGmbAccessResponse();
      var od = api.LiasettingsRequestGmbAccessResponse.fromJson(o.toJson());
      checkLiasettingsRequestGmbAccessResponse(
          od as api.LiasettingsRequestGmbAccessResponse);
    });
  });

  unittest.group('obj-schema-LiasettingsRequestInventoryVerificationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsRequestInventoryVerificationResponse();
      var od = api.LiasettingsRequestInventoryVerificationResponse.fromJson(
          o.toJson());
      checkLiasettingsRequestInventoryVerificationResponse(
          od as api.LiasettingsRequestInventoryVerificationResponse);
    });
  });

  unittest.group(
      'obj-schema-LiasettingsSetInventoryVerificationContactResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsSetInventoryVerificationContactResponse();
      var od = api.LiasettingsSetInventoryVerificationContactResponse.fromJson(
          o.toJson());
      checkLiasettingsSetInventoryVerificationContactResponse(
          od as api.LiasettingsSetInventoryVerificationContactResponse);
    });
  });

  unittest.group('obj-schema-LiasettingsSetPosDataProviderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsSetPosDataProviderResponse();
      var od = api.LiasettingsSetPosDataProviderResponse.fromJson(o.toJson());
      checkLiasettingsSetPosDataProviderResponse(
          od as api.LiasettingsSetPosDataProviderResponse);
    });
  });

  unittest.group('obj-schema-LinkService', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinkService();
      var od = api.LinkService.fromJson(o.toJson());
      checkLinkService(od as api.LinkService);
    });
  });

  unittest.group('obj-schema-LinkedAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinkedAccount();
      var od = api.LinkedAccount.fromJson(o.toJson());
      checkLinkedAccount(od as api.LinkedAccount);
    });
  });

  unittest.group('obj-schema-ListAccountLabelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAccountLabelsResponse();
      var od = api.ListAccountLabelsResponse.fromJson(o.toJson());
      checkListAccountLabelsResponse(od as api.ListAccountLabelsResponse);
    });
  });

  unittest.group('obj-schema-ListAccountReturnCarrierResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAccountReturnCarrierResponse();
      var od = api.ListAccountReturnCarrierResponse.fromJson(o.toJson());
      checkListAccountReturnCarrierResponse(
          od as api.ListAccountReturnCarrierResponse);
    });
  });

  unittest.group('obj-schema-ListCollectionStatusesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCollectionStatusesResponse();
      var od = api.ListCollectionStatusesResponse.fromJson(o.toJson());
      checkListCollectionStatusesResponse(
          od as api.ListCollectionStatusesResponse);
    });
  });

  unittest.group('obj-schema-ListCollectionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCollectionsResponse();
      var od = api.ListCollectionsResponse.fromJson(o.toJson());
      checkListCollectionsResponse(od as api.ListCollectionsResponse);
    });
  });

  unittest.group('obj-schema-ListCssesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListCssesResponse();
      var od = api.ListCssesResponse.fromJson(o.toJson());
      checkListCssesResponse(od as api.ListCssesResponse);
    });
  });

  unittest.group('obj-schema-ListRegionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRegionsResponse();
      var od = api.ListRegionsResponse.fromJson(o.toJson());
      checkListRegionsResponse(od as api.ListRegionsResponse);
    });
  });

  unittest.group('obj-schema-ListRepricingProductReportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRepricingProductReportsResponse();
      var od = api.ListRepricingProductReportsResponse.fromJson(o.toJson());
      checkListRepricingProductReportsResponse(
          od as api.ListRepricingProductReportsResponse);
    });
  });

  unittest.group('obj-schema-ListRepricingRuleReportsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRepricingRuleReportsResponse();
      var od = api.ListRepricingRuleReportsResponse.fromJson(o.toJson());
      checkListRepricingRuleReportsResponse(
          od as api.ListRepricingRuleReportsResponse);
    });
  });

  unittest.group('obj-schema-ListRepricingRulesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRepricingRulesResponse();
      var od = api.ListRepricingRulesResponse.fromJson(o.toJson());
      checkListRepricingRulesResponse(od as api.ListRepricingRulesResponse);
    });
  });

  unittest.group('obj-schema-LocalInventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalInventory();
      var od = api.LocalInventory.fromJson(o.toJson());
      checkLocalInventory(od as api.LocalInventory);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchRequest();
      var od = api.LocalinventoryCustomBatchRequest.fromJson(o.toJson());
      checkLocalinventoryCustomBatchRequest(
          od as api.LocalinventoryCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchRequestEntry();
      var od = api.LocalinventoryCustomBatchRequestEntry.fromJson(o.toJson());
      checkLocalinventoryCustomBatchRequestEntry(
          od as api.LocalinventoryCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchResponse();
      var od = api.LocalinventoryCustomBatchResponse.fromJson(o.toJson());
      checkLocalinventoryCustomBatchResponse(
          od as api.LocalinventoryCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchResponseEntry();
      var od = api.LocalinventoryCustomBatchResponseEntry.fromJson(o.toJson());
      checkLocalinventoryCustomBatchResponseEntry(
          od as api.LocalinventoryCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-LocationIdSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocationIdSet();
      var od = api.LocationIdSet.fromJson(o.toJson());
      checkLocationIdSet(od as api.LocationIdSet);
    });
  });

  unittest.group('obj-schema-LoyaltyPoints', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoyaltyPoints();
      var od = api.LoyaltyPoints.fromJson(o.toJson());
      checkLoyaltyPoints(od as api.LoyaltyPoints);
    });
  });

  unittest.group('obj-schema-MerchantOrderReturn', () {
    unittest.test('to-json--from-json', () {
      var o = buildMerchantOrderReturn();
      var od = api.MerchantOrderReturn.fromJson(o.toJson());
      checkMerchantOrderReturn(od as api.MerchantOrderReturn);
    });
  });

  unittest.group('obj-schema-MerchantOrderReturnItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildMerchantOrderReturnItem();
      var od = api.MerchantOrderReturnItem.fromJson(o.toJson());
      checkMerchantOrderReturnItem(od as api.MerchantOrderReturnItem);
    });
  });

  unittest.group('obj-schema-MerchantRejectionReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildMerchantRejectionReason();
      var od = api.MerchantRejectionReason.fromJson(o.toJson());
      checkMerchantRejectionReason(od as api.MerchantRejectionReason);
    });
  });

  unittest.group('obj-schema-Metrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetrics();
      var od = api.Metrics.fromJson(o.toJson());
      checkMetrics(od as api.Metrics);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildMinimumOrderValueTable();
      var od = api.MinimumOrderValueTable.fromJson(o.toJson());
      checkMinimumOrderValueTable(od as api.MinimumOrderValueTable);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTableStoreCodeSetWithMov', () {
    unittest.test('to-json--from-json', () {
      var o = buildMinimumOrderValueTableStoreCodeSetWithMov();
      var od =
          api.MinimumOrderValueTableStoreCodeSetWithMov.fromJson(o.toJson());
      checkMinimumOrderValueTableStoreCodeSetWithMov(
          od as api.MinimumOrderValueTableStoreCodeSetWithMov);
    });
  });

  unittest.group('obj-schema-MonetaryAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonetaryAmount();
      var od = api.MonetaryAmount.fromJson(o.toJson());
      checkMonetaryAmount(od as api.MonetaryAmount);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrder();
      var od = api.Order.fromJson(o.toJson());
      checkOrder(od as api.Order);
    });
  });

  unittest.group('obj-schema-OrderAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderAddress();
      var od = api.OrderAddress.fromJson(o.toJson());
      checkOrderAddress(od as api.OrderAddress);
    });
  });

  unittest.group('obj-schema-OrderCancellation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCancellation();
      var od = api.OrderCancellation.fromJson(o.toJson());
      checkOrderCancellation(od as api.OrderCancellation);
    });
  });

  unittest.group('obj-schema-OrderCustomer', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCustomer();
      var od = api.OrderCustomer.fromJson(o.toJson());
      checkOrderCustomer(od as api.OrderCustomer);
    });
  });

  unittest.group('obj-schema-OrderCustomerLoyaltyInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCustomerLoyaltyInfo();
      var od = api.OrderCustomerLoyaltyInfo.fromJson(o.toJson());
      checkOrderCustomerLoyaltyInfo(od as api.OrderCustomerLoyaltyInfo);
    });
  });

  unittest.group('obj-schema-OrderCustomerMarketingRightsInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCustomerMarketingRightsInfo();
      var od = api.OrderCustomerMarketingRightsInfo.fromJson(o.toJson());
      checkOrderCustomerMarketingRightsInfo(
          od as api.OrderCustomerMarketingRightsInfo);
    });
  });

  unittest.group('obj-schema-OrderDeliveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderDeliveryDetails();
      var od = api.OrderDeliveryDetails.fromJson(o.toJson());
      checkOrderDeliveryDetails(od as api.OrderDeliveryDetails);
    });
  });

  unittest.group('obj-schema-OrderLineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItem();
      var od = api.OrderLineItem.fromJson(o.toJson());
      checkOrderLineItem(od as api.OrderLineItem);
    });
  });

  unittest.group('obj-schema-OrderLineItemAdjustment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemAdjustment();
      var od = api.OrderLineItemAdjustment.fromJson(o.toJson());
      checkOrderLineItemAdjustment(od as api.OrderLineItemAdjustment);
    });
  });

  unittest.group('obj-schema-OrderLineItemProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemProduct();
      var od = api.OrderLineItemProduct.fromJson(o.toJson());
      checkOrderLineItemProduct(od as api.OrderLineItemProduct);
    });
  });

  unittest.group('obj-schema-OrderLineItemProductFee', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemProductFee();
      var od = api.OrderLineItemProductFee.fromJson(o.toJson());
      checkOrderLineItemProductFee(od as api.OrderLineItemProductFee);
    });
  });

  unittest.group('obj-schema-OrderLineItemProductVariantAttribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemProductVariantAttribute();
      var od = api.OrderLineItemProductVariantAttribute.fromJson(o.toJson());
      checkOrderLineItemProductVariantAttribute(
          od as api.OrderLineItemProductVariantAttribute);
    });
  });

  unittest.group('obj-schema-OrderLineItemReturnInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemReturnInfo();
      var od = api.OrderLineItemReturnInfo.fromJson(o.toJson());
      checkOrderLineItemReturnInfo(od as api.OrderLineItemReturnInfo);
    });
  });

  unittest.group('obj-schema-OrderLineItemShippingDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemShippingDetails();
      var od = api.OrderLineItemShippingDetails.fromJson(o.toJson());
      checkOrderLineItemShippingDetails(od as api.OrderLineItemShippingDetails);
    });
  });

  unittest.group('obj-schema-OrderLineItemShippingDetailsMethod', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemShippingDetailsMethod();
      var od = api.OrderLineItemShippingDetailsMethod.fromJson(o.toJson());
      checkOrderLineItemShippingDetailsMethod(
          od as api.OrderLineItemShippingDetailsMethod);
    });
  });

  unittest.group('obj-schema-OrderMerchantProvidedAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderMerchantProvidedAnnotation();
      var od = api.OrderMerchantProvidedAnnotation.fromJson(o.toJson());
      checkOrderMerchantProvidedAnnotation(
          od as api.OrderMerchantProvidedAnnotation);
    });
  });

  unittest.group('obj-schema-OrderOrderAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderOrderAnnotation();
      var od = api.OrderOrderAnnotation.fromJson(o.toJson());
      checkOrderOrderAnnotation(od as api.OrderOrderAnnotation);
    });
  });

  unittest.group('obj-schema-OrderPickupDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPickupDetails();
      var od = api.OrderPickupDetails.fromJson(o.toJson());
      checkOrderPickupDetails(od as api.OrderPickupDetails);
    });
  });

  unittest.group('obj-schema-OrderPickupDetailsCollector', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPickupDetailsCollector();
      var od = api.OrderPickupDetailsCollector.fromJson(o.toJson());
      checkOrderPickupDetailsCollector(od as api.OrderPickupDetailsCollector);
    });
  });

  unittest.group('obj-schema-OrderPromotion', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPromotion();
      var od = api.OrderPromotion.fromJson(o.toJson());
      checkOrderPromotion(od as api.OrderPromotion);
    });
  });

  unittest.group('obj-schema-OrderPromotionItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPromotionItem();
      var od = api.OrderPromotionItem.fromJson(o.toJson());
      checkOrderPromotionItem(od as api.OrderPromotionItem);
    });
  });

  unittest.group('obj-schema-OrderRefund', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderRefund();
      var od = api.OrderRefund.fromJson(o.toJson());
      checkOrderRefund(od as api.OrderRefund);
    });
  });

  unittest.group('obj-schema-OrderReportDisbursement', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderReportDisbursement();
      var od = api.OrderReportDisbursement.fromJson(o.toJson());
      checkOrderReportDisbursement(od as api.OrderReportDisbursement);
    });
  });

  unittest.group('obj-schema-OrderReportTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderReportTransaction();
      var od = api.OrderReportTransaction.fromJson(o.toJson());
      checkOrderReportTransaction(od as api.OrderReportTransaction);
    });
  });

  unittest.group('obj-schema-OrderReturn', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderReturn();
      var od = api.OrderReturn.fromJson(o.toJson());
      checkOrderReturn(od as api.OrderReturn);
    });
  });

  unittest.group('obj-schema-OrderShipment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderShipment();
      var od = api.OrderShipment.fromJson(o.toJson());
      checkOrderShipment(od as api.OrderShipment);
    });
  });

  unittest.group('obj-schema-OrderShipmentLineItemShipment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderShipmentLineItemShipment();
      var od = api.OrderShipmentLineItemShipment.fromJson(o.toJson());
      checkOrderShipmentLineItemShipment(
          od as api.OrderShipmentLineItemShipment);
    });
  });

  unittest.group('obj-schema-OrderShipmentScheduledDeliveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderShipmentScheduledDeliveryDetails();
      var od = api.OrderShipmentScheduledDeliveryDetails.fromJson(o.toJson());
      checkOrderShipmentScheduledDeliveryDetails(
          od as api.OrderShipmentScheduledDeliveryDetails);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignal', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderTrackingSignal();
      var od = api.OrderTrackingSignal.fromJson(o.toJson());
      checkOrderTrackingSignal(od as api.OrderTrackingSignal);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignalLineItemDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderTrackingSignalLineItemDetails();
      var od = api.OrderTrackingSignalLineItemDetails.fromJson(o.toJson());
      checkOrderTrackingSignalLineItemDetails(
          od as api.OrderTrackingSignalLineItemDetails);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignalShipmentLineItemMapping', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderTrackingSignalShipmentLineItemMapping();
      var od =
          api.OrderTrackingSignalShipmentLineItemMapping.fromJson(o.toJson());
      checkOrderTrackingSignalShipmentLineItemMapping(
          od as api.OrderTrackingSignalShipmentLineItemMapping);
    });
  });

  unittest.group('obj-schema-OrderTrackingSignalShippingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderTrackingSignalShippingInfo();
      var od = api.OrderTrackingSignalShippingInfo.fromJson(o.toJson());
      checkOrderTrackingSignalShippingInfo(
          od as api.OrderTrackingSignalShippingInfo);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateChargeInvoiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateChargeInvoiceRequest();
      var od = api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceRequest(
          od as api.OrderinvoicesCreateChargeInvoiceRequest);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateChargeInvoiceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateChargeInvoiceResponse();
      var od =
          api.OrderinvoicesCreateChargeInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceResponse(
          od as api.OrderinvoicesCreateChargeInvoiceResponse);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateRefundInvoiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateRefundInvoiceRequest();
      var od = api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceRequest(
          od as api.OrderinvoicesCreateRefundInvoiceRequest);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateRefundInvoiceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateRefundInvoiceResponse();
      var od =
          api.OrderinvoicesCreateRefundInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceResponse(
          od as api.OrderinvoicesCreateRefundInvoiceResponse);
    });
  });

  unittest.group(
      'obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
      var od =
          api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
              .fromJson(o.toJson());
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
          od as api
              .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption);
    });
  });

  unittest.group(
      'obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
      var od =
          api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
              .fromJson(o.toJson());
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
          od as api
              .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption);
    });
  });

  unittest.group('obj-schema-OrderreportsListDisbursementsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreportsListDisbursementsResponse();
      var od = api.OrderreportsListDisbursementsResponse.fromJson(o.toJson());
      checkOrderreportsListDisbursementsResponse(
          od as api.OrderreportsListDisbursementsResponse);
    });
  });

  unittest.group('obj-schema-OrderreportsListTransactionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreportsListTransactionsResponse();
      var od = api.OrderreportsListTransactionsResponse.fromJson(o.toJson());
      checkOrderreportsListTransactionsResponse(
          od as api.OrderreportsListTransactionsResponse);
    });
  });

  unittest.group('obj-schema-OrderreturnsAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsAcknowledgeRequest();
      var od = api.OrderreturnsAcknowledgeRequest.fromJson(o.toJson());
      checkOrderreturnsAcknowledgeRequest(
          od as api.OrderreturnsAcknowledgeRequest);
    });
  });

  unittest.group('obj-schema-OrderreturnsAcknowledgeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsAcknowledgeResponse();
      var od = api.OrderreturnsAcknowledgeResponse.fromJson(o.toJson());
      checkOrderreturnsAcknowledgeResponse(
          od as api.OrderreturnsAcknowledgeResponse);
    });
  });

  unittest.group('obj-schema-OrderreturnsCreateOrderReturnRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsCreateOrderReturnRequest();
      var od = api.OrderreturnsCreateOrderReturnRequest.fromJson(o.toJson());
      checkOrderreturnsCreateOrderReturnRequest(
          od as api.OrderreturnsCreateOrderReturnRequest);
    });
  });

  unittest.group('obj-schema-OrderreturnsCreateOrderReturnResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsCreateOrderReturnResponse();
      var od = api.OrderreturnsCreateOrderReturnResponse.fromJson(o.toJson());
      checkOrderreturnsCreateOrderReturnResponse(
          od as api.OrderreturnsCreateOrderReturnResponse);
    });
  });

  unittest.group('obj-schema-OrderreturnsLineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsLineItem();
      var od = api.OrderreturnsLineItem.fromJson(o.toJson());
      checkOrderreturnsLineItem(od as api.OrderreturnsLineItem);
    });
  });

  unittest.group('obj-schema-OrderreturnsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsListResponse();
      var od = api.OrderreturnsListResponse.fromJson(o.toJson());
      checkOrderreturnsListResponse(od as api.OrderreturnsListResponse);
    });
  });

  unittest.group('obj-schema-OrderreturnsPartialRefund', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsPartialRefund();
      var od = api.OrderreturnsPartialRefund.fromJson(o.toJson());
      checkOrderreturnsPartialRefund(od as api.OrderreturnsPartialRefund);
    });
  });

  unittest.group('obj-schema-OrderreturnsProcessRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsProcessRequest();
      var od = api.OrderreturnsProcessRequest.fromJson(o.toJson());
      checkOrderreturnsProcessRequest(od as api.OrderreturnsProcessRequest);
    });
  });

  unittest.group('obj-schema-OrderreturnsProcessResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsProcessResponse();
      var od = api.OrderreturnsProcessResponse.fromJson(o.toJson());
      checkOrderreturnsProcessResponse(od as api.OrderreturnsProcessResponse);
    });
  });

  unittest.group('obj-schema-OrderreturnsRefundOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsRefundOperation();
      var od = api.OrderreturnsRefundOperation.fromJson(o.toJson());
      checkOrderreturnsRefundOperation(od as api.OrderreturnsRefundOperation);
    });
  });

  unittest.group('obj-schema-OrderreturnsRejectOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsRejectOperation();
      var od = api.OrderreturnsRejectOperation.fromJson(o.toJson());
      checkOrderreturnsRejectOperation(od as api.OrderreturnsRejectOperation);
    });
  });

  unittest.group('obj-schema-OrderreturnsReturnItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsReturnItem();
      var od = api.OrderreturnsReturnItem.fromJson(o.toJson());
      checkOrderreturnsReturnItem(od as api.OrderreturnsReturnItem);
    });
  });

  unittest.group('obj-schema-OrdersAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersAcknowledgeRequest();
      var od = api.OrdersAcknowledgeRequest.fromJson(o.toJson());
      checkOrdersAcknowledgeRequest(od as api.OrdersAcknowledgeRequest);
    });
  });

  unittest.group('obj-schema-OrdersAcknowledgeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersAcknowledgeResponse();
      var od = api.OrdersAcknowledgeResponse.fromJson(o.toJson());
      checkOrdersAcknowledgeResponse(od as api.OrdersAcknowledgeResponse);
    });
  });

  unittest.group('obj-schema-OrdersAdvanceTestOrderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersAdvanceTestOrderResponse();
      var od = api.OrdersAdvanceTestOrderResponse.fromJson(o.toJson());
      checkOrdersAdvanceTestOrderResponse(
          od as api.OrdersAdvanceTestOrderResponse);
    });
  });

  unittest.group('obj-schema-OrdersCancelLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelLineItemRequest();
      var od = api.OrdersCancelLineItemRequest.fromJson(o.toJson());
      checkOrdersCancelLineItemRequest(od as api.OrdersCancelLineItemRequest);
    });
  });

  unittest.group('obj-schema-OrdersCancelLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelLineItemResponse();
      var od = api.OrdersCancelLineItemResponse.fromJson(o.toJson());
      checkOrdersCancelLineItemResponse(od as api.OrdersCancelLineItemResponse);
    });
  });

  unittest.group('obj-schema-OrdersCancelRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelRequest();
      var od = api.OrdersCancelRequest.fromJson(o.toJson());
      checkOrdersCancelRequest(od as api.OrdersCancelRequest);
    });
  });

  unittest.group('obj-schema-OrdersCancelResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelResponse();
      var od = api.OrdersCancelResponse.fromJson(o.toJson());
      checkOrdersCancelResponse(od as api.OrdersCancelResponse);
    });
  });

  unittest.group('obj-schema-OrdersCancelTestOrderByCustomerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelTestOrderByCustomerRequest();
      var od = api.OrdersCancelTestOrderByCustomerRequest.fromJson(o.toJson());
      checkOrdersCancelTestOrderByCustomerRequest(
          od as api.OrdersCancelTestOrderByCustomerRequest);
    });
  });

  unittest.group('obj-schema-OrdersCancelTestOrderByCustomerResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelTestOrderByCustomerResponse();
      var od = api.OrdersCancelTestOrderByCustomerResponse.fromJson(o.toJson());
      checkOrdersCancelTestOrderByCustomerResponse(
          od as api.OrdersCancelTestOrderByCustomerResponse);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestOrderRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestOrderRequest();
      var od = api.OrdersCreateTestOrderRequest.fromJson(o.toJson());
      checkOrdersCreateTestOrderRequest(od as api.OrdersCreateTestOrderRequest);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestOrderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestOrderResponse();
      var od = api.OrdersCreateTestOrderResponse.fromJson(o.toJson());
      checkOrdersCreateTestOrderResponse(
          od as api.OrdersCreateTestOrderResponse);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestReturnRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestReturnRequest();
      var od = api.OrdersCreateTestReturnRequest.fromJson(o.toJson());
      checkOrdersCreateTestReturnRequest(
          od as api.OrdersCreateTestReturnRequest);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestReturnResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestReturnResponse();
      var od = api.OrdersCreateTestReturnResponse.fromJson(o.toJson());
      checkOrdersCreateTestReturnResponse(
          od as api.OrdersCreateTestReturnResponse);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryCreateTestReturnReturnItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
      var od =
          api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(
          od as api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem);
    });
  });

  unittest.group('obj-schema-OrdersCustomBatchRequestEntryRefundItemItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryRefundItemItem();
      var od =
          api.OrdersCustomBatchRequestEntryRefundItemItem.fromJson(o.toJson());
      checkOrdersCustomBatchRequestEntryRefundItemItem(
          od as api.OrdersCustomBatchRequestEntryRefundItemItem);
    });
  });

  unittest.group('obj-schema-OrdersCustomBatchRequestEntryRefundItemShipping',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryRefundItemShipping();
      var od = api.OrdersCustomBatchRequestEntryRefundItemShipping.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryRefundItemShipping(
          od as api.OrdersCustomBatchRequestEntryRefundItemShipping);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
      var od =
          api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(
          od as api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails();
      var od =
          api.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
              .fromJson(o.toJson());
      checkOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails(
          od as api
              .OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails);
    });
  });

  unittest.group('obj-schema-OrdersGetByMerchantOrderIdResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersGetByMerchantOrderIdResponse();
      var od = api.OrdersGetByMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersGetByMerchantOrderIdResponse(
          od as api.OrdersGetByMerchantOrderIdResponse);
    });
  });

  unittest.group('obj-schema-OrdersGetTestOrderTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersGetTestOrderTemplateResponse();
      var od = api.OrdersGetTestOrderTemplateResponse.fromJson(o.toJson());
      checkOrdersGetTestOrderTemplateResponse(
          od as api.OrdersGetTestOrderTemplateResponse);
    });
  });

  unittest.group('obj-schema-OrdersInStoreRefundLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersInStoreRefundLineItemRequest();
      var od = api.OrdersInStoreRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemRequest(
          od as api.OrdersInStoreRefundLineItemRequest);
    });
  });

  unittest.group('obj-schema-OrdersInStoreRefundLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersInStoreRefundLineItemResponse();
      var od = api.OrdersInStoreRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemResponse(
          od as api.OrdersInStoreRefundLineItemResponse);
    });
  });

  unittest.group('obj-schema-OrdersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersListResponse();
      var od = api.OrdersListResponse.fromJson(o.toJson());
      checkOrdersListResponse(od as api.OrdersListResponse);
    });
  });

  unittest.group('obj-schema-OrdersRefundItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundItemRequest();
      var od = api.OrdersRefundItemRequest.fromJson(o.toJson());
      checkOrdersRefundItemRequest(od as api.OrdersRefundItemRequest);
    });
  });

  unittest.group('obj-schema-OrdersRefundItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundItemResponse();
      var od = api.OrdersRefundItemResponse.fromJson(o.toJson());
      checkOrdersRefundItemResponse(od as api.OrdersRefundItemResponse);
    });
  });

  unittest.group('obj-schema-OrdersRefundOrderRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundOrderRequest();
      var od = api.OrdersRefundOrderRequest.fromJson(o.toJson());
      checkOrdersRefundOrderRequest(od as api.OrdersRefundOrderRequest);
    });
  });

  unittest.group('obj-schema-OrdersRefundOrderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundOrderResponse();
      var od = api.OrdersRefundOrderResponse.fromJson(o.toJson());
      checkOrdersRefundOrderResponse(od as api.OrdersRefundOrderResponse);
    });
  });

  unittest.group('obj-schema-OrdersRejectReturnLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRejectReturnLineItemRequest();
      var od = api.OrdersRejectReturnLineItemRequest.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemRequest(
          od as api.OrdersRejectReturnLineItemRequest);
    });
  });

  unittest.group('obj-schema-OrdersRejectReturnLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRejectReturnLineItemResponse();
      var od = api.OrdersRejectReturnLineItemResponse.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemResponse(
          od as api.OrdersRejectReturnLineItemResponse);
    });
  });

  unittest.group('obj-schema-OrdersReturnRefundLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersReturnRefundLineItemRequest();
      var od = api.OrdersReturnRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemRequest(
          od as api.OrdersReturnRefundLineItemRequest);
    });
  });

  unittest.group('obj-schema-OrdersReturnRefundLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersReturnRefundLineItemResponse();
      var od = api.OrdersReturnRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemResponse(
          od as api.OrdersReturnRefundLineItemResponse);
    });
  });

  unittest.group('obj-schema-OrdersSetLineItemMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersSetLineItemMetadataRequest();
      var od = api.OrdersSetLineItemMetadataRequest.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataRequest(
          od as api.OrdersSetLineItemMetadataRequest);
    });
  });

  unittest.group('obj-schema-OrdersSetLineItemMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersSetLineItemMetadataResponse();
      var od = api.OrdersSetLineItemMetadataResponse.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataResponse(
          od as api.OrdersSetLineItemMetadataResponse);
    });
  });

  unittest.group('obj-schema-OrdersShipLineItemsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersShipLineItemsRequest();
      var od = api.OrdersShipLineItemsRequest.fromJson(o.toJson());
      checkOrdersShipLineItemsRequest(od as api.OrdersShipLineItemsRequest);
    });
  });

  unittest.group('obj-schema-OrdersShipLineItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersShipLineItemsResponse();
      var od = api.OrdersShipLineItemsResponse.fromJson(o.toJson());
      checkOrdersShipLineItemsResponse(od as api.OrdersShipLineItemsResponse);
    });
  });

  unittest.group('obj-schema-OrdersUpdateLineItemShippingDetailsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateLineItemShippingDetailsRequest();
      var od =
          api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(o.toJson());
      checkOrdersUpdateLineItemShippingDetailsRequest(
          od as api.OrdersUpdateLineItemShippingDetailsRequest);
    });
  });

  unittest.group('obj-schema-OrdersUpdateLineItemShippingDetailsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateLineItemShippingDetailsResponse();
      var od =
          api.OrdersUpdateLineItemShippingDetailsResponse.fromJson(o.toJson());
      checkOrdersUpdateLineItemShippingDetailsResponse(
          od as api.OrdersUpdateLineItemShippingDetailsResponse);
    });
  });

  unittest.group('obj-schema-OrdersUpdateMerchantOrderIdRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateMerchantOrderIdRequest();
      var od = api.OrdersUpdateMerchantOrderIdRequest.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdRequest(
          od as api.OrdersUpdateMerchantOrderIdRequest);
    });
  });

  unittest.group('obj-schema-OrdersUpdateMerchantOrderIdResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateMerchantOrderIdResponse();
      var od = api.OrdersUpdateMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdResponse(
          od as api.OrdersUpdateMerchantOrderIdResponse);
    });
  });

  unittest.group('obj-schema-OrdersUpdateShipmentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateShipmentRequest();
      var od = api.OrdersUpdateShipmentRequest.fromJson(o.toJson());
      checkOrdersUpdateShipmentRequest(od as api.OrdersUpdateShipmentRequest);
    });
  });

  unittest.group('obj-schema-OrdersUpdateShipmentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateShipmentResponse();
      var od = api.OrdersUpdateShipmentResponse.fromJson(o.toJson());
      checkOrdersUpdateShipmentResponse(od as api.OrdersUpdateShipmentResponse);
    });
  });

  unittest.group('obj-schema-PickupCarrierService', () {
    unittest.test('to-json--from-json', () {
      var o = buildPickupCarrierService();
      var od = api.PickupCarrierService.fromJson(o.toJson());
      checkPickupCarrierService(od as api.PickupCarrierService);
    });
  });

  unittest.group('obj-schema-PickupServicesPickupService', () {
    unittest.test('to-json--from-json', () {
      var o = buildPickupServicesPickupService();
      var od = api.PickupServicesPickupService.fromJson(o.toJson());
      checkPickupServicesPickupService(od as api.PickupServicesPickupService);
    });
  });

  unittest.group('obj-schema-PosCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchRequest();
      var od = api.PosCustomBatchRequest.fromJson(o.toJson());
      checkPosCustomBatchRequest(od as api.PosCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-PosCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchRequestEntry();
      var od = api.PosCustomBatchRequestEntry.fromJson(o.toJson());
      checkPosCustomBatchRequestEntry(od as api.PosCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-PosCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchResponse();
      var od = api.PosCustomBatchResponse.fromJson(o.toJson());
      checkPosCustomBatchResponse(od as api.PosCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-PosCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchResponseEntry();
      var od = api.PosCustomBatchResponseEntry.fromJson(o.toJson());
      checkPosCustomBatchResponseEntry(od as api.PosCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-PosDataProviders', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosDataProviders();
      var od = api.PosDataProviders.fromJson(o.toJson());
      checkPosDataProviders(od as api.PosDataProviders);
    });
  });

  unittest.group('obj-schema-PosDataProvidersPosDataProvider', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosDataProvidersPosDataProvider();
      var od = api.PosDataProvidersPosDataProvider.fromJson(o.toJson());
      checkPosDataProvidersPosDataProvider(
          od as api.PosDataProvidersPosDataProvider);
    });
  });

  unittest.group('obj-schema-PosInventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosInventory();
      var od = api.PosInventory.fromJson(o.toJson());
      checkPosInventory(od as api.PosInventory);
    });
  });

  unittest.group('obj-schema-PosInventoryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosInventoryRequest();
      var od = api.PosInventoryRequest.fromJson(o.toJson());
      checkPosInventoryRequest(od as api.PosInventoryRequest);
    });
  });

  unittest.group('obj-schema-PosInventoryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosInventoryResponse();
      var od = api.PosInventoryResponse.fromJson(o.toJson());
      checkPosInventoryResponse(od as api.PosInventoryResponse);
    });
  });

  unittest.group('obj-schema-PosListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosListResponse();
      var od = api.PosListResponse.fromJson(o.toJson());
      checkPosListResponse(od as api.PosListResponse);
    });
  });

  unittest.group('obj-schema-PosSale', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosSale();
      var od = api.PosSale.fromJson(o.toJson());
      checkPosSale(od as api.PosSale);
    });
  });

  unittest.group('obj-schema-PosSaleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosSaleRequest();
      var od = api.PosSaleRequest.fromJson(o.toJson());
      checkPosSaleRequest(od as api.PosSaleRequest);
    });
  });

  unittest.group('obj-schema-PosSaleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosSaleResponse();
      var od = api.PosSaleResponse.fromJson(o.toJson());
      checkPosSaleResponse(od as api.PosSaleResponse);
    });
  });

  unittest.group('obj-schema-PosStore', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosStore();
      var od = api.PosStore.fromJson(o.toJson());
      checkPosStore(od as api.PosStore);
    });
  });

  unittest.group('obj-schema-PostalCodeGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalCodeGroup();
      var od = api.PostalCodeGroup.fromJson(o.toJson());
      checkPostalCodeGroup(od as api.PostalCodeGroup);
    });
  });

  unittest.group('obj-schema-PostalCodeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalCodeRange();
      var od = api.PostalCodeRange.fromJson(o.toJson());
      checkPostalCodeRange(od as api.PostalCodeRange);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrice();
      var od = api.Price.fromJson(o.toJson());
      checkPrice(od as api.Price);
    });
  });

  unittest.group('obj-schema-PriceAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildPriceAmount();
      var od = api.PriceAmount.fromJson(o.toJson());
      checkPriceAmount(od as api.PriceAmount);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () {
      var o = buildProduct();
      var od = api.Product.fromJson(o.toJson());
      checkProduct(od as api.Product);
    });
  });

  unittest.group('obj-schema-ProductAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductAmount();
      var od = api.ProductAmount.fromJson(o.toJson());
      checkProductAmount(od as api.ProductAmount);
    });
  });

  unittest.group('obj-schema-ProductProductDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductProductDetail();
      var od = api.ProductProductDetail.fromJson(o.toJson());
      checkProductProductDetail(od as api.ProductProductDetail);
    });
  });

  unittest.group('obj-schema-ProductShipping', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductShipping();
      var od = api.ProductShipping.fromJson(o.toJson());
      checkProductShipping(od as api.ProductShipping);
    });
  });

  unittest.group('obj-schema-ProductShippingDimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductShippingDimension();
      var od = api.ProductShippingDimension.fromJson(o.toJson());
      checkProductShippingDimension(od as api.ProductShippingDimension);
    });
  });

  unittest.group('obj-schema-ProductShippingWeight', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductShippingWeight();
      var od = api.ProductShippingWeight.fromJson(o.toJson());
      checkProductShippingWeight(od as api.ProductShippingWeight);
    });
  });

  unittest.group('obj-schema-ProductStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductStatus();
      var od = api.ProductStatus.fromJson(o.toJson());
      checkProductStatus(od as api.ProductStatus);
    });
  });

  unittest.group('obj-schema-ProductStatusDestinationStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductStatusDestinationStatus();
      var od = api.ProductStatusDestinationStatus.fromJson(o.toJson());
      checkProductStatusDestinationStatus(
          od as api.ProductStatusDestinationStatus);
    });
  });

  unittest.group('obj-schema-ProductStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductStatusItemLevelIssue();
      var od = api.ProductStatusItemLevelIssue.fromJson(o.toJson());
      checkProductStatusItemLevelIssue(od as api.ProductStatusItemLevelIssue);
    });
  });

  unittest.group('obj-schema-ProductSubscriptionCost', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductSubscriptionCost();
      var od = api.ProductSubscriptionCost.fromJson(o.toJson());
      checkProductSubscriptionCost(od as api.ProductSubscriptionCost);
    });
  });

  unittest.group('obj-schema-ProductTax', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductTax();
      var od = api.ProductTax.fromJson(o.toJson());
      checkProductTax(od as api.ProductTax);
    });
  });

  unittest.group('obj-schema-ProductUnitPricingBaseMeasure', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductUnitPricingBaseMeasure();
      var od = api.ProductUnitPricingBaseMeasure.fromJson(o.toJson());
      checkProductUnitPricingBaseMeasure(
          od as api.ProductUnitPricingBaseMeasure);
    });
  });

  unittest.group('obj-schema-ProductUnitPricingMeasure', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductUnitPricingMeasure();
      var od = api.ProductUnitPricingMeasure.fromJson(o.toJson());
      checkProductUnitPricingMeasure(od as api.ProductUnitPricingMeasure);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchRequest();
      var od = api.ProductsCustomBatchRequest.fromJson(o.toJson());
      checkProductsCustomBatchRequest(od as api.ProductsCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchRequestEntry();
      var od = api.ProductsCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductsCustomBatchRequestEntry(
          od as api.ProductsCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchResponse();
      var od = api.ProductsCustomBatchResponse.fromJson(o.toJson());
      checkProductsCustomBatchResponse(od as api.ProductsCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchResponseEntry();
      var od = api.ProductsCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductsCustomBatchResponseEntry(
          od as api.ProductsCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-ProductsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsListResponse();
      var od = api.ProductsListResponse.fromJson(o.toJson());
      checkProductsListResponse(od as api.ProductsListResponse);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchRequest();
      var od = api.ProductstatusesCustomBatchRequest.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequest(
          od as api.ProductstatusesCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchRequestEntry();
      var od = api.ProductstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequestEntry(
          od as api.ProductstatusesCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchResponse();
      var od = api.ProductstatusesCustomBatchResponse.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponse(
          od as api.ProductstatusesCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchResponseEntry();
      var od = api.ProductstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponseEntry(
          od as api.ProductstatusesCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-ProductstatusesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesListResponse();
      var od = api.ProductstatusesListResponse.fromJson(o.toJson());
      checkProductstatusesListResponse(od as api.ProductstatusesListResponse);
    });
  });

  unittest.group('obj-schema-PubsubNotificationSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubNotificationSettings();
      var od = api.PubsubNotificationSettings.fromJson(o.toJson());
      checkPubsubNotificationSettings(od as api.PubsubNotificationSettings);
    });
  });

  unittest.group('obj-schema-RateGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildRateGroup();
      var od = api.RateGroup.fromJson(o.toJson());
      checkRateGroup(od as api.RateGroup);
    });
  });

  unittest.group('obj-schema-RefundReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildRefundReason();
      var od = api.RefundReason.fromJson(o.toJson());
      checkRefundReason(od as api.RefundReason);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegion();
      var od = api.Region.fromJson(o.toJson());
      checkRegion(od as api.Region);
    });
  });

  unittest.group('obj-schema-RegionGeoTargetArea', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionGeoTargetArea();
      var od = api.RegionGeoTargetArea.fromJson(o.toJson());
      checkRegionGeoTargetArea(od as api.RegionGeoTargetArea);
    });
  });

  unittest.group('obj-schema-RegionPostalCodeArea', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionPostalCodeArea();
      var od = api.RegionPostalCodeArea.fromJson(o.toJson());
      checkRegionPostalCodeArea(od as api.RegionPostalCodeArea);
    });
  });

  unittest.group('obj-schema-RegionPostalCodeAreaPostalCodeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionPostalCodeAreaPostalCodeRange();
      var od = api.RegionPostalCodeAreaPostalCodeRange.fromJson(o.toJson());
      checkRegionPostalCodeAreaPostalCodeRange(
          od as api.RegionPostalCodeAreaPostalCodeRange);
    });
  });

  unittest.group('obj-schema-RegionalInventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalInventory();
      var od = api.RegionalInventory.fromJson(o.toJson());
      checkRegionalInventory(od as api.RegionalInventory);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchRequest();
      var od = api.RegionalinventoryCustomBatchRequest.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchRequest(
          od as api.RegionalinventoryCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchRequestEntry();
      var od =
          api.RegionalinventoryCustomBatchRequestEntry.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchRequestEntry(
          od as api.RegionalinventoryCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchResponse();
      var od = api.RegionalinventoryCustomBatchResponse.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchResponse(
          od as api.RegionalinventoryCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchResponseEntry();
      var od =
          api.RegionalinventoryCustomBatchResponseEntry.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchResponseEntry(
          od as api.RegionalinventoryCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-ReportRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportRow();
      var od = api.ReportRow.fromJson(o.toJson());
      checkReportRow(od as api.ReportRow);
    });
  });

  unittest.group('obj-schema-RepricingProductReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingProductReport();
      var od = api.RepricingProductReport.fromJson(o.toJson());
      checkRepricingProductReport(od as api.RepricingProductReport);
    });
  });

  unittest.group('obj-schema-RepricingProductReportBuyboxWinningProductStats',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingProductReportBuyboxWinningProductStats();
      var od = api.RepricingProductReportBuyboxWinningProductStats.fromJson(
          o.toJson());
      checkRepricingProductReportBuyboxWinningProductStats(
          od as api.RepricingProductReportBuyboxWinningProductStats);
    });
  });

  unittest.group('obj-schema-RepricingRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRule();
      var od = api.RepricingRule.fromJson(o.toJson());
      checkRepricingRule(od as api.RepricingRule);
    });
  });

  unittest.group('obj-schema-RepricingRuleCostOfGoodsSaleRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleCostOfGoodsSaleRule();
      var od = api.RepricingRuleCostOfGoodsSaleRule.fromJson(o.toJson());
      checkRepricingRuleCostOfGoodsSaleRule(
          od as api.RepricingRuleCostOfGoodsSaleRule);
    });
  });

  unittest.group('obj-schema-RepricingRuleEffectiveTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleEffectiveTime();
      var od = api.RepricingRuleEffectiveTime.fromJson(o.toJson());
      checkRepricingRuleEffectiveTime(od as api.RepricingRuleEffectiveTime);
    });
  });

  unittest.group('obj-schema-RepricingRuleEffectiveTimeFixedTimePeriod', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleEffectiveTimeFixedTimePeriod();
      var od =
          api.RepricingRuleEffectiveTimeFixedTimePeriod.fromJson(o.toJson());
      checkRepricingRuleEffectiveTimeFixedTimePeriod(
          od as api.RepricingRuleEffectiveTimeFixedTimePeriod);
    });
  });

  unittest.group('obj-schema-RepricingRuleEligibleOfferMatcher', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleEligibleOfferMatcher();
      var od = api.RepricingRuleEligibleOfferMatcher.fromJson(o.toJson());
      checkRepricingRuleEligibleOfferMatcher(
          od as api.RepricingRuleEligibleOfferMatcher);
    });
  });

  unittest.group('obj-schema-RepricingRuleEligibleOfferMatcherStringMatcher',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleEligibleOfferMatcherStringMatcher();
      var od = api.RepricingRuleEligibleOfferMatcherStringMatcher.fromJson(
          o.toJson());
      checkRepricingRuleEligibleOfferMatcherStringMatcher(
          od as api.RepricingRuleEligibleOfferMatcherStringMatcher);
    });
  });

  unittest.group('obj-schema-RepricingRuleReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleReport();
      var od = api.RepricingRuleReport.fromJson(o.toJson());
      checkRepricingRuleReport(od as api.RepricingRuleReport);
    });
  });

  unittest.group('obj-schema-RepricingRuleReportBuyboxWinningRuleStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleReportBuyboxWinningRuleStats();
      var od =
          api.RepricingRuleReportBuyboxWinningRuleStats.fromJson(o.toJson());
      checkRepricingRuleReportBuyboxWinningRuleStats(
          od as api.RepricingRuleReportBuyboxWinningRuleStats);
    });
  });

  unittest.group('obj-schema-RepricingRuleRestriction', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleRestriction();
      var od = api.RepricingRuleRestriction.fromJson(o.toJson());
      checkRepricingRuleRestriction(od as api.RepricingRuleRestriction);
    });
  });

  unittest.group('obj-schema-RepricingRuleRestrictionBoundary', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleRestrictionBoundary();
      var od = api.RepricingRuleRestrictionBoundary.fromJson(o.toJson());
      checkRepricingRuleRestrictionBoundary(
          od as api.RepricingRuleRestrictionBoundary);
    });
  });

  unittest.group('obj-schema-RepricingRuleStatsBasedRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildRepricingRuleStatsBasedRule();
      var od = api.RepricingRuleStatsBasedRule.fromJson(o.toJson());
      checkRepricingRuleStatsBasedRule(od as api.RepricingRuleStatsBasedRule);
    });
  });

  unittest.group('obj-schema-ReturnAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnAddress();
      var od = api.ReturnAddress.fromJson(o.toJson());
      checkReturnAddress(od as api.ReturnAddress);
    });
  });

  unittest.group('obj-schema-ReturnAddressAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnAddressAddress();
      var od = api.ReturnAddressAddress.fromJson(o.toJson());
      checkReturnAddressAddress(od as api.ReturnAddressAddress);
    });
  });

  unittest.group('obj-schema-ReturnPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPolicy();
      var od = api.ReturnPolicy.fromJson(o.toJson());
      checkReturnPolicy(od as api.ReturnPolicy);
    });
  });

  unittest.group('obj-schema-ReturnPolicyPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPolicyPolicy();
      var od = api.ReturnPolicyPolicy.fromJson(o.toJson());
      checkReturnPolicyPolicy(od as api.ReturnPolicyPolicy);
    });
  });

  unittest.group('obj-schema-ReturnPolicySeasonalOverride', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPolicySeasonalOverride();
      var od = api.ReturnPolicySeasonalOverride.fromJson(o.toJson());
      checkReturnPolicySeasonalOverride(od as api.ReturnPolicySeasonalOverride);
    });
  });

  unittest.group('obj-schema-ReturnPricingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPricingInfo();
      var od = api.ReturnPricingInfo.fromJson(o.toJson());
      checkReturnPricingInfo(od as api.ReturnPricingInfo);
    });
  });

  unittest.group('obj-schema-ReturnShipment', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnShipment();
      var od = api.ReturnShipment.fromJson(o.toJson());
      checkReturnShipment(od as api.ReturnShipment);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchRequest();
      var od = api.ReturnaddressCustomBatchRequest.fromJson(o.toJson());
      checkReturnaddressCustomBatchRequest(
          od as api.ReturnaddressCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchRequestEntry();
      var od = api.ReturnaddressCustomBatchRequestEntry.fromJson(o.toJson());
      checkReturnaddressCustomBatchRequestEntry(
          od as api.ReturnaddressCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchResponse();
      var od = api.ReturnaddressCustomBatchResponse.fromJson(o.toJson());
      checkReturnaddressCustomBatchResponse(
          od as api.ReturnaddressCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchResponseEntry();
      var od = api.ReturnaddressCustomBatchResponseEntry.fromJson(o.toJson());
      checkReturnaddressCustomBatchResponseEntry(
          od as api.ReturnaddressCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-ReturnaddressListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressListResponse();
      var od = api.ReturnaddressListResponse.fromJson(o.toJson());
      checkReturnaddressListResponse(od as api.ReturnaddressListResponse);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchRequest();
      var od = api.ReturnpolicyCustomBatchRequest.fromJson(o.toJson());
      checkReturnpolicyCustomBatchRequest(
          od as api.ReturnpolicyCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchRequestEntry();
      var od = api.ReturnpolicyCustomBatchRequestEntry.fromJson(o.toJson());
      checkReturnpolicyCustomBatchRequestEntry(
          od as api.ReturnpolicyCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchResponse();
      var od = api.ReturnpolicyCustomBatchResponse.fromJson(o.toJson());
      checkReturnpolicyCustomBatchResponse(
          od as api.ReturnpolicyCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchResponseEntry();
      var od = api.ReturnpolicyCustomBatchResponseEntry.fromJson(o.toJson());
      checkReturnpolicyCustomBatchResponseEntry(
          od as api.ReturnpolicyCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-ReturnpolicyListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyListResponse();
      var od = api.ReturnpolicyListResponse.fromJson(o.toJson());
      checkReturnpolicyListResponse(od as api.ReturnpolicyListResponse);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () {
      var o = buildRow();
      var od = api.Row.fromJson(o.toJson());
      checkRow(od as api.Row);
    });
  });

  unittest.group('obj-schema-SearchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchRequest();
      var od = api.SearchRequest.fromJson(o.toJson());
      checkSearchRequest(od as api.SearchRequest);
    });
  });

  unittest.group('obj-schema-SearchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchResponse();
      var od = api.SearchResponse.fromJson(o.toJson());
      checkSearchResponse(od as api.SearchResponse);
    });
  });

  unittest.group('obj-schema-Segments', () {
    unittest.test('to-json--from-json', () {
      var o = buildSegments();
      var od = api.Segments.fromJson(o.toJson());
      checkSegments(od as api.Segments);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () {
      var o = buildService();
      var od = api.Service.fromJson(o.toJson());
      checkService(od as api.Service);
    });
  });

  unittest.group('obj-schema-SettlementReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementReport();
      var od = api.SettlementReport.fromJson(o.toJson());
      checkSettlementReport(od as api.SettlementReport);
    });
  });

  unittest.group('obj-schema-SettlementTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransaction();
      var od = api.SettlementTransaction.fromJson(o.toJson());
      checkSettlementTransaction(od as api.SettlementTransaction);
    });
  });

  unittest.group('obj-schema-SettlementTransactionAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionAmount();
      var od = api.SettlementTransactionAmount.fromJson(o.toJson());
      checkSettlementTransactionAmount(od as api.SettlementTransactionAmount);
    });
  });

  unittest.group('obj-schema-SettlementTransactionAmountCommission', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionAmountCommission();
      var od = api.SettlementTransactionAmountCommission.fromJson(o.toJson());
      checkSettlementTransactionAmountCommission(
          od as api.SettlementTransactionAmountCommission);
    });
  });

  unittest.group('obj-schema-SettlementTransactionIdentifiers', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionIdentifiers();
      var od = api.SettlementTransactionIdentifiers.fromJson(o.toJson());
      checkSettlementTransactionIdentifiers(
          od as api.SettlementTransactionIdentifiers);
    });
  });

  unittest.group('obj-schema-SettlementTransactionTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionTransaction();
      var od = api.SettlementTransactionTransaction.fromJson(o.toJson());
      checkSettlementTransactionTransaction(
          od as api.SettlementTransactionTransaction);
    });
  });

  unittest.group('obj-schema-SettlementreportsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementreportsListResponse();
      var od = api.SettlementreportsListResponse.fromJson(o.toJson());
      checkSettlementreportsListResponse(
          od as api.SettlementreportsListResponse);
    });
  });

  unittest.group('obj-schema-SettlementtransactionsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementtransactionsListResponse();
      var od = api.SettlementtransactionsListResponse.fromJson(o.toJson());
      checkSettlementtransactionsListResponse(
          od as api.SettlementtransactionsListResponse);
    });
  });

  unittest.group('obj-schema-ShipmentInvoice', () {
    unittest.test('to-json--from-json', () {
      var o = buildShipmentInvoice();
      var od = api.ShipmentInvoice.fromJson(o.toJson());
      checkShipmentInvoice(od as api.ShipmentInvoice);
    });
  });

  unittest.group('obj-schema-ShipmentInvoiceLineItemInvoice', () {
    unittest.test('to-json--from-json', () {
      var o = buildShipmentInvoiceLineItemInvoice();
      var od = api.ShipmentInvoiceLineItemInvoice.fromJson(o.toJson());
      checkShipmentInvoiceLineItemInvoice(
          od as api.ShipmentInvoiceLineItemInvoice);
    });
  });

  unittest.group('obj-schema-ShipmentTrackingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildShipmentTrackingInfo();
      var od = api.ShipmentTrackingInfo.fromJson(o.toJson());
      checkShipmentTrackingInfo(od as api.ShipmentTrackingInfo);
    });
  });

  unittest.group('obj-schema-ShippingSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingSettings();
      var od = api.ShippingSettings.fromJson(o.toJson());
      checkShippingSettings(od as api.ShippingSettings);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchRequest();
      var od = api.ShippingsettingsCustomBatchRequest.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequest(
          od as api.ShippingsettingsCustomBatchRequest);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchRequestEntry();
      var od = api.ShippingsettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequestEntry(
          od as api.ShippingsettingsCustomBatchRequestEntry);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchResponse();
      var od = api.ShippingsettingsCustomBatchResponse.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponse(
          od as api.ShippingsettingsCustomBatchResponse);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchResponseEntry();
      var od =
          api.ShippingsettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponseEntry(
          od as api.ShippingsettingsCustomBatchResponseEntry);
    });
  });

  unittest.group('obj-schema-ShippingsettingsGetSupportedCarriersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsGetSupportedCarriersResponse();
      var od =
          api.ShippingsettingsGetSupportedCarriersResponse.fromJson(o.toJson());
      checkShippingsettingsGetSupportedCarriersResponse(
          od as api.ShippingsettingsGetSupportedCarriersResponse);
    });
  });

  unittest.group('obj-schema-ShippingsettingsGetSupportedHolidaysResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsGetSupportedHolidaysResponse();
      var od =
          api.ShippingsettingsGetSupportedHolidaysResponse.fromJson(o.toJson());
      checkShippingsettingsGetSupportedHolidaysResponse(
          od as api.ShippingsettingsGetSupportedHolidaysResponse);
    });
  });

  unittest.group(
      'obj-schema-ShippingsettingsGetSupportedPickupServicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsGetSupportedPickupServicesResponse();
      var od = api.ShippingsettingsGetSupportedPickupServicesResponse.fromJson(
          o.toJson());
      checkShippingsettingsGetSupportedPickupServicesResponse(
          od as api.ShippingsettingsGetSupportedPickupServicesResponse);
    });
  });

  unittest.group('obj-schema-ShippingsettingsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsListResponse();
      var od = api.ShippingsettingsListResponse.fromJson(o.toJson());
      checkShippingsettingsListResponse(od as api.ShippingsettingsListResponse);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () {
      var o = buildTable();
      var od = api.Table.fromJson(o.toJson());
      checkTable(od as api.Table);
    });
  });

  unittest.group('obj-schema-TestOrder', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrder();
      var od = api.TestOrder.fromJson(o.toJson());
      checkTestOrder(od as api.TestOrder);
    });
  });

  unittest.group('obj-schema-TestOrderAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderAddress();
      var od = api.TestOrderAddress.fromJson(o.toJson());
      checkTestOrderAddress(od as api.TestOrderAddress);
    });
  });

  unittest.group('obj-schema-TestOrderDeliveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderDeliveryDetails();
      var od = api.TestOrderDeliveryDetails.fromJson(o.toJson());
      checkTestOrderDeliveryDetails(od as api.TestOrderDeliveryDetails);
    });
  });

  unittest.group('obj-schema-TestOrderLineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderLineItem();
      var od = api.TestOrderLineItem.fromJson(o.toJson());
      checkTestOrderLineItem(od as api.TestOrderLineItem);
    });
  });

  unittest.group('obj-schema-TestOrderLineItemProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderLineItemProduct();
      var od = api.TestOrderLineItemProduct.fromJson(o.toJson());
      checkTestOrderLineItemProduct(od as api.TestOrderLineItemProduct);
    });
  });

  unittest.group('obj-schema-TestOrderPickupDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderPickupDetails();
      var od = api.TestOrderPickupDetails.fromJson(o.toJson());
      checkTestOrderPickupDetails(od as api.TestOrderPickupDetails);
    });
  });

  unittest.group('obj-schema-TestOrderPickupDetailsPickupPerson', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderPickupDetailsPickupPerson();
      var od = api.TestOrderPickupDetailsPickupPerson.fromJson(o.toJson());
      checkTestOrderPickupDetailsPickupPerson(
          od as api.TestOrderPickupDetailsPickupPerson);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeZone();
      var od = api.TimeZone.fromJson(o.toJson());
      checkTimeZone(od as api.TimeZone);
    });
  });

  unittest.group('obj-schema-TransitTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitTable();
      var od = api.TransitTable.fromJson(o.toJson());
      checkTransitTable(od as api.TransitTable);
    });
  });

  unittest.group('obj-schema-TransitTableTransitTimeRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitTableTransitTimeRow();
      var od = api.TransitTableTransitTimeRow.fromJson(o.toJson());
      checkTransitTableTransitTimeRow(od as api.TransitTableTransitTimeRow);
    });
  });

  unittest.group('obj-schema-TransitTableTransitTimeRowTransitTimeValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitTableTransitTimeRowTransitTimeValue();
      var od =
          api.TransitTableTransitTimeRowTransitTimeValue.fromJson(o.toJson());
      checkTransitTableTransitTimeRowTransitTimeValue(
          od as api.TransitTableTransitTimeRowTransitTimeValue);
    });
  });

  unittest.group('obj-schema-UnitInvoice', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnitInvoice();
      var od = api.UnitInvoice.fromJson(o.toJson());
      checkUnitInvoice(od as api.UnitInvoice);
    });
  });

  unittest.group('obj-schema-UnitInvoiceAdditionalCharge', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnitInvoiceAdditionalCharge();
      var od = api.UnitInvoiceAdditionalCharge.fromJson(o.toJson());
      checkUnitInvoiceAdditionalCharge(od as api.UnitInvoiceAdditionalCharge);
    });
  });

  unittest.group('obj-schema-UnitInvoiceTaxLine', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnitInvoiceTaxLine();
      var od = api.UnitInvoiceTaxLine.fromJson(o.toJson());
      checkUnitInvoiceTaxLine(od as api.UnitInvoiceTaxLine);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () {
      var o = buildValue();
      var od = api.Value.fromJson(o.toJson());
      checkValue(od as api.Value);
    });
  });

  unittest.group('obj-schema-Weight', () {
    unittest.test('to-json--from-json', () {
      var o = buildWeight();
      var od = api.Weight.fromJson(o.toJson());
      checkWeight(od as api.Weight);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--authinfo', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("content/v2.1/accounts/authinfo"));
        pathOffset += 30;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsAuthInfoResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .authinfo($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsAuthInfoResponse(response as api.AccountsAuthInfoResponse);
      })));
    });

    unittest.test('method--claimwebsite', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_overwrite = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        index = path.indexOf('/claimwebsite', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/claimwebsite"));
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
            queryMap["overwrite"].first, unittest.equals("$arg_overwrite"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsClaimWebsiteResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claimwebsite(arg_merchantId, arg_accountId,
              overwrite: arg_overwrite, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsClaimWebsiteResponse(
            response as api.AccountsClaimWebsiteResponse);
      })));
    });

    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_request = buildAccountsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountsCustomBatchRequest(obj as api.AccountsCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("content/v2.1/accounts/batch"));
        pathOffset += 27;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsCustomBatchResponse(
            response as api.AccountsCustomBatchResponse);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_accountId,
              force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response as api.Account);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj as api.Account);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response as api.Account);
      })));
    });

    unittest.test('method--link', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_request = buildAccountsLinkRequest();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountsLinkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountsLinkRequest(obj as api.AccountsLinkRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        index = path.indexOf('/link', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/link"));
        pathOffset += 5;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsLinkResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .link(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsLinkResponse(response as api.AccountsLinkResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_merchantId = 'foo';
      var arg_label = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
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
        unittest.expect(queryMap["label"].first, unittest.equals(arg_label));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              label: arg_label,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsListResponse(response as api.AccountsListResponse);
      })));
    });

    unittest.test('method--listlinks', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        index = path.indexOf('/listlinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listlinks"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsListLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listlinks(arg_merchantId, arg_accountId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsListLinksResponse(
            response as api.AccountsListLinksResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj as api.Account);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response as api.Account);
      })));
    });

    unittest.test('method--updatelabels', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts;
      var arg_request = buildAccountsUpdateLabelsRequest();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountsUpdateLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountsUpdateLabelsRequest(
            obj as api.AccountsUpdateLabelsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        index = path.indexOf('/updatelabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/updatelabels"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsUpdateLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatelabels(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsUpdateLabelsResponse(
            response as api.AccountsUpdateLabelsResponse);
      })));
    });
  });

  unittest.group('resource-AccountsLabelsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.labels;
      var arg_request = buildAccountLabel();
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountLabel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountLabel(obj as api.AccountLabel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/labels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/labels"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountLabel(response as api.AccountLabel);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.labels;
      var arg_accountId = 'foo';
      var arg_labelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/labels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/labels/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_labelId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_accountId, arg_labelId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.labels;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/labels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/labels"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAccountLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAccountLabelsResponse(
            response as api.ListAccountLabelsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.labels;
      var arg_request = buildAccountLabel();
      var arg_accountId = 'foo';
      var arg_labelId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountLabel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountLabel(obj as api.AccountLabel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/labels/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/labels/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_labelId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_labelId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountLabel(response as api.AccountLabel);
      })));
    });
  });

  unittest.group('resource-AccountsReturncarrierResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.returncarrier;
      var arg_request = buildAccountReturnCarrier();
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountReturnCarrier.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountReturnCarrier(obj as api.AccountReturnCarrier);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/returncarrier', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/returncarrier"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountReturnCarrier());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountReturnCarrier(response as api.AccountReturnCarrier);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.returncarrier;
      var arg_accountId = 'foo';
      var arg_carrierAccountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/returncarrier/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/returncarrier/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_carrierAccountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_accountId, arg_carrierAccountId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.returncarrier;
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/returncarrier', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/returncarrier"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAccountReturnCarrierResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAccountReturnCarrierResponse(
            response as api.ListAccountReturnCarrierResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounts.returncarrier;
      var arg_request = buildAccountReturnCarrier();
      var arg_accountId = 'foo';
      var arg_carrierAccountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountReturnCarrier.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountReturnCarrier(obj as api.AccountReturnCarrier);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/accounts/"));
        pathOffset += 22;
        index = path.indexOf('/returncarrier/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/returncarrier/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_carrierAccountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountReturnCarrier());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_accountId, arg_carrierAccountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountReturnCarrier(response as api.AccountReturnCarrier);
      })));
    });
  });

  unittest.group('resource-AccountstatusesResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accountstatuses;
      var arg_request = buildAccountstatusesCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountstatusesCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountstatusesCustomBatchRequest(
            obj as api.AccountstatusesCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 34),
            unittest.equals("content/v2.1/accountstatuses/batch"));
        pathOffset += 34;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildAccountstatusesCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountstatusesCustomBatchResponse(
            response as api.AccountstatusesCustomBatchResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accountstatuses;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_destinations = buildUnnamed4352();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accountstatuses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/accountstatuses/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId,
              destinations: arg_destinations, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountStatus(response as api.AccountStatus);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accountstatuses;
      var arg_merchantId = 'foo';
      var arg_destinations = buildUnnamed4353();
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accountstatuses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/accountstatuses"));
        pathOffset += 16;

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountstatusesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              destinations: arg_destinations,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountstatusesListResponse(
            response as api.AccountstatusesListResponse);
      })));
    });
  });

  unittest.group('resource-AccounttaxResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounttax;
      var arg_request = buildAccounttaxCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccounttaxCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccounttaxCustomBatchRequest(
            obj as api.AccounttaxCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("content/v2.1/accounttax/batch"));
        pathOffset += 29;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccounttaxCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounttaxCustomBatchResponse(
            response as api.AccounttaxCustomBatchResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounttax;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounttax/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/accounttax/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountTax());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response as api.AccountTax);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounttax;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounttax', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/accounttax"));
        pathOffset += 11;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccounttaxListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounttaxListResponse(response as api.AccounttaxListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).accounttax;
      var arg_request = buildAccountTax();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountTax.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountTax(obj as api.AccountTax);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/accounttax/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/accounttax/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountTax());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response as api.AccountTax);
      })));
    });
  });

  unittest.group('resource-CollectionsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).collections;
      var arg_request = buildCollection();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Collection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCollection(obj as api.Collection);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/collections', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/collections"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCollection(response as api.Collection);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).collections;
      var arg_merchantId = 'foo';
      var arg_collectionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/collections/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/collections/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_collectionId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_collectionId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).collections;
      var arg_merchantId = 'foo';
      var arg_collectionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/collections/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/collections/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_collectionId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_collectionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCollection(response as api.Collection);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).collections;
      var arg_merchantId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/collections', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/collections"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCollectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCollectionsResponse(response as api.ListCollectionsResponse);
      })));
    });
  });

  unittest.group('resource-CollectionstatusesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).collectionstatuses;
      var arg_merchantId = 'foo';
      var arg_collectionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/collectionstatuses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/collectionstatuses/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_collectionId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCollectionStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_collectionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCollectionStatus(response as api.CollectionStatus);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).collectionstatuses;
      var arg_merchantId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/collectionstatuses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/collectionstatuses"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCollectionStatusesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCollectionStatusesResponse(
            response as api.ListCollectionStatusesResponse);
      })));
    });
  });

  unittest.group('resource-CssesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).csses;
      var arg_cssGroupId = 'foo';
      var arg_cssDomainId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/csses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_cssGroupId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/csses/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_cssDomainId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCss());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_cssGroupId, arg_cssDomainId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCss(response as api.Css);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).csses;
      var arg_cssGroupId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/csses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_cssGroupId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/csses"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCssesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_cssGroupId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCssesResponse(response as api.ListCssesResponse);
      })));
    });

    unittest.test('method--updatelabels', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).csses;
      var arg_request = buildLabelIds();
      var arg_cssGroupId = 'foo';
      var arg_cssDomainId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.LabelIds.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLabelIds(obj as api.LabelIds);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/csses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_cssGroupId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/csses/"));
        pathOffset += 7;
        index = path.indexOf('/updatelabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_cssDomainId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/updatelabels"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCss());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatelabels(arg_request, arg_cssGroupId, arg_cssDomainId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCss(response as api.Css);
      })));
    });
  });

  unittest.group('resource-DatafeedsResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_request = buildDatafeedsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatafeedsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatafeedsCustomBatchRequest(
            obj as api.DatafeedsCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("content/v2.1/datafeeds/batch"));
        pathOffset += 28;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeedsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsCustomBatchResponse(
            response as api.DatafeedsCustomBatchResponse);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_merchantId = 'foo';
      var arg_datafeedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeeds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/datafeeds/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_datafeedId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--fetchnow', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_merchantId = 'foo';
      var arg_datafeedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeeds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/datafeeds/"));
        pathOffset += 11;
        index = path.indexOf('/fetchNow', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_datafeedId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/fetchNow"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeedsFetchNowResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetchnow(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsFetchNowResponse(
            response as api.DatafeedsFetchNowResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_merchantId = 'foo';
      var arg_datafeedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeeds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/datafeeds/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_datafeedId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response as api.Datafeed);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Datafeed.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatafeed(obj as api.Datafeed);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeeds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datafeeds"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response as api.Datafeed);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeeds', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/datafeeds"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeedsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsListResponse(response as api.DatafeedsListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = 'foo';
      var arg_datafeedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Datafeed.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDatafeed(obj as api.Datafeed);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeeds/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/datafeeds/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_datafeedId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeed());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_datafeedId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response as api.Datafeed);
      })));
    });
  });

  unittest.group('resource-DatafeedstatusesResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeedstatuses;
      var arg_request = buildDatafeedstatusesCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatafeedstatusesCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatafeedstatusesCustomBatchRequest(
            obj as api.DatafeedstatusesCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("content/v2.1/datafeedstatuses/batch"));
        pathOffset += 35;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildDatafeedstatusesCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedstatusesCustomBatchResponse(
            response as api.DatafeedstatusesCustomBatchResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeedstatuses;
      var arg_merchantId = 'foo';
      var arg_datafeedId = 'foo';
      var arg_country = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeedstatuses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/datafeedstatuses/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_datafeedId'));

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeedStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_datafeedId,
              country: arg_country,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedStatus(response as api.DatafeedStatus);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).datafeedstatuses;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/datafeedstatuses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/datafeedstatuses"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDatafeedstatusesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedstatusesListResponse(
            response as api.DatafeedstatusesListResponse);
      })));
    });
  });

  unittest.group('resource-LiasettingsResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_request = buildLiasettingsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiasettingsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiasettingsCustomBatchRequest(
            obj as api.LiasettingsCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("content/v2.1/liasettings/batch"));
        pathOffset += 30;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiasettingsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsCustomBatchResponse(
            response as api.LiasettingsCustomBatchResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiaSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response as api.LiaSettings);
      })));
    });

    unittest.test('method--getaccessiblegmbaccounts', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        index = path.indexOf('/accessiblegmbaccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/accessiblegmbaccounts"));
        pathOffset += 22;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildLiasettingsGetAccessibleGmbAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getaccessiblegmbaccounts(arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsGetAccessibleGmbAccountsResponse(
            response as api.LiasettingsGetAccessibleGmbAccountsResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/liasettings"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiasettingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsListResponse(response as api.LiasettingsListResponse);
      })));
    });

    unittest.test('method--listposdataproviders', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 41),
            unittest.equals("content/v2.1/liasettings/posdataproviders"));
        pathOffset += 41;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildLiasettingsListPosDataProvidersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listposdataproviders($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsListPosDataProvidersResponse(
            response as api.LiasettingsListPosDataProvidersResponse);
      })));
    });

    unittest.test('method--requestgmbaccess', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_gmbEmail = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        index = path.indexOf('/requestgmbaccess', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/requestgmbaccess"));
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
            queryMap["gmbEmail"].first, unittest.equals(arg_gmbEmail));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildLiasettingsRequestGmbAccessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestgmbaccess(arg_merchantId, arg_accountId, arg_gmbEmail,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsRequestGmbAccessResponse(
            response as api.LiasettingsRequestGmbAccessResponse);
      })));
    });

    unittest.test('method--requestinventoryverification', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_country = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        index = path.indexOf('/requestinventoryverification/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/requestinventoryverification/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_country'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildLiasettingsRequestInventoryVerificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestinventoryverification(
              arg_merchantId, arg_accountId, arg_country,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsRequestInventoryVerificationResponse(
            response as api.LiasettingsRequestInventoryVerificationResponse);
      })));
    });

    unittest.test('method--setinventoryverificationcontact', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_country = 'foo';
      var arg_language = 'foo';
      var arg_contactName = 'foo';
      var arg_contactEmail = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        index = path.indexOf('/setinventoryverificationcontact', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/setinventoryverificationcontact"));
        pathOffset += 32;

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(
            queryMap["contactName"].first, unittest.equals(arg_contactName));
        unittest.expect(
            queryMap["contactEmail"].first, unittest.equals(arg_contactEmail));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildLiasettingsSetInventoryVerificationContactResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setinventoryverificationcontact(arg_merchantId, arg_accountId,
              arg_country, arg_language, arg_contactName, arg_contactEmail,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsSetInventoryVerificationContactResponse(
            response as api.LiasettingsSetInventoryVerificationContactResponse);
      })));
    });

    unittest.test('method--setposdataprovider', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_country = 'foo';
      var arg_posDataProviderId = 'foo';
      var arg_posExternalAccountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        index = path.indexOf('/setposdataprovider', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/setposdataprovider"));
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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(queryMap["posDataProviderId"].first,
            unittest.equals(arg_posDataProviderId));
        unittest.expect(queryMap["posExternalAccountId"].first,
            unittest.equals(arg_posExternalAccountId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildLiasettingsSetPosDataProviderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setposdataprovider(arg_merchantId, arg_accountId, arg_country,
              posDataProviderId: arg_posDataProviderId,
              posExternalAccountId: arg_posExternalAccountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsSetPosDataProviderResponse(
            response as api.LiasettingsSetPosDataProviderResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).liasettings;
      var arg_request = buildLiaSettings();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiaSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLiaSettings(obj as api.LiaSettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/liasettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/liasettings/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLiaSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response as api.LiaSettings);
      })));
    });
  });

  unittest.group('resource-LocalinventoryResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).localinventory;
      var arg_request = buildLocalinventoryCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocalinventoryCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLocalinventoryCustomBatchRequest(
            obj as api.LocalinventoryCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("content/v2.1/localinventory/batch"));
        pathOffset += 33;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildLocalinventoryCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocalinventoryCustomBatchResponse(
            response as api.LocalinventoryCustomBatchResponse);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).localinventory;
      var arg_request = buildLocalInventory();
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocalInventory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLocalInventory(obj as api.LocalInventory);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/localinventory', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/localinventory"));
        pathOffset += 15;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocalInventory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, arg_productId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocalInventory(response as api.LocalInventory);
      })));
    });
  });

  unittest.group('resource-OrderinvoicesResource', () {
    unittest.test('method--createchargeinvoice', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateChargeInvoiceRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderinvoicesCreateChargeInvoiceRequest(
            obj as api.OrderinvoicesCreateChargeInvoiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderinvoices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/orderinvoices/"));
        pathOffset += 15;
        index = path.indexOf('/createChargeInvoice', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/createChargeInvoice"));
        pathOffset += 20;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildOrderinvoicesCreateChargeInvoiceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createchargeinvoice(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderinvoicesCreateChargeInvoiceResponse(
            response as api.OrderinvoicesCreateChargeInvoiceResponse);
      })));
    });

    unittest.test('method--createrefundinvoice', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateRefundInvoiceRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderinvoicesCreateRefundInvoiceRequest(
            obj as api.OrderinvoicesCreateRefundInvoiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderinvoices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/orderinvoices/"));
        pathOffset += 15;
        index = path.indexOf('/createRefundInvoice', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/createRefundInvoice"));
        pathOffset += 20;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildOrderinvoicesCreateRefundInvoiceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createrefundinvoice(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderinvoicesCreateRefundInvoiceResponse(
            response as api.OrderinvoicesCreateRefundInvoiceResponse);
      })));
    });
  });

  unittest.group('resource-OrderreportsResource', () {
    unittest.test('method--listdisbursements', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreports;
      var arg_merchantId = 'foo';
      var arg_disbursementEndDate = 'foo';
      var arg_disbursementStartDate = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreports/disbursements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("/orderreports/disbursements"));
        pathOffset += 27;

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
        unittest.expect(queryMap["disbursementEndDate"].first,
            unittest.equals(arg_disbursementEndDate));
        unittest.expect(queryMap["disbursementStartDate"].first,
            unittest.equals(arg_disbursementStartDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrderreportsListDisbursementsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listdisbursements(arg_merchantId,
              disbursementEndDate: arg_disbursementEndDate,
              disbursementStartDate: arg_disbursementStartDate,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreportsListDisbursementsResponse(
            response as api.OrderreportsListDisbursementsResponse);
      })));
    });

    unittest.test('method--listtransactions', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreports;
      var arg_merchantId = 'foo';
      var arg_disbursementId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_transactionEndDate = 'foo';
      var arg_transactionStartDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreports/disbursements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("/orderreports/disbursements/"));
        pathOffset += 28;
        index = path.indexOf('/transactions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_disbursementId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/transactions"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["transactionEndDate"].first,
            unittest.equals(arg_transactionEndDate));
        unittest.expect(queryMap["transactionStartDate"].first,
            unittest.equals(arg_transactionStartDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrderreportsListTransactionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listtransactions(arg_merchantId, arg_disbursementId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              transactionEndDate: arg_transactionEndDate,
              transactionStartDate: arg_transactionStartDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreportsListTransactionsResponse(
            response as api.OrderreportsListTransactionsResponse);
      })));
    });
  });

  unittest.group('resource-OrderreturnsResource', () {
    unittest.test('method--acknowledge', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreturns;
      var arg_request = buildOrderreturnsAcknowledgeRequest();
      var arg_merchantId = 'foo';
      var arg_returnId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderreturnsAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderreturnsAcknowledgeRequest(
            obj as api.OrderreturnsAcknowledgeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreturns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/orderreturns/"));
        pathOffset += 14;
        index = path.indexOf('/acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_returnId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/acknowledge"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderreturnsAcknowledgeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_merchantId, arg_returnId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreturnsAcknowledgeResponse(
            response as api.OrderreturnsAcknowledgeResponse);
      })));
    });

    unittest.test('method--createorderreturn', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreturns;
      var arg_request = buildOrderreturnsCreateOrderReturnRequest();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderreturnsCreateOrderReturnRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderreturnsCreateOrderReturnRequest(
            obj as api.OrderreturnsCreateOrderReturnRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreturns/createOrderReturn', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("/orderreturns/createOrderReturn"));
        pathOffset += 31;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrderreturnsCreateOrderReturnResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createorderreturn(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreturnsCreateOrderReturnResponse(
            response as api.OrderreturnsCreateOrderReturnResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreturns;
      var arg_merchantId = 'foo';
      var arg_returnId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreturns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/orderreturns/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_returnId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMerchantOrderReturn());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_returnId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMerchantOrderReturn(response as api.MerchantOrderReturn);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreturns;
      var arg_merchantId = 'foo';
      var arg_acknowledged = true;
      var arg_createdEndDate = 'foo';
      var arg_createdStartDate = 'foo';
      var arg_googleOrderIds = buildUnnamed4354();
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_shipmentStates = buildUnnamed4355();
      var arg_shipmentStatus = buildUnnamed4356();
      var arg_shipmentTrackingNumbers = buildUnnamed4357();
      var arg_shipmentTypes = buildUnnamed4358();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreturns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/orderreturns"));
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
        unittest.expect(queryMap["acknowledged"].first,
            unittest.equals("$arg_acknowledged"));
        unittest.expect(queryMap["createdEndDate"].first,
            unittest.equals(arg_createdEndDate));
        unittest.expect(queryMap["createdStartDate"].first,
            unittest.equals(arg_createdStartDate));
        unittest.expect(
            queryMap["googleOrderIds"], unittest.equals(arg_googleOrderIds));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["shipmentStates"], unittest.equals(arg_shipmentStates));
        unittest.expect(
            queryMap["shipmentStatus"], unittest.equals(arg_shipmentStatus));
        unittest.expect(queryMap["shipmentTrackingNumbers"],
            unittest.equals(arg_shipmentTrackingNumbers));
        unittest.expect(
            queryMap["shipmentTypes"], unittest.equals(arg_shipmentTypes));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderreturnsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreturnsListResponse(response as api.OrderreturnsListResponse);
      })));
    });

    unittest.test('method--process', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orderreturns;
      var arg_request = buildOrderreturnsProcessRequest();
      var arg_merchantId = 'foo';
      var arg_returnId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderreturnsProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderreturnsProcessRequest(obj as api.OrderreturnsProcessRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orderreturns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/orderreturns/"));
        pathOffset += 14;
        index = path.indexOf('/process', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_returnId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/process"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderreturnsProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .process(arg_request, arg_merchantId, arg_returnId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreturnsProcessResponse(
            response as api.OrderreturnsProcessResponse);
      })));
    });
  });

  unittest.group('resource-OrdersResource', () {
    unittest.test('method--acknowledge', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersAcknowledgeRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersAcknowledgeRequest(obj as api.OrdersAcknowledgeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/acknowledge"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersAcknowledgeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersAcknowledgeResponse(
            response as api.OrdersAcknowledgeResponse);
      })));
    });

    unittest.test('method--advancetestorder', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/testorders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/testorders/"));
        pathOffset += 12;
        index = path.indexOf('/advance', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/advance"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersAdvanceTestOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .advancetestorder(arg_merchantId, arg_orderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersAdvanceTestOrderResponse(
            response as api.OrdersAdvanceTestOrderResponse);
      })));
    });

    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersCancelRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCancelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCancelRequest(obj as api.OrdersCancelRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/cancel"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersCancelResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelResponse(response as api.OrdersCancelResponse);
      })));
    });

    unittest.test('method--cancellineitem', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersCancelLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCancelLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCancelLineItemRequest(
            obj as api.OrdersCancelLineItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/cancelLineItem', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/cancelLineItem"));
        pathOffset += 15;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersCancelLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancellineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelLineItemResponse(
            response as api.OrdersCancelLineItemResponse);
      })));
    });

    unittest.test('method--canceltestorderbycustomer', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersCancelTestOrderByCustomerRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCancelTestOrderByCustomerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCancelTestOrderByCustomerRequest(
            obj as api.OrdersCancelTestOrderByCustomerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/testorders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/testorders/"));
        pathOffset += 12;
        index = path.indexOf('/cancelByCustomer', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/cancelByCustomer"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersCancelTestOrderByCustomerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .canceltestorderbycustomer(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelTestOrderByCustomerResponse(
            response as api.OrdersCancelTestOrderByCustomerResponse);
      })));
    });

    unittest.test('method--createtestorder', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestOrderRequest();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCreateTestOrderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCreateTestOrderRequest(
            obj as api.OrdersCreateTestOrderRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/testorders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/testorders"));
        pathOffset += 11;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersCreateTestOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createtestorder(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCreateTestOrderResponse(
            response as api.OrdersCreateTestOrderResponse);
      })));
    });

    unittest.test('method--createtestreturn', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestReturnRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCreateTestReturnRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersCreateTestReturnRequest(
            obj as api.OrdersCreateTestReturnRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/testreturn', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/testreturn"));
        pathOffset += 11;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersCreateTestReturnResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createtestreturn(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCreateTestReturnResponse(
            response as api.OrdersCreateTestReturnResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_orderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrder(response as api.Order);
      })));
    });

    unittest.test('method--getbymerchantorderid', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_merchantId = 'foo';
      var arg_merchantOrderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/ordersbymerchantid/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/ordersbymerchantid/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_merchantOrderId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersGetByMerchantOrderIdResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getbymerchantorderid(arg_merchantId, arg_merchantOrderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersGetByMerchantOrderIdResponse(
            response as api.OrdersGetByMerchantOrderIdResponse);
      })));
    });

    unittest.test('method--gettestordertemplate', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_merchantId = 'foo';
      var arg_templateName = 'foo';
      var arg_country = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/testordertemplates/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/testordertemplates/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_templateName'));

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersGetTestOrderTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .gettestordertemplate(arg_merchantId, arg_templateName,
              country: arg_country, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersGetTestOrderTemplateResponse(
            response as api.OrdersGetTestOrderTemplateResponse);
      })));
    });

    unittest.test('method--instorerefundlineitem', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersInStoreRefundLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersInStoreRefundLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersInStoreRefundLineItemRequest(
            obj as api.OrdersInStoreRefundLineItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/inStoreRefundLineItem', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/inStoreRefundLineItem"));
        pathOffset += 22;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersInStoreRefundLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .instorerefundlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersInStoreRefundLineItemResponse(
            response as api.OrdersInStoreRefundLineItemResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_merchantId = 'foo';
      var arg_acknowledged = true;
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_placedDateEnd = 'foo';
      var arg_placedDateStart = 'foo';
      var arg_statuses = buildUnnamed4359();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/orders"));
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
        unittest.expect(queryMap["acknowledged"].first,
            unittest.equals("$arg_acknowledged"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["placedDateEnd"].first,
            unittest.equals(arg_placedDateEnd));
        unittest.expect(queryMap["placedDateStart"].first,
            unittest.equals(arg_placedDateStart));
        unittest.expect(queryMap["statuses"], unittest.equals(arg_statuses));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              acknowledged: arg_acknowledged,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              placedDateEnd: arg_placedDateEnd,
              placedDateStart: arg_placedDateStart,
              statuses: arg_statuses,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersListResponse(response as api.OrdersListResponse);
      })));
    });

    unittest.test('method--refunditem', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersRefundItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersRefundItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersRefundItemRequest(obj as api.OrdersRefundItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/refunditem', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/refunditem"));
        pathOffset += 11;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersRefundItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refunditem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersRefundItemResponse(response as api.OrdersRefundItemResponse);
      })));
    });

    unittest.test('method--refundorder', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersRefundOrderRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersRefundOrderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersRefundOrderRequest(obj as api.OrdersRefundOrderRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/refundorder', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/refundorder"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersRefundOrderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refundorder(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersRefundOrderResponse(
            response as api.OrdersRefundOrderResponse);
      })));
    });

    unittest.test('method--rejectreturnlineitem', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersRejectReturnLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersRejectReturnLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersRejectReturnLineItemRequest(
            obj as api.OrdersRejectReturnLineItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/rejectReturnLineItem', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/rejectReturnLineItem"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersRejectReturnLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rejectreturnlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersRejectReturnLineItemResponse(
            response as api.OrdersRejectReturnLineItemResponse);
      })));
    });

    unittest.test('method--returnrefundlineitem', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersReturnRefundLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersReturnRefundLineItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersReturnRefundLineItemRequest(
            obj as api.OrdersReturnRefundLineItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/returnRefundLineItem', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/returnRefundLineItem"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersReturnRefundLineItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .returnrefundlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersReturnRefundLineItemResponse(
            response as api.OrdersReturnRefundLineItemResponse);
      })));
    });

    unittest.test('method--setlineitemmetadata', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersSetLineItemMetadataRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersSetLineItemMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersSetLineItemMetadataRequest(
            obj as api.OrdersSetLineItemMetadataRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/setLineItemMetadata', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/setLineItemMetadata"));
        pathOffset += 20;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersSetLineItemMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setlineitemmetadata(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersSetLineItemMetadataResponse(
            response as api.OrdersSetLineItemMetadataResponse);
      })));
    });

    unittest.test('method--shiplineitems', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersShipLineItemsRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersShipLineItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersShipLineItemsRequest(obj as api.OrdersShipLineItemsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/shipLineItems', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/shipLineItems"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersShipLineItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .shiplineitems(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersShipLineItemsResponse(
            response as api.OrdersShipLineItemsResponse);
      })));
    });

    unittest.test('method--updatelineitemshippingdetails', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersUpdateLineItemShippingDetailsRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersUpdateLineItemShippingDetailsRequest(
            obj as api.OrdersUpdateLineItemShippingDetailsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/updateLineItemShippingDetails', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/updateLineItemShippingDetails"));
        pathOffset += 30;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildOrdersUpdateLineItemShippingDetailsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatelineitemshippingdetails(
              arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateLineItemShippingDetailsResponse(
            response as api.OrdersUpdateLineItemShippingDetailsResponse);
      })));
    });

    unittest.test('method--updatemerchantorderid', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersUpdateMerchantOrderIdRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersUpdateMerchantOrderIdRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersUpdateMerchantOrderIdRequest(
            obj as api.OrdersUpdateMerchantOrderIdRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/updateMerchantOrderId', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/updateMerchantOrderId"));
        pathOffset += 22;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrdersUpdateMerchantOrderIdResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatemerchantorderid(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateMerchantOrderIdResponse(
            response as api.OrdersUpdateMerchantOrderIdResponse);
      })));
    });

    unittest.test('method--updateshipment', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).orders;
      var arg_request = buildOrdersUpdateShipmentRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersUpdateShipmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrdersUpdateShipmentRequest(
            obj as api.OrdersUpdateShipmentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf('/updateShipment', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/updateShipment"));
        pathOffset += 15;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersUpdateShipmentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateshipment(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateShipmentResponse(
            response as api.OrdersUpdateShipmentResponse);
      })));
    });
  });

  unittest.group('resource-OrdertrackingsignalsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).ordertrackingsignals;
      var arg_request = buildOrderTrackingSignal();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderTrackingSignal.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOrderTrackingSignal(obj as api.OrderTrackingSignal);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/ordertrackingsignals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/ordertrackingsignals"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderTrackingSignal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderTrackingSignal(response as api.OrderTrackingSignal);
      })));
    });
  });

  unittest.group('resource-PosResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_request = buildPosCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPosCustomBatchRequest(obj as api.PosCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("content/v2.1/pos/batch"));
        pathOffset += 22;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPosCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosCustomBatchResponse(response as api.PosCustomBatchResponse);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_storeCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/pos/"));
        pathOffset += 5;
        index = path.indexOf('/store/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_targetMerchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/store/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_storeCode'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_targetMerchantId, arg_storeCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_storeCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/pos/"));
        pathOffset += 5;
        index = path.indexOf('/store/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_targetMerchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/store/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_storeCode'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPosStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_targetMerchantId, arg_storeCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosStore(response as api.PosStore);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_request = buildPosStore();
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.PosStore.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPosStore(obj as api.PosStore);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/pos/"));
        pathOffset += 5;
        index = path.indexOf('/store', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_targetMerchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/store"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPosStore());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, arg_targetMerchantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosStore(response as api.PosStore);
      })));
    });

    unittest.test('method--inventory', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_request = buildPosInventoryRequest();
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosInventoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPosInventoryRequest(obj as api.PosInventoryRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/pos/"));
        pathOffset += 5;
        index = path.indexOf('/inventory', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_targetMerchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/inventory"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPosInventoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inventory(arg_request, arg_merchantId, arg_targetMerchantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosInventoryResponse(response as api.PosInventoryResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/pos/"));
        pathOffset += 5;
        index = path.indexOf('/store', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_targetMerchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/store"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPosListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, arg_targetMerchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosListResponse(response as api.PosListResponse);
      })));
    });

    unittest.test('method--sale', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pos;
      var arg_request = buildPosSaleRequest();
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosSaleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPosSaleRequest(obj as api.PosSaleRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/pos/"));
        pathOffset += 5;
        index = path.indexOf('/sale', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_targetMerchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/sale"));
        pathOffset += 5;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPosSaleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sale(arg_request, arg_merchantId, arg_targetMerchantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosSaleResponse(response as api.PosSaleResponse);
      })));
    });
  });

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).products;
      var arg_request = buildProductsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductsCustomBatchRequest(obj as api.ProductsCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("content/v2.1/products/batch"));
        pathOffset += 27;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProductsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsCustomBatchResponse(
            response as api.ProductsCustomBatchResponse);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).products;
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_feedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_productId'));

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
        unittest.expect(queryMap["feedId"].first, unittest.equals(arg_feedId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_productId,
              feedId: arg_feedId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).products;
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_productId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response as api.Product);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).products;
      var arg_request = buildProduct();
      var arg_merchantId = 'foo';
      var arg_feedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj as api.Product);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/products', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/products"));
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
        unittest.expect(queryMap["feedId"].first, unittest.equals(arg_feedId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId,
              feedId: arg_feedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response as api.Product);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).products;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/products', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/products"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsListResponse(response as api.ProductsListResponse);
      })));
    });
  });

  unittest.group('resource-ProductstatusesResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).productstatuses;
      var arg_request = buildProductstatusesCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductstatusesCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductstatusesCustomBatchRequest(
            obj as api.ProductstatusesCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 34),
            unittest.equals("content/v2.1/productstatuses/batch"));
        pathOffset += 34;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildProductstatusesCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductstatusesCustomBatchResponse(
            response as api.ProductstatusesCustomBatchResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).productstatuses;
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_destinations = buildUnnamed4360();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/productstatuses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/productstatuses/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_productId'));

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProductStatus());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_productId,
              destinations: arg_destinations, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductStatus(response as api.ProductStatus);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).productstatuses;
      var arg_merchantId = 'foo';
      var arg_destinations = buildUnnamed4361();
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/productstatuses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/productstatuses"));
        pathOffset += 16;

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProductstatusesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              destinations: arg_destinations,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductstatusesListResponse(
            response as api.ProductstatusesListResponse);
      })));
    });
  });

  unittest.group('resource-ProductstatusesRepricingreportsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).productstatuses.repricingreports;
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_endDate = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_ruleId = 'foo';
      var arg_startDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/productstatuses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/productstatuses/"));
        pathOffset += 17;
        index = path.indexOf('/repricingreports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/repricingreports"));
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
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ruleId"].first, unittest.equals(arg_ruleId));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListRepricingProductReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, arg_productId,
              endDate: arg_endDate,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              ruleId: arg_ruleId,
              startDate: arg_startDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRepricingProductReportsResponse(
            response as api.ListRepricingProductReportsResponse);
      })));
    });
  });

  unittest.group('resource-PubsubnotificationsettingsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pubsubnotificationsettings;
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pubsubnotificationsettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("/pubsubnotificationsettings"));
        pathOffset += 27;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPubsubNotificationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPubsubNotificationSettings(
            response as api.PubsubNotificationSettings);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).pubsubnotificationsettings;
      var arg_request = buildPubsubNotificationSettings();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PubsubNotificationSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPubsubNotificationSettings(obj as api.PubsubNotificationSettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/pubsubnotificationsettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("/pubsubnotificationsettings"));
        pathOffset += 27;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPubsubNotificationSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPubsubNotificationSettings(
            response as api.PubsubNotificationSettings);
      })));
    });
  });

  unittest.group('resource-RegionalinventoryResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regionalinventory;
      var arg_request = buildRegionalinventoryCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RegionalinventoryCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegionalinventoryCustomBatchRequest(
            obj as api.RegionalinventoryCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 36),
            unittest.equals("content/v2.1/regionalinventory/batch"));
        pathOffset += 36;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildRegionalinventoryCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionalinventoryCustomBatchResponse(
            response as api.RegionalinventoryCustomBatchResponse);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regionalinventory;
      var arg_request = buildRegionalInventory();
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RegionalInventory.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegionalInventory(obj as api.RegionalInventory);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/regionalinventory', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/regionalinventory"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRegionalInventory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, arg_productId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionalInventory(response as api.RegionalInventory);
      })));
    });
  });

  unittest.group('resource-RegionsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regions;
      var arg_request = buildRegion();
      var arg_merchantId = 'foo';
      var arg_regionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Region.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRegion(obj as api.Region);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/regions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/regions"));
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
            queryMap["regionId"].first, unittest.equals(arg_regionId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRegion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_merchantId,
              regionId: arg_regionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegion(response as api.Region);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regions;
      var arg_merchantId = 'foo';
      var arg_regionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_regionId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_regionId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regions;
      var arg_merchantId = 'foo';
      var arg_regionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_regionId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRegion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_regionId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegion(response as api.Region);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regions;
      var arg_merchantId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/regions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/regions"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRegionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRegionsResponse(response as api.ListRegionsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).regions;
      var arg_request = buildRegion();
      var arg_merchantId = 'foo';
      var arg_regionId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Region.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRegion(obj as api.Region);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/regions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/regions/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_regionId'));

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRegion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_regionId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegion(response as api.Region);
      })));
    });
  });

  unittest.group('resource-ReportsResource', () {
    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).reports;
      var arg_request = buildSearchRequest();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchRequest(obj as api.SearchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/reports/search', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/reports/search"));
        pathOffset += 15;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchResponse(response as api.SearchResponse);
      })));
    });
  });

  unittest.group('resource-RepricingrulesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).repricingrules;
      var arg_request = buildRepricingRule();
      var arg_merchantId = 'foo';
      var arg_ruleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RepricingRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepricingRule(obj as api.RepricingRule);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/repricingrules', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/repricingrules"));
        pathOffset += 15;

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
        unittest.expect(queryMap["ruleId"].first, unittest.equals(arg_ruleId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepricingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_merchantId,
              ruleId: arg_ruleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepricingRule(response as api.RepricingRule);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).repricingrules;
      var arg_merchantId = 'foo';
      var arg_ruleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/repricingrules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/repricingrules/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_ruleId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).repricingrules;
      var arg_merchantId = 'foo';
      var arg_ruleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/repricingrules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/repricingrules/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepricingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_ruleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepricingRule(response as api.RepricingRule);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).repricingrules;
      var arg_merchantId = 'foo';
      var arg_countryCode = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/repricingrules', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/repricingrules"));
        pathOffset += 15;

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
            queryMap["countryCode"].first, unittest.equals(arg_countryCode));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRepricingRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              countryCode: arg_countryCode,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRepricingRulesResponse(
            response as api.ListRepricingRulesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).repricingrules;
      var arg_request = buildRepricingRule();
      var arg_merchantId = 'foo';
      var arg_ruleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RepricingRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepricingRule(obj as api.RepricingRule);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/repricingrules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/repricingrules/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepricingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_ruleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRepricingRule(response as api.RepricingRule);
      })));
    });
  });

  unittest.group('resource-RepricingrulesRepricingreportsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).repricingrules.repricingreports;
      var arg_merchantId = 'foo';
      var arg_ruleId = 'foo';
      var arg_endDate = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_startDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/repricingrules/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/repricingrules/"));
        pathOffset += 16;
        index = path.indexOf('/repricingreports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_ruleId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/repricingreports"));
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
            queryMap["endDate"].first, unittest.equals(arg_endDate));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startDate"].first, unittest.equals(arg_startDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRepricingRuleReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, arg_ruleId,
              endDate: arg_endDate,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              startDate: arg_startDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRepricingRuleReportsResponse(
            response as api.ListRepricingRuleReportsResponse);
      })));
    });
  });

  unittest.group('resource-ReturnaddressResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnaddress;
      var arg_request = buildReturnaddressCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnaddressCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnaddressCustomBatchRequest(
            obj as api.ReturnaddressCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("content/v2.1/returnaddress/batch"));
        pathOffset += 32;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnaddressCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnaddressCustomBatchResponse(
            response as api.ReturnaddressCustomBatchResponse);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnaddress;
      var arg_merchantId = 'foo';
      var arg_returnAddressId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnaddress/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/returnaddress/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_returnAddressId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_returnAddressId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnaddress;
      var arg_merchantId = 'foo';
      var arg_returnAddressId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnaddress/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/returnaddress/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_returnAddressId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_returnAddressId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnAddress(response as api.ReturnAddress);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnaddress;
      var arg_request = buildReturnAddress();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnAddress(obj as api.ReturnAddress);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnaddress', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/returnaddress"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnAddress(response as api.ReturnAddress);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnaddress;
      var arg_merchantId = 'foo';
      var arg_country = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnaddress', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/returnaddress"));
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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnaddressListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              country: arg_country,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnaddressListResponse(
            response as api.ReturnaddressListResponse);
      })));
    });
  });

  unittest.group('resource-ReturnpolicyResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnpolicy;
      var arg_request = buildReturnpolicyCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnpolicyCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnpolicyCustomBatchRequest(
            obj as api.ReturnpolicyCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("content/v2.1/returnpolicy/batch"));
        pathOffset += 31;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnpolicyCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnpolicyCustomBatchResponse(
            response as api.ReturnpolicyCustomBatchResponse);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnpolicy;
      var arg_merchantId = 'foo';
      var arg_returnPolicyId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnpolicy/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/returnpolicy/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_returnPolicyId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_returnPolicyId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnpolicy;
      var arg_merchantId = 'foo';
      var arg_returnPolicyId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnpolicy/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/returnpolicy/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_returnPolicyId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_returnPolicyId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnPolicy(response as api.ReturnPolicy);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnpolicy;
      var arg_request = buildReturnPolicy();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnPolicy(obj as api.ReturnPolicy);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnpolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/returnpolicy"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnPolicy(response as api.ReturnPolicy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).returnpolicy;
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/returnpolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/returnpolicy"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReturnpolicyListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnpolicyListResponse(response as api.ReturnpolicyListResponse);
      })));
    });
  });

  unittest.group('resource-SettlementreportsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).settlementreports;
      var arg_merchantId = 'foo';
      var arg_settlementId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/settlementreports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/settlementreports/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_settlementId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettlementReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_settlementId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettlementReport(response as api.SettlementReport);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).settlementreports;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_transferEndDate = 'foo';
      var arg_transferStartDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/settlementreports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/settlementreports"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["transferEndDate"].first,
            unittest.equals(arg_transferEndDate));
        unittest.expect(queryMap["transferStartDate"].first,
            unittest.equals(arg_transferStartDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettlementreportsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              transferEndDate: arg_transferEndDate,
              transferStartDate: arg_transferStartDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettlementreportsListResponse(
            response as api.SettlementreportsListResponse);
      })));
    });
  });

  unittest.group('resource-SettlementtransactionsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).settlementtransactions;
      var arg_merchantId = 'foo';
      var arg_settlementId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_transactionIds = buildUnnamed4362();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/settlementreports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/settlementreports/"));
        pathOffset += 19;
        index = path.indexOf('/transactions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_settlementId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/transactions"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["transactionIds"], unittest.equals(arg_transactionIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSettlementtransactionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, arg_settlementId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              transactionIds: arg_transactionIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettlementtransactionsListResponse(
            response as api.SettlementtransactionsListResponse);
      })));
    });
  });

  unittest.group('resource-ShippingsettingsResource', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_request = buildShippingsettingsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ShippingsettingsCustomBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkShippingsettingsCustomBatchRequest(
            obj as api.ShippingsettingsCustomBatchRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 35),
            unittest.equals("content/v2.1/shippingsettings/batch"));
        pathOffset += 35;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildShippingsettingsCustomBatchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsCustomBatchResponse(
            response as api.ShippingsettingsCustomBatchResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/shippingsettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/shippingsettings/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildShippingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response as api.ShippingSettings);
      })));
    });

    unittest.test('method--getsupportedcarriers', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/supportedCarriers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/supportedCarriers"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildShippingsettingsGetSupportedCarriersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedcarriers(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedCarriersResponse(
            response as api.ShippingsettingsGetSupportedCarriersResponse);
      })));
    });

    unittest.test('method--getsupportedholidays', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/supportedHolidays', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/supportedHolidays"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildShippingsettingsGetSupportedHolidaysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedholidays(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedHolidaysResponse(
            response as api.ShippingsettingsGetSupportedHolidaysResponse);
      })));
    });

    unittest.test('method--getsupportedpickupservices', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/supportedPickupServices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/supportedPickupServices"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildShippingsettingsGetSupportedPickupServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedpickupservices(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedPickupServicesResponse(
            response as api.ShippingsettingsGetSupportedPickupServicesResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_merchantId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/shippingsettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/shippingsettings"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildShippingsettingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsListResponse(
            response as api.ShippingsettingsListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ShoppingContentApi(mock).shippingsettings;
      var arg_request = buildShippingSettings();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ShippingSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkShippingSettings(obj as api.ShippingSettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        index = path.indexOf('/shippingsettings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_merchantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/shippingsettings/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_accountId'));

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildShippingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response as api.ShippingSettings);
      })));
    });
  });
}
