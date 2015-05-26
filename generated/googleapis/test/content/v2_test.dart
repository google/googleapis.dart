library googleapis.content.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

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
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed512() {
  var o = new core.List<api.AccountAdwordsLink>();
  o.add(buildAccountAdwordsLink());
  o.add(buildAccountAdwordsLink());
  return o;
}

checkUnnamed512(core.List<api.AccountAdwordsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdwordsLink(o[0]);
  checkAccountAdwordsLink(o[1]);
}

buildUnnamed513() {
  var o = new core.List<api.AccountUser>();
  o.add(buildAccountUser());
  o.add(buildAccountUser());
  return o;
}

checkUnnamed513(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0]);
  checkAccountUser(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.adultContent = true;
    o.adwordsLinks = buildUnnamed512();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.reviewsUrl = "foo";
    o.sellerId = "foo";
    o.users = buildUnnamed513();
    o.websiteUrl = "foo";
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.adultContent, unittest.isTrue);
    checkUnnamed512(o.adwordsLinks);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reviewsUrl, unittest.equals('foo'));
    unittest.expect(o.sellerId, unittest.equals('foo'));
    checkUnnamed513(o.users);
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
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

buildUnnamed514() {
  var o = new core.List<api.AccountShippingCarrierRate>();
  o.add(buildAccountShippingCarrierRate());
  o.add(buildAccountShippingCarrierRate());
  return o;
}

checkUnnamed514(core.List<api.AccountShippingCarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingCarrierRate(o[0]);
  checkAccountShippingCarrierRate(o[1]);
}

buildUnnamed515() {
  var o = new core.List<api.AccountShippingLocationGroup>();
  o.add(buildAccountShippingLocationGroup());
  o.add(buildAccountShippingLocationGroup());
  return o;
}

checkUnnamed515(core.List<api.AccountShippingLocationGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingLocationGroup(o[0]);
  checkAccountShippingLocationGroup(o[1]);
}

buildUnnamed516() {
  var o = new core.List<api.AccountShippingRateTable>();
  o.add(buildAccountShippingRateTable());
  o.add(buildAccountShippingRateTable());
  return o;
}

checkUnnamed516(core.List<api.AccountShippingRateTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingRateTable(o[0]);
  checkAccountShippingRateTable(o[1]);
}

buildUnnamed517() {
  var o = new core.List<api.AccountShippingShippingService>();
  o.add(buildAccountShippingShippingService());
  o.add(buildAccountShippingShippingService());
  return o;
}

checkUnnamed517(core.List<api.AccountShippingShippingService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingShippingService(o[0]);
  checkAccountShippingShippingService(o[1]);
}

core.int buildCounterAccountShipping = 0;
buildAccountShipping() {
  var o = new api.AccountShipping();
  buildCounterAccountShipping++;
  if (buildCounterAccountShipping < 3) {
    o.accountId = "foo";
    o.carrierRates = buildUnnamed514();
    o.kind = "foo";
    o.locationGroups = buildUnnamed515();
    o.rateTables = buildUnnamed516();
    o.services = buildUnnamed517();
  }
  buildCounterAccountShipping--;
  return o;
}

checkAccountShipping(api.AccountShipping o) {
  buildCounterAccountShipping++;
  if (buildCounterAccountShipping < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed514(o.carrierRates);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed515(o.locationGroups);
    checkUnnamed516(o.rateTables);
    checkUnnamed517(o.services);
  }
  buildCounterAccountShipping--;
}

core.int buildCounterAccountShippingCarrierRate = 0;
buildAccountShippingCarrierRate() {
  var o = new api.AccountShippingCarrierRate();
  buildCounterAccountShippingCarrierRate++;
  if (buildCounterAccountShippingCarrierRate < 3) {
    o.carrier = "foo";
    o.carrierService = "foo";
    o.modifierFlatRate = buildPrice();
    o.modifierPercent = "foo";
    o.name = "foo";
    o.saleCountry = "foo";
    o.shippingOrigin = "foo";
  }
  buildCounterAccountShippingCarrierRate--;
  return o;
}

checkAccountShippingCarrierRate(api.AccountShippingCarrierRate o) {
  buildCounterAccountShippingCarrierRate++;
  if (buildCounterAccountShippingCarrierRate < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.carrierService, unittest.equals('foo'));
    checkPrice(o.modifierFlatRate);
    unittest.expect(o.modifierPercent, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.saleCountry, unittest.equals('foo'));
    unittest.expect(o.shippingOrigin, unittest.equals('foo'));
  }
  buildCounterAccountShippingCarrierRate--;
}

core.int buildCounterAccountShippingCondition = 0;
buildAccountShippingCondition() {
  var o = new api.AccountShippingCondition();
  buildCounterAccountShippingCondition++;
  if (buildCounterAccountShippingCondition < 3) {
    o.deliveryLocationGroup = "foo";
    o.deliveryLocationId = "foo";
    o.deliveryPostalCode = "foo";
    o.deliveryPostalCodeRange = buildAccountShippingPostalCodeRange();
    o.priceMax = buildPrice();
    o.shippingLabel = "foo";
    o.weightMax = buildWeight();
  }
  buildCounterAccountShippingCondition--;
  return o;
}

checkAccountShippingCondition(api.AccountShippingCondition o) {
  buildCounterAccountShippingCondition++;
  if (buildCounterAccountShippingCondition < 3) {
    unittest.expect(o.deliveryLocationGroup, unittest.equals('foo'));
    unittest.expect(o.deliveryLocationId, unittest.equals('foo'));
    unittest.expect(o.deliveryPostalCode, unittest.equals('foo'));
    checkAccountShippingPostalCodeRange(o.deliveryPostalCodeRange);
    checkPrice(o.priceMax);
    unittest.expect(o.shippingLabel, unittest.equals('foo'));
    checkWeight(o.weightMax);
  }
  buildCounterAccountShippingCondition--;
}

buildUnnamed518() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed518(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed519() {
  var o = new core.List<api.AccountShippingPostalCodeRange>();
  o.add(buildAccountShippingPostalCodeRange());
  o.add(buildAccountShippingPostalCodeRange());
  return o;
}

checkUnnamed519(core.List<api.AccountShippingPostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingPostalCodeRange(o[0]);
  checkAccountShippingPostalCodeRange(o[1]);
}

buildUnnamed520() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed520(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountShippingLocationGroup = 0;
buildAccountShippingLocationGroup() {
  var o = new api.AccountShippingLocationGroup();
  buildCounterAccountShippingLocationGroup++;
  if (buildCounterAccountShippingLocationGroup < 3) {
    o.country = "foo";
    o.locationIds = buildUnnamed518();
    o.name = "foo";
    o.postalCodeRanges = buildUnnamed519();
    o.postalCodes = buildUnnamed520();
  }
  buildCounterAccountShippingLocationGroup--;
  return o;
}

checkAccountShippingLocationGroup(api.AccountShippingLocationGroup o) {
  buildCounterAccountShippingLocationGroup++;
  if (buildCounterAccountShippingLocationGroup < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed518(o.locationIds);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed519(o.postalCodeRanges);
    checkUnnamed520(o.postalCodes);
  }
  buildCounterAccountShippingLocationGroup--;
}

core.int buildCounterAccountShippingPostalCodeRange = 0;
buildAccountShippingPostalCodeRange() {
  var o = new api.AccountShippingPostalCodeRange();
  buildCounterAccountShippingPostalCodeRange++;
  if (buildCounterAccountShippingPostalCodeRange < 3) {
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterAccountShippingPostalCodeRange--;
  return o;
}

checkAccountShippingPostalCodeRange(api.AccountShippingPostalCodeRange o) {
  buildCounterAccountShippingPostalCodeRange++;
  if (buildCounterAccountShippingPostalCodeRange < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterAccountShippingPostalCodeRange--;
}

buildUnnamed521() {
  var o = new core.List<api.AccountShippingRateTableCell>();
  o.add(buildAccountShippingRateTableCell());
  o.add(buildAccountShippingRateTableCell());
  return o;
}

checkUnnamed521(core.List<api.AccountShippingRateTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingRateTableCell(o[0]);
  checkAccountShippingRateTableCell(o[1]);
}

core.int buildCounterAccountShippingRateTable = 0;
buildAccountShippingRateTable() {
  var o = new api.AccountShippingRateTable();
  buildCounterAccountShippingRateTable++;
  if (buildCounterAccountShippingRateTable < 3) {
    o.content = buildUnnamed521();
    o.name = "foo";
    o.saleCountry = "foo";
  }
  buildCounterAccountShippingRateTable--;
  return o;
}

checkAccountShippingRateTable(api.AccountShippingRateTable o) {
  buildCounterAccountShippingRateTable++;
  if (buildCounterAccountShippingRateTable < 3) {
    checkUnnamed521(o.content);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.saleCountry, unittest.equals('foo'));
  }
  buildCounterAccountShippingRateTable--;
}

core.int buildCounterAccountShippingRateTableCell = 0;
buildAccountShippingRateTableCell() {
  var o = new api.AccountShippingRateTableCell();
  buildCounterAccountShippingRateTableCell++;
  if (buildCounterAccountShippingRateTableCell < 3) {
    o.condition = buildAccountShippingCondition();
    o.rate = buildPrice();
  }
  buildCounterAccountShippingRateTableCell--;
  return o;
}

checkAccountShippingRateTableCell(api.AccountShippingRateTableCell o) {
  buildCounterAccountShippingRateTableCell++;
  if (buildCounterAccountShippingRateTableCell < 3) {
    checkAccountShippingCondition(o.condition);
    checkPrice(o.rate);
  }
  buildCounterAccountShippingRateTableCell--;
}

core.int buildCounterAccountShippingShippingService = 0;
buildAccountShippingShippingService() {
  var o = new api.AccountShippingShippingService();
  buildCounterAccountShippingShippingService++;
  if (buildCounterAccountShippingShippingService < 3) {
    o.active = true;
    o.calculationMethod = buildAccountShippingShippingServiceCalculationMethod();
    o.costRuleTree = buildAccountShippingShippingServiceCostRule();
    o.name = "foo";
    o.saleCountry = "foo";
  }
  buildCounterAccountShippingShippingService--;
  return o;
}

checkAccountShippingShippingService(api.AccountShippingShippingService o) {
  buildCounterAccountShippingShippingService++;
  if (buildCounterAccountShippingShippingService < 3) {
    unittest.expect(o.active, unittest.isTrue);
    checkAccountShippingShippingServiceCalculationMethod(o.calculationMethod);
    checkAccountShippingShippingServiceCostRule(o.costRuleTree);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.saleCountry, unittest.equals('foo'));
  }
  buildCounterAccountShippingShippingService--;
}

core.int buildCounterAccountShippingShippingServiceCalculationMethod = 0;
buildAccountShippingShippingServiceCalculationMethod() {
  var o = new api.AccountShippingShippingServiceCalculationMethod();
  buildCounterAccountShippingShippingServiceCalculationMethod++;
  if (buildCounterAccountShippingShippingServiceCalculationMethod < 3) {
    o.carrierRate = "foo";
    o.excluded = true;
    o.flatRate = buildPrice();
    o.percentageRate = "foo";
    o.rateTable = "foo";
  }
  buildCounterAccountShippingShippingServiceCalculationMethod--;
  return o;
}

checkAccountShippingShippingServiceCalculationMethod(api.AccountShippingShippingServiceCalculationMethod o) {
  buildCounterAccountShippingShippingServiceCalculationMethod++;
  if (buildCounterAccountShippingShippingServiceCalculationMethod < 3) {
    unittest.expect(o.carrierRate, unittest.equals('foo'));
    unittest.expect(o.excluded, unittest.isTrue);
    checkPrice(o.flatRate);
    unittest.expect(o.percentageRate, unittest.equals('foo'));
    unittest.expect(o.rateTable, unittest.equals('foo'));
  }
  buildCounterAccountShippingShippingServiceCalculationMethod--;
}

buildUnnamed522() {
  var o = new core.List<api.AccountShippingShippingServiceCostRule>();
  o.add(buildAccountShippingShippingServiceCostRule());
  o.add(buildAccountShippingShippingServiceCostRule());
  return o;
}

checkUnnamed522(core.List<api.AccountShippingShippingServiceCostRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShippingShippingServiceCostRule(o[0]);
  checkAccountShippingShippingServiceCostRule(o[1]);
}

core.int buildCounterAccountShippingShippingServiceCostRule = 0;
buildAccountShippingShippingServiceCostRule() {
  var o = new api.AccountShippingShippingServiceCostRule();
  buildCounterAccountShippingShippingServiceCostRule++;
  if (buildCounterAccountShippingShippingServiceCostRule < 3) {
    o.calculationMethod = buildAccountShippingShippingServiceCalculationMethod();
    o.children = buildUnnamed522();
    o.condition = buildAccountShippingCondition();
  }
  buildCounterAccountShippingShippingServiceCostRule--;
  return o;
}

checkAccountShippingShippingServiceCostRule(api.AccountShippingShippingServiceCostRule o) {
  buildCounterAccountShippingShippingServiceCostRule++;
  if (buildCounterAccountShippingShippingServiceCostRule < 3) {
    checkAccountShippingShippingServiceCalculationMethod(o.calculationMethod);
    checkUnnamed522(o.children);
    checkAccountShippingCondition(o.condition);
  }
  buildCounterAccountShippingShippingServiceCostRule--;
}

buildUnnamed523() {
  var o = new core.List<api.AccountStatusDataQualityIssue>();
  o.add(buildAccountStatusDataQualityIssue());
  o.add(buildAccountStatusDataQualityIssue());
  return o;
}

checkUnnamed523(core.List<api.AccountStatusDataQualityIssue> o) {
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
    o.dataQualityIssues = buildUnnamed523();
    o.kind = "foo";
  }
  buildCounterAccountStatus--;
  return o;
}

checkAccountStatus(api.AccountStatus o) {
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed523(o.dataQualityIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountStatus--;
}

buildUnnamed524() {
  var o = new core.List<api.AccountStatusExampleItem>();
  o.add(buildAccountStatusExampleItem());
  o.add(buildAccountStatusExampleItem());
  return o;
}

checkUnnamed524(core.List<api.AccountStatusExampleItem> o) {
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
    o.displayedValue = "foo";
    o.exampleItems = buildUnnamed524();
    o.id = "foo";
    o.lastChecked = "foo";
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
    unittest.expect(o.displayedValue, unittest.equals('foo'));
    checkUnnamed524(o.exampleItems);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastChecked, unittest.equals('foo'));
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

buildUnnamed525() {
  var o = new core.List<api.AccountTaxTaxRule>();
  o.add(buildAccountTaxTaxRule());
  o.add(buildAccountTaxTaxRule());
  return o;
}

checkUnnamed525(core.List<api.AccountTaxTaxRule> o) {
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
    o.rules = buildUnnamed525();
  }
  buildCounterAccountTax--;
  return o;
}

checkAccountTax(api.AccountTax o) {
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed525(o.rules);
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

buildUnnamed526() {
  var o = new core.List<api.AccountIdentifier>();
  o.add(buildAccountIdentifier());
  o.add(buildAccountIdentifier());
  return o;
}

checkUnnamed526(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0]);
  checkAccountIdentifier(o[1]);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
buildAccountsAuthInfoResponse() {
  var o = new api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed526();
    o.kind = "foo";
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed526(o.accountIdentifiers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsAuthInfoResponse--;
}

buildUnnamed527() {
  var o = new core.List<api.AccountsCustomBatchRequestEntry>();
  o.add(buildAccountsCustomBatchRequestEntry());
  o.add(buildAccountsCustomBatchRequestEntry());
  return o;
}

checkUnnamed527(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(o[0]);
  checkAccountsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
buildAccountsCustomBatchRequest() {
  var o = new api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed527();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed527(o.entries);
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
    o.merchantId = "foo";
    o.method = "foo";
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
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchRequestEntry--;
}

buildUnnamed528() {
  var o = new core.List<api.AccountsCustomBatchResponseEntry>();
  o.add(buildAccountsCustomBatchResponseEntry());
  o.add(buildAccountsCustomBatchResponseEntry());
  return o;
}

checkUnnamed528(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(o[0]);
  checkAccountsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
buildAccountsCustomBatchResponse() {
  var o = new api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed528();
    o.kind = "foo";
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed528(o.entries);
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

buildUnnamed529() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed529(core.List<api.Account> o) {
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
    o.resources = buildUnnamed529();
  }
  buildCounterAccountsListResponse--;
  return o;
}

checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed529(o.resources);
  }
  buildCounterAccountsListResponse--;
}

buildUnnamed530() {
  var o = new core.List<api.AccountshippingCustomBatchRequestEntry>();
  o.add(buildAccountshippingCustomBatchRequestEntry());
  o.add(buildAccountshippingCustomBatchRequestEntry());
  return o;
}

checkUnnamed530(core.List<api.AccountshippingCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountshippingCustomBatchRequestEntry(o[0]);
  checkAccountshippingCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountshippingCustomBatchRequest = 0;
buildAccountshippingCustomBatchRequest() {
  var o = new api.AccountshippingCustomBatchRequest();
  buildCounterAccountshippingCustomBatchRequest++;
  if (buildCounterAccountshippingCustomBatchRequest < 3) {
    o.entries = buildUnnamed530();
  }
  buildCounterAccountshippingCustomBatchRequest--;
  return o;
}

checkAccountshippingCustomBatchRequest(api.AccountshippingCustomBatchRequest o) {
  buildCounterAccountshippingCustomBatchRequest++;
  if (buildCounterAccountshippingCustomBatchRequest < 3) {
    checkUnnamed530(o.entries);
  }
  buildCounterAccountshippingCustomBatchRequest--;
}

core.int buildCounterAccountshippingCustomBatchRequestEntry = 0;
buildAccountshippingCustomBatchRequestEntry() {
  var o = new api.AccountshippingCustomBatchRequestEntry();
  buildCounterAccountshippingCustomBatchRequestEntry++;
  if (buildCounterAccountshippingCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.accountShipping = buildAccountShipping();
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterAccountshippingCustomBatchRequestEntry--;
  return o;
}

checkAccountshippingCustomBatchRequestEntry(api.AccountshippingCustomBatchRequestEntry o) {
  buildCounterAccountshippingCustomBatchRequestEntry++;
  if (buildCounterAccountshippingCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkAccountShipping(o.accountShipping);
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountshippingCustomBatchRequestEntry--;
}

buildUnnamed531() {
  var o = new core.List<api.AccountshippingCustomBatchResponseEntry>();
  o.add(buildAccountshippingCustomBatchResponseEntry());
  o.add(buildAccountshippingCustomBatchResponseEntry());
  return o;
}

checkUnnamed531(core.List<api.AccountshippingCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountshippingCustomBatchResponseEntry(o[0]);
  checkAccountshippingCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountshippingCustomBatchResponse = 0;
buildAccountshippingCustomBatchResponse() {
  var o = new api.AccountshippingCustomBatchResponse();
  buildCounterAccountshippingCustomBatchResponse++;
  if (buildCounterAccountshippingCustomBatchResponse < 3) {
    o.entries = buildUnnamed531();
    o.kind = "foo";
  }
  buildCounterAccountshippingCustomBatchResponse--;
  return o;
}

checkAccountshippingCustomBatchResponse(api.AccountshippingCustomBatchResponse o) {
  buildCounterAccountshippingCustomBatchResponse++;
  if (buildCounterAccountshippingCustomBatchResponse < 3) {
    checkUnnamed531(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountshippingCustomBatchResponse--;
}

core.int buildCounterAccountshippingCustomBatchResponseEntry = 0;
buildAccountshippingCustomBatchResponseEntry() {
  var o = new api.AccountshippingCustomBatchResponseEntry();
  buildCounterAccountshippingCustomBatchResponseEntry++;
  if (buildCounterAccountshippingCustomBatchResponseEntry < 3) {
    o.accountShipping = buildAccountShipping();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
  }
  buildCounterAccountshippingCustomBatchResponseEntry--;
  return o;
}

checkAccountshippingCustomBatchResponseEntry(api.AccountshippingCustomBatchResponseEntry o) {
  buildCounterAccountshippingCustomBatchResponseEntry++;
  if (buildCounterAccountshippingCustomBatchResponseEntry < 3) {
    checkAccountShipping(o.accountShipping);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountshippingCustomBatchResponseEntry--;
}

buildUnnamed532() {
  var o = new core.List<api.AccountShipping>();
  o.add(buildAccountShipping());
  o.add(buildAccountShipping());
  return o;
}

checkUnnamed532(core.List<api.AccountShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountShipping(o[0]);
  checkAccountShipping(o[1]);
}

core.int buildCounterAccountshippingListResponse = 0;
buildAccountshippingListResponse() {
  var o = new api.AccountshippingListResponse();
  buildCounterAccountshippingListResponse++;
  if (buildCounterAccountshippingListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed532();
  }
  buildCounterAccountshippingListResponse--;
  return o;
}

checkAccountshippingListResponse(api.AccountshippingListResponse o) {
  buildCounterAccountshippingListResponse++;
  if (buildCounterAccountshippingListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed532(o.resources);
  }
  buildCounterAccountshippingListResponse--;
}

buildUnnamed533() {
  var o = new core.List<api.AccountstatusesCustomBatchRequestEntry>();
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed533(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(o[0]);
  checkAccountstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
buildAccountstatusesCustomBatchRequest() {
  var o = new api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed533();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

checkAccountstatusesCustomBatchRequest(api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed533(o.entries);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
}

core.int buildCounterAccountstatusesCustomBatchRequestEntry = 0;
buildAccountstatusesCustomBatchRequestEntry() {
  var o = new api.AccountstatusesCustomBatchRequestEntry();
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
  return o;
}

checkAccountstatusesCustomBatchRequestEntry(api.AccountstatusesCustomBatchRequestEntry o) {
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
}

buildUnnamed534() {
  var o = new core.List<api.AccountstatusesCustomBatchResponseEntry>();
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed534(core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchResponseEntry(o[0]);
  checkAccountstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchResponse = 0;
buildAccountstatusesCustomBatchResponse() {
  var o = new api.AccountstatusesCustomBatchResponse();
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed534();
    o.kind = "foo";
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

checkAccountstatusesCustomBatchResponse(api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed534(o.entries);
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

checkAccountstatusesCustomBatchResponseEntry(api.AccountstatusesCustomBatchResponseEntry o) {
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    checkAccountStatus(o.accountStatus);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
}

buildUnnamed535() {
  var o = new core.List<api.AccountStatus>();
  o.add(buildAccountStatus());
  o.add(buildAccountStatus());
  return o;
}

checkUnnamed535(core.List<api.AccountStatus> o) {
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
    o.resources = buildUnnamed535();
  }
  buildCounterAccountstatusesListResponse--;
  return o;
}

checkAccountstatusesListResponse(api.AccountstatusesListResponse o) {
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed535(o.resources);
  }
  buildCounterAccountstatusesListResponse--;
}

buildUnnamed536() {
  var o = new core.List<api.AccounttaxCustomBatchRequestEntry>();
  o.add(buildAccounttaxCustomBatchRequestEntry());
  o.add(buildAccounttaxCustomBatchRequestEntry());
  return o;
}

checkUnnamed536(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(o[0]);
  checkAccounttaxCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
buildAccounttaxCustomBatchRequest() {
  var o = new api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed536();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed536(o.entries);
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

checkAccounttaxCustomBatchRequestEntry(api.AccounttaxCustomBatchRequestEntry o) {
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

buildUnnamed537() {
  var o = new core.List<api.AccounttaxCustomBatchResponseEntry>();
  o.add(buildAccounttaxCustomBatchResponseEntry());
  o.add(buildAccounttaxCustomBatchResponseEntry());
  return o;
}

checkUnnamed537(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(o[0]);
  checkAccounttaxCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
buildAccounttaxCustomBatchResponse() {
  var o = new api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed537();
    o.kind = "foo";
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed537(o.entries);
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

checkAccounttaxCustomBatchResponseEntry(api.AccounttaxCustomBatchResponseEntry o) {
  buildCounterAccounttaxCustomBatchResponseEntry++;
  if (buildCounterAccounttaxCustomBatchResponseEntry < 3) {
    checkAccountTax(o.accountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
}

buildUnnamed538() {
  var o = new core.List<api.AccountTax>();
  o.add(buildAccountTax());
  o.add(buildAccountTax());
  return o;
}

checkUnnamed538(core.List<api.AccountTax> o) {
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
    o.resources = buildUnnamed538();
  }
  buildCounterAccounttaxListResponse--;
  return o;
}

checkAccounttaxListResponse(api.AccounttaxListResponse o) {
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed538(o.resources);
  }
  buildCounterAccounttaxListResponse--;
}

buildUnnamed539() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed539(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.intendedDestinations = buildUnnamed539();
    o.kind = "foo";
    o.name = "foo";
    o.targetCountry = "foo";
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
    checkUnnamed539(o.intendedDestinations);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
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
    o.password = "foo";
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
    unittest.expect(o.password, unittest.equals('foo'));
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

buildUnnamed540() {
  var o = new core.List<api.DatafeedStatusError>();
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

checkUnnamed540(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

buildUnnamed541() {
  var o = new core.List<api.DatafeedStatusError>();
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

checkUnnamed541(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.int buildCounterDatafeedStatus = 0;
buildDatafeedStatus() {
  var o = new api.DatafeedStatus();
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    o.datafeedId = "foo";
    o.errors = buildUnnamed540();
    o.itemsTotal = "foo";
    o.itemsValid = "foo";
    o.kind = "foo";
    o.lastUploadDate = "foo";
    o.processingStatus = "foo";
    o.warnings = buildUnnamed541();
  }
  buildCounterDatafeedStatus--;
  return o;
}

checkDatafeedStatus(api.DatafeedStatus o) {
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    checkUnnamed540(o.errors);
    unittest.expect(o.itemsTotal, unittest.equals('foo'));
    unittest.expect(o.itemsValid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUploadDate, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    checkUnnamed541(o.warnings);
  }
  buildCounterDatafeedStatus--;
}

buildUnnamed542() {
  var o = new core.List<api.DatafeedStatusExample>();
  o.add(buildDatafeedStatusExample());
  o.add(buildDatafeedStatusExample());
  return o;
}

checkUnnamed542(core.List<api.DatafeedStatusExample> o) {
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
    o.examples = buildUnnamed542();
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
    checkUnnamed542(o.examples);
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

buildUnnamed543() {
  var o = new core.List<api.DatafeedsCustomBatchRequestEntry>();
  o.add(buildDatafeedsCustomBatchRequestEntry());
  o.add(buildDatafeedsCustomBatchRequestEntry());
  return o;
}

checkUnnamed543(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(o[0]);
  checkDatafeedsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
buildDatafeedsCustomBatchRequest() {
  var o = new api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed543();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed543(o.entries);
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

buildUnnamed544() {
  var o = new core.List<api.DatafeedsCustomBatchResponseEntry>();
  o.add(buildDatafeedsCustomBatchResponseEntry());
  o.add(buildDatafeedsCustomBatchResponseEntry());
  return o;
}

checkUnnamed544(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(o[0]);
  checkDatafeedsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
buildDatafeedsCustomBatchResponse() {
  var o = new api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed544();
    o.kind = "foo";
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed544(o.entries);
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

checkDatafeedsCustomBatchResponseEntry(api.DatafeedsCustomBatchResponseEntry o) {
  buildCounterDatafeedsCustomBatchResponseEntry++;
  if (buildCounterDatafeedsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeed(o.datafeed);
    checkErrors(o.errors);
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
}

buildUnnamed545() {
  var o = new core.List<api.Datafeed>();
  o.add(buildDatafeed());
  o.add(buildDatafeed());
  return o;
}

checkUnnamed545(core.List<api.Datafeed> o) {
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
    o.resources = buildUnnamed545();
  }
  buildCounterDatafeedsListResponse--;
  return o;
}

checkDatafeedsListResponse(api.DatafeedsListResponse o) {
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed545(o.resources);
  }
  buildCounterDatafeedsListResponse--;
}

buildUnnamed546() {
  var o = new core.List<api.DatafeedstatusesCustomBatchRequestEntry>();
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed546(core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchRequestEntry(o[0]);
  checkDatafeedstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchRequest = 0;
buildDatafeedstatusesCustomBatchRequest() {
  var o = new api.DatafeedstatusesCustomBatchRequest();
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed546();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

checkDatafeedstatusesCustomBatchRequest(api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed546(o.entries);
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
}

core.int buildCounterDatafeedstatusesCustomBatchRequestEntry = 0;
buildDatafeedstatusesCustomBatchRequestEntry() {
  var o = new api.DatafeedstatusesCustomBatchRequestEntry();
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.datafeedId = "foo";
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
  return o;
}

checkDatafeedstatusesCustomBatchRequestEntry(api.DatafeedstatusesCustomBatchRequestEntry o) {
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
}

buildUnnamed547() {
  var o = new core.List<api.DatafeedstatusesCustomBatchResponseEntry>();
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed547(core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchResponseEntry(o[0]);
  checkDatafeedstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchResponse = 0;
buildDatafeedstatusesCustomBatchResponse() {
  var o = new api.DatafeedstatusesCustomBatchResponse();
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed547();
    o.kind = "foo";
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

checkDatafeedstatusesCustomBatchResponse(api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed547(o.entries);
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

checkDatafeedstatusesCustomBatchResponseEntry(api.DatafeedstatusesCustomBatchResponseEntry o) {
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeedStatus(o.datafeedStatus);
    checkErrors(o.errors);
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
}

buildUnnamed548() {
  var o = new core.List<api.DatafeedStatus>();
  o.add(buildDatafeedStatus());
  o.add(buildDatafeedStatus());
  return o;
}

checkUnnamed548(core.List<api.DatafeedStatus> o) {
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
    o.resources = buildUnnamed548();
  }
  buildCounterDatafeedstatusesListResponse--;
  return o;
}

checkDatafeedstatusesListResponse(api.DatafeedstatusesListResponse o) {
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed548(o.resources);
  }
  buildCounterDatafeedstatusesListResponse--;
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

buildUnnamed549() {
  var o = new core.List<api.Error>();
  o.add(buildError());
  o.add(buildError());
  return o;
}

checkUnnamed549(core.List<api.Error> o) {
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
    o.errors = buildUnnamed549();
    o.message = "foo";
  }
  buildCounterErrors--;
  return o;
}

checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed549(o.errors);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterErrors--;
}

core.int buildCounterInventory = 0;
buildInventory() {
  var o = new api.Inventory();
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    o.availability = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = 42;
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
  }
  buildCounterInventory--;
  return o;
}

checkInventory(api.Inventory o) {
  buildCounterInventory++;
  if (buildCounterInventory < 3) {
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals(42));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
  }
  buildCounterInventory--;
}

buildUnnamed550() {
  var o = new core.List<api.InventoryCustomBatchRequestEntry>();
  o.add(buildInventoryCustomBatchRequestEntry());
  o.add(buildInventoryCustomBatchRequestEntry());
  return o;
}

checkUnnamed550(core.List<api.InventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryCustomBatchRequestEntry(o[0]);
  checkInventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterInventoryCustomBatchRequest = 0;
buildInventoryCustomBatchRequest() {
  var o = new api.InventoryCustomBatchRequest();
  buildCounterInventoryCustomBatchRequest++;
  if (buildCounterInventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed550();
  }
  buildCounterInventoryCustomBatchRequest--;
  return o;
}

checkInventoryCustomBatchRequest(api.InventoryCustomBatchRequest o) {
  buildCounterInventoryCustomBatchRequest++;
  if (buildCounterInventoryCustomBatchRequest < 3) {
    checkUnnamed550(o.entries);
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

buildUnnamed551() {
  var o = new core.List<api.InventoryCustomBatchResponseEntry>();
  o.add(buildInventoryCustomBatchResponseEntry());
  o.add(buildInventoryCustomBatchResponseEntry());
  return o;
}

checkUnnamed551(core.List<api.InventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryCustomBatchResponseEntry(o[0]);
  checkInventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterInventoryCustomBatchResponse = 0;
buildInventoryCustomBatchResponse() {
  var o = new api.InventoryCustomBatchResponse();
  buildCounterInventoryCustomBatchResponse++;
  if (buildCounterInventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed551();
    o.kind = "foo";
  }
  buildCounterInventoryCustomBatchResponse--;
  return o;
}

checkInventoryCustomBatchResponse(api.InventoryCustomBatchResponse o) {
  buildCounterInventoryCustomBatchResponse++;
  if (buildCounterInventoryCustomBatchResponse < 3) {
    checkUnnamed551(o.entries);
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

checkInventoryCustomBatchResponseEntry(api.InventoryCustomBatchResponseEntry o) {
  buildCounterInventoryCustomBatchResponseEntry++;
  if (buildCounterInventoryCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterInventoryCustomBatchResponseEntry--;
}

core.int buildCounterInventorySetRequest = 0;
buildInventorySetRequest() {
  var o = new api.InventorySetRequest();
  buildCounterInventorySetRequest++;
  if (buildCounterInventorySetRequest < 3) {
    o.availability = "foo";
    o.price = buildPrice();
    o.quantity = 42;
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
  }
  buildCounterInventorySetRequest--;
  return o;
}

checkInventorySetRequest(api.InventorySetRequest o) {
  buildCounterInventorySetRequest++;
  if (buildCounterInventorySetRequest < 3) {
    unittest.expect(o.availability, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals(42));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
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

buildUnnamed552() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed552(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed553() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed553(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed554() {
  var o = new core.List<api.ProductAspect>();
  o.add(buildProductAspect());
  o.add(buildProductAspect());
  return o;
}

checkUnnamed554(core.List<api.ProductAspect> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductAspect(o[0]);
  checkProductAspect(o[1]);
}

buildUnnamed555() {
  var o = new core.List<api.ProductCustomAttribute>();
  o.add(buildProductCustomAttribute());
  o.add(buildProductCustomAttribute());
  return o;
}

checkUnnamed555(core.List<api.ProductCustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCustomAttribute(o[0]);
  checkProductCustomAttribute(o[1]);
}

buildUnnamed556() {
  var o = new core.List<api.ProductCustomGroup>();
  o.add(buildProductCustomGroup());
  o.add(buildProductCustomGroup());
  return o;
}

checkUnnamed556(core.List<api.ProductCustomGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCustomGroup(o[0]);
  checkProductCustomGroup(o[1]);
}

buildUnnamed557() {
  var o = new core.List<api.ProductDestination>();
  o.add(buildProductDestination());
  o.add(buildProductDestination());
  return o;
}

checkUnnamed557(core.List<api.ProductDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDestination(o[0]);
  checkProductDestination(o[1]);
}

buildUnnamed558() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed558(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed559() {
  var o = new core.List<api.ProductShipping>();
  o.add(buildProductShipping());
  o.add(buildProductShipping());
  return o;
}

checkUnnamed559(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0]);
  checkProductShipping(o[1]);
}

buildUnnamed560() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed560(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed561() {
  var o = new core.List<api.ProductTax>();
  o.add(buildProductTax());
  o.add(buildProductTax());
  return o;
}

checkUnnamed561(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0]);
  checkProductTax(o[1]);
}

buildUnnamed562() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed562(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed563() {
  var o = new core.List<api.Error>();
  o.add(buildError());
  o.add(buildError());
  return o;
}

checkUnnamed563(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed552();
    o.adult = true;
    o.adwordsGrouping = "foo";
    o.adwordsLabels = buildUnnamed553();
    o.adwordsRedirect = "foo";
    o.ageGroup = "foo";
    o.aspects = buildUnnamed554();
    o.availability = "foo";
    o.availabilityDate = "foo";
    o.brand = "foo";
    o.channel = "foo";
    o.color = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.customAttributes = buildUnnamed555();
    o.customGroups = buildUnnamed556();
    o.customLabel0 = "foo";
    o.customLabel1 = "foo";
    o.customLabel2 = "foo";
    o.customLabel3 = "foo";
    o.customLabel4 = "foo";
    o.description = "foo";
    o.destinations = buildUnnamed557();
    o.displayAdsId = "foo";
    o.displayAdsLink = "foo";
    o.displayAdsSimilarIds = buildUnnamed558();
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
    o.installment = buildProductInstallment();
    o.isBundle = true;
    o.itemGroupId = "foo";
    o.kind = "foo";
    o.link = "foo";
    o.loyaltyPoints = buildLoyaltyPoints();
    o.material = "foo";
    o.mobileLink = "foo";
    o.mpn = "foo";
    o.multipack = "foo";
    o.offerId = "foo";
    o.onlineOnly = true;
    o.pattern = "foo";
    o.price = buildPrice();
    o.productType = "foo";
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
    o.shipping = buildUnnamed559();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = "foo";
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.sizeSystem = "foo";
    o.sizeType = "foo";
    o.sizes = buildUnnamed560();
    o.targetCountry = "foo";
    o.taxes = buildUnnamed561();
    o.title = "foo";
    o.unitPricingBaseMeasure = buildProductUnitPricingBaseMeasure();
    o.unitPricingMeasure = buildProductUnitPricingMeasure();
    o.validatedDestinations = buildUnnamed562();
    o.warnings = buildUnnamed563();
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed552(o.additionalImageLinks);
    unittest.expect(o.adult, unittest.isTrue);
    unittest.expect(o.adwordsGrouping, unittest.equals('foo'));
    checkUnnamed553(o.adwordsLabels);
    unittest.expect(o.adwordsRedirect, unittest.equals('foo'));
    unittest.expect(o.ageGroup, unittest.equals('foo'));
    checkUnnamed554(o.aspects);
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.availabilityDate, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed555(o.customAttributes);
    checkUnnamed556(o.customGroups);
    unittest.expect(o.customLabel0, unittest.equals('foo'));
    unittest.expect(o.customLabel1, unittest.equals('foo'));
    unittest.expect(o.customLabel2, unittest.equals('foo'));
    unittest.expect(o.customLabel3, unittest.equals('foo'));
    unittest.expect(o.customLabel4, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed557(o.destinations);
    unittest.expect(o.displayAdsId, unittest.equals('foo'));
    unittest.expect(o.displayAdsLink, unittest.equals('foo'));
    checkUnnamed558(o.displayAdsSimilarIds);
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
    checkProductInstallment(o.installment);
    unittest.expect(o.isBundle, unittest.isTrue);
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints);
    unittest.expect(o.material, unittest.equals('foo'));
    unittest.expect(o.mobileLink, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.multipack, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.onlineOnly, unittest.isTrue);
    unittest.expect(o.pattern, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.productType, unittest.equals('foo'));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    checkUnnamed559(o.shipping);
    checkProductShippingDimension(o.shippingHeight);
    unittest.expect(o.shippingLabel, unittest.equals('foo'));
    checkProductShippingDimension(o.shippingLength);
    checkProductShippingWeight(o.shippingWeight);
    checkProductShippingDimension(o.shippingWidth);
    unittest.expect(o.sizeSystem, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    checkUnnamed560(o.sizes);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    checkUnnamed561(o.taxes);
    unittest.expect(o.title, unittest.equals('foo'));
    checkProductUnitPricingBaseMeasure(o.unitPricingBaseMeasure);
    checkProductUnitPricingMeasure(o.unitPricingMeasure);
    checkUnnamed562(o.validatedDestinations);
    checkUnnamed563(o.warnings);
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

buildUnnamed564() {
  var o = new core.List<api.ProductCustomAttribute>();
  o.add(buildProductCustomAttribute());
  o.add(buildProductCustomAttribute());
  return o;
}

checkUnnamed564(core.List<api.ProductCustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductCustomAttribute(o[0]);
  checkProductCustomAttribute(o[1]);
}

core.int buildCounterProductCustomGroup = 0;
buildProductCustomGroup() {
  var o = new api.ProductCustomGroup();
  buildCounterProductCustomGroup++;
  if (buildCounterProductCustomGroup < 3) {
    o.attributes = buildUnnamed564();
    o.name = "foo";
  }
  buildCounterProductCustomGroup--;
  return o;
}

checkProductCustomGroup(api.ProductCustomGroup o) {
  buildCounterProductCustomGroup++;
  if (buildCounterProductCustomGroup < 3) {
    checkUnnamed564(o.attributes);
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

core.int buildCounterProductInstallment = 0;
buildProductInstallment() {
  var o = new api.ProductInstallment();
  buildCounterProductInstallment++;
  if (buildCounterProductInstallment < 3) {
    o.amount = buildPrice();
    o.months = "foo";
  }
  buildCounterProductInstallment--;
  return o;
}

checkProductInstallment(api.ProductInstallment o) {
  buildCounterProductInstallment++;
  if (buildCounterProductInstallment < 3) {
    checkPrice(o.amount);
    unittest.expect(o.months, unittest.equals('foo'));
  }
  buildCounterProductInstallment--;
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

buildUnnamed565() {
  var o = new core.List<api.ProductStatusDataQualityIssue>();
  o.add(buildProductStatusDataQualityIssue());
  o.add(buildProductStatusDataQualityIssue());
  return o;
}

checkUnnamed565(core.List<api.ProductStatusDataQualityIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDataQualityIssue(o[0]);
  checkProductStatusDataQualityIssue(o[1]);
}

buildUnnamed566() {
  var o = new core.List<api.ProductStatusDestinationStatus>();
  o.add(buildProductStatusDestinationStatus());
  o.add(buildProductStatusDestinationStatus());
  return o;
}

checkUnnamed566(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(o[0]);
  checkProductStatusDestinationStatus(o[1]);
}

core.int buildCounterProductStatus = 0;
buildProductStatus() {
  var o = new api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = "foo";
    o.dataQualityIssues = buildUnnamed565();
    o.destinationStatuses = buildUnnamed566();
    o.googleExpirationDate = "foo";
    o.kind = "foo";
    o.lastUpdateDate = "foo";
    o.link = "foo";
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
    checkUnnamed565(o.dataQualityIssues);
    checkUnnamed566(o.destinationStatuses);
    unittest.expect(o.googleExpirationDate, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateDate, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
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
    unittest.expect(o.approvalStatus, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.intention, unittest.equals('foo'));
  }
  buildCounterProductStatusDestinationStatus--;
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

buildUnnamed567() {
  var o = new core.List<api.ProductsCustomBatchRequestEntry>();
  o.add(buildProductsCustomBatchRequestEntry());
  o.add(buildProductsCustomBatchRequestEntry());
  return o;
}

checkUnnamed567(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(o[0]);
  checkProductsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductsCustomBatchRequest = 0;
buildProductsCustomBatchRequest() {
  var o = new api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed567();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed567(o.entries);
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

buildUnnamed568() {
  var o = new core.List<api.ProductsCustomBatchResponseEntry>();
  o.add(buildProductsCustomBatchResponseEntry());
  o.add(buildProductsCustomBatchResponseEntry());
  return o;
}

checkUnnamed568(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(o[0]);
  checkProductsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductsCustomBatchResponse = 0;
buildProductsCustomBatchResponse() {
  var o = new api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed568();
    o.kind = "foo";
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed568(o.entries);
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

buildUnnamed569() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed569(core.List<api.Product> o) {
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
    o.resources = buildUnnamed569();
  }
  buildCounterProductsListResponse--;
  return o;
}

checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed569(o.resources);
  }
  buildCounterProductsListResponse--;
}

buildUnnamed570() {
  var o = new core.List<api.ProductstatusesCustomBatchRequestEntry>();
  o.add(buildProductstatusesCustomBatchRequestEntry());
  o.add(buildProductstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed570(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(o[0]);
  checkProductstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
buildProductstatusesCustomBatchRequest() {
  var o = new api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed570();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

checkProductstatusesCustomBatchRequest(api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed570(o.entries);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

core.int buildCounterProductstatusesCustomBatchRequestEntry = 0;
buildProductstatusesCustomBatchRequestEntry() {
  var o = new api.ProductstatusesCustomBatchRequestEntry();
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.productId = "foo";
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
  return o;
}

checkProductstatusesCustomBatchRequestEntry(api.ProductstatusesCustomBatchRequestEntry o) {
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
}

buildUnnamed571() {
  var o = new core.List<api.ProductstatusesCustomBatchResponseEntry>();
  o.add(buildProductstatusesCustomBatchResponseEntry());
  o.add(buildProductstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed571(core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchResponseEntry(o[0]);
  checkProductstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchResponse = 0;
buildProductstatusesCustomBatchResponse() {
  var o = new api.ProductstatusesCustomBatchResponse();
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed571();
    o.kind = "foo";
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

checkProductstatusesCustomBatchResponse(api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed571(o.entries);
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

checkProductstatusesCustomBatchResponseEntry(api.ProductstatusesCustomBatchResponseEntry o) {
  buildCounterProductstatusesCustomBatchResponseEntry++;
  if (buildCounterProductstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProductStatus(o.productStatus);
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
}

buildUnnamed572() {
  var o = new core.List<api.ProductStatus>();
  o.add(buildProductStatus());
  o.add(buildProductStatus());
  return o;
}

checkUnnamed572(core.List<api.ProductStatus> o) {
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
    o.resources = buildUnnamed572();
  }
  buildCounterProductstatusesListResponse--;
  return o;
}

checkProductstatusesListResponse(api.ProductstatusesListResponse o) {
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed572(o.resources);
  }
  buildCounterProductstatusesListResponse--;
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


  unittest.group("obj-schema-AccountIdentifier", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountIdentifier();
      var od = new api.AccountIdentifier.fromJson(o.toJson());
      checkAccountIdentifier(od);
    });
  });


  unittest.group("obj-schema-AccountShipping", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShipping();
      var od = new api.AccountShipping.fromJson(o.toJson());
      checkAccountShipping(od);
    });
  });


  unittest.group("obj-schema-AccountShippingCarrierRate", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingCarrierRate();
      var od = new api.AccountShippingCarrierRate.fromJson(o.toJson());
      checkAccountShippingCarrierRate(od);
    });
  });


  unittest.group("obj-schema-AccountShippingCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingCondition();
      var od = new api.AccountShippingCondition.fromJson(o.toJson());
      checkAccountShippingCondition(od);
    });
  });


  unittest.group("obj-schema-AccountShippingLocationGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingLocationGroup();
      var od = new api.AccountShippingLocationGroup.fromJson(o.toJson());
      checkAccountShippingLocationGroup(od);
    });
  });


  unittest.group("obj-schema-AccountShippingPostalCodeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingPostalCodeRange();
      var od = new api.AccountShippingPostalCodeRange.fromJson(o.toJson());
      checkAccountShippingPostalCodeRange(od);
    });
  });


  unittest.group("obj-schema-AccountShippingRateTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingRateTable();
      var od = new api.AccountShippingRateTable.fromJson(o.toJson());
      checkAccountShippingRateTable(od);
    });
  });


  unittest.group("obj-schema-AccountShippingRateTableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingRateTableCell();
      var od = new api.AccountShippingRateTableCell.fromJson(o.toJson());
      checkAccountShippingRateTableCell(od);
    });
  });


  unittest.group("obj-schema-AccountShippingShippingService", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingShippingService();
      var od = new api.AccountShippingShippingService.fromJson(o.toJson());
      checkAccountShippingShippingService(od);
    });
  });


  unittest.group("obj-schema-AccountShippingShippingServiceCalculationMethod", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingShippingServiceCalculationMethod();
      var od = new api.AccountShippingShippingServiceCalculationMethod.fromJson(o.toJson());
      checkAccountShippingShippingServiceCalculationMethod(od);
    });
  });


  unittest.group("obj-schema-AccountShippingShippingServiceCostRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountShippingShippingServiceCostRule();
      var od = new api.AccountShippingShippingServiceCostRule.fromJson(o.toJson());
      checkAccountShippingShippingServiceCostRule(od);
    });
  });


  unittest.group("obj-schema-AccountStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatus();
      var od = new api.AccountStatus.fromJson(o.toJson());
      checkAccountStatus(od);
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


  unittest.group("obj-schema-AccountsAuthInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsAuthInfoResponse();
      var od = new api.AccountsAuthInfoResponse.fromJson(o.toJson());
      checkAccountsAuthInfoResponse(od);
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


  unittest.group("obj-schema-AccountshippingCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountshippingCustomBatchRequest();
      var od = new api.AccountshippingCustomBatchRequest.fromJson(o.toJson());
      checkAccountshippingCustomBatchRequest(od);
    });
  });


  unittest.group("obj-schema-AccountshippingCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountshippingCustomBatchRequestEntry();
      var od = new api.AccountshippingCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountshippingCustomBatchRequestEntry(od);
    });
  });


  unittest.group("obj-schema-AccountshippingCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountshippingCustomBatchResponse();
      var od = new api.AccountshippingCustomBatchResponse.fromJson(o.toJson());
      checkAccountshippingCustomBatchResponse(od);
    });
  });


  unittest.group("obj-schema-AccountshippingCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountshippingCustomBatchResponseEntry();
      var od = new api.AccountshippingCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountshippingCustomBatchResponseEntry(od);
    });
  });


  unittest.group("obj-schema-AccountshippingListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountshippingListResponse();
      var od = new api.AccountshippingListResponse.fromJson(o.toJson());
      checkAccountshippingListResponse(od);
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
      var od = new api.AccountstatusesCustomBatchRequestEntry.fromJson(o.toJson());
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
      var od = new api.AccountstatusesCustomBatchResponseEntry.fromJson(o.toJson());
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
      var od = new api.DatafeedstatusesCustomBatchRequestEntry.fromJson(o.toJson());
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
      var od = new api.DatafeedstatusesCustomBatchResponseEntry.fromJson(o.toJson());
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


  unittest.group("obj-schema-LoyaltyPoints", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoyaltyPoints();
      var od = new api.LoyaltyPoints.fromJson(o.toJson());
      checkLoyaltyPoints(od);
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


  unittest.group("obj-schema-ProductInstallment", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductInstallment();
      var od = new api.ProductInstallment.fromJson(o.toJson());
      checkProductInstallment(od);
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
      var od = new api.ProductstatusesCustomBatchRequestEntry.fromJson(o.toJson());
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
      var od = new api.ProductstatusesCustomBatchResponseEntry.fromJson(o.toJson());
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("accounts/authinfo"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountsAuthInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.authinfo().then(unittest.expectAsync(((api.AccountsAuthInfoResponse response) {
        checkAccountsAuthInfoResponse(response);
      })));
    });

    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccountsCustomBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountsCustomBatchRequest.fromJson(json);
        checkAccountsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("accounts/batch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request).then(unittest.expectAsync(((api.AccountsCustomBatchResponse response) {
        checkAccountsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_merchantId, arg_accountId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_accountId).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_merchantId).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AccountsListResponse response) {
        checkAccountsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_merchantId, arg_accountId).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_merchantId, arg_accountId).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

  });


  unittest.group("resource-AccountshippingResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.AccountshippingResourceApi res = new api.ContentApi(mock).accountshipping;
      var arg_request = buildAccountshippingCustomBatchRequest();
      var arg_dryRun = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountshippingCustomBatchRequest.fromJson(json);
        checkAccountshippingCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("accountshipping/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountshippingCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request, dryRun: arg_dryRun).then(unittest.expectAsync(((api.AccountshippingCustomBatchResponse response) {
        checkAccountshippingCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountshippingResourceApi res = new api.ContentApi(mock).accountshipping;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountShipping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_accountId).then(unittest.expectAsync(((api.AccountShipping response) {
        checkAccountShipping(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountshippingResourceApi res = new api.ContentApi(mock).accountshipping;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountshippingListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AccountshippingListResponse response) {
        checkAccountshippingListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AccountshippingResourceApi res = new api.ContentApi(mock).accountshipping;
      var arg_request = buildAccountShipping();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountShipping.fromJson(json);
        checkAccountShipping(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountShipping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_merchantId, arg_accountId, dryRun: arg_dryRun).then(unittest.expectAsync(((api.AccountShipping response) {
        checkAccountShipping(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AccountshippingResourceApi res = new api.ContentApi(mock).accountshipping;
      var arg_request = buildAccountShipping();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_dryRun = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountShipping.fromJson(json);
        checkAccountShipping(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountShipping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_merchantId, arg_accountId, dryRun: arg_dryRun).then(unittest.expectAsync(((api.AccountShipping response) {
        checkAccountShipping(response);
      })));
    });

  });


  unittest.group("resource-AccountstatusesResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res = new api.ContentApi(mock).accountstatuses;
      var arg_request = buildAccountstatusesCustomBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountstatusesCustomBatchRequest.fromJson(json);
        checkAccountstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("accountstatuses/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request).then(unittest.expectAsync(((api.AccountstatusesCustomBatchResponse response) {
        checkAccountstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res = new api.ContentApi(mock).accountstatuses;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_accountId).then(unittest.expectAsync(((api.AccountStatus response) {
        checkAccountStatus(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res = new api.ContentApi(mock).accountstatuses;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AccountstatusesListResponse response) {
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccounttaxCustomBatchRequest.fromJson(json);
        checkAccounttaxCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("accounttax/batch"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccounttaxCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request, dryRun: arg_dryRun).then(unittest.expectAsync(((api.AccounttaxCustomBatchResponse response) {
        checkAccounttaxCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_accountId).then(unittest.expectAsync(((api.AccountTax response) {
        checkAccountTax(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccounttaxListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AccounttaxListResponse response) {
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountTax.fromJson(json);
        checkAccountTax(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_merchantId, arg_accountId, dryRun: arg_dryRun).then(unittest.expectAsync(((api.AccountTax response) {
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccountTax.fromJson(json);
        checkAccountTax(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_merchantId, arg_accountId, dryRun: arg_dryRun).then(unittest.expectAsync(((api.AccountTax response) {
        checkAccountTax(response);
      })));
    });

  });


  unittest.group("resource-DatafeedsResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeedsCustomBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DatafeedsCustomBatchRequest.fromJson(json);
        checkDatafeedsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("datafeeds/batch"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeedsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request).then(unittest.expectAsync(((api.DatafeedsCustomBatchResponse response) {
        checkDatafeedsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_merchantId, arg_datafeedId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_datafeedId).then(unittest.expectAsync(((api.Datafeed response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_merchantId).then(unittest.expectAsync(((api.Datafeed response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeedsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DatafeedsListResponse response) {
        checkDatafeedsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_merchantId, arg_datafeedId).then(unittest.expectAsync(((api.Datafeed response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_merchantId, arg_datafeedId).then(unittest.expectAsync(((api.Datafeed response) {
        checkDatafeed(response);
      })));
    });

  });


  unittest.group("resource-DatafeedstatusesResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res = new api.ContentApi(mock).datafeedstatuses;
      var arg_request = buildDatafeedstatusesCustomBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DatafeedstatusesCustomBatchRequest.fromJson(json);
        checkDatafeedstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("datafeedstatuses/batch"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeedstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request).then(unittest.expectAsync(((api.DatafeedstatusesCustomBatchResponse response) {
        checkDatafeedstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res = new api.ContentApi(mock).datafeedstatuses;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeedStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_datafeedId).then(unittest.expectAsync(((api.DatafeedStatus response) {
        checkDatafeedStatus(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res = new api.ContentApi(mock).datafeedstatuses;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatafeedstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DatafeedstatusesListResponse response) {
        checkDatafeedstatusesListResponse(response);
      })));
    });

  });


  unittest.group("resource-InventoryResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.InventoryResourceApi res = new api.ContentApi(mock).inventory;
      var arg_request = buildInventoryCustomBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InventoryCustomBatchRequest.fromJson(json);
        checkInventoryCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("inventory/batch"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInventoryCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request).then(unittest.expectAsync(((api.InventoryCustomBatchResponse response) {
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InventorySetRequest.fromJson(json);
        checkInventorySetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInventorySetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.set(arg_request, arg_merchantId, arg_storeCode, arg_productId).then(unittest.expectAsync(((api.InventorySetResponse response) {
        checkInventorySetResponse(response);
      })));
    });

  });


  unittest.group("resource-ProductsResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_request = buildProductsCustomBatchRequest();
      var arg_dryRun = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ProductsCustomBatchRequest.fromJson(json);
        checkProductsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("products/batch"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProductsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request, dryRun: arg_dryRun).then(unittest.expectAsync(((api.ProductsCustomBatchResponse response) {
        checkProductsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_dryRun = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_merchantId, arg_productId, dryRun: arg_dryRun).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_productId).then(unittest.expectAsync(((api.Product response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_request = buildProduct();
      var arg_merchantId = "foo";
      var arg_dryRun = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dryRun"].first, unittest.equals("$arg_dryRun"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_merchantId, dryRun: arg_dryRun).then(unittest.expectAsync(((api.Product response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProductsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ProductsListResponse response) {
        checkProductsListResponse(response);
      })));
    });

  });


  unittest.group("resource-ProductstatusesResourceApi", () {
    unittest.test("method--custombatch", () {

      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res = new api.ContentApi(mock).productstatuses;
      var arg_request = buildProductstatusesCustomBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ProductstatusesCustomBatchRequest.fromJson(json);
        checkProductstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("content/v2/"));
        pathOffset += 11;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("productstatuses/batch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProductstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.custombatch(arg_request).then(unittest.expectAsync(((api.ProductstatusesCustomBatchResponse response) {
        checkProductstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res = new api.ContentApi(mock).productstatuses;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProductStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_merchantId, arg_productId).then(unittest.expectAsync(((api.ProductStatus response) {
        checkProductStatus(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res = new api.ContentApi(mock).productstatuses;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProductstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_merchantId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ProductstatusesListResponse response) {
        checkProductstatusesListResponse(response);
      })));
    });

  });


}

