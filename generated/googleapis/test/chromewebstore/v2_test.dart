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

import 'package:googleapis/chromewebstore/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAuthorInfo = 0;
api.AuthorInfo buildAuthorInfo() {
  final o = api.AuthorInfo();
  buildCounterAuthorInfo++;
  if (buildCounterAuthorInfo < 3) {
    o.displayName = 'foo';
  }
  buildCounterAuthorInfo--;
  return o;
}

void checkAuthorInfo(api.AuthorInfo o) {
  buildCounterAuthorInfo++;
  if (buildCounterAuthorInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterAuthorInfo--;
}

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

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
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

core.List<api.Review> buildUnnamed0() => [buildReview(), buildReview()];

void checkUnnamed0(core.List<api.Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReview(o[0]);
  checkReview(o[1]);
}

core.int buildCounterFetchItemReviewsResponse = 0;
api.FetchItemReviewsResponse buildFetchItemReviewsResponse() {
  final o = api.FetchItemReviewsResponse();
  buildCounterFetchItemReviewsResponse++;
  if (buildCounterFetchItemReviewsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reviews = buildUnnamed0();
  }
  buildCounterFetchItemReviewsResponse--;
  return o;
}

void checkFetchItemReviewsResponse(api.FetchItemReviewsResponse o) {
  buildCounterFetchItemReviewsResponse++;
  if (buildCounterFetchItemReviewsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed0(o.reviews!);
  }
  buildCounterFetchItemReviewsResponse--;
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

core.List<api.DistributionChannel> buildUnnamed1() => [
  buildDistributionChannel(),
  buildDistributionChannel(),
];

void checkUnnamed1(core.List<api.DistributionChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistributionChannel(o[0]);
  checkDistributionChannel(o[1]);
}

core.int buildCounterItemRevisionStatus = 0;
api.ItemRevisionStatus buildItemRevisionStatus() {
  final o = api.ItemRevisionStatus();
  buildCounterItemRevisionStatus++;
  if (buildCounterItemRevisionStatus < 3) {
    o.distributionChannels = buildUnnamed1();
    o.state = 'foo';
  }
  buildCounterItemRevisionStatus--;
  return o;
}

void checkItemRevisionStatus(api.ItemRevisionStatus o) {
  buildCounterItemRevisionStatus++;
  if (buildCounterItemRevisionStatus < 3) {
    checkUnnamed1(o.distributionChannels!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterItemRevisionStatus--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.MetricValue> buildUnnamed3() => [
  buildMetricValue(),
  buildMetricValue(),
];

void checkUnnamed3(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0]);
  checkMetricValue(o[1]);
}

core.int buildCounterMetricRow = 0;
api.MetricRow buildMetricRow() {
  final o = api.MetricRow();
  buildCounterMetricRow++;
  if (buildCounterMetricRow < 3) {
    o.date = buildDate();
    o.dimensionValues = buildUnnamed2();
    o.metricValues = buildUnnamed3();
  }
  buildCounterMetricRow--;
  return o;
}

void checkMetricRow(api.MetricRow o) {
  buildCounterMetricRow++;
  if (buildCounterMetricRow < 3) {
    checkDate(o.date!);
    checkUnnamed2(o.dimensionValues!);
    checkUnnamed3(o.metricValues!);
  }
  buildCounterMetricRow--;
}

core.int buildCounterMetricValue = 0;
api.MetricValue buildMetricValue() {
  final o = api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.metric = 'foo';
    o.uniqueUserCount = 'foo';
    o.value = 'foo';
  }
  buildCounterMetricValue--;
  return o;
}

void checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(o.metric!, unittest.equals('foo'));
    unittest.expect(o.uniqueUserCount!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterMetricValue--;
}

core.List<api.DeployInfo> buildUnnamed4() => [
  buildDeployInfo(),
  buildDeployInfo(),
];

void checkUnnamed4(core.List<api.DeployInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployInfo(o[0]);
  checkDeployInfo(o[1]);
}

core.int buildCounterPublishItemRequest = 0;
api.PublishItemRequest buildPublishItemRequest() {
  final o = api.PublishItemRequest();
  buildCounterPublishItemRequest++;
  if (buildCounterPublishItemRequest < 3) {
    o.blockOnWarnings = true;
    o.deployInfos = buildUnnamed4();
    o.publishType = 'foo';
    o.skipReview = true;
  }
  buildCounterPublishItemRequest--;
  return o;
}

void checkPublishItemRequest(api.PublishItemRequest o) {
  buildCounterPublishItemRequest++;
  if (buildCounterPublishItemRequest < 3) {
    unittest.expect(o.blockOnWarnings!, unittest.isTrue);
    checkUnnamed4(o.deployInfos!);
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
    o.warningInfo = buildWarningsInfo();
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
    checkWarningsInfo(o.warningInfo!);
  }
  buildCounterPublishItemResponse--;
}

core.List<api.MetricRow> buildUnnamed5() => [
  buildMetricRow(),
  buildMetricRow(),
];

void checkUnnamed5(core.List<api.MetricRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRow(o[0]);
  checkMetricRow(o[1]);
}

core.int buildCounterQueryItemMetricsResponse = 0;
api.QueryItemMetricsResponse buildQueryItemMetricsResponse() {
  final o = api.QueryItemMetricsResponse();
  buildCounterQueryItemMetricsResponse++;
  if (buildCounterQueryItemMetricsResponse < 3) {
    o.metricRows = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterQueryItemMetricsResponse--;
  return o;
}

void checkQueryItemMetricsResponse(api.QueryItemMetricsResponse o) {
  buildCounterQueryItemMetricsResponse++;
  if (buildCounterQueryItemMetricsResponse < 3) {
    checkUnnamed5(o.metricRows!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterQueryItemMetricsResponse--;
}

core.int buildCounterRatingSummary = 0;
api.RatingSummary buildRatingSummary() {
  final o = api.RatingSummary();
  buildCounterRatingSummary++;
  if (buildCounterRatingSummary < 3) {
    o.fiveStarRatingCount = 'foo';
    o.fourStarRatingCount = 'foo';
    o.name = 'foo';
    o.nonEmptyReviewCount = 'foo';
    o.oneStarRatingCount = 'foo';
    o.rating = 42.0;
    o.ratingCount = 'foo';
    o.threeStarRatingCount = 'foo';
    o.twoStarRatingCount = 'foo';
  }
  buildCounterRatingSummary--;
  return o;
}

void checkRatingSummary(api.RatingSummary o) {
  buildCounterRatingSummary++;
  if (buildCounterRatingSummary < 3) {
    unittest.expect(o.fiveStarRatingCount!, unittest.equals('foo'));
    unittest.expect(o.fourStarRatingCount!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nonEmptyReviewCount!, unittest.equals('foo'));
    unittest.expect(o.oneStarRatingCount!, unittest.equals('foo'));
    unittest.expect(o.rating!, unittest.equals(42.0));
    unittest.expect(o.ratingCount!, unittest.equals('foo'));
    unittest.expect(o.threeStarRatingCount!, unittest.equals('foo'));
    unittest.expect(o.twoStarRatingCount!, unittest.equals('foo'));
  }
  buildCounterRatingSummary--;
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  final o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.authorInfo = buildAuthorInfo();
    o.comment = 'foo';
    o.createTime = 'foo';
    o.item = 'foo';
    o.name = 'foo';
    o.rating = 42;
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    checkAuthorInfo(o.authorInfo!);
    unittest.expect(o.comment!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.item!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rating!, unittest.equals(42));
  }
  buildCounterReview--;
}

core.int buildCounterRollbackItemRequest = 0;
api.RollbackItemRequest buildRollbackItemRequest() {
  final o = api.RollbackItemRequest();
  buildCounterRollbackItemRequest++;
  if (buildCounterRollbackItemRequest < 3) {
    o.newVersion = 'foo';
    o.rollbackReason = 'foo';
    o.targetCrxVersion = 'foo';
    o.validateOnly = true;
  }
  buildCounterRollbackItemRequest--;
  return o;
}

void checkRollbackItemRequest(api.RollbackItemRequest o) {
  buildCounterRollbackItemRequest++;
  if (buildCounterRollbackItemRequest < 3) {
    unittest.expect(o.newVersion!, unittest.equals('foo'));
    unittest.expect(o.rollbackReason!, unittest.equals('foo'));
    unittest.expect(o.targetCrxVersion!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterRollbackItemRequest--;
}

core.int buildCounterRollbackItemResponse = 0;
api.RollbackItemResponse buildRollbackItemResponse() {
  final o = api.RollbackItemResponse();
  buildCounterRollbackItemResponse++;
  if (buildCounterRollbackItemResponse < 3) {}
  buildCounterRollbackItemResponse--;
  return o;
}

void checkRollbackItemResponse(api.RollbackItemResponse o) {
  buildCounterRollbackItemResponse++;
  if (buildCounterRollbackItemResponse < 3) {}
  buildCounterRollbackItemResponse--;
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

core.int buildCounterWarning = 0;
api.Warning buildWarning() {
  final o = api.Warning();
  buildCounterWarning++;
  if (buildCounterWarning < 3) {
    o.description = 'foo';
    o.reason = 'foo';
  }
  buildCounterWarning--;
  return o;
}

void checkWarning(api.Warning o) {
  buildCounterWarning++;
  if (buildCounterWarning < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterWarning--;
}

core.List<api.Warning> buildUnnamed6() => [buildWarning(), buildWarning()];

void checkUnnamed6(core.List<api.Warning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarning(o[0]);
  checkWarning(o[1]);
}

core.int buildCounterWarningsInfo = 0;
api.WarningsInfo buildWarningsInfo() {
  final o = api.WarningsInfo();
  buildCounterWarningsInfo++;
  if (buildCounterWarningsInfo < 3) {
    o.warnings = buildUnnamed6();
  }
  buildCounterWarningsInfo--;
  return o;
}

void checkWarningsInfo(api.WarningsInfo o) {
  buildCounterWarningsInfo++;
  if (buildCounterWarningsInfo < 3) {
    checkUnnamed6(o.warnings!);
  }
  buildCounterWarningsInfo--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AuthorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorInfo(od);
    });
  });

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

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
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

  unittest.group('obj-schema-FetchItemReviewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchItemReviewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchItemReviewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchItemReviewsResponse(od);
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

  unittest.group('obj-schema-MetricRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricRow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricRow(od);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricValue(od);
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

  unittest.group('obj-schema-QueryItemMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryItemMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryItemMetricsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryItemMetricsResponse(od);
    });
  });

  unittest.group('obj-schema-RatingSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRatingSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RatingSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRatingSummary(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Review.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReview(od);
    });
  });

  unittest.group('obj-schema-RollbackItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackItemRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackItemRequest(od);
    });
  });

  unittest.group('obj-schema-RollbackItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackItemResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackItemResponse(od);
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

  unittest.group('obj-schema-Warning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Warning.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarning(od);
    });
  });

  unittest.group('obj-schema-WarningsInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarningsInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarningsInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarningsInfo(od);
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

    unittest.test('method--fetchReviews', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildFetchItemReviewsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchReviews(
        arg_name,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFetchItemReviewsResponse(response as api.FetchItemReviewsResponse);
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

    unittest.test('method--getRatingSummary', () async {
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
          final resp = convert.json.encode(buildRatingSummary());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRatingSummary(
        arg_name,
        $fields: arg_$fields,
      );
      checkRatingSummary(response as api.RatingSummary);
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

    unittest.test('method--queryMetrics', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
      final arg_name = 'foo';
      final arg_dimensions = buildUnnamed7();
      final arg_metrics = buildUnnamed8();
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_timeSpec_firstDate_day = 42;
      final arg_timeSpec_firstDate_month = 42;
      final arg_timeSpec_firstDate_year = 42;
      final arg_timeSpec_lastDate_day = 42;
      final arg_timeSpec_lastDate_month = 42;
      final arg_timeSpec_lastDate_year = 42;
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
            queryMap['dimensions']!,
            unittest.equals(arg_dimensions),
          );
          unittest.expect(queryMap['metrics']!, unittest.equals(arg_metrics));
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            core.int.parse(queryMap['timeSpec.firstDate.day']!.first),
            unittest.equals(arg_timeSpec_firstDate_day),
          );
          unittest.expect(
            core.int.parse(queryMap['timeSpec.firstDate.month']!.first),
            unittest.equals(arg_timeSpec_firstDate_month),
          );
          unittest.expect(
            core.int.parse(queryMap['timeSpec.firstDate.year']!.first),
            unittest.equals(arg_timeSpec_firstDate_year),
          );
          unittest.expect(
            core.int.parse(queryMap['timeSpec.lastDate.day']!.first),
            unittest.equals(arg_timeSpec_lastDate_day),
          );
          unittest.expect(
            core.int.parse(queryMap['timeSpec.lastDate.month']!.first),
            unittest.equals(arg_timeSpec_lastDate_month),
          );
          unittest.expect(
            core.int.parse(queryMap['timeSpec.lastDate.year']!.first),
            unittest.equals(arg_timeSpec_lastDate_year),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildQueryItemMetricsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.queryMetrics(
        arg_name,
        dimensions: arg_dimensions,
        metrics: arg_metrics,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        timeSpec_firstDate_day: arg_timeSpec_firstDate_day,
        timeSpec_firstDate_month: arg_timeSpec_firstDate_month,
        timeSpec_firstDate_year: arg_timeSpec_firstDate_year,
        timeSpec_lastDate_day: arg_timeSpec_lastDate_day,
        timeSpec_lastDate_month: arg_timeSpec_lastDate_month,
        timeSpec_lastDate_year: arg_timeSpec_lastDate_year,
        $fields: arg_$fields,
      );
      checkQueryItemMetricsResponse(response as api.QueryItemMetricsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.ChromewebstoreApi(mock).publishers.items;
      final arg_request = buildRollbackItemRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollbackItemRequest(obj);

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
          final resp = convert.json.encode(buildRollbackItemResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rollback(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRollbackItemResponse(response as api.RollbackItemResponse);
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
