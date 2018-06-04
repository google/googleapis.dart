library googleapis.content.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/content/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed2676() {
  var o = new core.List<api.AccountAdwordsLink>();
  o.add(buildAccountAdwordsLink());
  o.add(buildAccountAdwordsLink());
  return o;
}

checkUnnamed2676(core.List<api.AccountAdwordsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdwordsLink(o[0]);
  checkAccountAdwordsLink(o[1]);
}

buildUnnamed2677() {
  var o = new core.List<api.AccountUser>();
  o.add(buildAccountUser());
  o.add(buildAccountUser());
  return o;
}

checkUnnamed2677(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0]);
  checkAccountUser(o[1]);
}

buildUnnamed2678() {
  var o = new core.List<api.AccountYouTubeChannelLink>();
  o.add(buildAccountYouTubeChannelLink());
  o.add(buildAccountYouTubeChannelLink());
  return o;
}

checkUnnamed2678(core.List<api.AccountYouTubeChannelLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountYouTubeChannelLink(o[0]);
  checkAccountYouTubeChannelLink(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.adultContent = true;
    o.adwordsLinks = buildUnnamed2676();
    o.googleMyBusinessLink = buildAccountGoogleMyBusinessLink();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.reviewsUrl = "foo";
    o.sellerId = "foo";
    o.users = buildUnnamed2677();
    o.websiteUrl = "foo";
    o.youtubeChannelLinks = buildUnnamed2678();
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.adultContent, unittest.isTrue);
    checkUnnamed2676(o.adwordsLinks);
    checkAccountGoogleMyBusinessLink(o.googleMyBusinessLink);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reviewsUrl, unittest.equals('foo'));
    unittest.expect(o.sellerId, unittest.equals('foo'));
    checkUnnamed2677(o.users);
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
    checkUnnamed2678(o.youtubeChannelLinks);
  }
  buildCounterAccount--;
}

core.int buildCounterAccountAdwordsLink = 0;
buildAccountAdwordsLink() {
  var o = new api.AccountAdwordsLink();
  buildCounterAccountAdwordsLink++;
  if (buildCounterAccountAdwordsLink < 3) {
    o.adwordsId = "foo";
    o.status = "foo";
  }
  buildCounterAccountAdwordsLink--;
  return o;
}

checkAccountAdwordsLink(api.AccountAdwordsLink o) {
  buildCounterAccountAdwordsLink++;
  if (buildCounterAccountAdwordsLink < 3) {
    unittest.expect(o.adwordsId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountAdwordsLink--;
}

core.int buildCounterAccountGoogleMyBusinessLink = 0;
buildAccountGoogleMyBusinessLink() {
  var o = new api.AccountGoogleMyBusinessLink();
  buildCounterAccountGoogleMyBusinessLink++;
  if (buildCounterAccountGoogleMyBusinessLink < 3) {
    o.gmbEmail = "foo";
    o.status = "foo";
  }
  buildCounterAccountGoogleMyBusinessLink--;
  return o;
}

checkAccountGoogleMyBusinessLink(api.AccountGoogleMyBusinessLink o) {
  buildCounterAccountGoogleMyBusinessLink++;
  if (buildCounterAccountGoogleMyBusinessLink < 3) {
    unittest.expect(o.gmbEmail, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountGoogleMyBusinessLink--;
}

core.int buildCounterAccountIdentifier = 0;
buildAccountIdentifier() {
  var o = new api.AccountIdentifier();
  buildCounterAccountIdentifier++;
  if (buildCounterAccountIdentifier < 3) {
    o.aggregatorId = "foo";
    o.merchantId = "foo";
  }
  buildCounterAccountIdentifier--;
  return o;
}

checkAccountIdentifier(api.AccountIdentifier o) {
  buildCounterAccountIdentifier++;
  if (buildCounterAccountIdentifier < 3) {
    unittest.expect(o.aggregatorId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
  }
  buildCounterAccountIdentifier--;
}

buildUnnamed2679() {
  var o = new core.List<api.AccountStatusAccountLevelIssue>();
  o.add(buildAccountStatusAccountLevelIssue());
  o.add(buildAccountStatusAccountLevelIssue());
  return o;
}

checkUnnamed2679(core.List<api.AccountStatusAccountLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusAccountLevelIssue(o[0]);
  checkAccountStatusAccountLevelIssue(o[1]);
}

buildUnnamed2680() {
  var o = new core.List<api.AccountStatusDataQualityIssue>();
  o.add(buildAccountStatusDataQualityIssue());
  o.add(buildAccountStatusDataQualityIssue());
  return o;
}

checkUnnamed2680(core.List<api.AccountStatusDataQualityIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusDataQualityIssue(o[0]);
  checkAccountStatusDataQualityIssue(o[1]);
}

core.int buildCounterAccountStatus = 0;
buildAccountStatus() {
  var o = new api.AccountStatus();
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    o.accountId = "foo";
    o.accountLevelIssues = buildUnnamed2679();
    o.dataQualityIssues = buildUnnamed2680();
    o.kind = "foo";
    o.websiteClaimed = true;
  }
  buildCounterAccountStatus--;
  return o;
}

checkAccountStatus(api.AccountStatus o) {
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed2679(o.accountLevelIssues);
    checkUnnamed2680(o.dataQualityIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.websiteClaimed, unittest.isTrue);
  }
  buildCounterAccountStatus--;
}

core.int buildCounterAccountStatusAccountLevelIssue = 0;
buildAccountStatusAccountLevelIssue() {
  var o = new api.AccountStatusAccountLevelIssue();
  buildCounterAccountStatusAccountLevelIssue++;
  if (buildCounterAccountStatusAccountLevelIssue < 3) {
    o.country = "foo";
    o.destination = "foo";
    o.detail = "foo";
    o.id = "foo";
    o.severity = "foo";
    o.title = "foo";
  }
  buildCounterAccountStatusAccountLevelIssue--;
  return o;
}

checkAccountStatusAccountLevelIssue(api.AccountStatusAccountLevelIssue o) {
  buildCounterAccountStatusAccountLevelIssue++;
  if (buildCounterAccountStatusAccountLevelIssue < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccountStatusAccountLevelIssue--;
}

buildUnnamed2681() {
  var o = new core.List<api.AccountStatusExampleItem>();
  o.add(buildAccountStatusExampleItem());
  o.add(buildAccountStatusExampleItem());
  return o;
}

checkUnnamed2681(core.List<api.AccountStatusExampleItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusExampleItem(o[0]);
  checkAccountStatusExampleItem(o[1]);
}

core.int buildCounterAccountStatusDataQualityIssue = 0;
buildAccountStatusDataQualityIssue() {
  var o = new api.AccountStatusDataQualityIssue();
  buildCounterAccountStatusDataQualityIssue++;
  if (buildCounterAccountStatusDataQualityIssue < 3) {
    o.country = "foo";
    o.destination = "foo";
    o.detail = "foo";
    o.displayedValue = "foo";
    o.exampleItems = buildUnnamed2681();
    o.id = "foo";
    o.lastChecked = "foo";
    o.location = "foo";
    o.numItems = 42;
    o.severity = "foo";
    o.submittedValue = "foo";
  }
  buildCounterAccountStatusDataQualityIssue--;
  return o;
}

checkAccountStatusDataQualityIssue(api.AccountStatusDataQualityIssue o) {
  buildCounterAccountStatusDataQualityIssue++;
  if (buildCounterAccountStatusDataQualityIssue < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.displayedValue, unittest.equals('foo'));
    checkUnnamed2681(o.exampleItems);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastChecked, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.numItems, unittest.equals(42));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.submittedValue, unittest.equals('foo'));
  }
  buildCounterAccountStatusDataQualityIssue--;
}

core.int buildCounterAccountStatusExampleItem = 0;
buildAccountStatusExampleItem() {
  var o = new api.AccountStatusExampleItem();
  buildCounterAccountStatusExampleItem++;
  if (buildCounterAccountStatusExampleItem < 3) {
    o.itemId = "foo";
    o.link = "foo";
    o.submittedValue = "foo";
    o.title = "foo";
    o.valueOnLandingPage = "foo";
  }
  buildCounterAccountStatusExampleItem--;
  return o;
}

checkAccountStatusExampleItem(api.AccountStatusExampleItem o) {
  buildCounterAccountStatusExampleItem++;
  if (buildCounterAccountStatusExampleItem < 3) {
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.submittedValue, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.valueOnLandingPage, unittest.equals('foo'));
  }
  buildCounterAccountStatusExampleItem--;
}

buildUnnamed2682() {
  var o = new core.List<api.AccountTaxTaxRule>();
  o.add(buildAccountTaxTaxRule());
  o.add(buildAccountTaxTaxRule());
  return o;
}

checkUnnamed2682(core.List<api.AccountTaxTaxRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTaxTaxRule(o[0]);
  checkAccountTaxTaxRule(o[1]);
}

core.int buildCounterAccountTax = 0;
buildAccountTax() {
  var o = new api.AccountTax();
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    o.accountId = "foo";
    o.kind = "foo";
    o.rules = buildUnnamed2682();
  }
  buildCounterAccountTax--;
  return o;
}

checkAccountTax(api.AccountTax o) {
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2682(o.rules);
  }
  buildCounterAccountTax--;
}

core.int buildCounterAccountTaxTaxRule = 0;
buildAccountTaxTaxRule() {
  var o = new api.AccountTaxTaxRule();
  buildCounterAccountTaxTaxRule++;
  if (buildCounterAccountTaxTaxRule < 3) {
    o.country = "foo";
    o.locationId = "foo";
    o.ratePercent = "foo";
    o.shippingTaxed = true;
    o.useGlobalRate = true;
  }
  buildCounterAccountTaxTaxRule--;
  return o;
}

checkAccountTaxTaxRule(api.AccountTaxTaxRule o) {
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
buildAccountUser() {
  var o = new api.AccountUser();
  buildCounterAccountUser++;
  if (buildCounterAccountUser < 3) {
    o.admin = true;
    o.emailAddress = "foo";
  }
  buildCounterAccountUser--;
  return o;
}

checkAccountUser(api.AccountUser o) {
  buildCounterAccountUser++;
  if (buildCounterAccountUser < 3) {
    unittest.expect(o.admin, unittest.isTrue);
    unittest.expect(o.emailAddress, unittest.equals('foo'));
  }
  buildCounterAccountUser--;
}

core.int buildCounterAccountYouTubeChannelLink = 0;
buildAccountYouTubeChannelLink() {
  var o = new api.AccountYouTubeChannelLink();
  buildCounterAccountYouTubeChannelLink++;
  if (buildCounterAccountYouTubeChannelLink < 3) {
    o.channelId = "foo";
    o.status = "foo";
  }
  buildCounterAccountYouTubeChannelLink--;
  return o;
}

checkAccountYouTubeChannelLink(api.AccountYouTubeChannelLink o) {
  buildCounterAccountYouTubeChannelLink++;
  if (buildCounterAccountYouTubeChannelLink < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountYouTubeChannelLink--;
}

buildUnnamed2683() {
  var o = new core.List<api.AccountIdentifier>();
  o.add(buildAccountIdentifier());
  o.add(buildAccountIdentifier());
  return o;
}

checkUnnamed2683(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0]);
  checkAccountIdentifier(o[1]);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
buildAccountsAuthInfoResponse() {
  var o = new api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed2683();
    o.kind = "foo";
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed2683(o.accountIdentifiers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsAuthInfoResponse--;
}

core.int buildCounterAccountsClaimWebsiteResponse = 0;
buildAccountsClaimWebsiteResponse() {
  var o = new api.AccountsClaimWebsiteResponse();
  buildCounterAccountsClaimWebsiteResponse++;
  if (buildCounterAccountsClaimWebsiteResponse < 3) {
    o.kind = "foo";
  }
  buildCounterAccountsClaimWebsiteResponse--;
  return o;
}

checkAccountsClaimWebsiteResponse(api.AccountsClaimWebsiteResponse o) {
  buildCounterAccountsClaimWebsiteResponse++;
  if (buildCounterAccountsClaimWebsiteResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsClaimWebsiteResponse--;
}

buildUnnamed2684() {
  var o = new core.List<api.AccountsCustomBatchRequestEntry>();
  o.add(buildAccountsCustomBatchRequestEntry());
  o.add(buildAccountsCustomBatchRequestEntry());
  return o;
}

checkUnnamed2684(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(o[0]);
  checkAccountsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
buildAccountsCustomBatchRequest() {
  var o = new api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed2684();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed2684(o.entries);
  }
  buildCounterAccountsCustomBatchRequest--;
}

core.int buildCounterAccountsCustomBatchRequestEntry = 0;
buildAccountsCustomBatchRequestEntry() {
  var o = new api.AccountsCustomBatchRequestEntry();
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    o.account = buildAccount();
    o.accountId = "foo";
    o.batchId = 42;
    o.force = true;
    o.merchantId = "foo";
    o.method = "foo";
    o.overwrite = true;
  }
  buildCounterAccountsCustomBatchRequestEntry--;
  return o;
}

checkAccountsCustomBatchRequestEntry(api.AccountsCustomBatchRequestEntry o) {
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    checkAccount(o.account);
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.force, unittest.isTrue);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.overwrite, unittest.isTrue);
  }
  buildCounterAccountsCustomBatchRequestEntry--;
}

buildUnnamed2685() {
  var o = new core.List<api.AccountsCustomBatchResponseEntry>();
  o.add(buildAccountsCustomBatchResponseEntry());
  o.add(buildAccountsCustomBatchResponseEntry());
  return o;
}

checkUnnamed2685(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(o[0]);
  checkAccountsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
buildAccountsCustomBatchResponse() {
  var o = new api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed2685();
    o.kind = "foo";
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed2685(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponse--;
}

core.int buildCounterAccountsCustomBatchResponseEntry = 0;
buildAccountsCustomBatchResponseEntry() {
  var o = new api.AccountsCustomBatchResponseEntry();
  buildCounterAccountsCustomBatchResponseEntry++;
  if (buildCounterAccountsCustomBatchResponseEntry < 3) {
    o.account = buildAccount();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
  }
  buildCounterAccountsCustomBatchResponseEntry--;
  return o;
}

checkAccountsCustomBatchResponseEntry(api.AccountsCustomBatchResponseEntry o) {
  buildCounterAccountsCustomBatchResponseEntry++;
  if (buildCounterAccountsCustomBatchResponseEntry < 3) {
    checkAccount(o.account);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponseEntry--;
}

buildUnnamed2686() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed2686(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsListResponse = 0;
buildAccountsListResponse() {
  var o = new api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2686();
  }
  buildCounterAccountsListResponse--;
  return o;
}

checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2686(o.resources);
  }
  buildCounterAccountsListResponse--;
}

buildUnnamed2687() {
  var o = new core.List<api.AccountstatusesCustomBatchRequestEntry>();
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed2687(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(o[0]);
  checkAccountstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
buildAccountstatusesCustomBatchRequest() {
  var o = new api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed2687();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

checkAccountstatusesCustomBatchRequest(
    api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed2687(o.entries);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
}

buildUnnamed2688() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2688(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountstatusesCustomBatchRequestEntry = 0;
buildAccountstatusesCustomBatchRequestEntry() {
  var o = new api.AccountstatusesCustomBatchRequestEntry();
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.destinations = buildUnnamed2688();
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
  return o;
}

checkAccountstatusesCustomBatchRequestEntry(
    api.AccountstatusesCustomBatchRequestEntry o) {
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    checkUnnamed2688(o.destinations);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
}

buildUnnamed2689() {
  var o = new core.List<api.AccountstatusesCustomBatchResponseEntry>();
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed2689(core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchResponseEntry(o[0]);
  checkAccountstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchResponse = 0;
buildAccountstatusesCustomBatchResponse() {
  var o = new api.AccountstatusesCustomBatchResponse();
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed2689();
    o.kind = "foo";
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

checkAccountstatusesCustomBatchResponse(
    api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed2689(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchResponse--;
}

core.int buildCounterAccountstatusesCustomBatchResponseEntry = 0;
buildAccountstatusesCustomBatchResponseEntry() {
  var o = new api.AccountstatusesCustomBatchResponseEntry();
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    o.accountStatus = buildAccountStatus();
    o.batchId = 42;
    o.errors = buildErrors();
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
  return o;
}

checkAccountstatusesCustomBatchResponseEntry(
    api.AccountstatusesCustomBatchResponseEntry o) {
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    checkAccountStatus(o.accountStatus);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
}

buildUnnamed2690() {
  var o = new core.List<api.AccountStatus>();
  o.add(buildAccountStatus());
  o.add(buildAccountStatus());
  return o;
}

checkUnnamed2690(core.List<api.AccountStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatus(o[0]);
  checkAccountStatus(o[1]);
}

core.int buildCounterAccountstatusesListResponse = 0;
buildAccountstatusesListResponse() {
  var o = new api.AccountstatusesListResponse();
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2690();
  }
  buildCounterAccountstatusesListResponse--;
  return o;
}

checkAccountstatusesListResponse(api.AccountstatusesListResponse o) {
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2690(o.resources);
  }
  buildCounterAccountstatusesListResponse--;
}

buildUnnamed2691() {
  var o = new core.List<api.AccounttaxCustomBatchRequestEntry>();
  o.add(buildAccounttaxCustomBatchRequestEntry());
  o.add(buildAccounttaxCustomBatchRequestEntry());
  return o;
}

checkUnnamed2691(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(o[0]);
  checkAccounttaxCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
buildAccounttaxCustomBatchRequest() {
  var o = new api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed2691();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed2691(o.entries);
  }
  buildCounterAccounttaxCustomBatchRequest--;
}

core.int buildCounterAccounttaxCustomBatchRequestEntry = 0;
buildAccounttaxCustomBatchRequestEntry() {
  var o = new api.AccounttaxCustomBatchRequestEntry();
  buildCounterAccounttaxCustomBatchRequestEntry++;
  if (buildCounterAccounttaxCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.accountTax = buildAccountTax();
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
  return o;
}

checkAccounttaxCustomBatchRequestEntry(
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

buildUnnamed2692() {
  var o = new core.List<api.AccounttaxCustomBatchResponseEntry>();
  o.add(buildAccounttaxCustomBatchResponseEntry());
  o.add(buildAccounttaxCustomBatchResponseEntry());
  return o;
}

checkUnnamed2692(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(o[0]);
  checkAccounttaxCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
buildAccounttaxCustomBatchResponse() {
  var o = new api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed2692();
    o.kind = "foo";
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed2692(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponse--;
}

core.int buildCounterAccounttaxCustomBatchResponseEntry = 0;
buildAccounttaxCustomBatchResponseEntry() {
  var o = new api.AccounttaxCustomBatchResponseEntry();
  buildCounterAccounttaxCustomBatchResponseEntry++;
  if (buildCounterAccounttaxCustomBatchResponseEntry < 3) {
    o.accountTax = buildAccountTax();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
  return o;
}

checkAccounttaxCustomBatchResponseEntry(
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

buildUnnamed2693() {
  var o = new core.List<api.AccountTax>();
  o.add(buildAccountTax());
  o.add(buildAccountTax());
  return o;
}

checkUnnamed2693(core.List<api.AccountTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTax(o[0]);
  checkAccountTax(o[1]);
}

core.int buildCounterAccounttaxListResponse = 0;
buildAccounttaxListResponse() {
  var o = new api.AccounttaxListResponse();
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2693();
  }
  buildCounterAccounttaxListResponse--;
  return o;
}

checkAccounttaxListResponse(api.AccounttaxListResponse o) {
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2693(o.resources);
  }
  buildCounterAccounttaxListResponse--;
}

core.int buildCounterAmount = 0;
buildAmount() {
  var o = new api.Amount();
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    o.pretax = buildPrice();
    o.tax = buildPrice();
  }
  buildCounterAmount--;
  return o;
}

checkAmount(api.Amount o) {
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    checkPrice(o.pretax);
    checkPrice(o.tax);
  }
  buildCounterAmount--;
}

core.int buildCounterCarrierRate = 0;
buildCarrierRate() {
  var o = new api.CarrierRate();
  buildCounterCarrierRate++;
  if (buildCounterCarrierRate < 3) {
    o.carrierName = "foo";
    o.carrierService = "foo";
    o.flatAdjustment = buildPrice();
    o.name = "foo";
    o.originPostalCode = "foo";
    o.percentageAdjustment = "foo";
  }
  buildCounterCarrierRate--;
  return o;
}

checkCarrierRate(api.CarrierRate o) {
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

buildUnnamed2694() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2694(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCarriersCarrier = 0;
buildCarriersCarrier() {
  var o = new api.CarriersCarrier();
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    o.country = "foo";
    o.name = "foo";
    o.services = buildUnnamed2694();
  }
  buildCounterCarriersCarrier--;
  return o;
}

checkCarriersCarrier(api.CarriersCarrier o) {
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2694(o.services);
  }
  buildCounterCarriersCarrier--;
}

buildUnnamed2695() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2695(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2696() {
  var o = new core.List<api.DatafeedTarget>();
  o.add(buildDatafeedTarget());
  o.add(buildDatafeedTarget());
  return o;
}

checkUnnamed2696(core.List<api.DatafeedTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedTarget(o[0]);
  checkDatafeedTarget(o[1]);
}

core.int buildCounterDatafeed = 0;
buildDatafeed() {
  var o = new api.Datafeed();
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    o.attributeLanguage = "foo";
    o.contentLanguage = "foo";
    o.contentType = "foo";
    o.fetchSchedule = buildDatafeedFetchSchedule();
    o.fileName = "foo";
    o.format = buildDatafeedFormat();
    o.id = "foo";
    o.intendedDestinations = buildUnnamed2695();
    o.kind = "foo";
    o.name = "foo";
    o.targetCountry = "foo";
    o.targets = buildUnnamed2696();
  }
  buildCounterDatafeed--;
  return o;
}

checkDatafeed(api.Datafeed o) {
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    unittest.expect(o.attributeLanguage, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkDatafeedFetchSchedule(o.fetchSchedule);
    unittest.expect(o.fileName, unittest.equals('foo'));
    checkDatafeedFormat(o.format);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2695(o.intendedDestinations);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    checkUnnamed2696(o.targets);
  }
  buildCounterDatafeed--;
}

core.int buildCounterDatafeedFetchSchedule = 0;
buildDatafeedFetchSchedule() {
  var o = new api.DatafeedFetchSchedule();
  buildCounterDatafeedFetchSchedule++;
  if (buildCounterDatafeedFetchSchedule < 3) {
    o.dayOfMonth = 42;
    o.fetchUrl = "foo";
    o.hour = 42;
    o.minuteOfHour = 42;
    o.password = "foo";
    o.paused = true;
    o.timeZone = "foo";
    o.username = "foo";
    o.weekday = "foo";
  }
  buildCounterDatafeedFetchSchedule--;
  return o;
}

checkDatafeedFetchSchedule(api.DatafeedFetchSchedule o) {
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
buildDatafeedFormat() {
  var o = new api.DatafeedFormat();
  buildCounterDatafeedFormat++;
  if (buildCounterDatafeedFormat < 3) {
    o.columnDelimiter = "foo";
    o.fileEncoding = "foo";
    o.quotingMode = "foo";
  }
  buildCounterDatafeedFormat--;
  return o;
}

checkDatafeedFormat(api.DatafeedFormat o) {
  buildCounterDatafeedFormat++;
  if (buildCounterDatafeedFormat < 3) {
    unittest.expect(o.columnDelimiter, unittest.equals('foo'));
    unittest.expect(o.fileEncoding, unittest.equals('foo'));
    unittest.expect(o.quotingMode, unittest.equals('foo'));
  }
  buildCounterDatafeedFormat--;
}

buildUnnamed2697() {
  var o = new core.List<api.DatafeedStatusError>();
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

checkUnnamed2697(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

buildUnnamed2698() {
  var o = new core.List<api.DatafeedStatusError>();
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

checkUnnamed2698(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.int buildCounterDatafeedStatus = 0;
buildDatafeedStatus() {
  var o = new api.DatafeedStatus();
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    o.country = "foo";
    o.datafeedId = "foo";
    o.errors = buildUnnamed2697();
    o.itemsTotal = "foo";
    o.itemsValid = "foo";
    o.kind = "foo";
    o.language = "foo";
    o.lastUploadDate = "foo";
    o.processingStatus = "foo";
    o.warnings = buildUnnamed2698();
  }
  buildCounterDatafeedStatus--;
  return o;
}

checkDatafeedStatus(api.DatafeedStatus o) {
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    checkUnnamed2697(o.errors);
    unittest.expect(o.itemsTotal, unittest.equals('foo'));
    unittest.expect(o.itemsValid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastUploadDate, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    checkUnnamed2698(o.warnings);
  }
  buildCounterDatafeedStatus--;
}

buildUnnamed2699() {
  var o = new core.List<api.DatafeedStatusExample>();
  o.add(buildDatafeedStatusExample());
  o.add(buildDatafeedStatusExample());
  return o;
}

checkUnnamed2699(core.List<api.DatafeedStatusExample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusExample(o[0]);
  checkDatafeedStatusExample(o[1]);
}

core.int buildCounterDatafeedStatusError = 0;
buildDatafeedStatusError() {
  var o = new api.DatafeedStatusError();
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    o.code = "foo";
    o.count = "foo";
    o.examples = buildUnnamed2699();
    o.message = "foo";
  }
  buildCounterDatafeedStatusError--;
  return o;
}

checkDatafeedStatusError(api.DatafeedStatusError o) {
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed2699(o.examples);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDatafeedStatusError--;
}

core.int buildCounterDatafeedStatusExample = 0;
buildDatafeedStatusExample() {
  var o = new api.DatafeedStatusExample();
  buildCounterDatafeedStatusExample++;
  if (buildCounterDatafeedStatusExample < 3) {
    o.itemId = "foo";
    o.lineNumber = "foo";
    o.value = "foo";
  }
  buildCounterDatafeedStatusExample--;
  return o;
}

checkDatafeedStatusExample(api.DatafeedStatusExample o) {
  buildCounterDatafeedStatusExample++;
  if (buildCounterDatafeedStatusExample < 3) {
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.lineNumber, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDatafeedStatusExample--;
}

buildUnnamed2700() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2700(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2701() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2701(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatafeedTarget = 0;
buildDatafeedTarget() {
  var o = new api.DatafeedTarget();
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    o.country = "foo";
    o.excludedDestinations = buildUnnamed2700();
    o.includedDestinations = buildUnnamed2701();
    o.language = "foo";
  }
  buildCounterDatafeedTarget--;
  return o;
}

checkDatafeedTarget(api.DatafeedTarget o) {
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed2700(o.excludedDestinations);
    checkUnnamed2701(o.includedDestinations);
    unittest.expect(o.language, unittest.equals('foo'));
  }
  buildCounterDatafeedTarget--;
}

buildUnnamed2702() {
  var o = new core.List<api.DatafeedsCustomBatchRequestEntry>();
  o.add(buildDatafeedsCustomBatchRequestEntry());
  o.add(buildDatafeedsCustomBatchRequestEntry());
  return o;
}

checkUnnamed2702(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(o[0]);
  checkDatafeedsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
buildDatafeedsCustomBatchRequest() {
  var o = new api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed2702();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed2702(o.entries);
  }
  buildCounterDatafeedsCustomBatchRequest--;
}

core.int buildCounterDatafeedsCustomBatchRequestEntry = 0;
buildDatafeedsCustomBatchRequestEntry() {
  var o = new api.DatafeedsCustomBatchRequestEntry();
  buildCounterDatafeedsCustomBatchRequestEntry++;
  if (buildCounterDatafeedsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.datafeed = buildDatafeed();
    o.datafeedId = "foo";
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
  return o;
}

checkDatafeedsCustomBatchRequestEntry(api.DatafeedsCustomBatchRequestEntry o) {
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

buildUnnamed2703() {
  var o = new core.List<api.DatafeedsCustomBatchResponseEntry>();
  o.add(buildDatafeedsCustomBatchResponseEntry());
  o.add(buildDatafeedsCustomBatchResponseEntry());
  return o;
}

checkUnnamed2703(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(o[0]);
  checkDatafeedsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
buildDatafeedsCustomBatchResponse() {
  var o = new api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed2703();
    o.kind = "foo";
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed2703(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedsCustomBatchResponse--;
}

core.int buildCounterDatafeedsCustomBatchResponseEntry = 0;
buildDatafeedsCustomBatchResponseEntry() {
  var o = new api.DatafeedsCustomBatchResponseEntry();
  buildCounterDatafeedsCustomBatchResponseEntry++;
  if (buildCounterDatafeedsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.datafeed = buildDatafeed();
    o.errors = buildErrors();
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
  return o;
}

checkDatafeedsCustomBatchResponseEntry(
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
buildDatafeedsFetchNowResponse() {
  var o = new api.DatafeedsFetchNowResponse();
  buildCounterDatafeedsFetchNowResponse++;
  if (buildCounterDatafeedsFetchNowResponse < 3) {
    o.kind = "foo";
  }
  buildCounterDatafeedsFetchNowResponse--;
  return o;
}

checkDatafeedsFetchNowResponse(api.DatafeedsFetchNowResponse o) {
  buildCounterDatafeedsFetchNowResponse++;
  if (buildCounterDatafeedsFetchNowResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedsFetchNowResponse--;
}

buildUnnamed2704() {
  var o = new core.List<api.Datafeed>();
  o.add(buildDatafeed());
  o.add(buildDatafeed());
  return o;
}

checkUnnamed2704(core.List<api.Datafeed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeed(o[0]);
  checkDatafeed(o[1]);
}

core.int buildCounterDatafeedsListResponse = 0;
buildDatafeedsListResponse() {
  var o = new api.DatafeedsListResponse();
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2704();
  }
  buildCounterDatafeedsListResponse--;
  return o;
}

checkDatafeedsListResponse(api.DatafeedsListResponse o) {
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2704(o.resources);
  }
  buildCounterDatafeedsListResponse--;
}

buildUnnamed2705() {
  var o = new core.List<api.DatafeedstatusesCustomBatchRequestEntry>();
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed2705(core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchRequestEntry(o[0]);
  checkDatafeedstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchRequest = 0;
buildDatafeedstatusesCustomBatchRequest() {
  var o = new api.DatafeedstatusesCustomBatchRequest();
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed2705();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

checkDatafeedstatusesCustomBatchRequest(
    api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed2705(o.entries);
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
}

core.int buildCounterDatafeedstatusesCustomBatchRequestEntry = 0;
buildDatafeedstatusesCustomBatchRequestEntry() {
  var o = new api.DatafeedstatusesCustomBatchRequestEntry();
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.country = "foo";
    o.datafeedId = "foo";
    o.language = "foo";
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
  return o;
}

checkDatafeedstatusesCustomBatchRequestEntry(
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

buildUnnamed2706() {
  var o = new core.List<api.DatafeedstatusesCustomBatchResponseEntry>();
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed2706(core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchResponseEntry(o[0]);
  checkDatafeedstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchResponse = 0;
buildDatafeedstatusesCustomBatchResponse() {
  var o = new api.DatafeedstatusesCustomBatchResponse();
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed2706();
    o.kind = "foo";
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

checkDatafeedstatusesCustomBatchResponse(
    api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed2706(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
}

core.int buildCounterDatafeedstatusesCustomBatchResponseEntry = 0;
buildDatafeedstatusesCustomBatchResponseEntry() {
  var o = new api.DatafeedstatusesCustomBatchResponseEntry();
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.datafeedStatus = buildDatafeedStatus();
    o.errors = buildErrors();
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
  return o;
}

checkDatafeedstatusesCustomBatchResponseEntry(
    api.DatafeedstatusesCustomBatchResponseEntry o) {
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeedStatus(o.datafeedStatus);
    checkErrors(o.errors);
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
}

buildUnnamed2707() {
  var o = new core.List<api.DatafeedStatus>();
  o.add(buildDatafeedStatus());
  o.add(buildDatafeedStatus());
  return o;
}

checkUnnamed2707(core.List<api.DatafeedStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatus(o[0]);
  checkDatafeedStatus(o[1]);
}

core.int buildCounterDatafeedstatusesListResponse = 0;
buildDatafeedstatusesListResponse() {
  var o = new api.DatafeedstatusesListResponse();
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2707();
  }
  buildCounterDatafeedstatusesListResponse--;
  return o;
}

checkDatafeedstatusesListResponse(api.DatafeedstatusesListResponse o) {
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2707(o.resources);
  }
  buildCounterDatafeedstatusesListResponse--;
}

buildUnnamed2708() {
  var o = new core.List<api.HolidayCutoff>();
  o.add(buildHolidayCutoff());
  o.add(buildHolidayCutoff());
  return o;
}

checkUnnamed2708(core.List<api.HolidayCutoff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidayCutoff(o[0]);
  checkHolidayCutoff(o[1]);
}

core.int buildCounterDeliveryTime = 0;
buildDeliveryTime() {
  var o = new api.DeliveryTime();
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    o.holidayCutoffs = buildUnnamed2708();
    o.maxTransitTimeInDays = 42;
    o.minTransitTimeInDays = 42;
  }
  buildCounterDeliveryTime--;
  return o;
}

checkDeliveryTime(api.DeliveryTime o) {
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    checkUnnamed2708(o.holidayCutoffs);
    unittest.expect(o.maxTransitTimeInDays, unittest.equals(42));
    unittest.expect(o.minTransitTimeInDays, unittest.equals(42));
  }
  buildCounterDeliveryTime--;
}

core.int buildCounterError = 0;
buildError() {
  var o = new api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.domain = "foo";
    o.message = "foo";
    o.reason = "foo";
  }
  buildCounterError--;
  return o;
}

checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterError--;
}

buildUnnamed2709() {
  var o = new core.List<api.Error>();
  o.add(buildError());
  o.add(buildError());
  return o;
}

checkUnnamed2709(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterErrors = 0;
buildErrors() {
  var o = new api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 42;
    o.errors = buildUnnamed2709();
    o.message = "foo";
  }
  buildCounterErrors--;
  return o;
}

checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2709(o.errors);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterErrors--;
}

buildUnnamed2710() {
  var o = new core.List<api.GmbAccountsGmbAccount>();
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

checkUnnamed2710(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterGmbAccounts = 0;
buildGmbAccounts() {
  var o = new api.GmbAccounts();
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    o.accountId = "foo";
    o.gmbAccounts = buildUnnamed2710();
  }
  buildCounterGmbAccounts--;
  return o;
}

checkGmbAccounts(api.GmbAccounts o) {
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed2710(o.gmbAccounts);
  }
  buildCounterGmbAccounts--;
}

core.int buildCounterGmbAccountsGmbAccount = 0;
buildGmbAccountsGmbAccount() {
  var o = new api.GmbAccountsGmbAccount();
  buildCounterGmbAccountsGmbAccount++;
  if (buildCounterGmbAccountsGmbAccount < 3) {
    o.email = "foo";
    o.listingCount = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterGmbAccountsGmbAccount--;
  return o;
}

checkGmbAccountsGmbAccount(api.GmbAccountsGmbAccount o) {
  buildCounterGmbAccountsGmbAccount++;
  if (buildCounterGmbAccountsGmbAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.listingCount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGmbAccountsGmbAccount--;
}

buildUnnamed2711() {
  var o = new core.List<api.LocationIdSet>();
  o.add(buildLocationIdSet());
  o.add(buildLocationIdSet());
  return o;
}

checkUnnamed2711(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0]);
  checkLocationIdSet(o[1]);
}

buildUnnamed2712() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2712(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2713() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2713(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2714() {
  var o = new core.List<api.Price>();
  o.add(buildPrice());
  o.add(buildPrice());
  return o;
}

checkUnnamed2714(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0]);
  checkPrice(o[1]);
}

buildUnnamed2715() {
  var o = new core.List<api.Weight>();
  o.add(buildWeight());
  o.add(buildWeight());
  return o;
}

checkUnnamed2715(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0]);
  checkWeight(o[1]);
}

core.int buildCounterHeaders = 0;
buildHeaders() {
  var o = new api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed2711();
    o.numberOfItems = buildUnnamed2712();
    o.postalCodeGroupNames = buildUnnamed2713();
    o.prices = buildUnnamed2714();
    o.weights = buildUnnamed2715();
  }
  buildCounterHeaders--;
  return o;
}

checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed2711(o.locations);
    checkUnnamed2712(o.numberOfItems);
    checkUnnamed2713(o.postalCodeGroupNames);
    checkUnnamed2714(o.prices);
    checkUnnamed2715(o.weights);
  }
  buildCounterHeaders--;
}

core.int buildCounterHolidayCutoff = 0;
buildHolidayCutoff() {
  var o = new api.HolidayCutoff();
  buildCounterHolidayCutoff++;
  if (buildCounterHolidayCutoff < 3) {
    o.deadlineDate = "foo";
    o.deadlineHour = 42;
    o.deadlineTimezone = "foo";
    o.holidayId = "foo";
    o.visibleFromDate = "foo";
  }
  buildCounterHolidayCutoff--;
  return o;
}

checkHolidayCutoff(api.HolidayCutoff o) {
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
buildHolidaysHoliday() {
  var o = new api.HolidaysHoliday();
  buildCounterHolidaysHoliday++;
  if (buildCounterHolidaysHoliday < 3) {
    o.countryCode = "foo";
    o.date = "foo";
    o.deliveryGuaranteeDate = "foo";
    o.deliveryGuaranteeHour = "foo";
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterHolidaysHoliday--;
  return o;
}

checkHolidaysHoliday(api.HolidaysHoliday o) {
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
buildInstallment() {
  var o = new api.Installment();
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    o.amount = buildPrice();
    o.months = "foo";
  }
  buildCounterInstallment--;
  return o;
}

checkInstallment(api.Installment o) {
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    checkPrice(o.amount);
    unittest.expect(o.months, unittest.equals('foo'));
  }
  buildCounterInstallment--;
}

core.int buildCounterInventory = 0;
buildInventory() {
  var o = new api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.availability = "foo";
    o.installment = buildInstallment();
    o.kind = "foo";
    o.loyaltyPoints = buildLoyaltyPoints();
    o.pickup = buildInventoryPickup();
    o.price = buildPrice();
    o.quantity = 42;
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
    o.sellOnGoogleQuantity = 42;
  }
  buildCounterInventory--;
  return o;
}

checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    unittest.expect(o.availability, unittest.equals('foo'));
    checkInstallment(o.installment);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints);
    checkInventoryPickup(o.pickup);
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals(42));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.sellOnGoogleQuantity, unittest.equals(42));
  }
  buildCounterInventory--;
}

buildUnnamed2716() {
  var o = new core.List<api.InventoryCustomBatchRequestEntry>();
  o.add(buildInventoryCustomBatchRequestEntry());
  o.add(buildInventoryCustomBatchRequestEntry());
  return o;
}

checkUnnamed2716(core.List<api.InventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryCustomBatchRequestEntry(o[0]);
  checkInventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterInventoryCustomBatchRequest = 0;
buildInventoryCustomBatchRequest() {
  var o = new api.InventoryCustomBatchRequest();
  buildCounterInventoryCustomBatchRequest++;
  if (buildCounterInventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed2716();
  }
  buildCounterInventoryCustomBatchRequest--;
  return o;
}

checkInventoryCustomBatchRequest(api.InventoryCustomBatchRequest o) {
  buildCounterInventoryCustomBatchRequest++;
  if (buildCounterInventoryCustomBatchRequest < 3) {
    checkUnnamed2716(o.entries);
  }
  buildCounterInventoryCustomBatchRequest--;
}

core.int buildCounterInventoryCustomBatchRequestEntry = 0;
buildInventoryCustomBatchRequestEntry() {
  var o = new api.InventoryCustomBatchRequestEntry();
  buildCounterInventoryCustomBatchRequestEntry++;
  if (buildCounterInventoryCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.inventory = buildInventory();
    o.merchantId = "foo";
    o.productId = "foo";
    o.storeCode = "foo";
  }
  buildCounterInventoryCustomBatchRequestEntry--;
  return o;
}

checkInventoryCustomBatchRequestEntry(api.InventoryCustomBatchRequestEntry o) {
  buildCounterInventoryCustomBatchRequestEntry++;
  if (buildCounterInventoryCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkInventory(o.inventory);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
  }
  buildCounterInventoryCustomBatchRequestEntry--;
}

buildUnnamed2717() {
  var o = new core.List<api.InventoryCustomBatchResponseEntry>();
  o.add(buildInventoryCustomBatchResponseEntry());
  o.add(buildInventoryCustomBatchResponseEntry());
  return o;
}

checkUnnamed2717(core.List<api.InventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryCustomBatchResponseEntry(o[0]);
  checkInventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterInventoryCustomBatchResponse = 0;
buildInventoryCustomBatchResponse() {
  var o = new api.InventoryCustomBatchResponse();
  buildCounterInventoryCustomBatchResponse++;
  if (buildCounterInventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed2717();
    o.kind = "foo";
  }
  buildCounterInventoryCustomBatchResponse--;
  return o;
}

checkInventoryCustomBatchResponse(api.InventoryCustomBatchResponse o) {
  buildCounterInventoryCustomBatchResponse++;
  if (buildCounterInventoryCustomBatchResponse < 3) {
    checkUnnamed2717(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterInventoryCustomBatchResponse--;
}

core.int buildCounterInventoryCustomBatchResponseEntry = 0;
buildInventoryCustomBatchResponseEntry() {
  var o = new api.InventoryCustomBatchResponseEntry();
  buildCounterInventoryCustomBatchResponseEntry++;
  if (buildCounterInventoryCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
  }
  buildCounterInventoryCustomBatchResponseEntry--;
  return o;
}

checkInventoryCustomBatchResponseEntry(
    api.InventoryCustomBatchResponseEntry o) {
  buildCounterInventoryCustomBatchResponseEntry++;
  if (buildCounterInventoryCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterInventoryCustomBatchResponseEntry--;
}

core.int buildCounterInventoryPickup = 0;
buildInventoryPickup() {
  var o = new api.InventoryPickup();
  buildCounterInventoryPickup++;
  if (buildCounterInventoryPickup < 3) {
    o.pickupMethod = "foo";
    o.pickupSla = "foo";
  }
  buildCounterInventoryPickup--;
  return o;
}

checkInventoryPickup(api.InventoryPickup o) {
  buildCounterInventoryPickup++;
  if (buildCounterInventoryPickup < 3) {
    unittest.expect(o.pickupMethod, unittest.equals('foo'));
    unittest.expect(o.pickupSla, unittest.equals('foo'));
  }
  buildCounterInventoryPickup--;
}

core.int buildCounterInventorySetRequest = 0;
buildInventorySetRequest() {
  var o = new api.InventorySetRequest();
  buildCounterInventorySetRequest++;
  if (buildCounterInventorySetRequest < 3) {
    o.availability = "foo";
    o.installment = buildInstallment();
    o.loyaltyPoints = buildLoyaltyPoints();
    o.pickup = buildInventoryPickup();
    o.price = buildPrice();
    o.quantity = 42;
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
    o.sellOnGoogleQuantity = 42;
  }
  buildCounterInventorySetRequest--;
  return o;
}

checkInventorySetRequest(api.InventorySetRequest o) {
  buildCounterInventorySetRequest++;
  if (buildCounterInventorySetRequest < 3) {
    unittest.expect(o.availability, unittest.equals('foo'));
    checkInstallment(o.installment);
    checkLoyaltyPoints(o.loyaltyPoints);
    checkInventoryPickup(o.pickup);
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals(42));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.sellOnGoogleQuantity, unittest.equals(42));
  }
  buildCounterInventorySetRequest--;
}

core.int buildCounterInventorySetResponse = 0;
buildInventorySetResponse() {
  var o = new api.InventorySetResponse();
  buildCounterInventorySetResponse++;
  if (buildCounterInventorySetResponse < 3) {
    o.kind = "foo";
  }
  buildCounterInventorySetResponse--;
  return o;
}

checkInventorySetResponse(api.InventorySetResponse o) {
  buildCounterInventorySetResponse++;
  if (buildCounterInventorySetResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterInventorySetResponse--;
}

buildUnnamed2718() {
  var o = new core.List<api.InvoiceSummaryAdditionalChargeSummary>();
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  return o;
}

checkUnnamed2718(core.List<api.InvoiceSummaryAdditionalChargeSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceSummaryAdditionalChargeSummary(o[0]);
  checkInvoiceSummaryAdditionalChargeSummary(o[1]);
}

buildUnnamed2719() {
  var o = new core.List<api.Promotion>();
  o.add(buildPromotion());
  o.add(buildPromotion());
  return o;
}

checkUnnamed2719(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterInvoiceSummary = 0;
buildInvoiceSummary() {
  var o = new api.InvoiceSummary();
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    o.additionalChargeSummaries = buildUnnamed2718();
    o.customerBalance = buildAmount();
    o.googleBalance = buildAmount();
    o.merchantBalance = buildAmount();
    o.productTotal = buildAmount();
    o.promotionSummaries = buildUnnamed2719();
  }
  buildCounterInvoiceSummary--;
  return o;
}

checkInvoiceSummary(api.InvoiceSummary o) {
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    checkUnnamed2718(o.additionalChargeSummaries);
    checkAmount(o.customerBalance);
    checkAmount(o.googleBalance);
    checkAmount(o.merchantBalance);
    checkAmount(o.productTotal);
    checkUnnamed2719(o.promotionSummaries);
  }
  buildCounterInvoiceSummary--;
}

core.int buildCounterInvoiceSummaryAdditionalChargeSummary = 0;
buildInvoiceSummaryAdditionalChargeSummary() {
  var o = new api.InvoiceSummaryAdditionalChargeSummary();
  buildCounterInvoiceSummaryAdditionalChargeSummary++;
  if (buildCounterInvoiceSummaryAdditionalChargeSummary < 3) {
    o.totalAmount = buildAmount();
    o.type = "foo";
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
  return o;
}

checkInvoiceSummaryAdditionalChargeSummary(
    api.InvoiceSummaryAdditionalChargeSummary o) {
  buildCounterInvoiceSummaryAdditionalChargeSummary++;
  if (buildCounterInvoiceSummaryAdditionalChargeSummary < 3) {
    checkAmount(o.totalAmount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
}

core.int buildCounterLiaAboutPageSettings = 0;
buildLiaAboutPageSettings() {
  var o = new api.LiaAboutPageSettings();
  buildCounterLiaAboutPageSettings++;
  if (buildCounterLiaAboutPageSettings < 3) {
    o.status = "foo";
    o.url = "foo";
  }
  buildCounterLiaAboutPageSettings--;
  return o;
}

checkLiaAboutPageSettings(api.LiaAboutPageSettings o) {
  buildCounterLiaAboutPageSettings++;
  if (buildCounterLiaAboutPageSettings < 3) {
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLiaAboutPageSettings--;
}

core.int buildCounterLiaCountrySettings = 0;
buildLiaCountrySettings() {
  var o = new api.LiaCountrySettings();
  buildCounterLiaCountrySettings++;
  if (buildCounterLiaCountrySettings < 3) {
    o.about = buildLiaAboutPageSettings();
    o.country = "foo";
    o.hostedLocalStorefrontActive = true;
    o.inventory = buildLiaInventorySettings();
    o.onDisplayToOrder = buildLiaOnDisplayToOrderSettings();
    o.storePickupActive = true;
  }
  buildCounterLiaCountrySettings--;
  return o;
}

checkLiaCountrySettings(api.LiaCountrySettings o) {
  buildCounterLiaCountrySettings++;
  if (buildCounterLiaCountrySettings < 3) {
    checkLiaAboutPageSettings(o.about);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.hostedLocalStorefrontActive, unittest.isTrue);
    checkLiaInventorySettings(o.inventory);
    checkLiaOnDisplayToOrderSettings(o.onDisplayToOrder);
    unittest.expect(o.storePickupActive, unittest.isTrue);
  }
  buildCounterLiaCountrySettings--;
}

core.int buildCounterLiaInventorySettings = 0;
buildLiaInventorySettings() {
  var o = new api.LiaInventorySettings();
  buildCounterLiaInventorySettings++;
  if (buildCounterLiaInventorySettings < 3) {
    o.inventoryVerificationContactEmail = "foo";
    o.inventoryVerificationContactName = "foo";
    o.inventoryVerificationContactStatus = "foo";
    o.status = "foo";
  }
  buildCounterLiaInventorySettings--;
  return o;
}

checkLiaInventorySettings(api.LiaInventorySettings o) {
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
buildLiaOnDisplayToOrderSettings() {
  var o = new api.LiaOnDisplayToOrderSettings();
  buildCounterLiaOnDisplayToOrderSettings++;
  if (buildCounterLiaOnDisplayToOrderSettings < 3) {
    o.shippingCostPolicyUrl = "foo";
    o.status = "foo";
  }
  buildCounterLiaOnDisplayToOrderSettings--;
  return o;
}

checkLiaOnDisplayToOrderSettings(api.LiaOnDisplayToOrderSettings o) {
  buildCounterLiaOnDisplayToOrderSettings++;
  if (buildCounterLiaOnDisplayToOrderSettings < 3) {
    unittest.expect(o.shippingCostPolicyUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLiaOnDisplayToOrderSettings--;
}

buildUnnamed2720() {
  var o = new core.List<api.LiaCountrySettings>();
  o.add(buildLiaCountrySettings());
  o.add(buildLiaCountrySettings());
  return o;
}

checkUnnamed2720(core.List<api.LiaCountrySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaCountrySettings(o[0]);
  checkLiaCountrySettings(o[1]);
}

core.int buildCounterLiaSettings = 0;
buildLiaSettings() {
  var o = new api.LiaSettings();
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    o.accountId = "foo";
    o.countrySettings = buildUnnamed2720();
    o.kind = "foo";
  }
  buildCounterLiaSettings--;
  return o;
}

checkLiaSettings(api.LiaSettings o) {
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed2720(o.countrySettings);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiaSettings--;
}

buildUnnamed2721() {
  var o = new core.List<api.LiasettingsCustomBatchRequestEntry>();
  o.add(buildLiasettingsCustomBatchRequestEntry());
  o.add(buildLiasettingsCustomBatchRequestEntry());
  return o;
}

checkUnnamed2721(core.List<api.LiasettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchRequestEntry(o[0]);
  checkLiasettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchRequest = 0;
buildLiasettingsCustomBatchRequest() {
  var o = new api.LiasettingsCustomBatchRequest();
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed2721();
  }
  buildCounterLiasettingsCustomBatchRequest--;
  return o;
}

checkLiasettingsCustomBatchRequest(api.LiasettingsCustomBatchRequest o) {
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    checkUnnamed2721(o.entries);
  }
  buildCounterLiasettingsCustomBatchRequest--;
}

core.int buildCounterLiasettingsCustomBatchRequestEntry = 0;
buildLiasettingsCustomBatchRequestEntry() {
  var o = new api.LiasettingsCustomBatchRequestEntry();
  buildCounterLiasettingsCustomBatchRequestEntry++;
  if (buildCounterLiasettingsCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.contactEmail = "foo";
    o.contactName = "foo";
    o.country = "foo";
    o.gmbEmail = "foo";
    o.liaSettings = buildLiaSettings();
    o.merchantId = "foo";
    o.method = "foo";
    o.posDataProviderId = "foo";
    o.posExternalAccountId = "foo";
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
  return o;
}

checkLiasettingsCustomBatchRequestEntry(
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

buildUnnamed2722() {
  var o = new core.List<api.LiasettingsCustomBatchResponseEntry>();
  o.add(buildLiasettingsCustomBatchResponseEntry());
  o.add(buildLiasettingsCustomBatchResponseEntry());
  return o;
}

checkUnnamed2722(core.List<api.LiasettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchResponseEntry(o[0]);
  checkLiasettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponse = 0;
buildLiasettingsCustomBatchResponse() {
  var o = new api.LiasettingsCustomBatchResponse();
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed2722();
    o.kind = "foo";
  }
  buildCounterLiasettingsCustomBatchResponse--;
  return o;
}

checkLiasettingsCustomBatchResponse(api.LiasettingsCustomBatchResponse o) {
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    checkUnnamed2722(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchResponse--;
}

buildUnnamed2723() {
  var o = new core.List<api.PosDataProviders>();
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

checkUnnamed2723(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponseEntry = 0;
buildLiasettingsCustomBatchResponseEntry() {
  var o = new api.LiasettingsCustomBatchResponseEntry();
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.gmbAccounts = buildGmbAccounts();
    o.kind = "foo";
    o.liaSettings = buildLiaSettings();
    o.posDataProviders = buildUnnamed2723();
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
  return o;
}

checkLiasettingsCustomBatchResponseEntry(
    api.LiasettingsCustomBatchResponseEntry o) {
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    checkGmbAccounts(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiaSettings(o.liaSettings);
    checkUnnamed2723(o.posDataProviders);
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
}

buildUnnamed2724() {
  var o = new core.List<api.GmbAccountsGmbAccount>();
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

checkUnnamed2724(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterLiasettingsGetAccessibleGmbAccountsResponse = 0;
buildLiasettingsGetAccessibleGmbAccountsResponse() {
  var o = new api.LiasettingsGetAccessibleGmbAccountsResponse();
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    o.accountId = "foo";
    o.gmbAccounts = buildUnnamed2724();
    o.kind = "foo";
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
  return o;
}

checkLiasettingsGetAccessibleGmbAccountsResponse(
    api.LiasettingsGetAccessibleGmbAccountsResponse o) {
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed2724(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
}

buildUnnamed2725() {
  var o = new core.List<api.LiaSettings>();
  o.add(buildLiaSettings());
  o.add(buildLiaSettings());
  return o;
}

checkUnnamed2725(core.List<api.LiaSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaSettings(o[0]);
  checkLiaSettings(o[1]);
}

core.int buildCounterLiasettingsListResponse = 0;
buildLiasettingsListResponse() {
  var o = new api.LiasettingsListResponse();
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2725();
  }
  buildCounterLiasettingsListResponse--;
  return o;
}

checkLiasettingsListResponse(api.LiasettingsListResponse o) {
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2725(o.resources);
  }
  buildCounterLiasettingsListResponse--;
}

core.int buildCounterLiasettingsRequestGmbAccessResponse = 0;
buildLiasettingsRequestGmbAccessResponse() {
  var o = new api.LiasettingsRequestGmbAccessResponse();
  buildCounterLiasettingsRequestGmbAccessResponse++;
  if (buildCounterLiasettingsRequestGmbAccessResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
  return o;
}

checkLiasettingsRequestGmbAccessResponse(
    api.LiasettingsRequestGmbAccessResponse o) {
  buildCounterLiasettingsRequestGmbAccessResponse++;
  if (buildCounterLiasettingsRequestGmbAccessResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
}

core.int buildCounterLiasettingsRequestInventoryVerificationResponse = 0;
buildLiasettingsRequestInventoryVerificationResponse() {
  var o = new api.LiasettingsRequestInventoryVerificationResponse();
  buildCounterLiasettingsRequestInventoryVerificationResponse++;
  if (buildCounterLiasettingsRequestInventoryVerificationResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
  return o;
}

checkLiasettingsRequestInventoryVerificationResponse(
    api.LiasettingsRequestInventoryVerificationResponse o) {
  buildCounterLiasettingsRequestInventoryVerificationResponse++;
  if (buildCounterLiasettingsRequestInventoryVerificationResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
}

core.int buildCounterLiasettingsSetInventoryVerificationContactResponse = 0;
buildLiasettingsSetInventoryVerificationContactResponse() {
  var o = new api.LiasettingsSetInventoryVerificationContactResponse();
  buildCounterLiasettingsSetInventoryVerificationContactResponse++;
  if (buildCounterLiasettingsSetInventoryVerificationContactResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
  return o;
}

checkLiasettingsSetInventoryVerificationContactResponse(
    api.LiasettingsSetInventoryVerificationContactResponse o) {
  buildCounterLiasettingsSetInventoryVerificationContactResponse++;
  if (buildCounterLiasettingsSetInventoryVerificationContactResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
}

buildUnnamed2726() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2726(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocationIdSet = 0;
buildLocationIdSet() {
  var o = new api.LocationIdSet();
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    o.locationIds = buildUnnamed2726();
  }
  buildCounterLocationIdSet--;
  return o;
}

checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed2726(o.locationIds);
  }
  buildCounterLocationIdSet--;
}

core.int buildCounterLoyaltyPoints = 0;
buildLoyaltyPoints() {
  var o = new api.LoyaltyPoints();
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    o.name = "foo";
    o.pointsValue = "foo";
    o.ratio = 42.0;
  }
  buildCounterLoyaltyPoints--;
  return o;
}

checkLoyaltyPoints(api.LoyaltyPoints o) {
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pointsValue, unittest.equals('foo'));
    unittest.expect(o.ratio, unittest.equals(42.0));
  }
  buildCounterLoyaltyPoints--;
}

buildUnnamed2727() {
  var o = new core.List<api.OrderLineItem>();
  o.add(buildOrderLineItem());
  o.add(buildOrderLineItem());
  return o;
}

checkUnnamed2727(core.List<api.OrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItem(o[0]);
  checkOrderLineItem(o[1]);
}

buildUnnamed2728() {
  var o = new core.List<api.OrderPromotion>();
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

checkUnnamed2728(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

buildUnnamed2729() {
  var o = new core.List<api.OrderRefund>();
  o.add(buildOrderRefund());
  o.add(buildOrderRefund());
  return o;
}

checkUnnamed2729(core.List<api.OrderRefund> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderRefund(o[0]);
  checkOrderRefund(o[1]);
}

buildUnnamed2730() {
  var o = new core.List<api.OrderShipment>();
  o.add(buildOrderShipment());
  o.add(buildOrderShipment());
  return o;
}

checkUnnamed2730(core.List<api.OrderShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipment(o[0]);
  checkOrderShipment(o[1]);
}

core.int buildCounterOrder = 0;
buildOrder() {
  var o = new api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.acknowledged = true;
    o.channelType = "foo";
    o.customer = buildOrderCustomer();
    o.deliveryDetails = buildOrderDeliveryDetails();
    o.id = "foo";
    o.kind = "foo";
    o.lineItems = buildUnnamed2727();
    o.merchantId = "foo";
    o.merchantOrderId = "foo";
    o.netAmount = buildPrice();
    o.paymentMethod = buildOrderPaymentMethod();
    o.paymentStatus = "foo";
    o.placedDate = "foo";
    o.promotions = buildUnnamed2728();
    o.refunds = buildUnnamed2729();
    o.shipments = buildUnnamed2730();
    o.shippingCost = buildPrice();
    o.shippingCostTax = buildPrice();
    o.shippingOption = "foo";
    o.status = "foo";
  }
  buildCounterOrder--;
  return o;
}

checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(o.acknowledged, unittest.isTrue);
    unittest.expect(o.channelType, unittest.equals('foo'));
    checkOrderCustomer(o.customer);
    checkOrderDeliveryDetails(o.deliveryDetails);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2727(o.lineItems);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    checkPrice(o.netAmount);
    checkOrderPaymentMethod(o.paymentMethod);
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    unittest.expect(o.placedDate, unittest.equals('foo'));
    checkUnnamed2728(o.promotions);
    checkUnnamed2729(o.refunds);
    checkUnnamed2730(o.shipments);
    checkPrice(o.shippingCost);
    checkPrice(o.shippingCostTax);
    unittest.expect(o.shippingOption, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterOrder--;
}

buildUnnamed2731() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2731(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2732() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2732(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderAddress = 0;
buildOrderAddress() {
  var o = new api.OrderAddress();
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    o.country = "foo";
    o.fullAddress = buildUnnamed2731();
    o.isPostOfficeBox = true;
    o.locality = "foo";
    o.postalCode = "foo";
    o.recipientName = "foo";
    o.region = "foo";
    o.streetAddress = buildUnnamed2732();
  }
  buildCounterOrderAddress--;
  return o;
}

checkOrderAddress(api.OrderAddress o) {
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed2731(o.fullAddress);
    unittest.expect(o.isPostOfficeBox, unittest.isTrue);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed2732(o.streetAddress);
  }
  buildCounterOrderAddress--;
}

core.int buildCounterOrderCancellation = 0;
buildOrderCancellation() {
  var o = new api.OrderCancellation();
  buildCounterOrderCancellation++;
  if (buildCounterOrderCancellation < 3) {
    o.actor = "foo";
    o.creationDate = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrderCancellation--;
  return o;
}

checkOrderCancellation(api.OrderCancellation o) {
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
buildOrderCustomer() {
  var o = new api.OrderCustomer();
  buildCounterOrderCustomer++;
  if (buildCounterOrderCustomer < 3) {
    o.email = "foo";
    o.explicitMarketingPreference = true;
    o.fullName = "foo";
    o.marketingRightsInfo = buildOrderCustomerMarketingRightsInfo();
  }
  buildCounterOrderCustomer--;
  return o;
}

checkOrderCustomer(api.OrderCustomer o) {
  buildCounterOrderCustomer++;
  if (buildCounterOrderCustomer < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.explicitMarketingPreference, unittest.isTrue);
    unittest.expect(o.fullName, unittest.equals('foo'));
    checkOrderCustomerMarketingRightsInfo(o.marketingRightsInfo);
  }
  buildCounterOrderCustomer--;
}

core.int buildCounterOrderCustomerMarketingRightsInfo = 0;
buildOrderCustomerMarketingRightsInfo() {
  var o = new api.OrderCustomerMarketingRightsInfo();
  buildCounterOrderCustomerMarketingRightsInfo++;
  if (buildCounterOrderCustomerMarketingRightsInfo < 3) {
    o.explicitMarketingPreference = "foo";
    o.lastUpdatedTimestamp = "foo";
    o.marketingEmailAddress = "foo";
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
  return o;
}

checkOrderCustomerMarketingRightsInfo(api.OrderCustomerMarketingRightsInfo o) {
  buildCounterOrderCustomerMarketingRightsInfo++;
  if (buildCounterOrderCustomerMarketingRightsInfo < 3) {
    unittest.expect(o.explicitMarketingPreference, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestamp, unittest.equals('foo'));
    unittest.expect(o.marketingEmailAddress, unittest.equals('foo'));
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
}

core.int buildCounterOrderDeliveryDetails = 0;
buildOrderDeliveryDetails() {
  var o = new api.OrderDeliveryDetails();
  buildCounterOrderDeliveryDetails++;
  if (buildCounterOrderDeliveryDetails < 3) {
    o.address = buildOrderAddress();
    o.phoneNumber = "foo";
  }
  buildCounterOrderDeliveryDetails--;
  return o;
}

checkOrderDeliveryDetails(api.OrderDeliveryDetails o) {
  buildCounterOrderDeliveryDetails++;
  if (buildCounterOrderDeliveryDetails < 3) {
    checkOrderAddress(o.address);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterOrderDeliveryDetails--;
}

buildUnnamed2733() {
  var o = new core.List<api.OrderMerchantProvidedAnnotation>();
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

checkUnnamed2733(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

buildUnnamed2734() {
  var o = new core.List<api.OrderCancellation>();
  o.add(buildOrderCancellation());
  o.add(buildOrderCancellation());
  return o;
}

checkUnnamed2734(core.List<api.OrderCancellation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderCancellation(o[0]);
  checkOrderCancellation(o[1]);
}

buildUnnamed2735() {
  var o = new core.List<api.OrderReturn>();
  o.add(buildOrderReturn());
  o.add(buildOrderReturn());
  return o;
}

checkUnnamed2735(core.List<api.OrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReturn(o[0]);
  checkOrderReturn(o[1]);
}

core.int buildCounterOrderLineItem = 0;
buildOrderLineItem() {
  var o = new api.OrderLineItem();
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    o.annotations = buildUnnamed2733();
    o.cancellations = buildUnnamed2734();
    o.id = "foo";
    o.price = buildPrice();
    o.product = buildOrderLineItemProduct();
    o.quantityCanceled = 42;
    o.quantityDelivered = 42;
    o.quantityOrdered = 42;
    o.quantityPending = 42;
    o.quantityReturned = 42;
    o.quantityShipped = 42;
    o.returnInfo = buildOrderLineItemReturnInfo();
    o.returns = buildUnnamed2735();
    o.shippingDetails = buildOrderLineItemShippingDetails();
    o.tax = buildPrice();
  }
  buildCounterOrderLineItem--;
  return o;
}

checkOrderLineItem(api.OrderLineItem o) {
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    checkUnnamed2733(o.annotations);
    checkUnnamed2734(o.cancellations);
    unittest.expect(o.id, unittest.equals('foo'));
    checkPrice(o.price);
    checkOrderLineItemProduct(o.product);
    unittest.expect(o.quantityCanceled, unittest.equals(42));
    unittest.expect(o.quantityDelivered, unittest.equals(42));
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    unittest.expect(o.quantityPending, unittest.equals(42));
    unittest.expect(o.quantityReturned, unittest.equals(42));
    unittest.expect(o.quantityShipped, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo);
    checkUnnamed2735(o.returns);
    checkOrderLineItemShippingDetails(o.shippingDetails);
    checkPrice(o.tax);
  }
  buildCounterOrderLineItem--;
}

buildUnnamed2736() {
  var o = new core.List<api.OrderLineItemProductVariantAttribute>();
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

checkUnnamed2736(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterOrderLineItemProduct = 0;
buildOrderLineItemProduct() {
  var o = new api.OrderLineItemProduct();
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    o.brand = "foo";
    o.channel = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.id = "foo";
    o.imageLink = "foo";
    o.itemGroupId = "foo";
    o.mpn = "foo";
    o.offerId = "foo";
    o.price = buildPrice();
    o.shownImage = "foo";
    o.targetCountry = "foo";
    o.title = "foo";
    o.variantAttributes = buildUnnamed2736();
  }
  buildCounterOrderLineItemProduct--;
  return o;
}

checkOrderLineItemProduct(api.OrderLineItemProduct o) {
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
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
    checkUnnamed2736(o.variantAttributes);
  }
  buildCounterOrderLineItemProduct--;
}

core.int buildCounterOrderLineItemProductVariantAttribute = 0;
buildOrderLineItemProductVariantAttribute() {
  var o = new api.OrderLineItemProductVariantAttribute();
  buildCounterOrderLineItemProductVariantAttribute++;
  if (buildCounterOrderLineItemProductVariantAttribute < 3) {
    o.dimension = "foo";
    o.value = "foo";
  }
  buildCounterOrderLineItemProductVariantAttribute--;
  return o;
}

checkOrderLineItemProductVariantAttribute(
    api.OrderLineItemProductVariantAttribute o) {
  buildCounterOrderLineItemProductVariantAttribute++;
  if (buildCounterOrderLineItemProductVariantAttribute < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderLineItemProductVariantAttribute--;
}

core.int buildCounterOrderLineItemReturnInfo = 0;
buildOrderLineItemReturnInfo() {
  var o = new api.OrderLineItemReturnInfo();
  buildCounterOrderLineItemReturnInfo++;
  if (buildCounterOrderLineItemReturnInfo < 3) {
    o.daysToReturn = 42;
    o.isReturnable = true;
    o.policyUrl = "foo";
  }
  buildCounterOrderLineItemReturnInfo--;
  return o;
}

checkOrderLineItemReturnInfo(api.OrderLineItemReturnInfo o) {
  buildCounterOrderLineItemReturnInfo++;
  if (buildCounterOrderLineItemReturnInfo < 3) {
    unittest.expect(o.daysToReturn, unittest.equals(42));
    unittest.expect(o.isReturnable, unittest.isTrue);
    unittest.expect(o.policyUrl, unittest.equals('foo'));
  }
  buildCounterOrderLineItemReturnInfo--;
}

core.int buildCounterOrderLineItemShippingDetails = 0;
buildOrderLineItemShippingDetails() {
  var o = new api.OrderLineItemShippingDetails();
  buildCounterOrderLineItemShippingDetails++;
  if (buildCounterOrderLineItemShippingDetails < 3) {
    o.deliverByDate = "foo";
    o.method = buildOrderLineItemShippingDetailsMethod();
    o.shipByDate = "foo";
  }
  buildCounterOrderLineItemShippingDetails--;
  return o;
}

checkOrderLineItemShippingDetails(api.OrderLineItemShippingDetails o) {
  buildCounterOrderLineItemShippingDetails++;
  if (buildCounterOrderLineItemShippingDetails < 3) {
    unittest.expect(o.deliverByDate, unittest.equals('foo'));
    checkOrderLineItemShippingDetailsMethod(o.method);
    unittest.expect(o.shipByDate, unittest.equals('foo'));
  }
  buildCounterOrderLineItemShippingDetails--;
}

core.int buildCounterOrderLineItemShippingDetailsMethod = 0;
buildOrderLineItemShippingDetailsMethod() {
  var o = new api.OrderLineItemShippingDetailsMethod();
  buildCounterOrderLineItemShippingDetailsMethod++;
  if (buildCounterOrderLineItemShippingDetailsMethod < 3) {
    o.carrier = "foo";
    o.maxDaysInTransit = 42;
    o.methodName = "foo";
    o.minDaysInTransit = 42;
  }
  buildCounterOrderLineItemShippingDetailsMethod--;
  return o;
}

checkOrderLineItemShippingDetailsMethod(
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
buildOrderMerchantProvidedAnnotation() {
  var o = new api.OrderMerchantProvidedAnnotation();
  buildCounterOrderMerchantProvidedAnnotation++;
  if (buildCounterOrderMerchantProvidedAnnotation < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterOrderMerchantProvidedAnnotation--;
  return o;
}

checkOrderMerchantProvidedAnnotation(api.OrderMerchantProvidedAnnotation o) {
  buildCounterOrderMerchantProvidedAnnotation++;
  if (buildCounterOrderMerchantProvidedAnnotation < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderMerchantProvidedAnnotation--;
}

core.int buildCounterOrderPaymentMethod = 0;
buildOrderPaymentMethod() {
  var o = new api.OrderPaymentMethod();
  buildCounterOrderPaymentMethod++;
  if (buildCounterOrderPaymentMethod < 3) {
    o.billingAddress = buildOrderAddress();
    o.expirationMonth = 42;
    o.expirationYear = 42;
    o.lastFourDigits = "foo";
    o.phoneNumber = "foo";
    o.type = "foo";
  }
  buildCounterOrderPaymentMethod--;
  return o;
}

checkOrderPaymentMethod(api.OrderPaymentMethod o) {
  buildCounterOrderPaymentMethod++;
  if (buildCounterOrderPaymentMethod < 3) {
    checkOrderAddress(o.billingAddress);
    unittest.expect(o.expirationMonth, unittest.equals(42));
    unittest.expect(o.expirationYear, unittest.equals(42));
    unittest.expect(o.lastFourDigits, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderPaymentMethod--;
}

buildUnnamed2737() {
  var o = new core.List<api.OrderPromotionBenefit>();
  o.add(buildOrderPromotionBenefit());
  o.add(buildOrderPromotionBenefit());
  return o;
}

checkUnnamed2737(core.List<api.OrderPromotionBenefit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionBenefit(o[0]);
  checkOrderPromotionBenefit(o[1]);
}

core.int buildCounterOrderPromotion = 0;
buildOrderPromotion() {
  var o = new api.OrderPromotion();
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    o.benefits = buildUnnamed2737();
    o.effectiveDates = "foo";
    o.genericRedemptionCode = "foo";
    o.id = "foo";
    o.longTitle = "foo";
    o.productApplicability = "foo";
    o.redemptionChannel = "foo";
  }
  buildCounterOrderPromotion--;
  return o;
}

checkOrderPromotion(api.OrderPromotion o) {
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    checkUnnamed2737(o.benefits);
    unittest.expect(o.effectiveDates, unittest.equals('foo'));
    unittest.expect(o.genericRedemptionCode, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.longTitle, unittest.equals('foo'));
    unittest.expect(o.productApplicability, unittest.equals('foo'));
    unittest.expect(o.redemptionChannel, unittest.equals('foo'));
  }
  buildCounterOrderPromotion--;
}

buildUnnamed2738() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2738(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderPromotionBenefit = 0;
buildOrderPromotionBenefit() {
  var o = new api.OrderPromotionBenefit();
  buildCounterOrderPromotionBenefit++;
  if (buildCounterOrderPromotionBenefit < 3) {
    o.discount = buildPrice();
    o.offerIds = buildUnnamed2738();
    o.subType = "foo";
    o.taxImpact = buildPrice();
    o.type = "foo";
  }
  buildCounterOrderPromotionBenefit--;
  return o;
}

checkOrderPromotionBenefit(api.OrderPromotionBenefit o) {
  buildCounterOrderPromotionBenefit++;
  if (buildCounterOrderPromotionBenefit < 3) {
    checkPrice(o.discount);
    checkUnnamed2738(o.offerIds);
    unittest.expect(o.subType, unittest.equals('foo'));
    checkPrice(o.taxImpact);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderPromotionBenefit--;
}

core.int buildCounterOrderRefund = 0;
buildOrderRefund() {
  var o = new api.OrderRefund();
  buildCounterOrderRefund++;
  if (buildCounterOrderRefund < 3) {
    o.actor = "foo";
    o.amount = buildPrice();
    o.creationDate = "foo";
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrderRefund--;
  return o;
}

checkOrderRefund(api.OrderRefund o) {
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

core.int buildCounterOrderReturn = 0;
buildOrderReturn() {
  var o = new api.OrderReturn();
  buildCounterOrderReturn++;
  if (buildCounterOrderReturn < 3) {
    o.actor = "foo";
    o.creationDate = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrderReturn--;
  return o;
}

checkOrderReturn(api.OrderReturn o) {
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

buildUnnamed2739() {
  var o = new core.List<api.OrderShipmentLineItemShipment>();
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

checkUnnamed2739(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

core.int buildCounterOrderShipment = 0;
buildOrderShipment() {
  var o = new api.OrderShipment();
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    o.carrier = "foo";
    o.creationDate = "foo";
    o.deliveryDate = "foo";
    o.id = "foo";
    o.lineItems = buildUnnamed2739();
    o.status = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrderShipment--;
  return o;
}

checkOrderShipment(api.OrderShipment o) {
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2739(o.lineItems);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrderShipment--;
}

core.int buildCounterOrderShipmentLineItemShipment = 0;
buildOrderShipmentLineItemShipment() {
  var o = new api.OrderShipmentLineItemShipment();
  buildCounterOrderShipmentLineItemShipment++;
  if (buildCounterOrderShipmentLineItemShipment < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
  }
  buildCounterOrderShipmentLineItemShipment--;
  return o;
}

checkOrderShipmentLineItemShipment(api.OrderShipmentLineItemShipment o) {
  buildCounterOrderShipmentLineItemShipment++;
  if (buildCounterOrderShipmentLineItemShipment < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrderShipmentLineItemShipment--;
}

buildUnnamed2740() {
  var o = new core.List<api.ShipmentInvoiceLineItemInvoice>();
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

checkUnnamed2740(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceRequest = 0;
buildOrderinvoicesCreateChargeInvoiceRequest() {
  var o = new api.OrderinvoicesCreateChargeInvoiceRequest();
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    o.invoiceId = "foo";
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed2740();
    o.operationId = "foo";
    o.shipmentGroupId = "foo";
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
  return o;
}

checkOrderinvoicesCreateChargeInvoiceRequest(
    api.OrderinvoicesCreateChargeInvoiceRequest o) {
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    checkInvoiceSummary(o.invoiceSummary);
    checkUnnamed2740(o.lineItemInvoices);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceResponse = 0;
buildOrderinvoicesCreateChargeInvoiceResponse() {
  var o = new api.OrderinvoicesCreateChargeInvoiceResponse();
  buildCounterOrderinvoicesCreateChargeInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
  return o;
}

checkOrderinvoicesCreateChargeInvoiceResponse(
    api.OrderinvoicesCreateChargeInvoiceResponse o) {
  buildCounterOrderinvoicesCreateChargeInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
}

buildUnnamed2741() {
  var o = new core.List<api.ShipmentInvoice>();
  o.add(buildShipmentInvoice());
  o.add(buildShipmentInvoice());
  return o;
}

checkUnnamed2741(core.List<api.ShipmentInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoice(o[0]);
  checkShipmentInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceRequest = 0;
buildOrderinvoicesCreateRefundInvoiceRequest() {
  var o = new api.OrderinvoicesCreateRefundInvoiceRequest();
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    o.invoiceId = "foo";
    o.operationId = "foo";
    o.refundOnlyOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
    o.returnOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
    o.shipmentInvoices = buildUnnamed2741();
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
  return o;
}

checkOrderinvoicesCreateRefundInvoiceRequest(
    api.OrderinvoicesCreateRefundInvoiceRequest o) {
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
        o.refundOnlyOption);
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
        o.returnOption);
    checkUnnamed2741(o.shipmentInvoices);
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceResponse = 0;
buildOrderinvoicesCreateRefundInvoiceResponse() {
  var o = new api.OrderinvoicesCreateRefundInvoiceResponse();
  buildCounterOrderinvoicesCreateRefundInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderinvoicesCreateRefundInvoiceResponse--;
  return o;
}

checkOrderinvoicesCreateRefundInvoiceResponse(
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
buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption() {
  var o = new api
      .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption <
      3) {
    o.description = "foo";
    o.reason = "foo";
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption--;
  return o;
}

checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
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
buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption() {
  var o = new api
      .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption <
      3) {
    o.description = "foo";
    o.reason = "foo";
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
  return o;
}

checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
    api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption o) {
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
}

core.int buildCounterOrderpaymentsNotifyAuthApprovedRequest = 0;
buildOrderpaymentsNotifyAuthApprovedRequest() {
  var o = new api.OrderpaymentsNotifyAuthApprovedRequest();
  buildCounterOrderpaymentsNotifyAuthApprovedRequest++;
  if (buildCounterOrderpaymentsNotifyAuthApprovedRequest < 3) {
    o.authAmountPretax = buildPrice();
    o.authAmountTax = buildPrice();
  }
  buildCounterOrderpaymentsNotifyAuthApprovedRequest--;
  return o;
}

checkOrderpaymentsNotifyAuthApprovedRequest(
    api.OrderpaymentsNotifyAuthApprovedRequest o) {
  buildCounterOrderpaymentsNotifyAuthApprovedRequest++;
  if (buildCounterOrderpaymentsNotifyAuthApprovedRequest < 3) {
    checkPrice(o.authAmountPretax);
    checkPrice(o.authAmountTax);
  }
  buildCounterOrderpaymentsNotifyAuthApprovedRequest--;
}

core.int buildCounterOrderpaymentsNotifyAuthApprovedResponse = 0;
buildOrderpaymentsNotifyAuthApprovedResponse() {
  var o = new api.OrderpaymentsNotifyAuthApprovedResponse();
  buildCounterOrderpaymentsNotifyAuthApprovedResponse++;
  if (buildCounterOrderpaymentsNotifyAuthApprovedResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderpaymentsNotifyAuthApprovedResponse--;
  return o;
}

checkOrderpaymentsNotifyAuthApprovedResponse(
    api.OrderpaymentsNotifyAuthApprovedResponse o) {
  buildCounterOrderpaymentsNotifyAuthApprovedResponse++;
  if (buildCounterOrderpaymentsNotifyAuthApprovedResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyAuthApprovedResponse--;
}

core.int buildCounterOrderpaymentsNotifyAuthDeclinedRequest = 0;
buildOrderpaymentsNotifyAuthDeclinedRequest() {
  var o = new api.OrderpaymentsNotifyAuthDeclinedRequest();
  buildCounterOrderpaymentsNotifyAuthDeclinedRequest++;
  if (buildCounterOrderpaymentsNotifyAuthDeclinedRequest < 3) {
    o.declineReason = "foo";
  }
  buildCounterOrderpaymentsNotifyAuthDeclinedRequest--;
  return o;
}

checkOrderpaymentsNotifyAuthDeclinedRequest(
    api.OrderpaymentsNotifyAuthDeclinedRequest o) {
  buildCounterOrderpaymentsNotifyAuthDeclinedRequest++;
  if (buildCounterOrderpaymentsNotifyAuthDeclinedRequest < 3) {
    unittest.expect(o.declineReason, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyAuthDeclinedRequest--;
}

core.int buildCounterOrderpaymentsNotifyAuthDeclinedResponse = 0;
buildOrderpaymentsNotifyAuthDeclinedResponse() {
  var o = new api.OrderpaymentsNotifyAuthDeclinedResponse();
  buildCounterOrderpaymentsNotifyAuthDeclinedResponse++;
  if (buildCounterOrderpaymentsNotifyAuthDeclinedResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderpaymentsNotifyAuthDeclinedResponse--;
  return o;
}

checkOrderpaymentsNotifyAuthDeclinedResponse(
    api.OrderpaymentsNotifyAuthDeclinedResponse o) {
  buildCounterOrderpaymentsNotifyAuthDeclinedResponse++;
  if (buildCounterOrderpaymentsNotifyAuthDeclinedResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyAuthDeclinedResponse--;
}

core.int buildCounterOrderpaymentsNotifyChargeRequest = 0;
buildOrderpaymentsNotifyChargeRequest() {
  var o = new api.OrderpaymentsNotifyChargeRequest();
  buildCounterOrderpaymentsNotifyChargeRequest++;
  if (buildCounterOrderpaymentsNotifyChargeRequest < 3) {
    o.chargeState = "foo";
    o.invoiceId = "foo";
  }
  buildCounterOrderpaymentsNotifyChargeRequest--;
  return o;
}

checkOrderpaymentsNotifyChargeRequest(api.OrderpaymentsNotifyChargeRequest o) {
  buildCounterOrderpaymentsNotifyChargeRequest++;
  if (buildCounterOrderpaymentsNotifyChargeRequest < 3) {
    unittest.expect(o.chargeState, unittest.equals('foo'));
    unittest.expect(o.invoiceId, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyChargeRequest--;
}

core.int buildCounterOrderpaymentsNotifyChargeResponse = 0;
buildOrderpaymentsNotifyChargeResponse() {
  var o = new api.OrderpaymentsNotifyChargeResponse();
  buildCounterOrderpaymentsNotifyChargeResponse++;
  if (buildCounterOrderpaymentsNotifyChargeResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderpaymentsNotifyChargeResponse--;
  return o;
}

checkOrderpaymentsNotifyChargeResponse(
    api.OrderpaymentsNotifyChargeResponse o) {
  buildCounterOrderpaymentsNotifyChargeResponse++;
  if (buildCounterOrderpaymentsNotifyChargeResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyChargeResponse--;
}

core.int buildCounterOrderpaymentsNotifyRefundRequest = 0;
buildOrderpaymentsNotifyRefundRequest() {
  var o = new api.OrderpaymentsNotifyRefundRequest();
  buildCounterOrderpaymentsNotifyRefundRequest++;
  if (buildCounterOrderpaymentsNotifyRefundRequest < 3) {
    o.invoiceId = "foo";
    o.refundState = "foo";
  }
  buildCounterOrderpaymentsNotifyRefundRequest--;
  return o;
}

checkOrderpaymentsNotifyRefundRequest(api.OrderpaymentsNotifyRefundRequest o) {
  buildCounterOrderpaymentsNotifyRefundRequest++;
  if (buildCounterOrderpaymentsNotifyRefundRequest < 3) {
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    unittest.expect(o.refundState, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyRefundRequest--;
}

core.int buildCounterOrderpaymentsNotifyRefundResponse = 0;
buildOrderpaymentsNotifyRefundResponse() {
  var o = new api.OrderpaymentsNotifyRefundResponse();
  buildCounterOrderpaymentsNotifyRefundResponse++;
  if (buildCounterOrderpaymentsNotifyRefundResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderpaymentsNotifyRefundResponse--;
  return o;
}

checkOrderpaymentsNotifyRefundResponse(
    api.OrderpaymentsNotifyRefundResponse o) {
  buildCounterOrderpaymentsNotifyRefundResponse++;
  if (buildCounterOrderpaymentsNotifyRefundResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderpaymentsNotifyRefundResponse--;
}

core.int buildCounterOrdersAcknowledgeRequest = 0;
buildOrdersAcknowledgeRequest() {
  var o = new api.OrdersAcknowledgeRequest();
  buildCounterOrdersAcknowledgeRequest++;
  if (buildCounterOrdersAcknowledgeRequest < 3) {
    o.operationId = "foo";
  }
  buildCounterOrdersAcknowledgeRequest--;
  return o;
}

checkOrdersAcknowledgeRequest(api.OrdersAcknowledgeRequest o) {
  buildCounterOrdersAcknowledgeRequest++;
  if (buildCounterOrdersAcknowledgeRequest < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrdersAcknowledgeRequest--;
}

core.int buildCounterOrdersAcknowledgeResponse = 0;
buildOrdersAcknowledgeResponse() {
  var o = new api.OrdersAcknowledgeResponse();
  buildCounterOrdersAcknowledgeResponse++;
  if (buildCounterOrdersAcknowledgeResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersAcknowledgeResponse--;
  return o;
}

checkOrdersAcknowledgeResponse(api.OrdersAcknowledgeResponse o) {
  buildCounterOrdersAcknowledgeResponse++;
  if (buildCounterOrdersAcknowledgeResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersAcknowledgeResponse--;
}

core.int buildCounterOrdersAdvanceTestOrderResponse = 0;
buildOrdersAdvanceTestOrderResponse() {
  var o = new api.OrdersAdvanceTestOrderResponse();
  buildCounterOrdersAdvanceTestOrderResponse++;
  if (buildCounterOrdersAdvanceTestOrderResponse < 3) {
    o.kind = "foo";
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
  return o;
}

checkOrdersAdvanceTestOrderResponse(api.OrdersAdvanceTestOrderResponse o) {
  buildCounterOrdersAdvanceTestOrderResponse++;
  if (buildCounterOrdersAdvanceTestOrderResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
}

core.int buildCounterOrdersCancelLineItemRequest = 0;
buildOrdersCancelLineItemRequest() {
  var o = new api.OrdersCancelLineItemRequest();
  buildCounterOrdersCancelLineItemRequest++;
  if (buildCounterOrdersCancelLineItemRequest < 3) {
    o.amount = buildPrice();
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCancelLineItemRequest--;
  return o;
}

checkOrdersCancelLineItemRequest(api.OrdersCancelLineItemRequest o) {
  buildCounterOrdersCancelLineItemRequest++;
  if (buildCounterOrdersCancelLineItemRequest < 3) {
    checkPrice(o.amount);
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
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
buildOrdersCancelLineItemResponse() {
  var o = new api.OrdersCancelLineItemResponse();
  buildCounterOrdersCancelLineItemResponse++;
  if (buildCounterOrdersCancelLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersCancelLineItemResponse--;
  return o;
}

checkOrdersCancelLineItemResponse(api.OrdersCancelLineItemResponse o) {
  buildCounterOrdersCancelLineItemResponse++;
  if (buildCounterOrdersCancelLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelLineItemResponse--;
}

core.int buildCounterOrdersCancelRequest = 0;
buildOrdersCancelRequest() {
  var o = new api.OrdersCancelRequest();
  buildCounterOrdersCancelRequest++;
  if (buildCounterOrdersCancelRequest < 3) {
    o.operationId = "foo";
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCancelRequest--;
  return o;
}

checkOrdersCancelRequest(api.OrdersCancelRequest o) {
  buildCounterOrdersCancelRequest++;
  if (buildCounterOrdersCancelRequest < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCancelRequest--;
}

core.int buildCounterOrdersCancelResponse = 0;
buildOrdersCancelResponse() {
  var o = new api.OrdersCancelResponse();
  buildCounterOrdersCancelResponse++;
  if (buildCounterOrdersCancelResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersCancelResponse--;
  return o;
}

checkOrdersCancelResponse(api.OrdersCancelResponse o) {
  buildCounterOrdersCancelResponse++;
  if (buildCounterOrdersCancelResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelResponse--;
}

core.int buildCounterOrdersCreateTestOrderRequest = 0;
buildOrdersCreateTestOrderRequest() {
  var o = new api.OrdersCreateTestOrderRequest();
  buildCounterOrdersCreateTestOrderRequest++;
  if (buildCounterOrdersCreateTestOrderRequest < 3) {
    o.templateName = "foo";
    o.testOrder = buildTestOrder();
  }
  buildCounterOrdersCreateTestOrderRequest--;
  return o;
}

checkOrdersCreateTestOrderRequest(api.OrdersCreateTestOrderRequest o) {
  buildCounterOrdersCreateTestOrderRequest++;
  if (buildCounterOrdersCreateTestOrderRequest < 3) {
    unittest.expect(o.templateName, unittest.equals('foo'));
    checkTestOrder(o.testOrder);
  }
  buildCounterOrdersCreateTestOrderRequest--;
}

core.int buildCounterOrdersCreateTestOrderResponse = 0;
buildOrdersCreateTestOrderResponse() {
  var o = new api.OrdersCreateTestOrderResponse();
  buildCounterOrdersCreateTestOrderResponse++;
  if (buildCounterOrdersCreateTestOrderResponse < 3) {
    o.kind = "foo";
    o.orderId = "foo";
  }
  buildCounterOrdersCreateTestOrderResponse--;
  return o;
}

checkOrdersCreateTestOrderResponse(api.OrdersCreateTestOrderResponse o) {
  buildCounterOrdersCreateTestOrderResponse++;
  if (buildCounterOrdersCreateTestOrderResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
  }
  buildCounterOrdersCreateTestOrderResponse--;
}

buildUnnamed2742() {
  var o = new core.List<api.OrdersCustomBatchRequestEntry>();
  o.add(buildOrdersCustomBatchRequestEntry());
  o.add(buildOrdersCustomBatchRequestEntry());
  return o;
}

checkUnnamed2742(core.List<api.OrdersCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntry(o[0]);
  checkOrdersCustomBatchRequestEntry(o[1]);
}

core.int buildCounterOrdersCustomBatchRequest = 0;
buildOrdersCustomBatchRequest() {
  var o = new api.OrdersCustomBatchRequest();
  buildCounterOrdersCustomBatchRequest++;
  if (buildCounterOrdersCustomBatchRequest < 3) {
    o.entries = buildUnnamed2742();
  }
  buildCounterOrdersCustomBatchRequest--;
  return o;
}

checkOrdersCustomBatchRequest(api.OrdersCustomBatchRequest o) {
  buildCounterOrdersCustomBatchRequest++;
  if (buildCounterOrdersCustomBatchRequest < 3) {
    checkUnnamed2742(o.entries);
  }
  buildCounterOrdersCustomBatchRequest--;
}

core.int buildCounterOrdersCustomBatchRequestEntry = 0;
buildOrdersCustomBatchRequestEntry() {
  var o = new api.OrdersCustomBatchRequestEntry();
  buildCounterOrdersCustomBatchRequestEntry++;
  if (buildCounterOrdersCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.cancel = buildOrdersCustomBatchRequestEntryCancel();
    o.cancelLineItem = buildOrdersCustomBatchRequestEntryCancelLineItem();
    o.inStoreRefundLineItem =
        buildOrdersCustomBatchRequestEntryInStoreRefundLineItem();
    o.merchantId = "foo";
    o.merchantOrderId = "foo";
    o.method = "foo";
    o.operationId = "foo";
    o.orderId = "foo";
    o.refund = buildOrdersCustomBatchRequestEntryRefund();
    o.rejectReturnLineItem =
        buildOrdersCustomBatchRequestEntryRejectReturnLineItem();
    o.returnLineItem = buildOrdersCustomBatchRequestEntryReturnLineItem();
    o.returnRefundLineItem =
        buildOrdersCustomBatchRequestEntryReturnRefundLineItem();
    o.setLineItemMetadata =
        buildOrdersCustomBatchRequestEntrySetLineItemMetadata();
    o.shipLineItems = buildOrdersCustomBatchRequestEntryShipLineItems();
    o.updateLineItemShippingDetails =
        buildOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails();
    o.updateShipment = buildOrdersCustomBatchRequestEntryUpdateShipment();
  }
  buildCounterOrdersCustomBatchRequestEntry--;
  return o;
}

checkOrdersCustomBatchRequestEntry(api.OrdersCustomBatchRequestEntry o) {
  buildCounterOrdersCustomBatchRequestEntry++;
  if (buildCounterOrdersCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkOrdersCustomBatchRequestEntryCancel(o.cancel);
    checkOrdersCustomBatchRequestEntryCancelLineItem(o.cancelLineItem);
    checkOrdersCustomBatchRequestEntryInStoreRefundLineItem(
        o.inStoreRefundLineItem);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    checkOrdersCustomBatchRequestEntryRefund(o.refund);
    checkOrdersCustomBatchRequestEntryRejectReturnLineItem(
        o.rejectReturnLineItem);
    checkOrdersCustomBatchRequestEntryReturnLineItem(o.returnLineItem);
    checkOrdersCustomBatchRequestEntryReturnRefundLineItem(
        o.returnRefundLineItem);
    checkOrdersCustomBatchRequestEntrySetLineItemMetadata(
        o.setLineItemMetadata);
    checkOrdersCustomBatchRequestEntryShipLineItems(o.shipLineItems);
    checkOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails(
        o.updateLineItemShippingDetails);
    checkOrdersCustomBatchRequestEntryUpdateShipment(o.updateShipment);
  }
  buildCounterOrdersCustomBatchRequestEntry--;
}

core.int buildCounterOrdersCustomBatchRequestEntryCancel = 0;
buildOrdersCustomBatchRequestEntryCancel() {
  var o = new api.OrdersCustomBatchRequestEntryCancel();
  buildCounterOrdersCustomBatchRequestEntryCancel++;
  if (buildCounterOrdersCustomBatchRequestEntryCancel < 3) {
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryCancel--;
  return o;
}

checkOrdersCustomBatchRequestEntryCancel(
    api.OrdersCustomBatchRequestEntryCancel o) {
  buildCounterOrdersCustomBatchRequestEntryCancel++;
  if (buildCounterOrdersCustomBatchRequestEntryCancel < 3) {
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryCancel--;
}

core.int buildCounterOrdersCustomBatchRequestEntryCancelLineItem = 0;
buildOrdersCustomBatchRequestEntryCancelLineItem() {
  var o = new api.OrdersCustomBatchRequestEntryCancelLineItem();
  buildCounterOrdersCustomBatchRequestEntryCancelLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryCancelLineItem < 3) {
    o.amount = buildPrice();
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryCancelLineItem--;
  return o;
}

checkOrdersCustomBatchRequestEntryCancelLineItem(
    api.OrdersCustomBatchRequestEntryCancelLineItem o) {
  buildCounterOrdersCustomBatchRequestEntryCancelLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryCancelLineItem < 3) {
    checkPrice(o.amount);
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryCancelLineItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem = 0;
buildOrdersCustomBatchRequestEntryInStoreRefundLineItem() {
  var o = new api.OrdersCustomBatchRequestEntryInStoreRefundLineItem();
  buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem < 3) {
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem--;
  return o;
}

checkOrdersCustomBatchRequestEntryInStoreRefundLineItem(
    api.OrdersCustomBatchRequestEntryInStoreRefundLineItem o) {
  buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem < 3) {
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryInStoreRefundLineItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryRefund = 0;
buildOrdersCustomBatchRequestEntryRefund() {
  var o = new api.OrdersCustomBatchRequestEntryRefund();
  buildCounterOrdersCustomBatchRequestEntryRefund++;
  if (buildCounterOrdersCustomBatchRequestEntryRefund < 3) {
    o.amount = buildPrice();
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryRefund--;
  return o;
}

checkOrdersCustomBatchRequestEntryRefund(
    api.OrdersCustomBatchRequestEntryRefund o) {
  buildCounterOrdersCustomBatchRequestEntryRefund++;
  if (buildCounterOrdersCustomBatchRequestEntryRefund < 3) {
    checkPrice(o.amount);
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryRefund--;
}

core.int buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem = 0;
buildOrdersCustomBatchRequestEntryRejectReturnLineItem() {
  var o = new api.OrdersCustomBatchRequestEntryRejectReturnLineItem();
  buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem--;
  return o;
}

checkOrdersCustomBatchRequestEntryRejectReturnLineItem(
    api.OrdersCustomBatchRequestEntryRejectReturnLineItem o) {
  buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryRejectReturnLineItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryReturnLineItem = 0;
buildOrdersCustomBatchRequestEntryReturnLineItem() {
  var o = new api.OrdersCustomBatchRequestEntryReturnLineItem();
  buildCounterOrdersCustomBatchRequestEntryReturnLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryReturnLineItem < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryReturnLineItem--;
  return o;
}

checkOrdersCustomBatchRequestEntryReturnLineItem(
    api.OrdersCustomBatchRequestEntryReturnLineItem o) {
  buildCounterOrdersCustomBatchRequestEntryReturnLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryReturnLineItem < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryReturnLineItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem = 0;
buildOrdersCustomBatchRequestEntryReturnRefundLineItem() {
  var o = new api.OrdersCustomBatchRequestEntryReturnRefundLineItem();
  buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem < 3) {
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem--;
  return o;
}

checkOrdersCustomBatchRequestEntryReturnRefundLineItem(
    api.OrdersCustomBatchRequestEntryReturnRefundLineItem o) {
  buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem++;
  if (buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem < 3) {
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryReturnRefundLineItem--;
}

buildUnnamed2743() {
  var o = new core.List<api.OrderMerchantProvidedAnnotation>();
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

checkUnnamed2743(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.int buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata = 0;
buildOrdersCustomBatchRequestEntrySetLineItemMetadata() {
  var o = new api.OrdersCustomBatchRequestEntrySetLineItemMetadata();
  buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata++;
  if (buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata < 3) {
    o.annotations = buildUnnamed2743();
    o.lineItemId = "foo";
    o.productId = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata--;
  return o;
}

checkOrdersCustomBatchRequestEntrySetLineItemMetadata(
    api.OrdersCustomBatchRequestEntrySetLineItemMetadata o) {
  buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata++;
  if (buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata < 3) {
    checkUnnamed2743(o.annotations);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntrySetLineItemMetadata--;
}

buildUnnamed2744() {
  var o = new core.List<api.OrderShipmentLineItemShipment>();
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

checkUnnamed2744(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

buildUnnamed2745() {
  var o = new core
      .List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>();
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  return o;
}

checkUnnamed2745(
    core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[0]);
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[1]);
}

core.int buildCounterOrdersCustomBatchRequestEntryShipLineItems = 0;
buildOrdersCustomBatchRequestEntryShipLineItems() {
  var o = new api.OrdersCustomBatchRequestEntryShipLineItems();
  buildCounterOrdersCustomBatchRequestEntryShipLineItems++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItems < 3) {
    o.carrier = "foo";
    o.lineItems = buildUnnamed2744();
    o.shipmentGroupId = "foo";
    o.shipmentId = "foo";
    o.shipmentInfos = buildUnnamed2745();
    o.trackingId = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItems--;
  return o;
}

checkOrdersCustomBatchRequestEntryShipLineItems(
    api.OrdersCustomBatchRequestEntryShipLineItems o) {
  buildCounterOrdersCustomBatchRequestEntryShipLineItems++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItems < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    checkUnnamed2744(o.lineItems);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    checkUnnamed2745(o.shipmentInfos);
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItems--;
}

core.int buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo = 0;
buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo() {
  var o = new api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo < 3) {
    o.carrier = "foo";
    o.shipmentId = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo--;
  return o;
}

checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(
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
    buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails = 0;
buildOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails() {
  var o = new api.OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails();
  buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails++;
  if (buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails <
      3) {
    o.deliverByDate = "foo";
    o.lineItemId = "foo";
    o.productId = "foo";
    o.shipByDate = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails--;
  return o;
}

checkOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails(
    api.OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails o) {
  buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails++;
  if (buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails <
      3) {
    unittest.expect(o.deliverByDate, unittest.equals('foo'));
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.shipByDate, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails--;
}

core.int buildCounterOrdersCustomBatchRequestEntryUpdateShipment = 0;
buildOrdersCustomBatchRequestEntryUpdateShipment() {
  var o = new api.OrdersCustomBatchRequestEntryUpdateShipment();
  buildCounterOrdersCustomBatchRequestEntryUpdateShipment++;
  if (buildCounterOrdersCustomBatchRequestEntryUpdateShipment < 3) {
    o.carrier = "foo";
    o.shipmentId = "foo";
    o.status = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateShipment--;
  return o;
}

checkOrdersCustomBatchRequestEntryUpdateShipment(
    api.OrdersCustomBatchRequestEntryUpdateShipment o) {
  buildCounterOrdersCustomBatchRequestEntryUpdateShipment++;
  if (buildCounterOrdersCustomBatchRequestEntryUpdateShipment < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryUpdateShipment--;
}

buildUnnamed2746() {
  var o = new core.List<api.OrdersCustomBatchResponseEntry>();
  o.add(buildOrdersCustomBatchResponseEntry());
  o.add(buildOrdersCustomBatchResponseEntry());
  return o;
}

checkUnnamed2746(core.List<api.OrdersCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchResponseEntry(o[0]);
  checkOrdersCustomBatchResponseEntry(o[1]);
}

core.int buildCounterOrdersCustomBatchResponse = 0;
buildOrdersCustomBatchResponse() {
  var o = new api.OrdersCustomBatchResponse();
  buildCounterOrdersCustomBatchResponse++;
  if (buildCounterOrdersCustomBatchResponse < 3) {
    o.entries = buildUnnamed2746();
    o.kind = "foo";
  }
  buildCounterOrdersCustomBatchResponse--;
  return o;
}

checkOrdersCustomBatchResponse(api.OrdersCustomBatchResponse o) {
  buildCounterOrdersCustomBatchResponse++;
  if (buildCounterOrdersCustomBatchResponse < 3) {
    checkUnnamed2746(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchResponse--;
}

core.int buildCounterOrdersCustomBatchResponseEntry = 0;
buildOrdersCustomBatchResponseEntry() {
  var o = new api.OrdersCustomBatchResponseEntry();
  buildCounterOrdersCustomBatchResponseEntry++;
  if (buildCounterOrdersCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.executionStatus = "foo";
    o.kind = "foo";
    o.order = buildOrder();
  }
  buildCounterOrdersCustomBatchResponseEntry--;
  return o;
}

checkOrdersCustomBatchResponseEntry(api.OrdersCustomBatchResponseEntry o) {
  buildCounterOrdersCustomBatchResponseEntry++;
  if (buildCounterOrdersCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkOrder(o.order);
  }
  buildCounterOrdersCustomBatchResponseEntry--;
}

core.int buildCounterOrdersGetByMerchantOrderIdResponse = 0;
buildOrdersGetByMerchantOrderIdResponse() {
  var o = new api.OrdersGetByMerchantOrderIdResponse();
  buildCounterOrdersGetByMerchantOrderIdResponse++;
  if (buildCounterOrdersGetByMerchantOrderIdResponse < 3) {
    o.kind = "foo";
    o.order = buildOrder();
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
  return o;
}

checkOrdersGetByMerchantOrderIdResponse(
    api.OrdersGetByMerchantOrderIdResponse o) {
  buildCounterOrdersGetByMerchantOrderIdResponse++;
  if (buildCounterOrdersGetByMerchantOrderIdResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkOrder(o.order);
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
}

core.int buildCounterOrdersGetTestOrderTemplateResponse = 0;
buildOrdersGetTestOrderTemplateResponse() {
  var o = new api.OrdersGetTestOrderTemplateResponse();
  buildCounterOrdersGetTestOrderTemplateResponse++;
  if (buildCounterOrdersGetTestOrderTemplateResponse < 3) {
    o.kind = "foo";
    o.template = buildTestOrder();
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
  return o;
}

checkOrdersGetTestOrderTemplateResponse(
    api.OrdersGetTestOrderTemplateResponse o) {
  buildCounterOrdersGetTestOrderTemplateResponse++;
  if (buildCounterOrdersGetTestOrderTemplateResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkTestOrder(o.template);
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
}

core.int buildCounterOrdersInStoreRefundLineItemRequest = 0;
buildOrdersInStoreRefundLineItemRequest() {
  var o = new api.OrdersInStoreRefundLineItemRequest();
  buildCounterOrdersInStoreRefundLineItemRequest++;
  if (buildCounterOrdersInStoreRefundLineItemRequest < 3) {
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
  return o;
}

checkOrdersInStoreRefundLineItemRequest(
    api.OrdersInStoreRefundLineItemRequest o) {
  buildCounterOrdersInStoreRefundLineItemRequest++;
  if (buildCounterOrdersInStoreRefundLineItemRequest < 3) {
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
}

core.int buildCounterOrdersInStoreRefundLineItemResponse = 0;
buildOrdersInStoreRefundLineItemResponse() {
  var o = new api.OrdersInStoreRefundLineItemResponse();
  buildCounterOrdersInStoreRefundLineItemResponse++;
  if (buildCounterOrdersInStoreRefundLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
  return o;
}

checkOrdersInStoreRefundLineItemResponse(
    api.OrdersInStoreRefundLineItemResponse o) {
  buildCounterOrdersInStoreRefundLineItemResponse++;
  if (buildCounterOrdersInStoreRefundLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
}

buildUnnamed2747() {
  var o = new core.List<api.Order>();
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

checkUnnamed2747(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterOrdersListResponse = 0;
buildOrdersListResponse() {
  var o = new api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2747();
  }
  buildCounterOrdersListResponse--;
  return o;
}

checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2747(o.resources);
  }
  buildCounterOrdersListResponse--;
}

core.int buildCounterOrdersRefundRequest = 0;
buildOrdersRefundRequest() {
  var o = new api.OrdersRefundRequest();
  buildCounterOrdersRefundRequest++;
  if (buildCounterOrdersRefundRequest < 3) {
    o.amount = buildPrice();
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.operationId = "foo";
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersRefundRequest--;
  return o;
}

checkOrdersRefundRequest(api.OrdersRefundRequest o) {
  buildCounterOrdersRefundRequest++;
  if (buildCounterOrdersRefundRequest < 3) {
    checkPrice(o.amount);
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersRefundRequest--;
}

core.int buildCounterOrdersRefundResponse = 0;
buildOrdersRefundResponse() {
  var o = new api.OrdersRefundResponse();
  buildCounterOrdersRefundResponse++;
  if (buildCounterOrdersRefundResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersRefundResponse--;
  return o;
}

checkOrdersRefundResponse(api.OrdersRefundResponse o) {
  buildCounterOrdersRefundResponse++;
  if (buildCounterOrdersRefundResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersRefundResponse--;
}

core.int buildCounterOrdersRejectReturnLineItemRequest = 0;
buildOrdersRejectReturnLineItemRequest() {
  var o = new api.OrdersRejectReturnLineItemRequest();
  buildCounterOrdersRejectReturnLineItemRequest++;
  if (buildCounterOrdersRejectReturnLineItemRequest < 3) {
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersRejectReturnLineItemRequest--;
  return o;
}

checkOrdersRejectReturnLineItemRequest(
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
buildOrdersRejectReturnLineItemResponse() {
  var o = new api.OrdersRejectReturnLineItemResponse();
  buildCounterOrdersRejectReturnLineItemResponse++;
  if (buildCounterOrdersRejectReturnLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
  return o;
}

checkOrdersRejectReturnLineItemResponse(
    api.OrdersRejectReturnLineItemResponse o) {
  buildCounterOrdersRejectReturnLineItemResponse++;
  if (buildCounterOrdersRejectReturnLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
}

core.int buildCounterOrdersReturnLineItemRequest = 0;
buildOrdersReturnLineItemRequest() {
  var o = new api.OrdersReturnLineItemRequest();
  buildCounterOrdersReturnLineItemRequest++;
  if (buildCounterOrdersReturnLineItemRequest < 3) {
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersReturnLineItemRequest--;
  return o;
}

checkOrdersReturnLineItemRequest(api.OrdersReturnLineItemRequest o) {
  buildCounterOrdersReturnLineItemRequest++;
  if (buildCounterOrdersReturnLineItemRequest < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersReturnLineItemRequest--;
}

core.int buildCounterOrdersReturnLineItemResponse = 0;
buildOrdersReturnLineItemResponse() {
  var o = new api.OrdersReturnLineItemResponse();
  buildCounterOrdersReturnLineItemResponse++;
  if (buildCounterOrdersReturnLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersReturnLineItemResponse--;
  return o;
}

checkOrdersReturnLineItemResponse(api.OrdersReturnLineItemResponse o) {
  buildCounterOrdersReturnLineItemResponse++;
  if (buildCounterOrdersReturnLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersReturnLineItemResponse--;
}

core.int buildCounterOrdersReturnRefundLineItemRequest = 0;
buildOrdersReturnRefundLineItemRequest() {
  var o = new api.OrdersReturnRefundLineItemRequest();
  buildCounterOrdersReturnRefundLineItemRequest++;
  if (buildCounterOrdersReturnRefundLineItemRequest < 3) {
    o.amountPretax = buildPrice();
    o.amountTax = buildPrice();
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
  return o;
}

checkOrdersReturnRefundLineItemRequest(
    api.OrdersReturnRefundLineItemRequest o) {
  buildCounterOrdersReturnRefundLineItemRequest++;
  if (buildCounterOrdersReturnRefundLineItemRequest < 3) {
    checkPrice(o.amountPretax);
    checkPrice(o.amountTax);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
}

core.int buildCounterOrdersReturnRefundLineItemResponse = 0;
buildOrdersReturnRefundLineItemResponse() {
  var o = new api.OrdersReturnRefundLineItemResponse();
  buildCounterOrdersReturnRefundLineItemResponse++;
  if (buildCounterOrdersReturnRefundLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
  return o;
}

checkOrdersReturnRefundLineItemResponse(
    api.OrdersReturnRefundLineItemResponse o) {
  buildCounterOrdersReturnRefundLineItemResponse++;
  if (buildCounterOrdersReturnRefundLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
}

buildUnnamed2748() {
  var o = new core.List<api.OrderMerchantProvidedAnnotation>();
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

checkUnnamed2748(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.int buildCounterOrdersSetLineItemMetadataRequest = 0;
buildOrdersSetLineItemMetadataRequest() {
  var o = new api.OrdersSetLineItemMetadataRequest();
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    o.annotations = buildUnnamed2748();
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
  return o;
}

checkOrdersSetLineItemMetadataRequest(api.OrdersSetLineItemMetadataRequest o) {
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    checkUnnamed2748(o.annotations);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
}

core.int buildCounterOrdersSetLineItemMetadataResponse = 0;
buildOrdersSetLineItemMetadataResponse() {
  var o = new api.OrdersSetLineItemMetadataResponse();
  buildCounterOrdersSetLineItemMetadataResponse++;
  if (buildCounterOrdersSetLineItemMetadataResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
  return o;
}

checkOrdersSetLineItemMetadataResponse(
    api.OrdersSetLineItemMetadataResponse o) {
  buildCounterOrdersSetLineItemMetadataResponse++;
  if (buildCounterOrdersSetLineItemMetadataResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
}

buildUnnamed2749() {
  var o = new core.List<api.OrderShipmentLineItemShipment>();
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

checkUnnamed2749(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

buildUnnamed2750() {
  var o = new core
      .List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>();
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  return o;
}

checkUnnamed2750(
    core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[0]);
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[1]);
}

core.int buildCounterOrdersShipLineItemsRequest = 0;
buildOrdersShipLineItemsRequest() {
  var o = new api.OrdersShipLineItemsRequest();
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    o.carrier = "foo";
    o.lineItems = buildUnnamed2749();
    o.operationId = "foo";
    o.shipmentGroupId = "foo";
    o.shipmentId = "foo";
    o.shipmentInfos = buildUnnamed2750();
    o.trackingId = "foo";
  }
  buildCounterOrdersShipLineItemsRequest--;
  return o;
}

checkOrdersShipLineItemsRequest(api.OrdersShipLineItemsRequest o) {
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    checkUnnamed2749(o.lineItems);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    checkUnnamed2750(o.shipmentInfos);
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersShipLineItemsRequest--;
}

core.int buildCounterOrdersShipLineItemsResponse = 0;
buildOrdersShipLineItemsResponse() {
  var o = new api.OrdersShipLineItemsResponse();
  buildCounterOrdersShipLineItemsResponse++;
  if (buildCounterOrdersShipLineItemsResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersShipLineItemsResponse--;
  return o;
}

checkOrdersShipLineItemsResponse(api.OrdersShipLineItemsResponse o) {
  buildCounterOrdersShipLineItemsResponse++;
  if (buildCounterOrdersShipLineItemsResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersShipLineItemsResponse--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsRequest = 0;
buildOrdersUpdateLineItemShippingDetailsRequest() {
  var o = new api.OrdersUpdateLineItemShippingDetailsRequest();
  buildCounterOrdersUpdateLineItemShippingDetailsRequest++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsRequest < 3) {
    o.deliverByDate = "foo";
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.shipByDate = "foo";
  }
  buildCounterOrdersUpdateLineItemShippingDetailsRequest--;
  return o;
}

checkOrdersUpdateLineItemShippingDetailsRequest(
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
buildOrdersUpdateLineItemShippingDetailsResponse() {
  var o = new api.OrdersUpdateLineItemShippingDetailsResponse();
  buildCounterOrdersUpdateLineItemShippingDetailsResponse++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
  return o;
}

checkOrdersUpdateLineItemShippingDetailsResponse(
    api.OrdersUpdateLineItemShippingDetailsResponse o) {
  buildCounterOrdersUpdateLineItemShippingDetailsResponse++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdRequest = 0;
buildOrdersUpdateMerchantOrderIdRequest() {
  var o = new api.OrdersUpdateMerchantOrderIdRequest();
  buildCounterOrdersUpdateMerchantOrderIdRequest++;
  if (buildCounterOrdersUpdateMerchantOrderIdRequest < 3) {
    o.merchantOrderId = "foo";
    o.operationId = "foo";
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
  return o;
}

checkOrdersUpdateMerchantOrderIdRequest(
    api.OrdersUpdateMerchantOrderIdRequest o) {
  buildCounterOrdersUpdateMerchantOrderIdRequest++;
  if (buildCounterOrdersUpdateMerchantOrderIdRequest < 3) {
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdResponse = 0;
buildOrdersUpdateMerchantOrderIdResponse() {
  var o = new api.OrdersUpdateMerchantOrderIdResponse();
  buildCounterOrdersUpdateMerchantOrderIdResponse++;
  if (buildCounterOrdersUpdateMerchantOrderIdResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
  return o;
}

checkOrdersUpdateMerchantOrderIdResponse(
    api.OrdersUpdateMerchantOrderIdResponse o) {
  buildCounterOrdersUpdateMerchantOrderIdResponse++;
  if (buildCounterOrdersUpdateMerchantOrderIdResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
}

core.int buildCounterOrdersUpdateShipmentRequest = 0;
buildOrdersUpdateShipmentRequest() {
  var o = new api.OrdersUpdateShipmentRequest();
  buildCounterOrdersUpdateShipmentRequest++;
  if (buildCounterOrdersUpdateShipmentRequest < 3) {
    o.carrier = "foo";
    o.operationId = "foo";
    o.shipmentId = "foo";
    o.status = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrdersUpdateShipmentRequest--;
  return o;
}

checkOrdersUpdateShipmentRequest(api.OrdersUpdateShipmentRequest o) {
  buildCounterOrdersUpdateShipmentRequest++;
  if (buildCounterOrdersUpdateShipmentRequest < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateShipmentRequest--;
}

core.int buildCounterOrdersUpdateShipmentResponse = 0;
buildOrdersUpdateShipmentResponse() {
  var o = new api.OrdersUpdateShipmentResponse();
  buildCounterOrdersUpdateShipmentResponse++;
  if (buildCounterOrdersUpdateShipmentResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersUpdateShipmentResponse--;
  return o;
}

checkOrdersUpdateShipmentResponse(api.OrdersUpdateShipmentResponse o) {
  buildCounterOrdersUpdateShipmentResponse++;
  if (buildCounterOrdersUpdateShipmentResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateShipmentResponse--;
}

buildUnnamed2751() {
  var o = new core.List<api.PosCustomBatchRequestEntry>();
  o.add(buildPosCustomBatchRequestEntry());
  o.add(buildPosCustomBatchRequestEntry());
  return o;
}

checkUnnamed2751(core.List<api.PosCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchRequestEntry(o[0]);
  checkPosCustomBatchRequestEntry(o[1]);
}

core.int buildCounterPosCustomBatchRequest = 0;
buildPosCustomBatchRequest() {
  var o = new api.PosCustomBatchRequest();
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    o.entries = buildUnnamed2751();
  }
  buildCounterPosCustomBatchRequest--;
  return o;
}

checkPosCustomBatchRequest(api.PosCustomBatchRequest o) {
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    checkUnnamed2751(o.entries);
  }
  buildCounterPosCustomBatchRequest--;
}

core.int buildCounterPosCustomBatchRequestEntry = 0;
buildPosCustomBatchRequestEntry() {
  var o = new api.PosCustomBatchRequestEntry();
  buildCounterPosCustomBatchRequestEntry++;
  if (buildCounterPosCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.inventory = buildPosInventory();
    o.merchantId = "foo";
    o.method = "foo";
    o.sale = buildPosSale();
    o.store = buildPosStore();
    o.storeCode = "foo";
    o.targetMerchantId = "foo";
  }
  buildCounterPosCustomBatchRequestEntry--;
  return o;
}

checkPosCustomBatchRequestEntry(api.PosCustomBatchRequestEntry o) {
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

buildUnnamed2752() {
  var o = new core.List<api.PosCustomBatchResponseEntry>();
  o.add(buildPosCustomBatchResponseEntry());
  o.add(buildPosCustomBatchResponseEntry());
  return o;
}

checkUnnamed2752(core.List<api.PosCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchResponseEntry(o[0]);
  checkPosCustomBatchResponseEntry(o[1]);
}

core.int buildCounterPosCustomBatchResponse = 0;
buildPosCustomBatchResponse() {
  var o = new api.PosCustomBatchResponse();
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    o.entries = buildUnnamed2752();
    o.kind = "foo";
  }
  buildCounterPosCustomBatchResponse--;
  return o;
}

checkPosCustomBatchResponse(api.PosCustomBatchResponse o) {
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    checkUnnamed2752(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPosCustomBatchResponse--;
}

core.int buildCounterPosCustomBatchResponseEntry = 0;
buildPosCustomBatchResponseEntry() {
  var o = new api.PosCustomBatchResponseEntry();
  buildCounterPosCustomBatchResponseEntry++;
  if (buildCounterPosCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.inventory = buildPosInventory();
    o.kind = "foo";
    o.sale = buildPosSale();
    o.store = buildPosStore();
  }
  buildCounterPosCustomBatchResponseEntry--;
  return o;
}

checkPosCustomBatchResponseEntry(api.PosCustomBatchResponseEntry o) {
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

buildUnnamed2753() {
  var o = new core.List<api.PosDataProvidersPosDataProvider>();
  o.add(buildPosDataProvidersPosDataProvider());
  o.add(buildPosDataProvidersPosDataProvider());
  return o;
}

checkUnnamed2753(core.List<api.PosDataProvidersPosDataProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProvidersPosDataProvider(o[0]);
  checkPosDataProvidersPosDataProvider(o[1]);
}

core.int buildCounterPosDataProviders = 0;
buildPosDataProviders() {
  var o = new api.PosDataProviders();
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    o.country = "foo";
    o.posDataProviders = buildUnnamed2753();
  }
  buildCounterPosDataProviders--;
  return o;
}

checkPosDataProviders(api.PosDataProviders o) {
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed2753(o.posDataProviders);
  }
  buildCounterPosDataProviders--;
}

core.int buildCounterPosDataProvidersPosDataProvider = 0;
buildPosDataProvidersPosDataProvider() {
  var o = new api.PosDataProvidersPosDataProvider();
  buildCounterPosDataProvidersPosDataProvider++;
  if (buildCounterPosDataProvidersPosDataProvider < 3) {
    o.displayName = "foo";
    o.fullName = "foo";
    o.providerId = "foo";
  }
  buildCounterPosDataProvidersPosDataProvider--;
  return o;
}

checkPosDataProvidersPosDataProvider(api.PosDataProvidersPosDataProvider o) {
  buildCounterPosDataProvidersPosDataProvider++;
  if (buildCounterPosDataProvidersPosDataProvider < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterPosDataProvidersPosDataProvider--;
}

core.int buildCounterPosInventory = 0;
buildPosInventory() {
  var o = new api.PosInventory();
  buildCounterPosInventory++;
  if (buildCounterPosInventory < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosInventory--;
  return o;
}

checkPosInventory(api.PosInventory o) {
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
buildPosInventoryRequest() {
  var o = new api.PosInventoryRequest();
  buildCounterPosInventoryRequest++;
  if (buildCounterPosInventoryRequest < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosInventoryRequest--;
  return o;
}

checkPosInventoryRequest(api.PosInventoryRequest o) {
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
buildPosInventoryResponse() {
  var o = new api.PosInventoryResponse();
  buildCounterPosInventoryResponse++;
  if (buildCounterPosInventoryResponse < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosInventoryResponse--;
  return o;
}

checkPosInventoryResponse(api.PosInventoryResponse o) {
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

buildUnnamed2754() {
  var o = new core.List<api.PosStore>();
  o.add(buildPosStore());
  o.add(buildPosStore());
  return o;
}

checkUnnamed2754(core.List<api.PosStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosStore(o[0]);
  checkPosStore(o[1]);
}

core.int buildCounterPosListResponse = 0;
buildPosListResponse() {
  var o = new api.PosListResponse();
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    o.kind = "foo";
    o.resources = buildUnnamed2754();
  }
  buildCounterPosListResponse--;
  return o;
}

checkPosListResponse(api.PosListResponse o) {
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2754(o.resources);
  }
  buildCounterPosListResponse--;
}

core.int buildCounterPosSale = 0;
buildPosSale() {
  var o = new api.PosSale();
  buildCounterPosSale++;
  if (buildCounterPosSale < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.saleId = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosSale--;
  return o;
}

checkPosSale(api.PosSale o) {
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
buildPosSaleRequest() {
  var o = new api.PosSaleRequest();
  buildCounterPosSaleRequest++;
  if (buildCounterPosSaleRequest < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.saleId = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosSaleRequest--;
  return o;
}

checkPosSaleRequest(api.PosSaleRequest o) {
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
buildPosSaleResponse() {
  var o = new api.PosSaleResponse();
  buildCounterPosSaleResponse++;
  if (buildCounterPosSaleResponse < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.saleId = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosSaleResponse--;
  return o;
}

checkPosSaleResponse(api.PosSaleResponse o) {
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
buildPosStore() {
  var o = new api.PosStore();
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    o.kind = "foo";
    o.storeAddress = "foo";
    o.storeCode = "foo";
  }
  buildCounterPosStore--;
  return o;
}

checkPosStore(api.PosStore o) {
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.storeAddress, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
  }
  buildCounterPosStore--;
}

buildUnnamed2755() {
  var o = new core.List<api.PostalCodeRange>();
  o.add(buildPostalCodeRange());
  o.add(buildPostalCodeRange());
  return o;
}

checkUnnamed2755(core.List<api.PostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeRange(o[0]);
  checkPostalCodeRange(o[1]);
}

core.int buildCounterPostalCodeGroup = 0;
buildPostalCodeGroup() {
  var o = new api.PostalCodeGroup();
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    o.country = "foo";
    o.name = "foo";
    o.postalCodeRanges = buildUnnamed2755();
  }
  buildCounterPostalCodeGroup--;
  return o;
}

checkPostalCodeGroup(api.PostalCodeGroup o) {
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2755(o.postalCodeRanges);
  }
  buildCounterPostalCodeGroup--;
}

core.int buildCounterPostalCodeRange = 0;
buildPostalCodeRange() {
  var o = new api.PostalCodeRange();
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    o.postalCodeRangeBegin = "foo";
    o.postalCodeRangeEnd = "foo";
  }
  buildCounterPostalCodeRange--;
  return o;
}

checkPostalCodeRange(api.PostalCodeRange o) {
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    unittest.expect(o.postalCodeRangeBegin, unittest.equals('foo'));
    unittest.expect(o.postalCodeRangeEnd, unittest.equals('foo'));
  }
  buildCounterPostalCodeRange--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.currency = "foo";
    o.value = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

buildUnnamed2756() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2756(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2757() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2757(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2758() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2758(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2759() {
  var o = new core.List<api.ProductAspect>();
  o.add(buildProductAspect());
  o.add(buildProductAspect());
  return o;
}

checkUnnamed2759(core.List<api.ProductAspect> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductAspect(o[0]);
  checkProductAspect(o[1]);
}

buildUnnamed2760() {
  var o = new core.List<api.ProductCustomAttribute>();
  o.add(buildProductCustomAttribute());
  o.add(buildProductCustomAttribute());
  return o;
}

checkUnnamed2760(core.List<api.ProductCustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCustomAttribute(o[0]);
  checkProductCustomAttribute(o[1]);
}

buildUnnamed2761() {
  var o = new core.List<api.ProductCustomGroup>();
  o.add(buildProductCustomGroup());
  o.add(buildProductCustomGroup());
  return o;
}

checkUnnamed2761(core.List<api.ProductCustomGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCustomGroup(o[0]);
  checkProductCustomGroup(o[1]);
}

buildUnnamed2762() {
  var o = new core.List<api.ProductDestination>();
  o.add(buildProductDestination());
  o.add(buildProductDestination());
  return o;
}

checkUnnamed2762(core.List<api.ProductDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDestination(o[0]);
  checkProductDestination(o[1]);
}

buildUnnamed2763() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2763(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2764() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2764(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2765() {
  var o = new core.List<api.ProductShipping>();
  o.add(buildProductShipping());
  o.add(buildProductShipping());
  return o;
}

checkUnnamed2765(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0]);
  checkProductShipping(o[1]);
}

buildUnnamed2766() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2766(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2767() {
  var o = new core.List<api.ProductTax>();
  o.add(buildProductTax());
  o.add(buildProductTax());
  return o;
}

checkUnnamed2767(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0]);
  checkProductTax(o[1]);
}

buildUnnamed2768() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2769() {
  var o = new core.List<api.Error>();
  o.add(buildError());
  o.add(buildError());
  return o;
}

checkUnnamed2769(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed2756();
    o.additionalProductTypes = buildUnnamed2757();
    o.adult = true;
    o.adwordsGrouping = "foo";
    o.adwordsLabels = buildUnnamed2758();
    o.adwordsRedirect = "foo";
    o.ageGroup = "foo";
    o.aspects = buildUnnamed2759();
    o.availability = "foo";
    o.availabilityDate = "foo";
    o.brand = "foo";
    o.channel = "foo";
    o.color = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.customAttributes = buildUnnamed2760();
    o.customGroups = buildUnnamed2761();
    o.customLabel0 = "foo";
    o.customLabel1 = "foo";
    o.customLabel2 = "foo";
    o.customLabel3 = "foo";
    o.customLabel4 = "foo";
    o.description = "foo";
    o.destinations = buildUnnamed2762();
    o.displayAdsId = "foo";
    o.displayAdsLink = "foo";
    o.displayAdsSimilarIds = buildUnnamed2763();
    o.displayAdsTitle = "foo";
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = "foo";
    o.expirationDate = "foo";
    o.gender = "foo";
    o.googleProductCategory = "foo";
    o.gtin = "foo";
    o.id = "foo";
    o.identifierExists = true;
    o.imageLink = "foo";
    o.installment = buildInstallment();
    o.isBundle = true;
    o.itemGroupId = "foo";
    o.kind = "foo";
    o.link = "foo";
    o.loyaltyPoints = buildLoyaltyPoints();
    o.material = "foo";
    o.maxHandlingTime = "foo";
    o.minHandlingTime = "foo";
    o.mobileLink = "foo";
    o.mpn = "foo";
    o.multipack = "foo";
    o.offerId = "foo";
    o.onlineOnly = true;
    o.pattern = "foo";
    o.price = buildPrice();
    o.productType = "foo";
    o.promotionIds = buildUnnamed2764();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
    o.sellOnGoogleQuantity = "foo";
    o.shipping = buildUnnamed2765();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = "foo";
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.sizeSystem = "foo";
    o.sizeType = "foo";
    o.sizes = buildUnnamed2766();
    o.targetCountry = "foo";
    o.taxes = buildUnnamed2767();
    o.title = "foo";
    o.unitPricingBaseMeasure = buildProductUnitPricingBaseMeasure();
    o.unitPricingMeasure = buildProductUnitPricingMeasure();
    o.validatedDestinations = buildUnnamed2768();
    o.warnings = buildUnnamed2769();
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed2756(o.additionalImageLinks);
    checkUnnamed2757(o.additionalProductTypes);
    unittest.expect(o.adult, unittest.isTrue);
    unittest.expect(o.adwordsGrouping, unittest.equals('foo'));
    checkUnnamed2758(o.adwordsLabels);
    unittest.expect(o.adwordsRedirect, unittest.equals('foo'));
    unittest.expect(o.ageGroup, unittest.equals('foo'));
    checkUnnamed2759(o.aspects);
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.availabilityDate, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed2760(o.customAttributes);
    checkUnnamed2761(o.customGroups);
    unittest.expect(o.customLabel0, unittest.equals('foo'));
    unittest.expect(o.customLabel1, unittest.equals('foo'));
    unittest.expect(o.customLabel2, unittest.equals('foo'));
    unittest.expect(o.customLabel3, unittest.equals('foo'));
    unittest.expect(o.customLabel4, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2762(o.destinations);
    unittest.expect(o.displayAdsId, unittest.equals('foo'));
    unittest.expect(o.displayAdsLink, unittest.equals('foo'));
    checkUnnamed2763(o.displayAdsSimilarIds);
    unittest.expect(o.displayAdsTitle, unittest.equals('foo'));
    unittest.expect(o.displayAdsValue, unittest.equals(42.0));
    unittest.expect(o.energyEfficiencyClass, unittest.equals('foo'));
    unittest.expect(o.expirationDate, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.googleProductCategory, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.identifierExists, unittest.isTrue);
    unittest.expect(o.imageLink, unittest.equals('foo'));
    checkInstallment(o.installment);
    unittest.expect(o.isBundle, unittest.isTrue);
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints);
    unittest.expect(o.material, unittest.equals('foo'));
    unittest.expect(o.maxHandlingTime, unittest.equals('foo'));
    unittest.expect(o.minHandlingTime, unittest.equals('foo'));
    unittest.expect(o.mobileLink, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.multipack, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.onlineOnly, unittest.isTrue);
    unittest.expect(o.pattern, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.productType, unittest.equals('foo'));
    checkUnnamed2764(o.promotionIds);
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.sellOnGoogleQuantity, unittest.equals('foo'));
    checkUnnamed2765(o.shipping);
    checkProductShippingDimension(o.shippingHeight);
    unittest.expect(o.shippingLabel, unittest.equals('foo'));
    checkProductShippingDimension(o.shippingLength);
    checkProductShippingWeight(o.shippingWeight);
    checkProductShippingDimension(o.shippingWidth);
    unittest.expect(o.sizeSystem, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    checkUnnamed2766(o.sizes);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    checkUnnamed2767(o.taxes);
    unittest.expect(o.title, unittest.equals('foo'));
    checkProductUnitPricingBaseMeasure(o.unitPricingBaseMeasure);
    checkProductUnitPricingMeasure(o.unitPricingMeasure);
    checkUnnamed2768(o.validatedDestinations);
    checkUnnamed2769(o.warnings);
  }
  buildCounterProduct--;
}

core.int buildCounterProductAspect = 0;
buildProductAspect() {
  var o = new api.ProductAspect();
  buildCounterProductAspect++;
  if (buildCounterProductAspect < 3) {
    o.aspectName = "foo";
    o.destinationName = "foo";
    o.intention = "foo";
  }
  buildCounterProductAspect--;
  return o;
}

checkProductAspect(api.ProductAspect o) {
  buildCounterProductAspect++;
  if (buildCounterProductAspect < 3) {
    unittest.expect(o.aspectName, unittest.equals('foo'));
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.intention, unittest.equals('foo'));
  }
  buildCounterProductAspect--;
}

core.int buildCounterProductCustomAttribute = 0;
buildProductCustomAttribute() {
  var o = new api.ProductCustomAttribute();
  buildCounterProductCustomAttribute++;
  if (buildCounterProductCustomAttribute < 3) {
    o.name = "foo";
    o.type = "foo";
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterProductCustomAttribute--;
  return o;
}

checkProductCustomAttribute(api.ProductCustomAttribute o) {
  buildCounterProductCustomAttribute++;
  if (buildCounterProductCustomAttribute < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterProductCustomAttribute--;
}

buildUnnamed2770() {
  var o = new core.List<api.ProductCustomAttribute>();
  o.add(buildProductCustomAttribute());
  o.add(buildProductCustomAttribute());
  return o;
}

checkUnnamed2770(core.List<api.ProductCustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCustomAttribute(o[0]);
  checkProductCustomAttribute(o[1]);
}

core.int buildCounterProductCustomGroup = 0;
buildProductCustomGroup() {
  var o = new api.ProductCustomGroup();
  buildCounterProductCustomGroup++;
  if (buildCounterProductCustomGroup < 3) {
    o.attributes = buildUnnamed2770();
    o.name = "foo";
  }
  buildCounterProductCustomGroup--;
  return o;
}

checkProductCustomGroup(api.ProductCustomGroup o) {
  buildCounterProductCustomGroup++;
  if (buildCounterProductCustomGroup < 3) {
    checkUnnamed2770(o.attributes);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterProductCustomGroup--;
}

core.int buildCounterProductDestination = 0;
buildProductDestination() {
  var o = new api.ProductDestination();
  buildCounterProductDestination++;
  if (buildCounterProductDestination < 3) {
    o.destinationName = "foo";
    o.intention = "foo";
  }
  buildCounterProductDestination--;
  return o;
}

checkProductDestination(api.ProductDestination o) {
  buildCounterProductDestination++;
  if (buildCounterProductDestination < 3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.intention, unittest.equals('foo'));
  }
  buildCounterProductDestination--;
}

core.int buildCounterProductShipping = 0;
buildProductShipping() {
  var o = new api.ProductShipping();
  buildCounterProductShipping++;
  if (buildCounterProductShipping < 3) {
    o.country = "foo";
    o.locationGroupName = "foo";
    o.locationId = "foo";
    o.postalCode = "foo";
    o.price = buildPrice();
    o.region = "foo";
    o.service = "foo";
  }
  buildCounterProductShipping--;
  return o;
}

checkProductShipping(api.ProductShipping o) {
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
buildProductShippingDimension() {
  var o = new api.ProductShippingDimension();
  buildCounterProductShippingDimension++;
  if (buildCounterProductShippingDimension < 3) {
    o.unit = "foo";
    o.value = 42.0;
  }
  buildCounterProductShippingDimension--;
  return o;
}

checkProductShippingDimension(api.ProductShippingDimension o) {
  buildCounterProductShippingDimension++;
  if (buildCounterProductShippingDimension < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductShippingDimension--;
}

core.int buildCounterProductShippingWeight = 0;
buildProductShippingWeight() {
  var o = new api.ProductShippingWeight();
  buildCounterProductShippingWeight++;
  if (buildCounterProductShippingWeight < 3) {
    o.unit = "foo";
    o.value = 42.0;
  }
  buildCounterProductShippingWeight--;
  return o;
}

checkProductShippingWeight(api.ProductShippingWeight o) {
  buildCounterProductShippingWeight++;
  if (buildCounterProductShippingWeight < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductShippingWeight--;
}

buildUnnamed2771() {
  var o = new core.List<api.ProductStatusDataQualityIssue>();
  o.add(buildProductStatusDataQualityIssue());
  o.add(buildProductStatusDataQualityIssue());
  return o;
}

checkUnnamed2771(core.List<api.ProductStatusDataQualityIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDataQualityIssue(o[0]);
  checkProductStatusDataQualityIssue(o[1]);
}

buildUnnamed2772() {
  var o = new core.List<api.ProductStatusDestinationStatus>();
  o.add(buildProductStatusDestinationStatus());
  o.add(buildProductStatusDestinationStatus());
  return o;
}

checkUnnamed2772(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(o[0]);
  checkProductStatusDestinationStatus(o[1]);
}

buildUnnamed2773() {
  var o = new core.List<api.ProductStatusItemLevelIssue>();
  o.add(buildProductStatusItemLevelIssue());
  o.add(buildProductStatusItemLevelIssue());
  return o;
}

checkUnnamed2773(core.List<api.ProductStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusItemLevelIssue(o[0]);
  checkProductStatusItemLevelIssue(o[1]);
}

core.int buildCounterProductStatus = 0;
buildProductStatus() {
  var o = new api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = "foo";
    o.dataQualityIssues = buildUnnamed2771();
    o.destinationStatuses = buildUnnamed2772();
    o.googleExpirationDate = "foo";
    o.itemLevelIssues = buildUnnamed2773();
    o.kind = "foo";
    o.lastUpdateDate = "foo";
    o.link = "foo";
    o.product = buildProduct();
    o.productId = "foo";
    o.title = "foo";
  }
  buildCounterProductStatus--;
  return o;
}

checkProductStatus(api.ProductStatus o) {
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    checkUnnamed2771(o.dataQualityIssues);
    checkUnnamed2772(o.destinationStatuses);
    unittest.expect(o.googleExpirationDate, unittest.equals('foo'));
    checkUnnamed2773(o.itemLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateDate, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkProduct(o.product);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterProductStatus--;
}

core.int buildCounterProductStatusDataQualityIssue = 0;
buildProductStatusDataQualityIssue() {
  var o = new api.ProductStatusDataQualityIssue();
  buildCounterProductStatusDataQualityIssue++;
  if (buildCounterProductStatusDataQualityIssue < 3) {
    o.destination = "foo";
    o.detail = "foo";
    o.fetchStatus = "foo";
    o.id = "foo";
    o.location = "foo";
    o.severity = "foo";
    o.timestamp = "foo";
    o.valueOnLandingPage = "foo";
    o.valueProvided = "foo";
  }
  buildCounterProductStatusDataQualityIssue--;
  return o;
}

checkProductStatusDataQualityIssue(api.ProductStatusDataQualityIssue o) {
  buildCounterProductStatusDataQualityIssue++;
  if (buildCounterProductStatusDataQualityIssue < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.fetchStatus, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.valueOnLandingPage, unittest.equals('foo'));
    unittest.expect(o.valueProvided, unittest.equals('foo'));
  }
  buildCounterProductStatusDataQualityIssue--;
}

core.int buildCounterProductStatusDestinationStatus = 0;
buildProductStatusDestinationStatus() {
  var o = new api.ProductStatusDestinationStatus();
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    o.approvalPending = true;
    o.approvalStatus = "foo";
    o.destination = "foo";
    o.intention = "foo";
  }
  buildCounterProductStatusDestinationStatus--;
  return o;
}

checkProductStatusDestinationStatus(api.ProductStatusDestinationStatus o) {
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    unittest.expect(o.approvalPending, unittest.isTrue);
    unittest.expect(o.approvalStatus, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.intention, unittest.equals('foo'));
  }
  buildCounterProductStatusDestinationStatus--;
}

core.int buildCounterProductStatusItemLevelIssue = 0;
buildProductStatusItemLevelIssue() {
  var o = new api.ProductStatusItemLevelIssue();
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    o.attributeName = "foo";
    o.code = "foo";
    o.description = "foo";
    o.destination = "foo";
    o.detail = "foo";
    o.documentation = "foo";
    o.resolution = "foo";
    o.servability = "foo";
  }
  buildCounterProductStatusItemLevelIssue--;
  return o;
}

checkProductStatusItemLevelIssue(api.ProductStatusItemLevelIssue o) {
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
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

core.int buildCounterProductTax = 0;
buildProductTax() {
  var o = new api.ProductTax();
  buildCounterProductTax++;
  if (buildCounterProductTax < 3) {
    o.country = "foo";
    o.locationId = "foo";
    o.postalCode = "foo";
    o.rate = 42.0;
    o.region = "foo";
    o.taxShip = true;
  }
  buildCounterProductTax--;
  return o;
}

checkProductTax(api.ProductTax o) {
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
buildProductUnitPricingBaseMeasure() {
  var o = new api.ProductUnitPricingBaseMeasure();
  buildCounterProductUnitPricingBaseMeasure++;
  if (buildCounterProductUnitPricingBaseMeasure < 3) {
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterProductUnitPricingBaseMeasure--;
  return o;
}

checkProductUnitPricingBaseMeasure(api.ProductUnitPricingBaseMeasure o) {
  buildCounterProductUnitPricingBaseMeasure++;
  if (buildCounterProductUnitPricingBaseMeasure < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterProductUnitPricingBaseMeasure--;
}

core.int buildCounterProductUnitPricingMeasure = 0;
buildProductUnitPricingMeasure() {
  var o = new api.ProductUnitPricingMeasure();
  buildCounterProductUnitPricingMeasure++;
  if (buildCounterProductUnitPricingMeasure < 3) {
    o.unit = "foo";
    o.value = 42.0;
  }
  buildCounterProductUnitPricingMeasure--;
  return o;
}

checkProductUnitPricingMeasure(api.ProductUnitPricingMeasure o) {
  buildCounterProductUnitPricingMeasure++;
  if (buildCounterProductUnitPricingMeasure < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductUnitPricingMeasure--;
}

buildUnnamed2774() {
  var o = new core.List<api.ProductsCustomBatchRequestEntry>();
  o.add(buildProductsCustomBatchRequestEntry());
  o.add(buildProductsCustomBatchRequestEntry());
  return o;
}

checkUnnamed2774(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(o[0]);
  checkProductsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductsCustomBatchRequest = 0;
buildProductsCustomBatchRequest() {
  var o = new api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed2774();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed2774(o.entries);
  }
  buildCounterProductsCustomBatchRequest--;
}

core.int buildCounterProductsCustomBatchRequestEntry = 0;
buildProductsCustomBatchRequestEntry() {
  var o = new api.ProductsCustomBatchRequestEntry();
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.product = buildProduct();
    o.productId = "foo";
  }
  buildCounterProductsCustomBatchRequestEntry--;
  return o;
}

checkProductsCustomBatchRequestEntry(api.ProductsCustomBatchRequestEntry o) {
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkProduct(o.product);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchRequestEntry--;
}

buildUnnamed2775() {
  var o = new core.List<api.ProductsCustomBatchResponseEntry>();
  o.add(buildProductsCustomBatchResponseEntry());
  o.add(buildProductsCustomBatchResponseEntry());
  return o;
}

checkUnnamed2775(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(o[0]);
  checkProductsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductsCustomBatchResponse = 0;
buildProductsCustomBatchResponse() {
  var o = new api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed2775();
    o.kind = "foo";
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed2775(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchResponse--;
}

core.int buildCounterProductsCustomBatchResponseEntry = 0;
buildProductsCustomBatchResponseEntry() {
  var o = new api.ProductsCustomBatchResponseEntry();
  buildCounterProductsCustomBatchResponseEntry++;
  if (buildCounterProductsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.product = buildProduct();
  }
  buildCounterProductsCustomBatchResponseEntry--;
  return o;
}

checkProductsCustomBatchResponseEntry(api.ProductsCustomBatchResponseEntry o) {
  buildCounterProductsCustomBatchResponseEntry++;
  if (buildCounterProductsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProduct(o.product);
  }
  buildCounterProductsCustomBatchResponseEntry--;
}

buildUnnamed2776() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed2776(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterProductsListResponse = 0;
buildProductsListResponse() {
  var o = new api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2776();
  }
  buildCounterProductsListResponse--;
  return o;
}

checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2776(o.resources);
  }
  buildCounterProductsListResponse--;
}

buildUnnamed2777() {
  var o = new core.List<api.ProductstatusesCustomBatchRequestEntry>();
  o.add(buildProductstatusesCustomBatchRequestEntry());
  o.add(buildProductstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed2777(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(o[0]);
  checkProductstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
buildProductstatusesCustomBatchRequest() {
  var o = new api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed2777();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

checkProductstatusesCustomBatchRequest(
    api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed2777(o.entries);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

buildUnnamed2778() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2778(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductstatusesCustomBatchRequestEntry = 0;
buildProductstatusesCustomBatchRequestEntry() {
  var o = new api.ProductstatusesCustomBatchRequestEntry();
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.destinations = buildUnnamed2778();
    o.includeAttributes = true;
    o.merchantId = "foo";
    o.method = "foo";
    o.productId = "foo";
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
  return o;
}

checkProductstatusesCustomBatchRequestEntry(
    api.ProductstatusesCustomBatchRequestEntry o) {
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkUnnamed2778(o.destinations);
    unittest.expect(o.includeAttributes, unittest.isTrue);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
}

buildUnnamed2779() {
  var o = new core.List<api.ProductstatusesCustomBatchResponseEntry>();
  o.add(buildProductstatusesCustomBatchResponseEntry());
  o.add(buildProductstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed2779(core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchResponseEntry(o[0]);
  checkProductstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchResponse = 0;
buildProductstatusesCustomBatchResponse() {
  var o = new api.ProductstatusesCustomBatchResponse();
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed2779();
    o.kind = "foo";
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

checkProductstatusesCustomBatchResponse(
    api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed2779(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchResponse--;
}

core.int buildCounterProductstatusesCustomBatchResponseEntry = 0;
buildProductstatusesCustomBatchResponseEntry() {
  var o = new api.ProductstatusesCustomBatchResponseEntry();
  buildCounterProductstatusesCustomBatchResponseEntry++;
  if (buildCounterProductstatusesCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.productStatus = buildProductStatus();
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
  return o;
}

checkProductstatusesCustomBatchResponseEntry(
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

buildUnnamed2780() {
  var o = new core.List<api.ProductStatus>();
  o.add(buildProductStatus());
  o.add(buildProductStatus());
  return o;
}

checkUnnamed2780(core.List<api.ProductStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatus(o[0]);
  checkProductStatus(o[1]);
}

core.int buildCounterProductstatusesListResponse = 0;
buildProductstatusesListResponse() {
  var o = new api.ProductstatusesListResponse();
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2780();
  }
  buildCounterProductstatusesListResponse--;
  return o;
}

checkProductstatusesListResponse(api.ProductstatusesListResponse o) {
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2780(o.resources);
  }
  buildCounterProductstatusesListResponse--;
}

core.int buildCounterPromotion = 0;
buildPromotion() {
  var o = new api.Promotion();
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    o.promotionAmount = buildAmount();
    o.promotionId = "foo";
  }
  buildCounterPromotion--;
  return o;
}

checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkAmount(o.promotionAmount);
    unittest.expect(o.promotionId, unittest.equals('foo'));
  }
  buildCounterPromotion--;
}

buildUnnamed2781() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2781(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2782() {
  var o = new core.List<api.CarrierRate>();
  o.add(buildCarrierRate());
  o.add(buildCarrierRate());
  return o;
}

checkUnnamed2782(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0]);
  checkCarrierRate(o[1]);
}

buildUnnamed2783() {
  var o = new core.List<api.Table>();
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

checkUnnamed2783(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterRateGroup = 0;
buildRateGroup() {
  var o = new api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed2781();
    o.carrierRates = buildUnnamed2782();
    o.mainTable = buildTable();
    o.singleValue = buildValue();
    o.subtables = buildUnnamed2783();
  }
  buildCounterRateGroup--;
  return o;
}

checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed2781(o.applicableShippingLabels);
    checkUnnamed2782(o.carrierRates);
    checkTable(o.mainTable);
    checkValue(o.singleValue);
    checkUnnamed2783(o.subtables);
  }
  buildCounterRateGroup--;
}

buildUnnamed2784() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed2784(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterRow = 0;
buildRow() {
  var o = new api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed2784();
  }
  buildCounterRow--;
  return o;
}

checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed2784(o.cells);
  }
  buildCounterRow--;
}

buildUnnamed2785() {
  var o = new core.List<api.RateGroup>();
  o.add(buildRateGroup());
  o.add(buildRateGroup());
  return o;
}

checkUnnamed2785(core.List<api.RateGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRateGroup(o[0]);
  checkRateGroup(o[1]);
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.active = true;
    o.currency = "foo";
    o.deliveryCountry = "foo";
    o.deliveryTime = buildDeliveryTime();
    o.eligibility = "foo";
    o.minimumOrderValue = buildPrice();
    o.name = "foo";
    o.rateGroups = buildUnnamed2785();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.deliveryCountry, unittest.equals('foo'));
    checkDeliveryTime(o.deliveryTime);
    unittest.expect(o.eligibility, unittest.equals('foo'));
    checkPrice(o.minimumOrderValue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2785(o.rateGroups);
  }
  buildCounterService--;
}

buildUnnamed2786() {
  var o = new core.List<api.ShipmentInvoiceLineItemInvoice>();
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

checkUnnamed2786(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterShipmentInvoice = 0;
buildShipmentInvoice() {
  var o = new api.ShipmentInvoice();
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed2786();
    o.shipmentGroupId = "foo";
  }
  buildCounterShipmentInvoice--;
  return o;
}

checkShipmentInvoice(api.ShipmentInvoice o) {
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    checkInvoiceSummary(o.invoiceSummary);
    checkUnnamed2786(o.lineItemInvoices);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterShipmentInvoice--;
}

buildUnnamed2787() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2787(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterShipmentInvoiceLineItemInvoice = 0;
buildShipmentInvoiceLineItemInvoice() {
  var o = new api.ShipmentInvoiceLineItemInvoice();
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.shipmentUnitIds = buildUnnamed2787();
    o.unitInvoice = buildUnitInvoice();
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
  return o;
}

checkShipmentInvoiceLineItemInvoice(api.ShipmentInvoiceLineItemInvoice o) {
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed2787(o.shipmentUnitIds);
    checkUnitInvoice(o.unitInvoice);
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
}

buildUnnamed2788() {
  var o = new core.List<api.PostalCodeGroup>();
  o.add(buildPostalCodeGroup());
  o.add(buildPostalCodeGroup());
  return o;
}

checkUnnamed2788(core.List<api.PostalCodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeGroup(o[0]);
  checkPostalCodeGroup(o[1]);
}

buildUnnamed2789() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed2789(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterShippingSettings = 0;
buildShippingSettings() {
  var o = new api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.accountId = "foo";
    o.postalCodeGroups = buildUnnamed2788();
    o.services = buildUnnamed2789();
  }
  buildCounterShippingSettings--;
  return o;
}

checkShippingSettings(api.ShippingSettings o) {
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed2788(o.postalCodeGroups);
    checkUnnamed2789(o.services);
  }
  buildCounterShippingSettings--;
}

buildUnnamed2790() {
  var o = new core.List<api.ShippingsettingsCustomBatchRequestEntry>();
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  return o;
}

checkUnnamed2790(core.List<api.ShippingsettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchRequestEntry(o[0]);
  checkShippingsettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchRequest = 0;
buildShippingsettingsCustomBatchRequest() {
  var o = new api.ShippingsettingsCustomBatchRequest();
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed2790();
  }
  buildCounterShippingsettingsCustomBatchRequest--;
  return o;
}

checkShippingsettingsCustomBatchRequest(
    api.ShippingsettingsCustomBatchRequest o) {
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    checkUnnamed2790(o.entries);
  }
  buildCounterShippingsettingsCustomBatchRequest--;
}

core.int buildCounterShippingsettingsCustomBatchRequestEntry = 0;
buildShippingsettingsCustomBatchRequestEntry() {
  var o = new api.ShippingsettingsCustomBatchRequestEntry();
  buildCounterShippingsettingsCustomBatchRequestEntry++;
  if (buildCounterShippingsettingsCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.shippingSettings = buildShippingSettings();
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
  return o;
}

checkShippingsettingsCustomBatchRequestEntry(
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

buildUnnamed2791() {
  var o = new core.List<api.ShippingsettingsCustomBatchResponseEntry>();
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  return o;
}

checkUnnamed2791(core.List<api.ShippingsettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchResponseEntry(o[0]);
  checkShippingsettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchResponse = 0;
buildShippingsettingsCustomBatchResponse() {
  var o = new api.ShippingsettingsCustomBatchResponse();
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed2791();
    o.kind = "foo";
  }
  buildCounterShippingsettingsCustomBatchResponse--;
  return o;
}

checkShippingsettingsCustomBatchResponse(
    api.ShippingsettingsCustomBatchResponse o) {
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    checkUnnamed2791(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsCustomBatchResponse--;
}

core.int buildCounterShippingsettingsCustomBatchResponseEntry = 0;
buildShippingsettingsCustomBatchResponseEntry() {
  var o = new api.ShippingsettingsCustomBatchResponseEntry();
  buildCounterShippingsettingsCustomBatchResponseEntry++;
  if (buildCounterShippingsettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.shippingSettings = buildShippingSettings();
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
  return o;
}

checkShippingsettingsCustomBatchResponseEntry(
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

buildUnnamed2792() {
  var o = new core.List<api.CarriersCarrier>();
  o.add(buildCarriersCarrier());
  o.add(buildCarriersCarrier());
  return o;
}

checkUnnamed2792(core.List<api.CarriersCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarriersCarrier(o[0]);
  checkCarriersCarrier(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedCarriersResponse = 0;
buildShippingsettingsGetSupportedCarriersResponse() {
  var o = new api.ShippingsettingsGetSupportedCarriersResponse();
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    o.carriers = buildUnnamed2792();
    o.kind = "foo";
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
  return o;
}

checkShippingsettingsGetSupportedCarriersResponse(
    api.ShippingsettingsGetSupportedCarriersResponse o) {
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    checkUnnamed2792(o.carriers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
}

buildUnnamed2793() {
  var o = new core.List<api.HolidaysHoliday>();
  o.add(buildHolidaysHoliday());
  o.add(buildHolidaysHoliday());
  return o;
}

checkUnnamed2793(core.List<api.HolidaysHoliday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidaysHoliday(o[0]);
  checkHolidaysHoliday(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedHolidaysResponse = 0;
buildShippingsettingsGetSupportedHolidaysResponse() {
  var o = new api.ShippingsettingsGetSupportedHolidaysResponse();
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    o.holidays = buildUnnamed2793();
    o.kind = "foo";
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
  return o;
}

checkShippingsettingsGetSupportedHolidaysResponse(
    api.ShippingsettingsGetSupportedHolidaysResponse o) {
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    checkUnnamed2793(o.holidays);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
}

buildUnnamed2794() {
  var o = new core.List<api.ShippingSettings>();
  o.add(buildShippingSettings());
  o.add(buildShippingSettings());
  return o;
}

checkUnnamed2794(core.List<api.ShippingSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingSettings(o[0]);
  checkShippingSettings(o[1]);
}

core.int buildCounterShippingsettingsListResponse = 0;
buildShippingsettingsListResponse() {
  var o = new api.ShippingsettingsListResponse();
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2794();
  }
  buildCounterShippingsettingsListResponse--;
  return o;
}

checkShippingsettingsListResponse(api.ShippingsettingsListResponse o) {
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2794(o.resources);
  }
  buildCounterShippingsettingsListResponse--;
}

buildUnnamed2795() {
  var o = new core.List<api.Row>();
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

checkUnnamed2795(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columnHeaders = buildHeaders();
    o.name = "foo";
    o.rowHeaders = buildHeaders();
    o.rows = buildUnnamed2795();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkHeaders(o.columnHeaders);
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeaders(o.rowHeaders);
    checkUnnamed2795(o.rows);
  }
  buildCounterTable--;
}

buildUnnamed2796() {
  var o = new core.List<api.TestOrderLineItem>();
  o.add(buildTestOrderLineItem());
  o.add(buildTestOrderLineItem());
  return o;
}

checkUnnamed2796(core.List<api.TestOrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderLineItem(o[0]);
  checkTestOrderLineItem(o[1]);
}

buildUnnamed2797() {
  var o = new core.List<api.OrderPromotion>();
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

checkUnnamed2797(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

core.int buildCounterTestOrder = 0;
buildTestOrder() {
  var o = new api.TestOrder();
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    o.customer = buildTestOrderCustomer();
    o.kind = "foo";
    o.lineItems = buildUnnamed2796();
    o.notificationMode = "foo";
    o.paymentMethod = buildTestOrderPaymentMethod();
    o.predefinedDeliveryAddress = "foo";
    o.promotions = buildUnnamed2797();
    o.shippingCost = buildPrice();
    o.shippingCostTax = buildPrice();
    o.shippingOption = "foo";
  }
  buildCounterTestOrder--;
  return o;
}

checkTestOrder(api.TestOrder o) {
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    checkTestOrderCustomer(o.customer);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2796(o.lineItems);
    unittest.expect(o.notificationMode, unittest.equals('foo'));
    checkTestOrderPaymentMethod(o.paymentMethod);
    unittest.expect(o.predefinedDeliveryAddress, unittest.equals('foo'));
    checkUnnamed2797(o.promotions);
    checkPrice(o.shippingCost);
    checkPrice(o.shippingCostTax);
    unittest.expect(o.shippingOption, unittest.equals('foo'));
  }
  buildCounterTestOrder--;
}

core.int buildCounterTestOrderCustomer = 0;
buildTestOrderCustomer() {
  var o = new api.TestOrderCustomer();
  buildCounterTestOrderCustomer++;
  if (buildCounterTestOrderCustomer < 3) {
    o.email = "foo";
    o.explicitMarketingPreference = true;
    o.fullName = "foo";
    o.marketingRightsInfo = buildTestOrderCustomerMarketingRightsInfo();
  }
  buildCounterTestOrderCustomer--;
  return o;
}

checkTestOrderCustomer(api.TestOrderCustomer o) {
  buildCounterTestOrderCustomer++;
  if (buildCounterTestOrderCustomer < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.explicitMarketingPreference, unittest.isTrue);
    unittest.expect(o.fullName, unittest.equals('foo'));
    checkTestOrderCustomerMarketingRightsInfo(o.marketingRightsInfo);
  }
  buildCounterTestOrderCustomer--;
}

core.int buildCounterTestOrderCustomerMarketingRightsInfo = 0;
buildTestOrderCustomerMarketingRightsInfo() {
  var o = new api.TestOrderCustomerMarketingRightsInfo();
  buildCounterTestOrderCustomerMarketingRightsInfo++;
  if (buildCounterTestOrderCustomerMarketingRightsInfo < 3) {
    o.explicitMarketingPreference = "foo";
    o.lastUpdatedTimestamp = "foo";
  }
  buildCounterTestOrderCustomerMarketingRightsInfo--;
  return o;
}

checkTestOrderCustomerMarketingRightsInfo(
    api.TestOrderCustomerMarketingRightsInfo o) {
  buildCounterTestOrderCustomerMarketingRightsInfo++;
  if (buildCounterTestOrderCustomerMarketingRightsInfo < 3) {
    unittest.expect(o.explicitMarketingPreference, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestamp, unittest.equals('foo'));
  }
  buildCounterTestOrderCustomerMarketingRightsInfo--;
}

core.int buildCounterTestOrderLineItem = 0;
buildTestOrderLineItem() {
  var o = new api.TestOrderLineItem();
  buildCounterTestOrderLineItem++;
  if (buildCounterTestOrderLineItem < 3) {
    o.product = buildTestOrderLineItemProduct();
    o.quantityOrdered = 42;
    o.returnInfo = buildOrderLineItemReturnInfo();
    o.shippingDetails = buildOrderLineItemShippingDetails();
    o.unitTax = buildPrice();
  }
  buildCounterTestOrderLineItem--;
  return o;
}

checkTestOrderLineItem(api.TestOrderLineItem o) {
  buildCounterTestOrderLineItem++;
  if (buildCounterTestOrderLineItem < 3) {
    checkTestOrderLineItemProduct(o.product);
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo);
    checkOrderLineItemShippingDetails(o.shippingDetails);
    checkPrice(o.unitTax);
  }
  buildCounterTestOrderLineItem--;
}

buildUnnamed2798() {
  var o = new core.List<api.OrderLineItemProductVariantAttribute>();
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

checkUnnamed2798(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterTestOrderLineItemProduct = 0;
buildTestOrderLineItemProduct() {
  var o = new api.TestOrderLineItemProduct();
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    o.brand = "foo";
    o.channel = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.imageLink = "foo";
    o.itemGroupId = "foo";
    o.mpn = "foo";
    o.offerId = "foo";
    o.price = buildPrice();
    o.targetCountry = "foo";
    o.title = "foo";
    o.variantAttributes = buildUnnamed2798();
  }
  buildCounterTestOrderLineItemProduct--;
  return o;
}

checkTestOrderLineItemProduct(api.TestOrderLineItemProduct o) {
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed2798(o.variantAttributes);
  }
  buildCounterTestOrderLineItemProduct--;
}

core.int buildCounterTestOrderPaymentMethod = 0;
buildTestOrderPaymentMethod() {
  var o = new api.TestOrderPaymentMethod();
  buildCounterTestOrderPaymentMethod++;
  if (buildCounterTestOrderPaymentMethod < 3) {
    o.expirationMonth = 42;
    o.expirationYear = 42;
    o.lastFourDigits = "foo";
    o.predefinedBillingAddress = "foo";
    o.type = "foo";
  }
  buildCounterTestOrderPaymentMethod--;
  return o;
}

checkTestOrderPaymentMethod(api.TestOrderPaymentMethod o) {
  buildCounterTestOrderPaymentMethod++;
  if (buildCounterTestOrderPaymentMethod < 3) {
    unittest.expect(o.expirationMonth, unittest.equals(42));
    unittest.expect(o.expirationYear, unittest.equals(42));
    unittest.expect(o.lastFourDigits, unittest.equals('foo'));
    unittest.expect(o.predefinedBillingAddress, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTestOrderPaymentMethod--;
}

buildUnnamed2799() {
  var o = new core.List<api.UnitInvoiceAdditionalCharge>();
  o.add(buildUnitInvoiceAdditionalCharge());
  o.add(buildUnitInvoiceAdditionalCharge());
  return o;
}

checkUnnamed2799(core.List<api.UnitInvoiceAdditionalCharge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceAdditionalCharge(o[0]);
  checkUnitInvoiceAdditionalCharge(o[1]);
}

buildUnnamed2800() {
  var o = new core.List<api.Promotion>();
  o.add(buildPromotion());
  o.add(buildPromotion());
  return o;
}

checkUnnamed2800(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

buildUnnamed2801() {
  var o = new core.List<api.UnitInvoiceTaxLine>();
  o.add(buildUnitInvoiceTaxLine());
  o.add(buildUnitInvoiceTaxLine());
  return o;
}

checkUnnamed2801(core.List<api.UnitInvoiceTaxLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceTaxLine(o[0]);
  checkUnitInvoiceTaxLine(o[1]);
}

core.int buildCounterUnitInvoice = 0;
buildUnitInvoice() {
  var o = new api.UnitInvoice();
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    o.additionalCharges = buildUnnamed2799();
    o.promotions = buildUnnamed2800();
    o.unitPricePretax = buildPrice();
    o.unitPriceTaxes = buildUnnamed2801();
  }
  buildCounterUnitInvoice--;
  return o;
}

checkUnitInvoice(api.UnitInvoice o) {
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    checkUnnamed2799(o.additionalCharges);
    checkUnnamed2800(o.promotions);
    checkPrice(o.unitPricePretax);
    checkUnnamed2801(o.unitPriceTaxes);
  }
  buildCounterUnitInvoice--;
}

buildUnnamed2802() {
  var o = new core.List<api.Promotion>();
  o.add(buildPromotion());
  o.add(buildPromotion());
  return o;
}

checkUnnamed2802(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterUnitInvoiceAdditionalCharge = 0;
buildUnitInvoiceAdditionalCharge() {
  var o = new api.UnitInvoiceAdditionalCharge();
  buildCounterUnitInvoiceAdditionalCharge++;
  if (buildCounterUnitInvoiceAdditionalCharge < 3) {
    o.additionalChargeAmount = buildAmount();
    o.additionalChargePromotions = buildUnnamed2802();
    o.type = "foo";
  }
  buildCounterUnitInvoiceAdditionalCharge--;
  return o;
}

checkUnitInvoiceAdditionalCharge(api.UnitInvoiceAdditionalCharge o) {
  buildCounterUnitInvoiceAdditionalCharge++;
  if (buildCounterUnitInvoiceAdditionalCharge < 3) {
    checkAmount(o.additionalChargeAmount);
    checkUnnamed2802(o.additionalChargePromotions);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUnitInvoiceAdditionalCharge--;
}

core.int buildCounterUnitInvoiceTaxLine = 0;
buildUnitInvoiceTaxLine() {
  var o = new api.UnitInvoiceTaxLine();
  buildCounterUnitInvoiceTaxLine++;
  if (buildCounterUnitInvoiceTaxLine < 3) {
    o.taxAmount = buildPrice();
    o.taxName = "foo";
    o.taxType = "foo";
  }
  buildCounterUnitInvoiceTaxLine--;
  return o;
}

checkUnitInvoiceTaxLine(api.UnitInvoiceTaxLine o) {
  buildCounterUnitInvoiceTaxLine++;
  if (buildCounterUnitInvoiceTaxLine < 3) {
    checkPrice(o.taxAmount);
    unittest.expect(o.taxName, unittest.equals('foo'));
    unittest.expect(o.taxType, unittest.equals('foo'));
  }
  buildCounterUnitInvoiceTaxLine--;
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.carrierRateName = "foo";
    o.flatRate = buildPrice();
    o.noShipping = true;
    o.pricePercentage = "foo";
    o.subtableName = "foo";
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
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
buildWeight() {
  var o = new api.Weight();
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterWeight--;
  return o;
}

checkWeight(api.Weight o) {
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterWeight--;
}

buildUnnamed2803() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2803(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2804() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2804(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2805() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2805(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2806() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2806(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2807() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2807(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group("obj-schema-AccountAdwordsLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountAdwordsLink();
      var od = new api.AccountAdwordsLink.fromJson(o.toJson());
      checkAccountAdwordsLink(od);
    });
  });

  unittest.group("obj-schema-AccountGoogleMyBusinessLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountGoogleMyBusinessLink();
      var od = new api.AccountGoogleMyBusinessLink.fromJson(o.toJson());
      checkAccountGoogleMyBusinessLink(od);
    });
  });

  unittest.group("obj-schema-AccountIdentifier", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountIdentifier();
      var od = new api.AccountIdentifier.fromJson(o.toJson());
      checkAccountIdentifier(od);
    });
  });

  unittest.group("obj-schema-AccountStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatus();
      var od = new api.AccountStatus.fromJson(o.toJson());
      checkAccountStatus(od);
    });
  });

  unittest.group("obj-schema-AccountStatusAccountLevelIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusAccountLevelIssue();
      var od = new api.AccountStatusAccountLevelIssue.fromJson(o.toJson());
      checkAccountStatusAccountLevelIssue(od);
    });
  });

  unittest.group("obj-schema-AccountStatusDataQualityIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusDataQualityIssue();
      var od = new api.AccountStatusDataQualityIssue.fromJson(o.toJson());
      checkAccountStatusDataQualityIssue(od);
    });
  });

  unittest.group("obj-schema-AccountStatusExampleItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusExampleItem();
      var od = new api.AccountStatusExampleItem.fromJson(o.toJson());
      checkAccountStatusExampleItem(od);
    });
  });

  unittest.group("obj-schema-AccountTax", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountTax();
      var od = new api.AccountTax.fromJson(o.toJson());
      checkAccountTax(od);
    });
  });

  unittest.group("obj-schema-AccountTaxTaxRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountTaxTaxRule();
      var od = new api.AccountTaxTaxRule.fromJson(o.toJson());
      checkAccountTaxTaxRule(od);
    });
  });

  unittest.group("obj-schema-AccountUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountUser();
      var od = new api.AccountUser.fromJson(o.toJson());
      checkAccountUser(od);
    });
  });

  unittest.group("obj-schema-AccountYouTubeChannelLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountYouTubeChannelLink();
      var od = new api.AccountYouTubeChannelLink.fromJson(o.toJson());
      checkAccountYouTubeChannelLink(od);
    });
  });

  unittest.group("obj-schema-AccountsAuthInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsAuthInfoResponse();
      var od = new api.AccountsAuthInfoResponse.fromJson(o.toJson());
      checkAccountsAuthInfoResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsClaimWebsiteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsClaimWebsiteResponse();
      var od = new api.AccountsClaimWebsiteResponse.fromJson(o.toJson());
      checkAccountsClaimWebsiteResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchRequest();
      var od = new api.AccountsCustomBatchRequest.fromJson(o.toJson());
      checkAccountsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchRequestEntry();
      var od = new api.AccountsCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchResponse();
      var od = new api.AccountsCustomBatchResponse.fromJson(o.toJson());
      checkAccountsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchResponseEntry();
      var od = new api.AccountsCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-AccountsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsListResponse();
      var od = new api.AccountsListResponse.fromJson(o.toJson());
      checkAccountsListResponse(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchRequest();
      var od = new api.AccountstatusesCustomBatchRequest.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchRequestEntry();
      var od =
          new api.AccountstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchResponse();
      var od = new api.AccountstatusesCustomBatchResponse.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchResponseEntry();
      var od =
          new api.AccountstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesListResponse();
      var od = new api.AccountstatusesListResponse.fromJson(o.toJson());
      checkAccountstatusesListResponse(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchRequest();
      var od = new api.AccounttaxCustomBatchRequest.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchRequestEntry();
      var od = new api.AccounttaxCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchResponse();
      var od = new api.AccounttaxCustomBatchResponse.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchResponseEntry();
      var od = new api.AccounttaxCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-AccounttaxListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxListResponse();
      var od = new api.AccounttaxListResponse.fromJson(o.toJson());
      checkAccounttaxListResponse(od);
    });
  });

  unittest.group("obj-schema-Amount", () {
    unittest.test("to-json--from-json", () {
      var o = buildAmount();
      var od = new api.Amount.fromJson(o.toJson());
      checkAmount(od);
    });
  });

  unittest.group("obj-schema-CarrierRate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCarrierRate();
      var od = new api.CarrierRate.fromJson(o.toJson());
      checkCarrierRate(od);
    });
  });

  unittest.group("obj-schema-CarriersCarrier", () {
    unittest.test("to-json--from-json", () {
      var o = buildCarriersCarrier();
      var od = new api.CarriersCarrier.fromJson(o.toJson());
      checkCarriersCarrier(od);
    });
  });

  unittest.group("obj-schema-Datafeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeed();
      var od = new api.Datafeed.fromJson(o.toJson());
      checkDatafeed(od);
    });
  });

  unittest.group("obj-schema-DatafeedFetchSchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedFetchSchedule();
      var od = new api.DatafeedFetchSchedule.fromJson(o.toJson());
      checkDatafeedFetchSchedule(od);
    });
  });

  unittest.group("obj-schema-DatafeedFormat", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedFormat();
      var od = new api.DatafeedFormat.fromJson(o.toJson());
      checkDatafeedFormat(od);
    });
  });

  unittest.group("obj-schema-DatafeedStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedStatus();
      var od = new api.DatafeedStatus.fromJson(o.toJson());
      checkDatafeedStatus(od);
    });
  });

  unittest.group("obj-schema-DatafeedStatusError", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedStatusError();
      var od = new api.DatafeedStatusError.fromJson(o.toJson());
      checkDatafeedStatusError(od);
    });
  });

  unittest.group("obj-schema-DatafeedStatusExample", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedStatusExample();
      var od = new api.DatafeedStatusExample.fromJson(o.toJson());
      checkDatafeedStatusExample(od);
    });
  });

  unittest.group("obj-schema-DatafeedTarget", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedTarget();
      var od = new api.DatafeedTarget.fromJson(o.toJson());
      checkDatafeedTarget(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchRequest();
      var od = new api.DatafeedsCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchRequestEntry();
      var od = new api.DatafeedsCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchResponse();
      var od = new api.DatafeedsCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchResponseEntry();
      var od = new api.DatafeedsCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedsFetchNowResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsFetchNowResponse();
      var od = new api.DatafeedsFetchNowResponse.fromJson(o.toJson());
      checkDatafeedsFetchNowResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsListResponse();
      var od = new api.DatafeedsListResponse.fromJson(o.toJson());
      checkDatafeedsListResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchRequest();
      var od = new api.DatafeedstatusesCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchRequestEntry();
      var od =
          new api.DatafeedstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchResponse();
      var od = new api.DatafeedstatusesCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchResponseEntry();
      var od =
          new api.DatafeedstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesListResponse();
      var od = new api.DatafeedstatusesListResponse.fromJson(o.toJson());
      checkDatafeedstatusesListResponse(od);
    });
  });

  unittest.group("obj-schema-DeliveryTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryTime();
      var od = new api.DeliveryTime.fromJson(o.toJson());
      checkDeliveryTime(od);
    });
  });

  unittest.group("obj-schema-Error", () {
    unittest.test("to-json--from-json", () {
      var o = buildError();
      var od = new api.Error.fromJson(o.toJson());
      checkError(od);
    });
  });

  unittest.group("obj-schema-Errors", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrors();
      var od = new api.Errors.fromJson(o.toJson());
      checkErrors(od);
    });
  });

  unittest.group("obj-schema-GmbAccounts", () {
    unittest.test("to-json--from-json", () {
      var o = buildGmbAccounts();
      var od = new api.GmbAccounts.fromJson(o.toJson());
      checkGmbAccounts(od);
    });
  });

  unittest.group("obj-schema-GmbAccountsGmbAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildGmbAccountsGmbAccount();
      var od = new api.GmbAccountsGmbAccount.fromJson(o.toJson());
      checkGmbAccountsGmbAccount(od);
    });
  });

  unittest.group("obj-schema-Headers", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeaders();
      var od = new api.Headers.fromJson(o.toJson());
      checkHeaders(od);
    });
  });

  unittest.group("obj-schema-HolidayCutoff", () {
    unittest.test("to-json--from-json", () {
      var o = buildHolidayCutoff();
      var od = new api.HolidayCutoff.fromJson(o.toJson());
      checkHolidayCutoff(od);
    });
  });

  unittest.group("obj-schema-HolidaysHoliday", () {
    unittest.test("to-json--from-json", () {
      var o = buildHolidaysHoliday();
      var od = new api.HolidaysHoliday.fromJson(o.toJson());
      checkHolidaysHoliday(od);
    });
  });

  unittest.group("obj-schema-Installment", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstallment();
      var od = new api.Installment.fromJson(o.toJson());
      checkInstallment(od);
    });
  });

  unittest.group("obj-schema-Inventory", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventory();
      var od = new api.Inventory.fromJson(o.toJson());
      checkInventory(od);
    });
  });

  unittest.group("obj-schema-InventoryCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryCustomBatchRequest();
      var od = new api.InventoryCustomBatchRequest.fromJson(o.toJson());
      checkInventoryCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-InventoryCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryCustomBatchRequestEntry();
      var od = new api.InventoryCustomBatchRequestEntry.fromJson(o.toJson());
      checkInventoryCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-InventoryCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryCustomBatchResponse();
      var od = new api.InventoryCustomBatchResponse.fromJson(o.toJson());
      checkInventoryCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-InventoryCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryCustomBatchResponseEntry();
      var od = new api.InventoryCustomBatchResponseEntry.fromJson(o.toJson());
      checkInventoryCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-InventoryPickup", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventoryPickup();
      var od = new api.InventoryPickup.fromJson(o.toJson());
      checkInventoryPickup(od);
    });
  });

  unittest.group("obj-schema-InventorySetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventorySetRequest();
      var od = new api.InventorySetRequest.fromJson(o.toJson());
      checkInventorySetRequest(od);
    });
  });

  unittest.group("obj-schema-InventorySetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventorySetResponse();
      var od = new api.InventorySetResponse.fromJson(o.toJson());
      checkInventorySetResponse(od);
    });
  });

  unittest.group("obj-schema-InvoiceSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceSummary();
      var od = new api.InvoiceSummary.fromJson(o.toJson());
      checkInvoiceSummary(od);
    });
  });

  unittest.group("obj-schema-InvoiceSummaryAdditionalChargeSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceSummaryAdditionalChargeSummary();
      var od =
          new api.InvoiceSummaryAdditionalChargeSummary.fromJson(o.toJson());
      checkInvoiceSummaryAdditionalChargeSummary(od);
    });
  });

  unittest.group("obj-schema-LiaAboutPageSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaAboutPageSettings();
      var od = new api.LiaAboutPageSettings.fromJson(o.toJson());
      checkLiaAboutPageSettings(od);
    });
  });

  unittest.group("obj-schema-LiaCountrySettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaCountrySettings();
      var od = new api.LiaCountrySettings.fromJson(o.toJson());
      checkLiaCountrySettings(od);
    });
  });

  unittest.group("obj-schema-LiaInventorySettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaInventorySettings();
      var od = new api.LiaInventorySettings.fromJson(o.toJson());
      checkLiaInventorySettings(od);
    });
  });

  unittest.group("obj-schema-LiaOnDisplayToOrderSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaOnDisplayToOrderSettings();
      var od = new api.LiaOnDisplayToOrderSettings.fromJson(o.toJson());
      checkLiaOnDisplayToOrderSettings(od);
    });
  });

  unittest.group("obj-schema-LiaSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaSettings();
      var od = new api.LiaSettings.fromJson(o.toJson());
      checkLiaSettings(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchRequest();
      var od = new api.LiasettingsCustomBatchRequest.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchRequestEntry();
      var od = new api.LiasettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchResponse();
      var od = new api.LiasettingsCustomBatchResponse.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchResponseEntry();
      var od = new api.LiasettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-LiasettingsGetAccessibleGmbAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsGetAccessibleGmbAccountsResponse();
      var od = new api.LiasettingsGetAccessibleGmbAccountsResponse.fromJson(
          o.toJson());
      checkLiasettingsGetAccessibleGmbAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsListResponse();
      var od = new api.LiasettingsListResponse.fromJson(o.toJson());
      checkLiasettingsListResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsRequestGmbAccessResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsRequestGmbAccessResponse();
      var od = new api.LiasettingsRequestGmbAccessResponse.fromJson(o.toJson());
      checkLiasettingsRequestGmbAccessResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsRequestInventoryVerificationResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsRequestInventoryVerificationResponse();
      var od = new api.LiasettingsRequestInventoryVerificationResponse.fromJson(
          o.toJson());
      checkLiasettingsRequestInventoryVerificationResponse(od);
    });
  });

  unittest.group(
      "obj-schema-LiasettingsSetInventoryVerificationContactResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsSetInventoryVerificationContactResponse();
      var od =
          new api.LiasettingsSetInventoryVerificationContactResponse.fromJson(
              o.toJson());
      checkLiasettingsSetInventoryVerificationContactResponse(od);
    });
  });

  unittest.group("obj-schema-LocationIdSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationIdSet();
      var od = new api.LocationIdSet.fromJson(o.toJson());
      checkLocationIdSet(od);
    });
  });

  unittest.group("obj-schema-LoyaltyPoints", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoyaltyPoints();
      var od = new api.LoyaltyPoints.fromJson(o.toJson());
      checkLoyaltyPoints(od);
    });
  });

  unittest.group("obj-schema-Order", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrder();
      var od = new api.Order.fromJson(o.toJson());
      checkOrder(od);
    });
  });

  unittest.group("obj-schema-OrderAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderAddress();
      var od = new api.OrderAddress.fromJson(o.toJson());
      checkOrderAddress(od);
    });
  });

  unittest.group("obj-schema-OrderCancellation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCancellation();
      var od = new api.OrderCancellation.fromJson(o.toJson());
      checkOrderCancellation(od);
    });
  });

  unittest.group("obj-schema-OrderCustomer", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCustomer();
      var od = new api.OrderCustomer.fromJson(o.toJson());
      checkOrderCustomer(od);
    });
  });

  unittest.group("obj-schema-OrderCustomerMarketingRightsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCustomerMarketingRightsInfo();
      var od = new api.OrderCustomerMarketingRightsInfo.fromJson(o.toJson());
      checkOrderCustomerMarketingRightsInfo(od);
    });
  });

  unittest.group("obj-schema-OrderDeliveryDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderDeliveryDetails();
      var od = new api.OrderDeliveryDetails.fromJson(o.toJson());
      checkOrderDeliveryDetails(od);
    });
  });

  unittest.group("obj-schema-OrderLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItem();
      var od = new api.OrderLineItem.fromJson(o.toJson());
      checkOrderLineItem(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemProduct", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemProduct();
      var od = new api.OrderLineItemProduct.fromJson(o.toJson());
      checkOrderLineItemProduct(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemProductVariantAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemProductVariantAttribute();
      var od =
          new api.OrderLineItemProductVariantAttribute.fromJson(o.toJson());
      checkOrderLineItemProductVariantAttribute(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemReturnInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemReturnInfo();
      var od = new api.OrderLineItemReturnInfo.fromJson(o.toJson());
      checkOrderLineItemReturnInfo(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemShippingDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemShippingDetails();
      var od = new api.OrderLineItemShippingDetails.fromJson(o.toJson());
      checkOrderLineItemShippingDetails(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemShippingDetailsMethod", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemShippingDetailsMethod();
      var od = new api.OrderLineItemShippingDetailsMethod.fromJson(o.toJson());
      checkOrderLineItemShippingDetailsMethod(od);
    });
  });

  unittest.group("obj-schema-OrderMerchantProvidedAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderMerchantProvidedAnnotation();
      var od = new api.OrderMerchantProvidedAnnotation.fromJson(o.toJson());
      checkOrderMerchantProvidedAnnotation(od);
    });
  });

  unittest.group("obj-schema-OrderPaymentMethod", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPaymentMethod();
      var od = new api.OrderPaymentMethod.fromJson(o.toJson());
      checkOrderPaymentMethod(od);
    });
  });

  unittest.group("obj-schema-OrderPromotion", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPromotion();
      var od = new api.OrderPromotion.fromJson(o.toJson());
      checkOrderPromotion(od);
    });
  });

  unittest.group("obj-schema-OrderPromotionBenefit", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPromotionBenefit();
      var od = new api.OrderPromotionBenefit.fromJson(o.toJson());
      checkOrderPromotionBenefit(od);
    });
  });

  unittest.group("obj-schema-OrderRefund", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderRefund();
      var od = new api.OrderRefund.fromJson(o.toJson());
      checkOrderRefund(od);
    });
  });

  unittest.group("obj-schema-OrderReturn", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderReturn();
      var od = new api.OrderReturn.fromJson(o.toJson());
      checkOrderReturn(od);
    });
  });

  unittest.group("obj-schema-OrderShipment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderShipment();
      var od = new api.OrderShipment.fromJson(o.toJson());
      checkOrderShipment(od);
    });
  });

  unittest.group("obj-schema-OrderShipmentLineItemShipment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderShipmentLineItemShipment();
      var od = new api.OrderShipmentLineItemShipment.fromJson(o.toJson());
      checkOrderShipmentLineItemShipment(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateChargeInvoiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateChargeInvoiceRequest();
      var od =
          new api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceRequest(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateChargeInvoiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateChargeInvoiceResponse();
      var od =
          new api.OrderinvoicesCreateChargeInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceResponse(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateRefundInvoiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateRefundInvoiceRequest();
      var od =
          new api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceRequest(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateRefundInvoiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateRefundInvoiceResponse();
      var od =
          new api.OrderinvoicesCreateRefundInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceResponse(od);
    });
  });

  unittest.group(
      "obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
      var od = new api
              .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption.fromJson(
          o.toJson());
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
          od);
    });
  });

  unittest.group(
      "obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
      var od = new api
              .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption.fromJson(
          o.toJson());
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
          od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyAuthApprovedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyAuthApprovedRequest();
      var od =
          new api.OrderpaymentsNotifyAuthApprovedRequest.fromJson(o.toJson());
      checkOrderpaymentsNotifyAuthApprovedRequest(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyAuthApprovedResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyAuthApprovedResponse();
      var od =
          new api.OrderpaymentsNotifyAuthApprovedResponse.fromJson(o.toJson());
      checkOrderpaymentsNotifyAuthApprovedResponse(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyAuthDeclinedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyAuthDeclinedRequest();
      var od =
          new api.OrderpaymentsNotifyAuthDeclinedRequest.fromJson(o.toJson());
      checkOrderpaymentsNotifyAuthDeclinedRequest(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyAuthDeclinedResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyAuthDeclinedResponse();
      var od =
          new api.OrderpaymentsNotifyAuthDeclinedResponse.fromJson(o.toJson());
      checkOrderpaymentsNotifyAuthDeclinedResponse(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyChargeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyChargeRequest();
      var od = new api.OrderpaymentsNotifyChargeRequest.fromJson(o.toJson());
      checkOrderpaymentsNotifyChargeRequest(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyChargeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyChargeResponse();
      var od = new api.OrderpaymentsNotifyChargeResponse.fromJson(o.toJson());
      checkOrderpaymentsNotifyChargeResponse(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyRefundRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyRefundRequest();
      var od = new api.OrderpaymentsNotifyRefundRequest.fromJson(o.toJson());
      checkOrderpaymentsNotifyRefundRequest(od);
    });
  });

  unittest.group("obj-schema-OrderpaymentsNotifyRefundResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderpaymentsNotifyRefundResponse();
      var od = new api.OrderpaymentsNotifyRefundResponse.fromJson(o.toJson());
      checkOrderpaymentsNotifyRefundResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersAcknowledgeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersAcknowledgeRequest();
      var od = new api.OrdersAcknowledgeRequest.fromJson(o.toJson());
      checkOrdersAcknowledgeRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersAcknowledgeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersAcknowledgeResponse();
      var od = new api.OrdersAcknowledgeResponse.fromJson(o.toJson());
      checkOrdersAcknowledgeResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersAdvanceTestOrderResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersAdvanceTestOrderResponse();
      var od = new api.OrdersAdvanceTestOrderResponse.fromJson(o.toJson());
      checkOrdersAdvanceTestOrderResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelLineItemRequest();
      var od = new api.OrdersCancelLineItemRequest.fromJson(o.toJson());
      checkOrdersCancelLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelLineItemResponse();
      var od = new api.OrdersCancelLineItemResponse.fromJson(o.toJson());
      checkOrdersCancelLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelRequest();
      var od = new api.OrdersCancelRequest.fromJson(o.toJson());
      checkOrdersCancelRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelResponse();
      var od = new api.OrdersCancelResponse.fromJson(o.toJson());
      checkOrdersCancelResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCreateTestOrderRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCreateTestOrderRequest();
      var od = new api.OrdersCreateTestOrderRequest.fromJson(o.toJson());
      checkOrdersCreateTestOrderRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCreateTestOrderResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCreateTestOrderResponse();
      var od = new api.OrdersCreateTestOrderResponse.fromJson(o.toJson());
      checkOrdersCreateTestOrderResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequest();
      var od = new api.OrdersCustomBatchRequest.fromJson(o.toJson());
      checkOrdersCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntry();
      var od = new api.OrdersCustomBatchRequestEntry.fromJson(o.toJson());
      checkOrdersCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryCancel", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryCancel();
      var od = new api.OrdersCustomBatchRequestEntryCancel.fromJson(o.toJson());
      checkOrdersCustomBatchRequestEntryCancel(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryCancelLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryCancelLineItem();
      var od = new api.OrdersCustomBatchRequestEntryCancelLineItem.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryCancelLineItem(od);
    });
  });

  unittest.group(
      "obj-schema-OrdersCustomBatchRequestEntryInStoreRefundLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryInStoreRefundLineItem();
      var od =
          new api.OrdersCustomBatchRequestEntryInStoreRefundLineItem.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryInStoreRefundLineItem(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryRefund", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryRefund();
      var od = new api.OrdersCustomBatchRequestEntryRefund.fromJson(o.toJson());
      checkOrdersCustomBatchRequestEntryRefund(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryRejectReturnLineItem",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryRejectReturnLineItem();
      var od =
          new api.OrdersCustomBatchRequestEntryRejectReturnLineItem.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryRejectReturnLineItem(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryReturnLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryReturnLineItem();
      var od = new api.OrdersCustomBatchRequestEntryReturnLineItem.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryReturnLineItem(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryReturnRefundLineItem",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryReturnRefundLineItem();
      var od =
          new api.OrdersCustomBatchRequestEntryReturnRefundLineItem.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntryReturnRefundLineItem(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntrySetLineItemMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntrySetLineItemMetadata();
      var od =
          new api.OrdersCustomBatchRequestEntrySetLineItemMetadata.fromJson(
              o.toJson());
      checkOrdersCustomBatchRequestEntrySetLineItemMetadata(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryShipLineItems", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryShipLineItems();
      var od = new api.OrdersCustomBatchRequestEntryShipLineItems.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryShipLineItems(od);
    });
  });

  unittest.group(
      "obj-schema-OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
      var od = new api
              .OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(od);
    });
  });

  unittest.group(
      "obj-schema-OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails();
      var od = new api
              .OrdersCustomBatchRequestEntryUpdateLineItemShippingDetails.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryUpdateLineItemShippingDetails(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchRequestEntryUpdateShipment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryUpdateShipment();
      var od = new api.OrdersCustomBatchRequestEntryUpdateShipment.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryUpdateShipment(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchResponse();
      var od = new api.OrdersCustomBatchResponse.fromJson(o.toJson());
      checkOrdersCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchResponseEntry();
      var od = new api.OrdersCustomBatchResponseEntry.fromJson(o.toJson());
      checkOrdersCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-OrdersGetByMerchantOrderIdResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersGetByMerchantOrderIdResponse();
      var od = new api.OrdersGetByMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersGetByMerchantOrderIdResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersGetTestOrderTemplateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersGetTestOrderTemplateResponse();
      var od = new api.OrdersGetTestOrderTemplateResponse.fromJson(o.toJson());
      checkOrdersGetTestOrderTemplateResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersInStoreRefundLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersInStoreRefundLineItemRequest();
      var od = new api.OrdersInStoreRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersInStoreRefundLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersInStoreRefundLineItemResponse();
      var od = new api.OrdersInStoreRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersListResponse();
      var od = new api.OrdersListResponse.fromJson(o.toJson());
      checkOrdersListResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersRefundRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersRefundRequest();
      var od = new api.OrdersRefundRequest.fromJson(o.toJson());
      checkOrdersRefundRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersRefundResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersRefundResponse();
      var od = new api.OrdersRefundResponse.fromJson(o.toJson());
      checkOrdersRefundResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersRejectReturnLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersRejectReturnLineItemRequest();
      var od = new api.OrdersRejectReturnLineItemRequest.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersRejectReturnLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersRejectReturnLineItemResponse();
      var od = new api.OrdersRejectReturnLineItemResponse.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersReturnLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersReturnLineItemRequest();
      var od = new api.OrdersReturnLineItemRequest.fromJson(o.toJson());
      checkOrdersReturnLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersReturnLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersReturnLineItemResponse();
      var od = new api.OrdersReturnLineItemResponse.fromJson(o.toJson());
      checkOrdersReturnLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersReturnRefundLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersReturnRefundLineItemRequest();
      var od = new api.OrdersReturnRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersReturnRefundLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersReturnRefundLineItemResponse();
      var od = new api.OrdersReturnRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersSetLineItemMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersSetLineItemMetadataRequest();
      var od = new api.OrdersSetLineItemMetadataRequest.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersSetLineItemMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersSetLineItemMetadataResponse();
      var od = new api.OrdersSetLineItemMetadataResponse.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersShipLineItemsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersShipLineItemsRequest();
      var od = new api.OrdersShipLineItemsRequest.fromJson(o.toJson());
      checkOrdersShipLineItemsRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersShipLineItemsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersShipLineItemsResponse();
      var od = new api.OrdersShipLineItemsResponse.fromJson(o.toJson());
      checkOrdersShipLineItemsResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateLineItemShippingDetailsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateLineItemShippingDetailsRequest();
      var od = new api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(
          o.toJson());
      checkOrdersUpdateLineItemShippingDetailsRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateLineItemShippingDetailsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateLineItemShippingDetailsResponse();
      var od = new api.OrdersUpdateLineItemShippingDetailsResponse.fromJson(
          o.toJson());
      checkOrdersUpdateLineItemShippingDetailsResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateMerchantOrderIdRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateMerchantOrderIdRequest();
      var od = new api.OrdersUpdateMerchantOrderIdRequest.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateMerchantOrderIdResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateMerchantOrderIdResponse();
      var od = new api.OrdersUpdateMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateShipmentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateShipmentRequest();
      var od = new api.OrdersUpdateShipmentRequest.fromJson(o.toJson());
      checkOrdersUpdateShipmentRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateShipmentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateShipmentResponse();
      var od = new api.OrdersUpdateShipmentResponse.fromJson(o.toJson());
      checkOrdersUpdateShipmentResponse(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchRequest();
      var od = new api.PosCustomBatchRequest.fromJson(o.toJson());
      checkPosCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchRequestEntry();
      var od = new api.PosCustomBatchRequestEntry.fromJson(o.toJson());
      checkPosCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchResponse();
      var od = new api.PosCustomBatchResponse.fromJson(o.toJson());
      checkPosCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchResponseEntry();
      var od = new api.PosCustomBatchResponseEntry.fromJson(o.toJson());
      checkPosCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-PosDataProviders", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosDataProviders();
      var od = new api.PosDataProviders.fromJson(o.toJson());
      checkPosDataProviders(od);
    });
  });

  unittest.group("obj-schema-PosDataProvidersPosDataProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosDataProvidersPosDataProvider();
      var od = new api.PosDataProvidersPosDataProvider.fromJson(o.toJson());
      checkPosDataProvidersPosDataProvider(od);
    });
  });

  unittest.group("obj-schema-PosInventory", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosInventory();
      var od = new api.PosInventory.fromJson(o.toJson());
      checkPosInventory(od);
    });
  });

  unittest.group("obj-schema-PosInventoryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosInventoryRequest();
      var od = new api.PosInventoryRequest.fromJson(o.toJson());
      checkPosInventoryRequest(od);
    });
  });

  unittest.group("obj-schema-PosInventoryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosInventoryResponse();
      var od = new api.PosInventoryResponse.fromJson(o.toJson());
      checkPosInventoryResponse(od);
    });
  });

  unittest.group("obj-schema-PosListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosListResponse();
      var od = new api.PosListResponse.fromJson(o.toJson());
      checkPosListResponse(od);
    });
  });

  unittest.group("obj-schema-PosSale", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosSale();
      var od = new api.PosSale.fromJson(o.toJson());
      checkPosSale(od);
    });
  });

  unittest.group("obj-schema-PosSaleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosSaleRequest();
      var od = new api.PosSaleRequest.fromJson(o.toJson());
      checkPosSaleRequest(od);
    });
  });

  unittest.group("obj-schema-PosSaleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosSaleResponse();
      var od = new api.PosSaleResponse.fromJson(o.toJson());
      checkPosSaleResponse(od);
    });
  });

  unittest.group("obj-schema-PosStore", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosStore();
      var od = new api.PosStore.fromJson(o.toJson());
      checkPosStore(od);
    });
  });

  unittest.group("obj-schema-PostalCodeGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalCodeGroup();
      var od = new api.PostalCodeGroup.fromJson(o.toJson());
      checkPostalCodeGroup(od);
    });
  });

  unittest.group("obj-schema-PostalCodeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalCodeRange();
      var od = new api.PostalCodeRange.fromJson(o.toJson());
      checkPostalCodeRange(od);
    });
  });

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-ProductAspect", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductAspect();
      var od = new api.ProductAspect.fromJson(o.toJson());
      checkProductAspect(od);
    });
  });

  unittest.group("obj-schema-ProductCustomAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductCustomAttribute();
      var od = new api.ProductCustomAttribute.fromJson(o.toJson());
      checkProductCustomAttribute(od);
    });
  });

  unittest.group("obj-schema-ProductCustomGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductCustomGroup();
      var od = new api.ProductCustomGroup.fromJson(o.toJson());
      checkProductCustomGroup(od);
    });
  });

  unittest.group("obj-schema-ProductDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductDestination();
      var od = new api.ProductDestination.fromJson(o.toJson());
      checkProductDestination(od);
    });
  });

  unittest.group("obj-schema-ProductShipping", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductShipping();
      var od = new api.ProductShipping.fromJson(o.toJson());
      checkProductShipping(od);
    });
  });

  unittest.group("obj-schema-ProductShippingDimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductShippingDimension();
      var od = new api.ProductShippingDimension.fromJson(o.toJson());
      checkProductShippingDimension(od);
    });
  });

  unittest.group("obj-schema-ProductShippingWeight", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductShippingWeight();
      var od = new api.ProductShippingWeight.fromJson(o.toJson());
      checkProductShippingWeight(od);
    });
  });

  unittest.group("obj-schema-ProductStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatus();
      var od = new api.ProductStatus.fromJson(o.toJson());
      checkProductStatus(od);
    });
  });

  unittest.group("obj-schema-ProductStatusDataQualityIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatusDataQualityIssue();
      var od = new api.ProductStatusDataQualityIssue.fromJson(o.toJson());
      checkProductStatusDataQualityIssue(od);
    });
  });

  unittest.group("obj-schema-ProductStatusDestinationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatusDestinationStatus();
      var od = new api.ProductStatusDestinationStatus.fromJson(o.toJson());
      checkProductStatusDestinationStatus(od);
    });
  });

  unittest.group("obj-schema-ProductStatusItemLevelIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatusItemLevelIssue();
      var od = new api.ProductStatusItemLevelIssue.fromJson(o.toJson());
      checkProductStatusItemLevelIssue(od);
    });
  });

  unittest.group("obj-schema-ProductTax", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductTax();
      var od = new api.ProductTax.fromJson(o.toJson());
      checkProductTax(od);
    });
  });

  unittest.group("obj-schema-ProductUnitPricingBaseMeasure", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductUnitPricingBaseMeasure();
      var od = new api.ProductUnitPricingBaseMeasure.fromJson(o.toJson());
      checkProductUnitPricingBaseMeasure(od);
    });
  });

  unittest.group("obj-schema-ProductUnitPricingMeasure", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductUnitPricingMeasure();
      var od = new api.ProductUnitPricingMeasure.fromJson(o.toJson());
      checkProductUnitPricingMeasure(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchRequest();
      var od = new api.ProductsCustomBatchRequest.fromJson(o.toJson());
      checkProductsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchRequestEntry();
      var od = new api.ProductsCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchResponse();
      var od = new api.ProductsCustomBatchResponse.fromJson(o.toJson());
      checkProductsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchResponseEntry();
      var od = new api.ProductsCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ProductsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsListResponse();
      var od = new api.ProductsListResponse.fromJson(o.toJson());
      checkProductsListResponse(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchRequest();
      var od = new api.ProductstatusesCustomBatchRequest.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchRequestEntry();
      var od =
          new api.ProductstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchResponse();
      var od = new api.ProductstatusesCustomBatchResponse.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchResponseEntry();
      var od =
          new api.ProductstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesListResponse();
      var od = new api.ProductstatusesListResponse.fromJson(o.toJson());
      checkProductstatusesListResponse(od);
    });
  });

  unittest.group("obj-schema-Promotion", () {
    unittest.test("to-json--from-json", () {
      var o = buildPromotion();
      var od = new api.Promotion.fromJson(o.toJson());
      checkPromotion(od);
    });
  });

  unittest.group("obj-schema-RateGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildRateGroup();
      var od = new api.RateGroup.fromJson(o.toJson());
      checkRateGroup(od);
    });
  });

  unittest.group("obj-schema-Row", () {
    unittest.test("to-json--from-json", () {
      var o = buildRow();
      var od = new api.Row.fromJson(o.toJson());
      checkRow(od);
    });
  });

  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group("obj-schema-ShipmentInvoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildShipmentInvoice();
      var od = new api.ShipmentInvoice.fromJson(o.toJson());
      checkShipmentInvoice(od);
    });
  });

  unittest.group("obj-schema-ShipmentInvoiceLineItemInvoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildShipmentInvoiceLineItemInvoice();
      var od = new api.ShipmentInvoiceLineItemInvoice.fromJson(o.toJson());
      checkShipmentInvoiceLineItemInvoice(od);
    });
  });

  unittest.group("obj-schema-ShippingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingSettings();
      var od = new api.ShippingSettings.fromJson(o.toJson());
      checkShippingSettings(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchRequest();
      var od = new api.ShippingsettingsCustomBatchRequest.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchRequestEntry();
      var od =
          new api.ShippingsettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchResponse();
      var od = new api.ShippingsettingsCustomBatchResponse.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchResponseEntry();
      var od =
          new api.ShippingsettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsGetSupportedCarriersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsGetSupportedCarriersResponse();
      var od = new api.ShippingsettingsGetSupportedCarriersResponse.fromJson(
          o.toJson());
      checkShippingsettingsGetSupportedCarriersResponse(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsGetSupportedHolidaysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsGetSupportedHolidaysResponse();
      var od = new api.ShippingsettingsGetSupportedHolidaysResponse.fromJson(
          o.toJson());
      checkShippingsettingsGetSupportedHolidaysResponse(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsListResponse();
      var od = new api.ShippingsettingsListResponse.fromJson(o.toJson());
      checkShippingsettingsListResponse(od);
    });
  });

  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group("obj-schema-TestOrder", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrder();
      var od = new api.TestOrder.fromJson(o.toJson());
      checkTestOrder(od);
    });
  });

  unittest.group("obj-schema-TestOrderCustomer", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderCustomer();
      var od = new api.TestOrderCustomer.fromJson(o.toJson());
      checkTestOrderCustomer(od);
    });
  });

  unittest.group("obj-schema-TestOrderCustomerMarketingRightsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderCustomerMarketingRightsInfo();
      var od =
          new api.TestOrderCustomerMarketingRightsInfo.fromJson(o.toJson());
      checkTestOrderCustomerMarketingRightsInfo(od);
    });
  });

  unittest.group("obj-schema-TestOrderLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderLineItem();
      var od = new api.TestOrderLineItem.fromJson(o.toJson());
      checkTestOrderLineItem(od);
    });
  });

  unittest.group("obj-schema-TestOrderLineItemProduct", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderLineItemProduct();
      var od = new api.TestOrderLineItemProduct.fromJson(o.toJson());
      checkTestOrderLineItemProduct(od);
    });
  });

  unittest.group("obj-schema-TestOrderPaymentMethod", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderPaymentMethod();
      var od = new api.TestOrderPaymentMethod.fromJson(o.toJson());
      checkTestOrderPaymentMethod(od);
    });
  });

  unittest.group("obj-schema-UnitInvoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnitInvoice();
      var od = new api.UnitInvoice.fromJson(o.toJson());
      checkUnitInvoice(od);
    });
  });

  unittest.group("obj-schema-UnitInvoiceAdditionalCharge", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnitInvoiceAdditionalCharge();
      var od = new api.UnitInvoiceAdditionalCharge.fromJson(o.toJson());
      checkUnitInvoiceAdditionalCharge(od);
    });
  });

  unittest.group("obj-schema-UnitInvoiceTaxLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnitInvoiceTaxLine();
      var od = new api.UnitInvoiceTaxLine.fromJson(o.toJson());
      checkUnitInvoiceTaxLine(od);
    });
  });

  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group("obj-schema-Weight", () {
    unittest.test("to-json--from-json", () {
      var o = buildWeight();
      var od = new api.Weight.fromJson(o.toJson());
      checkWeight(od);
    });
  });

  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--authinfo", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("accounts/authinfo"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsAuthInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .authinfo($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsAuthInfoResponse(response);
      })));
    });

    unittest.test("method--claimwebsite", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_overwrite = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["overwrite"].first, unittest.equals("$arg_overwrite"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsClaimWebsiteResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claimwebsite(arg_merchantId, arg_accountId,
              overwrite: arg_overwrite, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsClaimWebsiteResponse(response);
      })));
    });

    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccountsCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountsCustomBatchRequest.fromJson(json);
        checkAccountsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("accounts/batch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });
  });

  unittest.group("resource-AccountstatusesResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res =
          new api.ContentApi(mock).accountstatuses;
      var arg_request = buildAccountstatusesCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountstatusesCustomBatchRequest.fromJson(json);
        checkAccountstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("accountstatuses/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildAccountstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res =
          new api.ContentApi(mock).accountstatuses;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_destinations = buildUnnamed2803();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId,
              destinations: arg_destinations, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountStatus(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res =
          new api.ContentApi(mock).accountstatuses;
      var arg_merchantId = "foo";
      var arg_destinations = buildUnnamed2804();
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-AccounttaxResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_request = buildAccounttaxCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccounttaxCustomBatchRequest.fromJson(json);
        checkAccounttaxCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("accounttax/batch"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccounttaxCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounttaxCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccounttaxListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_request = buildAccountTax();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountTax.fromJson(json);
        checkAccountTax(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_request = buildAccountTax();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountTax.fromJson(json);
        checkAccountTax(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response);
      })));
    });
  });

  unittest.group("resource-DatafeedsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeedsCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DatafeedsCustomBatchRequest.fromJson(json);
        checkDatafeedsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("datafeeds/batch"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_datafeedId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--fetchnow", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedsFetchNowResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetchnow(arg_merchantId, arg_datafeedId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsFetchNowResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_datafeedId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_datafeedId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });
  });

  unittest.group("resource-DatafeedstatusesResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          new api.ContentApi(mock).datafeedstatuses;
      var arg_request = buildDatafeedstatusesCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DatafeedstatusesCustomBatchRequest.fromJson(json);
        checkDatafeedstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("datafeedstatuses/batch"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildDatafeedstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          new api.ContentApi(mock).datafeedstatuses;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_country = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedStatus());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          new api.ContentApi(mock).datafeedstatuses;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-InventoryResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.InventoryResourceApi res = new api.ContentApi(mock).inventory;
      var arg_request = buildInventoryCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InventoryCustomBatchRequest.fromJson(json);
        checkInventoryCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("inventory/batch"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInventoryCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventoryCustomBatchResponse(response);
      })));
    });

    unittest.test("method--set", () {
      var mock = new HttpServerMock();
      api.InventoryResourceApi res = new api.ContentApi(mock).inventory;
      var arg_request = buildInventorySetRequest();
      var arg_merchantId = "foo";
      var arg_storeCode = "foo";
      var arg_productId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InventorySetRequest.fromJson(json);
        checkInventorySetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInventorySetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_request, arg_merchantId, arg_storeCode, arg_productId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventorySetResponse(response);
      })));
    });
  });

  unittest.group("resource-LiasettingsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_request = buildLiasettingsCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LiasettingsCustomBatchRequest.fromJson(json);
        checkLiasettingsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("liasettings/batch"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLiasettingsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLiaSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response);
      })));
    });

    unittest.test("method--getaccessiblegmbaccounts", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildLiasettingsGetAccessibleGmbAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getaccessiblegmbaccounts(arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsGetAccessibleGmbAccountsResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLiasettingsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_request = buildLiaSettings();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LiaSettings.fromJson(json);
        checkLiaSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLiaSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response);
      })));
    });

    unittest.test("method--requestgmbaccess", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_gmbEmail = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["gmbEmail"].first, unittest.equals(arg_gmbEmail));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildLiasettingsRequestGmbAccessResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestgmbaccess(arg_merchantId, arg_accountId,
              gmbEmail: arg_gmbEmail, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsRequestGmbAccessResponse(response);
      })));
    });

    unittest.test("method--requestinventoryverification", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_country = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildLiasettingsRequestInventoryVerificationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestinventoryverification(
              arg_merchantId, arg_accountId, arg_country,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsRequestInventoryVerificationResponse(response);
      })));
    });

    unittest.test("method--setinventoryverificationcontact", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_contactEmail = "foo";
      var arg_contactName = "foo";
      var arg_country = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildLiasettingsSetInventoryVerificationContactResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setinventoryverificationcontact(arg_merchantId, arg_accountId,
              contactEmail: arg_contactEmail,
              contactName: arg_contactName,
              country: arg_country,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsSetInventoryVerificationContactResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_request = buildLiaSettings();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LiaSettings.fromJson(json);
        checkLiaSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLiaSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response);
      })));
    });
  });

  unittest.group("resource-OrderinvoicesResourceApi", () {
    unittest.test("method--createchargeinvoice", () {
      var mock = new HttpServerMock();
      api.OrderinvoicesResourceApi res = new api.ContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateChargeInvoiceRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(json);
        checkOrderinvoicesCreateChargeInvoiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildOrderinvoicesCreateChargeInvoiceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createchargeinvoice(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderinvoicesCreateChargeInvoiceResponse(response);
      })));
    });

    unittest.test("method--createrefundinvoice", () {
      var mock = new HttpServerMock();
      api.OrderinvoicesResourceApi res = new api.ContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateRefundInvoiceRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(json);
        checkOrderinvoicesCreateRefundInvoiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildOrderinvoicesCreateRefundInvoiceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createrefundinvoice(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderinvoicesCreateRefundInvoiceResponse(response);
      })));
    });
  });

  unittest.group("resource-OrderpaymentsResourceApi", () {
    unittest.test("method--notifyauthapproved", () {
      var mock = new HttpServerMock();
      api.OrderpaymentsResourceApi res = new api.ContentApi(mock).orderpayments;
      var arg_request = buildOrderpaymentsNotifyAuthApprovedRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrderpaymentsNotifyAuthApprovedRequest.fromJson(json);
        checkOrderpaymentsNotifyAuthApprovedRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrderpaymentsNotifyAuthApprovedResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .notifyauthapproved(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderpaymentsNotifyAuthApprovedResponse(response);
      })));
    });

    unittest.test("method--notifyauthdeclined", () {
      var mock = new HttpServerMock();
      api.OrderpaymentsResourceApi res = new api.ContentApi(mock).orderpayments;
      var arg_request = buildOrderpaymentsNotifyAuthDeclinedRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrderpaymentsNotifyAuthDeclinedRequest.fromJson(json);
        checkOrderpaymentsNotifyAuthDeclinedRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrderpaymentsNotifyAuthDeclinedResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .notifyauthdeclined(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderpaymentsNotifyAuthDeclinedResponse(response);
      })));
    });

    unittest.test("method--notifycharge", () {
      var mock = new HttpServerMock();
      api.OrderpaymentsResourceApi res = new api.ContentApi(mock).orderpayments;
      var arg_request = buildOrderpaymentsNotifyChargeRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrderpaymentsNotifyChargeRequest.fromJson(json);
        checkOrderpaymentsNotifyChargeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrderpaymentsNotifyChargeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .notifycharge(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderpaymentsNotifyChargeResponse(response);
      })));
    });

    unittest.test("method--notifyrefund", () {
      var mock = new HttpServerMock();
      api.OrderpaymentsResourceApi res = new api.ContentApi(mock).orderpayments;
      var arg_request = buildOrderpaymentsNotifyRefundRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrderpaymentsNotifyRefundRequest.fromJson(json);
        checkOrderpaymentsNotifyRefundRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrderpaymentsNotifyRefundResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .notifyrefund(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderpaymentsNotifyRefundResponse(response);
      })));
    });
  });

  unittest.group("resource-OrdersResourceApi", () {
    unittest.test("method--acknowledge", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersAcknowledgeRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersAcknowledgeRequest.fromJson(json);
        checkOrdersAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersAcknowledgeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersAcknowledgeResponse(response);
      })));
    });

    unittest.test("method--advancetestorder", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersAdvanceTestOrderResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .advancetestorder(arg_merchantId, arg_orderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersAdvanceTestOrderResponse(response);
      })));
    });

    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCancelRequest.fromJson(json);
        checkOrdersCancelRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersCancelResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelResponse(response);
      })));
    });

    unittest.test("method--cancellineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCancelLineItemRequest.fromJson(json);
        checkOrdersCancelLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersCancelLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancellineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelLineItemResponse(response);
      })));
    });

    unittest.test("method--createtestorder", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestOrderRequest();
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCreateTestOrderRequest.fromJson(json);
        checkOrdersCreateTestOrderRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersCreateTestOrderResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createtestorder(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCreateTestOrderResponse(response);
      })));
    });

    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCustomBatchRequest.fromJson(json);
        checkOrdersCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("orders/batch"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrder());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_orderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrder(response);
      })));
    });

    unittest.test("method--getbymerchantorderid", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_merchantOrderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersGetByMerchantOrderIdResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getbymerchantorderid(arg_merchantId, arg_merchantOrderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersGetByMerchantOrderIdResponse(response);
      })));
    });

    unittest.test("method--gettestordertemplate", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_templateName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersGetTestOrderTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .gettestordertemplate(arg_merchantId, arg_templateName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersGetTestOrderTemplateResponse(response);
      })));
    });

    unittest.test("method--instorerefundlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersInStoreRefundLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersInStoreRefundLineItemRequest.fromJson(json);
        checkOrdersInStoreRefundLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersInStoreRefundLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .instorerefundlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersInStoreRefundLineItemResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_acknowledged = true;
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_placedDateEnd = "foo";
      var arg_placedDateStart = "foo";
      var arg_statuses = buildUnnamed2805();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--refund", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersRefundRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersRefundRequest.fromJson(json);
        checkOrdersRefundRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersRefundResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refund(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersRefundResponse(response);
      })));
    });

    unittest.test("method--rejectreturnlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersRejectReturnLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersRejectReturnLineItemRequest.fromJson(json);
        checkOrdersRejectReturnLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersRejectReturnLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rejectreturnlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersRejectReturnLineItemResponse(response);
      })));
    });

    unittest.test("method--returnlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersReturnLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersReturnLineItemRequest.fromJson(json);
        checkOrdersReturnLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersReturnLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .returnlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersReturnLineItemResponse(response);
      })));
    });

    unittest.test("method--returnrefundlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersReturnRefundLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersReturnRefundLineItemRequest.fromJson(json);
        checkOrdersReturnRefundLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersReturnRefundLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .returnrefundlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersReturnRefundLineItemResponse(response);
      })));
    });

    unittest.test("method--setlineitemmetadata", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersSetLineItemMetadataRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersSetLineItemMetadataRequest.fromJson(json);
        checkOrdersSetLineItemMetadataRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersSetLineItemMetadataResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setlineitemmetadata(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersSetLineItemMetadataResponse(response);
      })));
    });

    unittest.test("method--shiplineitems", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersShipLineItemsRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersShipLineItemsRequest.fromJson(json);
        checkOrdersShipLineItemsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersShipLineItemsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .shiplineitems(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersShipLineItemsResponse(response);
      })));
    });

    unittest.test("method--updatelineitemshippingdetails", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateLineItemShippingDetailsRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(json);
        checkOrdersUpdateLineItemShippingDetailsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildOrdersUpdateLineItemShippingDetailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatelineitemshippingdetails(
              arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateLineItemShippingDetailsResponse(response);
      })));
    });

    unittest.test("method--updatemerchantorderid", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateMerchantOrderIdRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersUpdateMerchantOrderIdRequest.fromJson(json);
        checkOrdersUpdateMerchantOrderIdRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersUpdateMerchantOrderIdResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatemerchantorderid(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateMerchantOrderIdResponse(response);
      })));
    });

    unittest.test("method--updateshipment", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateShipmentRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersUpdateShipmentRequest.fromJson(json);
        checkOrdersUpdateShipmentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersUpdateShipmentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateshipment(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateShipmentResponse(response);
      })));
    });
  });

  unittest.group("resource-PosResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosCustomBatchRequest.fromJson(json);
        checkPosCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("pos/batch"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPosCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_storeCode = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_targetMerchantId, arg_storeCode,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_storeCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPosStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_targetMerchantId, arg_storeCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosStore(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosStore();
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosStore.fromJson(json);
        checkPosStore(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPosStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, arg_targetMerchantId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosStore(response);
      })));
    });

    unittest.test("method--inventory", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosInventoryRequest();
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosInventoryRequest.fromJson(json);
        checkPosInventoryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPosInventoryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inventory(arg_request, arg_merchantId, arg_targetMerchantId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosInventoryResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPosListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, arg_targetMerchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosListResponse(response);
      })));
    });

    unittest.test("method--sale", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosSaleRequest();
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosSaleRequest.fromJson(json);
        checkPosSaleRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPosSaleResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sale(arg_request, arg_merchantId, arg_targetMerchantId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosSaleResponse(response);
      })));
    });
  });

  unittest.group("resource-ProductsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_request = buildProductsCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductsCustomBatchRequest.fromJson(json);
        checkProductsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("products/batch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_productId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_request = buildProduct();
      var arg_merchantId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_includeInvalidInsertedItems = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["includeInvalidInsertedItems"].first,
            unittest.equals("$arg_includeInvalidInsertedItems"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              includeInvalidInsertedItems: arg_includeInvalidInsertedItems,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsListResponse(response);
      })));
    });
  });

  unittest.group("resource-ProductstatusesResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res =
          new api.ContentApi(mock).productstatuses;
      var arg_request = buildProductstatusesCustomBatchRequest();
      var arg_includeAttributes = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductstatusesCustomBatchRequest.fromJson(json);
        checkProductstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("productstatuses/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["includeAttributes"].first,
            unittest.equals("$arg_includeAttributes"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildProductstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request,
              includeAttributes: arg_includeAttributes, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res =
          new api.ContentApi(mock).productstatuses;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_destinations = buildUnnamed2806();
      var arg_includeAttributes = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["includeAttributes"].first,
            unittest.equals("$arg_includeAttributes"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_productId,
              destinations: arg_destinations,
              includeAttributes: arg_includeAttributes,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductStatus(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res =
          new api.ContentApi(mock).productstatuses;
      var arg_merchantId = "foo";
      var arg_destinations = buildUnnamed2807();
      var arg_includeAttributes = true;
      var arg_includeInvalidInsertedItems = true;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["includeAttributes"].first,
            unittest.equals("$arg_includeAttributes"));
        unittest.expect(queryMap["includeInvalidInsertedItems"].first,
            unittest.equals("$arg_includeInvalidInsertedItems"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              destinations: arg_destinations,
              includeAttributes: arg_includeAttributes,
              includeInvalidInsertedItems: arg_includeInvalidInsertedItems,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductstatusesListResponse(response);
      })));
    });
  });

  unittest.group("resource-ShippingsettingsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingsettingsCustomBatchRequest();
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ShippingsettingsCustomBatchRequest.fromJson(json);
        checkShippingsettingsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("shippingsettings/batch"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildShippingsettingsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildShippingSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response);
      })));
    });

    unittest.test("method--getsupportedcarriers", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildShippingsettingsGetSupportedCarriersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedcarriers(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedCarriersResponse(response);
      })));
    });

    unittest.test("method--getsupportedholidays", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildShippingsettingsGetSupportedHolidaysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedholidays(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedHolidaysResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildShippingsettingsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingSettings();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ShippingSettings.fromJson(json);
        checkShippingSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildShippingSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingSettings();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ShippingSettings.fromJson(json);
        checkShippingSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildShippingSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              dryRun: arg_dryRun, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response);
      })));
    });
  });
}
