library googleapis.partners.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/partners/v2.dart' as api;

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

core.int buildCounterAdWordsManagerAccountInfo = 0;
buildAdWordsManagerAccountInfo() {
  var o = new api.AdWordsManagerAccountInfo();
  buildCounterAdWordsManagerAccountInfo++;
  if (buildCounterAdWordsManagerAccountInfo < 3) {
    o.customerName = "foo";
    o.id = "foo";
  }
  buildCounterAdWordsManagerAccountInfo--;
  return o;
}

checkAdWordsManagerAccountInfo(api.AdWordsManagerAccountInfo o) {
  buildCounterAdWordsManagerAccountInfo++;
  if (buildCounterAdWordsManagerAccountInfo < 3) {
    unittest.expect(o.customerName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAdWordsManagerAccountInfo--;
}

core.int buildCounterAnalytics = 0;
buildAnalytics() {
  var o = new api.Analytics();
  buildCounterAnalytics++;
  if (buildCounterAnalytics < 3) {
    o.contacts = buildAnalyticsDataPoint();
    o.eventDate = buildDate();
    o.profileViews = buildAnalyticsDataPoint();
    o.searchViews = buildAnalyticsDataPoint();
  }
  buildCounterAnalytics--;
  return o;
}

checkAnalytics(api.Analytics o) {
  buildCounterAnalytics++;
  if (buildCounterAnalytics < 3) {
    checkAnalyticsDataPoint(o.contacts);
    checkDate(o.eventDate);
    checkAnalyticsDataPoint(o.profileViews);
    checkAnalyticsDataPoint(o.searchViews);
  }
  buildCounterAnalytics--;
}

buildUnnamed1719() {
  var o = new core.List<api.LatLng>();
  o.add(buildLatLng());
  o.add(buildLatLng());
  return o;
}

checkUnnamed1719(core.List<api.LatLng> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLng(o[0]);
  checkLatLng(o[1]);
}

core.int buildCounterAnalyticsDataPoint = 0;
buildAnalyticsDataPoint() {
  var o = new api.AnalyticsDataPoint();
  buildCounterAnalyticsDataPoint++;
  if (buildCounterAnalyticsDataPoint < 3) {
    o.eventCount = 42;
    o.eventLocations = buildUnnamed1719();
  }
  buildCounterAnalyticsDataPoint--;
  return o;
}

checkAnalyticsDataPoint(api.AnalyticsDataPoint o) {
  buildCounterAnalyticsDataPoint++;
  if (buildCounterAnalyticsDataPoint < 3) {
    unittest.expect(o.eventCount, unittest.equals(42));
    checkUnnamed1719(o.eventLocations);
  }
  buildCounterAnalyticsDataPoint--;
}

core.int buildCounterAnalyticsSummary = 0;
buildAnalyticsSummary() {
  var o = new api.AnalyticsSummary();
  buildCounterAnalyticsSummary++;
  if (buildCounterAnalyticsSummary < 3) {
    o.contactsCount = 42;
    o.profileViewsCount = 42;
    o.searchViewsCount = 42;
  }
  buildCounterAnalyticsSummary--;
  return o;
}

checkAnalyticsSummary(api.AnalyticsSummary o) {
  buildCounterAnalyticsSummary++;
  if (buildCounterAnalyticsSummary < 3) {
    unittest.expect(o.contactsCount, unittest.equals(42));
    unittest.expect(o.profileViewsCount, unittest.equals(42));
    unittest.expect(o.searchViewsCount, unittest.equals(42));
  }
  buildCounterAnalyticsSummary--;
}

buildUnnamed1720() {
  var o = new core.List<api.CountryOfferInfo>();
  o.add(buildCountryOfferInfo());
  o.add(buildCountryOfferInfo());
  return o;
}

checkUnnamed1720(core.List<api.CountryOfferInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCountryOfferInfo(o[0]);
  checkCountryOfferInfo(o[1]);
}

buildUnnamed1721() {
  var o = new core.List<api.OfferCustomer>();
  o.add(buildOfferCustomer());
  o.add(buildOfferCustomer());
  return o;
}

checkUnnamed1721(core.List<api.OfferCustomer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferCustomer(o[0]);
  checkOfferCustomer(o[1]);
}

core.int buildCounterAvailableOffer = 0;
buildAvailableOffer() {
  var o = new api.AvailableOffer();
  buildCounterAvailableOffer++;
  if (buildCounterAvailableOffer < 3) {
    o.available = 42;
    o.countryOfferInfos = buildUnnamed1720();
    o.description = "foo";
    o.id = "foo";
    o.maxAccountAge = 42;
    o.name = "foo";
    o.offerLevel = "foo";
    o.offerType = "foo";
    o.qualifiedCustomer = buildUnnamed1721();
    o.qualifiedCustomersComplete = true;
    o.showSpecialOfferCopy = true;
    o.terms = "foo";
  }
  buildCounterAvailableOffer--;
  return o;
}

checkAvailableOffer(api.AvailableOffer o) {
  buildCounterAvailableOffer++;
  if (buildCounterAvailableOffer < 3) {
    unittest.expect(o.available, unittest.equals(42));
    checkUnnamed1720(o.countryOfferInfos);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.maxAccountAge, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.offerLevel, unittest.equals('foo'));
    unittest.expect(o.offerType, unittest.equals('foo'));
    checkUnnamed1721(o.qualifiedCustomer);
    unittest.expect(o.qualifiedCustomersComplete, unittest.isTrue);
    unittest.expect(o.showSpecialOfferCopy, unittest.isTrue);
    unittest.expect(o.terms, unittest.equals('foo'));
  }
  buildCounterAvailableOffer--;
}

core.int buildCounterCertification = 0;
buildCertification() {
  var o = new api.Certification();
  buildCounterCertification++;
  if (buildCounterCertification < 3) {
    o.achieved = true;
    o.certificationType = "foo";
    o.expiration = "foo";
    o.lastAchieved = "foo";
    o.warning = true;
  }
  buildCounterCertification--;
  return o;
}

checkCertification(api.Certification o) {
  buildCounterCertification++;
  if (buildCounterCertification < 3) {
    unittest.expect(o.achieved, unittest.isTrue);
    unittest.expect(o.certificationType, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.lastAchieved, unittest.equals('foo'));
    unittest.expect(o.warning, unittest.isTrue);
  }
  buildCounterCertification--;
}

core.int buildCounterCertificationExamStatus = 0;
buildCertificationExamStatus() {
  var o = new api.CertificationExamStatus();
  buildCounterCertificationExamStatus++;
  if (buildCounterCertificationExamStatus < 3) {
    o.numberUsersPass = 42;
    o.type = "foo";
  }
  buildCounterCertificationExamStatus--;
  return o;
}

checkCertificationExamStatus(api.CertificationExamStatus o) {
  buildCounterCertificationExamStatus++;
  if (buildCounterCertificationExamStatus < 3) {
    unittest.expect(o.numberUsersPass, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCertificationExamStatus--;
}

buildUnnamed1722() {
  var o = new core.List<api.CertificationExamStatus>();
  o.add(buildCertificationExamStatus());
  o.add(buildCertificationExamStatus());
  return o;
}

checkUnnamed1722(core.List<api.CertificationExamStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificationExamStatus(o[0]);
  checkCertificationExamStatus(o[1]);
}

core.int buildCounterCertificationStatus = 0;
buildCertificationStatus() {
  var o = new api.CertificationStatus();
  buildCounterCertificationStatus++;
  if (buildCounterCertificationStatus < 3) {
    o.examStatuses = buildUnnamed1722();
    o.isCertified = true;
    o.type = "foo";
    o.userCount = 42;
  }
  buildCounterCertificationStatus--;
  return o;
}

checkCertificationStatus(api.CertificationStatus o) {
  buildCounterCertificationStatus++;
  if (buildCounterCertificationStatus < 3) {
    checkUnnamed1722(o.examStatuses);
    unittest.expect(o.isCertified, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userCount, unittest.equals(42));
  }
  buildCounterCertificationStatus--;
}

buildUnnamed1723() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1723(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1724() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1724(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1725() {
  var o = new core.List<api.CertificationStatus>();
  o.add(buildCertificationStatus());
  o.add(buildCertificationStatus());
  return o;
}

checkUnnamed1725(core.List<api.CertificationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificationStatus(o[0]);
  checkCertificationStatus(o[1]);
}

buildUnnamed1726() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1726(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1727() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1727(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1728() {
  var o = new core.List<api.LocalizedCompanyInfo>();
  o.add(buildLocalizedCompanyInfo());
  o.add(buildLocalizedCompanyInfo());
  return o;
}

checkUnnamed1728(core.List<api.LocalizedCompanyInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedCompanyInfo(o[0]);
  checkLocalizedCompanyInfo(o[1]);
}

buildUnnamed1729() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed1729(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

buildUnnamed1730() {
  var o = new core.List<api.Rank>();
  o.add(buildRank());
  o.add(buildRank());
  return o;
}

checkUnnamed1730(core.List<api.Rank> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRank(o[0]);
  checkRank(o[1]);
}

buildUnnamed1731() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1731(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1732() {
  var o = new core.List<api.SpecializationStatus>();
  o.add(buildSpecializationStatus());
  o.add(buildSpecializationStatus());
  return o;
}

checkUnnamed1732(core.List<api.SpecializationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpecializationStatus(o[0]);
  checkSpecializationStatus(o[1]);
}

core.int buildCounterCompany = 0;
buildCompany() {
  var o = new api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.additionalWebsites = buildUnnamed1723();
    o.autoApprovalEmailDomains = buildUnnamed1724();
    o.badgeTier = "foo";
    o.certificationStatuses = buildUnnamed1725();
    o.companyTypes = buildUnnamed1726();
    o.convertedMinMonthlyBudget = buildMoney();
    o.id = "foo";
    o.industries = buildUnnamed1727();
    o.localizedInfos = buildUnnamed1728();
    o.locations = buildUnnamed1729();
    o.name = "foo";
    o.originalMinMonthlyBudget = buildMoney();
    o.primaryAdwordsManagerAccountId = "foo";
    o.primaryLanguageCode = "foo";
    o.primaryLocation = buildLocation();
    o.profileStatus = "foo";
    o.publicProfile = buildPublicProfile();
    o.ranks = buildUnnamed1730();
    o.services = buildUnnamed1731();
    o.specializationStatus = buildUnnamed1732();
    o.websiteUrl = "foo";
  }
  buildCounterCompany--;
  return o;
}

checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    checkUnnamed1723(o.additionalWebsites);
    checkUnnamed1724(o.autoApprovalEmailDomains);
    unittest.expect(o.badgeTier, unittest.equals('foo'));
    checkUnnamed1725(o.certificationStatuses);
    checkUnnamed1726(o.companyTypes);
    checkMoney(o.convertedMinMonthlyBudget);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1727(o.industries);
    checkUnnamed1728(o.localizedInfos);
    checkUnnamed1729(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    checkMoney(o.originalMinMonthlyBudget);
    unittest.expect(o.primaryAdwordsManagerAccountId, unittest.equals('foo'));
    unittest.expect(o.primaryLanguageCode, unittest.equals('foo'));
    checkLocation(o.primaryLocation);
    unittest.expect(o.profileStatus, unittest.equals('foo'));
    checkPublicProfile(o.publicProfile);
    checkUnnamed1730(o.ranks);
    checkUnnamed1731(o.services);
    checkUnnamed1732(o.specializationStatus);
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
  }
  buildCounterCompany--;
}

buildUnnamed1733() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1733(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1734() {
  var o = new core.List<api.SpecializationStatus>();
  o.add(buildSpecializationStatus());
  o.add(buildSpecializationStatus());
  return o;
}

checkUnnamed1734(core.List<api.SpecializationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpecializationStatus(o[0]);
  checkSpecializationStatus(o[1]);
}

core.int buildCounterCompanyRelation = 0;
buildCompanyRelation() {
  var o = new api.CompanyRelation();
  buildCounterCompanyRelation++;
  if (buildCounterCompanyRelation < 3) {
    o.address = "foo";
    o.badgeTier = "foo";
    o.companyAdmin = true;
    o.companyId = "foo";
    o.creationTime = "foo";
    o.isPending = true;
    o.logoUrl = "foo";
    o.managerAccount = "foo";
    o.name = "foo";
    o.phoneNumber = "foo";
    o.resolvedTimestamp = "foo";
    o.segment = buildUnnamed1733();
    o.specializationStatus = buildUnnamed1734();
    o.state = "foo";
    o.website = "foo";
  }
  buildCounterCompanyRelation--;
  return o;
}

checkCompanyRelation(api.CompanyRelation o) {
  buildCounterCompanyRelation++;
  if (buildCounterCompanyRelation < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.badgeTier, unittest.equals('foo'));
    unittest.expect(o.companyAdmin, unittest.isTrue);
    unittest.expect(o.companyId, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.isPending, unittest.isTrue);
    unittest.expect(o.logoUrl, unittest.equals('foo'));
    unittest.expect(o.managerAccount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.resolvedTimestamp, unittest.equals('foo'));
    checkUnnamed1733(o.segment);
    checkUnnamed1734(o.specializationStatus);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.website, unittest.equals('foo'));
  }
  buildCounterCompanyRelation--;
}

core.int buildCounterCountryOfferInfo = 0;
buildCountryOfferInfo() {
  var o = new api.CountryOfferInfo();
  buildCounterCountryOfferInfo++;
  if (buildCounterCountryOfferInfo < 3) {
    o.getYAmount = "foo";
    o.offerCountryCode = "foo";
    o.offerType = "foo";
    o.spendXAmount = "foo";
  }
  buildCounterCountryOfferInfo--;
  return o;
}

checkCountryOfferInfo(api.CountryOfferInfo o) {
  buildCounterCountryOfferInfo++;
  if (buildCounterCountryOfferInfo < 3) {
    unittest.expect(o.getYAmount, unittest.equals('foo'));
    unittest.expect(o.offerCountryCode, unittest.equals('foo'));
    unittest.expect(o.offerType, unittest.equals('foo'));
    unittest.expect(o.spendXAmount, unittest.equals('foo'));
  }
  buildCounterCountryOfferInfo--;
}

core.int buildCounterCreateLeadRequest = 0;
buildCreateLeadRequest() {
  var o = new api.CreateLeadRequest();
  buildCounterCreateLeadRequest++;
  if (buildCounterCreateLeadRequest < 3) {
    o.lead = buildLead();
    o.recaptchaChallenge = buildRecaptchaChallenge();
    o.requestMetadata = buildRequestMetadata();
  }
  buildCounterCreateLeadRequest--;
  return o;
}

checkCreateLeadRequest(api.CreateLeadRequest o) {
  buildCounterCreateLeadRequest++;
  if (buildCounterCreateLeadRequest < 3) {
    checkLead(o.lead);
    checkRecaptchaChallenge(o.recaptchaChallenge);
    checkRequestMetadata(o.requestMetadata);
  }
  buildCounterCreateLeadRequest--;
}

core.int buildCounterCreateLeadResponse = 0;
buildCreateLeadResponse() {
  var o = new api.CreateLeadResponse();
  buildCounterCreateLeadResponse++;
  if (buildCounterCreateLeadResponse < 3) {
    o.lead = buildLead();
    o.recaptchaStatus = "foo";
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterCreateLeadResponse--;
  return o;
}

checkCreateLeadResponse(api.CreateLeadResponse o) {
  buildCounterCreateLeadResponse++;
  if (buildCounterCreateLeadResponse < 3) {
    checkLead(o.lead);
    unittest.expect(o.recaptchaStatus, unittest.equals('foo'));
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterCreateLeadResponse--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDebugInfo = 0;
buildDebugInfo() {
  var o = new api.DebugInfo();
  buildCounterDebugInfo++;
  if (buildCounterDebugInfo < 3) {
    o.serverInfo = "foo";
    o.serverTraceInfo = "foo";
    o.serviceUrl = "foo";
  }
  buildCounterDebugInfo--;
  return o;
}

checkDebugInfo(api.DebugInfo o) {
  buildCounterDebugInfo++;
  if (buildCounterDebugInfo < 3) {
    unittest.expect(o.serverInfo, unittest.equals('foo'));
    unittest.expect(o.serverTraceInfo, unittest.equals('foo'));
    unittest.expect(o.serviceUrl, unittest.equals('foo'));
  }
  buildCounterDebugInfo--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

buildUnnamed1735() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1735(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEventData = 0;
buildEventData() {
  var o = new api.EventData();
  buildCounterEventData++;
  if (buildCounterEventData < 3) {
    o.key = "foo";
    o.values = buildUnnamed1735();
  }
  buildCounterEventData--;
  return o;
}

checkEventData(api.EventData o) {
  buildCounterEventData++;
  if (buildCounterEventData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed1735(o.values);
  }
  buildCounterEventData--;
}

core.int buildCounterExamStatus = 0;
buildExamStatus() {
  var o = new api.ExamStatus();
  buildCounterExamStatus++;
  if (buildCounterExamStatus < 3) {
    o.examType = "foo";
    o.expiration = "foo";
    o.lastPassed = "foo";
    o.passed = true;
    o.taken = "foo";
    o.warning = true;
  }
  buildCounterExamStatus--;
  return o;
}

checkExamStatus(api.ExamStatus o) {
  buildCounterExamStatus++;
  if (buildCounterExamStatus < 3) {
    unittest.expect(o.examType, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.lastPassed, unittest.equals('foo'));
    unittest.expect(o.passed, unittest.isTrue);
    unittest.expect(o.taken, unittest.equals('foo'));
    unittest.expect(o.warning, unittest.isTrue);
  }
  buildCounterExamStatus--;
}

core.int buildCounterExamToken = 0;
buildExamToken() {
  var o = new api.ExamToken();
  buildCounterExamToken++;
  if (buildCounterExamToken < 3) {
    o.examId = "foo";
    o.examType = "foo";
    o.token = "foo";
  }
  buildCounterExamToken--;
  return o;
}

checkExamToken(api.ExamToken o) {
  buildCounterExamToken++;
  if (buildCounterExamToken < 3) {
    unittest.expect(o.examId, unittest.equals('foo'));
    unittest.expect(o.examType, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterExamToken--;
}

core.int buildCounterGetCompanyResponse = 0;
buildGetCompanyResponse() {
  var o = new api.GetCompanyResponse();
  buildCounterGetCompanyResponse++;
  if (buildCounterGetCompanyResponse < 3) {
    o.company = buildCompany();
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterGetCompanyResponse--;
  return o;
}

checkGetCompanyResponse(api.GetCompanyResponse o) {
  buildCounterGetCompanyResponse++;
  if (buildCounterGetCompanyResponse < 3) {
    checkCompany(o.company);
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterGetCompanyResponse--;
}

core.int buildCounterGetPartnersStatusResponse = 0;
buildGetPartnersStatusResponse() {
  var o = new api.GetPartnersStatusResponse();
  buildCounterGetPartnersStatusResponse++;
  if (buildCounterGetPartnersStatusResponse < 3) {
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterGetPartnersStatusResponse--;
  return o;
}

checkGetPartnersStatusResponse(api.GetPartnersStatusResponse o) {
  buildCounterGetPartnersStatusResponse++;
  if (buildCounterGetPartnersStatusResponse < 3) {
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterGetPartnersStatusResponse--;
}

core.int buildCounterHistoricalOffer = 0;
buildHistoricalOffer() {
  var o = new api.HistoricalOffer();
  buildCounterHistoricalOffer++;
  if (buildCounterHistoricalOffer < 3) {
    o.adwordsUrl = "foo";
    o.clientEmail = "foo";
    o.clientId = "foo";
    o.clientName = "foo";
    o.creationTime = "foo";
    o.expirationTime = "foo";
    o.lastModifiedTime = "foo";
    o.offerCode = "foo";
    o.offerCountryCode = "foo";
    o.offerType = "foo";
    o.senderName = "foo";
    o.status = "foo";
  }
  buildCounterHistoricalOffer--;
  return o;
}

checkHistoricalOffer(api.HistoricalOffer o) {
  buildCounterHistoricalOffer++;
  if (buildCounterHistoricalOffer < 3) {
    unittest.expect(o.adwordsUrl, unittest.equals('foo'));
    unittest.expect(o.clientEmail, unittest.equals('foo'));
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.clientName, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.expirationTime, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.offerCode, unittest.equals('foo'));
    unittest.expect(o.offerCountryCode, unittest.equals('foo'));
    unittest.expect(o.offerType, unittest.equals('foo'));
    unittest.expect(o.senderName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterHistoricalOffer--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

buildUnnamed1736() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1736(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLead = 0;
buildLead() {
  var o = new api.Lead();
  buildCounterLead++;
  if (buildCounterLead < 3) {
    o.adwordsCustomerId = "foo";
    o.comments = "foo";
    o.createTime = "foo";
    o.email = "foo";
    o.familyName = "foo";
    o.givenName = "foo";
    o.gpsMotivations = buildUnnamed1736();
    o.id = "foo";
    o.languageCode = "foo";
    o.marketingOptIn = true;
    o.minMonthlyBudget = buildMoney();
    o.phoneNumber = "foo";
    o.state = "foo";
    o.type = "foo";
    o.websiteUrl = "foo";
  }
  buildCounterLead--;
  return o;
}

checkLead(api.Lead o) {
  buildCounterLead++;
  if (buildCounterLead < 3) {
    unittest.expect(o.adwordsCustomerId, unittest.equals('foo'));
    unittest.expect(o.comments, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    checkUnnamed1736(o.gpsMotivations);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.marketingOptIn, unittest.isTrue);
    checkMoney(o.minMonthlyBudget);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
  }
  buildCounterLead--;
}

buildUnnamed1737() {
  var o = new core.List<api.Analytics>();
  o.add(buildAnalytics());
  o.add(buildAnalytics());
  return o;
}

checkUnnamed1737(core.List<api.Analytics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnalytics(o[0]);
  checkAnalytics(o[1]);
}

core.int buildCounterListAnalyticsResponse = 0;
buildListAnalyticsResponse() {
  var o = new api.ListAnalyticsResponse();
  buildCounterListAnalyticsResponse++;
  if (buildCounterListAnalyticsResponse < 3) {
    o.analytics = buildUnnamed1737();
    o.analyticsSummary = buildAnalyticsSummary();
    o.nextPageToken = "foo";
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterListAnalyticsResponse--;
  return o;
}

checkListAnalyticsResponse(api.ListAnalyticsResponse o) {
  buildCounterListAnalyticsResponse++;
  if (buildCounterListAnalyticsResponse < 3) {
    checkUnnamed1737(o.analytics);
    checkAnalyticsSummary(o.analyticsSummary);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterListAnalyticsResponse--;
}

buildUnnamed1738() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed1738(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCompaniesResponse = 0;
buildListCompaniesResponse() {
  var o = new api.ListCompaniesResponse();
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    o.companies = buildUnnamed1738();
    o.nextPageToken = "foo";
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterListCompaniesResponse--;
  return o;
}

checkListCompaniesResponse(api.ListCompaniesResponse o) {
  buildCounterListCompaniesResponse++;
  if (buildCounterListCompaniesResponse < 3) {
    checkUnnamed1738(o.companies);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterListCompaniesResponse--;
}

buildUnnamed1739() {
  var o = new core.List<api.Lead>();
  o.add(buildLead());
  o.add(buildLead());
  return o;
}

checkUnnamed1739(core.List<api.Lead> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLead(o[0]);
  checkLead(o[1]);
}

core.int buildCounterListLeadsResponse = 0;
buildListLeadsResponse() {
  var o = new api.ListLeadsResponse();
  buildCounterListLeadsResponse++;
  if (buildCounterListLeadsResponse < 3) {
    o.leads = buildUnnamed1739();
    o.nextPageToken = "foo";
    o.responseMetadata = buildResponseMetadata();
    o.totalSize = 42;
  }
  buildCounterListLeadsResponse--;
  return o;
}

checkListLeadsResponse(api.ListLeadsResponse o) {
  buildCounterListLeadsResponse++;
  if (buildCounterListLeadsResponse < 3) {
    checkUnnamed1739(o.leads);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkResponseMetadata(o.responseMetadata);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListLeadsResponse--;
}

buildUnnamed1740() {
  var o = new core.List<api.HistoricalOffer>();
  o.add(buildHistoricalOffer());
  o.add(buildHistoricalOffer());
  return o;
}

checkUnnamed1740(core.List<api.HistoricalOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoricalOffer(o[0]);
  checkHistoricalOffer(o[1]);
}

core.int buildCounterListOffersHistoryResponse = 0;
buildListOffersHistoryResponse() {
  var o = new api.ListOffersHistoryResponse();
  buildCounterListOffersHistoryResponse++;
  if (buildCounterListOffersHistoryResponse < 3) {
    o.canShowEntireCompany = true;
    o.nextPageToken = "foo";
    o.offers = buildUnnamed1740();
    o.responseMetadata = buildResponseMetadata();
    o.showingEntireCompany = true;
    o.totalResults = 42;
  }
  buildCounterListOffersHistoryResponse--;
  return o;
}

checkListOffersHistoryResponse(api.ListOffersHistoryResponse o) {
  buildCounterListOffersHistoryResponse++;
  if (buildCounterListOffersHistoryResponse < 3) {
    unittest.expect(o.canShowEntireCompany, unittest.isTrue);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1740(o.offers);
    checkResponseMetadata(o.responseMetadata);
    unittest.expect(o.showingEntireCompany, unittest.isTrue);
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterListOffersHistoryResponse--;
}

buildUnnamed1741() {
  var o = new core.List<api.AvailableOffer>();
  o.add(buildAvailableOffer());
  o.add(buildAvailableOffer());
  return o;
}

checkUnnamed1741(core.List<api.AvailableOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAvailableOffer(o[0]);
  checkAvailableOffer(o[1]);
}

core.int buildCounterListOffersResponse = 0;
buildListOffersResponse() {
  var o = new api.ListOffersResponse();
  buildCounterListOffersResponse++;
  if (buildCounterListOffersResponse < 3) {
    o.availableOffers = buildUnnamed1741();
    o.noOfferReason = "foo";
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterListOffersResponse--;
  return o;
}

checkListOffersResponse(api.ListOffersResponse o) {
  buildCounterListOffersResponse++;
  if (buildCounterListOffersResponse < 3) {
    checkUnnamed1741(o.availableOffers);
    unittest.expect(o.noOfferReason, unittest.equals('foo'));
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterListOffersResponse--;
}

buildUnnamed1742() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1742(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListUserStatesResponse = 0;
buildListUserStatesResponse() {
  var o = new api.ListUserStatesResponse();
  buildCounterListUserStatesResponse++;
  if (buildCounterListUserStatesResponse < 3) {
    o.responseMetadata = buildResponseMetadata();
    o.userStates = buildUnnamed1742();
  }
  buildCounterListUserStatesResponse--;
  return o;
}

checkListUserStatesResponse(api.ListUserStatesResponse o) {
  buildCounterListUserStatesResponse++;
  if (buildCounterListUserStatesResponse < 3) {
    checkResponseMetadata(o.responseMetadata);
    checkUnnamed1742(o.userStates);
  }
  buildCounterListUserStatesResponse--;
}

buildUnnamed1743() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1743(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocalizedCompanyInfo = 0;
buildLocalizedCompanyInfo() {
  var o = new api.LocalizedCompanyInfo();
  buildCounterLocalizedCompanyInfo++;
  if (buildCounterLocalizedCompanyInfo < 3) {
    o.countryCodes = buildUnnamed1743();
    o.displayName = "foo";
    o.languageCode = "foo";
    o.overview = "foo";
  }
  buildCounterLocalizedCompanyInfo--;
  return o;
}

checkLocalizedCompanyInfo(api.LocalizedCompanyInfo o) {
  buildCounterLocalizedCompanyInfo++;
  if (buildCounterLocalizedCompanyInfo < 3) {
    checkUnnamed1743(o.countryCodes);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
  }
  buildCounterLocalizedCompanyInfo--;
}

buildUnnamed1744() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1744(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.address = "foo";
    o.addressLine = buildUnnamed1744();
    o.administrativeArea = "foo";
    o.dependentLocality = "foo";
    o.languageCode = "foo";
    o.latLng = buildLatLng();
    o.locality = "foo";
    o.postalCode = "foo";
    o.regionCode = "foo";
    o.sortingCode = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    checkUnnamed1744(o.addressLine);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.dependentLocality, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkLatLng(o.latLng);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed1745() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1745(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLogMessageRequest = 0;
buildLogMessageRequest() {
  var o = new api.LogMessageRequest();
  buildCounterLogMessageRequest++;
  if (buildCounterLogMessageRequest < 3) {
    o.clientInfo = buildUnnamed1745();
    o.details = "foo";
    o.level = "foo";
    o.requestMetadata = buildRequestMetadata();
  }
  buildCounterLogMessageRequest--;
  return o;
}

checkLogMessageRequest(api.LogMessageRequest o) {
  buildCounterLogMessageRequest++;
  if (buildCounterLogMessageRequest < 3) {
    checkUnnamed1745(o.clientInfo);
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals('foo'));
    checkRequestMetadata(o.requestMetadata);
  }
  buildCounterLogMessageRequest--;
}

core.int buildCounterLogMessageResponse = 0;
buildLogMessageResponse() {
  var o = new api.LogMessageResponse();
  buildCounterLogMessageResponse++;
  if (buildCounterLogMessageResponse < 3) {
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterLogMessageResponse--;
  return o;
}

checkLogMessageResponse(api.LogMessageResponse o) {
  buildCounterLogMessageResponse++;
  if (buildCounterLogMessageResponse < 3) {
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterLogMessageResponse--;
}

buildUnnamed1746() {
  var o = new core.List<api.EventData>();
  o.add(buildEventData());
  o.add(buildEventData());
  return o;
}

checkUnnamed1746(core.List<api.EventData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventData(o[0]);
  checkEventData(o[1]);
}

core.int buildCounterLogUserEventRequest = 0;
buildLogUserEventRequest() {
  var o = new api.LogUserEventRequest();
  buildCounterLogUserEventRequest++;
  if (buildCounterLogUserEventRequest < 3) {
    o.eventAction = "foo";
    o.eventCategory = "foo";
    o.eventDatas = buildUnnamed1746();
    o.eventScope = "foo";
    o.lead = buildLead();
    o.requestMetadata = buildRequestMetadata();
    o.url = "foo";
  }
  buildCounterLogUserEventRequest--;
  return o;
}

checkLogUserEventRequest(api.LogUserEventRequest o) {
  buildCounterLogUserEventRequest++;
  if (buildCounterLogUserEventRequest < 3) {
    unittest.expect(o.eventAction, unittest.equals('foo'));
    unittest.expect(o.eventCategory, unittest.equals('foo'));
    checkUnnamed1746(o.eventDatas);
    unittest.expect(o.eventScope, unittest.equals('foo'));
    checkLead(o.lead);
    checkRequestMetadata(o.requestMetadata);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLogUserEventRequest--;
}

core.int buildCounterLogUserEventResponse = 0;
buildLogUserEventResponse() {
  var o = new api.LogUserEventResponse();
  buildCounterLogUserEventResponse++;
  if (buildCounterLogUserEventResponse < 3) {
    o.responseMetadata = buildResponseMetadata();
  }
  buildCounterLogUserEventResponse--;
  return o;
}

checkLogUserEventResponse(api.LogUserEventResponse o) {
  buildCounterLogUserEventResponse++;
  if (buildCounterLogUserEventResponse < 3) {
    checkResponseMetadata(o.responseMetadata);
  }
  buildCounterLogUserEventResponse--;
}

core.int buildCounterMoney = 0;
buildMoney() {
  var o = new api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterMoney--;
  return o;
}

checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.int buildCounterOfferCustomer = 0;
buildOfferCustomer() {
  var o = new api.OfferCustomer();
  buildCounterOfferCustomer++;
  if (buildCounterOfferCustomer < 3) {
    o.adwordsUrl = "foo";
    o.countryCode = "foo";
    o.creationTime = "foo";
    o.eligibilityDaysLeft = 42;
    o.externalCid = "foo";
    o.getYAmount = "foo";
    o.name = "foo";
    o.offerType = "foo";
    o.spendXAmount = "foo";
  }
  buildCounterOfferCustomer--;
  return o;
}

checkOfferCustomer(api.OfferCustomer o) {
  buildCounterOfferCustomer++;
  if (buildCounterOfferCustomer < 3) {
    unittest.expect(o.adwordsUrl, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.eligibilityDaysLeft, unittest.equals(42));
    unittest.expect(o.externalCid, unittest.equals('foo'));
    unittest.expect(o.getYAmount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.offerType, unittest.equals('foo'));
    unittest.expect(o.spendXAmount, unittest.equals('foo'));
  }
  buildCounterOfferCustomer--;
}

core.int buildCounterOptIns = 0;
buildOptIns() {
  var o = new api.OptIns();
  buildCounterOptIns++;
  if (buildCounterOptIns < 3) {
    o.marketComm = true;
    o.performanceSuggestions = true;
    o.phoneContact = true;
    o.physicalMail = true;
    o.specialOffers = true;
  }
  buildCounterOptIns--;
  return o;
}

checkOptIns(api.OptIns o) {
  buildCounterOptIns++;
  if (buildCounterOptIns < 3) {
    unittest.expect(o.marketComm, unittest.isTrue);
    unittest.expect(o.performanceSuggestions, unittest.isTrue);
    unittest.expect(o.phoneContact, unittest.isTrue);
    unittest.expect(o.physicalMail, unittest.isTrue);
    unittest.expect(o.specialOffers, unittest.isTrue);
  }
  buildCounterOptIns--;
}

core.int buildCounterPublicProfile = 0;
buildPublicProfile() {
  var o = new api.PublicProfile();
  buildCounterPublicProfile++;
  if (buildCounterPublicProfile < 3) {
    o.displayImageUrl = "foo";
    o.displayName = "foo";
    o.id = "foo";
    o.profileImage = "foo";
    o.url = "foo";
  }
  buildCounterPublicProfile--;
  return o;
}

checkPublicProfile(api.PublicProfile o) {
  buildCounterPublicProfile++;
  if (buildCounterPublicProfile < 3) {
    unittest.expect(o.displayImageUrl, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.profileImage, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPublicProfile--;
}

core.int buildCounterRank = 0;
buildRank() {
  var o = new api.Rank();
  buildCounterRank++;
  if (buildCounterRank < 3) {
    o.type = "foo";
    o.value = 42.0;
  }
  buildCounterRank--;
  return o;
}

checkRank(api.Rank o) {
  buildCounterRank++;
  if (buildCounterRank < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterRank--;
}

core.int buildCounterRecaptchaChallenge = 0;
buildRecaptchaChallenge() {
  var o = new api.RecaptchaChallenge();
  buildCounterRecaptchaChallenge++;
  if (buildCounterRecaptchaChallenge < 3) {
    o.id = "foo";
    o.response = "foo";
  }
  buildCounterRecaptchaChallenge--;
  return o;
}

checkRecaptchaChallenge(api.RecaptchaChallenge o) {
  buildCounterRecaptchaChallenge++;
  if (buildCounterRecaptchaChallenge < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.response, unittest.equals('foo'));
  }
  buildCounterRecaptchaChallenge--;
}

buildUnnamed1747() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1747(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRequestMetadata = 0;
buildRequestMetadata() {
  var o = new api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.experimentIds = buildUnnamed1747();
    o.locale = "foo";
    o.partnersSessionId = "foo";
    o.trafficSource = buildTrafficSource();
    o.userOverrides = buildUserOverrides();
  }
  buildCounterRequestMetadata--;
  return o;
}

checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    checkUnnamed1747(o.experimentIds);
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.partnersSessionId, unittest.equals('foo'));
    checkTrafficSource(o.trafficSource);
    checkUserOverrides(o.userOverrides);
  }
  buildCounterRequestMetadata--;
}

core.int buildCounterResponseMetadata = 0;
buildResponseMetadata() {
  var o = new api.ResponseMetadata();
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    o.debugInfo = buildDebugInfo();
  }
  buildCounterResponseMetadata--;
  return o;
}

checkResponseMetadata(api.ResponseMetadata o) {
  buildCounterResponseMetadata++;
  if (buildCounterResponseMetadata < 3) {
    checkDebugInfo(o.debugInfo);
  }
  buildCounterResponseMetadata--;
}

core.int buildCounterSpecializationStatus = 0;
buildSpecializationStatus() {
  var o = new api.SpecializationStatus();
  buildCounterSpecializationStatus++;
  if (buildCounterSpecializationStatus < 3) {
    o.badgeSpecialization = "foo";
    o.badgeSpecializationState = "foo";
  }
  buildCounterSpecializationStatus--;
  return o;
}

checkSpecializationStatus(api.SpecializationStatus o) {
  buildCounterSpecializationStatus++;
  if (buildCounterSpecializationStatus < 3) {
    unittest.expect(o.badgeSpecialization, unittest.equals('foo'));
    unittest.expect(o.badgeSpecializationState, unittest.equals('foo'));
  }
  buildCounterSpecializationStatus--;
}

core.int buildCounterTrafficSource = 0;
buildTrafficSource() {
  var o = new api.TrafficSource();
  buildCounterTrafficSource++;
  if (buildCounterTrafficSource < 3) {
    o.trafficSourceId = "foo";
    o.trafficSubId = "foo";
  }
  buildCounterTrafficSource--;
  return o;
}

checkTrafficSource(api.TrafficSource o) {
  buildCounterTrafficSource++;
  if (buildCounterTrafficSource < 3) {
    unittest.expect(o.trafficSourceId, unittest.equals('foo'));
    unittest.expect(o.trafficSubId, unittest.equals('foo'));
  }
  buildCounterTrafficSource--;
}

buildUnnamed1748() {
  var o = new core.List<api.AdWordsManagerAccountInfo>();
  o.add(buildAdWordsManagerAccountInfo());
  o.add(buildAdWordsManagerAccountInfo());
  return o;
}

checkUnnamed1748(core.List<api.AdWordsManagerAccountInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdWordsManagerAccountInfo(o[0]);
  checkAdWordsManagerAccountInfo(o[1]);
}

buildUnnamed1749() {
  var o = new core.List<api.Certification>();
  o.add(buildCertification());
  o.add(buildCertification());
  return o;
}

checkUnnamed1749(core.List<api.Certification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertification(o[0]);
  checkCertification(o[1]);
}

buildUnnamed1750() {
  var o = new core.List<api.ExamStatus>();
  o.add(buildExamStatus());
  o.add(buildExamStatus());
  return o;
}

checkUnnamed1750(core.List<api.ExamStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExamStatus(o[0]);
  checkExamStatus(o[1]);
}

buildUnnamed1751() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1751(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.availableAdwordsManagerAccounts = buildUnnamed1748();
    o.certificationStatus = buildUnnamed1749();
    o.company = buildCompanyRelation();
    o.companyVerificationEmail = "foo";
    o.examStatus = buildUnnamed1750();
    o.id = "foo";
    o.lastAccessTime = "foo";
    o.primaryEmails = buildUnnamed1751();
    o.profile = buildUserProfile();
    o.publicProfile = buildPublicProfile();
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    checkUnnamed1748(o.availableAdwordsManagerAccounts);
    checkUnnamed1749(o.certificationStatus);
    checkCompanyRelation(o.company);
    unittest.expect(o.companyVerificationEmail, unittest.equals('foo'));
    checkUnnamed1750(o.examStatus);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastAccessTime, unittest.equals('foo'));
    checkUnnamed1751(o.primaryEmails);
    checkUserProfile(o.profile);
    checkPublicProfile(o.publicProfile);
  }
  buildCounterUser--;
}

core.int buildCounterUserOverrides = 0;
buildUserOverrides() {
  var o = new api.UserOverrides();
  buildCounterUserOverrides++;
  if (buildCounterUserOverrides < 3) {
    o.ipAddress = "foo";
    o.userId = "foo";
  }
  buildCounterUserOverrides--;
  return o;
}

checkUserOverrides(api.UserOverrides o) {
  buildCounterUserOverrides++;
  if (buildCounterUserOverrides < 3) {
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterUserOverrides--;
}

buildUnnamed1752() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1752(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1753() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1753(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1754() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1754(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1755() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1755(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1756() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1756(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUserProfile = 0;
buildUserProfile() {
  var o = new api.UserProfile();
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    o.address = buildLocation();
    o.adwordsManagerAccount = "foo";
    o.channels = buildUnnamed1752();
    o.emailAddress = "foo";
    o.emailOptIns = buildOptIns();
    o.familyName = "foo";
    o.givenName = "foo";
    o.industries = buildUnnamed1753();
    o.jobFunctions = buildUnnamed1754();
    o.languages = buildUnnamed1755();
    o.markets = buildUnnamed1756();
    o.phoneNumber = "foo";
    o.primaryCountryCode = "foo";
    o.profilePublic = true;
  }
  buildCounterUserProfile--;
  return o;
}

checkUserProfile(api.UserProfile o) {
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    checkLocation(o.address);
    unittest.expect(o.adwordsManagerAccount, unittest.equals('foo'));
    checkUnnamed1752(o.channels);
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    checkOptIns(o.emailOptIns);
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    checkUnnamed1753(o.industries);
    checkUnnamed1754(o.jobFunctions);
    checkUnnamed1755(o.languages);
    checkUnnamed1756(o.markets);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.primaryCountryCode, unittest.equals('foo'));
    unittest.expect(o.profilePublic, unittest.isTrue);
  }
  buildCounterUserProfile--;
}

buildUnnamed1757() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1757(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1758() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1758(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1759() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1759(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1760() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1760(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1761() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1761(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1762() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1762(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1763() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1763(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1764() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1764(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1765() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1765(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1766() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1766(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1767() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1767(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1768() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1769() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1769(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1770() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1770(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1771() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1771(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1772() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1772(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1773() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1773(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1774() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1774(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1775() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1775(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1776() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1776(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-AdWordsManagerAccountInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdWordsManagerAccountInfo();
      var od = new api.AdWordsManagerAccountInfo.fromJson(o.toJson());
      checkAdWordsManagerAccountInfo(od);
    });
  });


  unittest.group("obj-schema-Analytics", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalytics();
      var od = new api.Analytics.fromJson(o.toJson());
      checkAnalytics(od);
    });
  });


  unittest.group("obj-schema-AnalyticsDataPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyticsDataPoint();
      var od = new api.AnalyticsDataPoint.fromJson(o.toJson());
      checkAnalyticsDataPoint(od);
    });
  });


  unittest.group("obj-schema-AnalyticsSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyticsSummary();
      var od = new api.AnalyticsSummary.fromJson(o.toJson());
      checkAnalyticsSummary(od);
    });
  });


  unittest.group("obj-schema-AvailableOffer", () {
    unittest.test("to-json--from-json", () {
      var o = buildAvailableOffer();
      var od = new api.AvailableOffer.fromJson(o.toJson());
      checkAvailableOffer(od);
    });
  });


  unittest.group("obj-schema-Certification", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertification();
      var od = new api.Certification.fromJson(o.toJson());
      checkCertification(od);
    });
  });


  unittest.group("obj-schema-CertificationExamStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertificationExamStatus();
      var od = new api.CertificationExamStatus.fromJson(o.toJson());
      checkCertificationExamStatus(od);
    });
  });


  unittest.group("obj-schema-CertificationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertificationStatus();
      var od = new api.CertificationStatus.fromJson(o.toJson());
      checkCertificationStatus(od);
    });
  });


  unittest.group("obj-schema-Company", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompany();
      var od = new api.Company.fromJson(o.toJson());
      checkCompany(od);
    });
  });


  unittest.group("obj-schema-CompanyRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompanyRelation();
      var od = new api.CompanyRelation.fromJson(o.toJson());
      checkCompanyRelation(od);
    });
  });


  unittest.group("obj-schema-CountryOfferInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCountryOfferInfo();
      var od = new api.CountryOfferInfo.fromJson(o.toJson());
      checkCountryOfferInfo(od);
    });
  });


  unittest.group("obj-schema-CreateLeadRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateLeadRequest();
      var od = new api.CreateLeadRequest.fromJson(o.toJson());
      checkCreateLeadRequest(od);
    });
  });


  unittest.group("obj-schema-CreateLeadResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateLeadResponse();
      var od = new api.CreateLeadResponse.fromJson(o.toJson());
      checkCreateLeadResponse(od);
    });
  });


  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });


  unittest.group("obj-schema-DebugInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDebugInfo();
      var od = new api.DebugInfo.fromJson(o.toJson());
      checkDebugInfo(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-EventData", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventData();
      var od = new api.EventData.fromJson(o.toJson());
      checkEventData(od);
    });
  });


  unittest.group("obj-schema-ExamStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildExamStatus();
      var od = new api.ExamStatus.fromJson(o.toJson());
      checkExamStatus(od);
    });
  });


  unittest.group("obj-schema-ExamToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildExamToken();
      var od = new api.ExamToken.fromJson(o.toJson());
      checkExamToken(od);
    });
  });


  unittest.group("obj-schema-GetCompanyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetCompanyResponse();
      var od = new api.GetCompanyResponse.fromJson(o.toJson());
      checkGetCompanyResponse(od);
    });
  });


  unittest.group("obj-schema-GetPartnersStatusResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPartnersStatusResponse();
      var od = new api.GetPartnersStatusResponse.fromJson(o.toJson());
      checkGetPartnersStatusResponse(od);
    });
  });


  unittest.group("obj-schema-HistoricalOffer", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistoricalOffer();
      var od = new api.HistoricalOffer.fromJson(o.toJson());
      checkHistoricalOffer(od);
    });
  });


  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });


  unittest.group("obj-schema-Lead", () {
    unittest.test("to-json--from-json", () {
      var o = buildLead();
      var od = new api.Lead.fromJson(o.toJson());
      checkLead(od);
    });
  });


  unittest.group("obj-schema-ListAnalyticsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAnalyticsResponse();
      var od = new api.ListAnalyticsResponse.fromJson(o.toJson());
      checkListAnalyticsResponse(od);
    });
  });


  unittest.group("obj-schema-ListCompaniesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCompaniesResponse();
      var od = new api.ListCompaniesResponse.fromJson(o.toJson());
      checkListCompaniesResponse(od);
    });
  });


  unittest.group("obj-schema-ListLeadsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLeadsResponse();
      var od = new api.ListLeadsResponse.fromJson(o.toJson());
      checkListLeadsResponse(od);
    });
  });


  unittest.group("obj-schema-ListOffersHistoryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOffersHistoryResponse();
      var od = new api.ListOffersHistoryResponse.fromJson(o.toJson());
      checkListOffersHistoryResponse(od);
    });
  });


  unittest.group("obj-schema-ListOffersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOffersResponse();
      var od = new api.ListOffersResponse.fromJson(o.toJson());
      checkListOffersResponse(od);
    });
  });


  unittest.group("obj-schema-ListUserStatesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListUserStatesResponse();
      var od = new api.ListUserStatesResponse.fromJson(o.toJson());
      checkListUserStatesResponse(od);
    });
  });


  unittest.group("obj-schema-LocalizedCompanyInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizedCompanyInfo();
      var od = new api.LocalizedCompanyInfo.fromJson(o.toJson());
      checkLocalizedCompanyInfo(od);
    });
  });


  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });


  unittest.group("obj-schema-LogMessageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogMessageRequest();
      var od = new api.LogMessageRequest.fromJson(o.toJson());
      checkLogMessageRequest(od);
    });
  });


  unittest.group("obj-schema-LogMessageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogMessageResponse();
      var od = new api.LogMessageResponse.fromJson(o.toJson());
      checkLogMessageResponse(od);
    });
  });


  unittest.group("obj-schema-LogUserEventRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogUserEventRequest();
      var od = new api.LogUserEventRequest.fromJson(o.toJson());
      checkLogUserEventRequest(od);
    });
  });


  unittest.group("obj-schema-LogUserEventResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogUserEventResponse();
      var od = new api.LogUserEventResponse.fromJson(o.toJson());
      checkLogUserEventResponse(od);
    });
  });


  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });


  unittest.group("obj-schema-OfferCustomer", () {
    unittest.test("to-json--from-json", () {
      var o = buildOfferCustomer();
      var od = new api.OfferCustomer.fromJson(o.toJson());
      checkOfferCustomer(od);
    });
  });


  unittest.group("obj-schema-OptIns", () {
    unittest.test("to-json--from-json", () {
      var o = buildOptIns();
      var od = new api.OptIns.fromJson(o.toJson());
      checkOptIns(od);
    });
  });


  unittest.group("obj-schema-PublicProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublicProfile();
      var od = new api.PublicProfile.fromJson(o.toJson());
      checkPublicProfile(od);
    });
  });


  unittest.group("obj-schema-Rank", () {
    unittest.test("to-json--from-json", () {
      var o = buildRank();
      var od = new api.Rank.fromJson(o.toJson());
      checkRank(od);
    });
  });


  unittest.group("obj-schema-RecaptchaChallenge", () {
    unittest.test("to-json--from-json", () {
      var o = buildRecaptchaChallenge();
      var od = new api.RecaptchaChallenge.fromJson(o.toJson());
      checkRecaptchaChallenge(od);
    });
  });


  unittest.group("obj-schema-RequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestMetadata();
      var od = new api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od);
    });
  });


  unittest.group("obj-schema-ResponseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponseMetadata();
      var od = new api.ResponseMetadata.fromJson(o.toJson());
      checkResponseMetadata(od);
    });
  });


  unittest.group("obj-schema-SpecializationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpecializationStatus();
      var od = new api.SpecializationStatus.fromJson(o.toJson());
      checkSpecializationStatus(od);
    });
  });


  unittest.group("obj-schema-TrafficSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrafficSource();
      var od = new api.TrafficSource.fromJson(o.toJson());
      checkTrafficSource(od);
    });
  });


  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });


  unittest.group("obj-schema-UserOverrides", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserOverrides();
      var od = new api.UserOverrides.fromJson(o.toJson());
      checkUserOverrides(od);
    });
  });


  unittest.group("obj-schema-UserProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserProfile();
      var od = new api.UserProfile.fromJson(o.toJson());
      checkUserProfile(od);
    });
  });


  unittest.group("resource-AnalyticsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AnalyticsResourceApi res = new api.PartnersApi(mock).analytics;
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1757();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v2/analytics"));
        pathOffset += 12;

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
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListAnalyticsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListAnalyticsResponse response) {
        checkListAnalyticsResponse(response);
      })));
    });

  });


  unittest.group("resource-ClientMessagesResourceApi", () {
    unittest.test("method--log", () {

      var mock = new HttpServerMock();
      api.ClientMessagesResourceApi res = new api.PartnersApi(mock).clientMessages;
      var arg_request = buildLogMessageRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogMessageRequest.fromJson(json);
        checkLogMessageRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("v2/clientMessages:log"));
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
        var resp = convert.JSON.encode(buildLogMessageResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.log(arg_request).then(unittest.expectAsync(((api.LogMessageResponse response) {
        checkLogMessageResponse(response);
      })));
    });

  });


  unittest.group("resource-CompaniesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.PartnersApi(mock).companies;
      var arg_companyId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_view = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_address = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_currencyCode = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1758();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_orderBy = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v2/companies/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_companyId"));

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
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["currencyCode"].first, unittest.equals(arg_currencyCode));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetCompanyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_companyId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, view: arg_view, requestMetadata_locale: arg_requestMetadata_locale, address: arg_address, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, currencyCode: arg_currencyCode, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, orderBy: arg_orderBy).then(unittest.expectAsync(((api.GetCompanyResponse response) {
        checkGetCompanyResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CompaniesResourceApi res = new api.PartnersApi(mock).companies;
      var arg_languageCodes = buildUnnamed1759();
      var arg_pageSize = 42;
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1760();
      var arg_orderBy = "foo";
      var arg_specializations = buildUnnamed1761();
      var arg_maxMonthlyBudget_currencyCode = "foo";
      var arg_minMonthlyBudget_currencyCode = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_view = "foo";
      var arg_address = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_minMonthlyBudget_units = "foo";
      var arg_maxMonthlyBudget_nanos = 42;
      var arg_services = buildUnnamed1762();
      var arg_maxMonthlyBudget_units = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_minMonthlyBudget_nanos = 42;
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_pageToken = "foo";
      var arg_companyName = "foo";
      var arg_industries = buildUnnamed1763();
      var arg_websiteUrl = "foo";
      var arg_gpsMotivations = buildUnnamed1764();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v2/companies"));
        pathOffset += 12;

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
        unittest.expect(queryMap["languageCodes"], unittest.equals(arg_languageCodes));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["specializations"], unittest.equals(arg_specializations));
        unittest.expect(queryMap["maxMonthlyBudget.currencyCode"].first, unittest.equals(arg_maxMonthlyBudget_currencyCode));
        unittest.expect(queryMap["minMonthlyBudget.currencyCode"].first, unittest.equals(arg_minMonthlyBudget_currencyCode));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["address"].first, unittest.equals(arg_address));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["minMonthlyBudget.units"].first, unittest.equals(arg_minMonthlyBudget_units));
        unittest.expect(core.int.parse(queryMap["maxMonthlyBudget.nanos"].first), unittest.equals(arg_maxMonthlyBudget_nanos));
        unittest.expect(queryMap["services"], unittest.equals(arg_services));
        unittest.expect(queryMap["maxMonthlyBudget.units"].first, unittest.equals(arg_maxMonthlyBudget_units));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(core.int.parse(queryMap["minMonthlyBudget.nanos"].first), unittest.equals(arg_minMonthlyBudget_nanos));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["companyName"].first, unittest.equals(arg_companyName));
        unittest.expect(queryMap["industries"], unittest.equals(arg_industries));
        unittest.expect(queryMap["websiteUrl"].first, unittest.equals(arg_websiteUrl));
        unittest.expect(queryMap["gpsMotivations"], unittest.equals(arg_gpsMotivations));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCompaniesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(languageCodes: arg_languageCodes, pageSize: arg_pageSize, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, orderBy: arg_orderBy, specializations: arg_specializations, maxMonthlyBudget_currencyCode: arg_maxMonthlyBudget_currencyCode, minMonthlyBudget_currencyCode: arg_minMonthlyBudget_currencyCode, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, view: arg_view, address: arg_address, requestMetadata_locale: arg_requestMetadata_locale, minMonthlyBudget_units: arg_minMonthlyBudget_units, maxMonthlyBudget_nanos: arg_maxMonthlyBudget_nanos, services: arg_services, maxMonthlyBudget_units: arg_maxMonthlyBudget_units, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, minMonthlyBudget_nanos: arg_minMonthlyBudget_nanos, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, pageToken: arg_pageToken, companyName: arg_companyName, industries: arg_industries, websiteUrl: arg_websiteUrl, gpsMotivations: arg_gpsMotivations).then(unittest.expectAsync(((api.ListCompaniesResponse response) {
        checkListCompaniesResponse(response);
      })));
    });

  });


  unittest.group("resource-CompaniesLeadsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CompaniesLeadsResourceApi res = new api.PartnersApi(mock).companies.leads;
      var arg_request = buildCreateLeadRequest();
      var arg_companyId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CreateLeadRequest.fromJson(json);
        checkCreateLeadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v2/companies/"));
        pathOffset += 13;
        index = path.indexOf("/leads", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_companyId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/leads"));
        pathOffset += 6;

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
        var resp = convert.JSON.encode(buildCreateLeadResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_companyId).then(unittest.expectAsync(((api.CreateLeadResponse response) {
        checkCreateLeadResponse(response);
      })));
    });

  });


  unittest.group("resource-ExamsResourceApi", () {
    unittest.test("method--getToken", () {

      var mock = new HttpServerMock();
      api.ExamsResourceApi res = new api.PartnersApi(mock).exams;
      var arg_examType = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1765();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v2/exams/"));
        pathOffset += 9;
        index = path.indexOf("/token", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_examType"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/token"));
        pathOffset += 6;

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
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExamToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getToken(arg_examType, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.ExamToken response) {
        checkExamToken(response);
      })));
    });

  });


  unittest.group("resource-LeadsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.LeadsResourceApi res = new api.PartnersApi(mock).leads;
      var arg_requestMetadata_experimentIds = buildUnnamed1766();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_orderBy = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2/leads"));
        pathOffset += 8;

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
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLeadsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, orderBy: arg_orderBy, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, pageToken: arg_pageToken, pageSize: arg_pageSize, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress).then(unittest.expectAsync(((api.ListLeadsResponse response) {
        checkListLeadsResponse(response);
      })));
    });

  });


  unittest.group("resource-OffersResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.OffersResourceApi res = new api.PartnersApi(mock).offers;
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1767();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v2/offers"));
        pathOffset += 9;

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
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOffersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.ListOffersResponse response) {
        checkListOffersResponse(response);
      })));
    });

  });


  unittest.group("resource-OffersHistoryResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.OffersHistoryResourceApi res = new api.PartnersApi(mock).offers.history;
      var arg_requestMetadata_experimentIds = buildUnnamed1768();
      var arg_entireCompany = true;
      var arg_orderBy = "foo";
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2/offers/history"));
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
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["entireCompany"].first, unittest.equals("$arg_entireCompany"));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOffersHistoryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(requestMetadata_experimentIds: arg_requestMetadata_experimentIds, entireCompany: arg_entireCompany, orderBy: arg_orderBy, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, pageToken: arg_pageToken, pageSize: arg_pageSize, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress).then(unittest.expectAsync(((api.ListOffersHistoryResponse response) {
        checkListOffersHistoryResponse(response);
      })));
    });

  });


  unittest.group("resource-UserEventsResourceApi", () {
    unittest.test("method--log", () {

      var mock = new HttpServerMock();
      api.UserEventsResourceApi res = new api.PartnersApi(mock).userEvents;
      var arg_request = buildLogUserEventRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogUserEventRequest.fromJson(json);
        checkLogUserEventRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2/userEvents:log"));
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
        var resp = convert.JSON.encode(buildLogUserEventResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.log(arg_request).then(unittest.expectAsync(((api.LogUserEventResponse response) {
        checkLogUserEventResponse(response);
      })));
    });

  });


  unittest.group("resource-UserStatesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.UserStatesResourceApi res = new api.PartnersApi(mock).userStates;
      var arg_requestMetadata_experimentIds = buildUnnamed1769();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v2/userStates"));
        pathOffset += 13;

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
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListUserStatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress).then(unittest.expectAsync(((api.ListUserStatesResponse response) {
        checkListUserStatesResponse(response);
      })));
    });

  });


  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--createCompanyRelation", () {

      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.PartnersApi(mock).users;
      var arg_request = buildCompanyRelation();
      var arg_userId = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1770();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CompanyRelation.fromJson(json);
        checkCompanyRelation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v2/users/"));
        pathOffset += 9;
        index = path.indexOf("/companyRelation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/companyRelation"));
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
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCompanyRelation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.createCompanyRelation(arg_request, arg_userId, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress).then(unittest.expectAsync(((api.CompanyRelation response) {
        checkCompanyRelation(response);
      })));
    });

    unittest.test("method--deleteCompanyRelation", () {

      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.PartnersApi(mock).users;
      var arg_userId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1771();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v2/users/"));
        pathOffset += 9;
        index = path.indexOf("/companyRelation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/companyRelation"));
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
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.deleteCompanyRelation(arg_userId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.PartnersApi(mock).users;
      var arg_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_userView = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1772();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v2/users/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["userView"].first, unittest.equals(arg_userView));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, userView: arg_userView, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--updateProfile", () {

      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.PartnersApi(mock).users;
      var arg_request = buildUserProfile();
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1773();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UserProfile.fromJson(json);
        checkUserProfile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("v2/users/profile"));
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
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updateProfile(arg_request, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.UserProfile response) {
        checkUserProfile(response);
      })));
    });

  });


  unittest.group("resource-V2ResourceApi", () {
    unittest.test("method--getPartnersstatus", () {

      var mock = new HttpServerMock();
      api.V2ResourceApi res = new api.PartnersApi(mock).v2;
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1774();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2/partnersstatus"));
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
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetPartnersStatusResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getPartnersstatus(requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId).then(unittest.expectAsync(((api.GetPartnersStatusResponse response) {
        checkGetPartnersStatusResponse(response);
      })));
    });

    unittest.test("method--updateCompanies", () {

      var mock = new HttpServerMock();
      api.V2ResourceApi res = new api.PartnersApi(mock).v2;
      var arg_request = buildCompany();
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_updateMask = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1775();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Company.fromJson(json);
        checkCompany(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v2/companies"));
        pathOffset += 12;

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
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updateCompanies(arg_request, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, updateMask: arg_updateMask, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.Company response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--updateLeads", () {

      var mock = new HttpServerMock();
      api.V2ResourceApi res = new api.PartnersApi(mock).v2;
      var arg_request = buildLead();
      var arg_requestMetadata_partnersSessionId = "foo";
      var arg_requestMetadata_userOverrides_userId = "foo";
      var arg_requestMetadata_trafficSource_trafficSourceId = "foo";
      var arg_requestMetadata_locale = "foo";
      var arg_requestMetadata_userOverrides_ipAddress = "foo";
      var arg_updateMask = "foo";
      var arg_requestMetadata_experimentIds = buildUnnamed1776();
      var arg_requestMetadata_trafficSource_trafficSubId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Lead.fromJson(json);
        checkLead(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v2/leads"));
        pathOffset += 8;

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
        unittest.expect(queryMap["requestMetadata.partnersSessionId"].first, unittest.equals(arg_requestMetadata_partnersSessionId));
        unittest.expect(queryMap["requestMetadata.userOverrides.userId"].first, unittest.equals(arg_requestMetadata_userOverrides_userId));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSourceId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSourceId));
        unittest.expect(queryMap["requestMetadata.locale"].first, unittest.equals(arg_requestMetadata_locale));
        unittest.expect(queryMap["requestMetadata.userOverrides.ipAddress"].first, unittest.equals(arg_requestMetadata_userOverrides_ipAddress));
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["requestMetadata.experimentIds"], unittest.equals(arg_requestMetadata_experimentIds));
        unittest.expect(queryMap["requestMetadata.trafficSource.trafficSubId"].first, unittest.equals(arg_requestMetadata_trafficSource_trafficSubId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLead());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updateLeads(arg_request, requestMetadata_partnersSessionId: arg_requestMetadata_partnersSessionId, requestMetadata_userOverrides_userId: arg_requestMetadata_userOverrides_userId, requestMetadata_trafficSource_trafficSourceId: arg_requestMetadata_trafficSource_trafficSourceId, requestMetadata_locale: arg_requestMetadata_locale, requestMetadata_userOverrides_ipAddress: arg_requestMetadata_userOverrides_ipAddress, updateMask: arg_updateMask, requestMetadata_experimentIds: arg_requestMetadata_experimentIds, requestMetadata_trafficSource_trafficSubId: arg_requestMetadata_trafficSource_trafficSubId).then(unittest.expectAsync(((api.Lead response) {
        checkLead(response);
      })));
    });

  });


}

