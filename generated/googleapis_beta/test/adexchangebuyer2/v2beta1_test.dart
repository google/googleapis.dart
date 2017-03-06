library googleapis_beta.adexchangebuyer2.v2beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/adexchangebuyer2/v2beta1.dart' as api;

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

core.int buildCounterAddDealAssociationRequest = 0;
buildAddDealAssociationRequest() {
  var o = new api.AddDealAssociationRequest();
  buildCounterAddDealAssociationRequest++;
  if (buildCounterAddDealAssociationRequest < 3) {
    o.association = buildCreativeDealAssociation();
  }
  buildCounterAddDealAssociationRequest--;
  return o;
}

checkAddDealAssociationRequest(api.AddDealAssociationRequest o) {
  buildCounterAddDealAssociationRequest++;
  if (buildCounterAddDealAssociationRequest < 3) {
    checkCreativeDealAssociation(o.association);
  }
  buildCounterAddDealAssociationRequest--;
}

buildUnnamed3467() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3467(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppContext = 0;
buildAppContext() {
  var o = new api.AppContext();
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    o.appTypes = buildUnnamed3467();
  }
  buildCounterAppContext--;
  return o;
}

checkAppContext(api.AppContext o) {
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    checkUnnamed3467(o.appTypes);
  }
  buildCounterAppContext--;
}

buildUnnamed3468() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3468(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuctionContext = 0;
buildAuctionContext() {
  var o = new api.AuctionContext();
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    o.auctionTypes = buildUnnamed3468();
  }
  buildCounterAuctionContext--;
  return o;
}

checkAuctionContext(api.AuctionContext o) {
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    checkUnnamed3468(o.auctionTypes);
  }
  buildCounterAuctionContext--;
}

core.int buildCounterClient = 0;
buildClient() {
  var o = new api.Client();
  buildCounterClient++;
  if (buildCounterClient < 3) {
    o.clientAccountId = "foo";
    o.clientName = "foo";
    o.entityId = "foo";
    o.entityName = "foo";
    o.entityType = "foo";
    o.role = "foo";
    o.status = "foo";
    o.visibleToSeller = true;
  }
  buildCounterClient--;
  return o;
}

checkClient(api.Client o) {
  buildCounterClient++;
  if (buildCounterClient < 3) {
    unittest.expect(o.clientAccountId, unittest.equals('foo'));
    unittest.expect(o.clientName, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.entityName, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.visibleToSeller, unittest.isTrue);
  }
  buildCounterClient--;
}

core.int buildCounterClientUser = 0;
buildClientUser() {
  var o = new api.ClientUser();
  buildCounterClientUser++;
  if (buildCounterClientUser < 3) {
    o.clientAccountId = "foo";
    o.email = "foo";
    o.status = "foo";
    o.userId = "foo";
  }
  buildCounterClientUser--;
  return o;
}

checkClientUser(api.ClientUser o) {
  buildCounterClientUser++;
  if (buildCounterClientUser < 3) {
    unittest.expect(o.clientAccountId, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterClientUser--;
}

core.int buildCounterClientUserInvitation = 0;
buildClientUserInvitation() {
  var o = new api.ClientUserInvitation();
  buildCounterClientUserInvitation++;
  if (buildCounterClientUserInvitation < 3) {
    o.clientAccountId = "foo";
    o.email = "foo";
    o.invitationId = "foo";
  }
  buildCounterClientUserInvitation--;
  return o;
}

checkClientUserInvitation(api.ClientUserInvitation o) {
  buildCounterClientUserInvitation++;
  if (buildCounterClientUserInvitation < 3) {
    unittest.expect(o.clientAccountId, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.invitationId, unittest.equals('foo'));
  }
  buildCounterClientUserInvitation--;
}

buildUnnamed3469() {
  var o = new core.List<api.ServingContext>();
  o.add(buildServingContext());
  o.add(buildServingContext());
  return o;
}

checkUnnamed3469(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0]);
  checkServingContext(o[1]);
}

buildUnnamed3470() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3470(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCorrection = 0;
buildCorrection() {
  var o = new api.Correction();
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    o.contexts = buildUnnamed3469();
    o.details = buildUnnamed3470();
    o.type = "foo";
  }
  buildCounterCorrection--;
  return o;
}

checkCorrection(api.Correction o) {
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    checkUnnamed3469(o.contexts);
    checkUnnamed3470(o.details);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCorrection--;
}

buildUnnamed3471() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3471(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3473() {
  var o = new core.List<api.Correction>();
  o.add(buildCorrection());
  o.add(buildCorrection());
  return o;
}

checkUnnamed3473(core.List<api.Correction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCorrection(o[0]);
  checkCorrection(o[1]);
}

buildUnnamed3474() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3474(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3475() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3476() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3476(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3477() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3477(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3478() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3478(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3479() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3479(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3480() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3480(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3481() {
  var o = new core.List<api.ServingRestriction>();
  o.add(buildServingRestriction());
  o.add(buildServingRestriction());
  return o;
}

checkUnnamed3481(core.List<api.ServingRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingRestriction(o[0]);
  checkServingRestriction(o[1]);
}

buildUnnamed3482() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3482(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCreative = 0;
buildCreative() {
  var o = new api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.accountId = "foo";
    o.adChoicesDestinationUrl = "foo";
    o.advertiserName = "foo";
    o.agencyId = "foo";
    o.apiUpdateTime = "foo";
    o.attributes = buildUnnamed3471();
    o.clickThroughUrls = buildUnnamed3472();
    o.corrections = buildUnnamed3473();
    o.creativeId = "foo";
    o.dealsStatus = "foo";
    o.detectedAdvertiserIds = buildUnnamed3474();
    o.detectedDomains = buildUnnamed3475();
    o.detectedLanguages = buildUnnamed3476();
    o.detectedProductCategories = buildUnnamed3477();
    o.detectedSensitiveCategories = buildUnnamed3478();
    o.filteringStats = buildFilteringStats();
    o.html = buildHtmlContent();
    o.impressionTrackingUrls = buildUnnamed3479();
    o.native = buildNativeContent();
    o.openAuctionStatus = "foo";
    o.restrictedCategories = buildUnnamed3480();
    o.servingRestrictions = buildUnnamed3481();
    o.vendorIds = buildUnnamed3482();
    o.version = 42;
    o.video = buildVideoContent();
  }
  buildCounterCreative--;
  return o;
}

checkCreative(api.Creative o) {
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.adChoicesDestinationUrl, unittest.equals('foo'));
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    unittest.expect(o.agencyId, unittest.equals('foo'));
    unittest.expect(o.apiUpdateTime, unittest.equals('foo'));
    checkUnnamed3471(o.attributes);
    checkUnnamed3472(o.clickThroughUrls);
    checkUnnamed3473(o.corrections);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.dealsStatus, unittest.equals('foo'));
    checkUnnamed3474(o.detectedAdvertiserIds);
    checkUnnamed3475(o.detectedDomains);
    checkUnnamed3476(o.detectedLanguages);
    checkUnnamed3477(o.detectedProductCategories);
    checkUnnamed3478(o.detectedSensitiveCategories);
    checkFilteringStats(o.filteringStats);
    checkHtmlContent(o.html);
    checkUnnamed3479(o.impressionTrackingUrls);
    checkNativeContent(o.native);
    unittest.expect(o.openAuctionStatus, unittest.equals('foo'));
    checkUnnamed3480(o.restrictedCategories);
    checkUnnamed3481(o.servingRestrictions);
    checkUnnamed3482(o.vendorIds);
    unittest.expect(o.version, unittest.equals(42));
    checkVideoContent(o.video);
  }
  buildCounterCreative--;
}

core.int buildCounterCreativeDealAssociation = 0;
buildCreativeDealAssociation() {
  var o = new api.CreativeDealAssociation();
  buildCounterCreativeDealAssociation++;
  if (buildCounterCreativeDealAssociation < 3) {
    o.accountId = "foo";
    o.creativeId = "foo";
    o.dealsId = "foo";
  }
  buildCounterCreativeDealAssociation--;
  return o;
}

checkCreativeDealAssociation(api.CreativeDealAssociation o) {
  buildCounterCreativeDealAssociation++;
  if (buildCounterCreativeDealAssociation < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.dealsId, unittest.equals('foo'));
  }
  buildCounterCreativeDealAssociation--;
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

buildUnnamed3483() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3483(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDisapproval = 0;
buildDisapproval() {
  var o = new api.Disapproval();
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    o.details = buildUnnamed3483();
    o.reason = "foo";
  }
  buildCounterDisapproval--;
  return o;
}

checkDisapproval(api.Disapproval o) {
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    checkUnnamed3483(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterDisapproval--;
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

buildUnnamed3484() {
  var o = new core.List<api.Reason>();
  o.add(buildReason());
  o.add(buildReason());
  return o;
}

checkUnnamed3484(core.List<api.Reason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReason(o[0]);
  checkReason(o[1]);
}

core.int buildCounterFilteringStats = 0;
buildFilteringStats() {
  var o = new api.FilteringStats();
  buildCounterFilteringStats++;
  if (buildCounterFilteringStats < 3) {
    o.date = buildDate();
    o.reasons = buildUnnamed3484();
  }
  buildCounterFilteringStats--;
  return o;
}

checkFilteringStats(api.FilteringStats o) {
  buildCounterFilteringStats++;
  if (buildCounterFilteringStats < 3) {
    checkDate(o.date);
    checkUnnamed3484(o.reasons);
  }
  buildCounterFilteringStats--;
}

core.int buildCounterHtmlContent = 0;
buildHtmlContent() {
  var o = new api.HtmlContent();
  buildCounterHtmlContent++;
  if (buildCounterHtmlContent < 3) {
    o.height = 42;
    o.snippet = "foo";
    o.width = 42;
  }
  buildCounterHtmlContent--;
  return o;
}

checkHtmlContent(api.HtmlContent o) {
  buildCounterHtmlContent++;
  if (buildCounterHtmlContent < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.snippet, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterHtmlContent--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterImage--;
}

buildUnnamed3485() {
  var o = new core.List<api.ClientUserInvitation>();
  o.add(buildClientUserInvitation());
  o.add(buildClientUserInvitation());
  return o;
}

checkUnnamed3485(core.List<api.ClientUserInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUserInvitation(o[0]);
  checkClientUserInvitation(o[1]);
}

core.int buildCounterListClientUserInvitationsResponse = 0;
buildListClientUserInvitationsResponse() {
  var o = new api.ListClientUserInvitationsResponse();
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    o.invitations = buildUnnamed3485();
    o.nextPageToken = "foo";
  }
  buildCounterListClientUserInvitationsResponse--;
  return o;
}

checkListClientUserInvitationsResponse(api.ListClientUserInvitationsResponse o) {
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    checkUnnamed3485(o.invitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClientUserInvitationsResponse--;
}

buildUnnamed3486() {
  var o = new core.List<api.ClientUser>();
  o.add(buildClientUser());
  o.add(buildClientUser());
  return o;
}

checkUnnamed3486(core.List<api.ClientUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUser(o[0]);
  checkClientUser(o[1]);
}

core.int buildCounterListClientUsersResponse = 0;
buildListClientUsersResponse() {
  var o = new api.ListClientUsersResponse();
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    o.nextPageToken = "foo";
    o.users = buildUnnamed3486();
  }
  buildCounterListClientUsersResponse--;
  return o;
}

checkListClientUsersResponse(api.ListClientUsersResponse o) {
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3486(o.users);
  }
  buildCounterListClientUsersResponse--;
}

buildUnnamed3487() {
  var o = new core.List<api.Client>();
  o.add(buildClient());
  o.add(buildClient());
  return o;
}

checkUnnamed3487(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0]);
  checkClient(o[1]);
}

core.int buildCounterListClientsResponse = 0;
buildListClientsResponse() {
  var o = new api.ListClientsResponse();
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    o.clients = buildUnnamed3487();
    o.nextPageToken = "foo";
  }
  buildCounterListClientsResponse--;
  return o;
}

checkListClientsResponse(api.ListClientsResponse o) {
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    checkUnnamed3487(o.clients);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClientsResponse--;
}

buildUnnamed3488() {
  var o = new core.List<api.Creative>();
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

checkUnnamed3488(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterListCreativesResponse = 0;
buildListCreativesResponse() {
  var o = new api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed3488();
    o.nextPageToken = "foo";
  }
  buildCounterListCreativesResponse--;
  return o;
}

checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed3488(o.creatives);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCreativesResponse--;
}

buildUnnamed3489() {
  var o = new core.List<api.CreativeDealAssociation>();
  o.add(buildCreativeDealAssociation());
  o.add(buildCreativeDealAssociation());
  return o;
}

checkUnnamed3489(core.List<api.CreativeDealAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealAssociation(o[0]);
  checkCreativeDealAssociation(o[1]);
}

core.int buildCounterListDealAssociationsResponse = 0;
buildListDealAssociationsResponse() {
  var o = new api.ListDealAssociationsResponse();
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    o.associations = buildUnnamed3489();
    o.nextPageToken = "foo";
  }
  buildCounterListDealAssociationsResponse--;
  return o;
}

checkListDealAssociationsResponse(api.ListDealAssociationsResponse o) {
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    checkUnnamed3489(o.associations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDealAssociationsResponse--;
}

buildUnnamed3490() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3490(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterLocationContext = 0;
buildLocationContext() {
  var o = new api.LocationContext();
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    o.geoCriteriaIds = buildUnnamed3490();
  }
  buildCounterLocationContext--;
  return o;
}

checkLocationContext(api.LocationContext o) {
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    checkUnnamed3490(o.geoCriteriaIds);
  }
  buildCounterLocationContext--;
}

core.int buildCounterNativeContent = 0;
buildNativeContent() {
  var o = new api.NativeContent();
  buildCounterNativeContent++;
  if (buildCounterNativeContent < 3) {
    o.advertiserName = "foo";
    o.appIcon = buildImage();
    o.body = "foo";
    o.callToAction = "foo";
    o.clickLinkUrl = "foo";
    o.clickTrackingUrl = "foo";
    o.headline = "foo";
    o.image = buildImage();
    o.logo = buildImage();
    o.priceDisplayText = "foo";
    o.starRating = 42.0;
    o.storeUrl = "foo";
    o.videoUrl = "foo";
  }
  buildCounterNativeContent--;
  return o;
}

checkNativeContent(api.NativeContent o) {
  buildCounterNativeContent++;
  if (buildCounterNativeContent < 3) {
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    checkImage(o.appIcon);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.callToAction, unittest.equals('foo'));
    unittest.expect(o.clickLinkUrl, unittest.equals('foo'));
    unittest.expect(o.clickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.headline, unittest.equals('foo'));
    checkImage(o.image);
    checkImage(o.logo);
    unittest.expect(o.priceDisplayText, unittest.equals('foo'));
    unittest.expect(o.starRating, unittest.equals(42.0));
    unittest.expect(o.storeUrl, unittest.equals('foo'));
    unittest.expect(o.videoUrl, unittest.equals('foo'));
  }
  buildCounterNativeContent--;
}

buildUnnamed3491() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3491(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlatformContext = 0;
buildPlatformContext() {
  var o = new api.PlatformContext();
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    o.platforms = buildUnnamed3491();
  }
  buildCounterPlatformContext--;
  return o;
}

checkPlatformContext(api.PlatformContext o) {
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    checkUnnamed3491(o.platforms);
  }
  buildCounterPlatformContext--;
}

core.int buildCounterReason = 0;
buildReason() {
  var o = new api.Reason();
  buildCounterReason++;
  if (buildCounterReason < 3) {
    o.count = "foo";
    o.status = 42;
  }
  buildCounterReason--;
  return o;
}

checkReason(api.Reason o) {
  buildCounterReason++;
  if (buildCounterReason < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals(42));
  }
  buildCounterReason--;
}

core.int buildCounterRemoveDealAssociationRequest = 0;
buildRemoveDealAssociationRequest() {
  var o = new api.RemoveDealAssociationRequest();
  buildCounterRemoveDealAssociationRequest++;
  if (buildCounterRemoveDealAssociationRequest < 3) {
    o.association = buildCreativeDealAssociation();
  }
  buildCounterRemoveDealAssociationRequest--;
  return o;
}

checkRemoveDealAssociationRequest(api.RemoveDealAssociationRequest o) {
  buildCounterRemoveDealAssociationRequest++;
  if (buildCounterRemoveDealAssociationRequest < 3) {
    checkCreativeDealAssociation(o.association);
  }
  buildCounterRemoveDealAssociationRequest--;
}

buildUnnamed3492() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3492(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSecurityContext = 0;
buildSecurityContext() {
  var o = new api.SecurityContext();
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    o.securities = buildUnnamed3492();
  }
  buildCounterSecurityContext--;
  return o;
}

checkSecurityContext(api.SecurityContext o) {
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    checkUnnamed3492(o.securities);
  }
  buildCounterSecurityContext--;
}

core.int buildCounterServingContext = 0;
buildServingContext() {
  var o = new api.ServingContext();
  buildCounterServingContext++;
  if (buildCounterServingContext < 3) {
    o.all = "foo";
    o.appType = buildAppContext();
    o.auctionType = buildAuctionContext();
    o.location = buildLocationContext();
    o.platform = buildPlatformContext();
    o.securityType = buildSecurityContext();
  }
  buildCounterServingContext--;
  return o;
}

checkServingContext(api.ServingContext o) {
  buildCounterServingContext++;
  if (buildCounterServingContext < 3) {
    unittest.expect(o.all, unittest.equals('foo'));
    checkAppContext(o.appType);
    checkAuctionContext(o.auctionType);
    checkLocationContext(o.location);
    checkPlatformContext(o.platform);
    checkSecurityContext(o.securityType);
  }
  buildCounterServingContext--;
}

buildUnnamed3493() {
  var o = new core.List<api.ServingContext>();
  o.add(buildServingContext());
  o.add(buildServingContext());
  return o;
}

checkUnnamed3493(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0]);
  checkServingContext(o[1]);
}

buildUnnamed3494() {
  var o = new core.List<api.Disapproval>();
  o.add(buildDisapproval());
  o.add(buildDisapproval());
  return o;
}

checkUnnamed3494(core.List<api.Disapproval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisapproval(o[0]);
  checkDisapproval(o[1]);
}

core.int buildCounterServingRestriction = 0;
buildServingRestriction() {
  var o = new api.ServingRestriction();
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    o.contexts = buildUnnamed3493();
    o.disapprovalReasons = buildUnnamed3494();
    o.status = "foo";
  }
  buildCounterServingRestriction--;
  return o;
}

checkServingRestriction(api.ServingRestriction o) {
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    checkUnnamed3493(o.contexts);
    checkUnnamed3494(o.disapprovalReasons);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterServingRestriction--;
}

core.int buildCounterStopWatchingCreativeRequest = 0;
buildStopWatchingCreativeRequest() {
  var o = new api.StopWatchingCreativeRequest();
  buildCounterStopWatchingCreativeRequest++;
  if (buildCounterStopWatchingCreativeRequest < 3) {
  }
  buildCounterStopWatchingCreativeRequest--;
  return o;
}

checkStopWatchingCreativeRequest(api.StopWatchingCreativeRequest o) {
  buildCounterStopWatchingCreativeRequest++;
  if (buildCounterStopWatchingCreativeRequest < 3) {
  }
  buildCounterStopWatchingCreativeRequest--;
}

core.int buildCounterVideoContent = 0;
buildVideoContent() {
  var o = new api.VideoContent();
  buildCounterVideoContent++;
  if (buildCounterVideoContent < 3) {
    o.videoUrl = "foo";
  }
  buildCounterVideoContent--;
  return o;
}

checkVideoContent(api.VideoContent o) {
  buildCounterVideoContent++;
  if (buildCounterVideoContent < 3) {
    unittest.expect(o.videoUrl, unittest.equals('foo'));
  }
  buildCounterVideoContent--;
}

core.int buildCounterWatchCreativeRequest = 0;
buildWatchCreativeRequest() {
  var o = new api.WatchCreativeRequest();
  buildCounterWatchCreativeRequest++;
  if (buildCounterWatchCreativeRequest < 3) {
    o.topic = "foo";
  }
  buildCounterWatchCreativeRequest--;
  return o;
}

checkWatchCreativeRequest(api.WatchCreativeRequest o) {
  buildCounterWatchCreativeRequest++;
  if (buildCounterWatchCreativeRequest < 3) {
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterWatchCreativeRequest--;
}


main() {
  unittest.group("obj-schema-AddDealAssociationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDealAssociationRequest();
      var od = new api.AddDealAssociationRequest.fromJson(o.toJson());
      checkAddDealAssociationRequest(od);
    });
  });


  unittest.group("obj-schema-AppContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppContext();
      var od = new api.AppContext.fromJson(o.toJson());
      checkAppContext(od);
    });
  });


  unittest.group("obj-schema-AuctionContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuctionContext();
      var od = new api.AuctionContext.fromJson(o.toJson());
      checkAuctionContext(od);
    });
  });


  unittest.group("obj-schema-Client", () {
    unittest.test("to-json--from-json", () {
      var o = buildClient();
      var od = new api.Client.fromJson(o.toJson());
      checkClient(od);
    });
  });


  unittest.group("obj-schema-ClientUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientUser();
      var od = new api.ClientUser.fromJson(o.toJson());
      checkClientUser(od);
    });
  });


  unittest.group("obj-schema-ClientUserInvitation", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientUserInvitation();
      var od = new api.ClientUserInvitation.fromJson(o.toJson());
      checkClientUserInvitation(od);
    });
  });


  unittest.group("obj-schema-Correction", () {
    unittest.test("to-json--from-json", () {
      var o = buildCorrection();
      var od = new api.Correction.fromJson(o.toJson());
      checkCorrection(od);
    });
  });


  unittest.group("obj-schema-Creative", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreative();
      var od = new api.Creative.fromJson(o.toJson());
      checkCreative(od);
    });
  });


  unittest.group("obj-schema-CreativeDealAssociation", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeDealAssociation();
      var od = new api.CreativeDealAssociation.fromJson(o.toJson());
      checkCreativeDealAssociation(od);
    });
  });


  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });


  unittest.group("obj-schema-Disapproval", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisapproval();
      var od = new api.Disapproval.fromJson(o.toJson());
      checkDisapproval(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-FilteringStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilteringStats();
      var od = new api.FilteringStats.fromJson(o.toJson());
      checkFilteringStats(od);
    });
  });


  unittest.group("obj-schema-HtmlContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildHtmlContent();
      var od = new api.HtmlContent.fromJson(o.toJson());
      checkHtmlContent(od);
    });
  });


  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });


  unittest.group("obj-schema-ListClientUserInvitationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClientUserInvitationsResponse();
      var od = new api.ListClientUserInvitationsResponse.fromJson(o.toJson());
      checkListClientUserInvitationsResponse(od);
    });
  });


  unittest.group("obj-schema-ListClientUsersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClientUsersResponse();
      var od = new api.ListClientUsersResponse.fromJson(o.toJson());
      checkListClientUsersResponse(od);
    });
  });


  unittest.group("obj-schema-ListClientsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClientsResponse();
      var od = new api.ListClientsResponse.fromJson(o.toJson());
      checkListClientsResponse(od);
    });
  });


  unittest.group("obj-schema-ListCreativesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCreativesResponse();
      var od = new api.ListCreativesResponse.fromJson(o.toJson());
      checkListCreativesResponse(od);
    });
  });


  unittest.group("obj-schema-ListDealAssociationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDealAssociationsResponse();
      var od = new api.ListDealAssociationsResponse.fromJson(o.toJson());
      checkListDealAssociationsResponse(od);
    });
  });


  unittest.group("obj-schema-LocationContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationContext();
      var od = new api.LocationContext.fromJson(o.toJson());
      checkLocationContext(od);
    });
  });


  unittest.group("obj-schema-NativeContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildNativeContent();
      var od = new api.NativeContent.fromJson(o.toJson());
      checkNativeContent(od);
    });
  });


  unittest.group("obj-schema-PlatformContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlatformContext();
      var od = new api.PlatformContext.fromJson(o.toJson());
      checkPlatformContext(od);
    });
  });


  unittest.group("obj-schema-Reason", () {
    unittest.test("to-json--from-json", () {
      var o = buildReason();
      var od = new api.Reason.fromJson(o.toJson());
      checkReason(od);
    });
  });


  unittest.group("obj-schema-RemoveDealAssociationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDealAssociationRequest();
      var od = new api.RemoveDealAssociationRequest.fromJson(o.toJson());
      checkRemoveDealAssociationRequest(od);
    });
  });


  unittest.group("obj-schema-SecurityContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecurityContext();
      var od = new api.SecurityContext.fromJson(o.toJson());
      checkSecurityContext(od);
    });
  });


  unittest.group("obj-schema-ServingContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildServingContext();
      var od = new api.ServingContext.fromJson(o.toJson());
      checkServingContext(od);
    });
  });


  unittest.group("obj-schema-ServingRestriction", () {
    unittest.test("to-json--from-json", () {
      var o = buildServingRestriction();
      var od = new api.ServingRestriction.fromJson(o.toJson());
      checkServingRestriction(od);
    });
  });


  unittest.group("obj-schema-StopWatchingCreativeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildStopWatchingCreativeRequest();
      var od = new api.StopWatchingCreativeRequest.fromJson(o.toJson());
      checkStopWatchingCreativeRequest(od);
    });
  });


  unittest.group("obj-schema-VideoContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoContent();
      var od = new api.VideoContent.fromJson(o.toJson());
      checkVideoContent(od);
    });
  });


  unittest.group("obj-schema-WatchCreativeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWatchCreativeRequest();
      var od = new api.WatchCreativeRequest.fromJson(o.toJson());
      checkWatchCreativeRequest(od);
    });
  });


  unittest.group("resource-AccountsClientsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_request = buildClient();
      var arg_accountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Client.fromJson(json);
        checkClient(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/clients"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_accountId).then(unittest.expectAsync(((api.Client response) {
        checkClient(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        var resp = convert.JSON.encode(buildClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_clientAccountId).then(unittest.expectAsync(((api.Client response) {
        checkClient(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/clients"));
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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClientsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListClientsResponse response) {
        checkListClientsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_request = buildClient();
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Client.fromJson(json);
        checkClient(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        var resp = convert.JSON.encode(buildClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_accountId, arg_clientAccountId).then(unittest.expectAsync(((api.Client response) {
        checkClient(response);
      })));
    });

  });


  unittest.group("resource-AccountsClientsInvitationsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AccountsClientsInvitationsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients.invitations;
      var arg_request = buildClientUserInvitation();
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ClientUserInvitation.fromJson(json);
        checkClientUserInvitation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/invitations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/invitations"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientUserInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_accountId, arg_clientAccountId).then(unittest.expectAsync(((api.ClientUserInvitation response) {
        checkClientUserInvitation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsClientsInvitationsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients.invitations;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_invitationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/invitations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/invitations/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_invitationId"));

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
        var resp = convert.JSON.encode(buildClientUserInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_clientAccountId, arg_invitationId).then(unittest.expectAsync(((api.ClientUserInvitation response) {
        checkClientUserInvitation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsClientsInvitationsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients.invitations;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/invitations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/invitations"));
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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClientUserInvitationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_clientAccountId, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListClientUserInvitationsResponse response) {
        checkListClientUserInvitationsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsClientsUsersResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsClientsUsersResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients.users;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/users/"));
        pathOffset += 7;
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_clientAccountId, arg_userId).then(unittest.expectAsync(((api.ClientUser response) {
        checkClientUser(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsClientsUsersResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients.users;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/users", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/users"));
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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClientUsersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_clientAccountId, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.ListClientUsersResponse response) {
        checkListClientUsersResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AccountsClientsUsersResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.clients.users;
      var arg_request = buildClientUser();
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ClientUser.fromJson(json);
        checkClientUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/users/"));
        pathOffset += 7;
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClientUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_accountId, arg_clientAccountId, arg_userId).then(unittest.expectAsync(((api.ClientUser response) {
        checkClientUser(response);
      })));
    });

  });


  unittest.group("resource-AccountsCreativesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildCreative();
      var arg_accountId = "foo";
      var arg_duplicateIdMode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/creatives"));
        pathOffset += 10;

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
        unittest.expect(queryMap["duplicateIdMode"].first, unittest.equals(arg_duplicateIdMode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_accountId, duplicateIdMode: arg_duplicateIdMode).then(unittest.expectAsync(((api.Creative response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));

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
        var resp = convert.JSON.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_creativeId).then(unittest.expectAsync(((api.Creative response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/creatives"));
        pathOffset += 10;

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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCreativesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageToken: arg_pageToken, pageSize: arg_pageSize, query: arg_query).then(unittest.expectAsync(((api.ListCreativesResponse response) {
        checkListCreativesResponse(response);
      })));
    });

    unittest.test("method--stopWatching", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildStopWatchingCreativeRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.StopWatchingCreativeRequest.fromJson(json);
        checkStopWatchingCreativeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf(":stopWatching", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals(":stopWatching"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.stopWatching(arg_request, arg_accountId, arg_creativeId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildCreative();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));

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
        var resp = convert.JSON.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_accountId, arg_creativeId).then(unittest.expectAsync(((api.Creative response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--watch", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildWatchCreativeRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.WatchCreativeRequest.fromJson(json);
        checkWatchCreativeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf(":watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals(":watch"));
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, arg_accountId, arg_creativeId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

  });


  unittest.group("resource-AccountsCreativesDealAssociationsResourceApi", () {
    unittest.test("method--add", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesDealAssociationsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives.dealAssociations;
      var arg_request = buildAddDealAssociationRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AddDealAssociationRequest.fromJson(json);
        checkAddDealAssociationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/dealAssociations:add", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/dealAssociations:add"));
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.add(arg_request, arg_accountId, arg_creativeId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesDealAssociationsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives.dealAssociations;
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/dealAssociations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/dealAssociations"));
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
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDealAssociationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_creativeId, pageToken: arg_pageToken, pageSize: arg_pageSize, query: arg_query).then(unittest.expectAsync(((api.ListDealAssociationsResponse response) {
        checkListDealAssociationsResponse(response);
      })));
    });

    unittest.test("method--remove", () {

      var mock = new HttpServerMock();
      api.AccountsCreativesDealAssociationsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.creatives.dealAssociations;
      var arg_request = buildRemoveDealAssociationRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RemoveDealAssociationRequest.fromJson(json);
        checkRemoveDealAssociationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/dealAssociations:remove", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 24), unittest.equals("/dealAssociations:remove"));
        pathOffset += 24;

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.remove(arg_request, arg_accountId, arg_creativeId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

  });


}

