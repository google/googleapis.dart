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

import 'package:googleapis/adsenseplatform/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.createTime = 'foo';
    o.creationRequestId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
    o.state = 'foo';
    o.timeZone = buildTimeZone();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creationRequestId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTimeZone(o.timeZone!);
  }
  buildCounterAccount--;
}

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  final o = api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.address1 = 'foo';
    o.address2 = 'foo';
    o.city = 'foo';
    o.company = 'foo';
    o.contact = 'foo';
    o.fax = 'foo';
    o.phone = 'foo';
    o.regionCode = 'foo';
    o.state = 'foo';
    o.zip = 'foo';
  }
  buildCounterAddress--;
  return o;
}

void checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(o.address1!, unittest.equals('foo'));
    unittest.expect(o.address2!, unittest.equals('foo'));
    unittest.expect(o.city!, unittest.equals('foo'));
    unittest.expect(o.company!, unittest.equals('foo'));
    unittest.expect(o.contact!, unittest.equals('foo'));
    unittest.expect(o.fax!, unittest.equals('foo'));
    unittest.expect(o.phone!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.zip!, unittest.equals('foo'));
  }
  buildCounterAddress--;
}

core.int buildCounterCloseAccountRequest = 0;
api.CloseAccountRequest buildCloseAccountRequest() {
  final o = api.CloseAccountRequest();
  buildCounterCloseAccountRequest++;
  if (buildCounterCloseAccountRequest < 3) {}
  buildCounterCloseAccountRequest--;
  return o;
}

void checkCloseAccountRequest(api.CloseAccountRequest o) {
  buildCounterCloseAccountRequest++;
  if (buildCounterCloseAccountRequest < 3) {}
  buildCounterCloseAccountRequest--;
}

core.int buildCounterCloseAccountResponse = 0;
api.CloseAccountResponse buildCloseAccountResponse() {
  final o = api.CloseAccountResponse();
  buildCounterCloseAccountResponse++;
  if (buildCounterCloseAccountResponse < 3) {}
  buildCounterCloseAccountResponse--;
  return o;
}

void checkCloseAccountResponse(api.CloseAccountResponse o) {
  buildCounterCloseAccountResponse++;
  if (buildCounterCloseAccountResponse < 3) {}
  buildCounterCloseAccountResponse--;
}

core.int buildCounterDecimal = 0;
api.Decimal buildDecimal() {
  final o = api.Decimal();
  buildCounterDecimal++;
  if (buildCounterDecimal < 3) {
    o.value = 'foo';
  }
  buildCounterDecimal--;
  return o;
}

void checkDecimal(api.Decimal o) {
  buildCounterDecimal++;
  if (buildCounterDecimal < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDecimal--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.eventInfo = buildEventInfo();
    o.eventTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkEventInfo(o.eventInfo!);
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
  }
  buildCounterEvent--;
}

core.int buildCounterEventInfo = 0;
api.EventInfo buildEventInfo() {
  final o = api.EventInfo();
  buildCounterEventInfo++;
  if (buildCounterEventInfo < 3) {
    o.billingAddress = buildAddress();
    o.email = 'foo';
  }
  buildCounterEventInfo--;
  return o;
}

void checkEventInfo(api.EventInfo o) {
  buildCounterEventInfo++;
  if (buildCounterEventInfo < 3) {
    checkAddress(o.billingAddress!);
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterEventInfo--;
}

core.List<api.Account> buildUnnamed0() => [buildAccount(), buildAccount()];

void checkUnnamed0(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListAccountsResponse = 0;
api.ListAccountsResponse buildListAccountsResponse() {
  final o = api.ListAccountsResponse();
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    o.accounts = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountsResponse--;
  return o;
}

void checkListAccountsResponse(api.ListAccountsResponse o) {
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    checkUnnamed0(o.accounts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountsResponse--;
}

core.List<api.PlatformChildSite> buildUnnamed1() => [
  buildPlatformChildSite(),
  buildPlatformChildSite(),
];

void checkUnnamed1(core.List<api.PlatformChildSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformChildSite(o[0]);
  checkPlatformChildSite(o[1]);
}

core.int buildCounterListPlatformChildSitesResponse = 0;
api.ListPlatformChildSitesResponse buildListPlatformChildSitesResponse() {
  final o = api.ListPlatformChildSitesResponse();
  buildCounterListPlatformChildSitesResponse++;
  if (buildCounterListPlatformChildSitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.platformChildSites = buildUnnamed1();
  }
  buildCounterListPlatformChildSitesResponse--;
  return o;
}

void checkListPlatformChildSitesResponse(api.ListPlatformChildSitesResponse o) {
  buildCounterListPlatformChildSitesResponse++;
  if (buildCounterListPlatformChildSitesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed1(o.platformChildSites!);
  }
  buildCounterListPlatformChildSitesResponse--;
}

core.List<api.PlatformGroup> buildUnnamed2() => [
  buildPlatformGroup(),
  buildPlatformGroup(),
];

void checkUnnamed2(core.List<api.PlatformGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformGroup(o[0]);
  checkPlatformGroup(o[1]);
}

core.int buildCounterListPlatformGroupsResponse = 0;
api.ListPlatformGroupsResponse buildListPlatformGroupsResponse() {
  final o = api.ListPlatformGroupsResponse();
  buildCounterListPlatformGroupsResponse++;
  if (buildCounterListPlatformGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.platformGroups = buildUnnamed2();
  }
  buildCounterListPlatformGroupsResponse--;
  return o;
}

void checkListPlatformGroupsResponse(api.ListPlatformGroupsResponse o) {
  buildCounterListPlatformGroupsResponse++;
  if (buildCounterListPlatformGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.platformGroups!);
  }
  buildCounterListPlatformGroupsResponse--;
}

core.List<api.Platform> buildUnnamed3() => [buildPlatform(), buildPlatform()];

void checkUnnamed3(core.List<api.Platform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatform(o[0]);
  checkPlatform(o[1]);
}

core.int buildCounterListPlatformsResponse = 0;
api.ListPlatformsResponse buildListPlatformsResponse() {
  final o = api.ListPlatformsResponse();
  buildCounterListPlatformsResponse++;
  if (buildCounterListPlatformsResponse < 3) {
    o.nextPageToken = 'foo';
    o.platforms = buildUnnamed3();
  }
  buildCounterListPlatformsResponse--;
  return o;
}

void checkListPlatformsResponse(api.ListPlatformsResponse o) {
  buildCounterListPlatformsResponse++;
  if (buildCounterListPlatformsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed3(o.platforms!);
  }
  buildCounterListPlatformsResponse--;
}

core.List<api.Site> buildUnnamed4() => [buildSite(), buildSite()];

void checkUnnamed4(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterListSitesResponse = 0;
api.ListSitesResponse buildListSitesResponse() {
  final o = api.ListSitesResponse();
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed4();
  }
  buildCounterListSitesResponse--;
  return o;
}

void checkListSitesResponse(api.ListSitesResponse o) {
  buildCounterListSitesResponse++;
  if (buildCounterListSitesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed4(o.sites!);
  }
  buildCounterListSitesResponse--;
}

core.int buildCounterLookupAccountResponse = 0;
api.LookupAccountResponse buildLookupAccountResponse() {
  final o = api.LookupAccountResponse();
  buildCounterLookupAccountResponse++;
  if (buildCounterLookupAccountResponse < 3) {
    o.name = 'foo';
  }
  buildCounterLookupAccountResponse--;
  return o;
}

void checkLookupAccountResponse(api.LookupAccountResponse o) {
  buildCounterLookupAccountResponse++;
  if (buildCounterLookupAccountResponse < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLookupAccountResponse--;
}

core.int buildCounterPlatform = 0;
api.Platform buildPlatform() {
  final o = api.Platform();
  buildCounterPlatform++;
  if (buildCounterPlatform < 3) {
    o.defaultPlatformGroup = 'foo';
    o.description = 'foo';
    o.name = 'foo';
  }
  buildCounterPlatform--;
  return o;
}

void checkPlatform(api.Platform o) {
  buildCounterPlatform++;
  if (buildCounterPlatform < 3) {
    unittest.expect(o.defaultPlatformGroup!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterPlatform--;
}

core.int buildCounterPlatformChildSite = 0;
api.PlatformChildSite buildPlatformChildSite() {
  final o = api.PlatformChildSite();
  buildCounterPlatformChildSite++;
  if (buildCounterPlatformChildSite < 3) {
    o.domain = 'foo';
    o.name = 'foo';
    o.platformGroup = 'foo';
  }
  buildCounterPlatformChildSite--;
  return o;
}

void checkPlatformChildSite(api.PlatformChildSite o) {
  buildCounterPlatformChildSite++;
  if (buildCounterPlatformChildSite < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.platformGroup!, unittest.equals('foo'));
  }
  buildCounterPlatformChildSite--;
}

core.int buildCounterPlatformGroup = 0;
api.PlatformGroup buildPlatformGroup() {
  final o = api.PlatformGroup();
  buildCounterPlatformGroup++;
  if (buildCounterPlatformGroup < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.revshareMillipercent = buildDecimal();
  }
  buildCounterPlatformGroup--;
  return o;
}

void checkPlatformGroup(api.PlatformGroup o) {
  buildCounterPlatformGroup++;
  if (buildCounterPlatformGroup < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkDecimal(o.revshareMillipercent!);
  }
  buildCounterPlatformGroup--;
}

core.int buildCounterRequestSiteReviewResponse = 0;
api.RequestSiteReviewResponse buildRequestSiteReviewResponse() {
  final o = api.RequestSiteReviewResponse();
  buildCounterRequestSiteReviewResponse++;
  if (buildCounterRequestSiteReviewResponse < 3) {}
  buildCounterRequestSiteReviewResponse--;
  return o;
}

void checkRequestSiteReviewResponse(api.RequestSiteReviewResponse o) {
  buildCounterRequestSiteReviewResponse++;
  if (buildCounterRequestSiteReviewResponse < 3) {}
  buildCounterRequestSiteReviewResponse--;
}

core.int buildCounterSite = 0;
api.Site buildSite() {
  final o = api.Site();
  buildCounterSite++;
  if (buildCounterSite < 3) {
    o.domain = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterSite--;
  return o;
}

void checkSite(api.Site o) {
  buildCounterSite++;
  if (buildCounterSite < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterSite--;
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Account.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Address.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddress(od);
    });
  });

  unittest.group('obj-schema-CloseAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloseAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloseAccountRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloseAccountRequest(od);
    });
  });

  unittest.group('obj-schema-CloseAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloseAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloseAccountResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloseAccountResponse(od);
    });
  });

  unittest.group('obj-schema-Decimal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecimal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Decimal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDecimal(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Event.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-EventInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventInfo(od);
    });
  });

  unittest.group('obj-schema-ListAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlatformChildSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlatformChildSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlatformChildSitesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPlatformChildSitesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlatformGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlatformGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlatformGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPlatformGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPlatformsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPlatformsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPlatformsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPlatformsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSitesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSitesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSitesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSitesResponse(od);
    });
  });

  unittest.group('obj-schema-LookupAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupAccountResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupAccountResponse(od);
    });
  });

  unittest.group('obj-schema-Platform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Platform.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlatform(od);
    });
  });

  unittest.group('obj-schema-PlatformChildSite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformChildSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformChildSite.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlatformChildSite(od);
    });
  });

  unittest.group('obj-schema-PlatformGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlatformGroup(od);
    });
  });

  unittest.group('obj-schema-RequestSiteReviewResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestSiteReviewResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestSiteReviewResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestSiteReviewResponse(od);
    });
  });

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Site.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSite(od);
    });
  });

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZone(od);
    });
  });

  unittest.group('resource-AccountsPlatformsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).accounts.platforms;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPlatform());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPlatform(response as api.Platform);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).accounts.platforms;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListPlatformsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPlatformsResponse(response as api.ListPlatformsResponse);
    });
  });

  unittest.group('resource-AccountsPlatformsChildAccountsSitesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AdSensePlatformApi(mock).accounts.platforms.childAccounts.sites;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPlatformChildSite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPlatformChildSite(response as api.PlatformChildSite);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AdSensePlatformApi(mock).accounts.platforms.childAccounts.sites;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListPlatformChildSitesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPlatformChildSitesResponse(
        response as api.ListPlatformChildSitesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AdSensePlatformApi(mock).accounts.platforms.childAccounts.sites;
      final arg_request = buildPlatformChildSite();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PlatformChildSite.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPlatformChildSite(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPlatformChildSite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkPlatformChildSite(response as api.PlatformChildSite);
    });
  });

  unittest.group('resource-AccountsPlatformsGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).accounts.platforms.groups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPlatformGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPlatformGroup(response as api.PlatformGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).accounts.platforms.groups;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListPlatformGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPlatformGroupsResponse(
        response as api.ListPlatformGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).accounts.platforms.groups;
      final arg_request = buildPlatformGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PlatformGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPlatformGroup(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPlatformGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkPlatformGroup(response as api.PlatformGroup);
    });
  });

  unittest.group('resource-PlatformsAccountsResource', () {
    unittest.test('method--close', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts;
      final arg_request = buildCloseAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CloseAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCloseAccountRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCloseAccountResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.close(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCloseAccountResponse(response as api.CloseAccountResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts;
      final arg_request = buildAccount();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Account.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAccount(response as api.Account);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAccountsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAccountsResponse(response as api.ListAccountsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts;
      final arg_parent = 'foo';
      final arg_creationRequestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['creationRequestId']!.first,
            unittest.equals(arg_creationRequestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLookupAccountResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        arg_parent,
        creationRequestId: arg_creationRequestId,
        $fields: arg_$fields,
      );
      checkLookupAccountResponse(response as api.LookupAccountResponse);
    });
  });

  unittest.group('resource-PlatformsAccountsEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts.events;
      final arg_request = buildEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Event.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEvent(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEvent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEvent(response as api.Event);
    });
  });

  unittest.group('resource-PlatformsAccountsSitesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts.sites;
      final arg_request = buildSite();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Site.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSite(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSite(response as api.Site);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts.sites;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts.sites;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSite());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSite(response as api.Site);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts.sites;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSitesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSitesResponse(response as api.ListSitesResponse);
    });

    unittest.test('method--requestReview', () async {
      final mock = HttpServerMock();
      final res = api.AdSensePlatformApi(mock).platforms.accounts.sites;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRequestSiteReviewResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.requestReview(arg_name, $fields: arg_$fields);
      checkRequestSiteReviewResponse(response as api.RequestSiteReviewResponse);
    });
  });
}
