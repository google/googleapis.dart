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

import 'package:googleapis/chromewebstore/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCancelSubmissionRequest = 0;
api.CancelSubmissionRequest buildCancelSubmissionRequest() {
  final o = api.CancelSubmissionRequest();
  buildCounterCancelSubmissionRequest++;
  if (buildCounterCancelSubmissionRequest < 3) {}
  buildCounterCancelSubmissionRequest--;
  return o;
}

void checkCancelSubmissionRequest(api.CancelSubmissionRequest o) {
  buildCounterCancelSubmissionRequest++;
  if (buildCounterCancelSubmissionRequest < 3) {}
  buildCounterCancelSubmissionRequest--;
}

core.int buildCounterCancelSubmissionResponse = 0;
api.CancelSubmissionResponse buildCancelSubmissionResponse() {
  final o = api.CancelSubmissionResponse();
  buildCounterCancelSubmissionResponse++;
  if (buildCounterCancelSubmissionResponse < 3) {}
  buildCounterCancelSubmissionResponse--;
  return o;
}

void checkCancelSubmissionResponse(api.CancelSubmissionResponse o) {
  buildCounterCancelSubmissionResponse++;
  if (buildCounterCancelSubmissionResponse < 3) {}
  buildCounterCancelSubmissionResponse--;
}

core.int buildCounterDeployInfo = 0;
api.DeployInfo buildDeployInfo() {
  final o = api.DeployInfo();
  buildCounterDeployInfo++;
  if (buildCounterDeployInfo < 3) {
    o.deployPercentage = 42;
  }
  buildCounterDeployInfo--;
  return o;
}

void checkDeployInfo(api.DeployInfo o) {
  buildCounterDeployInfo++;
  if (buildCounterDeployInfo < 3) {
    unittest.expect(o.deployPercentage!, unittest.equals(42));
  }
  buildCounterDeployInfo--;
}

core.int buildCounterDistributionChannel = 0;
api.DistributionChannel buildDistributionChannel() {
  final o = api.DistributionChannel();
  buildCounterDistributionChannel++;
  if (buildCounterDistributionChannel < 3) {
    o.crxVersion = 'foo';
    o.deployPercentage = 42;
  }
  buildCounterDistributionChannel--;
  return o;
}

void checkDistributionChannel(api.DistributionChannel o) {
  buildCounterDistributionChannel++;
  if (buildCounterDistributionChannel < 3) {
    unittest.expect(o.crxVersion!, unittest.equals('foo'));
    unittest.expect(o.deployPercentage!, unittest.equals(42));
  }
  buildCounterDistributionChannel--;
}

core.int buildCounterFetchItemStatusResponse = 0;
api.FetchItemStatusResponse buildFetchItemStatusResponse() {
  final o = api.FetchItemStatusResponse();
  buildCounterFetchItemStatusResponse++;
  if (buildCounterFetchItemStatusResponse < 3) {
    o.itemId = 'foo';
    o.lastAsyncUploadState = 'foo';
    o.name = 'foo';
    o.publicKey = 'foo';
    o.publishedItemRevisionStatus = buildItemRevisionStatus();
    o.submittedItemRevisionStatus = buildItemRevisionStatus();
    o.takenDown = true;
    o.warned = true;
  }
  buildCounterFetchItemStatusResponse--;
  return o;
}

void checkFetchItemStatusResponse(api.FetchItemStatusResponse o) {
  buildCounterFetchItemStatusResponse++;
  if (buildCounterFetchItemStatusResponse < 3) {
    unittest.expect(o.itemId!, unittest.equals('foo'));
    unittest.expect(o.lastAsyncUploadState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.publicKey!, unittest.equals('foo'));
    checkItemRevisionStatus(o.publishedItemRevisionStatus!);
    checkItemRevisionStatus(o.submittedItemRevisionStatus!);
    unittest.expect(o.takenDown!, unittest.isTrue);
    unittest.expect(o.warned!, unittest.isTrue);
  }
  buildCounterFetchItemStatusResponse--;
}

core.List<api.DistributionChannel> buildUnnamed0() => [
  buildDistributionChannel(),
  buildDistributionChannel(),
];

void checkUnnamed0(core.List<api.DistributionChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistributionChannel(o[0]);
  checkDistributionChannel(o[1]);
}

core.int buildCounterItemRevisionStatus = 0;
api.ItemRevisionStatus buildItemRevisionStatus() {
  final o = api.ItemRevisionStatus();
  buildCounterItemRevisionStatus++;
  if (buildCounterItemRevisionStatus < 3) {
    o.distributionChannels = buildUnnamed0();
    o.state = 'foo';
  }
  buildCounterItemRevisionStatus--;
  return o;
}

void checkItemRevisionStatus(api.ItemRevisionStatus o) {
  buildCounterItemRevisionStatus++;
  if (buildCounterItemRevisionStatus < 3) {
    checkUnnamed0(o.distributionChannels!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterItemRevisionStatus--;
}

core.List<api.DeployInfo> buildUnnamed1() => [
  buildDeployInfo(),
  buildDeployInfo(),
];

void checkUnnamed1(core.List<api.DeployInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployInfo(o[0]);
  checkDeployInfo(o[1]);
}

core.int buildCounterPublishItemRequest = 0;
api.PublishItemRequest buildPublishItemRequest() {
  final o = api.PublishItemRequest();
  buildCounterPublishItemRequest++;
  if (buildCounterPublishItemRequest < 3) {
    o.deployInfos = buildUnnamed1();
    o.publishType = 'foo';
    o.skipReview = true;
  }
  buildCounterPublishItemRequest--;
  return o;
}

void checkPublishItemRequest(api.PublishItemRequest o) {
  buildCounterPublishItemRequest++;
  if (buildCounterPublishItemRequest < 3) {
    checkUnnamed1(o.deployInfos!);
    unittest.expect(o.publishType!, unittest.equals('foo'));
    unittest.expect(o.skipReview!, unittest.isTrue);
  }
  buildCounterPublishItemRequest--;
}

core.int buildCounterPublishItemResponse = 0;
api.PublishItemResponse buildPublishItemResponse() {
  final o = api.PublishItemResponse();
  buildCounterPublishItemResponse++;
  if (buildCounterPublishItemResponse < 3) {
    o.itemId = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterPublishItemResponse--;
  return o;
}

void checkPublishItemResponse(api.PublishItemResponse o) {
  buildCounterPublishItemResponse++;
  if (buildCounterPublishItemResponse < 3) {
    unittest.expect(o.itemId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterPublishItemResponse--;
}

core.int buildCounterSetPublishedDeployPercentageRequest = 0;
api.SetPublishedDeployPercentageRequest
buildSetPublishedDeployPercentageRequest() {
  final o = api.SetPublishedDeployPercentageRequest();
  buildCounterSetPublishedDeployPercentageRequest++;
  if (buildCounterSetPublishedDeployPercentageRequest < 3) {
    o.deployPercentage = 42;
  }
  buildCounterSetPublishedDeployPercentageRequest--;
  return o;
}

void checkSetPublishedDeployPercentageRequest(
  api.SetPublishedDeployPercentageRequest o,
) {
  buildCounterSetPublishedDeployPercentageRequest++;
  if (buildCounterSetPublishedDeployPercentageRequest < 3) {
    unittest.expect(o.deployPercentage!, unittest.equals(42));
  }
  buildCounterSetPublishedDeployPercentageRequest--;
}

core.int buildCounterSetPublishedDeployPercentageResponse = 0;
api.SetPublishedDeployPercentageResponse
buildSetPublishedDeployPercentageResponse() {
  final o = api.SetPublishedDeployPercentageResponse();
  buildCounterSetPublishedDeployPercentageResponse++;
  if (buildCounterSetPublishedDeployPercentageResponse < 3) {}
  buildCounterSetPublishedDeployPercentageResponse--;
  return o;
}

void checkSetPublishedDeployPercentageResponse(
  api.SetPublishedDeployPercentageResponse o,
) {
  buildCounterSetPublishedDeployPercentageResponse++;
  if (buildCounterSetPublishedDeployPercentageResponse < 3) {}
  buildCounterSetPublishedDeployPercentageResponse--;
}

core.int buildCounterUploadItemPackageRequest = 0;
api.UploadItemPackageRequest buildUploadItemPackageRequest() {
  final o = api.UploadItemPackageRequest();
  buildCounterUploadItemPackageRequest++;
  if (buildCounterUploadItemPackageRequest < 3) {}
  buildCounterUploadItemPackageRequest--;
  return o;
}

void checkUploadItemPackageRequest(api.UploadItemPackageRequest o) {
  buildCounterUploadItemPackageRequest++;
  if (buildCounterUploadItemPackageRequest < 3) {}
  buildCounterUploadItemPackageRequest--;
}

core.int buildCounterUploadItemPackageResponse = 0;
api.UploadItemPackageResponse buildUploadItemPackageResponse() {
  final o = api.UploadItemPackageResponse();
  buildCounterUploadItemPackageResponse++;
  if (buildCounterUploadItemPackageResponse < 3) {
    o.crxVersion = 'foo';
    o.itemId = 'foo';
    o.name = 'foo';
    o.uploadState = 'foo';
  }
  buildCounterUploadItemPackageResponse--;
  return o;
}

void checkUploadItemPackageResponse(api.UploadItemPackageResponse o) {
  buildCounterUploadItemPackageResponse++;
  if (buildCounterUploadItemPackageResponse < 3) {
    unittest.expect(o.crxVersion!, unittest.equals('foo'));
    unittest.expect(o.itemId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uploadState!, unittest.equals('foo'));
  }
  buildCounterUploadItemPackageResponse--;
}

void main() {
  unittest.group('obj-schema-CancelSubmissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelSubmissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelSubmissionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelSubmissionRequest(od);
    });
  });

  unittest.group('obj-schema-CancelSubmissionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelSubmissionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelSubmissionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelSubmissionResponse(od);
    });
  });

  unittest.group('obj-schema-DeployInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployInfo(od);
    });
  });

  unittest.group('obj-schema-DistributionChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistributionChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DistributionChannel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDistributionChannel(od);
    });
  });

  unittest.group('obj-schema-FetchItemStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchItemStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchItemStatusResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchItemStatusResponse(od);
    });
  });

  unittest.group('obj-schema-ItemRevisionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemRevisionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemRevisionStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemRevisionStatus(od);
    });
  });

  unittest.group('obj-schema-PublishItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishItemRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishItemRequest(od);
    });
  });

  unittest.group('obj-schema-PublishItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishItemResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishItemResponse(od);
    });
  });

  unittest.group('obj-schema-SetPublishedDeployPercentageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetPublishedDeployPercentageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetPublishedDeployPercentageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetPublishedDeployPercentageRequest(od);
    });
  });

  unittest.group('obj-schema-SetPublishedDeployPercentageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetPublishedDeployPercentageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetPublishedDeployPercentageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetPublishedDeployPercentageResponse(od);
    });
  });

  unittest.group('obj-schema-UploadItemPackageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadItemPackageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadItemPackageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUploadItemPackageRequest(od);
    });
  });

  unittest.group('obj-schema-UploadItemPackageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadItemPackageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadItemPackageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUploadItemPackageResponse(od);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).media;
      final arg_request = buildUploadItemPackageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UploadItemPackageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUploadItemPackageRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildUploadItemPackageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkUploadItemPackageResponse(response as api.UploadItemPackageResponse);
    });
  });

  unittest.group('resource-PublishersItemsResource', () {
    unittest.test('method--cancelSubmission', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
      final arg_request = buildCancelSubmissionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelSubmissionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelSubmissionRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildCancelSubmissionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancelSubmission(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkCancelSubmissionResponse(response as api.CancelSubmissionResponse);
    });

    unittest.test('method--fetchStatus', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildFetchItemStatusResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchStatus(arg_name, $fields: arg_$fields);
      checkFetchItemStatusResponse(response as api.FetchItemStatusResponse);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
      final arg_request = buildPublishItemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PublishItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPublishItemRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildPublishItemResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publish(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPublishItemResponse(response as api.PublishItemResponse);
    });

    unittest.test('method--setPublishedDeployPercentage', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
      final arg_request = buildSetPublishedDeployPercentageRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetPublishedDeployPercentageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetPublishedDeployPercentageRequest(obj);

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
            unittest.equals('v2/'),
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
            buildSetPublishedDeployPercentageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setPublishedDeployPercentage(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSetPublishedDeployPercentageResponse(
        response as api.SetPublishedDeployPercentageResponse,
      );
    });
  });
}
