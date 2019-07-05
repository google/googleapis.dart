library googleapis_beta.adexchangebuyer2.v2beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

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

core.int buildCounterAbsoluteDateRange = 0;
buildAbsoluteDateRange() {
  var o = new api.AbsoluteDateRange();
  buildCounterAbsoluteDateRange++;
  if (buildCounterAbsoluteDateRange < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterAbsoluteDateRange--;
  return o;
}

checkAbsoluteDateRange(api.AbsoluteDateRange o) {
  buildCounterAbsoluteDateRange++;
  if (buildCounterAbsoluteDateRange < 3) {
    checkDate(o.endDate);
    checkDate(o.startDate);
  }
  buildCounterAbsoluteDateRange--;
}

core.int buildCounterAcceptProposalRequest = 0;
buildAcceptProposalRequest() {
  var o = new api.AcceptProposalRequest();
  buildCounterAcceptProposalRequest++;
  if (buildCounterAcceptProposalRequest < 3) {
    o.proposalRevision = "foo";
  }
  buildCounterAcceptProposalRequest--;
  return o;
}

checkAcceptProposalRequest(api.AcceptProposalRequest o) {
  buildCounterAcceptProposalRequest++;
  if (buildCounterAcceptProposalRequest < 3) {
    unittest.expect(o.proposalRevision, unittest.equals('foo'));
  }
  buildCounterAcceptProposalRequest--;
}

core.int buildCounterAdSize = 0;
buildAdSize() {
  var o = new api.AdSize();
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    o.height = "foo";
    o.sizeType = "foo";
    o.width = "foo";
  }
  buildCounterAdSize--;
  return o;
}

checkAdSize(api.AdSize o) {
  buildCounterAdSize++;
  if (buildCounterAdSize < 3) {
    unittest.expect(o.height, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals('foo'));
  }
  buildCounterAdSize--;
}

buildUnnamed5404() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdTechnologyProviders = 0;
buildAdTechnologyProviders() {
  var o = new api.AdTechnologyProviders();
  buildCounterAdTechnologyProviders++;
  if (buildCounterAdTechnologyProviders < 3) {
    o.detectedProviderIds = buildUnnamed5404();
    o.hasUnidentifiedProvider = true;
  }
  buildCounterAdTechnologyProviders--;
  return o;
}

checkAdTechnologyProviders(api.AdTechnologyProviders o) {
  buildCounterAdTechnologyProviders++;
  if (buildCounterAdTechnologyProviders < 3) {
    checkUnnamed5404(o.detectedProviderIds);
    unittest.expect(o.hasUnidentifiedProvider, unittest.isTrue);
  }
  buildCounterAdTechnologyProviders--;
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

core.int buildCounterAddNoteRequest = 0;
buildAddNoteRequest() {
  var o = new api.AddNoteRequest();
  buildCounterAddNoteRequest++;
  if (buildCounterAddNoteRequest < 3) {
    o.note = buildNote();
  }
  buildCounterAddNoteRequest--;
  return o;
}

checkAddNoteRequest(api.AddNoteRequest o) {
  buildCounterAddNoteRequest++;
  if (buildCounterAddNoteRequest < 3) {
    checkNote(o.note);
  }
  buildCounterAddNoteRequest--;
}

buildUnnamed5405() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5405(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppContext = 0;
buildAppContext() {
  var o = new api.AppContext();
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    o.appTypes = buildUnnamed5405();
  }
  buildCounterAppContext--;
  return o;
}

checkAppContext(api.AppContext o) {
  buildCounterAppContext++;
  if (buildCounterAppContext < 3) {
    checkUnnamed5405(o.appTypes);
  }
  buildCounterAppContext--;
}

buildUnnamed5406() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5406(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuctionContext = 0;
buildAuctionContext() {
  var o = new api.AuctionContext();
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    o.auctionTypes = buildUnnamed5406();
  }
  buildCounterAuctionContext--;
  return o;
}

checkAuctionContext(api.AuctionContext o) {
  buildCounterAuctionContext++;
  if (buildCounterAuctionContext < 3) {
    checkUnnamed5406(o.auctionTypes);
  }
  buildCounterAuctionContext--;
}

core.int buildCounterBidMetricsRow = 0;
buildBidMetricsRow() {
  var o = new api.BidMetricsRow();
  buildCounterBidMetricsRow++;
  if (buildCounterBidMetricsRow < 3) {
    o.bids = buildMetricValue();
    o.bidsInAuction = buildMetricValue();
    o.billedImpressions = buildMetricValue();
    o.impressionsWon = buildMetricValue();
    o.measurableImpressions = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.viewableImpressions = buildMetricValue();
  }
  buildCounterBidMetricsRow--;
  return o;
}

checkBidMetricsRow(api.BidMetricsRow o) {
  buildCounterBidMetricsRow++;
  if (buildCounterBidMetricsRow < 3) {
    checkMetricValue(o.bids);
    checkMetricValue(o.bidsInAuction);
    checkMetricValue(o.billedImpressions);
    checkMetricValue(o.impressionsWon);
    checkMetricValue(o.measurableImpressions);
    checkRowDimensions(o.rowDimensions);
    checkMetricValue(o.viewableImpressions);
  }
  buildCounterBidMetricsRow--;
}

core.int buildCounterBidResponseWithoutBidsStatusRow = 0;
buildBidResponseWithoutBidsStatusRow() {
  var o = new api.BidResponseWithoutBidsStatusRow();
  buildCounterBidResponseWithoutBidsStatusRow++;
  if (buildCounterBidResponseWithoutBidsStatusRow < 3) {
    o.impressionCount = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.status = "foo";
  }
  buildCounterBidResponseWithoutBidsStatusRow--;
  return o;
}

checkBidResponseWithoutBidsStatusRow(api.BidResponseWithoutBidsStatusRow o) {
  buildCounterBidResponseWithoutBidsStatusRow++;
  if (buildCounterBidResponseWithoutBidsStatusRow < 3) {
    checkMetricValue(o.impressionCount);
    checkRowDimensions(o.rowDimensions);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterBidResponseWithoutBidsStatusRow--;
}

core.int buildCounterBuyer = 0;
buildBuyer() {
  var o = new api.Buyer();
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    o.accountId = "foo";
  }
  buildCounterBuyer--;
  return o;
}

checkBuyer(api.Buyer o) {
  buildCounterBuyer++;
  if (buildCounterBuyer < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
  }
  buildCounterBuyer--;
}

core.int buildCounterCalloutStatusRow = 0;
buildCalloutStatusRow() {
  var o = new api.CalloutStatusRow();
  buildCounterCalloutStatusRow++;
  if (buildCounterCalloutStatusRow < 3) {
    o.calloutStatusId = 42;
    o.impressionCount = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterCalloutStatusRow--;
  return o;
}

checkCalloutStatusRow(api.CalloutStatusRow o) {
  buildCounterCalloutStatusRow++;
  if (buildCounterCalloutStatusRow < 3) {
    unittest.expect(o.calloutStatusId, unittest.equals(42));
    checkMetricValue(o.impressionCount);
    checkRowDimensions(o.rowDimensions);
  }
  buildCounterCalloutStatusRow--;
}

core.int buildCounterCancelNegotiationRequest = 0;
buildCancelNegotiationRequest() {
  var o = new api.CancelNegotiationRequest();
  buildCounterCancelNegotiationRequest++;
  if (buildCounterCancelNegotiationRequest < 3) {}
  buildCounterCancelNegotiationRequest--;
  return o;
}

checkCancelNegotiationRequest(api.CancelNegotiationRequest o) {
  buildCounterCancelNegotiationRequest++;
  if (buildCounterCancelNegotiationRequest < 3) {}
  buildCounterCancelNegotiationRequest--;
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
    o.partnerClientId = "foo";
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
    unittest.expect(o.partnerClientId, unittest.equals('foo'));
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

core.int buildCounterCompleteSetupRequest = 0;
buildCompleteSetupRequest() {
  var o = new api.CompleteSetupRequest();
  buildCounterCompleteSetupRequest++;
  if (buildCounterCompleteSetupRequest < 3) {}
  buildCounterCompleteSetupRequest--;
  return o;
}

checkCompleteSetupRequest(api.CompleteSetupRequest o) {
  buildCounterCompleteSetupRequest++;
  if (buildCounterCompleteSetupRequest < 3) {}
  buildCounterCompleteSetupRequest--;
}

core.int buildCounterContactInformation = 0;
buildContactInformation() {
  var o = new api.ContactInformation();
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    o.email = "foo";
    o.name = "foo";
  }
  buildCounterContactInformation--;
  return o;
}

checkContactInformation(api.ContactInformation o) {
  buildCounterContactInformation++;
  if (buildCounterContactInformation < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterContactInformation--;
}

buildUnnamed5407() {
  var o = new core.List<api.ServingContext>();
  o.add(buildServingContext());
  o.add(buildServingContext());
  return o;
}

checkUnnamed5407(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0]);
  checkServingContext(o[1]);
}

buildUnnamed5408() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5408(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCorrection = 0;
buildCorrection() {
  var o = new api.Correction();
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    o.contexts = buildUnnamed5407();
    o.details = buildUnnamed5408();
    o.type = "foo";
  }
  buildCounterCorrection--;
  return o;
}

checkCorrection(api.Correction o) {
  buildCounterCorrection++;
  if (buildCounterCorrection < 3) {
    checkUnnamed5407(o.contexts);
    checkUnnamed5408(o.details);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCorrection--;
}

buildUnnamed5409() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5409(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5410() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5410(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5411() {
  var o = new core.List<api.Correction>();
  o.add(buildCorrection());
  o.add(buildCorrection());
  return o;
}

checkUnnamed5411(core.List<api.Correction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCorrection(o[0]);
  checkCorrection(o[1]);
}

buildUnnamed5412() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5412(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5413() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5414() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5415() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5415(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5416() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5416(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed5417() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5417(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed5418() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5418(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5419() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5419(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5420() {
  var o = new core.List<api.ServingRestriction>();
  o.add(buildServingRestriction());
  o.add(buildServingRestriction());
  return o;
}

checkUnnamed5420(core.List<api.ServingRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingRestriction(o[0]);
  checkServingRestriction(o[1]);
}

buildUnnamed5421() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5421(core.List<core.int> o) {
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
    o.adTechnologyProviders = buildAdTechnologyProviders();
    o.advertiserName = "foo";
    o.agencyId = "foo";
    o.apiUpdateTime = "foo";
    o.attributes = buildUnnamed5409();
    o.clickThroughUrls = buildUnnamed5410();
    o.corrections = buildUnnamed5411();
    o.creativeId = "foo";
    o.dealsStatus = "foo";
    o.declaredClickThroughUrls = buildUnnamed5412();
    o.detectedAdvertiserIds = buildUnnamed5413();
    o.detectedDomains = buildUnnamed5414();
    o.detectedLanguages = buildUnnamed5415();
    o.detectedProductCategories = buildUnnamed5416();
    o.detectedSensitiveCategories = buildUnnamed5417();
    o.html = buildHtmlContent();
    o.impressionTrackingUrls = buildUnnamed5418();
    o.native = buildNativeContent();
    o.openAuctionStatus = "foo";
    o.restrictedCategories = buildUnnamed5419();
    o.servingRestrictions = buildUnnamed5420();
    o.vendorIds = buildUnnamed5421();
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
    checkAdTechnologyProviders(o.adTechnologyProviders);
    unittest.expect(o.advertiserName, unittest.equals('foo'));
    unittest.expect(o.agencyId, unittest.equals('foo'));
    unittest.expect(o.apiUpdateTime, unittest.equals('foo'));
    checkUnnamed5409(o.attributes);
    checkUnnamed5410(o.clickThroughUrls);
    checkUnnamed5411(o.corrections);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.dealsStatus, unittest.equals('foo'));
    checkUnnamed5412(o.declaredClickThroughUrls);
    checkUnnamed5413(o.detectedAdvertiserIds);
    checkUnnamed5414(o.detectedDomains);
    checkUnnamed5415(o.detectedLanguages);
    checkUnnamed5416(o.detectedProductCategories);
    checkUnnamed5417(o.detectedSensitiveCategories);
    checkHtmlContent(o.html);
    checkUnnamed5418(o.impressionTrackingUrls);
    checkNativeContent(o.native);
    unittest.expect(o.openAuctionStatus, unittest.equals('foo'));
    checkUnnamed5419(o.restrictedCategories);
    checkUnnamed5420(o.servingRestrictions);
    checkUnnamed5421(o.vendorIds);
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

buildUnnamed5422() {
  var o = new core.List<api.CreativeSpecification>();
  o.add(buildCreativeSpecification());
  o.add(buildCreativeSpecification());
  return o;
}

checkUnnamed5422(core.List<api.CreativeSpecification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeSpecification(o[0]);
  checkCreativeSpecification(o[1]);
}

core.int buildCounterCreativeRestrictions = 0;
buildCreativeRestrictions() {
  var o = new api.CreativeRestrictions();
  buildCounterCreativeRestrictions++;
  if (buildCounterCreativeRestrictions < 3) {
    o.creativeFormat = "foo";
    o.creativeSpecifications = buildUnnamed5422();
    o.skippableAdType = "foo";
  }
  buildCounterCreativeRestrictions--;
  return o;
}

checkCreativeRestrictions(api.CreativeRestrictions o) {
  buildCounterCreativeRestrictions++;
  if (buildCounterCreativeRestrictions < 3) {
    unittest.expect(o.creativeFormat, unittest.equals('foo'));
    checkUnnamed5422(o.creativeSpecifications);
    unittest.expect(o.skippableAdType, unittest.equals('foo'));
  }
  buildCounterCreativeRestrictions--;
}

buildUnnamed5423() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5423(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5424() {
  var o = new core.List<api.Size>();
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

checkUnnamed5424(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterCreativeSize = 0;
buildCreativeSize() {
  var o = new api.CreativeSize();
  buildCounterCreativeSize++;
  if (buildCounterCreativeSize < 3) {
    o.allowedFormats = buildUnnamed5423();
    o.companionSizes = buildUnnamed5424();
    o.creativeSizeType = "foo";
    o.nativeTemplate = "foo";
    o.size = buildSize();
    o.skippableAdType = "foo";
  }
  buildCounterCreativeSize--;
  return o;
}

checkCreativeSize(api.CreativeSize o) {
  buildCounterCreativeSize++;
  if (buildCounterCreativeSize < 3) {
    checkUnnamed5423(o.allowedFormats);
    checkUnnamed5424(o.companionSizes);
    unittest.expect(o.creativeSizeType, unittest.equals('foo'));
    unittest.expect(o.nativeTemplate, unittest.equals('foo'));
    checkSize(o.size);
    unittest.expect(o.skippableAdType, unittest.equals('foo'));
  }
  buildCounterCreativeSize--;
}

buildUnnamed5425() {
  var o = new core.List<api.AdSize>();
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

checkUnnamed5425(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.int buildCounterCreativeSpecification = 0;
buildCreativeSpecification() {
  var o = new api.CreativeSpecification();
  buildCounterCreativeSpecification++;
  if (buildCounterCreativeSpecification < 3) {
    o.creativeCompanionSizes = buildUnnamed5425();
    o.creativeSize = buildAdSize();
  }
  buildCounterCreativeSpecification--;
  return o;
}

checkCreativeSpecification(api.CreativeSpecification o) {
  buildCounterCreativeSpecification++;
  if (buildCounterCreativeSpecification < 3) {
    checkUnnamed5425(o.creativeCompanionSizes);
    checkAdSize(o.creativeSize);
  }
  buildCounterCreativeSpecification--;
}

core.int buildCounterCreativeStatusRow = 0;
buildCreativeStatusRow() {
  var o = new api.CreativeStatusRow();
  buildCounterCreativeStatusRow++;
  if (buildCounterCreativeStatusRow < 3) {
    o.bidCount = buildMetricValue();
    o.creativeStatusId = 42;
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterCreativeStatusRow--;
  return o;
}

checkCreativeStatusRow(api.CreativeStatusRow o) {
  buildCounterCreativeStatusRow++;
  if (buildCounterCreativeStatusRow < 3) {
    checkMetricValue(o.bidCount);
    unittest.expect(o.creativeStatusId, unittest.equals(42));
    checkRowDimensions(o.rowDimensions);
  }
  buildCounterCreativeStatusRow--;
}

buildUnnamed5426() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5426(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5427() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCriteriaTargeting = 0;
buildCriteriaTargeting() {
  var o = new api.CriteriaTargeting();
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    o.excludedCriteriaIds = buildUnnamed5426();
    o.targetedCriteriaIds = buildUnnamed5427();
  }
  buildCounterCriteriaTargeting--;
  return o;
}

checkCriteriaTargeting(api.CriteriaTargeting o) {
  buildCounterCriteriaTargeting++;
  if (buildCounterCriteriaTargeting < 3) {
    checkUnnamed5426(o.excludedCriteriaIds);
    checkUnnamed5427(o.targetedCriteriaIds);
  }
  buildCounterCriteriaTargeting--;
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

core.int buildCounterDayPart = 0;
buildDayPart() {
  var o = new api.DayPart();
  buildCounterDayPart++;
  if (buildCounterDayPart < 3) {
    o.dayOfWeek = "foo";
    o.endTime = buildTimeOfDay();
    o.startTime = buildTimeOfDay();
  }
  buildCounterDayPart--;
  return o;
}

checkDayPart(api.DayPart o) {
  buildCounterDayPart++;
  if (buildCounterDayPart < 3) {
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    checkTimeOfDay(o.endTime);
    checkTimeOfDay(o.startTime);
  }
  buildCounterDayPart--;
}

buildUnnamed5428() {
  var o = new core.List<api.DayPart>();
  o.add(buildDayPart());
  o.add(buildDayPart());
  return o;
}

checkUnnamed5428(core.List<api.DayPart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDayPart(o[0]);
  checkDayPart(o[1]);
}

core.int buildCounterDayPartTargeting = 0;
buildDayPartTargeting() {
  var o = new api.DayPartTargeting();
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    o.dayParts = buildUnnamed5428();
    o.timeZoneType = "foo";
  }
  buildCounterDayPartTargeting--;
  return o;
}

checkDayPartTargeting(api.DayPartTargeting o) {
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    checkUnnamed5428(o.dayParts);
    unittest.expect(o.timeZoneType, unittest.equals('foo'));
  }
  buildCounterDayPartTargeting--;
}

buildUnnamed5429() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed5429(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed5430() {
  var o = new core.List<api.TargetingCriteria>();
  o.add(buildTargetingCriteria());
  o.add(buildTargetingCriteria());
  return o;
}

checkUnnamed5430(core.List<api.TargetingCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingCriteria(o[0]);
  checkTargetingCriteria(o[1]);
}

core.int buildCounterDeal = 0;
buildDeal() {
  var o = new api.Deal();
  buildCounterDeal++;
  if (buildCounterDeal < 3) {
    o.availableEndTime = "foo";
    o.availableStartTime = "foo";
    o.buyerPrivateData = buildPrivateData();
    o.createProductId = "foo";
    o.createProductRevision = "foo";
    o.createTime = "foo";
    o.creativePreApprovalPolicy = "foo";
    o.creativeRestrictions = buildCreativeRestrictions();
    o.creativeSafeFrameCompatibility = "foo";
    o.dealId = "foo";
    o.dealServingMetadata = buildDealServingMetadata();
    o.dealTerms = buildDealTerms();
    o.deliveryControl = buildDeliveryControl();
    o.description = "foo";
    o.displayName = "foo";
    o.externalDealId = "foo";
    o.isSetupComplete = true;
    o.programmaticCreativeSource = "foo";
    o.proposalId = "foo";
    o.sellerContacts = buildUnnamed5429();
    o.syndicationProduct = "foo";
    o.targeting = buildMarketplaceTargeting();
    o.targetingCriterion = buildUnnamed5430();
    o.updateTime = "foo";
    o.webPropertyCode = "foo";
  }
  buildCounterDeal--;
  return o;
}

checkDeal(api.Deal o) {
  buildCounterDeal++;
  if (buildCounterDeal < 3) {
    unittest.expect(o.availableEndTime, unittest.equals('foo'));
    unittest.expect(o.availableStartTime, unittest.equals('foo'));
    checkPrivateData(o.buyerPrivateData);
    unittest.expect(o.createProductId, unittest.equals('foo'));
    unittest.expect(o.createProductRevision, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.creativePreApprovalPolicy, unittest.equals('foo'));
    checkCreativeRestrictions(o.creativeRestrictions);
    unittest.expect(o.creativeSafeFrameCompatibility, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    checkDealServingMetadata(o.dealServingMetadata);
    checkDealTerms(o.dealTerms);
    checkDeliveryControl(o.deliveryControl);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.externalDealId, unittest.equals('foo'));
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.programmaticCreativeSource, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    checkUnnamed5429(o.sellerContacts);
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkMarketplaceTargeting(o.targeting);
    checkUnnamed5430(o.targetingCriterion);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterDeal--;
}

core.int buildCounterDealPauseStatus = 0;
buildDealPauseStatus() {
  var o = new api.DealPauseStatus();
  buildCounterDealPauseStatus++;
  if (buildCounterDealPauseStatus < 3) {
    o.buyerPauseReason = "foo";
    o.firstPausedBy = "foo";
    o.hasBuyerPaused = true;
    o.hasSellerPaused = true;
    o.sellerPauseReason = "foo";
  }
  buildCounterDealPauseStatus--;
  return o;
}

checkDealPauseStatus(api.DealPauseStatus o) {
  buildCounterDealPauseStatus++;
  if (buildCounterDealPauseStatus < 3) {
    unittest.expect(o.buyerPauseReason, unittest.equals('foo'));
    unittest.expect(o.firstPausedBy, unittest.equals('foo'));
    unittest.expect(o.hasBuyerPaused, unittest.isTrue);
    unittest.expect(o.hasSellerPaused, unittest.isTrue);
    unittest.expect(o.sellerPauseReason, unittest.equals('foo'));
  }
  buildCounterDealPauseStatus--;
}

core.int buildCounterDealServingMetadata = 0;
buildDealServingMetadata() {
  var o = new api.DealServingMetadata();
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    o.dealPauseStatus = buildDealPauseStatus();
  }
  buildCounterDealServingMetadata--;
  return o;
}

checkDealServingMetadata(api.DealServingMetadata o) {
  buildCounterDealServingMetadata++;
  if (buildCounterDealServingMetadata < 3) {
    checkDealPauseStatus(o.dealPauseStatus);
  }
  buildCounterDealServingMetadata--;
}

core.int buildCounterDealTerms = 0;
buildDealTerms() {
  var o = new api.DealTerms();
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    o.brandingType = "foo";
    o.description = "foo";
    o.estimatedGrossSpend = buildPrice();
    o.estimatedImpressionsPerDay = "foo";
    o.guaranteedFixedPriceTerms = buildGuaranteedFixedPriceTerms();
    o.nonGuaranteedAuctionTerms = buildNonGuaranteedAuctionTerms();
    o.nonGuaranteedFixedPriceTerms = buildNonGuaranteedFixedPriceTerms();
    o.sellerTimeZone = "foo";
  }
  buildCounterDealTerms--;
  return o;
}

checkDealTerms(api.DealTerms o) {
  buildCounterDealTerms++;
  if (buildCounterDealTerms < 3) {
    unittest.expect(o.brandingType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkPrice(o.estimatedGrossSpend);
    unittest.expect(o.estimatedImpressionsPerDay, unittest.equals('foo'));
    checkGuaranteedFixedPriceTerms(o.guaranteedFixedPriceTerms);
    checkNonGuaranteedAuctionTerms(o.nonGuaranteedAuctionTerms);
    checkNonGuaranteedFixedPriceTerms(o.nonGuaranteedFixedPriceTerms);
    unittest.expect(o.sellerTimeZone, unittest.equals('foo'));
  }
  buildCounterDealTerms--;
}

buildUnnamed5431() {
  var o = new core.List<api.FrequencyCap>();
  o.add(buildFrequencyCap());
  o.add(buildFrequencyCap());
  return o;
}

checkUnnamed5431(core.List<api.FrequencyCap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrequencyCap(o[0]);
  checkFrequencyCap(o[1]);
}

core.int buildCounterDeliveryControl = 0;
buildDeliveryControl() {
  var o = new api.DeliveryControl();
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    o.creativeBlockingLevel = "foo";
    o.deliveryRateType = "foo";
    o.frequencyCaps = buildUnnamed5431();
  }
  buildCounterDeliveryControl--;
  return o;
}

checkDeliveryControl(api.DeliveryControl o) {
  buildCounterDeliveryControl++;
  if (buildCounterDeliveryControl < 3) {
    unittest.expect(o.creativeBlockingLevel, unittest.equals('foo'));
    unittest.expect(o.deliveryRateType, unittest.equals('foo'));
    checkUnnamed5431(o.frequencyCaps);
  }
  buildCounterDeliveryControl--;
}

buildUnnamed5432() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5432(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDisapproval = 0;
buildDisapproval() {
  var o = new api.Disapproval();
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    o.details = buildUnnamed5432();
    o.reason = "foo";
  }
  buildCounterDisapproval--;
  return o;
}

checkDisapproval(api.Disapproval o) {
  buildCounterDisapproval++;
  if (buildCounterDisapproval < 3) {
    checkUnnamed5432(o.details);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterDisapproval--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed5433() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5433(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5434() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5434(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5435() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5435(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5436() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5436(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5437() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5437(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterFilterSet = 0;
buildFilterSet() {
  var o = new api.FilterSet();
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    o.absoluteDateRange = buildAbsoluteDateRange();
    o.breakdownDimensions = buildUnnamed5433();
    o.creativeId = "foo";
    o.dealId = "foo";
    o.environment = "foo";
    o.formats = buildUnnamed5434();
    o.name = "foo";
    o.platforms = buildUnnamed5435();
    o.publisherIdentifiers = buildUnnamed5436();
    o.realtimeTimeRange = buildRealtimeTimeRange();
    o.relativeDateRange = buildRelativeDateRange();
    o.sellerNetworkIds = buildUnnamed5437();
    o.timeSeriesGranularity = "foo";
  }
  buildCounterFilterSet--;
  return o;
}

checkFilterSet(api.FilterSet o) {
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    checkAbsoluteDateRange(o.absoluteDateRange);
    checkUnnamed5433(o.breakdownDimensions);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.environment, unittest.equals('foo'));
    checkUnnamed5434(o.formats);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5435(o.platforms);
    checkUnnamed5436(o.publisherIdentifiers);
    checkRealtimeTimeRange(o.realtimeTimeRange);
    checkRelativeDateRange(o.relativeDateRange);
    checkUnnamed5437(o.sellerNetworkIds);
    unittest.expect(o.timeSeriesGranularity, unittest.equals('foo'));
  }
  buildCounterFilterSet--;
}

core.int buildCounterFilteredBidCreativeRow = 0;
buildFilteredBidCreativeRow() {
  var o = new api.FilteredBidCreativeRow();
  buildCounterFilteredBidCreativeRow++;
  if (buildCounterFilteredBidCreativeRow < 3) {
    o.bidCount = buildMetricValue();
    o.creativeId = "foo";
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterFilteredBidCreativeRow--;
  return o;
}

checkFilteredBidCreativeRow(api.FilteredBidCreativeRow o) {
  buildCounterFilteredBidCreativeRow++;
  if (buildCounterFilteredBidCreativeRow < 3) {
    checkMetricValue(o.bidCount);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    checkRowDimensions(o.rowDimensions);
  }
  buildCounterFilteredBidCreativeRow--;
}

core.int buildCounterFilteredBidDetailRow = 0;
buildFilteredBidDetailRow() {
  var o = new api.FilteredBidDetailRow();
  buildCounterFilteredBidDetailRow++;
  if (buildCounterFilteredBidDetailRow < 3) {
    o.bidCount = buildMetricValue();
    o.detailId = 42;
    o.rowDimensions = buildRowDimensions();
  }
  buildCounterFilteredBidDetailRow--;
  return o;
}

checkFilteredBidDetailRow(api.FilteredBidDetailRow o) {
  buildCounterFilteredBidDetailRow++;
  if (buildCounterFilteredBidDetailRow < 3) {
    checkMetricValue(o.bidCount);
    unittest.expect(o.detailId, unittest.equals(42));
    checkRowDimensions(o.rowDimensions);
  }
  buildCounterFilteredBidDetailRow--;
}

buildUnnamed5438() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5438(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5439() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5439(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirstPartyMobileApplicationTargeting = 0;
buildFirstPartyMobileApplicationTargeting() {
  var o = new api.FirstPartyMobileApplicationTargeting();
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    o.excludedAppIds = buildUnnamed5438();
    o.targetedAppIds = buildUnnamed5439();
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
  return o;
}

checkFirstPartyMobileApplicationTargeting(
    api.FirstPartyMobileApplicationTargeting o) {
  buildCounterFirstPartyMobileApplicationTargeting++;
  if (buildCounterFirstPartyMobileApplicationTargeting < 3) {
    checkUnnamed5438(o.excludedAppIds);
    checkUnnamed5439(o.targetedAppIds);
  }
  buildCounterFirstPartyMobileApplicationTargeting--;
}

core.int buildCounterFrequencyCap = 0;
buildFrequencyCap() {
  var o = new api.FrequencyCap();
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    o.maxImpressions = 42;
    o.numTimeUnits = 42;
    o.timeUnitType = "foo";
  }
  buildCounterFrequencyCap--;
  return o;
}

checkFrequencyCap(api.FrequencyCap o) {
  buildCounterFrequencyCap++;
  if (buildCounterFrequencyCap < 3) {
    unittest.expect(o.maxImpressions, unittest.equals(42));
    unittest.expect(o.numTimeUnits, unittest.equals(42));
    unittest.expect(o.timeUnitType, unittest.equals('foo'));
  }
  buildCounterFrequencyCap--;
}

buildUnnamed5440() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed5440(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterGuaranteedFixedPriceTerms = 0;
buildGuaranteedFixedPriceTerms() {
  var o = new api.GuaranteedFixedPriceTerms();
  buildCounterGuaranteedFixedPriceTerms++;
  if (buildCounterGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed5440();
    o.guaranteedImpressions = "foo";
    o.guaranteedLooks = "foo";
    o.minimumDailyLooks = "foo";
  }
  buildCounterGuaranteedFixedPriceTerms--;
  return o;
}

checkGuaranteedFixedPriceTerms(api.GuaranteedFixedPriceTerms o) {
  buildCounterGuaranteedFixedPriceTerms++;
  if (buildCounterGuaranteedFixedPriceTerms < 3) {
    checkUnnamed5440(o.fixedPrices);
    unittest.expect(o.guaranteedImpressions, unittest.equals('foo'));
    unittest.expect(o.guaranteedLooks, unittest.equals('foo'));
    unittest.expect(o.minimumDailyLooks, unittest.equals('foo'));
  }
  buildCounterGuaranteedFixedPriceTerms--;
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

core.int buildCounterImpressionMetricsRow = 0;
buildImpressionMetricsRow() {
  var o = new api.ImpressionMetricsRow();
  buildCounterImpressionMetricsRow++;
  if (buildCounterImpressionMetricsRow < 3) {
    o.availableImpressions = buildMetricValue();
    o.bidRequests = buildMetricValue();
    o.inventoryMatches = buildMetricValue();
    o.responsesWithBids = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.successfulResponses = buildMetricValue();
  }
  buildCounterImpressionMetricsRow--;
  return o;
}

checkImpressionMetricsRow(api.ImpressionMetricsRow o) {
  buildCounterImpressionMetricsRow++;
  if (buildCounterImpressionMetricsRow < 3) {
    checkMetricValue(o.availableImpressions);
    checkMetricValue(o.bidRequests);
    checkMetricValue(o.inventoryMatches);
    checkMetricValue(o.responsesWithBids);
    checkRowDimensions(o.rowDimensions);
    checkMetricValue(o.successfulResponses);
  }
  buildCounterImpressionMetricsRow--;
}

buildUnnamed5441() {
  var o = new core.List<api.AdSize>();
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

checkUnnamed5441(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

buildUnnamed5442() {
  var o = new core.List<api.AdSize>();
  o.add(buildAdSize());
  o.add(buildAdSize());
  return o;
}

checkUnnamed5442(core.List<api.AdSize> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSize(o[0]);
  checkAdSize(o[1]);
}

core.int buildCounterInventorySizeTargeting = 0;
buildInventorySizeTargeting() {
  var o = new api.InventorySizeTargeting();
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    o.excludedInventorySizes = buildUnnamed5441();
    o.targetedInventorySizes = buildUnnamed5442();
  }
  buildCounterInventorySizeTargeting--;
  return o;
}

checkInventorySizeTargeting(api.InventorySizeTargeting o) {
  buildCounterInventorySizeTargeting++;
  if (buildCounterInventorySizeTargeting < 3) {
    checkUnnamed5441(o.excludedInventorySizes);
    checkUnnamed5442(o.targetedInventorySizes);
  }
  buildCounterInventorySizeTargeting--;
}

buildUnnamed5443() {
  var o = new core.List<api.BidMetricsRow>();
  o.add(buildBidMetricsRow());
  o.add(buildBidMetricsRow());
  return o;
}

checkUnnamed5443(core.List<api.BidMetricsRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBidMetricsRow(o[0]);
  checkBidMetricsRow(o[1]);
}

core.int buildCounterListBidMetricsResponse = 0;
buildListBidMetricsResponse() {
  var o = new api.ListBidMetricsResponse();
  buildCounterListBidMetricsResponse++;
  if (buildCounterListBidMetricsResponse < 3) {
    o.bidMetricsRows = buildUnnamed5443();
    o.nextPageToken = "foo";
  }
  buildCounterListBidMetricsResponse--;
  return o;
}

checkListBidMetricsResponse(api.ListBidMetricsResponse o) {
  buildCounterListBidMetricsResponse++;
  if (buildCounterListBidMetricsResponse < 3) {
    checkUnnamed5443(o.bidMetricsRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBidMetricsResponse--;
}

buildUnnamed5444() {
  var o = new core.List<api.CalloutStatusRow>();
  o.add(buildCalloutStatusRow());
  o.add(buildCalloutStatusRow());
  return o;
}

checkUnnamed5444(core.List<api.CalloutStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusRow(o[0]);
  checkCalloutStatusRow(o[1]);
}

core.int buildCounterListBidResponseErrorsResponse = 0;
buildListBidResponseErrorsResponse() {
  var o = new api.ListBidResponseErrorsResponse();
  buildCounterListBidResponseErrorsResponse++;
  if (buildCounterListBidResponseErrorsResponse < 3) {
    o.calloutStatusRows = buildUnnamed5444();
    o.nextPageToken = "foo";
  }
  buildCounterListBidResponseErrorsResponse--;
  return o;
}

checkListBidResponseErrorsResponse(api.ListBidResponseErrorsResponse o) {
  buildCounterListBidResponseErrorsResponse++;
  if (buildCounterListBidResponseErrorsResponse < 3) {
    checkUnnamed5444(o.calloutStatusRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBidResponseErrorsResponse--;
}

buildUnnamed5445() {
  var o = new core.List<api.BidResponseWithoutBidsStatusRow>();
  o.add(buildBidResponseWithoutBidsStatusRow());
  o.add(buildBidResponseWithoutBidsStatusRow());
  return o;
}

checkUnnamed5445(core.List<api.BidResponseWithoutBidsStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBidResponseWithoutBidsStatusRow(o[0]);
  checkBidResponseWithoutBidsStatusRow(o[1]);
}

core.int buildCounterListBidResponsesWithoutBidsResponse = 0;
buildListBidResponsesWithoutBidsResponse() {
  var o = new api.ListBidResponsesWithoutBidsResponse();
  buildCounterListBidResponsesWithoutBidsResponse++;
  if (buildCounterListBidResponsesWithoutBidsResponse < 3) {
    o.bidResponseWithoutBidsStatusRows = buildUnnamed5445();
    o.nextPageToken = "foo";
  }
  buildCounterListBidResponsesWithoutBidsResponse--;
  return o;
}

checkListBidResponsesWithoutBidsResponse(
    api.ListBidResponsesWithoutBidsResponse o) {
  buildCounterListBidResponsesWithoutBidsResponse++;
  if (buildCounterListBidResponsesWithoutBidsResponse < 3) {
    checkUnnamed5445(o.bidResponseWithoutBidsStatusRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListBidResponsesWithoutBidsResponse--;
}

buildUnnamed5446() {
  var o = new core.List<api.ClientUserInvitation>();
  o.add(buildClientUserInvitation());
  o.add(buildClientUserInvitation());
  return o;
}

checkUnnamed5446(core.List<api.ClientUserInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUserInvitation(o[0]);
  checkClientUserInvitation(o[1]);
}

core.int buildCounterListClientUserInvitationsResponse = 0;
buildListClientUserInvitationsResponse() {
  var o = new api.ListClientUserInvitationsResponse();
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    o.invitations = buildUnnamed5446();
    o.nextPageToken = "foo";
  }
  buildCounterListClientUserInvitationsResponse--;
  return o;
}

checkListClientUserInvitationsResponse(
    api.ListClientUserInvitationsResponse o) {
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    checkUnnamed5446(o.invitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClientUserInvitationsResponse--;
}

buildUnnamed5447() {
  var o = new core.List<api.ClientUser>();
  o.add(buildClientUser());
  o.add(buildClientUser());
  return o;
}

checkUnnamed5447(core.List<api.ClientUser> o) {
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
    o.users = buildUnnamed5447();
  }
  buildCounterListClientUsersResponse--;
  return o;
}

checkListClientUsersResponse(api.ListClientUsersResponse o) {
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5447(o.users);
  }
  buildCounterListClientUsersResponse--;
}

buildUnnamed5448() {
  var o = new core.List<api.Client>();
  o.add(buildClient());
  o.add(buildClient());
  return o;
}

checkUnnamed5448(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0]);
  checkClient(o[1]);
}

core.int buildCounterListClientsResponse = 0;
buildListClientsResponse() {
  var o = new api.ListClientsResponse();
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    o.clients = buildUnnamed5448();
    o.nextPageToken = "foo";
  }
  buildCounterListClientsResponse--;
  return o;
}

checkListClientsResponse(api.ListClientsResponse o) {
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    checkUnnamed5448(o.clients);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClientsResponse--;
}

buildUnnamed5449() {
  var o = new core.List<api.FilteredBidCreativeRow>();
  o.add(buildFilteredBidCreativeRow());
  o.add(buildFilteredBidCreativeRow());
  return o;
}

checkUnnamed5449(core.List<api.FilteredBidCreativeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredBidCreativeRow(o[0]);
  checkFilteredBidCreativeRow(o[1]);
}

core.int buildCounterListCreativeStatusBreakdownByCreativeResponse = 0;
buildListCreativeStatusBreakdownByCreativeResponse() {
  var o = new api.ListCreativeStatusBreakdownByCreativeResponse();
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    o.filteredBidCreativeRows = buildUnnamed5449();
    o.nextPageToken = "foo";
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
  return o;
}

checkListCreativeStatusBreakdownByCreativeResponse(
    api.ListCreativeStatusBreakdownByCreativeResponse o) {
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    checkUnnamed5449(o.filteredBidCreativeRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
}

buildUnnamed5450() {
  var o = new core.List<api.FilteredBidDetailRow>();
  o.add(buildFilteredBidDetailRow());
  o.add(buildFilteredBidDetailRow());
  return o;
}

checkUnnamed5450(core.List<api.FilteredBidDetailRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredBidDetailRow(o[0]);
  checkFilteredBidDetailRow(o[1]);
}

core.int buildCounterListCreativeStatusBreakdownByDetailResponse = 0;
buildListCreativeStatusBreakdownByDetailResponse() {
  var o = new api.ListCreativeStatusBreakdownByDetailResponse();
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    o.detailType = "foo";
    o.filteredBidDetailRows = buildUnnamed5450();
    o.nextPageToken = "foo";
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
  return o;
}

checkListCreativeStatusBreakdownByDetailResponse(
    api.ListCreativeStatusBreakdownByDetailResponse o) {
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    unittest.expect(o.detailType, unittest.equals('foo'));
    checkUnnamed5450(o.filteredBidDetailRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
}

buildUnnamed5451() {
  var o = new core.List<api.Creative>();
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

checkUnnamed5451(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterListCreativesResponse = 0;
buildListCreativesResponse() {
  var o = new api.ListCreativesResponse();
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    o.creatives = buildUnnamed5451();
    o.nextPageToken = "foo";
  }
  buildCounterListCreativesResponse--;
  return o;
}

checkListCreativesResponse(api.ListCreativesResponse o) {
  buildCounterListCreativesResponse++;
  if (buildCounterListCreativesResponse < 3) {
    checkUnnamed5451(o.creatives);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCreativesResponse--;
}

buildUnnamed5452() {
  var o = new core.List<api.CreativeDealAssociation>();
  o.add(buildCreativeDealAssociation());
  o.add(buildCreativeDealAssociation());
  return o;
}

checkUnnamed5452(core.List<api.CreativeDealAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeDealAssociation(o[0]);
  checkCreativeDealAssociation(o[1]);
}

core.int buildCounterListDealAssociationsResponse = 0;
buildListDealAssociationsResponse() {
  var o = new api.ListDealAssociationsResponse();
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    o.associations = buildUnnamed5452();
    o.nextPageToken = "foo";
  }
  buildCounterListDealAssociationsResponse--;
  return o;
}

checkListDealAssociationsResponse(api.ListDealAssociationsResponse o) {
  buildCounterListDealAssociationsResponse++;
  if (buildCounterListDealAssociationsResponse < 3) {
    checkUnnamed5452(o.associations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDealAssociationsResponse--;
}

buildUnnamed5453() {
  var o = new core.List<api.FilterSet>();
  o.add(buildFilterSet());
  o.add(buildFilterSet());
  return o;
}

checkUnnamed5453(core.List<api.FilterSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSet(o[0]);
  checkFilterSet(o[1]);
}

core.int buildCounterListFilterSetsResponse = 0;
buildListFilterSetsResponse() {
  var o = new api.ListFilterSetsResponse();
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    o.filterSets = buildUnnamed5453();
    o.nextPageToken = "foo";
  }
  buildCounterListFilterSetsResponse--;
  return o;
}

checkListFilterSetsResponse(api.ListFilterSetsResponse o) {
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    checkUnnamed5453(o.filterSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFilterSetsResponse--;
}

buildUnnamed5454() {
  var o = new core.List<api.CalloutStatusRow>();
  o.add(buildCalloutStatusRow());
  o.add(buildCalloutStatusRow());
  return o;
}

checkUnnamed5454(core.List<api.CalloutStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusRow(o[0]);
  checkCalloutStatusRow(o[1]);
}

core.int buildCounterListFilteredBidRequestsResponse = 0;
buildListFilteredBidRequestsResponse() {
  var o = new api.ListFilteredBidRequestsResponse();
  buildCounterListFilteredBidRequestsResponse++;
  if (buildCounterListFilteredBidRequestsResponse < 3) {
    o.calloutStatusRows = buildUnnamed5454();
    o.nextPageToken = "foo";
  }
  buildCounterListFilteredBidRequestsResponse--;
  return o;
}

checkListFilteredBidRequestsResponse(api.ListFilteredBidRequestsResponse o) {
  buildCounterListFilteredBidRequestsResponse++;
  if (buildCounterListFilteredBidRequestsResponse < 3) {
    checkUnnamed5454(o.calloutStatusRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFilteredBidRequestsResponse--;
}

buildUnnamed5455() {
  var o = new core.List<api.CreativeStatusRow>();
  o.add(buildCreativeStatusRow());
  o.add(buildCreativeStatusRow());
  return o;
}

checkUnnamed5455(core.List<api.CreativeStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusRow(o[0]);
  checkCreativeStatusRow(o[1]);
}

core.int buildCounterListFilteredBidsResponse = 0;
buildListFilteredBidsResponse() {
  var o = new api.ListFilteredBidsResponse();
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    o.creativeStatusRows = buildUnnamed5455();
    o.nextPageToken = "foo";
  }
  buildCounterListFilteredBidsResponse--;
  return o;
}

checkListFilteredBidsResponse(api.ListFilteredBidsResponse o) {
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    checkUnnamed5455(o.creativeStatusRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFilteredBidsResponse--;
}

buildUnnamed5456() {
  var o = new core.List<api.ImpressionMetricsRow>();
  o.add(buildImpressionMetricsRow());
  o.add(buildImpressionMetricsRow());
  return o;
}

checkUnnamed5456(core.List<api.ImpressionMetricsRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImpressionMetricsRow(o[0]);
  checkImpressionMetricsRow(o[1]);
}

core.int buildCounterListImpressionMetricsResponse = 0;
buildListImpressionMetricsResponse() {
  var o = new api.ListImpressionMetricsResponse();
  buildCounterListImpressionMetricsResponse++;
  if (buildCounterListImpressionMetricsResponse < 3) {
    o.impressionMetricsRows = buildUnnamed5456();
    o.nextPageToken = "foo";
  }
  buildCounterListImpressionMetricsResponse--;
  return o;
}

checkListImpressionMetricsResponse(api.ListImpressionMetricsResponse o) {
  buildCounterListImpressionMetricsResponse++;
  if (buildCounterListImpressionMetricsResponse < 3) {
    checkUnnamed5456(o.impressionMetricsRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListImpressionMetricsResponse--;
}

buildUnnamed5457() {
  var o = new core.List<api.CreativeStatusRow>();
  o.add(buildCreativeStatusRow());
  o.add(buildCreativeStatusRow());
  return o;
}

checkUnnamed5457(core.List<api.CreativeStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusRow(o[0]);
  checkCreativeStatusRow(o[1]);
}

core.int buildCounterListLosingBidsResponse = 0;
buildListLosingBidsResponse() {
  var o = new api.ListLosingBidsResponse();
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    o.creativeStatusRows = buildUnnamed5457();
    o.nextPageToken = "foo";
  }
  buildCounterListLosingBidsResponse--;
  return o;
}

checkListLosingBidsResponse(api.ListLosingBidsResponse o) {
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    checkUnnamed5457(o.creativeStatusRows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLosingBidsResponse--;
}

buildUnnamed5458() {
  var o = new core.List<api.NonBillableWinningBidStatusRow>();
  o.add(buildNonBillableWinningBidStatusRow());
  o.add(buildNonBillableWinningBidStatusRow());
  return o;
}

checkUnnamed5458(core.List<api.NonBillableWinningBidStatusRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonBillableWinningBidStatusRow(o[0]);
  checkNonBillableWinningBidStatusRow(o[1]);
}

core.int buildCounterListNonBillableWinningBidsResponse = 0;
buildListNonBillableWinningBidsResponse() {
  var o = new api.ListNonBillableWinningBidsResponse();
  buildCounterListNonBillableWinningBidsResponse++;
  if (buildCounterListNonBillableWinningBidsResponse < 3) {
    o.nextPageToken = "foo";
    o.nonBillableWinningBidStatusRows = buildUnnamed5458();
  }
  buildCounterListNonBillableWinningBidsResponse--;
  return o;
}

checkListNonBillableWinningBidsResponse(
    api.ListNonBillableWinningBidsResponse o) {
  buildCounterListNonBillableWinningBidsResponse++;
  if (buildCounterListNonBillableWinningBidsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5458(o.nonBillableWinningBidStatusRows);
  }
  buildCounterListNonBillableWinningBidsResponse--;
}

buildUnnamed5459() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed5459(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsResponse = 0;
buildListProductsResponse() {
  var o = new api.ListProductsResponse();
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    o.nextPageToken = "foo";
    o.products = buildUnnamed5459();
  }
  buildCounterListProductsResponse--;
  return o;
}

checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5459(o.products);
  }
  buildCounterListProductsResponse--;
}

buildUnnamed5460() {
  var o = new core.List<api.Proposal>();
  o.add(buildProposal());
  o.add(buildProposal());
  return o;
}

checkUnnamed5460(core.List<api.Proposal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProposal(o[0]);
  checkProposal(o[1]);
}

core.int buildCounterListProposalsResponse = 0;
buildListProposalsResponse() {
  var o = new api.ListProposalsResponse();
  buildCounterListProposalsResponse++;
  if (buildCounterListProposalsResponse < 3) {
    o.nextPageToken = "foo";
    o.proposals = buildUnnamed5460();
  }
  buildCounterListProposalsResponse--;
  return o;
}

checkListProposalsResponse(api.ListProposalsResponse o) {
  buildCounterListProposalsResponse++;
  if (buildCounterListProposalsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5460(o.proposals);
  }
  buildCounterListProposalsResponse--;
}

buildUnnamed5461() {
  var o = new core.List<api.PublisherProfile>();
  o.add(buildPublisherProfile());
  o.add(buildPublisherProfile());
  return o;
}

checkUnnamed5461(core.List<api.PublisherProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublisherProfile(o[0]);
  checkPublisherProfile(o[1]);
}

core.int buildCounterListPublisherProfilesResponse = 0;
buildListPublisherProfilesResponse() {
  var o = new api.ListPublisherProfilesResponse();
  buildCounterListPublisherProfilesResponse++;
  if (buildCounterListPublisherProfilesResponse < 3) {
    o.nextPageToken = "foo";
    o.publisherProfiles = buildUnnamed5461();
  }
  buildCounterListPublisherProfilesResponse--;
  return o;
}

checkListPublisherProfilesResponse(api.ListPublisherProfilesResponse o) {
  buildCounterListPublisherProfilesResponse++;
  if (buildCounterListPublisherProfilesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5461(o.publisherProfiles);
  }
  buildCounterListPublisherProfilesResponse--;
}

buildUnnamed5462() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5462(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterLocationContext = 0;
buildLocationContext() {
  var o = new api.LocationContext();
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    o.geoCriteriaIds = buildUnnamed5462();
  }
  buildCounterLocationContext--;
  return o;
}

checkLocationContext(api.LocationContext o) {
  buildCounterLocationContext++;
  if (buildCounterLocationContext < 3) {
    checkUnnamed5462(o.geoCriteriaIds);
  }
  buildCounterLocationContext--;
}

core.int buildCounterMarketplaceTargeting = 0;
buildMarketplaceTargeting() {
  var o = new api.MarketplaceTargeting();
  buildCounterMarketplaceTargeting++;
  if (buildCounterMarketplaceTargeting < 3) {
    o.geoTargeting = buildCriteriaTargeting();
    o.inventorySizeTargeting = buildInventorySizeTargeting();
    o.placementTargeting = buildPlacementTargeting();
    o.technologyTargeting = buildTechnologyTargeting();
    o.videoTargeting = buildVideoTargeting();
  }
  buildCounterMarketplaceTargeting--;
  return o;
}

checkMarketplaceTargeting(api.MarketplaceTargeting o) {
  buildCounterMarketplaceTargeting++;
  if (buildCounterMarketplaceTargeting < 3) {
    checkCriteriaTargeting(o.geoTargeting);
    checkInventorySizeTargeting(o.inventorySizeTargeting);
    checkPlacementTargeting(o.placementTargeting);
    checkTechnologyTargeting(o.technologyTargeting);
    checkVideoTargeting(o.videoTargeting);
  }
  buildCounterMarketplaceTargeting--;
}

core.int buildCounterMetricValue = 0;
buildMetricValue() {
  var o = new api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.value = "foo";
    o.variance = "foo";
  }
  buildCounterMetricValue--;
  return o;
}

checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.variance, unittest.equals('foo'));
  }
  buildCounterMetricValue--;
}

core.int buildCounterMobileApplicationTargeting = 0;
buildMobileApplicationTargeting() {
  var o = new api.MobileApplicationTargeting();
  buildCounterMobileApplicationTargeting++;
  if (buildCounterMobileApplicationTargeting < 3) {
    o.firstPartyTargeting = buildFirstPartyMobileApplicationTargeting();
  }
  buildCounterMobileApplicationTargeting--;
  return o;
}

checkMobileApplicationTargeting(api.MobileApplicationTargeting o) {
  buildCounterMobileApplicationTargeting++;
  if (buildCounterMobileApplicationTargeting < 3) {
    checkFirstPartyMobileApplicationTargeting(o.firstPartyTargeting);
  }
  buildCounterMobileApplicationTargeting--;
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

core.int buildCounterNonBillableWinningBidStatusRow = 0;
buildNonBillableWinningBidStatusRow() {
  var o = new api.NonBillableWinningBidStatusRow();
  buildCounterNonBillableWinningBidStatusRow++;
  if (buildCounterNonBillableWinningBidStatusRow < 3) {
    o.bidCount = buildMetricValue();
    o.rowDimensions = buildRowDimensions();
    o.status = "foo";
  }
  buildCounterNonBillableWinningBidStatusRow--;
  return o;
}

checkNonBillableWinningBidStatusRow(api.NonBillableWinningBidStatusRow o) {
  buildCounterNonBillableWinningBidStatusRow++;
  if (buildCounterNonBillableWinningBidStatusRow < 3) {
    checkMetricValue(o.bidCount);
    checkRowDimensions(o.rowDimensions);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterNonBillableWinningBidStatusRow--;
}

buildUnnamed5463() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed5463(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterNonGuaranteedAuctionTerms = 0;
buildNonGuaranteedAuctionTerms() {
  var o = new api.NonGuaranteedAuctionTerms();
  buildCounterNonGuaranteedAuctionTerms++;
  if (buildCounterNonGuaranteedAuctionTerms < 3) {
    o.autoOptimizePrivateAuction = true;
    o.reservePricesPerBuyer = buildUnnamed5463();
  }
  buildCounterNonGuaranteedAuctionTerms--;
  return o;
}

checkNonGuaranteedAuctionTerms(api.NonGuaranteedAuctionTerms o) {
  buildCounterNonGuaranteedAuctionTerms++;
  if (buildCounterNonGuaranteedAuctionTerms < 3) {
    unittest.expect(o.autoOptimizePrivateAuction, unittest.isTrue);
    checkUnnamed5463(o.reservePricesPerBuyer);
  }
  buildCounterNonGuaranteedAuctionTerms--;
}

buildUnnamed5464() {
  var o = new core.List<api.PricePerBuyer>();
  o.add(buildPricePerBuyer());
  o.add(buildPricePerBuyer());
  return o;
}

checkUnnamed5464(core.List<api.PricePerBuyer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricePerBuyer(o[0]);
  checkPricePerBuyer(o[1]);
}

core.int buildCounterNonGuaranteedFixedPriceTerms = 0;
buildNonGuaranteedFixedPriceTerms() {
  var o = new api.NonGuaranteedFixedPriceTerms();
  buildCounterNonGuaranteedFixedPriceTerms++;
  if (buildCounterNonGuaranteedFixedPriceTerms < 3) {
    o.fixedPrices = buildUnnamed5464();
  }
  buildCounterNonGuaranteedFixedPriceTerms--;
  return o;
}

checkNonGuaranteedFixedPriceTerms(api.NonGuaranteedFixedPriceTerms o) {
  buildCounterNonGuaranteedFixedPriceTerms++;
  if (buildCounterNonGuaranteedFixedPriceTerms < 3) {
    checkUnnamed5464(o.fixedPrices);
  }
  buildCounterNonGuaranteedFixedPriceTerms--;
}

core.int buildCounterNote = 0;
buildNote() {
  var o = new api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.createTime = "foo";
    o.creatorRole = "foo";
    o.note = "foo";
    o.noteId = "foo";
    o.proposalRevision = "foo";
  }
  buildCounterNote--;
  return o;
}

checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.creatorRole, unittest.equals('foo'));
    unittest.expect(o.note, unittest.equals('foo'));
    unittest.expect(o.noteId, unittest.equals('foo'));
    unittest.expect(o.proposalRevision, unittest.equals('foo'));
  }
  buildCounterNote--;
}

core.int buildCounterOperatingSystemTargeting = 0;
buildOperatingSystemTargeting() {
  var o = new api.OperatingSystemTargeting();
  buildCounterOperatingSystemTargeting++;
  if (buildCounterOperatingSystemTargeting < 3) {
    o.operatingSystemCriteria = buildCriteriaTargeting();
    o.operatingSystemVersionCriteria = buildCriteriaTargeting();
  }
  buildCounterOperatingSystemTargeting--;
  return o;
}

checkOperatingSystemTargeting(api.OperatingSystemTargeting o) {
  buildCounterOperatingSystemTargeting++;
  if (buildCounterOperatingSystemTargeting < 3) {
    checkCriteriaTargeting(o.operatingSystemCriteria);
    checkCriteriaTargeting(o.operatingSystemVersionCriteria);
  }
  buildCounterOperatingSystemTargeting--;
}

core.int buildCounterPauseProposalRequest = 0;
buildPauseProposalRequest() {
  var o = new api.PauseProposalRequest();
  buildCounterPauseProposalRequest++;
  if (buildCounterPauseProposalRequest < 3) {
    o.reason = "foo";
  }
  buildCounterPauseProposalRequest--;
  return o;
}

checkPauseProposalRequest(api.PauseProposalRequest o) {
  buildCounterPauseProposalRequest++;
  if (buildCounterPauseProposalRequest < 3) {
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterPauseProposalRequest--;
}

core.int buildCounterPlacementTargeting = 0;
buildPlacementTargeting() {
  var o = new api.PlacementTargeting();
  buildCounterPlacementTargeting++;
  if (buildCounterPlacementTargeting < 3) {
    o.mobileApplicationTargeting = buildMobileApplicationTargeting();
    o.urlTargeting = buildUrlTargeting();
  }
  buildCounterPlacementTargeting--;
  return o;
}

checkPlacementTargeting(api.PlacementTargeting o) {
  buildCounterPlacementTargeting++;
  if (buildCounterPlacementTargeting < 3) {
    checkMobileApplicationTargeting(o.mobileApplicationTargeting);
    checkUrlTargeting(o.urlTargeting);
  }
  buildCounterPlacementTargeting--;
}

buildUnnamed5465() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlatformContext = 0;
buildPlatformContext() {
  var o = new api.PlatformContext();
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    o.platforms = buildUnnamed5465();
  }
  buildCounterPlatformContext--;
  return o;
}

checkPlatformContext(api.PlatformContext o) {
  buildCounterPlatformContext++;
  if (buildCounterPlatformContext < 3) {
    checkUnnamed5465(o.platforms);
  }
  buildCounterPlatformContext--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amount = buildMoney();
    o.pricingType = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    checkMoney(o.amount);
    unittest.expect(o.pricingType, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

buildUnnamed5466() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5466(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPricePerBuyer = 0;
buildPricePerBuyer() {
  var o = new api.PricePerBuyer();
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    o.advertiserIds = buildUnnamed5466();
    o.buyer = buildBuyer();
    o.price = buildPrice();
  }
  buildCounterPricePerBuyer--;
  return o;
}

checkPricePerBuyer(api.PricePerBuyer o) {
  buildCounterPricePerBuyer++;
  if (buildCounterPricePerBuyer < 3) {
    checkUnnamed5466(o.advertiserIds);
    checkBuyer(o.buyer);
    checkPrice(o.price);
  }
  buildCounterPricePerBuyer--;
}

core.int buildCounterPrivateData = 0;
buildPrivateData() {
  var o = new api.PrivateData();
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    o.referenceId = "foo";
  }
  buildCounterPrivateData--;
  return o;
}

checkPrivateData(api.PrivateData o) {
  buildCounterPrivateData++;
  if (buildCounterPrivateData < 3) {
    unittest.expect(o.referenceId, unittest.equals('foo'));
  }
  buildCounterPrivateData--;
}

buildUnnamed5467() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed5467(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed5468() {
  var o = new core.List<api.TargetingCriteria>();
  o.add(buildTargetingCriteria());
  o.add(buildTargetingCriteria());
  return o;
}

checkUnnamed5468(core.List<api.TargetingCriteria> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingCriteria(o[0]);
  checkTargetingCriteria(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.availableEndTime = "foo";
    o.availableStartTime = "foo";
    o.createTime = "foo";
    o.creatorContacts = buildUnnamed5467();
    o.displayName = "foo";
    o.hasCreatorSignedOff = true;
    o.productId = "foo";
    o.productRevision = "foo";
    o.publisherProfileId = "foo";
    o.seller = buildSeller();
    o.syndicationProduct = "foo";
    o.targetingCriterion = buildUnnamed5468();
    o.terms = buildDealTerms();
    o.updateTime = "foo";
    o.webPropertyCode = "foo";
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.availableEndTime, unittest.equals('foo'));
    unittest.expect(o.availableStartTime, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed5467(o.creatorContacts);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.hasCreatorSignedOff, unittest.isTrue);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productRevision, unittest.equals('foo'));
    unittest.expect(o.publisherProfileId, unittest.equals('foo'));
    checkSeller(o.seller);
    unittest.expect(o.syndicationProduct, unittest.equals('foo'));
    checkUnnamed5468(o.targetingCriterion);
    checkDealTerms(o.terms);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.webPropertyCode, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

buildUnnamed5469() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed5469(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

buildUnnamed5470() {
  var o = new core.List<api.Deal>();
  o.add(buildDeal());
  o.add(buildDeal());
  return o;
}

checkUnnamed5470(core.List<api.Deal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeal(o[0]);
  checkDeal(o[1]);
}

buildUnnamed5471() {
  var o = new core.List<api.Note>();
  o.add(buildNote());
  o.add(buildNote());
  return o;
}

checkUnnamed5471(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

buildUnnamed5472() {
  var o = new core.List<api.ContactInformation>();
  o.add(buildContactInformation());
  o.add(buildContactInformation());
  return o;
}

checkUnnamed5472(core.List<api.ContactInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContactInformation(o[0]);
  checkContactInformation(o[1]);
}

core.int buildCounterProposal = 0;
buildProposal() {
  var o = new api.Proposal();
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    o.billedBuyer = buildBuyer();
    o.buyer = buildBuyer();
    o.buyerContacts = buildUnnamed5469();
    o.buyerPrivateData = buildPrivateData();
    o.deals = buildUnnamed5470();
    o.displayName = "foo";
    o.isRenegotiating = true;
    o.isSetupComplete = true;
    o.lastUpdaterOrCommentorRole = "foo";
    o.notes = buildUnnamed5471();
    o.originatorRole = "foo";
    o.privateAuctionId = "foo";
    o.proposalId = "foo";
    o.proposalRevision = "foo";
    o.proposalState = "foo";
    o.seller = buildSeller();
    o.sellerContacts = buildUnnamed5472();
    o.updateTime = "foo";
  }
  buildCounterProposal--;
  return o;
}

checkProposal(api.Proposal o) {
  buildCounterProposal++;
  if (buildCounterProposal < 3) {
    checkBuyer(o.billedBuyer);
    checkBuyer(o.buyer);
    checkUnnamed5469(o.buyerContacts);
    checkPrivateData(o.buyerPrivateData);
    checkUnnamed5470(o.deals);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.isRenegotiating, unittest.isTrue);
    unittest.expect(o.isSetupComplete, unittest.isTrue);
    unittest.expect(o.lastUpdaterOrCommentorRole, unittest.equals('foo'));
    checkUnnamed5471(o.notes);
    unittest.expect(o.originatorRole, unittest.equals('foo'));
    unittest.expect(o.privateAuctionId, unittest.equals('foo'));
    unittest.expect(o.proposalId, unittest.equals('foo'));
    unittest.expect(o.proposalRevision, unittest.equals('foo'));
    unittest.expect(o.proposalState, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed5472(o.sellerContacts);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterProposal--;
}

buildUnnamed5473() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5474() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5474(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublisherProfile = 0;
buildPublisherProfile() {
  var o = new api.PublisherProfile();
  buildCounterPublisherProfile++;
  if (buildCounterPublisherProfile < 3) {
    o.audienceDescription = "foo";
    o.buyerPitchStatement = "foo";
    o.directDealsContact = "foo";
    o.displayName = "foo";
    o.domains = buildUnnamed5473();
    o.googlePlusUrl = "foo";
    o.logoUrl = "foo";
    o.mediaKitUrl = "foo";
    o.overview = "foo";
    o.programmaticDealsContact = "foo";
    o.publisherProfileId = "foo";
    o.rateCardInfoUrl = "foo";
    o.samplePageUrl = "foo";
    o.seller = buildSeller();
    o.topHeadlines = buildUnnamed5474();
  }
  buildCounterPublisherProfile--;
  return o;
}

checkPublisherProfile(api.PublisherProfile o) {
  buildCounterPublisherProfile++;
  if (buildCounterPublisherProfile < 3) {
    unittest.expect(o.audienceDescription, unittest.equals('foo'));
    unittest.expect(o.buyerPitchStatement, unittest.equals('foo'));
    unittest.expect(o.directDealsContact, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5473(o.domains);
    unittest.expect(o.googlePlusUrl, unittest.equals('foo'));
    unittest.expect(o.logoUrl, unittest.equals('foo'));
    unittest.expect(o.mediaKitUrl, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    unittest.expect(o.programmaticDealsContact, unittest.equals('foo'));
    unittest.expect(o.publisherProfileId, unittest.equals('foo'));
    unittest.expect(o.rateCardInfoUrl, unittest.equals('foo'));
    unittest.expect(o.samplePageUrl, unittest.equals('foo'));
    checkSeller(o.seller);
    checkUnnamed5474(o.topHeadlines);
  }
  buildCounterPublisherProfile--;
}

core.int buildCounterRealtimeTimeRange = 0;
buildRealtimeTimeRange() {
  var o = new api.RealtimeTimeRange();
  buildCounterRealtimeTimeRange++;
  if (buildCounterRealtimeTimeRange < 3) {
    o.startTimestamp = "foo";
  }
  buildCounterRealtimeTimeRange--;
  return o;
}

checkRealtimeTimeRange(api.RealtimeTimeRange o) {
  buildCounterRealtimeTimeRange++;
  if (buildCounterRealtimeTimeRange < 3) {
    unittest.expect(o.startTimestamp, unittest.equals('foo'));
  }
  buildCounterRealtimeTimeRange--;
}

core.int buildCounterRelativeDateRange = 0;
buildRelativeDateRange() {
  var o = new api.RelativeDateRange();
  buildCounterRelativeDateRange++;
  if (buildCounterRelativeDateRange < 3) {
    o.durationDays = 42;
    o.offsetDays = 42;
  }
  buildCounterRelativeDateRange--;
  return o;
}

checkRelativeDateRange(api.RelativeDateRange o) {
  buildCounterRelativeDateRange++;
  if (buildCounterRelativeDateRange < 3) {
    unittest.expect(o.durationDays, unittest.equals(42));
    unittest.expect(o.offsetDays, unittest.equals(42));
  }
  buildCounterRelativeDateRange--;
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

core.int buildCounterResumeProposalRequest = 0;
buildResumeProposalRequest() {
  var o = new api.ResumeProposalRequest();
  buildCounterResumeProposalRequest++;
  if (buildCounterResumeProposalRequest < 3) {}
  buildCounterResumeProposalRequest--;
  return o;
}

checkResumeProposalRequest(api.ResumeProposalRequest o) {
  buildCounterResumeProposalRequest++;
  if (buildCounterResumeProposalRequest < 3) {}
  buildCounterResumeProposalRequest--;
}

core.int buildCounterRowDimensions = 0;
buildRowDimensions() {
  var o = new api.RowDimensions();
  buildCounterRowDimensions++;
  if (buildCounterRowDimensions < 3) {
    o.publisherIdentifier = "foo";
    o.timeInterval = buildTimeInterval();
  }
  buildCounterRowDimensions--;
  return o;
}

checkRowDimensions(api.RowDimensions o) {
  buildCounterRowDimensions++;
  if (buildCounterRowDimensions < 3) {
    unittest.expect(o.publisherIdentifier, unittest.equals('foo'));
    checkTimeInterval(o.timeInterval);
  }
  buildCounterRowDimensions--;
}

buildUnnamed5475() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSecurityContext = 0;
buildSecurityContext() {
  var o = new api.SecurityContext();
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    o.securities = buildUnnamed5475();
  }
  buildCounterSecurityContext--;
  return o;
}

checkSecurityContext(api.SecurityContext o) {
  buildCounterSecurityContext++;
  if (buildCounterSecurityContext < 3) {
    checkUnnamed5475(o.securities);
  }
  buildCounterSecurityContext--;
}

core.int buildCounterSeller = 0;
buildSeller() {
  var o = new api.Seller();
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    o.accountId = "foo";
    o.subAccountId = "foo";
  }
  buildCounterSeller--;
  return o;
}

checkSeller(api.Seller o) {
  buildCounterSeller++;
  if (buildCounterSeller < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.subAccountId, unittest.equals('foo'));
  }
  buildCounterSeller--;
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

buildUnnamed5476() {
  var o = new core.List<api.ServingContext>();
  o.add(buildServingContext());
  o.add(buildServingContext());
  return o;
}

checkUnnamed5476(core.List<api.ServingContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServingContext(o[0]);
  checkServingContext(o[1]);
}

buildUnnamed5477() {
  var o = new core.List<api.Disapproval>();
  o.add(buildDisapproval());
  o.add(buildDisapproval());
  return o;
}

checkUnnamed5477(core.List<api.Disapproval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisapproval(o[0]);
  checkDisapproval(o[1]);
}

core.int buildCounterServingRestriction = 0;
buildServingRestriction() {
  var o = new api.ServingRestriction();
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    o.contexts = buildUnnamed5476();
    o.disapproval = buildDisapproval();
    o.disapprovalReasons = buildUnnamed5477();
    o.status = "foo";
  }
  buildCounterServingRestriction--;
  return o;
}

checkServingRestriction(api.ServingRestriction o) {
  buildCounterServingRestriction++;
  if (buildCounterServingRestriction < 3) {
    checkUnnamed5476(o.contexts);
    checkDisapproval(o.disapproval);
    checkUnnamed5477(o.disapprovalReasons);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterServingRestriction--;
}

core.int buildCounterSize = 0;
buildSize() {
  var o = new api.Size();
  buildCounterSize++;
  if (buildCounterSize < 3) {
    o.height = 42;
    o.width = 42;
  }
  buildCounterSize--;
  return o;
}

checkSize(api.Size o) {
  buildCounterSize++;
  if (buildCounterSize < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterSize--;
}

core.int buildCounterStopWatchingCreativeRequest = 0;
buildStopWatchingCreativeRequest() {
  var o = new api.StopWatchingCreativeRequest();
  buildCounterStopWatchingCreativeRequest++;
  if (buildCounterStopWatchingCreativeRequest < 3) {}
  buildCounterStopWatchingCreativeRequest--;
  return o;
}

checkStopWatchingCreativeRequest(api.StopWatchingCreativeRequest o) {
  buildCounterStopWatchingCreativeRequest++;
  if (buildCounterStopWatchingCreativeRequest < 3) {}
  buildCounterStopWatchingCreativeRequest--;
}

buildUnnamed5478() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed5478(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

buildUnnamed5479() {
  var o = new core.List<api.TargetingValue>();
  o.add(buildTargetingValue());
  o.add(buildTargetingValue());
  return o;
}

checkUnnamed5479(core.List<api.TargetingValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingValue(o[0]);
  checkTargetingValue(o[1]);
}

core.int buildCounterTargetingCriteria = 0;
buildTargetingCriteria() {
  var o = new api.TargetingCriteria();
  buildCounterTargetingCriteria++;
  if (buildCounterTargetingCriteria < 3) {
    o.exclusions = buildUnnamed5478();
    o.inclusions = buildUnnamed5479();
    o.key = "foo";
  }
  buildCounterTargetingCriteria--;
  return o;
}

checkTargetingCriteria(api.TargetingCriteria o) {
  buildCounterTargetingCriteria++;
  if (buildCounterTargetingCriteria < 3) {
    checkUnnamed5478(o.exclusions);
    checkUnnamed5479(o.inclusions);
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterTargetingCriteria--;
}

core.int buildCounterTargetingValue = 0;
buildTargetingValue() {
  var o = new api.TargetingValue();
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    o.creativeSizeValue = buildCreativeSize();
    o.dayPartTargetingValue = buildDayPartTargeting();
    o.longValue = "foo";
    o.stringValue = "foo";
  }
  buildCounterTargetingValue--;
  return o;
}

checkTargetingValue(api.TargetingValue o) {
  buildCounterTargetingValue++;
  if (buildCounterTargetingValue < 3) {
    checkCreativeSize(o.creativeSizeValue);
    checkDayPartTargeting(o.dayPartTargetingValue);
    unittest.expect(o.longValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterTargetingValue--;
}

core.int buildCounterTechnologyTargeting = 0;
buildTechnologyTargeting() {
  var o = new api.TechnologyTargeting();
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    o.deviceCapabilityTargeting = buildCriteriaTargeting();
    o.deviceCategoryTargeting = buildCriteriaTargeting();
    o.operatingSystemTargeting = buildOperatingSystemTargeting();
  }
  buildCounterTechnologyTargeting--;
  return o;
}

checkTechnologyTargeting(api.TechnologyTargeting o) {
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    checkCriteriaTargeting(o.deviceCapabilityTargeting);
    checkCriteriaTargeting(o.deviceCategoryTargeting);
    checkOperatingSystemTargeting(o.operatingSystemTargeting);
  }
  buildCounterTechnologyTargeting--;
}

core.int buildCounterTimeInterval = 0;
buildTimeInterval() {
  var o = new api.TimeInterval();
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeInterval--;
  return o;
}

checkTimeInterval(api.TimeInterval o) {
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeInterval--;
}

core.int buildCounterTimeOfDay = 0;
buildTimeOfDay() {
  var o = new api.TimeOfDay();
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

checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

buildUnnamed5480() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5480(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5481() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5481(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUrlTargeting = 0;
buildUrlTargeting() {
  var o = new api.UrlTargeting();
  buildCounterUrlTargeting++;
  if (buildCounterUrlTargeting < 3) {
    o.excludedUrls = buildUnnamed5480();
    o.targetedUrls = buildUnnamed5481();
  }
  buildCounterUrlTargeting--;
  return o;
}

checkUrlTargeting(api.UrlTargeting o) {
  buildCounterUrlTargeting++;
  if (buildCounterUrlTargeting < 3) {
    checkUnnamed5480(o.excludedUrls);
    checkUnnamed5481(o.targetedUrls);
  }
  buildCounterUrlTargeting--;
}

core.int buildCounterVideoContent = 0;
buildVideoContent() {
  var o = new api.VideoContent();
  buildCounterVideoContent++;
  if (buildCounterVideoContent < 3) {
    o.videoUrl = "foo";
    o.videoVastXml = "foo";
  }
  buildCounterVideoContent--;
  return o;
}

checkVideoContent(api.VideoContent o) {
  buildCounterVideoContent++;
  if (buildCounterVideoContent < 3) {
    unittest.expect(o.videoUrl, unittest.equals('foo'));
    unittest.expect(o.videoVastXml, unittest.equals('foo'));
  }
  buildCounterVideoContent--;
}

buildUnnamed5482() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5482(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5483() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5483(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVideoTargeting = 0;
buildVideoTargeting() {
  var o = new api.VideoTargeting();
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    o.excludedPositionTypes = buildUnnamed5482();
    o.targetedPositionTypes = buildUnnamed5483();
  }
  buildCounterVideoTargeting--;
  return o;
}

checkVideoTargeting(api.VideoTargeting o) {
  buildCounterVideoTargeting++;
  if (buildCounterVideoTargeting < 3) {
    checkUnnamed5482(o.excludedPositionTypes);
    checkUnnamed5483(o.targetedPositionTypes);
  }
  buildCounterVideoTargeting--;
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
  unittest.group("obj-schema-AbsoluteDateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildAbsoluteDateRange();
      var od = new api.AbsoluteDateRange.fromJson(o.toJson());
      checkAbsoluteDateRange(od);
    });
  });

  unittest.group("obj-schema-AcceptProposalRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceptProposalRequest();
      var od = new api.AcceptProposalRequest.fromJson(o.toJson());
      checkAcceptProposalRequest(od);
    });
  });

  unittest.group("obj-schema-AdSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdSize();
      var od = new api.AdSize.fromJson(o.toJson());
      checkAdSize(od);
    });
  });

  unittest.group("obj-schema-AdTechnologyProviders", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdTechnologyProviders();
      var od = new api.AdTechnologyProviders.fromJson(o.toJson());
      checkAdTechnologyProviders(od);
    });
  });

  unittest.group("obj-schema-AddDealAssociationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDealAssociationRequest();
      var od = new api.AddDealAssociationRequest.fromJson(o.toJson());
      checkAddDealAssociationRequest(od);
    });
  });

  unittest.group("obj-schema-AddNoteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddNoteRequest();
      var od = new api.AddNoteRequest.fromJson(o.toJson());
      checkAddNoteRequest(od);
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

  unittest.group("obj-schema-BidMetricsRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildBidMetricsRow();
      var od = new api.BidMetricsRow.fromJson(o.toJson());
      checkBidMetricsRow(od);
    });
  });

  unittest.group("obj-schema-BidResponseWithoutBidsStatusRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildBidResponseWithoutBidsStatusRow();
      var od = new api.BidResponseWithoutBidsStatusRow.fromJson(o.toJson());
      checkBidResponseWithoutBidsStatusRow(od);
    });
  });

  unittest.group("obj-schema-Buyer", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuyer();
      var od = new api.Buyer.fromJson(o.toJson());
      checkBuyer(od);
    });
  });

  unittest.group("obj-schema-CalloutStatusRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildCalloutStatusRow();
      var od = new api.CalloutStatusRow.fromJson(o.toJson());
      checkCalloutStatusRow(od);
    });
  });

  unittest.group("obj-schema-CancelNegotiationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelNegotiationRequest();
      var od = new api.CancelNegotiationRequest.fromJson(o.toJson());
      checkCancelNegotiationRequest(od);
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

  unittest.group("obj-schema-CompleteSetupRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompleteSetupRequest();
      var od = new api.CompleteSetupRequest.fromJson(o.toJson());
      checkCompleteSetupRequest(od);
    });
  });

  unittest.group("obj-schema-ContactInformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactInformation();
      var od = new api.ContactInformation.fromJson(o.toJson());
      checkContactInformation(od);
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

  unittest.group("obj-schema-CreativeRestrictions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeRestrictions();
      var od = new api.CreativeRestrictions.fromJson(o.toJson());
      checkCreativeRestrictions(od);
    });
  });

  unittest.group("obj-schema-CreativeSize", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeSize();
      var od = new api.CreativeSize.fromJson(o.toJson());
      checkCreativeSize(od);
    });
  });

  unittest.group("obj-schema-CreativeSpecification", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeSpecification();
      var od = new api.CreativeSpecification.fromJson(o.toJson());
      checkCreativeSpecification(od);
    });
  });

  unittest.group("obj-schema-CreativeStatusRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeStatusRow();
      var od = new api.CreativeStatusRow.fromJson(o.toJson());
      checkCreativeStatusRow(od);
    });
  });

  unittest.group("obj-schema-CriteriaTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildCriteriaTargeting();
      var od = new api.CriteriaTargeting.fromJson(o.toJson());
      checkCriteriaTargeting(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DayPart", () {
    unittest.test("to-json--from-json", () {
      var o = buildDayPart();
      var od = new api.DayPart.fromJson(o.toJson());
      checkDayPart(od);
    });
  });

  unittest.group("obj-schema-DayPartTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildDayPartTargeting();
      var od = new api.DayPartTargeting.fromJson(o.toJson());
      checkDayPartTargeting(od);
    });
  });

  unittest.group("obj-schema-Deal", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeal();
      var od = new api.Deal.fromJson(o.toJson());
      checkDeal(od);
    });
  });

  unittest.group("obj-schema-DealPauseStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealPauseStatus();
      var od = new api.DealPauseStatus.fromJson(o.toJson());
      checkDealPauseStatus(od);
    });
  });

  unittest.group("obj-schema-DealServingMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealServingMetadata();
      var od = new api.DealServingMetadata.fromJson(o.toJson());
      checkDealServingMetadata(od);
    });
  });

  unittest.group("obj-schema-DealTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildDealTerms();
      var od = new api.DealTerms.fromJson(o.toJson());
      checkDealTerms(od);
    });
  });

  unittest.group("obj-schema-DeliveryControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryControl();
      var od = new api.DeliveryControl.fromJson(o.toJson());
      checkDeliveryControl(od);
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

  unittest.group("obj-schema-FilterSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilterSet();
      var od = new api.FilterSet.fromJson(o.toJson());
      checkFilterSet(od);
    });
  });

  unittest.group("obj-schema-FilteredBidCreativeRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilteredBidCreativeRow();
      var od = new api.FilteredBidCreativeRow.fromJson(o.toJson());
      checkFilteredBidCreativeRow(od);
    });
  });

  unittest.group("obj-schema-FilteredBidDetailRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilteredBidDetailRow();
      var od = new api.FilteredBidDetailRow.fromJson(o.toJson());
      checkFilteredBidDetailRow(od);
    });
  });

  unittest.group("obj-schema-FirstPartyMobileApplicationTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirstPartyMobileApplicationTargeting();
      var od =
          new api.FirstPartyMobileApplicationTargeting.fromJson(o.toJson());
      checkFirstPartyMobileApplicationTargeting(od);
    });
  });

  unittest.group("obj-schema-FrequencyCap", () {
    unittest.test("to-json--from-json", () {
      var o = buildFrequencyCap();
      var od = new api.FrequencyCap.fromJson(o.toJson());
      checkFrequencyCap(od);
    });
  });

  unittest.group("obj-schema-GuaranteedFixedPriceTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuaranteedFixedPriceTerms();
      var od = new api.GuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkGuaranteedFixedPriceTerms(od);
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

  unittest.group("obj-schema-ImpressionMetricsRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildImpressionMetricsRow();
      var od = new api.ImpressionMetricsRow.fromJson(o.toJson());
      checkImpressionMetricsRow(od);
    });
  });

  unittest.group("obj-schema-InventorySizeTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildInventorySizeTargeting();
      var od = new api.InventorySizeTargeting.fromJson(o.toJson());
      checkInventorySizeTargeting(od);
    });
  });

  unittest.group("obj-schema-ListBidMetricsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBidMetricsResponse();
      var od = new api.ListBidMetricsResponse.fromJson(o.toJson());
      checkListBidMetricsResponse(od);
    });
  });

  unittest.group("obj-schema-ListBidResponseErrorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBidResponseErrorsResponse();
      var od = new api.ListBidResponseErrorsResponse.fromJson(o.toJson());
      checkListBidResponseErrorsResponse(od);
    });
  });

  unittest.group("obj-schema-ListBidResponsesWithoutBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBidResponsesWithoutBidsResponse();
      var od = new api.ListBidResponsesWithoutBidsResponse.fromJson(o.toJson());
      checkListBidResponsesWithoutBidsResponse(od);
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

  unittest.group("obj-schema-ListCreativeStatusBreakdownByCreativeResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildListCreativeStatusBreakdownByCreativeResponse();
      var od = new api.ListCreativeStatusBreakdownByCreativeResponse.fromJson(
          o.toJson());
      checkListCreativeStatusBreakdownByCreativeResponse(od);
    });
  });

  unittest.group("obj-schema-ListCreativeStatusBreakdownByDetailResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCreativeStatusBreakdownByDetailResponse();
      var od = new api.ListCreativeStatusBreakdownByDetailResponse.fromJson(
          o.toJson());
      checkListCreativeStatusBreakdownByDetailResponse(od);
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

  unittest.group("obj-schema-ListFilterSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilterSetsResponse();
      var od = new api.ListFilterSetsResponse.fromJson(o.toJson());
      checkListFilterSetsResponse(od);
    });
  });

  unittest.group("obj-schema-ListFilteredBidRequestsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilteredBidRequestsResponse();
      var od = new api.ListFilteredBidRequestsResponse.fromJson(o.toJson());
      checkListFilteredBidRequestsResponse(od);
    });
  });

  unittest.group("obj-schema-ListFilteredBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilteredBidsResponse();
      var od = new api.ListFilteredBidsResponse.fromJson(o.toJson());
      checkListFilteredBidsResponse(od);
    });
  });

  unittest.group("obj-schema-ListImpressionMetricsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListImpressionMetricsResponse();
      var od = new api.ListImpressionMetricsResponse.fromJson(o.toJson());
      checkListImpressionMetricsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLosingBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLosingBidsResponse();
      var od = new api.ListLosingBidsResponse.fromJson(o.toJson());
      checkListLosingBidsResponse(od);
    });
  });

  unittest.group("obj-schema-ListNonBillableWinningBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNonBillableWinningBidsResponse();
      var od = new api.ListNonBillableWinningBidsResponse.fromJson(o.toJson());
      checkListNonBillableWinningBidsResponse(od);
    });
  });

  unittest.group("obj-schema-ListProductsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProductsResponse();
      var od = new api.ListProductsResponse.fromJson(o.toJson());
      checkListProductsResponse(od);
    });
  });

  unittest.group("obj-schema-ListProposalsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProposalsResponse();
      var od = new api.ListProposalsResponse.fromJson(o.toJson());
      checkListProposalsResponse(od);
    });
  });

  unittest.group("obj-schema-ListPublisherProfilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPublisherProfilesResponse();
      var od = new api.ListPublisherProfilesResponse.fromJson(o.toJson());
      checkListPublisherProfilesResponse(od);
    });
  });

  unittest.group("obj-schema-LocationContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationContext();
      var od = new api.LocationContext.fromJson(o.toJson());
      checkLocationContext(od);
    });
  });

  unittest.group("obj-schema-MarketplaceTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildMarketplaceTargeting();
      var od = new api.MarketplaceTargeting.fromJson(o.toJson());
      checkMarketplaceTargeting(od);
    });
  });

  unittest.group("obj-schema-MetricValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricValue();
      var od = new api.MetricValue.fromJson(o.toJson());
      checkMetricValue(od);
    });
  });

  unittest.group("obj-schema-MobileApplicationTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileApplicationTargeting();
      var od = new api.MobileApplicationTargeting.fromJson(o.toJson());
      checkMobileApplicationTargeting(od);
    });
  });

  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });

  unittest.group("obj-schema-NativeContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildNativeContent();
      var od = new api.NativeContent.fromJson(o.toJson());
      checkNativeContent(od);
    });
  });

  unittest.group("obj-schema-NonBillableWinningBidStatusRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonBillableWinningBidStatusRow();
      var od = new api.NonBillableWinningBidStatusRow.fromJson(o.toJson());
      checkNonBillableWinningBidStatusRow(od);
    });
  });

  unittest.group("obj-schema-NonGuaranteedAuctionTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonGuaranteedAuctionTerms();
      var od = new api.NonGuaranteedAuctionTerms.fromJson(o.toJson());
      checkNonGuaranteedAuctionTerms(od);
    });
  });

  unittest.group("obj-schema-NonGuaranteedFixedPriceTerms", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonGuaranteedFixedPriceTerms();
      var od = new api.NonGuaranteedFixedPriceTerms.fromJson(o.toJson());
      checkNonGuaranteedFixedPriceTerms(od);
    });
  });

  unittest.group("obj-schema-Note", () {
    unittest.test("to-json--from-json", () {
      var o = buildNote();
      var od = new api.Note.fromJson(o.toJson());
      checkNote(od);
    });
  });

  unittest.group("obj-schema-OperatingSystemTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperatingSystemTargeting();
      var od = new api.OperatingSystemTargeting.fromJson(o.toJson());
      checkOperatingSystemTargeting(od);
    });
  });

  unittest.group("obj-schema-PauseProposalRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPauseProposalRequest();
      var od = new api.PauseProposalRequest.fromJson(o.toJson());
      checkPauseProposalRequest(od);
    });
  });

  unittest.group("obj-schema-PlacementTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlacementTargeting();
      var od = new api.PlacementTargeting.fromJson(o.toJson());
      checkPlacementTargeting(od);
    });
  });

  unittest.group("obj-schema-PlatformContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlatformContext();
      var od = new api.PlatformContext.fromJson(o.toJson());
      checkPlatformContext(od);
    });
  });

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-PricePerBuyer", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricePerBuyer();
      var od = new api.PricePerBuyer.fromJson(o.toJson());
      checkPricePerBuyer(od);
    });
  });

  unittest.group("obj-schema-PrivateData", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrivateData();
      var od = new api.PrivateData.fromJson(o.toJson());
      checkPrivateData(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-Proposal", () {
    unittest.test("to-json--from-json", () {
      var o = buildProposal();
      var od = new api.Proposal.fromJson(o.toJson());
      checkProposal(od);
    });
  });

  unittest.group("obj-schema-PublisherProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublisherProfile();
      var od = new api.PublisherProfile.fromJson(o.toJson());
      checkPublisherProfile(od);
    });
  });

  unittest.group("obj-schema-RealtimeTimeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildRealtimeTimeRange();
      var od = new api.RealtimeTimeRange.fromJson(o.toJson());
      checkRealtimeTimeRange(od);
    });
  });

  unittest.group("obj-schema-RelativeDateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelativeDateRange();
      var od = new api.RelativeDateRange.fromJson(o.toJson());
      checkRelativeDateRange(od);
    });
  });

  unittest.group("obj-schema-RemoveDealAssociationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDealAssociationRequest();
      var od = new api.RemoveDealAssociationRequest.fromJson(o.toJson());
      checkRemoveDealAssociationRequest(od);
    });
  });

  unittest.group("obj-schema-ResumeProposalRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildResumeProposalRequest();
      var od = new api.ResumeProposalRequest.fromJson(o.toJson());
      checkResumeProposalRequest(od);
    });
  });

  unittest.group("obj-schema-RowDimensions", () {
    unittest.test("to-json--from-json", () {
      var o = buildRowDimensions();
      var od = new api.RowDimensions.fromJson(o.toJson());
      checkRowDimensions(od);
    });
  });

  unittest.group("obj-schema-SecurityContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecurityContext();
      var od = new api.SecurityContext.fromJson(o.toJson());
      checkSecurityContext(od);
    });
  });

  unittest.group("obj-schema-Seller", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeller();
      var od = new api.Seller.fromJson(o.toJson());
      checkSeller(od);
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

  unittest.group("obj-schema-Size", () {
    unittest.test("to-json--from-json", () {
      var o = buildSize();
      var od = new api.Size.fromJson(o.toJson());
      checkSize(od);
    });
  });

  unittest.group("obj-schema-StopWatchingCreativeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildStopWatchingCreativeRequest();
      var od = new api.StopWatchingCreativeRequest.fromJson(o.toJson());
      checkStopWatchingCreativeRequest(od);
    });
  });

  unittest.group("obj-schema-TargetingCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingCriteria();
      var od = new api.TargetingCriteria.fromJson(o.toJson());
      checkTargetingCriteria(od);
    });
  });

  unittest.group("obj-schema-TargetingValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetingValue();
      var od = new api.TargetingValue.fromJson(o.toJson());
      checkTargetingValue(od);
    });
  });

  unittest.group("obj-schema-TechnologyTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildTechnologyTargeting();
      var od = new api.TechnologyTargeting.fromJson(o.toJson());
      checkTechnologyTargeting(od);
    });
  });

  unittest.group("obj-schema-TimeInterval", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeInterval();
      var od = new api.TimeInterval.fromJson(o.toJson());
      checkTimeInterval(od);
    });
  });

  unittest.group("obj-schema-TimeOfDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeOfDay();
      var od = new api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group("obj-schema-UrlTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlTargeting();
      var od = new api.UrlTargeting.fromJson(o.toJson());
      checkUrlTargeting(od);
    });
  });

  unittest.group("obj-schema-VideoContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoContent();
      var od = new api.VideoContent.fromJson(o.toJson());
      checkVideoContent(od);
    });
  });

  unittest.group("obj-schema-VideoTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideoTargeting();
      var od = new api.VideoTargeting.fromJson(o.toJson());
      checkVideoTargeting(od);
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
      api.AccountsClientsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_request = buildClient();
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Client.fromJson(json);
        checkClient(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/clients"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClient(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        var resp = convert.json.encode(buildClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_clientAccountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClient(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_partnerClientId = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/clients"));
        pathOffset += 8;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["partnerClientId"].first,
            unittest.equals(arg_partnerClientId));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListClientsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              pageToken: arg_pageToken,
              partnerClientId: arg_partnerClientId,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClientsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsClientsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients;
      var arg_request = buildClient();
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Client.fromJson(json);
        checkClient(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));

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
        var resp = convert.json.encode(buildClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_clientAccountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClient(response);
      })));
    });
  });

  unittest.group("resource-AccountsClientsInvitationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AccountsClientsInvitationsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients.invitations;
      var arg_request = buildClientUserInvitation();
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClientUserInvitation.fromJson(json);
        checkClientUserInvitation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/invitations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/invitations"));
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
        var resp = convert.json.encode(buildClientUserInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_accountId, arg_clientAccountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClientUserInvitation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsClientsInvitationsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients.invitations;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_invitationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/invitations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/invitations/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_invitationId"));

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
        var resp = convert.json.encode(buildClientUserInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_clientAccountId, arg_invitationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClientUserInvitation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsClientsInvitationsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients.invitations;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/invitations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/invitations"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListClientUserInvitationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_clientAccountId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClientUserInvitationsResponse(response);
      })));
    });
  });

  unittest.group("resource-AccountsClientsUsersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsClientsUsersResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients.users;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.json.encode(buildClientUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_clientAccountId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClientUser(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsClientsUsersResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients.users;
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/users", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListClientUsersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_clientAccountId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClientUsersResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsClientsUsersResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.clients.users;
      var arg_request = buildClientUser();
      var arg_accountId = "foo";
      var arg_clientAccountId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClientUser.fromJson(json);
        checkClientUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/clients/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clients/"));
        pathOffset += 9;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clientAccountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.json.encode(buildClientUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_clientAccountId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkClientUser(response);
      })));
    });
  });

  unittest.group("resource-AccountsCreativesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildCreative();
      var arg_accountId = "foo";
      var arg_duplicateIdMode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/creatives"));
        pathOffset += 10;

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
        unittest.expect(queryMap["duplicateIdMode"].first,
            unittest.equals(arg_duplicateIdMode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_accountId,
              duplicateIdMode: arg_duplicateIdMode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));

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
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_creativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_accountId = "foo";
      var arg_query = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/creatives"));
        pathOffset += 10;

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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCreativesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              query: arg_query,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCreativesResponse(response);
      })));
    });

    unittest.test("method--stopWatching", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildStopWatchingCreativeRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StopWatchingCreativeRequest.fromJson(json);
        checkStopWatchingCreativeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf(":stopWatching", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals(":stopWatching"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stopWatching(arg_request, arg_accountId, arg_creativeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildCreative();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Creative.fromJson(json);
        checkCreative(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));

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
        var resp = convert.json.encode(buildCreative());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_creativeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test("method--watch", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives;
      var arg_request = buildWatchCreativeRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WatchCreativeRequest.fromJson(json);
        checkWatchCreativeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf(":watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":watch"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_accountId, arg_creativeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-AccountsCreativesDealAssociationsResourceApi", () {
    unittest.test("method--add", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesDealAssociationsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives.dealAssociations;
      var arg_request = buildAddDealAssociationRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddDealAssociationRequest.fromJson(json);
        checkAddDealAssociationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/dealAssociations:add", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/dealAssociations:add"));
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_accountId, arg_creativeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesDealAssociationsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives.dealAssociations;
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/dealAssociations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/dealAssociations"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDealAssociationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId, arg_creativeId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDealAssociationsResponse(response);
      })));
    });

    unittest.test("method--remove", () {
      var mock = new HttpServerMock();
      api.AccountsCreativesDealAssociationsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.creatives.dealAssociations;
      var arg_request = buildRemoveDealAssociationRequest();
      var arg_accountId = "foo";
      var arg_creativeId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveDealAssociationRequest.fromJson(json);
        checkRemoveDealAssociationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/dealAssociations:remove", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/dealAssociations:remove"));
        pathOffset += 24;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .remove(arg_request, arg_accountId, arg_creativeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-AccountsFinalizedProposalsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsFinalizedProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.finalizedProposals;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filterSyntax = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/finalizedProposals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/finalizedProposals"));
        pathOffset += 19;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["filterSyntax"].first, unittest.equals(arg_filterSyntax));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProposalsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filterSyntax: arg_filterSyntax,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProposalsResponse(response);
      })));
    });
  });

  unittest.group("resource-AccountsProductsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsProductsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.products;
      var arg_accountId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_productId"));

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
          .get(arg_accountId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsProductsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.products;
      var arg_accountId = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/products", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/products"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProductsResponse(response);
      })));
    });
  });

  unittest.group("resource-AccountsProposalsResourceApi", () {
    unittest.test("method--accept", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildAcceptProposalRequest();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AcceptProposalRequest.fromJson(json);
        checkAcceptProposalRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        index = path.indexOf(":accept", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":accept"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .accept(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--addNote", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildAddNoteRequest();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddNoteRequest.fromJson(json);
        checkAddNoteRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        index = path.indexOf(":addNote", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals(":addNote"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildNote());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addNote(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNote(response);
      })));
    });

    unittest.test("method--cancelNegotiation", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildCancelNegotiationRequest();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelNegotiationRequest.fromJson(json);
        checkCancelNegotiationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        index = path.indexOf(":cancelNegotiation", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals(":cancelNegotiation"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancelNegotiation(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--completeSetup", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildCompleteSetupRequest();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CompleteSetupRequest.fromJson(json);
        checkCompleteSetupRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        index = path.indexOf(":completeSetup", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals(":completeSetup"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeSetup(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildProposal();
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Proposal.fromJson(json);
        checkProposal(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/proposals"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_proposalId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filterSyntax = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/proposals"));
        pathOffset += 10;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["filterSyntax"].first, unittest.equals(arg_filterSyntax));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProposalsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filterSyntax: arg_filterSyntax,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProposalsResponse(response);
      })));
    });

    unittest.test("method--pause", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildPauseProposalRequest();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PauseProposalRequest.fromJson(json);
        checkPauseProposalRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        index = path.indexOf(":pause", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":pause"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pause(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--resume", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildResumeProposalRequest();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResumeProposalRequest.fromJson(json);
        checkResumeProposalRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        index = path.indexOf(":resume", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":resume"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resume(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsProposalsResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.proposals;
      var arg_request = buildProposal();
      var arg_accountId = "foo";
      var arg_proposalId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Proposal.fromJson(json);
        checkProposal(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/proposals/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/proposals/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_proposalId"));

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
        var resp = convert.json.encode(buildProposal());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_accountId, arg_proposalId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProposal(response);
      })));
    });
  });

  unittest.group("resource-AccountsPublisherProfilesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsPublisherProfilesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.publisherProfiles;
      var arg_accountId = "foo";
      var arg_publisherProfileId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/publisherProfiles/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/publisherProfiles/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_publisherProfileId"));

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
        var resp = convert.json.encode(buildPublisherProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_accountId, arg_publisherProfileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublisherProfile(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsPublisherProfilesResourceApi res =
          new api.Adexchangebuyer2Api(mock).accounts.publisherProfiles;
      var arg_accountId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/publisherProfiles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/publisherProfiles"));
        pathOffset += 18;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPublisherProfilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_accountId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPublisherProfilesResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersAccountsFilterSetsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.accounts.filterSets;
      var arg_request = buildFilterSet();
      var arg_ownerName = "foo";
      var arg_isTransient = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FilterSet.fromJson(json);
        checkFilterSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["isTransient"].first, unittest.equals("$arg_isTransient"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFilterSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_ownerName,
              isTransient: arg_isTransient, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFilterSet(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.accounts.filterSets;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.accounts.filterSets;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildFilterSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFilterSet(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.accounts.filterSets;
      var arg_ownerName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFilterSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_ownerName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFilterSetsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersAccountsFilterSetsBidMetricsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsBidMetricsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .bidMetrics;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBidMetricsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBidMetricsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsBidResponseErrorsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsBidResponseErrorsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .bidResponseErrors;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBidResponseErrorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBidResponseErrorsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsBidResponsesWithoutBidsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsBidResponsesWithoutBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .bidResponsesWithoutBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListBidResponsesWithoutBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBidResponsesWithoutBidsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsFilteredBidRequestsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsFilteredBidRequestsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .filteredBidRequests;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFilteredBidRequestsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFilteredBidRequestsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersAccountsFilterSetsFilteredBidsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsFilteredBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .filteredBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFilteredBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFilteredBidsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsFilteredBidsCreativesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsFilteredBidsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .filteredBids
              .creatives;
      var arg_filterSetName = "foo";
      var arg_creativeStatusId = 42;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildListCreativeStatusBreakdownByCreativeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName, arg_creativeStatusId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCreativeStatusBreakdownByCreativeResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsFilteredBidsDetailsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsFilteredBidsDetailsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .filteredBids
              .details;
      var arg_filterSetName = "foo";
      var arg_creativeStatusId = 42;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildListCreativeStatusBreakdownByDetailResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName, arg_creativeStatusId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCreativeStatusBreakdownByDetailResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsImpressionMetricsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsImpressionMetricsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .impressionMetrics;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListImpressionMetricsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListImpressionMetricsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersAccountsFilterSetsLosingBidsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsLosingBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .losingBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLosingBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLosingBidsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-BiddersAccountsFilterSetsNonBillableWinningBidsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersAccountsFilterSetsNonBillableWinningBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .accounts
              .filterSets
              .nonBillableWinningBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListNonBillableWinningBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNonBillableWinningBidsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets;
      var arg_request = buildFilterSet();
      var arg_ownerName = "foo";
      var arg_isTransient = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FilterSet.fromJson(json);
        checkFilterSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["isTransient"].first, unittest.equals("$arg_isTransient"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFilterSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_ownerName,
              isTransient: arg_isTransient, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFilterSet(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildFilterSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFilterSet(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets;
      var arg_ownerName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFilterSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_ownerName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFilterSetsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsBidMetricsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsBidMetricsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets.bidMetrics;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBidMetricsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBidMetricsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsBidResponseErrorsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsBidResponseErrorsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .bidResponseErrors;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBidResponseErrorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBidResponseErrorsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsBidResponsesWithoutBidsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsBidResponsesWithoutBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .bidResponsesWithoutBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListBidResponsesWithoutBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBidResponsesWithoutBidsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsFilteredBidRequestsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsFilteredBidRequestsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .filteredBidRequests;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFilteredBidRequestsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFilteredBidRequestsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsFilteredBidsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsFilteredBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets.filteredBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFilteredBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFilteredBidsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsFilteredBidsCreativesResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsFilteredBidsCreativesResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .filteredBids
              .creatives;
      var arg_filterSetName = "foo";
      var arg_creativeStatusId = 42;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildListCreativeStatusBreakdownByCreativeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName, arg_creativeStatusId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCreativeStatusBreakdownByCreativeResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsFilteredBidsDetailsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsFilteredBidsDetailsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .filteredBids
              .details;
      var arg_filterSetName = "foo";
      var arg_creativeStatusId = 42;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildListCreativeStatusBreakdownByDetailResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName, arg_creativeStatusId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCreativeStatusBreakdownByDetailResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsImpressionMetricsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsImpressionMetricsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .impressionMetrics;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListImpressionMetricsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListImpressionMetricsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsLosingBidsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsLosingBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock).bidders.filterSets.losingBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLosingBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLosingBidsResponse(response);
      })));
    });
  });

  unittest.group("resource-BiddersFilterSetsNonBillableWinningBidsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BiddersFilterSetsNonBillableWinningBidsResourceApi res =
          new api.Adexchangebuyer2Api(mock)
              .bidders
              .filterSets
              .nonBillableWinningBids;
      var arg_filterSetName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListNonBillableWinningBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_filterSetName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNonBillableWinningBidsResponse(response);
      })));
    });
  });
}
