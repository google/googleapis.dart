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

core.int buildCounterBidMetrics = 0;
buildBidMetrics() {
  var o = new api.BidMetrics();
  buildCounterBidMetrics++;
  if (buildCounterBidMetrics < 3) {
    o.bids = "foo";
    o.bidsInAuction = "foo";
    o.endTime = "foo";
    o.impressionsWon = "foo";
    o.startTime = "foo";
  }
  buildCounterBidMetrics--;
  return o;
}

checkBidMetrics(api.BidMetrics o) {
  buildCounterBidMetrics++;
  if (buildCounterBidMetrics < 3) {
    unittest.expect(o.bids, unittest.equals('foo'));
    unittest.expect(o.bidsInAuction, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.impressionsWon, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterBidMetrics--;
}

core.int buildCounterCalloutStatusFrequency = 0;
buildCalloutStatusFrequency() {
  var o = new api.CalloutStatusFrequency();
  buildCounterCalloutStatusFrequency++;
  if (buildCounterCalloutStatusFrequency < 3) {
    o.calloutStatusId = 42;
    o.impressionCount = "foo";
  }
  buildCounterCalloutStatusFrequency--;
  return o;
}

checkCalloutStatusFrequency(api.CalloutStatusFrequency o) {
  buildCounterCalloutStatusFrequency++;
  if (buildCounterCalloutStatusFrequency < 3) {
    unittest.expect(o.calloutStatusId, unittest.equals(42));
    unittest.expect(o.impressionCount, unittest.equals('foo'));
  }
  buildCounterCalloutStatusFrequency--;
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

core.int buildCounterCreativeFrequency = 0;
buildCreativeFrequency() {
  var o = new api.CreativeFrequency();
  buildCounterCreativeFrequency++;
  if (buildCounterCreativeFrequency < 3) {
    o.bidCount = "foo";
    o.creativeId = "foo";
  }
  buildCounterCreativeFrequency--;
  return o;
}

checkCreativeFrequency(api.CreativeFrequency o) {
  buildCounterCreativeFrequency++;
  if (buildCounterCreativeFrequency < 3) {
    unittest.expect(o.bidCount, unittest.equals('foo'));
    unittest.expect(o.creativeId, unittest.equals('foo'));
  }
  buildCounterCreativeFrequency--;
}

core.int buildCounterCreativeStatusFrequency = 0;
buildCreativeStatusFrequency() {
  var o = new api.CreativeStatusFrequency();
  buildCounterCreativeStatusFrequency++;
  if (buildCounterCreativeStatusFrequency < 3) {
    o.bidCount = "foo";
    o.creativeStatusId = 42;
  }
  buildCounterCreativeStatusFrequency--;
  return o;
}

checkCreativeStatusFrequency(api.CreativeStatusFrequency o) {
  buildCounterCreativeStatusFrequency++;
  if (buildCounterCreativeStatusFrequency < 3) {
    unittest.expect(o.bidCount, unittest.equals('foo'));
    unittest.expect(o.creativeStatusId, unittest.equals(42));
  }
  buildCounterCreativeStatusFrequency--;
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

core.int buildCounterDetailFrequency = 0;
buildDetailFrequency() {
  var o = new api.DetailFrequency();
  buildCounterDetailFrequency++;
  if (buildCounterDetailFrequency < 3) {
    o.bidCount = "foo";
    o.detailId = 42;
  }
  buildCounterDetailFrequency--;
  return o;
}

checkDetailFrequency(api.DetailFrequency o) {
  buildCounterDetailFrequency++;
  if (buildCounterDetailFrequency < 3) {
    unittest.expect(o.bidCount, unittest.equals('foo'));
    unittest.expect(o.detailId, unittest.equals(42));
  }
  buildCounterDetailFrequency--;
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

buildUnnamed3745() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3745(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFilterSet = 0;
buildFilterSet() {
  var o = new api.FilterSet();
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    o.absoluteDateRange = buildAbsoluteDateRange();
    o.buyerAccountId = "foo";
    o.creativeId = "foo";
    o.dealId = "foo";
    o.filterSetId = 42;
    o.filterSetOwnerAccountId = "foo";
    o.format = "foo";
    o.platform = "foo";
    o.relativeDateRange = buildRelativeDateRange();
    o.webPropertyIds = buildUnnamed3745();
  }
  buildCounterFilterSet--;
  return o;
}

checkFilterSet(api.FilterSet o) {
  buildCounterFilterSet++;
  if (buildCounterFilterSet < 3) {
    checkAbsoluteDateRange(o.absoluteDateRange);
    unittest.expect(o.buyerAccountId, unittest.equals('foo'));
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.dealId, unittest.equals('foo'));
    unittest.expect(o.filterSetId, unittest.equals(42));
    unittest.expect(o.filterSetOwnerAccountId, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
    checkRelativeDateRange(o.relativeDateRange);
    checkUnnamed3745(o.webPropertyIds);
  }
  buildCounterFilterSet--;
}

core.int buildCounterFilteredImpressionStatusFrequency = 0;
buildFilteredImpressionStatusFrequency() {
  var o = new api.FilteredImpressionStatusFrequency();
  buildCounterFilteredImpressionStatusFrequency++;
  if (buildCounterFilteredImpressionStatusFrequency < 3) {
    o.impressionCount = "foo";
    o.status = "foo";
  }
  buildCounterFilteredImpressionStatusFrequency--;
  return o;
}

checkFilteredImpressionStatusFrequency(api.FilteredImpressionStatusFrequency o) {
  buildCounterFilteredImpressionStatusFrequency++;
  if (buildCounterFilteredImpressionStatusFrequency < 3) {
    unittest.expect(o.impressionCount, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterFilteredImpressionStatusFrequency--;
}

core.int buildCounterImpressionMetrics = 0;
buildImpressionMetrics() {
  var o = new api.ImpressionMetrics();
  buildCounterImpressionMetrics++;
  if (buildCounterImpressionMetrics < 3) {
    o.availableImpressions = "foo";
    o.bidRequests = "foo";
    o.endTime = "foo";
    o.inventoryMatches = "foo";
    o.responsesWithBids = "foo";
    o.startTime = "foo";
    o.successfulResponses = "foo";
  }
  buildCounterImpressionMetrics--;
  return o;
}

checkImpressionMetrics(api.ImpressionMetrics o) {
  buildCounterImpressionMetrics++;
  if (buildCounterImpressionMetrics < 3) {
    unittest.expect(o.availableImpressions, unittest.equals('foo'));
    unittest.expect(o.bidRequests, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.inventoryMatches, unittest.equals('foo'));
    unittest.expect(o.responsesWithBids, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.successfulResponses, unittest.equals('foo'));
  }
  buildCounterImpressionMetrics--;
}

buildUnnamed3746() {
  var o = new core.List<api.ClientUserInvitation>();
  o.add(buildClientUserInvitation());
  o.add(buildClientUserInvitation());
  return o;
}

checkUnnamed3746(core.List<api.ClientUserInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientUserInvitation(o[0]);
  checkClientUserInvitation(o[1]);
}

core.int buildCounterListClientUserInvitationsResponse = 0;
buildListClientUserInvitationsResponse() {
  var o = new api.ListClientUserInvitationsResponse();
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    o.invitations = buildUnnamed3746();
    o.nextPageToken = "foo";
  }
  buildCounterListClientUserInvitationsResponse--;
  return o;
}

checkListClientUserInvitationsResponse(api.ListClientUserInvitationsResponse o) {
  buildCounterListClientUserInvitationsResponse++;
  if (buildCounterListClientUserInvitationsResponse < 3) {
    checkUnnamed3746(o.invitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClientUserInvitationsResponse--;
}

buildUnnamed3747() {
  var o = new core.List<api.ClientUser>();
  o.add(buildClientUser());
  o.add(buildClientUser());
  return o;
}

checkUnnamed3747(core.List<api.ClientUser> o) {
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
    o.users = buildUnnamed3747();
  }
  buildCounterListClientUsersResponse--;
  return o;
}

checkListClientUsersResponse(api.ListClientUsersResponse o) {
  buildCounterListClientUsersResponse++;
  if (buildCounterListClientUsersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3747(o.users);
  }
  buildCounterListClientUsersResponse--;
}

buildUnnamed3748() {
  var o = new core.List<api.Client>();
  o.add(buildClient());
  o.add(buildClient());
  return o;
}

checkUnnamed3748(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0]);
  checkClient(o[1]);
}

core.int buildCounterListClientsResponse = 0;
buildListClientsResponse() {
  var o = new api.ListClientsResponse();
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    o.clients = buildUnnamed3748();
    o.nextPageToken = "foo";
  }
  buildCounterListClientsResponse--;
  return o;
}

checkListClientsResponse(api.ListClientsResponse o) {
  buildCounterListClientsResponse++;
  if (buildCounterListClientsResponse < 3) {
    checkUnnamed3748(o.clients);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClientsResponse--;
}

buildUnnamed3749() {
  var o = new core.List<api.DetailFrequency>();
  o.add(buildDetailFrequency());
  o.add(buildDetailFrequency());
  return o;
}

checkUnnamed3749(core.List<api.DetailFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetailFrequency(o[0]);
  checkDetailFrequency(o[1]);
}

core.int buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse = 0;
buildListCreativeStatusAndCreativeBreakdownByDetailResponse() {
  var o = new api.ListCreativeStatusAndCreativeBreakdownByDetailResponse();
  buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse < 3) {
    o.creativeId = "foo";
    o.creativeStatusId = 42;
    o.detailType = "foo";
    o.endTime = "foo";
    o.frequencies = buildUnnamed3749();
    o.startTime = "foo";
  }
  buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse--;
  return o;
}

checkListCreativeStatusAndCreativeBreakdownByDetailResponse(api.ListCreativeStatusAndCreativeBreakdownByDetailResponse o) {
  buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse < 3) {
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.creativeStatusId, unittest.equals(42));
    unittest.expect(o.detailType, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3749(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListCreativeStatusAndCreativeBreakdownByDetailResponse--;
}

buildUnnamed3750() {
  var o = new core.List<api.CreativeFrequency>();
  o.add(buildCreativeFrequency());
  o.add(buildCreativeFrequency());
  return o;
}

checkUnnamed3750(core.List<api.CreativeFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFrequency(o[0]);
  checkCreativeFrequency(o[1]);
}

core.int buildCounterListCreativeStatusBreakdownByCreativeResponse = 0;
buildListCreativeStatusBreakdownByCreativeResponse() {
  var o = new api.ListCreativeStatusBreakdownByCreativeResponse();
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    o.creativeStatusId = 42;
    o.endTime = "foo";
    o.frequencies = buildUnnamed3750();
    o.nextPageToken = "foo";
    o.startTime = "foo";
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
  return o;
}

checkListCreativeStatusBreakdownByCreativeResponse(api.ListCreativeStatusBreakdownByCreativeResponse o) {
  buildCounterListCreativeStatusBreakdownByCreativeResponse++;
  if (buildCounterListCreativeStatusBreakdownByCreativeResponse < 3) {
    unittest.expect(o.creativeStatusId, unittest.equals(42));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3750(o.frequencies);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListCreativeStatusBreakdownByCreativeResponse--;
}

buildUnnamed3751() {
  var o = new core.List<api.DetailFrequency>();
  o.add(buildDetailFrequency());
  o.add(buildDetailFrequency());
  return o;
}

checkUnnamed3751(core.List<api.DetailFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetailFrequency(o[0]);
  checkDetailFrequency(o[1]);
}

core.int buildCounterListCreativeStatusBreakdownByDetailResponse = 0;
buildListCreativeStatusBreakdownByDetailResponse() {
  var o = new api.ListCreativeStatusBreakdownByDetailResponse();
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    o.creativeStatusId = 42;
    o.detailType = "foo";
    o.endTime = "foo";
    o.frequencies = buildUnnamed3751();
    o.startTime = "foo";
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
  return o;
}

checkListCreativeStatusBreakdownByDetailResponse(api.ListCreativeStatusBreakdownByDetailResponse o) {
  buildCounterListCreativeStatusBreakdownByDetailResponse++;
  if (buildCounterListCreativeStatusBreakdownByDetailResponse < 3) {
    unittest.expect(o.creativeStatusId, unittest.equals(42));
    unittest.expect(o.detailType, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3751(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListCreativeStatusBreakdownByDetailResponse--;
}

buildUnnamed3752() {
  var o = new core.List<api.FilterSet>();
  o.add(buildFilterSet());
  o.add(buildFilterSet());
  return o;
}

checkUnnamed3752(core.List<api.FilterSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilterSet(o[0]);
  checkFilterSet(o[1]);
}

core.int buildCounterListFilterSetsResponse = 0;
buildListFilterSetsResponse() {
  var o = new api.ListFilterSetsResponse();
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    o.filterSets = buildUnnamed3752();
    o.nextPageToken = "foo";
  }
  buildCounterListFilterSetsResponse--;
  return o;
}

checkListFilterSetsResponse(api.ListFilterSetsResponse o) {
  buildCounterListFilterSetsResponse++;
  if (buildCounterListFilterSetsResponse < 3) {
    checkUnnamed3752(o.filterSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFilterSetsResponse--;
}

buildUnnamed3753() {
  var o = new core.List<api.CreativeStatusFrequency>();
  o.add(buildCreativeStatusFrequency());
  o.add(buildCreativeStatusFrequency());
  return o;
}

checkUnnamed3753(core.List<api.CreativeStatusFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusFrequency(o[0]);
  checkCreativeStatusFrequency(o[1]);
}

core.int buildCounterListFilteredBidsResponse = 0;
buildListFilteredBidsResponse() {
  var o = new api.ListFilteredBidsResponse();
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    o.endTime = "foo";
    o.frequencies = buildUnnamed3753();
    o.startTime = "foo";
  }
  buildCounterListFilteredBidsResponse--;
  return o;
}

checkListFilteredBidsResponse(api.ListFilteredBidsResponse o) {
  buildCounterListFilteredBidsResponse++;
  if (buildCounterListFilteredBidsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3753(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListFilteredBidsResponse--;
}

buildUnnamed3754() {
  var o = new core.List<api.FilteredImpressionStatusFrequency>();
  o.add(buildFilteredImpressionStatusFrequency());
  o.add(buildFilteredImpressionStatusFrequency());
  return o;
}

checkUnnamed3754(core.List<api.FilteredImpressionStatusFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteredImpressionStatusFrequency(o[0]);
  checkFilteredImpressionStatusFrequency(o[1]);
}

core.int buildCounterListFilteredImpressionsResponse = 0;
buildListFilteredImpressionsResponse() {
  var o = new api.ListFilteredImpressionsResponse();
  buildCounterListFilteredImpressionsResponse++;
  if (buildCounterListFilteredImpressionsResponse < 3) {
    o.endTime = "foo";
    o.frequencies = buildUnnamed3754();
    o.startTime = "foo";
  }
  buildCounterListFilteredImpressionsResponse--;
  return o;
}

checkListFilteredImpressionsResponse(api.ListFilteredImpressionsResponse o) {
  buildCounterListFilteredImpressionsResponse++;
  if (buildCounterListFilteredImpressionsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3754(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListFilteredImpressionsResponse--;
}

buildUnnamed3755() {
  var o = new core.List<api.CalloutStatusFrequency>();
  o.add(buildCalloutStatusFrequency());
  o.add(buildCalloutStatusFrequency());
  return o;
}

checkUnnamed3755(core.List<api.CalloutStatusFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusFrequency(o[0]);
  checkCalloutStatusFrequency(o[1]);
}

core.int buildCounterListFilteredRequestsResponse = 0;
buildListFilteredRequestsResponse() {
  var o = new api.ListFilteredRequestsResponse();
  buildCounterListFilteredRequestsResponse++;
  if (buildCounterListFilteredRequestsResponse < 3) {
    o.endTime = "foo";
    o.frequencies = buildUnnamed3755();
    o.startTime = "foo";
  }
  buildCounterListFilteredRequestsResponse--;
  return o;
}

checkListFilteredRequestsResponse(api.ListFilteredRequestsResponse o) {
  buildCounterListFilteredRequestsResponse++;
  if (buildCounterListFilteredRequestsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3755(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListFilteredRequestsResponse--;
}

buildUnnamed3756() {
  var o = new core.List<api.CreativeStatusFrequency>();
  o.add(buildCreativeStatusFrequency());
  o.add(buildCreativeStatusFrequency());
  return o;
}

checkUnnamed3756(core.List<api.CreativeStatusFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeStatusFrequency(o[0]);
  checkCreativeStatusFrequency(o[1]);
}

core.int buildCounterListLosingBidsResponse = 0;
buildListLosingBidsResponse() {
  var o = new api.ListLosingBidsResponse();
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    o.endTime = "foo";
    o.frequencies = buildUnnamed3756();
    o.startTime = "foo";
  }
  buildCounterListLosingBidsResponse--;
  return o;
}

checkListLosingBidsResponse(api.ListLosingBidsResponse o) {
  buildCounterListLosingBidsResponse++;
  if (buildCounterListLosingBidsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3756(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListLosingBidsResponse--;
}

buildUnnamed3757() {
  var o = new core.List<api.CalloutStatusFrequency>();
  o.add(buildCalloutStatusFrequency());
  o.add(buildCalloutStatusFrequency());
  return o;
}

checkUnnamed3757(core.List<api.CalloutStatusFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalloutStatusFrequency(o[0]);
  checkCalloutStatusFrequency(o[1]);
}

core.int buildCounterListResponseErrorsResponse = 0;
buildListResponseErrorsResponse() {
  var o = new api.ListResponseErrorsResponse();
  buildCounterListResponseErrorsResponse++;
  if (buildCounterListResponseErrorsResponse < 3) {
    o.endTime = "foo";
    o.frequencies = buildUnnamed3757();
    o.startTime = "foo";
  }
  buildCounterListResponseErrorsResponse--;
  return o;
}

checkListResponseErrorsResponse(api.ListResponseErrorsResponse o) {
  buildCounterListResponseErrorsResponse++;
  if (buildCounterListResponseErrorsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3757(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListResponseErrorsResponse--;
}

buildUnnamed3758() {
  var o = new core.List<api.ResponsesWithoutBidsStatusFrequency>();
  o.add(buildResponsesWithoutBidsStatusFrequency());
  o.add(buildResponsesWithoutBidsStatusFrequency());
  return o;
}

checkUnnamed3758(core.List<api.ResponsesWithoutBidsStatusFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponsesWithoutBidsStatusFrequency(o[0]);
  checkResponsesWithoutBidsStatusFrequency(o[1]);
}

core.int buildCounterListResponsesWithoutBidsResponse = 0;
buildListResponsesWithoutBidsResponse() {
  var o = new api.ListResponsesWithoutBidsResponse();
  buildCounterListResponsesWithoutBidsResponse++;
  if (buildCounterListResponsesWithoutBidsResponse < 3) {
    o.endTime = "foo";
    o.frequencies = buildUnnamed3758();
    o.startTime = "foo";
  }
  buildCounterListResponsesWithoutBidsResponse--;
  return o;
}

checkListResponsesWithoutBidsResponse(api.ListResponsesWithoutBidsResponse o) {
  buildCounterListResponsesWithoutBidsResponse++;
  if (buildCounterListResponsesWithoutBidsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3758(o.frequencies);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterListResponsesWithoutBidsResponse--;
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

core.int buildCounterResponsesWithoutBidsStatusFrequency = 0;
buildResponsesWithoutBidsStatusFrequency() {
  var o = new api.ResponsesWithoutBidsStatusFrequency();
  buildCounterResponsesWithoutBidsStatusFrequency++;
  if (buildCounterResponsesWithoutBidsStatusFrequency < 3) {
    o.impressionCount = "foo";
    o.status = "foo";
  }
  buildCounterResponsesWithoutBidsStatusFrequency--;
  return o;
}

checkResponsesWithoutBidsStatusFrequency(api.ResponsesWithoutBidsStatusFrequency o) {
  buildCounterResponsesWithoutBidsStatusFrequency++;
  if (buildCounterResponsesWithoutBidsStatusFrequency < 3) {
    unittest.expect(o.impressionCount, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterResponsesWithoutBidsStatusFrequency--;
}


main() {
  unittest.group("obj-schema-AbsoluteDateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildAbsoluteDateRange();
      var od = new api.AbsoluteDateRange.fromJson(o.toJson());
      checkAbsoluteDateRange(od);
    });
  });


  unittest.group("obj-schema-BidMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildBidMetrics();
      var od = new api.BidMetrics.fromJson(o.toJson());
      checkBidMetrics(od);
    });
  });


  unittest.group("obj-schema-CalloutStatusFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildCalloutStatusFrequency();
      var od = new api.CalloutStatusFrequency.fromJson(o.toJson());
      checkCalloutStatusFrequency(od);
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


  unittest.group("obj-schema-CreativeFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeFrequency();
      var od = new api.CreativeFrequency.fromJson(o.toJson());
      checkCreativeFrequency(od);
    });
  });


  unittest.group("obj-schema-CreativeStatusFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreativeStatusFrequency();
      var od = new api.CreativeStatusFrequency.fromJson(o.toJson());
      checkCreativeStatusFrequency(od);
    });
  });


  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });


  unittest.group("obj-schema-DetailFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetailFrequency();
      var od = new api.DetailFrequency.fromJson(o.toJson());
      checkDetailFrequency(od);
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


  unittest.group("obj-schema-FilteredImpressionStatusFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilteredImpressionStatusFrequency();
      var od = new api.FilteredImpressionStatusFrequency.fromJson(o.toJson());
      checkFilteredImpressionStatusFrequency(od);
    });
  });


  unittest.group("obj-schema-ImpressionMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildImpressionMetrics();
      var od = new api.ImpressionMetrics.fromJson(o.toJson());
      checkImpressionMetrics(od);
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


  unittest.group("obj-schema-ListCreativeStatusAndCreativeBreakdownByDetailResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCreativeStatusAndCreativeBreakdownByDetailResponse();
      var od = new api.ListCreativeStatusAndCreativeBreakdownByDetailResponse.fromJson(o.toJson());
      checkListCreativeStatusAndCreativeBreakdownByDetailResponse(od);
    });
  });


  unittest.group("obj-schema-ListCreativeStatusBreakdownByCreativeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCreativeStatusBreakdownByCreativeResponse();
      var od = new api.ListCreativeStatusBreakdownByCreativeResponse.fromJson(o.toJson());
      checkListCreativeStatusBreakdownByCreativeResponse(od);
    });
  });


  unittest.group("obj-schema-ListCreativeStatusBreakdownByDetailResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCreativeStatusBreakdownByDetailResponse();
      var od = new api.ListCreativeStatusBreakdownByDetailResponse.fromJson(o.toJson());
      checkListCreativeStatusBreakdownByDetailResponse(od);
    });
  });


  unittest.group("obj-schema-ListFilterSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilterSetsResponse();
      var od = new api.ListFilterSetsResponse.fromJson(o.toJson());
      checkListFilterSetsResponse(od);
    });
  });


  unittest.group("obj-schema-ListFilteredBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilteredBidsResponse();
      var od = new api.ListFilteredBidsResponse.fromJson(o.toJson());
      checkListFilteredBidsResponse(od);
    });
  });


  unittest.group("obj-schema-ListFilteredImpressionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilteredImpressionsResponse();
      var od = new api.ListFilteredImpressionsResponse.fromJson(o.toJson());
      checkListFilteredImpressionsResponse(od);
    });
  });


  unittest.group("obj-schema-ListFilteredRequestsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFilteredRequestsResponse();
      var od = new api.ListFilteredRequestsResponse.fromJson(o.toJson());
      checkListFilteredRequestsResponse(od);
    });
  });


  unittest.group("obj-schema-ListLosingBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLosingBidsResponse();
      var od = new api.ListLosingBidsResponse.fromJson(o.toJson());
      checkListLosingBidsResponse(od);
    });
  });


  unittest.group("obj-schema-ListResponseErrorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListResponseErrorsResponse();
      var od = new api.ListResponseErrorsResponse.fromJson(o.toJson());
      checkListResponseErrorsResponse(od);
    });
  });


  unittest.group("obj-schema-ListResponsesWithoutBidsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListResponsesWithoutBidsResponse();
      var od = new api.ListResponsesWithoutBidsResponse.fromJson(o.toJson());
      checkListResponsesWithoutBidsResponse(od);
    });
  });


  unittest.group("obj-schema-RelativeDateRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelativeDateRange();
      var od = new api.RelativeDateRange.fromJson(o.toJson());
      checkRelativeDateRange(od);
    });
  });


  unittest.group("obj-schema-ResponsesWithoutBidsStatusFrequency", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponsesWithoutBidsStatusFrequency();
      var od = new api.ResponsesWithoutBidsStatusFrequency.fromJson(o.toJson());
      checkResponsesWithoutBidsStatusFrequency(od);
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
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClientsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListClientsResponse response) {
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
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClientUserInvitationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_clientAccountId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListClientUserInvitationsResponse response) {
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
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClientUsersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_clientAccountId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListClientUsersResponse response) {
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


  unittest.group("resource-AccountsFilterSetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets;
      var arg_request = buildFilterSet();
      var arg_accountId = "foo";
      var arg_isTransient = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.FilterSet.fromJson(json);
        checkFilterSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/filterSets"));
        pathOffset += 11;

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
        unittest.expect(queryMap["isTransient"].first, unittest.equals("$arg_isTransient"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFilterSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_accountId, isTransient: arg_isTransient).then(unittest.expectAsync(((api.FilterSet response) {
        checkFilterSet(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));

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
      res.delete(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));

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
        var resp = convert.JSON.encode(buildFilterSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.FilterSet response) {
        checkFilterSet(response);
      })));
    });

    unittest.test("method--getBidMetrics", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/bidMetrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/bidMetrics"));
        pathOffset += 11;

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
        var resp = convert.JSON.encode(buildBidMetrics());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getBidMetrics(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.BidMetrics response) {
        checkBidMetrics(response);
      })));
    });

    unittest.test("method--getImpressionMetrics", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/impressionMetrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/impressionMetrics"));
        pathOffset += 18;

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
        var resp = convert.JSON.encode(buildImpressionMetrics());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getImpressionMetrics(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ImpressionMetrics response) {
        checkImpressionMetrics(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets;
      var arg_accountId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/filterSets"));
        pathOffset += 11;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListFilterSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListFilterSetsResponse response) {
        checkListFilterSetsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsFilteredBidsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsFilteredBidsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.filteredBids;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/filteredBids", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/filteredBids"));
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
        var resp = convert.JSON.encode(buildListFilteredBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ListFilteredBidsResponse response) {
        checkListFilteredBidsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsFilteredBidsCreativesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsFilteredBidsCreativesResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.filteredBids.creatives;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      var arg_creativeStatusId = 42;
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/filteredBids/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/filteredBids/"));
        pathOffset += 14;
        index = path.indexOf("/creatives", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeStatusId"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCreativeStatusBreakdownByCreativeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId, arg_creativeStatusId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListCreativeStatusBreakdownByCreativeResponse response) {
        checkListCreativeStatusBreakdownByCreativeResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsFilteredBidsCreativesDetailsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsFilteredBidsCreativesDetailsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.filteredBids.creatives.details;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      var arg_creativeStatusId = 42;
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
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/filteredBids/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/filteredBids/"));
        pathOffset += 14;
        index = path.indexOf("/creatives/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeStatusId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/creatives/"));
        pathOffset += 11;
        index = path.indexOf("/details", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/details"));
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
        var resp = convert.JSON.encode(buildListCreativeStatusAndCreativeBreakdownByDetailResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId, arg_creativeStatusId, arg_creativeId).then(unittest.expectAsync(((api.ListCreativeStatusAndCreativeBreakdownByDetailResponse response) {
        checkListCreativeStatusAndCreativeBreakdownByDetailResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsFilteredBidsDetailsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsFilteredBidsDetailsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.filteredBids.details;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      var arg_creativeStatusId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/filteredBids/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/filteredBids/"));
        pathOffset += 14;
        index = path.indexOf("/details", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_creativeStatusId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/details"));
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
        var resp = convert.JSON.encode(buildListCreativeStatusBreakdownByDetailResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId, arg_creativeStatusId).then(unittest.expectAsync(((api.ListCreativeStatusBreakdownByDetailResponse response) {
        checkListCreativeStatusBreakdownByDetailResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsFilteredImpressionsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsFilteredImpressionsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.filteredImpressions;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/filteredImpressions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/filteredImpressions"));
        pathOffset += 20;

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
        var resp = convert.JSON.encode(buildListFilteredImpressionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ListFilteredImpressionsResponse response) {
        checkListFilteredImpressionsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsFilteredRequestsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsFilteredRequestsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.filteredRequests;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/filteredRequests", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/filteredRequests"));
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
        var resp = convert.JSON.encode(buildListFilteredRequestsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ListFilteredRequestsResponse response) {
        checkListFilteredRequestsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsLosingBidsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsLosingBidsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.losingBids;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/losingBids", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/losingBids"));
        pathOffset += 11;

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
        var resp = convert.JSON.encode(buildListLosingBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ListLosingBidsResponse response) {
        checkListLosingBidsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsResponseErrorsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResponseErrorsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.responseErrors;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/responseErrors", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/responseErrors"));
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
        var resp = convert.JSON.encode(buildListResponseErrorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ListResponseErrorsResponse response) {
        checkListResponseErrorsResponse(response);
      })));
    });

  });


  unittest.group("resource-AccountsFilterSetsResponsesWithoutBidsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AccountsFilterSetsResponsesWithoutBidsResourceApi res = new api.Adexchangebuyer2Api(mock).accounts.filterSets.responsesWithoutBids;
      var arg_accountId = "foo";
      var arg_filterSetId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v2beta1/accounts/"));
        pathOffset += 17;
        index = path.indexOf("/filterSets/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/filterSets/"));
        pathOffset += 12;
        index = path.indexOf("/responsesWithoutBids", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_filterSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/responsesWithoutBids"));
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
        var resp = convert.JSON.encode(buildListResponsesWithoutBidsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_accountId, arg_filterSetId).then(unittest.expectAsync(((api.ListResponsesWithoutBidsResponse response) {
        checkListResponsesWithoutBidsResponse(response);
      })));
    });

  });


}

