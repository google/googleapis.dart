// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/webcontentpublisher/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCheckFreeAccessResponse = 0;
api.CheckFreeAccessResponse buildCheckFreeAccessResponse() {
  final o = api.CheckFreeAccessResponse();
  buildCounterCheckFreeAccessResponse++;
  if (buildCounterCheckFreeAccessResponse < 3) {
    o.isAllowed = true;
  }
  buildCounterCheckFreeAccessResponse--;
  return o;
}

void checkCheckFreeAccessResponse(api.CheckFreeAccessResponse o) {
  buildCounterCheckFreeAccessResponse++;
  if (buildCounterCheckFreeAccessResponse < 3) {
    unittest.expect(o.isAllowed!, unittest.isTrue);
  }
  buildCounterCheckFreeAccessResponse--;
}

core.int buildCounterContentPolicyStatus = 0;
api.ContentPolicyStatus buildContentPolicyStatus() {
  final o = api.ContentPolicyStatus();
  buildCounterContentPolicyStatus++;
  if (buildCounterContentPolicyStatus < 3) {
    o.policyInfoUrl = 'foo';
    o.state = 'foo';
  }
  buildCounterContentPolicyStatus--;
  return o;
}

void checkContentPolicyStatus(api.ContentPolicyStatus o) {
  buildCounterContentPolicyStatus++;
  if (buildCounterContentPolicyStatus < 3) {
    unittest.expect(o.policyInfoUrl!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterContentPolicyStatus--;
}

core.int buildCounterCta = 0;
api.Cta buildCta() {
  final o = api.Cta();
  buildCounterCta++;
  if (buildCounterCta < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.newsletterConfig = buildNewsletterConfig();
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterCta--;
  return o;
}

void checkCta(api.Cta o) {
  buildCounterCta++;
  if (buildCounterCta < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNewsletterConfig(o.newsletterConfig!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterCta--;
}

core.int buildCounterDomainProperty = 0;
api.DomainProperty buildDomainProperty() {
  final o = api.DomainProperty();
  buildCounterDomainProperty++;
  if (buildCounterDomainProperty < 3) {
    o.ownershipVerified = true;
    o.url = 'foo';
  }
  buildCounterDomainProperty--;
  return o;
}

void checkDomainProperty(api.DomainProperty o) {
  buildCounterDomainProperty++;
  if (buildCounterDomainProperty < 3) {
    unittest.expect(o.ownershipVerified!, unittest.isTrue);
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterDomainProperty--;
}

core.int buildCounterGeneratePlatformSiteTokensRequest = 0;
api.GeneratePlatformSiteTokensRequest buildGeneratePlatformSiteTokensRequest() {
  final o = api.GeneratePlatformSiteTokensRequest();
  buildCounterGeneratePlatformSiteTokensRequest++;
  if (buildCounterGeneratePlatformSiteTokensRequest < 3) {}
  buildCounterGeneratePlatformSiteTokensRequest--;
  return o;
}

void checkGeneratePlatformSiteTokensRequest(
  api.GeneratePlatformSiteTokensRequest o,
) {
  buildCounterGeneratePlatformSiteTokensRequest++;
  if (buildCounterGeneratePlatformSiteTokensRequest < 3) {}
  buildCounterGeneratePlatformSiteTokensRequest--;
}

core.List<api.SiteToken> buildUnnamed0() => [
  buildSiteToken(),
  buildSiteToken(),
];

void checkUnnamed0(core.List<api.SiteToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteToken(o[0]);
  checkSiteToken(o[1]);
}

core.int buildCounterGeneratePlatformSiteTokensResponse = 0;
api.GeneratePlatformSiteTokensResponse
buildGeneratePlatformSiteTokensResponse() {
  final o = api.GeneratePlatformSiteTokensResponse();
  buildCounterGeneratePlatformSiteTokensResponse++;
  if (buildCounterGeneratePlatformSiteTokensResponse < 3) {
    o.siteTokens = buildUnnamed0();
  }
  buildCounterGeneratePlatformSiteTokensResponse--;
  return o;
}

void checkGeneratePlatformSiteTokensResponse(
  api.GeneratePlatformSiteTokensResponse o,
) {
  buildCounterGeneratePlatformSiteTokensResponse++;
  if (buildCounterGeneratePlatformSiteTokensResponse < 3) {
    checkUnnamed0(o.siteTokens!);
  }
  buildCounterGeneratePlatformSiteTokensResponse--;
}

core.List<api.Cta> buildUnnamed1() => [buildCta(), buildCta()];

void checkUnnamed1(core.List<api.Cta> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCta(o[0]);
  checkCta(o[1]);
}

core.int buildCounterListCtasResponse = 0;
api.ListCtasResponse buildListCtasResponse() {
  final o = api.ListCtasResponse();
  buildCounterListCtasResponse++;
  if (buildCounterListCtasResponse < 3) {
    o.ctas = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListCtasResponse--;
  return o;
}

void checkListCtasResponse(api.ListCtasResponse o) {
  buildCounterListCtasResponse++;
  if (buildCounterListCtasResponse < 3) {
    checkUnnamed1(o.ctas!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCtasResponse--;
}

core.List<api.Publication> buildUnnamed2() => [
  buildPublication(),
  buildPublication(),
];

void checkUnnamed2(core.List<api.Publication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublication(o[0]);
  checkPublication(o[1]);
}

core.int buildCounterListPublicationsResponse = 0;
api.ListPublicationsResponse buildListPublicationsResponse() {
  final o = api.ListPublicationsResponse();
  buildCounterListPublicationsResponse++;
  if (buildCounterListPublicationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.publications = buildUnnamed2();
  }
  buildCounterListPublicationsResponse--;
  return o;
}

void checkListPublicationsResponse(api.ListPublicationsResponse o) {
  buildCounterListPublicationsResponse++;
  if (buildCounterListPublicationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.publications!);
  }
  buildCounterListPublicationsResponse--;
}

core.int buildCounterNewsletterConfig = 0;
api.NewsletterConfig buildNewsletterConfig() {
  final o = api.NewsletterConfig();
  buildCounterNewsletterConfig++;
  if (buildCounterNewsletterConfig < 3) {
    o.customConsentText = 'foo';
    o.customMessage = 'foo';
    o.nameRequired = true;
    o.optInRequired = true;
    o.title = 'foo';
  }
  buildCounterNewsletterConfig--;
  return o;
}

void checkNewsletterConfig(api.NewsletterConfig o) {
  buildCounterNewsletterConfig++;
  if (buildCounterNewsletterConfig < 3) {
    unittest.expect(o.customConsentText!, unittest.equals('foo'));
    unittest.expect(o.customMessage!, unittest.equals('foo'));
    unittest.expect(o.nameRequired!, unittest.isTrue);
    unittest.expect(o.optInRequired!, unittest.isTrue);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterNewsletterConfig--;
}

core.List<api.DomainProperty> buildUnnamed3() => [
  buildDomainProperty(),
  buildDomainProperty(),
];

void checkUnnamed3(core.List<api.DomainProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainProperty(o[0]);
  checkDomainProperty(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublication = 0;
api.Publication buildPublication() {
  final o = api.Publication();
  buildCounterPublication++;
  if (buildCounterPublication < 3) {
    o.additionalDomains = buildUnnamed3();
    o.contentPolicyStatus = buildContentPolicyStatus();
    o.displayName = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.onboardingState = 'foo';
    o.organizationId = 'foo';
    o.paymentOption = 'foo';
    o.primaryDomain = buildDomainProperty();
    o.products = buildUnnamed4();
    o.publicationId = 'foo';
    o.publicationPrivacyPolicyUrl = 'foo';
    o.publicationTosUrl = 'foo';
    o.publicationType = 'foo';
    o.regionCode = 'foo';
    o.rrmProduct = buildRrmProduct();
    o.slProduct = buildSlProduct();
  }
  buildCounterPublication--;
  return o;
}

void checkPublication(api.Publication o) {
  buildCounterPublication++;
  if (buildCounterPublication < 3) {
    checkUnnamed3(o.additionalDomains!);
    checkContentPolicyStatus(o.contentPolicyStatus!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.onboardingState!, unittest.equals('foo'));
    unittest.expect(o.organizationId!, unittest.equals('foo'));
    unittest.expect(o.paymentOption!, unittest.equals('foo'));
    checkDomainProperty(o.primaryDomain!);
    checkUnnamed4(o.products!);
    unittest.expect(o.publicationId!, unittest.equals('foo'));
    unittest.expect(o.publicationPrivacyPolicyUrl!, unittest.equals('foo'));
    unittest.expect(o.publicationTosUrl!, unittest.equals('foo'));
    unittest.expect(o.publicationType!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    checkRrmProduct(o.rrmProduct!);
    checkSlProduct(o.slProduct!);
  }
  buildCounterPublication--;
}

core.int buildCounterRrmProduct = 0;
api.RrmProduct buildRrmProduct() {
  final o = api.RrmProduct();
  buildCounterRrmProduct++;
  if (buildCounterRrmProduct < 3) {
    o.enabled = true;
    o.productTosUrl = 'foo';
    o.tosAcceptance = buildTosAcceptance();
  }
  buildCounterRrmProduct--;
  return o;
}

void checkRrmProduct(api.RrmProduct o) {
  buildCounterRrmProduct++;
  if (buildCounterRrmProduct < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.productTosUrl!, unittest.equals('foo'));
    checkTosAcceptance(o.tosAcceptance!);
  }
  buildCounterRrmProduct--;
}

core.int buildCounterSiteToken = 0;
api.SiteToken buildSiteToken() {
  final o = api.SiteToken();
  buildCounterSiteToken++;
  if (buildCounterSiteToken < 3) {
    o.domain = 'foo';
    o.token = 'foo';
  }
  buildCounterSiteToken--;
  return o;
}

void checkSiteToken(api.SiteToken o) {
  buildCounterSiteToken++;
  if (buildCounterSiteToken < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterSiteToken--;
}

core.int buildCounterSlProduct = 0;
api.SlProduct buildSlProduct() {
  final o = api.SlProduct();
  buildCounterSlProduct++;
  if (buildCounterSlProduct < 3) {
    o.enabled = true;
    o.gcpProjectNumber = 'foo';
  }
  buildCounterSlProduct--;
  return o;
}

void checkSlProduct(api.SlProduct o) {
  buildCounterSlProduct++;
  if (buildCounterSlProduct < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.gcpProjectNumber!, unittest.equals('foo'));
  }
  buildCounterSlProduct--;
}

core.int buildCounterTosAcceptance = 0;
api.TosAcceptance buildTosAcceptance() {
  final o = api.TosAcceptance();
  buildCounterTosAcceptance++;
  if (buildCounterTosAcceptance < 3) {
    o.emailOptIn = true;
    o.signer = 'foo';
    o.signerTitle = 'foo';
    o.userAccepted = true;
  }
  buildCounterTosAcceptance--;
  return o;
}

void checkTosAcceptance(api.TosAcceptance o) {
  buildCounterTosAcceptance++;
  if (buildCounterTosAcceptance < 3) {
    unittest.expect(o.emailOptIn!, unittest.isTrue);
    unittest.expect(o.signer!, unittest.equals('foo'));
    unittest.expect(o.signerTitle!, unittest.equals('foo'));
    unittest.expect(o.userAccepted!, unittest.isTrue);
  }
  buildCounterTosAcceptance--;
}

void main() {
  unittest.group('obj-schema-CheckFreeAccessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckFreeAccessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckFreeAccessResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckFreeAccessResponse(od);
    });
  });

  unittest.group('obj-schema-ContentPolicyStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentPolicyStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentPolicyStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentPolicyStatus(od);
    });
  });

  unittest.group('obj-schema-Cta', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCta();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cta.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCta(od);
    });
  });

  unittest.group('obj-schema-DomainProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainProperty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomainProperty(od);
    });
  });

  unittest.group('obj-schema-GeneratePlatformSiteTokensRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratePlatformSiteTokensRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratePlatformSiteTokensRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeneratePlatformSiteTokensRequest(od);
    });
  });

  unittest.group('obj-schema-GeneratePlatformSiteTokensResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratePlatformSiteTokensResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratePlatformSiteTokensResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGeneratePlatformSiteTokensResponse(od);
    });
  });

  unittest.group('obj-schema-ListCtasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCtasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCtasResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCtasResponse(od);
    });
  });

  unittest.group('obj-schema-ListPublicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPublicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPublicationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPublicationsResponse(od);
    });
  });

  unittest.group('obj-schema-NewsletterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewsletterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewsletterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNewsletterConfig(od);
    });
  });

  unittest.group('obj-schema-Publication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Publication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublication(od);
    });
  });

  unittest.group('obj-schema-RrmProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRrmProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RrmProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRrmProduct(od);
    });
  });

  unittest.group('obj-schema-SiteToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSiteToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SiteToken.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSiteToken(od);
    });
  });

  unittest.group('obj-schema-SlProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSlProduct(od);
    });
  });

  unittest.group('obj-schema-TosAcceptance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTosAcceptance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TosAcceptance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTosAcceptance(od);
    });
  });

  unittest.group('resource-OrganizationsPublicationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(mock).organizations.publications;
      final arg_request = buildPublication();
      final arg_parent = 'foo';
      final arg_publicationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Publication.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPublication(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['publicationId']!.first,
            unittest.equals(arg_publicationId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPublication());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        publicationId: arg_publicationId,
        $fields: arg_$fields,
      );
      checkPublication(response as api.Publication);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(mock).organizations.publications;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildPublication());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPublication(response as api.Publication);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(mock).organizations.publications;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListPublicationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPublicationsResponse(response as api.ListPublicationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(mock).organizations.publications;
      final arg_request = buildPublication();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Publication.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPublication(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildPublication());
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
      checkPublication(response as api.Publication);
    });
  });

  unittest.group('resource-OrganizationsPublicationsCtasResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(
        mock,
      ).organizations.publications.ctas;
      final arg_request = buildCta();
      final arg_parent = 'foo';
      final arg_ctaId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cta.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCta(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          unittest.expect(queryMap['ctaId']!.first, unittest.equals(arg_ctaId));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCta());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        ctaId: arg_ctaId,
        $fields: arg_$fields,
      );
      checkCta(response as api.Cta);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(
        mock,
      ).organizations.publications.ctas;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildCta());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCta(response as api.Cta);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(
        mock,
      ).organizations.publications.ctas;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildListCtasResponse());
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
      checkListCtasResponse(response as api.ListCtasResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(
        mock,
      ).organizations.publications.ctas;
      final arg_request = buildCta();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cta.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCta(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildCta());
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
      checkCta(response as api.Cta);
    });
  });

  unittest.group('resource-PublicationsResource', () {
    unittest.test('method--checkFreeAccess', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(mock).publications;
      final arg_name = 'foo';
      final arg_httpReferrer = 'foo';
      final arg_uri = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['httpReferrer']!.first,
            unittest.equals(arg_httpReferrer),
          );
          unittest.expect(queryMap['uri']!.first, unittest.equals(arg_uri));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCheckFreeAccessResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkFreeAccess(
        arg_name,
        httpReferrer: arg_httpReferrer,
        uri: arg_uri,
        $fields: arg_$fields,
      );
      checkCheckFreeAccessResponse(response as api.CheckFreeAccessResponse);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--generatePlatformSiteTokens', () async {
      final mock = HttpServerMock();
      final res = api.WebContentPublisherApi(mock).users;
      final arg_request = buildGeneratePlatformSiteTokensRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GeneratePlatformSiteTokensRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGeneratePlatformSiteTokensRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(
            buildGeneratePlatformSiteTokensResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generatePlatformSiteTokens(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGeneratePlatformSiteTokensResponse(
        response as api.GeneratePlatformSiteTokensResponse,
      );
    });
  });
}
