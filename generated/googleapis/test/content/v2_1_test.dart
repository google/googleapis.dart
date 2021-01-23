// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.content.v2_1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/content/v2_1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.AccountAdsLink> buildUnnamed3669() {
  var o = <api.AccountAdsLink>[];
  o.add(buildAccountAdsLink());
  o.add(buildAccountAdsLink());
  return o;
}

void checkUnnamed3669(core.List<api.AccountAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdsLink(o[0]);
  checkAccountAdsLink(o[1]);
}

core.List<core.String> buildUnnamed3670() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3670(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AccountUser> buildUnnamed3671() {
  var o = <api.AccountUser>[];
  o.add(buildAccountUser());
  o.add(buildAccountUser());
  return o;
}

void checkUnnamed3671(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0]);
  checkAccountUser(o[1]);
}

core.List<api.AccountYouTubeChannelLink> buildUnnamed3672() {
  var o = <api.AccountYouTubeChannelLink>[];
  o.add(buildAccountYouTubeChannelLink());
  o.add(buildAccountYouTubeChannelLink());
  return o;
}

void checkUnnamed3672(core.List<api.AccountYouTubeChannelLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountYouTubeChannelLink(o[0]);
  checkAccountYouTubeChannelLink(o[1]);
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  var o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.adsLinks = buildUnnamed3669();
    o.adultContent = true;
    o.businessInformation = buildAccountBusinessInformation();
    o.cssId = 'foo';
    o.googleMyBusinessLink = buildAccountGoogleMyBusinessLink();
    o.id = 'foo';
    o.kind = 'foo';
    o.labelIds = buildUnnamed3670();
    o.name = 'foo';
    o.sellerId = 'foo';
    o.users = buildUnnamed3671();
    o.websiteUrl = 'foo';
    o.youtubeChannelLinks = buildUnnamed3672();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed3669(o.adsLinks);
    unittest.expect(o.adultContent, unittest.isTrue);
    checkAccountBusinessInformation(o.businessInformation);
    unittest.expect(o.cssId, unittest.equals('foo'));
    checkAccountGoogleMyBusinessLink(o.googleMyBusinessLink);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3670(o.labelIds);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sellerId, unittest.equals('foo'));
    checkUnnamed3671(o.users);
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
    checkUnnamed3672(o.youtubeChannelLinks);
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
    checkAccountAddress(o.address);
    checkAccountCustomerService(o.customerService);
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

core.List<api.AccountStatusAccountLevelIssue> buildUnnamed3673() {
  var o = <api.AccountStatusAccountLevelIssue>[];
  o.add(buildAccountStatusAccountLevelIssue());
  o.add(buildAccountStatusAccountLevelIssue());
  return o;
}

void checkUnnamed3673(core.List<api.AccountStatusAccountLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusAccountLevelIssue(o[0]);
  checkAccountStatusAccountLevelIssue(o[1]);
}

core.List<api.AccountStatusProducts> buildUnnamed3674() {
  var o = <api.AccountStatusProducts>[];
  o.add(buildAccountStatusProducts());
  o.add(buildAccountStatusProducts());
  return o;
}

void checkUnnamed3674(core.List<api.AccountStatusProducts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusProducts(o[0]);
  checkAccountStatusProducts(o[1]);
}

core.int buildCounterAccountStatus = 0;
api.AccountStatus buildAccountStatus() {
  var o = api.AccountStatus();
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    o.accountId = 'foo';
    o.accountLevelIssues = buildUnnamed3673();
    o.kind = 'foo';
    o.products = buildUnnamed3674();
    o.websiteClaimed = true;
  }
  buildCounterAccountStatus--;
  return o;
}

void checkAccountStatus(api.AccountStatus o) {
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3673(o.accountLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3674(o.products);
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

core.List<api.AccountStatusItemLevelIssue> buildUnnamed3675() {
  var o = <api.AccountStatusItemLevelIssue>[];
  o.add(buildAccountStatusItemLevelIssue());
  o.add(buildAccountStatusItemLevelIssue());
  return o;
}

void checkUnnamed3675(core.List<api.AccountStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusItemLevelIssue(o[0]);
  checkAccountStatusItemLevelIssue(o[1]);
}

core.int buildCounterAccountStatusProducts = 0;
api.AccountStatusProducts buildAccountStatusProducts() {
  var o = api.AccountStatusProducts();
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    o.channel = 'foo';
    o.country = 'foo';
    o.destination = 'foo';
    o.itemLevelIssues = buildUnnamed3675();
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
    checkUnnamed3675(o.itemLevelIssues);
    checkAccountStatusStatistics(o.statistics);
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

core.List<api.AccountTaxTaxRule> buildUnnamed3676() {
  var o = <api.AccountTaxTaxRule>[];
  o.add(buildAccountTaxTaxRule());
  o.add(buildAccountTaxTaxRule());
  return o;
}

void checkUnnamed3676(core.List<api.AccountTaxTaxRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTaxTaxRule(o[0]);
  checkAccountTaxTaxRule(o[1]);
}

core.int buildCounterAccountTax = 0;
api.AccountTax buildAccountTax() {
  var o = api.AccountTax();
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    o.accountId = 'foo';
    o.kind = 'foo';
    o.rules = buildUnnamed3676();
  }
  buildCounterAccountTax--;
  return o;
}

void checkAccountTax(api.AccountTax o) {
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3676(o.rules);
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

core.List<api.AccountIdentifier> buildUnnamed3677() {
  var o = <api.AccountIdentifier>[];
  o.add(buildAccountIdentifier());
  o.add(buildAccountIdentifier());
  return o;
}

void checkUnnamed3677(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0]);
  checkAccountIdentifier(o[1]);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
api.AccountsAuthInfoResponse buildAccountsAuthInfoResponse() {
  var o = api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed3677();
    o.kind = 'foo';
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

void checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed3677(o.accountIdentifiers);
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

core.List<api.AccountsCustomBatchRequestEntry> buildUnnamed3678() {
  var o = <api.AccountsCustomBatchRequestEntry>[];
  o.add(buildAccountsCustomBatchRequestEntry());
  o.add(buildAccountsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3678(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(o[0]);
  checkAccountsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
api.AccountsCustomBatchRequest buildAccountsCustomBatchRequest() {
  var o = api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3678();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

void checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed3678(o.entries);
  }
  buildCounterAccountsCustomBatchRequest--;
}

core.List<core.String> buildUnnamed3679() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3679(core.List<core.String> o) {
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
    o.labelIds = buildUnnamed3679();
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
    checkAccount(o.account);
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.force, unittest.isTrue);
    checkUnnamed3679(o.labelIds);
    checkAccountsCustomBatchRequestEntryLinkRequest(o.linkRequest);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.overwrite, unittest.isTrue);
    unittest.expect(o.view, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchRequestEntry--;
}

core.List<core.String> buildUnnamed3680() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3680(core.List<core.String> o) {
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
    o.services = buildUnnamed3680();
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
    checkUnnamed3680(o.services);
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
}

core.List<api.AccountsCustomBatchResponseEntry> buildUnnamed3681() {
  var o = <api.AccountsCustomBatchResponseEntry>[];
  o.add(buildAccountsCustomBatchResponseEntry());
  o.add(buildAccountsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3681(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(o[0]);
  checkAccountsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
api.AccountsCustomBatchResponse buildAccountsCustomBatchResponse() {
  var o = api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3681();
    o.kind = 'foo';
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

void checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed3681(o.entries);
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
    checkAccount(o.account);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponseEntry--;
}

core.List<core.String> buildUnnamed3682() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3682(core.List<core.String> o) {
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
    o.services = buildUnnamed3682();
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
    checkUnnamed3682(o.services);
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

core.List<api.LinkedAccount> buildUnnamed3683() {
  var o = <api.LinkedAccount>[];
  o.add(buildLinkedAccount());
  o.add(buildLinkedAccount());
  return o;
}

void checkUnnamed3683(core.List<api.LinkedAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedAccount(o[0]);
  checkLinkedAccount(o[1]);
}

core.int buildCounterAccountsListLinksResponse = 0;
api.AccountsListLinksResponse buildAccountsListLinksResponse() {
  var o = api.AccountsListLinksResponse();
  buildCounterAccountsListLinksResponse++;
  if (buildCounterAccountsListLinksResponse < 3) {
    o.kind = 'foo';
    o.links = buildUnnamed3683();
    o.nextPageToken = 'foo';
  }
  buildCounterAccountsListLinksResponse--;
  return o;
}

void checkAccountsListLinksResponse(api.AccountsListLinksResponse o) {
  buildCounterAccountsListLinksResponse++;
  if (buildCounterAccountsListLinksResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3683(o.links);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAccountsListLinksResponse--;
}

core.List<api.Account> buildUnnamed3684() {
  var o = <api.Account>[];
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

void checkUnnamed3684(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsListResponse = 0;
api.AccountsListResponse buildAccountsListResponse() {
  var o = api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3684();
  }
  buildCounterAccountsListResponse--;
  return o;
}

void checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3684(o.resources);
  }
  buildCounterAccountsListResponse--;
}

core.List<core.String> buildUnnamed3685() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3685(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountsUpdateLabelsRequest = 0;
api.AccountsUpdateLabelsRequest buildAccountsUpdateLabelsRequest() {
  var o = api.AccountsUpdateLabelsRequest();
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    o.labelIds = buildUnnamed3685();
  }
  buildCounterAccountsUpdateLabelsRequest--;
  return o;
}

void checkAccountsUpdateLabelsRequest(api.AccountsUpdateLabelsRequest o) {
  buildCounterAccountsUpdateLabelsRequest++;
  if (buildCounterAccountsUpdateLabelsRequest < 3) {
    checkUnnamed3685(o.labelIds);
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

core.List<api.AccountstatusesCustomBatchRequestEntry> buildUnnamed3686() {
  var o = <api.AccountstatusesCustomBatchRequestEntry>[];
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3686(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(o[0]);
  checkAccountstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
api.AccountstatusesCustomBatchRequest buildAccountstatusesCustomBatchRequest() {
  var o = api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed3686();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

void checkAccountstatusesCustomBatchRequest(
    api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed3686(o.entries);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed3687() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3687(core.List<core.String> o) {
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
    o.destinations = buildUnnamed3687();
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
    checkUnnamed3687(o.destinations);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
}

core.List<api.AccountstatusesCustomBatchResponseEntry> buildUnnamed3688() {
  var o = <api.AccountstatusesCustomBatchResponseEntry>[];
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3688(
    core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchResponseEntry(o[0]);
  checkAccountstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchResponse = 0;
api.AccountstatusesCustomBatchResponse
    buildAccountstatusesCustomBatchResponse() {
  var o = api.AccountstatusesCustomBatchResponse();
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed3688();
    o.kind = 'foo';
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

void checkAccountstatusesCustomBatchResponse(
    api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed3688(o.entries);
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
    checkAccountStatus(o.accountStatus);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
}

core.List<api.AccountStatus> buildUnnamed3689() {
  var o = <api.AccountStatus>[];
  o.add(buildAccountStatus());
  o.add(buildAccountStatus());
  return o;
}

void checkUnnamed3689(core.List<api.AccountStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatus(o[0]);
  checkAccountStatus(o[1]);
}

core.int buildCounterAccountstatusesListResponse = 0;
api.AccountstatusesListResponse buildAccountstatusesListResponse() {
  var o = api.AccountstatusesListResponse();
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3689();
  }
  buildCounterAccountstatusesListResponse--;
  return o;
}

void checkAccountstatusesListResponse(api.AccountstatusesListResponse o) {
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3689(o.resources);
  }
  buildCounterAccountstatusesListResponse--;
}

core.List<api.AccounttaxCustomBatchRequestEntry> buildUnnamed3690() {
  var o = <api.AccounttaxCustomBatchRequestEntry>[];
  o.add(buildAccounttaxCustomBatchRequestEntry());
  o.add(buildAccounttaxCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3690(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(o[0]);
  checkAccounttaxCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
api.AccounttaxCustomBatchRequest buildAccounttaxCustomBatchRequest() {
  var o = api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed3690();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

void checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed3690(o.entries);
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
    checkAccountTax(o.accountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
}

core.List<api.AccounttaxCustomBatchResponseEntry> buildUnnamed3691() {
  var o = <api.AccounttaxCustomBatchResponseEntry>[];
  o.add(buildAccounttaxCustomBatchResponseEntry());
  o.add(buildAccounttaxCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3691(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(o[0]);
  checkAccounttaxCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
api.AccounttaxCustomBatchResponse buildAccounttaxCustomBatchResponse() {
  var o = api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed3691();
    o.kind = 'foo';
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

void checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed3691(o.entries);
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
    checkAccountTax(o.accountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
}

core.List<api.AccountTax> buildUnnamed3692() {
  var o = <api.AccountTax>[];
  o.add(buildAccountTax());
  o.add(buildAccountTax());
  return o;
}

void checkUnnamed3692(core.List<api.AccountTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTax(o[0]);
  checkAccountTax(o[1]);
}

core.int buildCounterAccounttaxListResponse = 0;
api.AccounttaxListResponse buildAccounttaxListResponse() {
  var o = api.AccounttaxListResponse();
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3692();
  }
  buildCounterAccounttaxListResponse--;
  return o;
}

void checkAccounttaxListResponse(api.AccounttaxListResponse o) {
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3692(o.resources);
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
    checkPrice(o.priceAmount);
    checkPrice(o.taxAmount);
  }
  buildCounterAmount--;
}

core.List<core.String> buildUnnamed3693() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3693(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBusinessDayConfig = 0;
api.BusinessDayConfig buildBusinessDayConfig() {
  var o = api.BusinessDayConfig();
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    o.businessDays = buildUnnamed3693();
  }
  buildCounterBusinessDayConfig--;
  return o;
}

void checkBusinessDayConfig(api.BusinessDayConfig o) {
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    checkUnnamed3693(o.businessDays);
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
    checkPrice(o.flatAdjustment);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originPostalCode, unittest.equals('foo'));
    unittest.expect(o.percentageAdjustment, unittest.equals('foo'));
  }
  buildCounterCarrierRate--;
}

core.List<core.String> buildUnnamed3694() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3694(core.List<core.String> o) {
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
    o.services = buildUnnamed3694();
  }
  buildCounterCarriersCarrier--;
  return o;
}

void checkCarriersCarrier(api.CarriersCarrier o) {
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3694(o.services);
  }
  buildCounterCarriersCarrier--;
}

core.List<api.CustomAttribute> buildUnnamed3695() {
  var o = <api.CustomAttribute>[];
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

void checkUnnamed3695(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  var o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed3695();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed3695(o.groupValues);
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

core.List<api.DatafeedTarget> buildUnnamed3696() {
  var o = <api.DatafeedTarget>[];
  o.add(buildDatafeedTarget());
  o.add(buildDatafeedTarget());
  return o;
}

void checkUnnamed3696(core.List<api.DatafeedTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedTarget(o[0]);
  checkDatafeedTarget(o[1]);
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
    o.targets = buildUnnamed3696();
  }
  buildCounterDatafeed--;
  return o;
}

void checkDatafeed(api.Datafeed o) {
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    unittest.expect(o.attributeLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkDatafeedFetchSchedule(o.fetchSchedule);
    unittest.expect(o.fileName, unittest.equals('foo'));
    checkDatafeedFormat(o.format);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3696(o.targets);
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

core.List<api.DatafeedStatusError> buildUnnamed3697() {
  var o = <api.DatafeedStatusError>[];
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

void checkUnnamed3697(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.List<api.DatafeedStatusError> buildUnnamed3698() {
  var o = <api.DatafeedStatusError>[];
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

void checkUnnamed3698(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.int buildCounterDatafeedStatus = 0;
api.DatafeedStatus buildDatafeedStatus() {
  var o = api.DatafeedStatus();
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    o.country = 'foo';
    o.datafeedId = 'foo';
    o.errors = buildUnnamed3697();
    o.itemsTotal = 'foo';
    o.itemsValid = 'foo';
    o.kind = 'foo';
    o.language = 'foo';
    o.lastUploadDate = 'foo';
    o.processingStatus = 'foo';
    o.warnings = buildUnnamed3698();
  }
  buildCounterDatafeedStatus--;
  return o;
}

void checkDatafeedStatus(api.DatafeedStatus o) {
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    checkUnnamed3697(o.errors);
    unittest.expect(o.itemsTotal, unittest.equals('foo'));
    unittest.expect(o.itemsValid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastUploadDate, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    checkUnnamed3698(o.warnings);
  }
  buildCounterDatafeedStatus--;
}

core.List<api.DatafeedStatusExample> buildUnnamed3699() {
  var o = <api.DatafeedStatusExample>[];
  o.add(buildDatafeedStatusExample());
  o.add(buildDatafeedStatusExample());
  return o;
}

void checkUnnamed3699(core.List<api.DatafeedStatusExample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusExample(o[0]);
  checkDatafeedStatusExample(o[1]);
}

core.int buildCounterDatafeedStatusError = 0;
api.DatafeedStatusError buildDatafeedStatusError() {
  var o = api.DatafeedStatusError();
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    o.code = 'foo';
    o.count = 'foo';
    o.examples = buildUnnamed3699();
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
    checkUnnamed3699(o.examples);
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

core.List<core.String> buildUnnamed3700() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3700(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3701() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3701(core.List<core.String> o) {
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
    o.excludedDestinations = buildUnnamed3700();
    o.includedDestinations = buildUnnamed3701();
    o.language = 'foo';
  }
  buildCounterDatafeedTarget--;
  return o;
}

void checkDatafeedTarget(api.DatafeedTarget o) {
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3700(o.excludedDestinations);
    checkUnnamed3701(o.includedDestinations);
    unittest.expect(o.language, unittest.equals('foo'));
  }
  buildCounterDatafeedTarget--;
}

core.List<api.DatafeedsCustomBatchRequestEntry> buildUnnamed3702() {
  var o = <api.DatafeedsCustomBatchRequestEntry>[];
  o.add(buildDatafeedsCustomBatchRequestEntry());
  o.add(buildDatafeedsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3702(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(o[0]);
  checkDatafeedsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
api.DatafeedsCustomBatchRequest buildDatafeedsCustomBatchRequest() {
  var o = api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3702();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

void checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed3702(o.entries);
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
    checkDatafeed(o.datafeed);
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
}

core.List<api.DatafeedsCustomBatchResponseEntry> buildUnnamed3703() {
  var o = <api.DatafeedsCustomBatchResponseEntry>[];
  o.add(buildDatafeedsCustomBatchResponseEntry());
  o.add(buildDatafeedsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3703(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(o[0]);
  checkDatafeedsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
api.DatafeedsCustomBatchResponse buildDatafeedsCustomBatchResponse() {
  var o = api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3703();
    o.kind = 'foo';
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

void checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed3703(o.entries);
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
    checkDatafeed(o.datafeed);
    checkErrors(o.errors);
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

core.List<api.Datafeed> buildUnnamed3704() {
  var o = <api.Datafeed>[];
  o.add(buildDatafeed());
  o.add(buildDatafeed());
  return o;
}

void checkUnnamed3704(core.List<api.Datafeed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeed(o[0]);
  checkDatafeed(o[1]);
}

core.int buildCounterDatafeedsListResponse = 0;
api.DatafeedsListResponse buildDatafeedsListResponse() {
  var o = api.DatafeedsListResponse();
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3704();
  }
  buildCounterDatafeedsListResponse--;
  return o;
}

void checkDatafeedsListResponse(api.DatafeedsListResponse o) {
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3704(o.resources);
  }
  buildCounterDatafeedsListResponse--;
}

core.List<api.DatafeedstatusesCustomBatchRequestEntry> buildUnnamed3705() {
  var o = <api.DatafeedstatusesCustomBatchRequestEntry>[];
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3705(
    core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchRequestEntry(o[0]);
  checkDatafeedstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchRequest = 0;
api.DatafeedstatusesCustomBatchRequest
    buildDatafeedstatusesCustomBatchRequest() {
  var o = api.DatafeedstatusesCustomBatchRequest();
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed3705();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

void checkDatafeedstatusesCustomBatchRequest(
    api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed3705(o.entries);
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

core.List<api.DatafeedstatusesCustomBatchResponseEntry> buildUnnamed3706() {
  var o = <api.DatafeedstatusesCustomBatchResponseEntry>[];
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3706(
    core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchResponseEntry(o[0]);
  checkDatafeedstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchResponse = 0;
api.DatafeedstatusesCustomBatchResponse
    buildDatafeedstatusesCustomBatchResponse() {
  var o = api.DatafeedstatusesCustomBatchResponse();
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed3706();
    o.kind = 'foo';
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

void checkDatafeedstatusesCustomBatchResponse(
    api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed3706(o.entries);
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
    checkDatafeedStatus(o.datafeedStatus);
    checkErrors(o.errors);
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
}

core.List<api.DatafeedStatus> buildUnnamed3707() {
  var o = <api.DatafeedStatus>[];
  o.add(buildDatafeedStatus());
  o.add(buildDatafeedStatus());
  return o;
}

void checkUnnamed3707(core.List<api.DatafeedStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatus(o[0]);
  checkDatafeedStatus(o[1]);
}

core.int buildCounterDatafeedstatusesListResponse = 0;
api.DatafeedstatusesListResponse buildDatafeedstatusesListResponse() {
  var o = api.DatafeedstatusesListResponse();
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3707();
  }
  buildCounterDatafeedstatusesListResponse--;
  return o;
}

void checkDatafeedstatusesListResponse(api.DatafeedstatusesListResponse o) {
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3707(o.resources);
  }
  buildCounterDatafeedstatusesListResponse--;
}

core.List<api.HolidayCutoff> buildUnnamed3708() {
  var o = <api.HolidayCutoff>[];
  o.add(buildHolidayCutoff());
  o.add(buildHolidayCutoff());
  return o;
}

void checkUnnamed3708(core.List<api.HolidayCutoff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidayCutoff(o[0]);
  checkHolidayCutoff(o[1]);
}

core.int buildCounterDeliveryTime = 0;
api.DeliveryTime buildDeliveryTime() {
  var o = api.DeliveryTime();
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    o.cutoffTime = buildCutoffTime();
    o.handlingBusinessDayConfig = buildBusinessDayConfig();
    o.holidayCutoffs = buildUnnamed3708();
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
    checkCutoffTime(o.cutoffTime);
    checkBusinessDayConfig(o.handlingBusinessDayConfig);
    checkUnnamed3708(o.holidayCutoffs);
    unittest.expect(o.maxHandlingTimeInDays, unittest.equals(42));
    unittest.expect(o.maxTransitTimeInDays, unittest.equals(42));
    unittest.expect(o.minHandlingTimeInDays, unittest.equals(42));
    unittest.expect(o.minTransitTimeInDays, unittest.equals(42));
    checkBusinessDayConfig(o.transitBusinessDayConfig);
    checkTransitTable(o.transitTimeTable);
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

core.List<api.Error> buildUnnamed3709() {
  var o = <api.Error>[];
  o.add(buildError());
  o.add(buildError());
  return o;
}

void checkUnnamed3709(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterErrors = 0;
api.Errors buildErrors() {
  var o = api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 42;
    o.errors = buildUnnamed3709();
    o.message = 'foo';
  }
  buildCounterErrors--;
  return o;
}

void checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3709(o.errors);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterErrors--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed3710() {
  var o = <api.GmbAccountsGmbAccount>[];
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

void checkUnnamed3710(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterGmbAccounts = 0;
api.GmbAccounts buildGmbAccounts() {
  var o = api.GmbAccounts();
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    o.accountId = 'foo';
    o.gmbAccounts = buildUnnamed3710();
  }
  buildCounterGmbAccounts--;
  return o;
}

void checkGmbAccounts(api.GmbAccounts o) {
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3710(o.gmbAccounts);
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

core.List<api.LocationIdSet> buildUnnamed3711() {
  var o = <api.LocationIdSet>[];
  o.add(buildLocationIdSet());
  o.add(buildLocationIdSet());
  return o;
}

void checkUnnamed3711(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0]);
  checkLocationIdSet(o[1]);
}

core.List<core.String> buildUnnamed3712() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3712(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3713() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3713(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Price> buildUnnamed3714() {
  var o = <api.Price>[];
  o.add(buildPrice());
  o.add(buildPrice());
  return o;
}

void checkUnnamed3714(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0]);
  checkPrice(o[1]);
}

core.List<api.Weight> buildUnnamed3715() {
  var o = <api.Weight>[];
  o.add(buildWeight());
  o.add(buildWeight());
  return o;
}

void checkUnnamed3715(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0]);
  checkWeight(o[1]);
}

core.int buildCounterHeaders = 0;
api.Headers buildHeaders() {
  var o = api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed3711();
    o.numberOfItems = buildUnnamed3712();
    o.postalCodeGroupNames = buildUnnamed3713();
    o.prices = buildUnnamed3714();
    o.weights = buildUnnamed3715();
  }
  buildCounterHeaders--;
  return o;
}

void checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed3711(o.locations);
    checkUnnamed3712(o.numberOfItems);
    checkUnnamed3713(o.postalCodeGroupNames);
    checkUnnamed3714(o.prices);
    checkUnnamed3715(o.weights);
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
    checkPrice(o.amount);
    unittest.expect(o.months, unittest.equals('foo'));
  }
  buildCounterInstallment--;
}

core.List<api.InvoiceSummaryAdditionalChargeSummary> buildUnnamed3716() {
  var o = <api.InvoiceSummaryAdditionalChargeSummary>[];
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  return o;
}

void checkUnnamed3716(core.List<api.InvoiceSummaryAdditionalChargeSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceSummaryAdditionalChargeSummary(o[0]);
  checkInvoiceSummaryAdditionalChargeSummary(o[1]);
}

core.int buildCounterInvoiceSummary = 0;
api.InvoiceSummary buildInvoiceSummary() {
  var o = api.InvoiceSummary();
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    o.additionalChargeSummaries = buildUnnamed3716();
    o.productTotal = buildAmount();
  }
  buildCounterInvoiceSummary--;
  return o;
}

void checkInvoiceSummary(api.InvoiceSummary o) {
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    checkUnnamed3716(o.additionalChargeSummaries);
    checkAmount(o.productTotal);
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
    checkAmount(o.totalAmount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
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
    checkLiaAboutPageSettings(o.about);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.hostedLocalStorefrontActive, unittest.isTrue);
    checkLiaInventorySettings(o.inventory);
    checkLiaOnDisplayToOrderSettings(o.onDisplayToOrder);
    checkLiaPosDataProvider(o.posDataProvider);
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

core.List<api.LiaCountrySettings> buildUnnamed3717() {
  var o = <api.LiaCountrySettings>[];
  o.add(buildLiaCountrySettings());
  o.add(buildLiaCountrySettings());
  return o;
}

void checkUnnamed3717(core.List<api.LiaCountrySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaCountrySettings(o[0]);
  checkLiaCountrySettings(o[1]);
}

core.int buildCounterLiaSettings = 0;
api.LiaSettings buildLiaSettings() {
  var o = api.LiaSettings();
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    o.accountId = 'foo';
    o.countrySettings = buildUnnamed3717();
    o.kind = 'foo';
  }
  buildCounterLiaSettings--;
  return o;
}

void checkLiaSettings(api.LiaSettings o) {
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3717(o.countrySettings);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiaSettings--;
}

core.List<api.LiasettingsCustomBatchRequestEntry> buildUnnamed3718() {
  var o = <api.LiasettingsCustomBatchRequestEntry>[];
  o.add(buildLiasettingsCustomBatchRequestEntry());
  o.add(buildLiasettingsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3718(core.List<api.LiasettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchRequestEntry(o[0]);
  checkLiasettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchRequest = 0;
api.LiasettingsCustomBatchRequest buildLiasettingsCustomBatchRequest() {
  var o = api.LiasettingsCustomBatchRequest();
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3718();
  }
  buildCounterLiasettingsCustomBatchRequest--;
  return o;
}

void checkLiasettingsCustomBatchRequest(api.LiasettingsCustomBatchRequest o) {
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    checkUnnamed3718(o.entries);
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
    checkLiaSettings(o.liaSettings);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.posDataProviderId, unittest.equals('foo'));
    unittest.expect(o.posExternalAccountId, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
}

core.List<api.LiasettingsCustomBatchResponseEntry> buildUnnamed3719() {
  var o = <api.LiasettingsCustomBatchResponseEntry>[];
  o.add(buildLiasettingsCustomBatchResponseEntry());
  o.add(buildLiasettingsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3719(core.List<api.LiasettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchResponseEntry(o[0]);
  checkLiasettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponse = 0;
api.LiasettingsCustomBatchResponse buildLiasettingsCustomBatchResponse() {
  var o = api.LiasettingsCustomBatchResponse();
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3719();
    o.kind = 'foo';
  }
  buildCounterLiasettingsCustomBatchResponse--;
  return o;
}

void checkLiasettingsCustomBatchResponse(api.LiasettingsCustomBatchResponse o) {
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    checkUnnamed3719(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchResponse--;
}

core.List<api.PosDataProviders> buildUnnamed3720() {
  var o = <api.PosDataProviders>[];
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

void checkUnnamed3720(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
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
    o.posDataProviders = buildUnnamed3720();
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
  return o;
}

void checkLiasettingsCustomBatchResponseEntry(
    api.LiasettingsCustomBatchResponseEntry o) {
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    checkGmbAccounts(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiaSettings(o.liaSettings);
    checkUnnamed3720(o.posDataProviders);
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
}

core.List<api.GmbAccountsGmbAccount> buildUnnamed3721() {
  var o = <api.GmbAccountsGmbAccount>[];
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

void checkUnnamed3721(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterLiasettingsGetAccessibleGmbAccountsResponse = 0;
api.LiasettingsGetAccessibleGmbAccountsResponse
    buildLiasettingsGetAccessibleGmbAccountsResponse() {
  var o = api.LiasettingsGetAccessibleGmbAccountsResponse();
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    o.accountId = 'foo';
    o.gmbAccounts = buildUnnamed3721();
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
    checkUnnamed3721(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
}

core.List<api.PosDataProviders> buildUnnamed3722() {
  var o = <api.PosDataProviders>[];
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

void checkUnnamed3722(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
}

core.int buildCounterLiasettingsListPosDataProvidersResponse = 0;
api.LiasettingsListPosDataProvidersResponse
    buildLiasettingsListPosDataProvidersResponse() {
  var o = api.LiasettingsListPosDataProvidersResponse();
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    o.kind = 'foo';
    o.posDataProviders = buildUnnamed3722();
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
  return o;
}

void checkLiasettingsListPosDataProvidersResponse(
    api.LiasettingsListPosDataProvidersResponse o) {
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3722(o.posDataProviders);
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
}

core.List<api.LiaSettings> buildUnnamed3723() {
  var o = <api.LiaSettings>[];
  o.add(buildLiaSettings());
  o.add(buildLiaSettings());
  return o;
}

void checkUnnamed3723(core.List<api.LiaSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaSettings(o[0]);
  checkLiaSettings(o[1]);
}

core.int buildCounterLiasettingsListResponse = 0;
api.LiasettingsListResponse buildLiasettingsListResponse() {
  var o = api.LiasettingsListResponse();
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3723();
  }
  buildCounterLiasettingsListResponse--;
  return o;
}

void checkLiasettingsListResponse(api.LiasettingsListResponse o) {
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3723(o.resources);
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

core.List<api.LinkService> buildUnnamed3724() {
  var o = <api.LinkService>[];
  o.add(buildLinkService());
  o.add(buildLinkService());
  return o;
}

void checkUnnamed3724(core.List<api.LinkService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkService(o[0]);
  checkLinkService(o[1]);
}

core.int buildCounterLinkedAccount = 0;
api.LinkedAccount buildLinkedAccount() {
  var o = api.LinkedAccount();
  buildCounterLinkedAccount++;
  if (buildCounterLinkedAccount < 3) {
    o.linkedAccountId = 'foo';
    o.services = buildUnnamed3724();
  }
  buildCounterLinkedAccount--;
  return o;
}

void checkLinkedAccount(api.LinkedAccount o) {
  buildCounterLinkedAccount++;
  if (buildCounterLinkedAccount < 3) {
    unittest.expect(o.linkedAccountId, unittest.equals('foo'));
    checkUnnamed3724(o.services);
  }
  buildCounterLinkedAccount--;
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
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals(42));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
  }
  buildCounterLocalInventory--;
}

core.List<api.LocalinventoryCustomBatchRequestEntry> buildUnnamed3725() {
  var o = <api.LocalinventoryCustomBatchRequestEntry>[];
  o.add(buildLocalinventoryCustomBatchRequestEntry());
  o.add(buildLocalinventoryCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3725(core.List<api.LocalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchRequestEntry(o[0]);
  checkLocalinventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLocalinventoryCustomBatchRequest = 0;
api.LocalinventoryCustomBatchRequest buildLocalinventoryCustomBatchRequest() {
  var o = api.LocalinventoryCustomBatchRequest();
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed3725();
  }
  buildCounterLocalinventoryCustomBatchRequest--;
  return o;
}

void checkLocalinventoryCustomBatchRequest(
    api.LocalinventoryCustomBatchRequest o) {
  buildCounterLocalinventoryCustomBatchRequest++;
  if (buildCounterLocalinventoryCustomBatchRequest < 3) {
    checkUnnamed3725(o.entries);
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
    checkLocalInventory(o.localInventory);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterLocalinventoryCustomBatchRequestEntry--;
}

core.List<api.LocalinventoryCustomBatchResponseEntry> buildUnnamed3726() {
  var o = <api.LocalinventoryCustomBatchResponseEntry>[];
  o.add(buildLocalinventoryCustomBatchResponseEntry());
  o.add(buildLocalinventoryCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3726(core.List<api.LocalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalinventoryCustomBatchResponseEntry(o[0]);
  checkLocalinventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLocalinventoryCustomBatchResponse = 0;
api.LocalinventoryCustomBatchResponse buildLocalinventoryCustomBatchResponse() {
  var o = api.LocalinventoryCustomBatchResponse();
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed3726();
    o.kind = 'foo';
  }
  buildCounterLocalinventoryCustomBatchResponse--;
  return o;
}

void checkLocalinventoryCustomBatchResponse(
    api.LocalinventoryCustomBatchResponse o) {
  buildCounterLocalinventoryCustomBatchResponse++;
  if (buildCounterLocalinventoryCustomBatchResponse < 3) {
    checkUnnamed3726(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLocalinventoryCustomBatchResponseEntry--;
}

core.List<core.String> buildUnnamed3727() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3727(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocationIdSet = 0;
api.LocationIdSet buildLocationIdSet() {
  var o = api.LocationIdSet();
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    o.locationIds = buildUnnamed3727();
  }
  buildCounterLocationIdSet--;
  return o;
}

void checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed3727(o.locationIds);
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

core.List<api.MerchantOrderReturnItem> buildUnnamed3728() {
  var o = <api.MerchantOrderReturnItem>[];
  o.add(buildMerchantOrderReturnItem());
  o.add(buildMerchantOrderReturnItem());
  return o;
}

void checkUnnamed3728(core.List<api.MerchantOrderReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturnItem(o[0]);
  checkMerchantOrderReturnItem(o[1]);
}

core.List<api.ReturnShipment> buildUnnamed3729() {
  var o = <api.ReturnShipment>[];
  o.add(buildReturnShipment());
  o.add(buildReturnShipment());
  return o;
}

void checkUnnamed3729(core.List<api.ReturnShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnShipment(o[0]);
  checkReturnShipment(o[1]);
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
    o.returnItems = buildUnnamed3728();
    o.returnPricingInfo = buildReturnPricingInfo();
    o.returnShipments = buildUnnamed3729();
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
    checkUnnamed3728(o.returnItems);
    checkReturnPricingInfo(o.returnPricingInfo);
    checkUnnamed3729(o.returnShipments);
  }
  buildCounterMerchantOrderReturn--;
}

core.List<core.String> buildUnnamed3730() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3730(core.List<core.String> o) {
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
    o.returnShipmentIds = buildUnnamed3730();
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
    checkCustomerReturnReason(o.customerReturnReason);
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkMerchantRejectionReason(o.merchantRejectionReason);
    checkRefundReason(o.merchantReturnReason);
    checkOrderLineItemProduct(o.product);
    checkMonetaryAmount(o.refundableAmount);
    unittest.expect(o.returnItemId, unittest.equals('foo'));
    checkUnnamed3730(o.returnShipmentIds);
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

core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> buildUnnamed3731() {
  var o = <api.MinimumOrderValueTableStoreCodeSetWithMov>[];
  o.add(buildMinimumOrderValueTableStoreCodeSetWithMov());
  o.add(buildMinimumOrderValueTableStoreCodeSetWithMov());
  return o;
}

void checkUnnamed3731(
    core.List<api.MinimumOrderValueTableStoreCodeSetWithMov> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMinimumOrderValueTableStoreCodeSetWithMov(o[0]);
  checkMinimumOrderValueTableStoreCodeSetWithMov(o[1]);
}

core.int buildCounterMinimumOrderValueTable = 0;
api.MinimumOrderValueTable buildMinimumOrderValueTable() {
  var o = api.MinimumOrderValueTable();
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    o.storeCodeSetWithMovs = buildUnnamed3731();
  }
  buildCounterMinimumOrderValueTable--;
  return o;
}

void checkMinimumOrderValueTable(api.MinimumOrderValueTable o) {
  buildCounterMinimumOrderValueTable++;
  if (buildCounterMinimumOrderValueTable < 3) {
    checkUnnamed3731(o.storeCodeSetWithMovs);
  }
  buildCounterMinimumOrderValueTable--;
}

core.List<core.String> buildUnnamed3732() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3732(core.List<core.String> o) {
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
    o.storeCodes = buildUnnamed3732();
    o.value = buildPrice();
  }
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov--;
  return o;
}

void checkMinimumOrderValueTableStoreCodeSetWithMov(
    api.MinimumOrderValueTableStoreCodeSetWithMov o) {
  buildCounterMinimumOrderValueTableStoreCodeSetWithMov++;
  if (buildCounterMinimumOrderValueTableStoreCodeSetWithMov < 3) {
    checkUnnamed3732(o.storeCodes);
    checkPrice(o.value);
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
    checkPrice(o.priceAmount);
    checkPrice(o.taxAmount);
  }
  buildCounterMonetaryAmount--;
}

core.List<api.OrderOrderAnnotation> buildUnnamed3733() {
  var o = <api.OrderOrderAnnotation>[];
  o.add(buildOrderOrderAnnotation());
  o.add(buildOrderOrderAnnotation());
  return o;
}

void checkUnnamed3733(core.List<api.OrderOrderAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderOrderAnnotation(o[0]);
  checkOrderOrderAnnotation(o[1]);
}

core.List<api.OrderLineItem> buildUnnamed3734() {
  var o = <api.OrderLineItem>[];
  o.add(buildOrderLineItem());
  o.add(buildOrderLineItem());
  return o;
}

void checkUnnamed3734(core.List<api.OrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItem(o[0]);
  checkOrderLineItem(o[1]);
}

core.List<api.OrderPromotion> buildUnnamed3735() {
  var o = <api.OrderPromotion>[];
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

void checkUnnamed3735(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

core.List<api.OrderRefund> buildUnnamed3736() {
  var o = <api.OrderRefund>[];
  o.add(buildOrderRefund());
  o.add(buildOrderRefund());
  return o;
}

void checkUnnamed3736(core.List<api.OrderRefund> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderRefund(o[0]);
  checkOrderRefund(o[1]);
}

core.List<api.OrderShipment> buildUnnamed3737() {
  var o = <api.OrderShipment>[];
  o.add(buildOrderShipment());
  o.add(buildOrderShipment());
  return o;
}

void checkUnnamed3737(core.List<api.OrderShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipment(o[0]);
  checkOrderShipment(o[1]);
}

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  var o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.acknowledged = true;
    o.annotations = buildUnnamed3733();
    o.billingAddress = buildOrderAddress();
    o.customer = buildOrderCustomer();
    o.deliveryDetails = buildOrderDeliveryDetails();
    o.id = 'foo';
    o.kind = 'foo';
    o.lineItems = buildUnnamed3734();
    o.merchantId = 'foo';
    o.merchantOrderId = 'foo';
    o.netPriceAmount = buildPrice();
    o.netTaxAmount = buildPrice();
    o.paymentStatus = 'foo';
    o.pickupDetails = buildOrderPickupDetails();
    o.placedDate = 'foo';
    o.promotions = buildUnnamed3735();
    o.refunds = buildUnnamed3736();
    o.shipments = buildUnnamed3737();
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
    checkUnnamed3733(o.annotations);
    checkOrderAddress(o.billingAddress);
    checkOrderCustomer(o.customer);
    checkOrderDeliveryDetails(o.deliveryDetails);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3734(o.lineItems);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    checkPrice(o.netPriceAmount);
    checkPrice(o.netTaxAmount);
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    checkOrderPickupDetails(o.pickupDetails);
    unittest.expect(o.placedDate, unittest.equals('foo'));
    checkUnnamed3735(o.promotions);
    checkUnnamed3736(o.refunds);
    checkUnnamed3737(o.shipments);
    checkPrice(o.shippingCost);
    checkPrice(o.shippingCostTax);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.taxCollector, unittest.equals('foo'));
  }
  buildCounterOrder--;
}

core.List<core.String> buildUnnamed3738() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3738(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3739() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3739(core.List<core.String> o) {
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
    o.fullAddress = buildUnnamed3738();
    o.isPostOfficeBox = true;
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed3739();
  }
  buildCounterOrderAddress--;
  return o;
}

void checkOrderAddress(api.OrderAddress o) {
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3738(o.fullAddress);
    unittest.expect(o.isPostOfficeBox, unittest.isTrue);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed3739(o.streetAddress);
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
    checkOrderCustomerLoyaltyInfo(o.loyaltyInfo);
    checkOrderCustomerMarketingRightsInfo(o.marketingRightsInfo);
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
    checkOrderAddress(o.address);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterOrderDeliveryDetails--;
}

core.List<api.OrderLineItemAdjustment> buildUnnamed3740() {
  var o = <api.OrderLineItemAdjustment>[];
  o.add(buildOrderLineItemAdjustment());
  o.add(buildOrderLineItemAdjustment());
  return o;
}

void checkUnnamed3740(core.List<api.OrderLineItemAdjustment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemAdjustment(o[0]);
  checkOrderLineItemAdjustment(o[1]);
}

core.List<api.OrderMerchantProvidedAnnotation> buildUnnamed3741() {
  var o = <api.OrderMerchantProvidedAnnotation>[];
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

void checkUnnamed3741(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.List<api.OrderCancellation> buildUnnamed3742() {
  var o = <api.OrderCancellation>[];
  o.add(buildOrderCancellation());
  o.add(buildOrderCancellation());
  return o;
}

void checkUnnamed3742(core.List<api.OrderCancellation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderCancellation(o[0]);
  checkOrderCancellation(o[1]);
}

core.List<api.OrderReturn> buildUnnamed3743() {
  var o = <api.OrderReturn>[];
  o.add(buildOrderReturn());
  o.add(buildOrderReturn());
  return o;
}

void checkUnnamed3743(core.List<api.OrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReturn(o[0]);
  checkOrderReturn(o[1]);
}

core.int buildCounterOrderLineItem = 0;
api.OrderLineItem buildOrderLineItem() {
  var o = api.OrderLineItem();
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    o.adjustments = buildUnnamed3740();
    o.annotations = buildUnnamed3741();
    o.cancellations = buildUnnamed3742();
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
    o.returns = buildUnnamed3743();
    o.shippingDetails = buildOrderLineItemShippingDetails();
    o.tax = buildPrice();
  }
  buildCounterOrderLineItem--;
  return o;
}

void checkOrderLineItem(api.OrderLineItem o) {
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    checkUnnamed3740(o.adjustments);
    checkUnnamed3741(o.annotations);
    checkUnnamed3742(o.cancellations);
    unittest.expect(o.id, unittest.equals('foo'));
    checkPrice(o.price);
    checkOrderLineItemProduct(o.product);
    unittest.expect(o.quantityCanceled, unittest.equals(42));
    unittest.expect(o.quantityDelivered, unittest.equals(42));
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    unittest.expect(o.quantityPending, unittest.equals(42));
    unittest.expect(o.quantityReadyForPickup, unittest.equals(42));
    unittest.expect(o.quantityReturned, unittest.equals(42));
    unittest.expect(o.quantityShipped, unittest.equals(42));
    unittest.expect(o.quantityUndeliverable, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo);
    checkUnnamed3743(o.returns);
    checkOrderLineItemShippingDetails(o.shippingDetails);
    checkPrice(o.tax);
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
    checkPrice(o.priceAdjustment);
    checkPrice(o.taxAdjustment);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderLineItemAdjustment--;
}

core.List<api.OrderLineItemProductFee> buildUnnamed3744() {
  var o = <api.OrderLineItemProductFee>[];
  o.add(buildOrderLineItemProductFee());
  o.add(buildOrderLineItemProductFee());
  return o;
}

void checkUnnamed3744(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0]);
  checkOrderLineItemProductFee(o[1]);
}

core.List<api.OrderLineItemProductVariantAttribute> buildUnnamed3745() {
  var o = <api.OrderLineItemProductVariantAttribute>[];
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

void checkUnnamed3745(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterOrderLineItemProduct = 0;
api.OrderLineItemProduct buildOrderLineItemProduct() {
  var o = api.OrderLineItemProduct();
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    o.brand = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.fees = buildUnnamed3744();
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
    o.variantAttributes = buildUnnamed3745();
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
    checkUnnamed3744(o.fees);
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.shownImage, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed3745(o.variantAttributes);
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
    checkPrice(o.amount);
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
    checkOrderLineItemShippingDetailsMethod(o.method);
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

core.List<api.OrderPickupDetailsCollector> buildUnnamed3746() {
  var o = <api.OrderPickupDetailsCollector>[];
  o.add(buildOrderPickupDetailsCollector());
  o.add(buildOrderPickupDetailsCollector());
  return o;
}

void checkUnnamed3746(core.List<api.OrderPickupDetailsCollector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPickupDetailsCollector(o[0]);
  checkOrderPickupDetailsCollector(o[1]);
}

core.int buildCounterOrderPickupDetails = 0;
api.OrderPickupDetails buildOrderPickupDetails() {
  var o = api.OrderPickupDetails();
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    o.address = buildOrderAddress();
    o.collectors = buildUnnamed3746();
    o.locationId = 'foo';
    o.pickupType = 'foo';
  }
  buildCounterOrderPickupDetails--;
  return o;
}

void checkOrderPickupDetails(api.OrderPickupDetails o) {
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    checkOrderAddress(o.address);
    checkUnnamed3746(o.collectors);
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

core.List<api.OrderPromotionItem> buildUnnamed3747() {
  var o = <api.OrderPromotionItem>[];
  o.add(buildOrderPromotionItem());
  o.add(buildOrderPromotionItem());
  return o;
}

void checkUnnamed3747(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0]);
  checkOrderPromotionItem(o[1]);
}

core.List<api.OrderPromotionItem> buildUnnamed3748() {
  var o = <api.OrderPromotionItem>[];
  o.add(buildOrderPromotionItem());
  o.add(buildOrderPromotionItem());
  return o;
}

void checkUnnamed3748(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0]);
  checkOrderPromotionItem(o[1]);
}

core.int buildCounterOrderPromotion = 0;
api.OrderPromotion buildOrderPromotion() {
  var o = api.OrderPromotion();
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    o.applicableItems = buildUnnamed3747();
    o.appliedItems = buildUnnamed3748();
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
    checkUnnamed3747(o.applicableItems);
    checkUnnamed3748(o.appliedItems);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.funder, unittest.equals('foo'));
    unittest.expect(o.merchantPromotionId, unittest.equals('foo'));
    checkPrice(o.priceValue);
    unittest.expect(o.shortTitle, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.subtype, unittest.equals('foo'));
    checkPrice(o.taxValue);
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
    checkPrice(o.amount);
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
    checkPrice(o.disbursementAmount);
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
    checkPrice(o.disbursementAmount);
    unittest.expect(o.disbursementCreationDate, unittest.equals('foo'));
    unittest.expect(o.disbursementDate, unittest.equals('foo'));
    unittest.expect(o.disbursementId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    checkProductAmount(o.productAmount);
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

core.List<api.OrderShipmentLineItemShipment> buildUnnamed3749() {
  var o = <api.OrderShipmentLineItemShipment>[];
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

void checkUnnamed3749(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
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
    o.lineItems = buildUnnamed3749();
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
    checkUnnamed3749(o.lineItems);
    checkOrderShipmentScheduledDeliveryDetails(o.scheduledDeliveryDetails);
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

core.List<api.ShipmentInvoiceLineItemInvoice> buildUnnamed3750() {
  var o = <api.ShipmentInvoiceLineItemInvoice>[];
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

void checkUnnamed3750(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceRequest = 0;
api.OrderinvoicesCreateChargeInvoiceRequest
    buildOrderinvoicesCreateChargeInvoiceRequest() {
  var o = api.OrderinvoicesCreateChargeInvoiceRequest();
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    o.invoiceId = 'foo';
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed3750();
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
    checkInvoiceSummary(o.invoiceSummary);
    checkUnnamed3750(o.lineItemInvoices);
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

core.List<api.ShipmentInvoice> buildUnnamed3751() {
  var o = <api.ShipmentInvoice>[];
  o.add(buildShipmentInvoice());
  o.add(buildShipmentInvoice());
  return o;
}

void checkUnnamed3751(core.List<api.ShipmentInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoice(o[0]);
  checkShipmentInvoice(o[1]);
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
    o.shipmentInvoices = buildUnnamed3751();
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
        o.refundOnlyOption);
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
        o.returnOption);
    checkUnnamed3751(o.shipmentInvoices);
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

core.List<api.OrderReportDisbursement> buildUnnamed3752() {
  var o = <api.OrderReportDisbursement>[];
  o.add(buildOrderReportDisbursement());
  o.add(buildOrderReportDisbursement());
  return o;
}

void checkUnnamed3752(core.List<api.OrderReportDisbursement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportDisbursement(o[0]);
  checkOrderReportDisbursement(o[1]);
}

core.int buildCounterOrderreportsListDisbursementsResponse = 0;
api.OrderreportsListDisbursementsResponse
    buildOrderreportsListDisbursementsResponse() {
  var o = api.OrderreportsListDisbursementsResponse();
  buildCounterOrderreportsListDisbursementsResponse++;
  if (buildCounterOrderreportsListDisbursementsResponse < 3) {
    o.disbursements = buildUnnamed3752();
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
    checkUnnamed3752(o.disbursements);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterOrderreportsListDisbursementsResponse--;
}

core.List<api.OrderReportTransaction> buildUnnamed3753() {
  var o = <api.OrderReportTransaction>[];
  o.add(buildOrderReportTransaction());
  o.add(buildOrderReportTransaction());
  return o;
}

void checkUnnamed3753(core.List<api.OrderReportTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportTransaction(o[0]);
  checkOrderReportTransaction(o[1]);
}

core.int buildCounterOrderreportsListTransactionsResponse = 0;
api.OrderreportsListTransactionsResponse
    buildOrderreportsListTransactionsResponse() {
  var o = api.OrderreportsListTransactionsResponse();
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.transactions = buildUnnamed3753();
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
    checkUnnamed3753(o.transactions);
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

core.List<api.OrderreturnsLineItem> buildUnnamed3754() {
  var o = <api.OrderreturnsLineItem>[];
  o.add(buildOrderreturnsLineItem());
  o.add(buildOrderreturnsLineItem());
  return o;
}

void checkUnnamed3754(core.List<api.OrderreturnsLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderreturnsLineItem(o[0]);
  checkOrderreturnsLineItem(o[1]);
}

core.int buildCounterOrderreturnsCreateOrderReturnRequest = 0;
api.OrderreturnsCreateOrderReturnRequest
    buildOrderreturnsCreateOrderReturnRequest() {
  var o = api.OrderreturnsCreateOrderReturnRequest();
  buildCounterOrderreturnsCreateOrderReturnRequest++;
  if (buildCounterOrderreturnsCreateOrderReturnRequest < 3) {
    o.lineItems = buildUnnamed3754();
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
    checkUnnamed3754(o.lineItems);
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
    checkMerchantOrderReturn(o.orderReturn);
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

core.List<api.MerchantOrderReturn> buildUnnamed3755() {
  var o = <api.MerchantOrderReturn>[];
  o.add(buildMerchantOrderReturn());
  o.add(buildMerchantOrderReturn());
  return o;
}

void checkUnnamed3755(core.List<api.MerchantOrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturn(o[0]);
  checkMerchantOrderReturn(o[1]);
}

core.int buildCounterOrderreturnsListResponse = 0;
api.OrderreturnsListResponse buildOrderreturnsListResponse() {
  var o = api.OrderreturnsListResponse();
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3755();
  }
  buildCounterOrderreturnsListResponse--;
  return o;
}

void checkOrderreturnsListResponse(api.OrderreturnsListResponse o) {
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3755(o.resources);
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
    checkPrice(o.priceAmount);
    checkPrice(o.taxAmount);
  }
  buildCounterOrderreturnsPartialRefund--;
}

core.List<api.OrderreturnsReturnItem> buildUnnamed3756() {
  var o = <api.OrderreturnsReturnItem>[];
  o.add(buildOrderreturnsReturnItem());
  o.add(buildOrderreturnsReturnItem());
  return o;
}

void checkUnnamed3756(core.List<api.OrderreturnsReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderreturnsReturnItem(o[0]);
  checkOrderreturnsReturnItem(o[1]);
}

core.int buildCounterOrderreturnsProcessRequest = 0;
api.OrderreturnsProcessRequest buildOrderreturnsProcessRequest() {
  var o = api.OrderreturnsProcessRequest();
  buildCounterOrderreturnsProcessRequest++;
  if (buildCounterOrderreturnsProcessRequest < 3) {
    o.fullChargeReturnShippingCost = true;
    o.operationId = 'foo';
    o.refundShippingFee = buildOrderreturnsRefundOperation();
    o.returnItems = buildUnnamed3756();
  }
  buildCounterOrderreturnsProcessRequest--;
  return o;
}

void checkOrderreturnsProcessRequest(api.OrderreturnsProcessRequest o) {
  buildCounterOrderreturnsProcessRequest++;
  if (buildCounterOrderreturnsProcessRequest < 3) {
    unittest.expect(o.fullChargeReturnShippingCost, unittest.isTrue);
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkOrderreturnsRefundOperation(o.refundShippingFee);
    checkUnnamed3756(o.returnItems);
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
    checkOrderreturnsPartialRefund(o.partialRefund);
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
    checkOrderreturnsRefundOperation(o.refund);
    checkOrderreturnsRejectOperation(o.reject);
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
    checkTestOrder(o.testOrder);
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
    buildUnnamed3757() {
  var o = <api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>[];
  o.add(buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem());
  o.add(buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem());
  return o;
}

void checkUnnamed3757(
    core.List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(o[0]);
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(o[1]);
}

core.int buildCounterOrdersCreateTestReturnRequest = 0;
api.OrdersCreateTestReturnRequest buildOrdersCreateTestReturnRequest() {
  var o = api.OrdersCreateTestReturnRequest();
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    o.items = buildUnnamed3757();
  }
  buildCounterOrdersCreateTestReturnRequest--;
  return o;
}

void checkOrdersCreateTestReturnRequest(api.OrdersCreateTestReturnRequest o) {
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    checkUnnamed3757(o.items);
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
    checkMonetaryAmount(o.amount);
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
    checkPrice(o.amount);
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
    checkOrder(o.order);
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
    checkTestOrder(o.template);
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
    checkPrice(o.priceAmount);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkPrice(o.taxAmount);
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

core.List<api.Order> buildUnnamed3758() {
  var o = <api.Order>[];
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

void checkUnnamed3758(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterOrdersListResponse = 0;
api.OrdersListResponse buildOrdersListResponse() {
  var o = api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3758();
  }
  buildCounterOrdersListResponse--;
  return o;
}

void checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3758(o.resources);
  }
  buildCounterOrdersListResponse--;
}

core.List<api.OrdersCustomBatchRequestEntryRefundItemItem> buildUnnamed3759() {
  var o = <api.OrdersCustomBatchRequestEntryRefundItemItem>[];
  o.add(buildOrdersCustomBatchRequestEntryRefundItemItem());
  o.add(buildOrdersCustomBatchRequestEntryRefundItemItem());
  return o;
}

void checkUnnamed3759(
    core.List<api.OrdersCustomBatchRequestEntryRefundItemItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryRefundItemItem(o[0]);
  checkOrdersCustomBatchRequestEntryRefundItemItem(o[1]);
}

core.int buildCounterOrdersRefundItemRequest = 0;
api.OrdersRefundItemRequest buildOrdersRefundItemRequest() {
  var o = api.OrdersRefundItemRequest();
  buildCounterOrdersRefundItemRequest++;
  if (buildCounterOrdersRefundItemRequest < 3) {
    o.items = buildUnnamed3759();
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
    checkUnnamed3759(o.items);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkOrdersCustomBatchRequestEntryRefundItemShipping(o.shipping);
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
    checkMonetaryAmount(o.amount);
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
    checkPrice(o.priceAmount);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkPrice(o.taxAmount);
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

core.List<api.OrderMerchantProvidedAnnotation> buildUnnamed3760() {
  var o = <api.OrderMerchantProvidedAnnotation>[];
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

void checkUnnamed3760(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.int buildCounterOrdersSetLineItemMetadataRequest = 0;
api.OrdersSetLineItemMetadataRequest buildOrdersSetLineItemMetadataRequest() {
  var o = api.OrdersSetLineItemMetadataRequest();
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    o.annotations = buildUnnamed3760();
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
    checkUnnamed3760(o.annotations);
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

core.List<api.OrderShipmentLineItemShipment> buildUnnamed3761() {
  var o = <api.OrderShipmentLineItemShipment>[];
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

void checkUnnamed3761(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>
    buildUnnamed3762() {
  var o = <api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>[];
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  return o;
}

void checkUnnamed3762(
    core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[0]);
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[1]);
}

core.int buildCounterOrdersShipLineItemsRequest = 0;
api.OrdersShipLineItemsRequest buildOrdersShipLineItemsRequest() {
  var o = api.OrdersShipLineItemsRequest();
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    o.lineItems = buildUnnamed3761();
    o.operationId = 'foo';
    o.shipmentGroupId = 'foo';
    o.shipmentInfos = buildUnnamed3762();
  }
  buildCounterOrdersShipLineItemsRequest--;
  return o;
}

void checkOrdersShipLineItemsRequest(api.OrdersShipLineItemsRequest o) {
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    checkUnnamed3761(o.lineItems);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    checkUnnamed3762(o.shipmentInfos);
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

core.List<api.PosCustomBatchRequestEntry> buildUnnamed3763() {
  var o = <api.PosCustomBatchRequestEntry>[];
  o.add(buildPosCustomBatchRequestEntry());
  o.add(buildPosCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3763(core.List<api.PosCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchRequestEntry(o[0]);
  checkPosCustomBatchRequestEntry(o[1]);
}

core.int buildCounterPosCustomBatchRequest = 0;
api.PosCustomBatchRequest buildPosCustomBatchRequest() {
  var o = api.PosCustomBatchRequest();
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    o.entries = buildUnnamed3763();
  }
  buildCounterPosCustomBatchRequest--;
  return o;
}

void checkPosCustomBatchRequest(api.PosCustomBatchRequest o) {
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    checkUnnamed3763(o.entries);
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
    checkPosInventory(o.inventory);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkPosSale(o.sale);
    checkPosStore(o.store);
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetMerchantId, unittest.equals('foo'));
  }
  buildCounterPosCustomBatchRequestEntry--;
}

core.List<api.PosCustomBatchResponseEntry> buildUnnamed3764() {
  var o = <api.PosCustomBatchResponseEntry>[];
  o.add(buildPosCustomBatchResponseEntry());
  o.add(buildPosCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3764(core.List<api.PosCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchResponseEntry(o[0]);
  checkPosCustomBatchResponseEntry(o[1]);
}

core.int buildCounterPosCustomBatchResponse = 0;
api.PosCustomBatchResponse buildPosCustomBatchResponse() {
  var o = api.PosCustomBatchResponse();
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    o.entries = buildUnnamed3764();
    o.kind = 'foo';
  }
  buildCounterPosCustomBatchResponse--;
  return o;
}

void checkPosCustomBatchResponse(api.PosCustomBatchResponse o) {
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    checkUnnamed3764(o.entries);
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
    checkErrors(o.errors);
    checkPosInventory(o.inventory);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPosSale(o.sale);
    checkPosStore(o.store);
  }
  buildCounterPosCustomBatchResponseEntry--;
}

core.List<api.PosDataProvidersPosDataProvider> buildUnnamed3765() {
  var o = <api.PosDataProvidersPosDataProvider>[];
  o.add(buildPosDataProvidersPosDataProvider());
  o.add(buildPosDataProvidersPosDataProvider());
  return o;
}

void checkUnnamed3765(core.List<api.PosDataProvidersPosDataProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProvidersPosDataProvider(o[0]);
  checkPosDataProvidersPosDataProvider(o[1]);
}

core.int buildCounterPosDataProviders = 0;
api.PosDataProviders buildPosDataProviders() {
  var o = api.PosDataProviders();
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    o.country = 'foo';
    o.posDataProviders = buildUnnamed3765();
  }
  buildCounterPosDataProviders--;
  return o;
}

void checkPosDataProviders(api.PosDataProviders o) {
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3765(o.posDataProviders);
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
    checkPrice(o.price);
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
    checkPrice(o.price);
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
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventoryResponse--;
}

core.List<api.PosStore> buildUnnamed3766() {
  var o = <api.PosStore>[];
  o.add(buildPosStore());
  o.add(buildPosStore());
  return o;
}

void checkUnnamed3766(core.List<api.PosStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosStore(o[0]);
  checkPosStore(o[1]);
}

core.int buildCounterPosListResponse = 0;
api.PosListResponse buildPosListResponse() {
  var o = api.PosListResponse();
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    o.kind = 'foo';
    o.resources = buildUnnamed3766();
  }
  buildCounterPosListResponse--;
  return o;
}

void checkPosListResponse(api.PosListResponse o) {
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3766(o.resources);
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
    checkPrice(o.price);
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
    checkPrice(o.price);
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
    checkPrice(o.price);
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

core.List<api.PostalCodeRange> buildUnnamed3767() {
  var o = <api.PostalCodeRange>[];
  o.add(buildPostalCodeRange());
  o.add(buildPostalCodeRange());
  return o;
}

void checkUnnamed3767(core.List<api.PostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeRange(o[0]);
  checkPostalCodeRange(o[1]);
}

core.int buildCounterPostalCodeGroup = 0;
api.PostalCodeGroup buildPostalCodeGroup() {
  var o = api.PostalCodeGroup();
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    o.country = 'foo';
    o.name = 'foo';
    o.postalCodeRanges = buildUnnamed3767();
  }
  buildCounterPostalCodeGroup--;
  return o;
}

void checkPostalCodeGroup(api.PostalCodeGroup o) {
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3767(o.postalCodeRanges);
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

core.List<core.String> buildUnnamed3768() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3769() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3769(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CustomAttribute> buildUnnamed3770() {
  var o = <api.CustomAttribute>[];
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

void checkUnnamed3770(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.List<core.String> buildUnnamed3771() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3771(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3772() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3772(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3773() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3773(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductProductDetail> buildUnnamed3774() {
  var o = <api.ProductProductDetail>[];
  o.add(buildProductProductDetail());
  o.add(buildProductProductDetail());
  return o;
}

void checkUnnamed3774(core.List<api.ProductProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductProductDetail(o[0]);
  checkProductProductDetail(o[1]);
}

core.List<core.String> buildUnnamed3775() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3775(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3776() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3776(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3777() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3777(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductShipping> buildUnnamed3778() {
  var o = <api.ProductShipping>[];
  o.add(buildProductShipping());
  o.add(buildProductShipping());
  return o;
}

void checkUnnamed3778(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0]);
  checkProductShipping(o[1]);
}

core.List<core.String> buildUnnamed3779() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3779(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3780() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3780(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductTax> buildUnnamed3781() {
  var o = <api.ProductTax>[];
  o.add(buildProductTax());
  o.add(buildProductTax());
  return o;
}

void checkUnnamed3781(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0]);
  checkProductTax(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  var o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed3768();
    o.adsGrouping = 'foo';
    o.adsLabels = buildUnnamed3769();
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
    o.customAttributes = buildUnnamed3770();
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.description = 'foo';
    o.displayAdsId = 'foo';
    o.displayAdsLink = 'foo';
    o.displayAdsSimilarIds = buildUnnamed3771();
    o.displayAdsTitle = 'foo';
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = 'foo';
    o.excludedDestinations = buildUnnamed3772();
    o.expirationDate = 'foo';
    o.gender = 'foo';
    o.googleProductCategory = 'foo';
    o.gtin = 'foo';
    o.id = 'foo';
    o.identifierExists = true;
    o.imageLink = 'foo';
    o.includedDestinations = buildUnnamed3773();
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
    o.productDetails = buildUnnamed3774();
    o.productHighlights = buildUnnamed3775();
    o.productTypes = buildUnnamed3776();
    o.promotionIds = buildUnnamed3777();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = 'foo';
    o.sellOnGoogleQuantity = 'foo';
    o.shipping = buildUnnamed3778();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = 'foo';
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.shoppingAdsExcludedCountries = buildUnnamed3779();
    o.sizeSystem = 'foo';
    o.sizeType = 'foo';
    o.sizes = buildUnnamed3780();
    o.source = 'foo';
    o.subscriptionCost = buildProductSubscriptionCost();
    o.targetCountry = 'foo';
    o.taxCategory = 'foo';
    o.taxes = buildUnnamed3781();
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
    checkUnnamed3768(o.additionalImageLinks);
    unittest.expect(o.adsGrouping, unittest.equals('foo'));
    checkUnnamed3769(o.adsLabels);
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
    checkPrice(o.costOfGoodsSold);
    checkUnnamed3770(o.customAttributes);
    unittest.expect(o.customLabel0, unittest.equals('foo'));
    unittest.expect(o.customLabel1, unittest.equals('foo'));
    unittest.expect(o.customLabel2, unittest.equals('foo'));
    unittest.expect(o.customLabel3, unittest.equals('foo'));
    unittest.expect(o.customLabel4, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayAdsId, unittest.equals('foo'));
    unittest.expect(o.displayAdsLink, unittest.equals('foo'));
    checkUnnamed3771(o.displayAdsSimilarIds);
    unittest.expect(o.displayAdsTitle, unittest.equals('foo'));
    unittest.expect(o.displayAdsValue, unittest.equals(42.0));
    unittest.expect(o.energyEfficiencyClass, unittest.equals('foo'));
    checkUnnamed3772(o.excludedDestinations);
    unittest.expect(o.expirationDate, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.googleProductCategory, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.identifierExists, unittest.isTrue);
    unittest.expect(o.imageLink, unittest.equals('foo'));
    checkUnnamed3773(o.includedDestinations);
    checkInstallment(o.installment);
    unittest.expect(o.isBundle, unittest.isTrue);
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints);
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
    checkPrice(o.price);
    checkUnnamed3774(o.productDetails);
    checkUnnamed3775(o.productHighlights);
    checkUnnamed3776(o.productTypes);
    checkUnnamed3777(o.promotionIds);
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.sellOnGoogleQuantity, unittest.equals('foo'));
    checkUnnamed3778(o.shipping);
    checkProductShippingDimension(o.shippingHeight);
    unittest.expect(o.shippingLabel, unittest.equals('foo'));
    checkProductShippingDimension(o.shippingLength);
    checkProductShippingWeight(o.shippingWeight);
    checkProductShippingDimension(o.shippingWidth);
    checkUnnamed3779(o.shoppingAdsExcludedCountries);
    unittest.expect(o.sizeSystem, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    checkUnnamed3780(o.sizes);
    unittest.expect(o.source, unittest.equals('foo'));
    checkProductSubscriptionCost(o.subscriptionCost);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.taxCategory, unittest.equals('foo'));
    checkUnnamed3781(o.taxes);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.transitTimeLabel, unittest.equals('foo'));
    checkProductUnitPricingBaseMeasure(o.unitPricingBaseMeasure);
    checkProductUnitPricingMeasure(o.unitPricingMeasure);
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
    checkPrice(o.priceAmount);
    checkPrice(o.remittedTaxAmount);
    checkPrice(o.taxAmount);
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
    checkPrice(o.price);
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

core.List<api.ProductStatusDestinationStatus> buildUnnamed3782() {
  var o = <api.ProductStatusDestinationStatus>[];
  o.add(buildProductStatusDestinationStatus());
  o.add(buildProductStatusDestinationStatus());
  return o;
}

void checkUnnamed3782(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(o[0]);
  checkProductStatusDestinationStatus(o[1]);
}

core.List<api.ProductStatusItemLevelIssue> buildUnnamed3783() {
  var o = <api.ProductStatusItemLevelIssue>[];
  o.add(buildProductStatusItemLevelIssue());
  o.add(buildProductStatusItemLevelIssue());
  return o;
}

void checkUnnamed3783(core.List<api.ProductStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusItemLevelIssue(o[0]);
  checkProductStatusItemLevelIssue(o[1]);
}

core.int buildCounterProductStatus = 0;
api.ProductStatus buildProductStatus() {
  var o = api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed3782();
    o.googleExpirationDate = 'foo';
    o.itemLevelIssues = buildUnnamed3783();
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
    checkUnnamed3782(o.destinationStatuses);
    unittest.expect(o.googleExpirationDate, unittest.equals('foo'));
    checkUnnamed3783(o.itemLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateDate, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterProductStatus--;
}

core.List<core.String> buildUnnamed3784() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3784(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3785() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3785(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3786() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3786(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductStatusDestinationStatus = 0;
api.ProductStatusDestinationStatus buildProductStatusDestinationStatus() {
  var o = api.ProductStatusDestinationStatus();
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed3784();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed3785();
    o.pendingCountries = buildUnnamed3786();
    o.status = 'foo';
  }
  buildCounterProductStatusDestinationStatus--;
  return o;
}

void checkProductStatusDestinationStatus(api.ProductStatusDestinationStatus o) {
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    checkUnnamed3784(o.approvedCountries);
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed3785(o.disapprovedCountries);
    checkUnnamed3786(o.pendingCountries);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterProductStatusDestinationStatus--;
}

core.List<core.String> buildUnnamed3787() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3787(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductStatusItemLevelIssue = 0;
api.ProductStatusItemLevelIssue buildProductStatusItemLevelIssue() {
  var o = api.ProductStatusItemLevelIssue();
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed3787();
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
    checkUnnamed3787(o.applicableCountries);
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
    checkPrice(o.amount);
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

core.List<api.ProductsCustomBatchRequestEntry> buildUnnamed3788() {
  var o = <api.ProductsCustomBatchRequestEntry>[];
  o.add(buildProductsCustomBatchRequestEntry());
  o.add(buildProductsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3788(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(o[0]);
  checkProductsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductsCustomBatchRequest = 0;
api.ProductsCustomBatchRequest buildProductsCustomBatchRequest() {
  var o = api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3788();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

void checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed3788(o.entries);
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
    checkProduct(o.product);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchRequestEntry--;
}

core.List<api.ProductsCustomBatchResponseEntry> buildUnnamed3789() {
  var o = <api.ProductsCustomBatchResponseEntry>[];
  o.add(buildProductsCustomBatchResponseEntry());
  o.add(buildProductsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3789(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(o[0]);
  checkProductsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductsCustomBatchResponse = 0;
api.ProductsCustomBatchResponse buildProductsCustomBatchResponse() {
  var o = api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3789();
    o.kind = 'foo';
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

void checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed3789(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProduct(o.product);
  }
  buildCounterProductsCustomBatchResponseEntry--;
}

core.List<api.Product> buildUnnamed3790() {
  var o = <api.Product>[];
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

void checkUnnamed3790(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterProductsListResponse = 0;
api.ProductsListResponse buildProductsListResponse() {
  var o = api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3790();
  }
  buildCounterProductsListResponse--;
  return o;
}

void checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3790(o.resources);
  }
  buildCounterProductsListResponse--;
}

core.List<api.ProductstatusesCustomBatchRequestEntry> buildUnnamed3791() {
  var o = <api.ProductstatusesCustomBatchRequestEntry>[];
  o.add(buildProductstatusesCustomBatchRequestEntry());
  o.add(buildProductstatusesCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3791(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(o[0]);
  checkProductstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
api.ProductstatusesCustomBatchRequest buildProductstatusesCustomBatchRequest() {
  var o = api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed3791();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

void checkProductstatusesCustomBatchRequest(
    api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed3791(o.entries);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

core.List<core.String> buildUnnamed3792() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3792(core.List<core.String> o) {
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
    o.destinations = buildUnnamed3792();
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
    checkUnnamed3792(o.destinations);
    unittest.expect(o.includeAttributes, unittest.isTrue);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
}

core.List<api.ProductstatusesCustomBatchResponseEntry> buildUnnamed3793() {
  var o = <api.ProductstatusesCustomBatchResponseEntry>[];
  o.add(buildProductstatusesCustomBatchResponseEntry());
  o.add(buildProductstatusesCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3793(
    core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchResponseEntry(o[0]);
  checkProductstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchResponse = 0;
api.ProductstatusesCustomBatchResponse
    buildProductstatusesCustomBatchResponse() {
  var o = api.ProductstatusesCustomBatchResponse();
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed3793();
    o.kind = 'foo';
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

void checkProductstatusesCustomBatchResponse(
    api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed3793(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProductStatus(o.productStatus);
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
}

core.List<api.ProductStatus> buildUnnamed3794() {
  var o = <api.ProductStatus>[];
  o.add(buildProductStatus());
  o.add(buildProductStatus());
  return o;
}

void checkUnnamed3794(core.List<api.ProductStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatus(o[0]);
  checkProductStatus(o[1]);
}

core.int buildCounterProductstatusesListResponse = 0;
api.ProductstatusesListResponse buildProductstatusesListResponse() {
  var o = api.ProductstatusesListResponse();
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3794();
  }
  buildCounterProductstatusesListResponse--;
  return o;
}

void checkProductstatusesListResponse(api.ProductstatusesListResponse o) {
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3794(o.resources);
  }
  buildCounterProductstatusesListResponse--;
}

core.List<core.String> buildUnnamed3795() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3795(core.List<core.String> o) {
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
    o.registeredEvents = buildUnnamed3795();
  }
  buildCounterPubsubNotificationSettings--;
  return o;
}

void checkPubsubNotificationSettings(api.PubsubNotificationSettings o) {
  buildCounterPubsubNotificationSettings++;
  if (buildCounterPubsubNotificationSettings < 3) {
    unittest.expect(o.cloudTopicName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3795(o.registeredEvents);
  }
  buildCounterPubsubNotificationSettings--;
}

core.List<core.String> buildUnnamed3796() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3796(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CarrierRate> buildUnnamed3797() {
  var o = <api.CarrierRate>[];
  o.add(buildCarrierRate());
  o.add(buildCarrierRate());
  return o;
}

void checkUnnamed3797(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0]);
  checkCarrierRate(o[1]);
}

core.List<api.Table> buildUnnamed3798() {
  var o = <api.Table>[];
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

void checkUnnamed3798(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterRateGroup = 0;
api.RateGroup buildRateGroup() {
  var o = api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed3796();
    o.carrierRates = buildUnnamed3797();
    o.mainTable = buildTable();
    o.name = 'foo';
    o.singleValue = buildValue();
    o.subtables = buildUnnamed3798();
  }
  buildCounterRateGroup--;
  return o;
}

void checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed3796(o.applicableShippingLabels);
    checkUnnamed3797(o.carrierRates);
    checkTable(o.mainTable);
    unittest.expect(o.name, unittest.equals('foo'));
    checkValue(o.singleValue);
    checkUnnamed3798(o.subtables);
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

core.List<api.CustomAttribute> buildUnnamed3799() {
  var o = <api.CustomAttribute>[];
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

void checkUnnamed3799(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterRegionalInventory = 0;
api.RegionalInventory buildRegionalInventory() {
  var o = api.RegionalInventory();
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    o.availability = 'foo';
    o.customAttributes = buildUnnamed3799();
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
    checkUnnamed3799(o.customAttributes);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.regionId, unittest.equals('foo'));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
  }
  buildCounterRegionalInventory--;
}

core.List<api.RegionalinventoryCustomBatchRequestEntry> buildUnnamed3800() {
  var o = <api.RegionalinventoryCustomBatchRequestEntry>[];
  o.add(buildRegionalinventoryCustomBatchRequestEntry());
  o.add(buildRegionalinventoryCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3800(
    core.List<api.RegionalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchRequestEntry(o[0]);
  checkRegionalinventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterRegionalinventoryCustomBatchRequest = 0;
api.RegionalinventoryCustomBatchRequest
    buildRegionalinventoryCustomBatchRequest() {
  var o = api.RegionalinventoryCustomBatchRequest();
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed3800();
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
  return o;
}

void checkRegionalinventoryCustomBatchRequest(
    api.RegionalinventoryCustomBatchRequest o) {
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    checkUnnamed3800(o.entries);
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
    checkRegionalInventory(o.regionalInventory);
  }
  buildCounterRegionalinventoryCustomBatchRequestEntry--;
}

core.List<api.RegionalinventoryCustomBatchResponseEntry> buildUnnamed3801() {
  var o = <api.RegionalinventoryCustomBatchResponseEntry>[];
  o.add(buildRegionalinventoryCustomBatchResponseEntry());
  o.add(buildRegionalinventoryCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3801(
    core.List<api.RegionalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchResponseEntry(o[0]);
  checkRegionalinventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterRegionalinventoryCustomBatchResponse = 0;
api.RegionalinventoryCustomBatchResponse
    buildRegionalinventoryCustomBatchResponse() {
  var o = api.RegionalinventoryCustomBatchResponse();
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed3801();
    o.kind = 'foo';
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
  return o;
}

void checkRegionalinventoryCustomBatchResponse(
    api.RegionalinventoryCustomBatchResponse o) {
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    checkUnnamed3801(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkRegionalInventory(o.regionalInventory);
  }
  buildCounterRegionalinventoryCustomBatchResponseEntry--;
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
    checkReturnAddressAddress(o.address);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.returnAddressId, unittest.equals('foo'));
  }
  buildCounterReturnAddress--;
}

core.List<core.String> buildUnnamed3802() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3802(core.List<core.String> o) {
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
    o.streetAddress = buildUnnamed3802();
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
    checkUnnamed3802(o.streetAddress);
  }
  buildCounterReturnAddressAddress--;
}

core.List<core.String> buildUnnamed3803() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3803(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ReturnPolicySeasonalOverride> buildUnnamed3804() {
  var o = <api.ReturnPolicySeasonalOverride>[];
  o.add(buildReturnPolicySeasonalOverride());
  o.add(buildReturnPolicySeasonalOverride());
  return o;
}

void checkUnnamed3804(core.List<api.ReturnPolicySeasonalOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicySeasonalOverride(o[0]);
  checkReturnPolicySeasonalOverride(o[1]);
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
    o.nonFreeReturnReasons = buildUnnamed3803();
    o.policy = buildReturnPolicyPolicy();
    o.returnPolicyId = 'foo';
    o.seasonalOverrides = buildUnnamed3804();
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
    checkUnnamed3803(o.nonFreeReturnReasons);
    checkReturnPolicyPolicy(o.policy);
    unittest.expect(o.returnPolicyId, unittest.equals('foo'));
    checkUnnamed3804(o.seasonalOverrides);
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
    checkReturnPolicyPolicy(o.policy);
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
    checkMonetaryAmount(o.maxReturnShippingFee);
    checkMonetaryAmount(o.refundableItemsTotalAmount);
    checkMonetaryAmount(o.refundableShippingAmount);
    checkMonetaryAmount(o.totalRefundedAmount);
  }
  buildCounterReturnPricingInfo--;
}

core.List<api.ShipmentTrackingInfo> buildUnnamed3805() {
  var o = <api.ShipmentTrackingInfo>[];
  o.add(buildShipmentTrackingInfo());
  o.add(buildShipmentTrackingInfo());
  return o;
}

void checkUnnamed3805(core.List<api.ShipmentTrackingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentTrackingInfo(o[0]);
  checkShipmentTrackingInfo(o[1]);
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
    o.shipmentTrackingInfos = buildUnnamed3805();
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
    checkUnnamed3805(o.shipmentTrackingInfos);
    unittest.expect(o.shippingDate, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterReturnShipment--;
}

core.List<api.ReturnaddressCustomBatchRequestEntry> buildUnnamed3806() {
  var o = <api.ReturnaddressCustomBatchRequestEntry>[];
  o.add(buildReturnaddressCustomBatchRequestEntry());
  o.add(buildReturnaddressCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3806(core.List<api.ReturnaddressCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchRequestEntry(o[0]);
  checkReturnaddressCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchRequest = 0;
api.ReturnaddressCustomBatchRequest buildReturnaddressCustomBatchRequest() {
  var o = api.ReturnaddressCustomBatchRequest();
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    o.entries = buildUnnamed3806();
  }
  buildCounterReturnaddressCustomBatchRequest--;
  return o;
}

void checkReturnaddressCustomBatchRequest(
    api.ReturnaddressCustomBatchRequest o) {
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    checkUnnamed3806(o.entries);
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
    checkReturnAddress(o.returnAddress);
    unittest.expect(o.returnAddressId, unittest.equals('foo'));
  }
  buildCounterReturnaddressCustomBatchRequestEntry--;
}

core.List<api.ReturnaddressCustomBatchResponseEntry> buildUnnamed3807() {
  var o = <api.ReturnaddressCustomBatchResponseEntry>[];
  o.add(buildReturnaddressCustomBatchResponseEntry());
  o.add(buildReturnaddressCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3807(core.List<api.ReturnaddressCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchResponseEntry(o[0]);
  checkReturnaddressCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchResponse = 0;
api.ReturnaddressCustomBatchResponse buildReturnaddressCustomBatchResponse() {
  var o = api.ReturnaddressCustomBatchResponse();
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    o.entries = buildUnnamed3807();
    o.kind = 'foo';
  }
  buildCounterReturnaddressCustomBatchResponse--;
  return o;
}

void checkReturnaddressCustomBatchResponse(
    api.ReturnaddressCustomBatchResponse o) {
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    checkUnnamed3807(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkReturnAddress(o.returnAddress);
  }
  buildCounterReturnaddressCustomBatchResponseEntry--;
}

core.List<api.ReturnAddress> buildUnnamed3808() {
  var o = <api.ReturnAddress>[];
  o.add(buildReturnAddress());
  o.add(buildReturnAddress());
  return o;
}

void checkUnnamed3808(core.List<api.ReturnAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnAddress(o[0]);
  checkReturnAddress(o[1]);
}

core.int buildCounterReturnaddressListResponse = 0;
api.ReturnaddressListResponse buildReturnaddressListResponse() {
  var o = api.ReturnaddressListResponse();
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3808();
  }
  buildCounterReturnaddressListResponse--;
  return o;
}

void checkReturnaddressListResponse(api.ReturnaddressListResponse o) {
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3808(o.resources);
  }
  buildCounterReturnaddressListResponse--;
}

core.List<api.ReturnpolicyCustomBatchRequestEntry> buildUnnamed3809() {
  var o = <api.ReturnpolicyCustomBatchRequestEntry>[];
  o.add(buildReturnpolicyCustomBatchRequestEntry());
  o.add(buildReturnpolicyCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3809(core.List<api.ReturnpolicyCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchRequestEntry(o[0]);
  checkReturnpolicyCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchRequest = 0;
api.ReturnpolicyCustomBatchRequest buildReturnpolicyCustomBatchRequest() {
  var o = api.ReturnpolicyCustomBatchRequest();
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    o.entries = buildUnnamed3809();
  }
  buildCounterReturnpolicyCustomBatchRequest--;
  return o;
}

void checkReturnpolicyCustomBatchRequest(api.ReturnpolicyCustomBatchRequest o) {
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    checkUnnamed3809(o.entries);
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
    checkReturnPolicy(o.returnPolicy);
    unittest.expect(o.returnPolicyId, unittest.equals('foo'));
  }
  buildCounterReturnpolicyCustomBatchRequestEntry--;
}

core.List<api.ReturnpolicyCustomBatchResponseEntry> buildUnnamed3810() {
  var o = <api.ReturnpolicyCustomBatchResponseEntry>[];
  o.add(buildReturnpolicyCustomBatchResponseEntry());
  o.add(buildReturnpolicyCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3810(core.List<api.ReturnpolicyCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchResponseEntry(o[0]);
  checkReturnpolicyCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchResponse = 0;
api.ReturnpolicyCustomBatchResponse buildReturnpolicyCustomBatchResponse() {
  var o = api.ReturnpolicyCustomBatchResponse();
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    o.entries = buildUnnamed3810();
    o.kind = 'foo';
  }
  buildCounterReturnpolicyCustomBatchResponse--;
  return o;
}

void checkReturnpolicyCustomBatchResponse(
    api.ReturnpolicyCustomBatchResponse o) {
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    checkUnnamed3810(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkReturnPolicy(o.returnPolicy);
  }
  buildCounterReturnpolicyCustomBatchResponseEntry--;
}

core.List<api.ReturnPolicy> buildUnnamed3811() {
  var o = <api.ReturnPolicy>[];
  o.add(buildReturnPolicy());
  o.add(buildReturnPolicy());
  return o;
}

void checkUnnamed3811(core.List<api.ReturnPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicy(o[0]);
  checkReturnPolicy(o[1]);
}

core.int buildCounterReturnpolicyListResponse = 0;
api.ReturnpolicyListResponse buildReturnpolicyListResponse() {
  var o = api.ReturnpolicyListResponse();
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    o.kind = 'foo';
    o.resources = buildUnnamed3811();
  }
  buildCounterReturnpolicyListResponse--;
  return o;
}

void checkReturnpolicyListResponse(api.ReturnpolicyListResponse o) {
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3811(o.resources);
  }
  buildCounterReturnpolicyListResponse--;
}

core.List<api.Value> buildUnnamed3812() {
  var o = <api.Value>[];
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

void checkUnnamed3812(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  var o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed3812();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed3812(o.cells);
  }
  buildCounterRow--;
}

core.List<api.RateGroup> buildUnnamed3813() {
  var o = <api.RateGroup>[];
  o.add(buildRateGroup());
  o.add(buildRateGroup());
  return o;
}

void checkUnnamed3813(core.List<api.RateGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRateGroup(o[0]);
  checkRateGroup(o[1]);
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
    o.rateGroups = buildUnnamed3813();
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
    checkDeliveryTime(o.deliveryTime);
    unittest.expect(o.eligibility, unittest.equals('foo'));
    checkPrice(o.minimumOrderValue);
    checkMinimumOrderValueTable(o.minimumOrderValueTable);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPickupCarrierService(o.pickupService);
    checkUnnamed3813(o.rateGroups);
    unittest.expect(o.shipmentType, unittest.equals('foo'));
  }
  buildCounterService--;
}

core.List<core.String> buildUnnamed3814() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3814(core.List<core.String> o) {
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
    o.transferIds = buildUnnamed3814();
  }
  buildCounterSettlementReport--;
  return o;
}

void checkSettlementReport(api.SettlementReport o) {
  buildCounterSettlementReport++;
  if (buildCounterSettlementReport < 3) {
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.previousBalance);
    unittest.expect(o.settlementId, unittest.equals('foo'));
    unittest.expect(o.startDate, unittest.equals('foo'));
    checkPrice(o.transferAmount);
    unittest.expect(o.transferDate, unittest.equals('foo'));
    checkUnnamed3814(o.transferIds);
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
    checkSettlementTransactionAmount(o.amount);
    checkSettlementTransactionIdentifiers(o.identifiers);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSettlementTransactionTransaction(o.transaction);
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
    checkSettlementTransactionAmountCommission(o.commission);
    unittest.expect(o.description, unittest.equals('foo'));
    checkPrice(o.transactionAmount);
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

core.List<core.String> buildUnnamed3815() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3815(core.List<core.String> o) {
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
    o.shipmentIds = buildUnnamed3815();
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
    checkUnnamed3815(o.shipmentIds);
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

core.List<api.SettlementReport> buildUnnamed3816() {
  var o = <api.SettlementReport>[];
  o.add(buildSettlementReport());
  o.add(buildSettlementReport());
  return o;
}

void checkUnnamed3816(core.List<api.SettlementReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSettlementReport(o[0]);
  checkSettlementReport(o[1]);
}

core.int buildCounterSettlementreportsListResponse = 0;
api.SettlementreportsListResponse buildSettlementreportsListResponse() {
  var o = api.SettlementreportsListResponse();
  buildCounterSettlementreportsListResponse++;
  if (buildCounterSettlementreportsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3816();
  }
  buildCounterSettlementreportsListResponse--;
  return o;
}

void checkSettlementreportsListResponse(api.SettlementreportsListResponse o) {
  buildCounterSettlementreportsListResponse++;
  if (buildCounterSettlementreportsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3816(o.resources);
  }
  buildCounterSettlementreportsListResponse--;
}

core.List<api.SettlementTransaction> buildUnnamed3817() {
  var o = <api.SettlementTransaction>[];
  o.add(buildSettlementTransaction());
  o.add(buildSettlementTransaction());
  return o;
}

void checkUnnamed3817(core.List<api.SettlementTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSettlementTransaction(o[0]);
  checkSettlementTransaction(o[1]);
}

core.int buildCounterSettlementtransactionsListResponse = 0;
api.SettlementtransactionsListResponse
    buildSettlementtransactionsListResponse() {
  var o = api.SettlementtransactionsListResponse();
  buildCounterSettlementtransactionsListResponse++;
  if (buildCounterSettlementtransactionsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3817();
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
    checkUnnamed3817(o.resources);
  }
  buildCounterSettlementtransactionsListResponse--;
}

core.List<api.ShipmentInvoiceLineItemInvoice> buildUnnamed3818() {
  var o = <api.ShipmentInvoiceLineItemInvoice>[];
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

void checkUnnamed3818(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterShipmentInvoice = 0;
api.ShipmentInvoice buildShipmentInvoice() {
  var o = api.ShipmentInvoice();
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed3818();
    o.shipmentGroupId = 'foo';
  }
  buildCounterShipmentInvoice--;
  return o;
}

void checkShipmentInvoice(api.ShipmentInvoice o) {
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    checkInvoiceSummary(o.invoiceSummary);
    checkUnnamed3818(o.lineItemInvoices);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterShipmentInvoice--;
}

core.List<core.String> buildUnnamed3819() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3819(core.List<core.String> o) {
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
    o.shipmentUnitIds = buildUnnamed3819();
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
    checkUnnamed3819(o.shipmentUnitIds);
    checkUnitInvoice(o.unitInvoice);
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

core.List<api.PostalCodeGroup> buildUnnamed3820() {
  var o = <api.PostalCodeGroup>[];
  o.add(buildPostalCodeGroup());
  o.add(buildPostalCodeGroup());
  return o;
}

void checkUnnamed3820(core.List<api.PostalCodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeGroup(o[0]);
  checkPostalCodeGroup(o[1]);
}

core.List<api.Service> buildUnnamed3821() {
  var o = <api.Service>[];
  o.add(buildService());
  o.add(buildService());
  return o;
}

void checkUnnamed3821(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterShippingSettings = 0;
api.ShippingSettings buildShippingSettings() {
  var o = api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.accountId = 'foo';
    o.postalCodeGroups = buildUnnamed3820();
    o.services = buildUnnamed3821();
  }
  buildCounterShippingSettings--;
  return o;
}

void checkShippingSettings(api.ShippingSettings o) {
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3820(o.postalCodeGroups);
    checkUnnamed3821(o.services);
  }
  buildCounterShippingSettings--;
}

core.List<api.ShippingsettingsCustomBatchRequestEntry> buildUnnamed3822() {
  var o = <api.ShippingsettingsCustomBatchRequestEntry>[];
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  return o;
}

void checkUnnamed3822(
    core.List<api.ShippingsettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchRequestEntry(o[0]);
  checkShippingsettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchRequest = 0;
api.ShippingsettingsCustomBatchRequest
    buildShippingsettingsCustomBatchRequest() {
  var o = api.ShippingsettingsCustomBatchRequest();
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3822();
  }
  buildCounterShippingsettingsCustomBatchRequest--;
  return o;
}

void checkShippingsettingsCustomBatchRequest(
    api.ShippingsettingsCustomBatchRequest o) {
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    checkUnnamed3822(o.entries);
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
    checkShippingSettings(o.shippingSettings);
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
}

core.List<api.ShippingsettingsCustomBatchResponseEntry> buildUnnamed3823() {
  var o = <api.ShippingsettingsCustomBatchResponseEntry>[];
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  return o;
}

void checkUnnamed3823(
    core.List<api.ShippingsettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchResponseEntry(o[0]);
  checkShippingsettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchResponse = 0;
api.ShippingsettingsCustomBatchResponse
    buildShippingsettingsCustomBatchResponse() {
  var o = api.ShippingsettingsCustomBatchResponse();
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3823();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsCustomBatchResponse--;
  return o;
}

void checkShippingsettingsCustomBatchResponse(
    api.ShippingsettingsCustomBatchResponse o) {
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    checkUnnamed3823(o.entries);
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
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkShippingSettings(o.shippingSettings);
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
}

core.List<api.CarriersCarrier> buildUnnamed3824() {
  var o = <api.CarriersCarrier>[];
  o.add(buildCarriersCarrier());
  o.add(buildCarriersCarrier());
  return o;
}

void checkUnnamed3824(core.List<api.CarriersCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarriersCarrier(o[0]);
  checkCarriersCarrier(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedCarriersResponse = 0;
api.ShippingsettingsGetSupportedCarriersResponse
    buildShippingsettingsGetSupportedCarriersResponse() {
  var o = api.ShippingsettingsGetSupportedCarriersResponse();
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    o.carriers = buildUnnamed3824();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
  return o;
}

void checkShippingsettingsGetSupportedCarriersResponse(
    api.ShippingsettingsGetSupportedCarriersResponse o) {
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    checkUnnamed3824(o.carriers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
}

core.List<api.HolidaysHoliday> buildUnnamed3825() {
  var o = <api.HolidaysHoliday>[];
  o.add(buildHolidaysHoliday());
  o.add(buildHolidaysHoliday());
  return o;
}

void checkUnnamed3825(core.List<api.HolidaysHoliday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidaysHoliday(o[0]);
  checkHolidaysHoliday(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedHolidaysResponse = 0;
api.ShippingsettingsGetSupportedHolidaysResponse
    buildShippingsettingsGetSupportedHolidaysResponse() {
  var o = api.ShippingsettingsGetSupportedHolidaysResponse();
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    o.holidays = buildUnnamed3825();
    o.kind = 'foo';
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
  return o;
}

void checkShippingsettingsGetSupportedHolidaysResponse(
    api.ShippingsettingsGetSupportedHolidaysResponse o) {
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    checkUnnamed3825(o.holidays);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
}

core.List<api.PickupServicesPickupService> buildUnnamed3826() {
  var o = <api.PickupServicesPickupService>[];
  o.add(buildPickupServicesPickupService());
  o.add(buildPickupServicesPickupService());
  return o;
}

void checkUnnamed3826(core.List<api.PickupServicesPickupService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPickupServicesPickupService(o[0]);
  checkPickupServicesPickupService(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedPickupServicesResponse = 0;
api.ShippingsettingsGetSupportedPickupServicesResponse
    buildShippingsettingsGetSupportedPickupServicesResponse() {
  var o = api.ShippingsettingsGetSupportedPickupServicesResponse();
  buildCounterShippingsettingsGetSupportedPickupServicesResponse++;
  if (buildCounterShippingsettingsGetSupportedPickupServicesResponse < 3) {
    o.kind = 'foo';
    o.pickupServices = buildUnnamed3826();
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
  return o;
}

void checkShippingsettingsGetSupportedPickupServicesResponse(
    api.ShippingsettingsGetSupportedPickupServicesResponse o) {
  buildCounterShippingsettingsGetSupportedPickupServicesResponse++;
  if (buildCounterShippingsettingsGetSupportedPickupServicesResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3826(o.pickupServices);
  }
  buildCounterShippingsettingsGetSupportedPickupServicesResponse--;
}

core.List<api.ShippingSettings> buildUnnamed3827() {
  var o = <api.ShippingSettings>[];
  o.add(buildShippingSettings());
  o.add(buildShippingSettings());
  return o;
}

void checkUnnamed3827(core.List<api.ShippingSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingSettings(o[0]);
  checkShippingSettings(o[1]);
}

core.int buildCounterShippingsettingsListResponse = 0;
api.ShippingsettingsListResponse buildShippingsettingsListResponse() {
  var o = api.ShippingsettingsListResponse();
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed3827();
  }
  buildCounterShippingsettingsListResponse--;
  return o;
}

void checkShippingsettingsListResponse(api.ShippingsettingsListResponse o) {
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3827(o.resources);
  }
  buildCounterShippingsettingsListResponse--;
}

core.List<api.Row> buildUnnamed3828() {
  var o = <api.Row>[];
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

void checkUnnamed3828(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  var o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columnHeaders = buildHeaders();
    o.name = 'foo';
    o.rowHeaders = buildHeaders();
    o.rows = buildUnnamed3828();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkHeaders(o.columnHeaders);
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeaders(o.rowHeaders);
    checkUnnamed3828(o.rows);
  }
  buildCounterTable--;
}

core.List<api.TestOrderLineItem> buildUnnamed3829() {
  var o = <api.TestOrderLineItem>[];
  o.add(buildTestOrderLineItem());
  o.add(buildTestOrderLineItem());
  return o;
}

void checkUnnamed3829(core.List<api.TestOrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderLineItem(o[0]);
  checkTestOrderLineItem(o[1]);
}

core.List<api.OrderPromotion> buildUnnamed3830() {
  var o = <api.OrderPromotion>[];
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

void checkUnnamed3830(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

core.int buildCounterTestOrder = 0;
api.TestOrder buildTestOrder() {
  var o = api.TestOrder();
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    o.deliveryDetails = buildTestOrderDeliveryDetails();
    o.enableOrderinvoices = true;
    o.kind = 'foo';
    o.lineItems = buildUnnamed3829();
    o.notificationMode = 'foo';
    o.pickupDetails = buildTestOrderPickupDetails();
    o.predefinedBillingAddress = 'foo';
    o.predefinedDeliveryAddress = 'foo';
    o.predefinedEmail = 'foo';
    o.predefinedPickupDetails = 'foo';
    o.promotions = buildUnnamed3830();
    o.shippingCost = buildPrice();
    o.shippingOption = 'foo';
  }
  buildCounterTestOrder--;
  return o;
}

void checkTestOrder(api.TestOrder o) {
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    checkTestOrderDeliveryDetails(o.deliveryDetails);
    unittest.expect(o.enableOrderinvoices, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3829(o.lineItems);
    unittest.expect(o.notificationMode, unittest.equals('foo'));
    checkTestOrderPickupDetails(o.pickupDetails);
    unittest.expect(o.predefinedBillingAddress, unittest.equals('foo'));
    unittest.expect(o.predefinedDeliveryAddress, unittest.equals('foo'));
    unittest.expect(o.predefinedEmail, unittest.equals('foo'));
    unittest.expect(o.predefinedPickupDetails, unittest.equals('foo'));
    checkUnnamed3830(o.promotions);
    checkPrice(o.shippingCost);
    unittest.expect(o.shippingOption, unittest.equals('foo'));
  }
  buildCounterTestOrder--;
}

core.List<core.String> buildUnnamed3831() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3831(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3832() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3832(core.List<core.String> o) {
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
    o.fullAddress = buildUnnamed3831();
    o.isPostOfficeBox = true;
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.recipientName = 'foo';
    o.region = 'foo';
    o.streetAddress = buildUnnamed3832();
  }
  buildCounterTestOrderAddress--;
  return o;
}

void checkTestOrderAddress(api.TestOrderAddress o) {
  buildCounterTestOrderAddress++;
  if (buildCounterTestOrderAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3831(o.fullAddress);
    unittest.expect(o.isPostOfficeBox, unittest.isTrue);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed3832(o.streetAddress);
  }
  buildCounterTestOrderAddress--;
}

core.int buildCounterTestOrderDeliveryDetails = 0;
api.TestOrderDeliveryDetails buildTestOrderDeliveryDetails() {
  var o = api.TestOrderDeliveryDetails();
  buildCounterTestOrderDeliveryDetails++;
  if (buildCounterTestOrderDeliveryDetails < 3) {
    o.address = buildTestOrderAddress();
    o.phoneNumber = 'foo';
  }
  buildCounterTestOrderDeliveryDetails--;
  return o;
}

void checkTestOrderDeliveryDetails(api.TestOrderDeliveryDetails o) {
  buildCounterTestOrderDeliveryDetails++;
  if (buildCounterTestOrderDeliveryDetails < 3) {
    checkTestOrderAddress(o.address);
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
    checkTestOrderLineItemProduct(o.product);
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo);
    checkOrderLineItemShippingDetails(o.shippingDetails);
  }
  buildCounterTestOrderLineItem--;
}

core.List<api.OrderLineItemProductFee> buildUnnamed3833() {
  var o = <api.OrderLineItemProductFee>[];
  o.add(buildOrderLineItemProductFee());
  o.add(buildOrderLineItemProductFee());
  return o;
}

void checkUnnamed3833(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0]);
  checkOrderLineItemProductFee(o[1]);
}

core.List<api.OrderLineItemProductVariantAttribute> buildUnnamed3834() {
  var o = <api.OrderLineItemProductVariantAttribute>[];
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

void checkUnnamed3834(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterTestOrderLineItemProduct = 0;
api.TestOrderLineItemProduct buildTestOrderLineItemProduct() {
  var o = api.TestOrderLineItemProduct();
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    o.brand = 'foo';
    o.condition = 'foo';
    o.contentLanguage = 'foo';
    o.fees = buildUnnamed3833();
    o.gtin = 'foo';
    o.imageLink = 'foo';
    o.itemGroupId = 'foo';
    o.mpn = 'foo';
    o.offerId = 'foo';
    o.price = buildPrice();
    o.targetCountry = 'foo';
    o.title = 'foo';
    o.variantAttributes = buildUnnamed3834();
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
    checkUnnamed3833(o.fees);
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed3834(o.variantAttributes);
  }
  buildCounterTestOrderLineItemProduct--;
}

core.List<api.TestOrderPickupDetailsPickupPerson> buildUnnamed3835() {
  var o = <api.TestOrderPickupDetailsPickupPerson>[];
  o.add(buildTestOrderPickupDetailsPickupPerson());
  o.add(buildTestOrderPickupDetailsPickupPerson());
  return o;
}

void checkUnnamed3835(core.List<api.TestOrderPickupDetailsPickupPerson> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderPickupDetailsPickupPerson(o[0]);
  checkTestOrderPickupDetailsPickupPerson(o[1]);
}

core.int buildCounterTestOrderPickupDetails = 0;
api.TestOrderPickupDetails buildTestOrderPickupDetails() {
  var o = api.TestOrderPickupDetails();
  buildCounterTestOrderPickupDetails++;
  if (buildCounterTestOrderPickupDetails < 3) {
    o.locationCode = 'foo';
    o.pickupLocationAddress = buildTestOrderAddress();
    o.pickupLocationType = 'foo';
    o.pickupPersons = buildUnnamed3835();
  }
  buildCounterTestOrderPickupDetails--;
  return o;
}

void checkTestOrderPickupDetails(api.TestOrderPickupDetails o) {
  buildCounterTestOrderPickupDetails++;
  if (buildCounterTestOrderPickupDetails < 3) {
    unittest.expect(o.locationCode, unittest.equals('foo'));
    checkTestOrderAddress(o.pickupLocationAddress);
    unittest.expect(o.pickupLocationType, unittest.equals('foo'));
    checkUnnamed3835(o.pickupPersons);
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

core.List<core.String> buildUnnamed3836() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3836(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TransitTableTransitTimeRow> buildUnnamed3837() {
  var o = <api.TransitTableTransitTimeRow>[];
  o.add(buildTransitTableTransitTimeRow());
  o.add(buildTransitTableTransitTimeRow());
  return o;
}

void checkUnnamed3837(core.List<api.TransitTableTransitTimeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRow(o[0]);
  checkTransitTableTransitTimeRow(o[1]);
}

core.List<core.String> buildUnnamed3838() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3838(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransitTable = 0;
api.TransitTable buildTransitTable() {
  var o = api.TransitTable();
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    o.postalCodeGroupNames = buildUnnamed3836();
    o.rows = buildUnnamed3837();
    o.transitTimeLabels = buildUnnamed3838();
  }
  buildCounterTransitTable--;
  return o;
}

void checkTransitTable(api.TransitTable o) {
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    checkUnnamed3836(o.postalCodeGroupNames);
    checkUnnamed3837(o.rows);
    checkUnnamed3838(o.transitTimeLabels);
  }
  buildCounterTransitTable--;
}

core.List<api.TransitTableTransitTimeRowTransitTimeValue> buildUnnamed3839() {
  var o = <api.TransitTableTransitTimeRowTransitTimeValue>[];
  o.add(buildTransitTableTransitTimeRowTransitTimeValue());
  o.add(buildTransitTableTransitTimeRowTransitTimeValue());
  return o;
}

void checkUnnamed3839(
    core.List<api.TransitTableTransitTimeRowTransitTimeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRowTransitTimeValue(o[0]);
  checkTransitTableTransitTimeRowTransitTimeValue(o[1]);
}

core.int buildCounterTransitTableTransitTimeRow = 0;
api.TransitTableTransitTimeRow buildTransitTableTransitTimeRow() {
  var o = api.TransitTableTransitTimeRow();
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    o.values = buildUnnamed3839();
  }
  buildCounterTransitTableTransitTimeRow--;
  return o;
}

void checkTransitTableTransitTimeRow(api.TransitTableTransitTimeRow o) {
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    checkUnnamed3839(o.values);
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

core.List<api.UnitInvoiceAdditionalCharge> buildUnnamed3840() {
  var o = <api.UnitInvoiceAdditionalCharge>[];
  o.add(buildUnitInvoiceAdditionalCharge());
  o.add(buildUnitInvoiceAdditionalCharge());
  return o;
}

void checkUnnamed3840(core.List<api.UnitInvoiceAdditionalCharge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceAdditionalCharge(o[0]);
  checkUnitInvoiceAdditionalCharge(o[1]);
}

core.List<api.UnitInvoiceTaxLine> buildUnnamed3841() {
  var o = <api.UnitInvoiceTaxLine>[];
  o.add(buildUnitInvoiceTaxLine());
  o.add(buildUnitInvoiceTaxLine());
  return o;
}

void checkUnnamed3841(core.List<api.UnitInvoiceTaxLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceTaxLine(o[0]);
  checkUnitInvoiceTaxLine(o[1]);
}

core.int buildCounterUnitInvoice = 0;
api.UnitInvoice buildUnitInvoice() {
  var o = api.UnitInvoice();
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    o.additionalCharges = buildUnnamed3840();
    o.unitPrice = buildPrice();
    o.unitPriceTaxes = buildUnnamed3841();
  }
  buildCounterUnitInvoice--;
  return o;
}

void checkUnitInvoice(api.UnitInvoice o) {
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    checkUnnamed3840(o.additionalCharges);
    checkPrice(o.unitPrice);
    checkUnnamed3841(o.unitPriceTaxes);
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
    checkAmount(o.additionalChargeAmount);
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
    checkPrice(o.taxAmount);
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
    checkPrice(o.flatRate);
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

core.List<core.String> buildUnnamed3842() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3842(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3843() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3843(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3844() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3844(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3845() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3845(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3846() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3846(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3847() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3847(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3848() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3848(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3849() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3849(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3850() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3850(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3851() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3851(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3852() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3852(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccount();
      var od = api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountAddress();
      var od = api.AccountAddress.fromJson(o.toJson());
      checkAccountAddress(od);
    });
  });

  unittest.group('obj-schema-AccountAdsLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountAdsLink();
      var od = api.AccountAdsLink.fromJson(o.toJson());
      checkAccountAdsLink(od);
    });
  });

  unittest.group('obj-schema-AccountBusinessInformation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountBusinessInformation();
      var od = api.AccountBusinessInformation.fromJson(o.toJson());
      checkAccountBusinessInformation(od);
    });
  });

  unittest.group('obj-schema-AccountCustomerService', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountCustomerService();
      var od = api.AccountCustomerService.fromJson(o.toJson());
      checkAccountCustomerService(od);
    });
  });

  unittest.group('obj-schema-AccountGoogleMyBusinessLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountGoogleMyBusinessLink();
      var od = api.AccountGoogleMyBusinessLink.fromJson(o.toJson());
      checkAccountGoogleMyBusinessLink(od);
    });
  });

  unittest.group('obj-schema-AccountIdentifier', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountIdentifier();
      var od = api.AccountIdentifier.fromJson(o.toJson());
      checkAccountIdentifier(od);
    });
  });

  unittest.group('obj-schema-AccountStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatus();
      var od = api.AccountStatus.fromJson(o.toJson());
      checkAccountStatus(od);
    });
  });

  unittest.group('obj-schema-AccountStatusAccountLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusAccountLevelIssue();
      var od = api.AccountStatusAccountLevelIssue.fromJson(o.toJson());
      checkAccountStatusAccountLevelIssue(od);
    });
  });

  unittest.group('obj-schema-AccountStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusItemLevelIssue();
      var od = api.AccountStatusItemLevelIssue.fromJson(o.toJson());
      checkAccountStatusItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-AccountStatusProducts', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusProducts();
      var od = api.AccountStatusProducts.fromJson(o.toJson());
      checkAccountStatusProducts(od);
    });
  });

  unittest.group('obj-schema-AccountStatusStatistics', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountStatusStatistics();
      var od = api.AccountStatusStatistics.fromJson(o.toJson());
      checkAccountStatusStatistics(od);
    });
  });

  unittest.group('obj-schema-AccountTax', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountTax();
      var od = api.AccountTax.fromJson(o.toJson());
      checkAccountTax(od);
    });
  });

  unittest.group('obj-schema-AccountTaxTaxRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountTaxTaxRule();
      var od = api.AccountTaxTaxRule.fromJson(o.toJson());
      checkAccountTaxTaxRule(od);
    });
  });

  unittest.group('obj-schema-AccountUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountUser();
      var od = api.AccountUser.fromJson(o.toJson());
      checkAccountUser(od);
    });
  });

  unittest.group('obj-schema-AccountYouTubeChannelLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountYouTubeChannelLink();
      var od = api.AccountYouTubeChannelLink.fromJson(o.toJson());
      checkAccountYouTubeChannelLink(od);
    });
  });

  unittest.group('obj-schema-AccountsAuthInfoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsAuthInfoResponse();
      var od = api.AccountsAuthInfoResponse.fromJson(o.toJson());
      checkAccountsAuthInfoResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsClaimWebsiteResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsClaimWebsiteResponse();
      var od = api.AccountsClaimWebsiteResponse.fromJson(o.toJson());
      checkAccountsClaimWebsiteResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchRequest();
      var od = api.AccountsCustomBatchRequest.fromJson(o.toJson());
      checkAccountsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchRequestEntry();
      var od = api.AccountsCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchRequestEntryLinkRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchRequestEntryLinkRequest();
      var od =
          api.AccountsCustomBatchRequestEntryLinkRequest.fromJson(o.toJson());
      checkAccountsCustomBatchRequestEntryLinkRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchResponse();
      var od = api.AccountsCustomBatchResponse.fromJson(o.toJson());
      checkAccountsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsCustomBatchResponseEntry();
      var od = api.AccountsCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-AccountsLinkRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsLinkRequest();
      var od = api.AccountsLinkRequest.fromJson(o.toJson());
      checkAccountsLinkRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsLinkResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsLinkResponse();
      var od = api.AccountsLinkResponse.fromJson(o.toJson());
      checkAccountsLinkResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsListLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsListLinksResponse();
      var od = api.AccountsListLinksResponse.fromJson(o.toJson());
      checkAccountsListLinksResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsListResponse();
      var od = api.AccountsListResponse.fromJson(o.toJson());
      checkAccountsListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsUpdateLabelsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsUpdateLabelsRequest();
      var od = api.AccountsUpdateLabelsRequest.fromJson(o.toJson());
      checkAccountsUpdateLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-AccountsUpdateLabelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsUpdateLabelsResponse();
      var od = api.AccountsUpdateLabelsResponse.fromJson(o.toJson());
      checkAccountsUpdateLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchRequest();
      var od = api.AccountstatusesCustomBatchRequest.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchRequestEntry();
      var od = api.AccountstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchResponse();
      var od = api.AccountstatusesCustomBatchResponse.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesCustomBatchResponseEntry();
      var od = api.AccountstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-AccountstatusesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountstatusesListResponse();
      var od = api.AccountstatusesListResponse.fromJson(o.toJson());
      checkAccountstatusesListResponse(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchRequest();
      var od = api.AccounttaxCustomBatchRequest.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchRequestEntry();
      var od = api.AccounttaxCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchResponse();
      var od = api.AccounttaxCustomBatchResponse.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-AccounttaxCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxCustomBatchResponseEntry();
      var od = api.AccounttaxCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-AccounttaxListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccounttaxListResponse();
      var od = api.AccounttaxListResponse.fromJson(o.toJson());
      checkAccounttaxListResponse(od);
    });
  });

  unittest.group('obj-schema-Amount', () {
    unittest.test('to-json--from-json', () {
      var o = buildAmount();
      var od = api.Amount.fromJson(o.toJson());
      checkAmount(od);
    });
  });

  unittest.group('obj-schema-BusinessDayConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildBusinessDayConfig();
      var od = api.BusinessDayConfig.fromJson(o.toJson());
      checkBusinessDayConfig(od);
    });
  });

  unittest.group('obj-schema-CarrierRate', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarrierRate();
      var od = api.CarrierRate.fromJson(o.toJson());
      checkCarrierRate(od);
    });
  });

  unittest.group('obj-schema-CarriersCarrier', () {
    unittest.test('to-json--from-json', () {
      var o = buildCarriersCarrier();
      var od = api.CarriersCarrier.fromJson(o.toJson());
      checkCarriersCarrier(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomAttribute();
      var od = api.CustomAttribute.fromJson(o.toJson());
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-CustomerReturnReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomerReturnReason();
      var od = api.CustomerReturnReason.fromJson(o.toJson());
      checkCustomerReturnReason(od);
    });
  });

  unittest.group('obj-schema-CutoffTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildCutoffTime();
      var od = api.CutoffTime.fromJson(o.toJson());
      checkCutoffTime(od);
    });
  });

  unittest.group('obj-schema-Datafeed', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeed();
      var od = api.Datafeed.fromJson(o.toJson());
      checkDatafeed(od);
    });
  });

  unittest.group('obj-schema-DatafeedFetchSchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedFetchSchedule();
      var od = api.DatafeedFetchSchedule.fromJson(o.toJson());
      checkDatafeedFetchSchedule(od);
    });
  });

  unittest.group('obj-schema-DatafeedFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedFormat();
      var od = api.DatafeedFormat.fromJson(o.toJson());
      checkDatafeedFormat(od);
    });
  });

  unittest.group('obj-schema-DatafeedStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedStatus();
      var od = api.DatafeedStatus.fromJson(o.toJson());
      checkDatafeedStatus(od);
    });
  });

  unittest.group('obj-schema-DatafeedStatusError', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedStatusError();
      var od = api.DatafeedStatusError.fromJson(o.toJson());
      checkDatafeedStatusError(od);
    });
  });

  unittest.group('obj-schema-DatafeedStatusExample', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedStatusExample();
      var od = api.DatafeedStatusExample.fromJson(o.toJson());
      checkDatafeedStatusExample(od);
    });
  });

  unittest.group('obj-schema-DatafeedTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedTarget();
      var od = api.DatafeedTarget.fromJson(o.toJson());
      checkDatafeedTarget(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchRequest();
      var od = api.DatafeedsCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchRequestEntry();
      var od = api.DatafeedsCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchResponse();
      var od = api.DatafeedsCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsCustomBatchResponseEntry();
      var od = api.DatafeedsCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedsFetchNowResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsFetchNowResponse();
      var od = api.DatafeedsFetchNowResponse.fromJson(o.toJson());
      checkDatafeedsFetchNowResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedsListResponse();
      var od = api.DatafeedsListResponse.fromJson(o.toJson());
      checkDatafeedsListResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchRequest();
      var od = api.DatafeedstatusesCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchRequestEntry();
      var od = api.DatafeedstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchResponse();
      var od = api.DatafeedstatusesCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesCustomBatchResponseEntry();
      var od =
          api.DatafeedstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-DatafeedstatusesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatafeedstatusesListResponse();
      var od = api.DatafeedstatusesListResponse.fromJson(o.toJson());
      checkDatafeedstatusesListResponse(od);
    });
  });

  unittest.group('obj-schema-DeliveryTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeliveryTime();
      var od = api.DeliveryTime.fromJson(o.toJson());
      checkDeliveryTime(od);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () {
      var o = buildError();
      var od = api.Error.fromJson(o.toJson());
      checkError(od);
    });
  });

  unittest.group('obj-schema-Errors', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrors();
      var od = api.Errors.fromJson(o.toJson());
      checkErrors(od);
    });
  });

  unittest.group('obj-schema-GmbAccounts', () {
    unittest.test('to-json--from-json', () {
      var o = buildGmbAccounts();
      var od = api.GmbAccounts.fromJson(o.toJson());
      checkGmbAccounts(od);
    });
  });

  unittest.group('obj-schema-GmbAccountsGmbAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildGmbAccountsGmbAccount();
      var od = api.GmbAccountsGmbAccount.fromJson(o.toJson());
      checkGmbAccountsGmbAccount(od);
    });
  });

  unittest.group('obj-schema-Headers', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeaders();
      var od = api.Headers.fromJson(o.toJson());
      checkHeaders(od);
    });
  });

  unittest.group('obj-schema-HolidayCutoff', () {
    unittest.test('to-json--from-json', () {
      var o = buildHolidayCutoff();
      var od = api.HolidayCutoff.fromJson(o.toJson());
      checkHolidayCutoff(od);
    });
  });

  unittest.group('obj-schema-HolidaysHoliday', () {
    unittest.test('to-json--from-json', () {
      var o = buildHolidaysHoliday();
      var od = api.HolidaysHoliday.fromJson(o.toJson());
      checkHolidaysHoliday(od);
    });
  });

  unittest.group('obj-schema-Installment', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstallment();
      var od = api.Installment.fromJson(o.toJson());
      checkInstallment(od);
    });
  });

  unittest.group('obj-schema-InvoiceSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvoiceSummary();
      var od = api.InvoiceSummary.fromJson(o.toJson());
      checkInvoiceSummary(od);
    });
  });

  unittest.group('obj-schema-InvoiceSummaryAdditionalChargeSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildInvoiceSummaryAdditionalChargeSummary();
      var od = api.InvoiceSummaryAdditionalChargeSummary.fromJson(o.toJson());
      checkInvoiceSummaryAdditionalChargeSummary(od);
    });
  });

  unittest.group('obj-schema-LiaAboutPageSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaAboutPageSettings();
      var od = api.LiaAboutPageSettings.fromJson(o.toJson());
      checkLiaAboutPageSettings(od);
    });
  });

  unittest.group('obj-schema-LiaCountrySettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaCountrySettings();
      var od = api.LiaCountrySettings.fromJson(o.toJson());
      checkLiaCountrySettings(od);
    });
  });

  unittest.group('obj-schema-LiaInventorySettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaInventorySettings();
      var od = api.LiaInventorySettings.fromJson(o.toJson());
      checkLiaInventorySettings(od);
    });
  });

  unittest.group('obj-schema-LiaOnDisplayToOrderSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaOnDisplayToOrderSettings();
      var od = api.LiaOnDisplayToOrderSettings.fromJson(o.toJson());
      checkLiaOnDisplayToOrderSettings(od);
    });
  });

  unittest.group('obj-schema-LiaPosDataProvider', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaPosDataProvider();
      var od = api.LiaPosDataProvider.fromJson(o.toJson());
      checkLiaPosDataProvider(od);
    });
  });

  unittest.group('obj-schema-LiaSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiaSettings();
      var od = api.LiaSettings.fromJson(o.toJson());
      checkLiaSettings(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchRequest();
      var od = api.LiasettingsCustomBatchRequest.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchRequestEntry();
      var od = api.LiasettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchResponse();
      var od = api.LiasettingsCustomBatchResponse.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsCustomBatchResponseEntry();
      var od = api.LiasettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-LiasettingsGetAccessibleGmbAccountsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsGetAccessibleGmbAccountsResponse();
      var od =
          api.LiasettingsGetAccessibleGmbAccountsResponse.fromJson(o.toJson());
      checkLiasettingsGetAccessibleGmbAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsListPosDataProvidersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsListPosDataProvidersResponse();
      var od = api.LiasettingsListPosDataProvidersResponse.fromJson(o.toJson());
      checkLiasettingsListPosDataProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsListResponse();
      var od = api.LiasettingsListResponse.fromJson(o.toJson());
      checkLiasettingsListResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsRequestGmbAccessResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsRequestGmbAccessResponse();
      var od = api.LiasettingsRequestGmbAccessResponse.fromJson(o.toJson());
      checkLiasettingsRequestGmbAccessResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsRequestInventoryVerificationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsRequestInventoryVerificationResponse();
      var od = api.LiasettingsRequestInventoryVerificationResponse.fromJson(
          o.toJson());
      checkLiasettingsRequestInventoryVerificationResponse(od);
    });
  });

  unittest.group(
      'obj-schema-LiasettingsSetInventoryVerificationContactResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsSetInventoryVerificationContactResponse();
      var od = api.LiasettingsSetInventoryVerificationContactResponse.fromJson(
          o.toJson());
      checkLiasettingsSetInventoryVerificationContactResponse(od);
    });
  });

  unittest.group('obj-schema-LiasettingsSetPosDataProviderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLiasettingsSetPosDataProviderResponse();
      var od = api.LiasettingsSetPosDataProviderResponse.fromJson(o.toJson());
      checkLiasettingsSetPosDataProviderResponse(od);
    });
  });

  unittest.group('obj-schema-LinkService', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinkService();
      var od = api.LinkService.fromJson(o.toJson());
      checkLinkService(od);
    });
  });

  unittest.group('obj-schema-LinkedAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinkedAccount();
      var od = api.LinkedAccount.fromJson(o.toJson());
      checkLinkedAccount(od);
    });
  });

  unittest.group('obj-schema-LocalInventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalInventory();
      var od = api.LocalInventory.fromJson(o.toJson());
      checkLocalInventory(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchRequest();
      var od = api.LocalinventoryCustomBatchRequest.fromJson(o.toJson());
      checkLocalinventoryCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchRequestEntry();
      var od = api.LocalinventoryCustomBatchRequestEntry.fromJson(o.toJson());
      checkLocalinventoryCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchResponse();
      var od = api.LocalinventoryCustomBatchResponse.fromJson(o.toJson());
      checkLocalinventoryCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-LocalinventoryCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalinventoryCustomBatchResponseEntry();
      var od = api.LocalinventoryCustomBatchResponseEntry.fromJson(o.toJson());
      checkLocalinventoryCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-LocationIdSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocationIdSet();
      var od = api.LocationIdSet.fromJson(o.toJson());
      checkLocationIdSet(od);
    });
  });

  unittest.group('obj-schema-LoyaltyPoints', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoyaltyPoints();
      var od = api.LoyaltyPoints.fromJson(o.toJson());
      checkLoyaltyPoints(od);
    });
  });

  unittest.group('obj-schema-MerchantOrderReturn', () {
    unittest.test('to-json--from-json', () {
      var o = buildMerchantOrderReturn();
      var od = api.MerchantOrderReturn.fromJson(o.toJson());
      checkMerchantOrderReturn(od);
    });
  });

  unittest.group('obj-schema-MerchantOrderReturnItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildMerchantOrderReturnItem();
      var od = api.MerchantOrderReturnItem.fromJson(o.toJson());
      checkMerchantOrderReturnItem(od);
    });
  });

  unittest.group('obj-schema-MerchantRejectionReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildMerchantRejectionReason();
      var od = api.MerchantRejectionReason.fromJson(o.toJson());
      checkMerchantRejectionReason(od);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildMinimumOrderValueTable();
      var od = api.MinimumOrderValueTable.fromJson(o.toJson());
      checkMinimumOrderValueTable(od);
    });
  });

  unittest.group('obj-schema-MinimumOrderValueTableStoreCodeSetWithMov', () {
    unittest.test('to-json--from-json', () {
      var o = buildMinimumOrderValueTableStoreCodeSetWithMov();
      var od =
          api.MinimumOrderValueTableStoreCodeSetWithMov.fromJson(o.toJson());
      checkMinimumOrderValueTableStoreCodeSetWithMov(od);
    });
  });

  unittest.group('obj-schema-MonetaryAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonetaryAmount();
      var od = api.MonetaryAmount.fromJson(o.toJson());
      checkMonetaryAmount(od);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrder();
      var od = api.Order.fromJson(o.toJson());
      checkOrder(od);
    });
  });

  unittest.group('obj-schema-OrderAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderAddress();
      var od = api.OrderAddress.fromJson(o.toJson());
      checkOrderAddress(od);
    });
  });

  unittest.group('obj-schema-OrderCancellation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCancellation();
      var od = api.OrderCancellation.fromJson(o.toJson());
      checkOrderCancellation(od);
    });
  });

  unittest.group('obj-schema-OrderCustomer', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCustomer();
      var od = api.OrderCustomer.fromJson(o.toJson());
      checkOrderCustomer(od);
    });
  });

  unittest.group('obj-schema-OrderCustomerLoyaltyInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCustomerLoyaltyInfo();
      var od = api.OrderCustomerLoyaltyInfo.fromJson(o.toJson());
      checkOrderCustomerLoyaltyInfo(od);
    });
  });

  unittest.group('obj-schema-OrderCustomerMarketingRightsInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderCustomerMarketingRightsInfo();
      var od = api.OrderCustomerMarketingRightsInfo.fromJson(o.toJson());
      checkOrderCustomerMarketingRightsInfo(od);
    });
  });

  unittest.group('obj-schema-OrderDeliveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderDeliveryDetails();
      var od = api.OrderDeliveryDetails.fromJson(o.toJson());
      checkOrderDeliveryDetails(od);
    });
  });

  unittest.group('obj-schema-OrderLineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItem();
      var od = api.OrderLineItem.fromJson(o.toJson());
      checkOrderLineItem(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemAdjustment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemAdjustment();
      var od = api.OrderLineItemAdjustment.fromJson(o.toJson());
      checkOrderLineItemAdjustment(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemProduct();
      var od = api.OrderLineItemProduct.fromJson(o.toJson());
      checkOrderLineItemProduct(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemProductFee', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemProductFee();
      var od = api.OrderLineItemProductFee.fromJson(o.toJson());
      checkOrderLineItemProductFee(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemProductVariantAttribute', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemProductVariantAttribute();
      var od = api.OrderLineItemProductVariantAttribute.fromJson(o.toJson());
      checkOrderLineItemProductVariantAttribute(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemReturnInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemReturnInfo();
      var od = api.OrderLineItemReturnInfo.fromJson(o.toJson());
      checkOrderLineItemReturnInfo(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemShippingDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemShippingDetails();
      var od = api.OrderLineItemShippingDetails.fromJson(o.toJson());
      checkOrderLineItemShippingDetails(od);
    });
  });

  unittest.group('obj-schema-OrderLineItemShippingDetailsMethod', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderLineItemShippingDetailsMethod();
      var od = api.OrderLineItemShippingDetailsMethod.fromJson(o.toJson());
      checkOrderLineItemShippingDetailsMethod(od);
    });
  });

  unittest.group('obj-schema-OrderMerchantProvidedAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderMerchantProvidedAnnotation();
      var od = api.OrderMerchantProvidedAnnotation.fromJson(o.toJson());
      checkOrderMerchantProvidedAnnotation(od);
    });
  });

  unittest.group('obj-schema-OrderOrderAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderOrderAnnotation();
      var od = api.OrderOrderAnnotation.fromJson(o.toJson());
      checkOrderOrderAnnotation(od);
    });
  });

  unittest.group('obj-schema-OrderPickupDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPickupDetails();
      var od = api.OrderPickupDetails.fromJson(o.toJson());
      checkOrderPickupDetails(od);
    });
  });

  unittest.group('obj-schema-OrderPickupDetailsCollector', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPickupDetailsCollector();
      var od = api.OrderPickupDetailsCollector.fromJson(o.toJson());
      checkOrderPickupDetailsCollector(od);
    });
  });

  unittest.group('obj-schema-OrderPromotion', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPromotion();
      var od = api.OrderPromotion.fromJson(o.toJson());
      checkOrderPromotion(od);
    });
  });

  unittest.group('obj-schema-OrderPromotionItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderPromotionItem();
      var od = api.OrderPromotionItem.fromJson(o.toJson());
      checkOrderPromotionItem(od);
    });
  });

  unittest.group('obj-schema-OrderRefund', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderRefund();
      var od = api.OrderRefund.fromJson(o.toJson());
      checkOrderRefund(od);
    });
  });

  unittest.group('obj-schema-OrderReportDisbursement', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderReportDisbursement();
      var od = api.OrderReportDisbursement.fromJson(o.toJson());
      checkOrderReportDisbursement(od);
    });
  });

  unittest.group('obj-schema-OrderReportTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderReportTransaction();
      var od = api.OrderReportTransaction.fromJson(o.toJson());
      checkOrderReportTransaction(od);
    });
  });

  unittest.group('obj-schema-OrderReturn', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderReturn();
      var od = api.OrderReturn.fromJson(o.toJson());
      checkOrderReturn(od);
    });
  });

  unittest.group('obj-schema-OrderShipment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderShipment();
      var od = api.OrderShipment.fromJson(o.toJson());
      checkOrderShipment(od);
    });
  });

  unittest.group('obj-schema-OrderShipmentLineItemShipment', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderShipmentLineItemShipment();
      var od = api.OrderShipmentLineItemShipment.fromJson(o.toJson());
      checkOrderShipmentLineItemShipment(od);
    });
  });

  unittest.group('obj-schema-OrderShipmentScheduledDeliveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderShipmentScheduledDeliveryDetails();
      var od = api.OrderShipmentScheduledDeliveryDetails.fromJson(o.toJson());
      checkOrderShipmentScheduledDeliveryDetails(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateChargeInvoiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateChargeInvoiceRequest();
      var od = api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceRequest(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateChargeInvoiceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateChargeInvoiceResponse();
      var od =
          api.OrderinvoicesCreateChargeInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceResponse(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateRefundInvoiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateRefundInvoiceRequest();
      var od = api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceRequest(od);
    });
  });

  unittest.group('obj-schema-OrderinvoicesCreateRefundInvoiceResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderinvoicesCreateRefundInvoiceResponse();
      var od =
          api.OrderinvoicesCreateRefundInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceResponse(od);
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
          od);
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
          od);
    });
  });

  unittest.group('obj-schema-OrderreportsListDisbursementsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreportsListDisbursementsResponse();
      var od = api.OrderreportsListDisbursementsResponse.fromJson(o.toJson());
      checkOrderreportsListDisbursementsResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreportsListTransactionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreportsListTransactionsResponse();
      var od = api.OrderreportsListTransactionsResponse.fromJson(o.toJson());
      checkOrderreportsListTransactionsResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsAcknowledgeRequest();
      var od = api.OrderreturnsAcknowledgeRequest.fromJson(o.toJson());
      checkOrderreturnsAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsAcknowledgeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsAcknowledgeResponse();
      var od = api.OrderreturnsAcknowledgeResponse.fromJson(o.toJson());
      checkOrderreturnsAcknowledgeResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsCreateOrderReturnRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsCreateOrderReturnRequest();
      var od = api.OrderreturnsCreateOrderReturnRequest.fromJson(o.toJson());
      checkOrderreturnsCreateOrderReturnRequest(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsCreateOrderReturnResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsCreateOrderReturnResponse();
      var od = api.OrderreturnsCreateOrderReturnResponse.fromJson(o.toJson());
      checkOrderreturnsCreateOrderReturnResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsLineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsLineItem();
      var od = api.OrderreturnsLineItem.fromJson(o.toJson());
      checkOrderreturnsLineItem(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsListResponse();
      var od = api.OrderreturnsListResponse.fromJson(o.toJson());
      checkOrderreturnsListResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsPartialRefund', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsPartialRefund();
      var od = api.OrderreturnsPartialRefund.fromJson(o.toJson());
      checkOrderreturnsPartialRefund(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsProcessRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsProcessRequest();
      var od = api.OrderreturnsProcessRequest.fromJson(o.toJson());
      checkOrderreturnsProcessRequest(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsProcessResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsProcessResponse();
      var od = api.OrderreturnsProcessResponse.fromJson(o.toJson());
      checkOrderreturnsProcessResponse(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsRefundOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsRefundOperation();
      var od = api.OrderreturnsRefundOperation.fromJson(o.toJson());
      checkOrderreturnsRefundOperation(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsRejectOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsRejectOperation();
      var od = api.OrderreturnsRejectOperation.fromJson(o.toJson());
      checkOrderreturnsRejectOperation(od);
    });
  });

  unittest.group('obj-schema-OrderreturnsReturnItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderreturnsReturnItem();
      var od = api.OrderreturnsReturnItem.fromJson(o.toJson());
      checkOrderreturnsReturnItem(od);
    });
  });

  unittest.group('obj-schema-OrdersAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersAcknowledgeRequest();
      var od = api.OrdersAcknowledgeRequest.fromJson(o.toJson());
      checkOrdersAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersAcknowledgeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersAcknowledgeResponse();
      var od = api.OrdersAcknowledgeResponse.fromJson(o.toJson());
      checkOrdersAcknowledgeResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersAdvanceTestOrderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersAdvanceTestOrderResponse();
      var od = api.OrdersAdvanceTestOrderResponse.fromJson(o.toJson());
      checkOrdersAdvanceTestOrderResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelLineItemRequest();
      var od = api.OrdersCancelLineItemRequest.fromJson(o.toJson());
      checkOrdersCancelLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelLineItemResponse();
      var od = api.OrdersCancelLineItemResponse.fromJson(o.toJson());
      checkOrdersCancelLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelRequest();
      var od = api.OrdersCancelRequest.fromJson(o.toJson());
      checkOrdersCancelRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelResponse();
      var od = api.OrdersCancelResponse.fromJson(o.toJson());
      checkOrdersCancelResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelTestOrderByCustomerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelTestOrderByCustomerRequest();
      var od = api.OrdersCancelTestOrderByCustomerRequest.fromJson(o.toJson());
      checkOrdersCancelTestOrderByCustomerRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCancelTestOrderByCustomerResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCancelTestOrderByCustomerResponse();
      var od = api.OrdersCancelTestOrderByCustomerResponse.fromJson(o.toJson());
      checkOrdersCancelTestOrderByCustomerResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestOrderRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestOrderRequest();
      var od = api.OrdersCreateTestOrderRequest.fromJson(o.toJson());
      checkOrdersCreateTestOrderRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestOrderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestOrderResponse();
      var od = api.OrdersCreateTestOrderResponse.fromJson(o.toJson());
      checkOrdersCreateTestOrderResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestReturnRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestReturnRequest();
      var od = api.OrdersCreateTestReturnRequest.fromJson(o.toJson());
      checkOrdersCreateTestReturnRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersCreateTestReturnResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCreateTestReturnResponse();
      var od = api.OrdersCreateTestReturnResponse.fromJson(o.toJson());
      checkOrdersCreateTestReturnResponse(od);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryCreateTestReturnReturnItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
      var od =
          api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(od);
    });
  });

  unittest.group('obj-schema-OrdersCustomBatchRequestEntryRefundItemItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryRefundItemItem();
      var od =
          api.OrdersCustomBatchRequestEntryRefundItemItem.fromJson(o.toJson());
      checkOrdersCustomBatchRequestEntryRefundItemItem(od);
    });
  });

  unittest.group('obj-schema-OrdersCustomBatchRequestEntryRefundItemShipping',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryRefundItemShipping();
      var od = api.OrdersCustomBatchRequestEntryRefundItemShipping.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryRefundItemShipping(od);
    });
  });

  unittest.group(
      'obj-schema-OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
      var od =
          api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(od);
    });
  });

  unittest.group('obj-schema-OrdersGetByMerchantOrderIdResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersGetByMerchantOrderIdResponse();
      var od = api.OrdersGetByMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersGetByMerchantOrderIdResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersGetTestOrderTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersGetTestOrderTemplateResponse();
      var od = api.OrdersGetTestOrderTemplateResponse.fromJson(o.toJson());
      checkOrdersGetTestOrderTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersInStoreRefundLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersInStoreRefundLineItemRequest();
      var od = api.OrdersInStoreRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersInStoreRefundLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersInStoreRefundLineItemResponse();
      var od = api.OrdersInStoreRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersListResponse();
      var od = api.OrdersListResponse.fromJson(o.toJson());
      checkOrdersListResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundItemRequest();
      var od = api.OrdersRefundItemRequest.fromJson(o.toJson());
      checkOrdersRefundItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundItemResponse();
      var od = api.OrdersRefundItemResponse.fromJson(o.toJson());
      checkOrdersRefundItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundOrderRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundOrderRequest();
      var od = api.OrdersRefundOrderRequest.fromJson(o.toJson());
      checkOrdersRefundOrderRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersRefundOrderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRefundOrderResponse();
      var od = api.OrdersRefundOrderResponse.fromJson(o.toJson());
      checkOrdersRefundOrderResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersRejectReturnLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRejectReturnLineItemRequest();
      var od = api.OrdersRejectReturnLineItemRequest.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersRejectReturnLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersRejectReturnLineItemResponse();
      var od = api.OrdersRejectReturnLineItemResponse.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersReturnRefundLineItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersReturnRefundLineItemRequest();
      var od = api.OrdersReturnRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersReturnRefundLineItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersReturnRefundLineItemResponse();
      var od = api.OrdersReturnRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersSetLineItemMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersSetLineItemMetadataRequest();
      var od = api.OrdersSetLineItemMetadataRequest.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersSetLineItemMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersSetLineItemMetadataResponse();
      var od = api.OrdersSetLineItemMetadataResponse.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersShipLineItemsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersShipLineItemsRequest();
      var od = api.OrdersShipLineItemsRequest.fromJson(o.toJson());
      checkOrdersShipLineItemsRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersShipLineItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersShipLineItemsResponse();
      var od = api.OrdersShipLineItemsResponse.fromJson(o.toJson());
      checkOrdersShipLineItemsResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateLineItemShippingDetailsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateLineItemShippingDetailsRequest();
      var od =
          api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(o.toJson());
      checkOrdersUpdateLineItemShippingDetailsRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateLineItemShippingDetailsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateLineItemShippingDetailsResponse();
      var od =
          api.OrdersUpdateLineItemShippingDetailsResponse.fromJson(o.toJson());
      checkOrdersUpdateLineItemShippingDetailsResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateMerchantOrderIdRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateMerchantOrderIdRequest();
      var od = api.OrdersUpdateMerchantOrderIdRequest.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateMerchantOrderIdResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateMerchantOrderIdResponse();
      var od = api.OrdersUpdateMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateShipmentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateShipmentRequest();
      var od = api.OrdersUpdateShipmentRequest.fromJson(o.toJson());
      checkOrdersUpdateShipmentRequest(od);
    });
  });

  unittest.group('obj-schema-OrdersUpdateShipmentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersUpdateShipmentResponse();
      var od = api.OrdersUpdateShipmentResponse.fromJson(o.toJson());
      checkOrdersUpdateShipmentResponse(od);
    });
  });

  unittest.group('obj-schema-PickupCarrierService', () {
    unittest.test('to-json--from-json', () {
      var o = buildPickupCarrierService();
      var od = api.PickupCarrierService.fromJson(o.toJson());
      checkPickupCarrierService(od);
    });
  });

  unittest.group('obj-schema-PickupServicesPickupService', () {
    unittest.test('to-json--from-json', () {
      var o = buildPickupServicesPickupService();
      var od = api.PickupServicesPickupService.fromJson(o.toJson());
      checkPickupServicesPickupService(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchRequest();
      var od = api.PosCustomBatchRequest.fromJson(o.toJson());
      checkPosCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchRequestEntry();
      var od = api.PosCustomBatchRequestEntry.fromJson(o.toJson());
      checkPosCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchResponse();
      var od = api.PosCustomBatchResponse.fromJson(o.toJson());
      checkPosCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-PosCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosCustomBatchResponseEntry();
      var od = api.PosCustomBatchResponseEntry.fromJson(o.toJson());
      checkPosCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-PosDataProviders', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosDataProviders();
      var od = api.PosDataProviders.fromJson(o.toJson());
      checkPosDataProviders(od);
    });
  });

  unittest.group('obj-schema-PosDataProvidersPosDataProvider', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosDataProvidersPosDataProvider();
      var od = api.PosDataProvidersPosDataProvider.fromJson(o.toJson());
      checkPosDataProvidersPosDataProvider(od);
    });
  });

  unittest.group('obj-schema-PosInventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosInventory();
      var od = api.PosInventory.fromJson(o.toJson());
      checkPosInventory(od);
    });
  });

  unittest.group('obj-schema-PosInventoryRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosInventoryRequest();
      var od = api.PosInventoryRequest.fromJson(o.toJson());
      checkPosInventoryRequest(od);
    });
  });

  unittest.group('obj-schema-PosInventoryResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosInventoryResponse();
      var od = api.PosInventoryResponse.fromJson(o.toJson());
      checkPosInventoryResponse(od);
    });
  });

  unittest.group('obj-schema-PosListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosListResponse();
      var od = api.PosListResponse.fromJson(o.toJson());
      checkPosListResponse(od);
    });
  });

  unittest.group('obj-schema-PosSale', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosSale();
      var od = api.PosSale.fromJson(o.toJson());
      checkPosSale(od);
    });
  });

  unittest.group('obj-schema-PosSaleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosSaleRequest();
      var od = api.PosSaleRequest.fromJson(o.toJson());
      checkPosSaleRequest(od);
    });
  });

  unittest.group('obj-schema-PosSaleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosSaleResponse();
      var od = api.PosSaleResponse.fromJson(o.toJson());
      checkPosSaleResponse(od);
    });
  });

  unittest.group('obj-schema-PosStore', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosStore();
      var od = api.PosStore.fromJson(o.toJson());
      checkPosStore(od);
    });
  });

  unittest.group('obj-schema-PostalCodeGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalCodeGroup();
      var od = api.PostalCodeGroup.fromJson(o.toJson());
      checkPostalCodeGroup(od);
    });
  });

  unittest.group('obj-schema-PostalCodeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalCodeRange();
      var od = api.PostalCodeRange.fromJson(o.toJson());
      checkPostalCodeRange(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrice();
      var od = api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () {
      var o = buildProduct();
      var od = api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProductAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductAmount();
      var od = api.ProductAmount.fromJson(o.toJson());
      checkProductAmount(od);
    });
  });

  unittest.group('obj-schema-ProductProductDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductProductDetail();
      var od = api.ProductProductDetail.fromJson(o.toJson());
      checkProductProductDetail(od);
    });
  });

  unittest.group('obj-schema-ProductShipping', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductShipping();
      var od = api.ProductShipping.fromJson(o.toJson());
      checkProductShipping(od);
    });
  });

  unittest.group('obj-schema-ProductShippingDimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductShippingDimension();
      var od = api.ProductShippingDimension.fromJson(o.toJson());
      checkProductShippingDimension(od);
    });
  });

  unittest.group('obj-schema-ProductShippingWeight', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductShippingWeight();
      var od = api.ProductShippingWeight.fromJson(o.toJson());
      checkProductShippingWeight(od);
    });
  });

  unittest.group('obj-schema-ProductStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductStatus();
      var od = api.ProductStatus.fromJson(o.toJson());
      checkProductStatus(od);
    });
  });

  unittest.group('obj-schema-ProductStatusDestinationStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductStatusDestinationStatus();
      var od = api.ProductStatusDestinationStatus.fromJson(o.toJson());
      checkProductStatusDestinationStatus(od);
    });
  });

  unittest.group('obj-schema-ProductStatusItemLevelIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductStatusItemLevelIssue();
      var od = api.ProductStatusItemLevelIssue.fromJson(o.toJson());
      checkProductStatusItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ProductSubscriptionCost', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductSubscriptionCost();
      var od = api.ProductSubscriptionCost.fromJson(o.toJson());
      checkProductSubscriptionCost(od);
    });
  });

  unittest.group('obj-schema-ProductTax', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductTax();
      var od = api.ProductTax.fromJson(o.toJson());
      checkProductTax(od);
    });
  });

  unittest.group('obj-schema-ProductUnitPricingBaseMeasure', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductUnitPricingBaseMeasure();
      var od = api.ProductUnitPricingBaseMeasure.fromJson(o.toJson());
      checkProductUnitPricingBaseMeasure(od);
    });
  });

  unittest.group('obj-schema-ProductUnitPricingMeasure', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductUnitPricingMeasure();
      var od = api.ProductUnitPricingMeasure.fromJson(o.toJson());
      checkProductUnitPricingMeasure(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchRequest();
      var od = api.ProductsCustomBatchRequest.fromJson(o.toJson());
      checkProductsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchRequestEntry();
      var od = api.ProductsCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchResponse();
      var od = api.ProductsCustomBatchResponse.fromJson(o.toJson());
      checkProductsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ProductsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsCustomBatchResponseEntry();
      var od = api.ProductsCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ProductsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsListResponse();
      var od = api.ProductsListResponse.fromJson(o.toJson());
      checkProductsListResponse(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchRequest();
      var od = api.ProductstatusesCustomBatchRequest.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchRequestEntry();
      var od = api.ProductstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchResponse();
      var od = api.ProductstatusesCustomBatchResponse.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesCustomBatchResponseEntry();
      var od = api.ProductstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ProductstatusesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductstatusesListResponse();
      var od = api.ProductstatusesListResponse.fromJson(o.toJson());
      checkProductstatusesListResponse(od);
    });
  });

  unittest.group('obj-schema-PubsubNotificationSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubNotificationSettings();
      var od = api.PubsubNotificationSettings.fromJson(o.toJson());
      checkPubsubNotificationSettings(od);
    });
  });

  unittest.group('obj-schema-RateGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildRateGroup();
      var od = api.RateGroup.fromJson(o.toJson());
      checkRateGroup(od);
    });
  });

  unittest.group('obj-schema-RefundReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildRefundReason();
      var od = api.RefundReason.fromJson(o.toJson());
      checkRefundReason(od);
    });
  });

  unittest.group('obj-schema-RegionalInventory', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalInventory();
      var od = api.RegionalInventory.fromJson(o.toJson());
      checkRegionalInventory(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchRequest();
      var od = api.RegionalinventoryCustomBatchRequest.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchRequestEntry();
      var od =
          api.RegionalinventoryCustomBatchRequestEntry.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchResponse();
      var od = api.RegionalinventoryCustomBatchResponse.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-RegionalinventoryCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionalinventoryCustomBatchResponseEntry();
      var od =
          api.RegionalinventoryCustomBatchResponseEntry.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnAddress();
      var od = api.ReturnAddress.fromJson(o.toJson());
      checkReturnAddress(od);
    });
  });

  unittest.group('obj-schema-ReturnAddressAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnAddressAddress();
      var od = api.ReturnAddressAddress.fromJson(o.toJson());
      checkReturnAddressAddress(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPolicy();
      var od = api.ReturnPolicy.fromJson(o.toJson());
      checkReturnPolicy(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicyPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPolicyPolicy();
      var od = api.ReturnPolicyPolicy.fromJson(o.toJson());
      checkReturnPolicyPolicy(od);
    });
  });

  unittest.group('obj-schema-ReturnPolicySeasonalOverride', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPolicySeasonalOverride();
      var od = api.ReturnPolicySeasonalOverride.fromJson(o.toJson());
      checkReturnPolicySeasonalOverride(od);
    });
  });

  unittest.group('obj-schema-ReturnPricingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnPricingInfo();
      var od = api.ReturnPricingInfo.fromJson(o.toJson());
      checkReturnPricingInfo(od);
    });
  });

  unittest.group('obj-schema-ReturnShipment', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnShipment();
      var od = api.ReturnShipment.fromJson(o.toJson());
      checkReturnShipment(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchRequest();
      var od = api.ReturnaddressCustomBatchRequest.fromJson(o.toJson());
      checkReturnaddressCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchRequestEntry();
      var od = api.ReturnaddressCustomBatchRequestEntry.fromJson(o.toJson());
      checkReturnaddressCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchResponse();
      var od = api.ReturnaddressCustomBatchResponse.fromJson(o.toJson());
      checkReturnaddressCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressCustomBatchResponseEntry();
      var od = api.ReturnaddressCustomBatchResponseEntry.fromJson(o.toJson());
      checkReturnaddressCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnaddressListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnaddressListResponse();
      var od = api.ReturnaddressListResponse.fromJson(o.toJson());
      checkReturnaddressListResponse(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchRequest();
      var od = api.ReturnpolicyCustomBatchRequest.fromJson(o.toJson());
      checkReturnpolicyCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchRequestEntry();
      var od = api.ReturnpolicyCustomBatchRequestEntry.fromJson(o.toJson());
      checkReturnpolicyCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchResponse();
      var od = api.ReturnpolicyCustomBatchResponse.fromJson(o.toJson());
      checkReturnpolicyCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyCustomBatchResponseEntry();
      var od = api.ReturnpolicyCustomBatchResponseEntry.fromJson(o.toJson());
      checkReturnpolicyCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ReturnpolicyListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReturnpolicyListResponse();
      var od = api.ReturnpolicyListResponse.fromJson(o.toJson());
      checkReturnpolicyListResponse(od);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () {
      var o = buildRow();
      var od = api.Row.fromJson(o.toJson());
      checkRow(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () {
      var o = buildService();
      var od = api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group('obj-schema-SettlementReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementReport();
      var od = api.SettlementReport.fromJson(o.toJson());
      checkSettlementReport(od);
    });
  });

  unittest.group('obj-schema-SettlementTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransaction();
      var od = api.SettlementTransaction.fromJson(o.toJson());
      checkSettlementTransaction(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionAmount', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionAmount();
      var od = api.SettlementTransactionAmount.fromJson(o.toJson());
      checkSettlementTransactionAmount(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionAmountCommission', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionAmountCommission();
      var od = api.SettlementTransactionAmountCommission.fromJson(o.toJson());
      checkSettlementTransactionAmountCommission(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionIdentifiers', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionIdentifiers();
      var od = api.SettlementTransactionIdentifiers.fromJson(o.toJson());
      checkSettlementTransactionIdentifiers(od);
    });
  });

  unittest.group('obj-schema-SettlementTransactionTransaction', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementTransactionTransaction();
      var od = api.SettlementTransactionTransaction.fromJson(o.toJson());
      checkSettlementTransactionTransaction(od);
    });
  });

  unittest.group('obj-schema-SettlementreportsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementreportsListResponse();
      var od = api.SettlementreportsListResponse.fromJson(o.toJson());
      checkSettlementreportsListResponse(od);
    });
  });

  unittest.group('obj-schema-SettlementtransactionsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettlementtransactionsListResponse();
      var od = api.SettlementtransactionsListResponse.fromJson(o.toJson());
      checkSettlementtransactionsListResponse(od);
    });
  });

  unittest.group('obj-schema-ShipmentInvoice', () {
    unittest.test('to-json--from-json', () {
      var o = buildShipmentInvoice();
      var od = api.ShipmentInvoice.fromJson(o.toJson());
      checkShipmentInvoice(od);
    });
  });

  unittest.group('obj-schema-ShipmentInvoiceLineItemInvoice', () {
    unittest.test('to-json--from-json', () {
      var o = buildShipmentInvoiceLineItemInvoice();
      var od = api.ShipmentInvoiceLineItemInvoice.fromJson(o.toJson());
      checkShipmentInvoiceLineItemInvoice(od);
    });
  });

  unittest.group('obj-schema-ShipmentTrackingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildShipmentTrackingInfo();
      var od = api.ShipmentTrackingInfo.fromJson(o.toJson());
      checkShipmentTrackingInfo(od);
    });
  });

  unittest.group('obj-schema-ShippingSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingSettings();
      var od = api.ShippingSettings.fromJson(o.toJson());
      checkShippingSettings(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchRequest();
      var od = api.ShippingsettingsCustomBatchRequest.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequest(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchRequestEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchRequestEntry();
      var od = api.ShippingsettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchResponse();
      var od = api.ShippingsettingsCustomBatchResponse.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponse(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsCustomBatchResponseEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsCustomBatchResponseEntry();
      var od =
          api.ShippingsettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsGetSupportedCarriersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsGetSupportedCarriersResponse();
      var od =
          api.ShippingsettingsGetSupportedCarriersResponse.fromJson(o.toJson());
      checkShippingsettingsGetSupportedCarriersResponse(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsGetSupportedHolidaysResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsGetSupportedHolidaysResponse();
      var od =
          api.ShippingsettingsGetSupportedHolidaysResponse.fromJson(o.toJson());
      checkShippingsettingsGetSupportedHolidaysResponse(od);
    });
  });

  unittest.group(
      'obj-schema-ShippingsettingsGetSupportedPickupServicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsGetSupportedPickupServicesResponse();
      var od = api.ShippingsettingsGetSupportedPickupServicesResponse.fromJson(
          o.toJson());
      checkShippingsettingsGetSupportedPickupServicesResponse(od);
    });
  });

  unittest.group('obj-schema-ShippingsettingsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildShippingsettingsListResponse();
      var od = api.ShippingsettingsListResponse.fromJson(o.toJson());
      checkShippingsettingsListResponse(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () {
      var o = buildTable();
      var od = api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TestOrder', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrder();
      var od = api.TestOrder.fromJson(o.toJson());
      checkTestOrder(od);
    });
  });

  unittest.group('obj-schema-TestOrderAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderAddress();
      var od = api.TestOrderAddress.fromJson(o.toJson());
      checkTestOrderAddress(od);
    });
  });

  unittest.group('obj-schema-TestOrderDeliveryDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderDeliveryDetails();
      var od = api.TestOrderDeliveryDetails.fromJson(o.toJson());
      checkTestOrderDeliveryDetails(od);
    });
  });

  unittest.group('obj-schema-TestOrderLineItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderLineItem();
      var od = api.TestOrderLineItem.fromJson(o.toJson());
      checkTestOrderLineItem(od);
    });
  });

  unittest.group('obj-schema-TestOrderLineItemProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderLineItemProduct();
      var od = api.TestOrderLineItemProduct.fromJson(o.toJson());
      checkTestOrderLineItemProduct(od);
    });
  });

  unittest.group('obj-schema-TestOrderPickupDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderPickupDetails();
      var od = api.TestOrderPickupDetails.fromJson(o.toJson());
      checkTestOrderPickupDetails(od);
    });
  });

  unittest.group('obj-schema-TestOrderPickupDetailsPickupPerson', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestOrderPickupDetailsPickupPerson();
      var od = api.TestOrderPickupDetailsPickupPerson.fromJson(o.toJson());
      checkTestOrderPickupDetailsPickupPerson(od);
    });
  });

  unittest.group('obj-schema-TransitTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitTable();
      var od = api.TransitTable.fromJson(o.toJson());
      checkTransitTable(od);
    });
  });

  unittest.group('obj-schema-TransitTableTransitTimeRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitTableTransitTimeRow();
      var od = api.TransitTableTransitTimeRow.fromJson(o.toJson());
      checkTransitTableTransitTimeRow(od);
    });
  });

  unittest.group('obj-schema-TransitTableTransitTimeRowTransitTimeValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransitTableTransitTimeRowTransitTimeValue();
      var od =
          api.TransitTableTransitTimeRowTransitTimeValue.fromJson(o.toJson());
      checkTransitTableTransitTimeRowTransitTimeValue(od);
    });
  });

  unittest.group('obj-schema-UnitInvoice', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnitInvoice();
      var od = api.UnitInvoice.fromJson(o.toJson());
      checkUnitInvoice(od);
    });
  });

  unittest.group('obj-schema-UnitInvoiceAdditionalCharge', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnitInvoiceAdditionalCharge();
      var od = api.UnitInvoiceAdditionalCharge.fromJson(o.toJson());
      checkUnitInvoiceAdditionalCharge(od);
    });
  });

  unittest.group('obj-schema-UnitInvoiceTaxLine', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnitInvoiceTaxLine();
      var od = api.UnitInvoiceTaxLine.fromJson(o.toJson());
      checkUnitInvoiceTaxLine(od);
    });
  });

  unittest.group('obj-schema-Value', () {
    unittest.test('to-json--from-json', () {
      var o = buildValue();
      var od = api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group('obj-schema-Weight', () {
    unittest.test('to-json--from-json', () {
      var o = buildWeight();
      var od = api.Weight.fromJson(o.toJson());
      checkWeight(od);
    });
  });

  unittest.group('resource-AccountsResourceApi', () {
    unittest.test('method--authinfo', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("accounts/authinfo"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsAuthInfoResponse(response);
      })));
    });

    unittest.test('method--claimwebsite', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsClaimWebsiteResponse(response);
      })));
    });

    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
      var arg_request = buildAccountsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountsCustomBatchRequest.fromJson(json);
        checkAccountsCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("accounts/batch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsCustomBatchResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccount(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccount(response);
      })));
    });

    unittest.test('method--link', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
      var arg_request = buildAccountsLinkRequest();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountsLinkRequest.fromJson(json);
        checkAccountsLinkRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsLinkResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsListResponse(response);
      })));
    });

    unittest.test('method--listlinks', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsListLinksResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccount(response);
      })));
    });

    unittest.test('method--updatelabels', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.ContentApi(mock).accounts;
      var arg_request = buildAccountsUpdateLabelsRequest();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountsUpdateLabelsRequest.fromJson(json);
        checkAccountsUpdateLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountsUpdateLabelsResponse(response);
      })));
    });
  });

  unittest.group('resource-AccountstatusesResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.AccountstatusesResourceApi res = api.ContentApi(mock).accountstatuses;
      var arg_request = buildAccountstatusesCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountstatusesCustomBatchRequest.fromJson(json);
        checkAccountstatusesCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("accountstatuses/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountstatusesResourceApi res = api.ContentApi(mock).accountstatuses;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_destinations = buildUnnamed3842();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountStatus(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountstatusesResourceApi res = api.ContentApi(mock).accountstatuses;
      var arg_merchantId = 'foo';
      var arg_destinations = buildUnnamed3843();
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountstatusesListResponse(response);
      })));
    });
  });

  unittest.group('resource-AccounttaxResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.AccounttaxResourceApi res = api.ContentApi(mock).accounttax;
      var arg_request = buildAccounttaxCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccounttaxCustomBatchRequest.fromJson(json);
        checkAccounttaxCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("accounttax/batch"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccounttaxCustomBatchResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccounttaxResourceApi res = api.ContentApi(mock).accounttax;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountTax(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccounttaxResourceApi res = api.ContentApi(mock).accounttax;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccounttaxListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AccounttaxResourceApi res = api.ContentApi(mock).accounttax;
      var arg_request = buildAccountTax();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountTax.fromJson(json);
        checkAccountTax(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkAccountTax(response);
      })));
    });
  });

  unittest.group('resource-DatafeedsResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeedsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatafeedsCustomBatchRequest.fromJson(json);
        checkDatafeedsCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("datafeeds/batch"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeedsCustomBatchResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeedsFetchNowResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeed(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeed(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeedsListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.DatafeedsResourceApi res = api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = 'foo';
      var arg_datafeedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeed(response);
      })));
    });
  });

  unittest.group('resource-DatafeedstatusesResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          api.ContentApi(mock).datafeedstatuses;
      var arg_request = buildDatafeedstatusesCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DatafeedstatusesCustomBatchRequest.fromJson(json);
        checkDatafeedstatusesCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("datafeedstatuses/batch"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeedstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          api.ContentApi(mock).datafeedstatuses;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeedStatus(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          api.ContentApi(mock).datafeedstatuses;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDatafeedstatusesListResponse(response);
      })));
    });
  });

  unittest.group('resource-LiasettingsResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
      var arg_request = buildLiasettingsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiasettingsCustomBatchRequest.fromJson(json);
        checkLiasettingsCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("liasettings/batch"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsCustomBatchResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiaSettings(response);
      })));
    });

    unittest.test('method--getaccessiblegmbaccounts', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsGetAccessibleGmbAccountsResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsListResponse(response);
      })));
    });

    unittest.test('method--listposdataproviders', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("liasettings/posdataproviders"));
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsListPosDataProvidersResponse(response);
      })));
    });

    unittest.test('method--requestgmbaccess', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsRequestGmbAccessResponse(response);
      })));
    });

    unittest.test('method--requestinventoryverification', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsRequestInventoryVerificationResponse(response);
      })));
    });

    unittest.test('method--setinventoryverificationcontact', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_contactEmail = 'foo';
      var arg_contactName = 'foo';
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["contactEmail"].first, unittest.equals(arg_contactEmail));
        unittest.expect(
            queryMap["contactName"].first, unittest.equals(arg_contactName));
        unittest.expect(
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
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
              arg_contactEmail, arg_contactName, arg_country, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsSetInventoryVerificationContactResponse(response);
      })));
    });

    unittest.test('method--setposdataprovider', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiasettingsSetPosDataProviderResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.LiasettingsResourceApi res = api.ContentApi(mock).liasettings;
      var arg_request = buildLiaSettings();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LiaSettings.fromJson(json);
        checkLiaSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLiaSettings(response);
      })));
    });
  });

  unittest.group('resource-LocalinventoryResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.LocalinventoryResourceApi res = api.ContentApi(mock).localinventory;
      var arg_request = buildLocalinventoryCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocalinventoryCustomBatchRequest.fromJson(json);
        checkLocalinventoryCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("localinventory/batch"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLocalinventoryCustomBatchResponse(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.LocalinventoryResourceApi res = api.ContentApi(mock).localinventory;
      var arg_request = buildLocalInventory();
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LocalInventory.fromJson(json);
        checkLocalInventory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLocalInventory(response);
      })));
    });
  });

  unittest.group('resource-OrderinvoicesResourceApi', () {
    unittest.test('method--createchargeinvoice', () {
      var mock = HttpServerMock();
      api.OrderinvoicesResourceApi res = api.ContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateChargeInvoiceRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(json);
        checkOrderinvoicesCreateChargeInvoiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrderinvoicesCreateChargeInvoiceResponse(response);
      })));
    });

    unittest.test('method--createrefundinvoice', () {
      var mock = HttpServerMock();
      api.OrderinvoicesResourceApi res = api.ContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateRefundInvoiceRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(json);
        checkOrderinvoicesCreateRefundInvoiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrderinvoicesCreateRefundInvoiceResponse(response);
      })));
    });
  });

  unittest.group('resource-OrderreportsResourceApi', () {
    unittest.test('method--listdisbursements', () {
      var mock = HttpServerMock();
      api.OrderreportsResourceApi res = api.ContentApi(mock).orderreports;
      var arg_merchantId = 'foo';
      var arg_disbursementStartDate = 'foo';
      var arg_disbursementEndDate = 'foo';
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["disbursementStartDate"].first,
            unittest.equals(arg_disbursementStartDate));
        unittest.expect(queryMap["disbursementEndDate"].first,
            unittest.equals(arg_disbursementEndDate));
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
          .listdisbursements(arg_merchantId, arg_disbursementStartDate,
              disbursementEndDate: arg_disbursementEndDate,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreportsListDisbursementsResponse(response);
      })));
    });

    unittest.test('method--listtransactions', () {
      var mock = HttpServerMock();
      api.OrderreportsResourceApi res = api.ContentApi(mock).orderreports;
      var arg_merchantId = 'foo';
      var arg_disbursementId = 'foo';
      var arg_transactionStartDate = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_transactionEndDate = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["transactionStartDate"].first,
            unittest.equals(arg_transactionStartDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["transactionEndDate"].first,
            unittest.equals(arg_transactionEndDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOrderreportsListTransactionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listtransactions(
              arg_merchantId, arg_disbursementId, arg_transactionStartDate,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              transactionEndDate: arg_transactionEndDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreportsListTransactionsResponse(response);
      })));
    });
  });

  unittest.group('resource-OrderreturnsResourceApi', () {
    unittest.test('method--acknowledge', () {
      var mock = HttpServerMock();
      api.OrderreturnsResourceApi res = api.ContentApi(mock).orderreturns;
      var arg_request = buildOrderreturnsAcknowledgeRequest();
      var arg_merchantId = 'foo';
      var arg_returnId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderreturnsAcknowledgeRequest.fromJson(json);
        checkOrderreturnsAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrderreturnsAcknowledgeResponse(response);
      })));
    });

    unittest.test('method--createorderreturn', () {
      var mock = HttpServerMock();
      api.OrderreturnsResourceApi res = api.ContentApi(mock).orderreturns;
      var arg_request = buildOrderreturnsCreateOrderReturnRequest();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderreturnsCreateOrderReturnRequest.fromJson(json);
        checkOrderreturnsCreateOrderReturnRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrderreturnsCreateOrderReturnResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OrderreturnsResourceApi res = api.ContentApi(mock).orderreturns;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkMerchantOrderReturn(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OrderreturnsResourceApi res = api.ContentApi(mock).orderreturns;
      var arg_merchantId = 'foo';
      var arg_acknowledged = true;
      var arg_createdEndDate = 'foo';
      var arg_createdStartDate = 'foo';
      var arg_googleOrderIds = buildUnnamed3844();
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_shipmentStates = buildUnnamed3845();
      var arg_shipmentStatus = buildUnnamed3846();
      var arg_shipmentTrackingNumbers = buildUnnamed3847();
      var arg_shipmentTypes = buildUnnamed3848();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrderreturnsListResponse(response);
      })));
    });

    unittest.test('method--process', () {
      var mock = HttpServerMock();
      api.OrderreturnsResourceApi res = api.ContentApi(mock).orderreturns;
      var arg_request = buildOrderreturnsProcessRequest();
      var arg_merchantId = 'foo';
      var arg_returnId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrderreturnsProcessRequest.fromJson(json);
        checkOrderreturnsProcessRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrderreturnsProcessResponse(response);
      })));
    });
  });

  unittest.group('resource-OrdersResourceApi', () {
    unittest.test('method--acknowledge', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersAcknowledgeRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersAcknowledgeRequest.fromJson(json);
        checkOrdersAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersAcknowledgeResponse(response);
      })));
    });

    unittest.test('method--advancetestorder', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersAdvanceTestOrderResponse(response);
      })));
    });

    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCancelRequest.fromJson(json);
        checkOrdersCancelRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersCancelResponse(response);
      })));
    });

    unittest.test('method--cancellineitem', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCancelLineItemRequest.fromJson(json);
        checkOrdersCancelLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersCancelLineItemResponse(response);
      })));
    });

    unittest.test('method--canceltestorderbycustomer', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelTestOrderByCustomerRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCancelTestOrderByCustomerRequest.fromJson(json);
        checkOrdersCancelTestOrderByCustomerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersCancelTestOrderByCustomerResponse(response);
      })));
    });

    unittest.test('method--createtestorder', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestOrderRequest();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCreateTestOrderRequest.fromJson(json);
        checkOrdersCreateTestOrderRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersCreateTestOrderResponse(response);
      })));
    });

    unittest.test('method--createtestreturn', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestReturnRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersCreateTestReturnRequest.fromJson(json);
        checkOrdersCreateTestReturnRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersCreateTestReturnResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrder(response);
      })));
    });

    unittest.test('method--getbymerchantorderid', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersGetByMerchantOrderIdResponse(response);
      })));
    });

    unittest.test('method--gettestordertemplate', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersGetTestOrderTemplateResponse(response);
      })));
    });

    unittest.test('method--instorerefundlineitem', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersInStoreRefundLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersInStoreRefundLineItemRequest.fromJson(json);
        checkOrdersInStoreRefundLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersInStoreRefundLineItemResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_merchantId = 'foo';
      var arg_acknowledged = true;
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_placedDateEnd = 'foo';
      var arg_placedDateStart = 'foo';
      var arg_statuses = buildUnnamed3849();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersListResponse(response);
      })));
    });

    unittest.test('method--refunditem', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersRefundItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersRefundItemRequest.fromJson(json);
        checkOrdersRefundItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersRefundItemResponse(response);
      })));
    });

    unittest.test('method--refundorder', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersRefundOrderRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersRefundOrderRequest.fromJson(json);
        checkOrdersRefundOrderRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersRefundOrderResponse(response);
      })));
    });

    unittest.test('method--rejectreturnlineitem', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersRejectReturnLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersRejectReturnLineItemRequest.fromJson(json);
        checkOrdersRejectReturnLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersRejectReturnLineItemResponse(response);
      })));
    });

    unittest.test('method--returnrefundlineitem', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersReturnRefundLineItemRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersReturnRefundLineItemRequest.fromJson(json);
        checkOrdersReturnRefundLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersReturnRefundLineItemResponse(response);
      })));
    });

    unittest.test('method--setlineitemmetadata', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersSetLineItemMetadataRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersSetLineItemMetadataRequest.fromJson(json);
        checkOrdersSetLineItemMetadataRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersSetLineItemMetadataResponse(response);
      })));
    });

    unittest.test('method--shiplineitems', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersShipLineItemsRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersShipLineItemsRequest.fromJson(json);
        checkOrdersShipLineItemsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersShipLineItemsResponse(response);
      })));
    });

    unittest.test('method--updatelineitemshippingdetails', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateLineItemShippingDetailsRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(json);
        checkOrdersUpdateLineItemShippingDetailsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersUpdateLineItemShippingDetailsResponse(response);
      })));
    });

    unittest.test('method--updatemerchantorderid', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateMerchantOrderIdRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersUpdateMerchantOrderIdRequest.fromJson(json);
        checkOrdersUpdateMerchantOrderIdRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersUpdateMerchantOrderIdResponse(response);
      })));
    });

    unittest.test('method--updateshipment', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateShipmentRequest();
      var arg_merchantId = 'foo';
      var arg_orderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.OrdersUpdateShipmentRequest.fromJson(json);
        checkOrdersUpdateShipmentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkOrdersUpdateShipmentResponse(response);
      })));
    });
  });

  unittest.group('resource-PosResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.PosResourceApi res = api.ContentApi(mock).pos;
      var arg_request = buildPosCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosCustomBatchRequest.fromJson(json);
        checkPosCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("pos/batch"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPosCustomBatchResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PosResourceApi res = api.ContentApi(mock).pos;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
      api.PosResourceApi res = api.ContentApi(mock).pos;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPosStore(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PosResourceApi res = api.ContentApi(mock).pos;
      var arg_request = buildPosStore();
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosStore.fromJson(json);
        checkPosStore(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPosStore(response);
      })));
    });

    unittest.test('method--inventory', () {
      var mock = HttpServerMock();
      api.PosResourceApi res = api.ContentApi(mock).pos;
      var arg_request = buildPosInventoryRequest();
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosInventoryRequest.fromJson(json);
        checkPosInventoryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPosInventoryResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PosResourceApi res = api.ContentApi(mock).pos;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPosListResponse(response);
      })));
    });

    unittest.test('method--sale', () {
      var mock = HttpServerMock();
      api.PosResourceApi res = api.ContentApi(mock).pos;
      var arg_request = buildPosSaleRequest();
      var arg_merchantId = 'foo';
      var arg_targetMerchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PosSaleRequest.fromJson(json);
        checkPosSaleRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPosSaleResponse(response);
      })));
    });
  });

  unittest.group('resource-ProductsResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.ProductsResourceApi res = api.ContentApi(mock).products;
      var arg_request = buildProductsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductsCustomBatchRequest.fromJson(json);
        checkProductsCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("products/batch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProductsCustomBatchResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProductsResourceApi res = api.ContentApi(mock).products;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
      api.ProductsResourceApi res = api.ContentApi(mock).products;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProduct(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ProductsResourceApi res = api.ContentApi(mock).products;
      var arg_request = buildProduct();
      var arg_merchantId = 'foo';
      var arg_feedId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Product.fromJson(json);
        checkProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProduct(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProductsResourceApi res = api.ContentApi(mock).products;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProductsListResponse(response);
      })));
    });
  });

  unittest.group('resource-ProductstatusesResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.ProductstatusesResourceApi res = api.ContentApi(mock).productstatuses;
      var arg_request = buildProductstatusesCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductstatusesCustomBatchRequest.fromJson(json);
        checkProductstatusesCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("productstatuses/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProductstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProductstatusesResourceApi res = api.ContentApi(mock).productstatuses;
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_destinations = buildUnnamed3850();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProductStatus(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProductstatusesResourceApi res = api.ContentApi(mock).productstatuses;
      var arg_merchantId = 'foo';
      var arg_destinations = buildUnnamed3851();
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkProductstatusesListResponse(response);
      })));
    });
  });

  unittest.group('resource-PubsubnotificationsettingsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PubsubnotificationsettingsResourceApi res =
          api.ContentApi(mock).pubsubnotificationsettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPubsubNotificationSettings(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PubsubnotificationsettingsResourceApi res =
          api.ContentApi(mock).pubsubnotificationsettings;
      var arg_request = buildPubsubNotificationSettings();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PubsubNotificationSettings.fromJson(json);
        checkPubsubNotificationSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkPubsubNotificationSettings(response);
      })));
    });
  });

  unittest.group('resource-RegionalinventoryResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.RegionalinventoryResourceApi res =
          api.ContentApi(mock).regionalinventory;
      var arg_request = buildRegionalinventoryCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RegionalinventoryCustomBatchRequest.fromJson(json);
        checkRegionalinventoryCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("regionalinventory/batch"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkRegionalinventoryCustomBatchResponse(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.RegionalinventoryResourceApi res =
          api.ContentApi(mock).regionalinventory;
      var arg_request = buildRegionalInventory();
      var arg_merchantId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RegionalInventory.fromJson(json);
        checkRegionalInventory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkRegionalInventory(response);
      })));
    });
  });

  unittest.group('resource-ReturnaddressResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.ReturnaddressResourceApi res = api.ContentApi(mock).returnaddress;
      var arg_request = buildReturnaddressCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnaddressCustomBatchRequest.fromJson(json);
        checkReturnaddressCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("returnaddress/batch"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnaddressCustomBatchResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ReturnaddressResourceApi res = api.ContentApi(mock).returnaddress;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
      api.ReturnaddressResourceApi res = api.ContentApi(mock).returnaddress;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnAddress(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ReturnaddressResourceApi res = api.ContentApi(mock).returnaddress;
      var arg_request = buildReturnAddress();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnAddress.fromJson(json);
        checkReturnAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnAddress(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ReturnaddressResourceApi res = api.ContentApi(mock).returnaddress;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnaddressListResponse(response);
      })));
    });
  });

  unittest.group('resource-ReturnpolicyResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.ReturnpolicyResourceApi res = api.ContentApi(mock).returnpolicy;
      var arg_request = buildReturnpolicyCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnpolicyCustomBatchRequest.fromJson(json);
        checkReturnpolicyCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("returnpolicy/batch"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnpolicyCustomBatchResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ReturnpolicyResourceApi res = api.ContentApi(mock).returnpolicy;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
      api.ReturnpolicyResourceApi res = api.ContentApi(mock).returnpolicy;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnPolicy(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ReturnpolicyResourceApi res = api.ContentApi(mock).returnpolicy;
      var arg_request = buildReturnPolicy();
      var arg_merchantId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReturnPolicy.fromJson(json);
        checkReturnPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnPolicy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ReturnpolicyResourceApi res = api.ContentApi(mock).returnpolicy;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReturnpolicyListResponse(response);
      })));
    });
  });

  unittest.group('resource-SettlementreportsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SettlementreportsResourceApi res =
          api.ContentApi(mock).settlementreports;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSettlementReport(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SettlementreportsResourceApi res =
          api.ContentApi(mock).settlementreports;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSettlementreportsListResponse(response);
      })));
    });
  });

  unittest.group('resource-SettlementtransactionsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SettlementtransactionsResourceApi res =
          api.ContentApi(mock).settlementtransactions;
      var arg_merchantId = 'foo';
      var arg_settlementId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_transactionIds = buildUnnamed3852();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSettlementtransactionsListResponse(response);
      })));
    });
  });

  unittest.group('resource-ShippingsettingsResourceApi', () {
    unittest.test('method--custombatch', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingsettingsCustomBatchRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ShippingsettingsCustomBatchRequest.fromJson(json);
        checkShippingsettingsCustomBatchRequest(obj);

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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("shippingsettings/batch"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingsettingsCustomBatchResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingSettings(response);
      })));
    });

    unittest.test('method--getsupportedcarriers', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingsettingsGetSupportedCarriersResponse(response);
      })));
    });

    unittest.test('method--getsupportedholidays', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingsettingsGetSupportedHolidaysResponse(response);
      })));
    });

    unittest.test('method--getsupportedpickupservices', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingsettingsGetSupportedPickupServicesResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
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

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingsettingsListResponse(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ShippingsettingsResourceApi res =
          api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingSettings();
      var arg_merchantId = 'foo';
      var arg_accountId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ShippingSettings.fromJson(json);
        checkShippingSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkShippingSettings(response);
      })));
    });
  });
}
