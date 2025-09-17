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

import 'package:googleapis/merchantapi/datasources_v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.dataSourceId = 'foo';
    o.displayName = 'foo';
    o.fileInput = buildFileInput();
    o.input = 'foo';
    o.localInventoryDataSource = buildLocalInventoryDataSource();
    o.merchantReviewDataSource = buildMerchantReviewDataSource();
    o.name = 'foo';
    o.primaryProductDataSource = buildPrimaryProductDataSource();
    o.productReviewDataSource = buildProductReviewDataSource();
    o.promotionDataSource = buildPromotionDataSource();
    o.regionalInventoryDataSource = buildRegionalInventoryDataSource();
    o.supplementalProductDataSource = buildSupplementalProductDataSource();
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    unittest.expect(o.dataSourceId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkFileInput(o.fileInput!);
    unittest.expect(o.input!, unittest.equals('foo'));
    checkLocalInventoryDataSource(o.localInventoryDataSource!);
    checkMerchantReviewDataSource(o.merchantReviewDataSource!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrimaryProductDataSource(o.primaryProductDataSource!);
    checkProductReviewDataSource(o.productReviewDataSource!);
    checkPromotionDataSource(o.promotionDataSource!);
    checkRegionalInventoryDataSource(o.regionalInventoryDataSource!);
    checkSupplementalProductDataSource(o.supplementalProductDataSource!);
  }
  buildCounterDataSource--;
}

core.int buildCounterDataSourceReference = 0;
api.DataSourceReference buildDataSourceReference() {
  final o = api.DataSourceReference();
  buildCounterDataSourceReference++;
  if (buildCounterDataSourceReference < 3) {
    o.primaryDataSourceName = 'foo';
    o.self = true;
    o.supplementalDataSourceName = 'foo';
  }
  buildCounterDataSourceReference--;
  return o;
}

void checkDataSourceReference(api.DataSourceReference o) {
  buildCounterDataSourceReference++;
  if (buildCounterDataSourceReference < 3) {
    unittest.expect(o.primaryDataSourceName!, unittest.equals('foo'));
    unittest.expect(o.self!, unittest.isTrue);
    unittest.expect(o.supplementalDataSourceName!, unittest.equals('foo'));
  }
  buildCounterDataSourceReference--;
}

core.List<api.DataSourceReference> buildUnnamed0() => [
  buildDataSourceReference(),
  buildDataSourceReference(),
];

void checkUnnamed0(core.List<api.DataSourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceReference(o[0]);
  checkDataSourceReference(o[1]);
}

core.int buildCounterDefaultRule = 0;
api.DefaultRule buildDefaultRule() {
  final o = api.DefaultRule();
  buildCounterDefaultRule++;
  if (buildCounterDefaultRule < 3) {
    o.takeFromDataSources = buildUnnamed0();
  }
  buildCounterDefaultRule--;
  return o;
}

void checkDefaultRule(api.DefaultRule o) {
  buildCounterDefaultRule++;
  if (buildCounterDefaultRule < 3) {
    checkUnnamed0(o.takeFromDataSources!);
  }
  buildCounterDefaultRule--;
}

core.int buildCounterDestination = 0;
api.Destination buildDestination() {
  final o = api.Destination();
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    o.destination = 'foo';
    o.state = 'foo';
  }
  buildCounterDestination--;
  return o;
}

void checkDestination(api.Destination o) {
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterDestination--;
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

core.int buildCounterFetchDataSourceRequest = 0;
api.FetchDataSourceRequest buildFetchDataSourceRequest() {
  final o = api.FetchDataSourceRequest();
  buildCounterFetchDataSourceRequest++;
  if (buildCounterFetchDataSourceRequest < 3) {}
  buildCounterFetchDataSourceRequest--;
  return o;
}

void checkFetchDataSourceRequest(api.FetchDataSourceRequest o) {
  buildCounterFetchDataSourceRequest++;
  if (buildCounterFetchDataSourceRequest < 3) {}
  buildCounterFetchDataSourceRequest--;
}

core.int buildCounterFetchSettings = 0;
api.FetchSettings buildFetchSettings() {
  final o = api.FetchSettings();
  buildCounterFetchSettings++;
  if (buildCounterFetchSettings < 3) {
    o.dayOfMonth = 42;
    o.dayOfWeek = 'foo';
    o.enabled = true;
    o.fetchUri = 'foo';
    o.frequency = 'foo';
    o.password = 'foo';
    o.timeOfDay = buildTimeOfDay();
    o.timeZone = 'foo';
    o.username = 'foo';
  }
  buildCounterFetchSettings--;
  return o;
}

void checkFetchSettings(api.FetchSettings o) {
  buildCounterFetchSettings++;
  if (buildCounterFetchSettings < 3) {
    unittest.expect(o.dayOfMonth!, unittest.equals(42));
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.fetchUri!, unittest.equals('foo'));
    unittest.expect(o.frequency!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    checkTimeOfDay(o.timeOfDay!);
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterFetchSettings--;
}

core.int buildCounterFileInput = 0;
api.FileInput buildFileInput() {
  final o = api.FileInput();
  buildCounterFileInput++;
  if (buildCounterFileInput < 3) {
    o.fetchSettings = buildFetchSettings();
    o.fileInputType = 'foo';
    o.fileName = 'foo';
  }
  buildCounterFileInput--;
  return o;
}

void checkFileInput(api.FileInput o) {
  buildCounterFileInput++;
  if (buildCounterFileInput < 3) {
    checkFetchSettings(o.fetchSettings!);
    unittest.expect(o.fileInputType!, unittest.equals('foo'));
    unittest.expect(o.fileName!, unittest.equals('foo'));
  }
  buildCounterFileInput--;
}

core.List<api.Issue> buildUnnamed1() => [buildIssue(), buildIssue()];

void checkUnnamed1(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

core.int buildCounterFileUpload = 0;
api.FileUpload buildFileUpload() {
  final o = api.FileUpload();
  buildCounterFileUpload++;
  if (buildCounterFileUpload < 3) {
    o.dataSourceId = 'foo';
    o.issues = buildUnnamed1();
    o.itemsCreated = 'foo';
    o.itemsTotal = 'foo';
    o.itemsUpdated = 'foo';
    o.name = 'foo';
    o.processingState = 'foo';
    o.uploadTime = 'foo';
  }
  buildCounterFileUpload--;
  return o;
}

void checkFileUpload(api.FileUpload o) {
  buildCounterFileUpload++;
  if (buildCounterFileUpload < 3) {
    unittest.expect(o.dataSourceId!, unittest.equals('foo'));
    checkUnnamed1(o.issues!);
    unittest.expect(o.itemsCreated!, unittest.equals('foo'));
    unittest.expect(o.itemsTotal!, unittest.equals('foo'));
    unittest.expect(o.itemsUpdated!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.processingState!, unittest.equals('foo'));
    unittest.expect(o.uploadTime!, unittest.equals('foo'));
  }
  buildCounterFileUpload--;
}

core.int buildCounterIssue = 0;
api.Issue buildIssue() {
  final o = api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.code = 'foo';
    o.count = 'foo';
    o.description = 'foo';
    o.documentationUri = 'foo';
    o.severity = 'foo';
    o.title = 'foo';
  }
  buildCounterIssue--;
  return o;
}

void checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterIssue--;
}

core.List<api.DataSource> buildUnnamed2() => [
  buildDataSource(),
  buildDataSource(),
];

void checkUnnamed2(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourcesResponse = 0;
api.ListDataSourcesResponse buildListDataSourcesResponse() {
  final o = api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSources = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

void checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed2(o.dataSources!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDataSourcesResponse--;
}

core.int buildCounterLocalInventoryDataSource = 0;
api.LocalInventoryDataSource buildLocalInventoryDataSource() {
  final o = api.LocalInventoryDataSource();
  buildCounterLocalInventoryDataSource++;
  if (buildCounterLocalInventoryDataSource < 3) {
    o.contentLanguage = 'foo';
    o.feedLabel = 'foo';
  }
  buildCounterLocalInventoryDataSource--;
  return o;
}

void checkLocalInventoryDataSource(api.LocalInventoryDataSource o) {
  buildCounterLocalInventoryDataSource++;
  if (buildCounterLocalInventoryDataSource < 3) {
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
  }
  buildCounterLocalInventoryDataSource--;
}

core.int buildCounterMerchantReviewDataSource = 0;
api.MerchantReviewDataSource buildMerchantReviewDataSource() {
  final o = api.MerchantReviewDataSource();
  buildCounterMerchantReviewDataSource++;
  if (buildCounterMerchantReviewDataSource < 3) {}
  buildCounterMerchantReviewDataSource--;
  return o;
}

void checkMerchantReviewDataSource(api.MerchantReviewDataSource o) {
  buildCounterMerchantReviewDataSource++;
  if (buildCounterMerchantReviewDataSource < 3) {}
  buildCounterMerchantReviewDataSource--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Destination> buildUnnamed4() => [
  buildDestination(),
  buildDestination(),
];

void checkUnnamed4(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.int buildCounterPrimaryProductDataSource = 0;
api.PrimaryProductDataSource buildPrimaryProductDataSource() {
  final o = api.PrimaryProductDataSource();
  buildCounterPrimaryProductDataSource++;
  if (buildCounterPrimaryProductDataSource < 3) {
    o.channel = 'foo';
    o.contentLanguage = 'foo';
    o.countries = buildUnnamed3();
    o.defaultRule = buildDefaultRule();
    o.destinations = buildUnnamed4();
    o.feedLabel = 'foo';
  }
  buildCounterPrimaryProductDataSource--;
  return o;
}

void checkPrimaryProductDataSource(api.PrimaryProductDataSource o) {
  buildCounterPrimaryProductDataSource++;
  if (buildCounterPrimaryProductDataSource < 3) {
    unittest.expect(o.channel!, unittest.equals('foo'));
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    checkUnnamed3(o.countries!);
    checkDefaultRule(o.defaultRule!);
    checkUnnamed4(o.destinations!);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
  }
  buildCounterPrimaryProductDataSource--;
}

core.int buildCounterProductReviewDataSource = 0;
api.ProductReviewDataSource buildProductReviewDataSource() {
  final o = api.ProductReviewDataSource();
  buildCounterProductReviewDataSource++;
  if (buildCounterProductReviewDataSource < 3) {}
  buildCounterProductReviewDataSource--;
  return o;
}

void checkProductReviewDataSource(api.ProductReviewDataSource o) {
  buildCounterProductReviewDataSource++;
  if (buildCounterProductReviewDataSource < 3) {}
  buildCounterProductReviewDataSource--;
}

core.int buildCounterPromotionDataSource = 0;
api.PromotionDataSource buildPromotionDataSource() {
  final o = api.PromotionDataSource();
  buildCounterPromotionDataSource++;
  if (buildCounterPromotionDataSource < 3) {
    o.contentLanguage = 'foo';
    o.targetCountry = 'foo';
  }
  buildCounterPromotionDataSource--;
  return o;
}

void checkPromotionDataSource(api.PromotionDataSource o) {
  buildCounterPromotionDataSource++;
  if (buildCounterPromotionDataSource < 3) {
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.targetCountry!, unittest.equals('foo'));
  }
  buildCounterPromotionDataSource--;
}

core.int buildCounterRegionalInventoryDataSource = 0;
api.RegionalInventoryDataSource buildRegionalInventoryDataSource() {
  final o = api.RegionalInventoryDataSource();
  buildCounterRegionalInventoryDataSource++;
  if (buildCounterRegionalInventoryDataSource < 3) {
    o.contentLanguage = 'foo';
    o.feedLabel = 'foo';
  }
  buildCounterRegionalInventoryDataSource--;
  return o;
}

void checkRegionalInventoryDataSource(api.RegionalInventoryDataSource o) {
  buildCounterRegionalInventoryDataSource++;
  if (buildCounterRegionalInventoryDataSource < 3) {
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
  }
  buildCounterRegionalInventoryDataSource--;
}

core.List<api.DataSourceReference> buildUnnamed5() => [
  buildDataSourceReference(),
  buildDataSourceReference(),
];

void checkUnnamed5(core.List<api.DataSourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceReference(o[0]);
  checkDataSourceReference(o[1]);
}

core.int buildCounterSupplementalProductDataSource = 0;
api.SupplementalProductDataSource buildSupplementalProductDataSource() {
  final o = api.SupplementalProductDataSource();
  buildCounterSupplementalProductDataSource++;
  if (buildCounterSupplementalProductDataSource < 3) {
    o.contentLanguage = 'foo';
    o.feedLabel = 'foo';
    o.referencingPrimaryDataSources = buildUnnamed5();
  }
  buildCounterSupplementalProductDataSource--;
  return o;
}

void checkSupplementalProductDataSource(api.SupplementalProductDataSource o) {
  buildCounterSupplementalProductDataSource++;
  if (buildCounterSupplementalProductDataSource < 3) {
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    checkUnnamed5(o.referencingPrimaryDataSources!);
  }
  buildCounterSupplementalProductDataSource--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
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

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

void main() {
  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataSource(od);
    });
  });

  unittest.group('obj-schema-DataSourceReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataSourceReference(od);
    });
  });

  unittest.group('obj-schema-DefaultRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultRule(od);
    });
  });

  unittest.group('obj-schema-Destination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Destination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestination(od);
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

  unittest.group('obj-schema-FetchDataSourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchDataSourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchDataSourceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchDataSourceRequest(od);
    });
  });

  unittest.group('obj-schema-FetchSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchSettings(od);
    });
  });

  unittest.group('obj-schema-FileInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileInput(od);
    });
  });

  unittest.group('obj-schema-FileUpload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileUpload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileUpload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileUpload(od);
    });
  });

  unittest.group('obj-schema-Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Issue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssue(od);
    });
  });

  unittest.group('obj-schema-ListDataSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDataSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-LocalInventoryDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalInventoryDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalInventoryDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalInventoryDataSource(od);
    });
  });

  unittest.group('obj-schema-MerchantReviewDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantReviewDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantReviewDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantReviewDataSource(od);
    });
  });

  unittest.group('obj-schema-PrimaryProductDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrimaryProductDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrimaryProductDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrimaryProductDataSource(od);
    });
  });

  unittest.group('obj-schema-ProductReviewDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductReviewDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductReviewDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductReviewDataSource(od);
    });
  });

  unittest.group('obj-schema-PromotionDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPromotionDataSource(od);
    });
  });

  unittest.group('obj-schema-RegionalInventoryDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalInventoryDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalInventoryDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegionalInventoryDataSource(od);
    });
  });

  unittest.group('obj-schema-SupplementalProductDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupplementalProductDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupplementalProductDataSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSupplementalProductDataSource(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeOfDay.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeOfDay(od);
    });
  });

  unittest.group('resource-AccountsDataSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources;
      final arg_request = buildDataSource();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataSource(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildDataSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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

    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources;
      final arg_request = buildFetchDataSourceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FetchDataSourceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFetchDataSourceRequest(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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
      final response = await res.fetch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildDataSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildListDataSourcesResponse());
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
      checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources;
      final arg_request = buildDataSource();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DataSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDataSource(obj);

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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildDataSource());
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
      checkDataSource(response as api.DataSource);
    });
  });

  unittest.group('resource-AccountsDataSourcesFileUploadsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.dataSources.fileUploads;
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('datasources/v1beta/'),
          );
          pathOffset += 19;
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
          final resp = convert.json.encode(buildFileUpload());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFileUpload(response as api.FileUpload);
    });
  });
}
