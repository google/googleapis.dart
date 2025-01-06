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

import 'package:googleapis/analyticshub/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnalyticsHubSubscriptionInfo = 0;
api.AnalyticsHubSubscriptionInfo buildAnalyticsHubSubscriptionInfo() {
  final o = api.AnalyticsHubSubscriptionInfo();
  buildCounterAnalyticsHubSubscriptionInfo++;
  if (buildCounterAnalyticsHubSubscriptionInfo < 3) {
    o.listing = 'foo';
    o.subscription = 'foo';
  }
  buildCounterAnalyticsHubSubscriptionInfo--;
  return o;
}

void checkAnalyticsHubSubscriptionInfo(api.AnalyticsHubSubscriptionInfo o) {
  buildCounterAnalyticsHubSubscriptionInfo++;
  if (buildCounterAnalyticsHubSubscriptionInfo < 3) {
    unittest.expect(
      o.listing!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscription!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyticsHubSubscriptionInfo--;
}

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAvroConfig = 0;
api.AvroConfig buildAvroConfig() {
  final o = api.AvroConfig();
  buildCounterAvroConfig++;
  if (buildCounterAvroConfig < 3) {
    o.useTopicSchema = true;
    o.writeMetadata = true;
  }
  buildCounterAvroConfig--;
  return o;
}

void checkAvroConfig(api.AvroConfig o) {
  buildCounterAvroConfig++;
  if (buildCounterAvroConfig < 3) {
    unittest.expect(o.useTopicSchema!, unittest.isTrue);
    unittest.expect(o.writeMetadata!, unittest.isTrue);
  }
  buildCounterAvroConfig--;
}

core.int buildCounterBigQueryConfig = 0;
api.BigQueryConfig buildBigQueryConfig() {
  final o = api.BigQueryConfig();
  buildCounterBigQueryConfig++;
  if (buildCounterBigQueryConfig < 3) {
    o.dropUnknownFields = true;
    o.serviceAccountEmail = 'foo';
    o.state = 'foo';
    o.table = 'foo';
    o.useTableSchema = true;
    o.useTopicSchema = true;
    o.writeMetadata = true;
  }
  buildCounterBigQueryConfig--;
  return o;
}

void checkBigQueryConfig(api.BigQueryConfig o) {
  buildCounterBigQueryConfig++;
  if (buildCounterBigQueryConfig < 3) {
    unittest.expect(o.dropUnknownFields!, unittest.isTrue);
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useTableSchema!, unittest.isTrue);
    unittest.expect(o.useTopicSchema!, unittest.isTrue);
    unittest.expect(o.writeMetadata!, unittest.isTrue);
  }
  buildCounterBigQueryConfig--;
}

core.List<api.SelectedResource> buildUnnamed2() => [
      buildSelectedResource(),
      buildSelectedResource(),
    ];

void checkUnnamed2(core.List<api.SelectedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSelectedResource(o[0]);
  checkSelectedResource(o[1]);
}

core.int buildCounterBigQueryDatasetSource = 0;
api.BigQueryDatasetSource buildBigQueryDatasetSource() {
  final o = api.BigQueryDatasetSource();
  buildCounterBigQueryDatasetSource++;
  if (buildCounterBigQueryDatasetSource < 3) {
    o.dataset = 'foo';
    o.restrictedExportPolicy = buildRestrictedExportPolicy();
    o.selectedResources = buildUnnamed2();
  }
  buildCounterBigQueryDatasetSource--;
  return o;
}

void checkBigQueryDatasetSource(api.BigQueryDatasetSource o) {
  buildCounterBigQueryDatasetSource++;
  if (buildCounterBigQueryDatasetSource < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    checkRestrictedExportPolicy(o.restrictedExportPolicy!);
    checkUnnamed2(o.selectedResources!);
  }
  buildCounterBigQueryDatasetSource--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCloudStorageConfig = 0;
api.CloudStorageConfig buildCloudStorageConfig() {
  final o = api.CloudStorageConfig();
  buildCounterCloudStorageConfig++;
  if (buildCounterCloudStorageConfig < 3) {
    o.avroConfig = buildAvroConfig();
    o.bucket = 'foo';
    o.filenameDatetimeFormat = 'foo';
    o.filenamePrefix = 'foo';
    o.filenameSuffix = 'foo';
    o.maxBytes = 'foo';
    o.maxDuration = 'foo';
    o.maxMessages = 'foo';
    o.serviceAccountEmail = 'foo';
    o.state = 'foo';
    o.textConfig = buildTextConfig();
  }
  buildCounterCloudStorageConfig--;
  return o;
}

void checkCloudStorageConfig(api.CloudStorageConfig o) {
  buildCounterCloudStorageConfig++;
  if (buildCounterCloudStorageConfig < 3) {
    checkAvroConfig(o.avroConfig!);
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filenameDatetimeFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filenamePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filenameSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxMessages!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkTextConfig(o.textConfig!);
  }
  buildCounterCloudStorageConfig--;
}

core.int buildCounterDataExchange = 0;
api.DataExchange buildDataExchange() {
  final o = api.DataExchange();
  buildCounterDataExchange++;
  if (buildCounterDataExchange < 3) {
    o.description = 'foo';
    o.discoveryType = 'foo';
    o.displayName = 'foo';
    o.documentation = 'foo';
    o.icon = 'foo';
    o.listingCount = 42;
    o.logLinkedDatasetQueryUserEmail = true;
    o.name = 'foo';
    o.primaryContact = 'foo';
    o.sharingEnvironmentConfig = buildSharingEnvironmentConfig();
  }
  buildCounterDataExchange--;
  return o;
}

void checkDataExchange(api.DataExchange o) {
  buildCounterDataExchange++;
  if (buildCounterDataExchange < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.discoveryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.icon!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listingCount!,
      unittest.equals(42),
    );
    unittest.expect(o.logLinkedDatasetQueryUserEmail!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryContact!,
      unittest.equals('foo'),
    );
    checkSharingEnvironmentConfig(o.sharingEnvironmentConfig!);
  }
  buildCounterDataExchange--;
}

core.int buildCounterDataProvider = 0;
api.DataProvider buildDataProvider() {
  final o = api.DataProvider();
  buildCounterDataProvider++;
  if (buildCounterDataProvider < 3) {
    o.name = 'foo';
    o.primaryContact = 'foo';
  }
  buildCounterDataProvider--;
  return o;
}

void checkDataProvider(api.DataProvider o) {
  buildCounterDataProvider++;
  if (buildCounterDataProvider < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryContact!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataProvider--;
}

core.int buildCounterDcrExchangeConfig = 0;
api.DcrExchangeConfig buildDcrExchangeConfig() {
  final o = api.DcrExchangeConfig();
  buildCounterDcrExchangeConfig++;
  if (buildCounterDcrExchangeConfig < 3) {
    o.singleLinkedDatasetPerCleanroom = true;
    o.singleSelectedResourceSharingRestriction = true;
  }
  buildCounterDcrExchangeConfig--;
  return o;
}

void checkDcrExchangeConfig(api.DcrExchangeConfig o) {
  buildCounterDcrExchangeConfig++;
  if (buildCounterDcrExchangeConfig < 3) {
    unittest.expect(o.singleLinkedDatasetPerCleanroom!, unittest.isTrue);
    unittest.expect(
        o.singleSelectedResourceSharingRestriction!, unittest.isTrue);
  }
  buildCounterDcrExchangeConfig--;
}

core.int buildCounterDeadLetterPolicy = 0;
api.DeadLetterPolicy buildDeadLetterPolicy() {
  final o = api.DeadLetterPolicy();
  buildCounterDeadLetterPolicy++;
  if (buildCounterDeadLetterPolicy < 3) {
    o.deadLetterTopic = 'foo';
    o.maxDeliveryAttempts = 42;
  }
  buildCounterDeadLetterPolicy--;
  return o;
}

void checkDeadLetterPolicy(api.DeadLetterPolicy o) {
  buildCounterDeadLetterPolicy++;
  if (buildCounterDeadLetterPolicy < 3) {
    unittest.expect(
      o.deadLetterTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDeliveryAttempts!,
      unittest.equals(42),
    );
  }
  buildCounterDeadLetterPolicy--;
}

core.int buildCounterDefaultExchangeConfig = 0;
api.DefaultExchangeConfig buildDefaultExchangeConfig() {
  final o = api.DefaultExchangeConfig();
  buildCounterDefaultExchangeConfig++;
  if (buildCounterDefaultExchangeConfig < 3) {}
  buildCounterDefaultExchangeConfig--;
  return o;
}

void checkDefaultExchangeConfig(api.DefaultExchangeConfig o) {
  buildCounterDefaultExchangeConfig++;
  if (buildCounterDefaultExchangeConfig < 3) {}
  buildCounterDefaultExchangeConfig--;
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterDestinationDataset = 0;
api.DestinationDataset buildDestinationDataset() {
  final o = api.DestinationDataset();
  buildCounterDestinationDataset++;
  if (buildCounterDestinationDataset < 3) {
    o.datasetReference = buildDestinationDatasetReference();
    o.description = 'foo';
    o.friendlyName = 'foo';
    o.labels = buildUnnamed4();
    o.location = 'foo';
  }
  buildCounterDestinationDataset--;
  return o;
}

void checkDestinationDataset(api.DestinationDataset o) {
  buildCounterDestinationDataset++;
  if (buildCounterDestinationDataset < 3) {
    checkDestinationDatasetReference(o.datasetReference!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestinationDataset--;
}

core.int buildCounterDestinationDatasetReference = 0;
api.DestinationDatasetReference buildDestinationDatasetReference() {
  final o = api.DestinationDatasetReference();
  buildCounterDestinationDatasetReference++;
  if (buildCounterDestinationDatasetReference < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterDestinationDatasetReference--;
  return o;
}

void checkDestinationDatasetReference(api.DestinationDatasetReference o) {
  buildCounterDestinationDatasetReference++;
  if (buildCounterDestinationDatasetReference < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestinationDatasetReference--;
}

core.int buildCounterDestinationPubSubSubscription = 0;
api.DestinationPubSubSubscription buildDestinationPubSubSubscription() {
  final o = api.DestinationPubSubSubscription();
  buildCounterDestinationPubSubSubscription++;
  if (buildCounterDestinationPubSubSubscription < 3) {
    o.pubsubSubscription = buildGooglePubsubV1Subscription();
  }
  buildCounterDestinationPubSubSubscription--;
  return o;
}

void checkDestinationPubSubSubscription(api.DestinationPubSubSubscription o) {
  buildCounterDestinationPubSubSubscription++;
  if (buildCounterDestinationPubSubSubscription < 3) {
    checkGooglePubsubV1Subscription(o.pubsubSubscription!);
  }
  buildCounterDestinationPubSubSubscription--;
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

core.int buildCounterExpirationPolicy = 0;
api.ExpirationPolicy buildExpirationPolicy() {
  final o = api.ExpirationPolicy();
  buildCounterExpirationPolicy++;
  if (buildCounterExpirationPolicy < 3) {
    o.ttl = 'foo';
  }
  buildCounterExpirationPolicy--;
  return o;
}

void checkExpirationPolicy(api.ExpirationPolicy o) {
  buildCounterExpirationPolicy++;
  if (buildCounterExpirationPolicy < 3) {
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpirationPolicy--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo = 0;
api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo
    buildGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo() {
  final o = api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo();
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo < 3) {
    o.cloudMarketplace =
        buildGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo();
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo--;
  return o;
}

void checkGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo(
    api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo o) {
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo < 3) {
    checkGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo(
        o.cloudMarketplace!);
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo--;
}

core.int
    buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo =
    0;
api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo
    buildGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo() {
  final o = api
      .GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo();
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo <
      3) {
    o.commercialState = 'foo';
    o.service = 'foo';
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo--;
  return o;
}

void checkGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo(
    api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo
        o) {
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo <
      3) {
    unittest.expect(
      o.commercialState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo--;
}

core.int
    buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo = 0;
api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo
    buildGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo() {
  final o = api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo();
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo <
      3) {
    o.cloudMarketplace =
        buildGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo();
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo--;
  return o;
}

void checkGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo(
    api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo o) {
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo <
      3) {
    checkGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo(
        o.cloudMarketplace!);
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo--;
}

core.int
    buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo =
    0;
api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo
    buildGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo() {
  final o = api
      .GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo();
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo <
      3) {
    o.order = 'foo';
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo--;
  return o;
}

void checkGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo(
    api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo
        o) {
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo++;
  if (buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo <
      3) {
    unittest.expect(
      o.order!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo--;
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.MessageTransform> buildUnnamed6() => [
      buildMessageTransform(),
      buildMessageTransform(),
    ];

void checkUnnamed6(core.List<api.MessageTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessageTransform(o[0]);
  checkMessageTransform(o[1]);
}

core.int buildCounterGooglePubsubV1Subscription = 0;
api.GooglePubsubV1Subscription buildGooglePubsubV1Subscription() {
  final o = api.GooglePubsubV1Subscription();
  buildCounterGooglePubsubV1Subscription++;
  if (buildCounterGooglePubsubV1Subscription < 3) {
    o.ackDeadlineSeconds = 42;
    o.analyticsHubSubscriptionInfo = buildAnalyticsHubSubscriptionInfo();
    o.bigqueryConfig = buildBigQueryConfig();
    o.cloudStorageConfig = buildCloudStorageConfig();
    o.deadLetterPolicy = buildDeadLetterPolicy();
    o.detached = true;
    o.enableExactlyOnceDelivery = true;
    o.enableMessageOrdering = true;
    o.expirationPolicy = buildExpirationPolicy();
    o.filter = 'foo';
    o.labels = buildUnnamed5();
    o.messageRetentionDuration = 'foo';
    o.messageTransforms = buildUnnamed6();
    o.name = 'foo';
    o.pushConfig = buildPushConfig();
    o.retainAckedMessages = true;
    o.retryPolicy = buildRetryPolicy();
    o.state = 'foo';
    o.topicMessageRetentionDuration = 'foo';
  }
  buildCounterGooglePubsubV1Subscription--;
  return o;
}

void checkGooglePubsubV1Subscription(api.GooglePubsubV1Subscription o) {
  buildCounterGooglePubsubV1Subscription++;
  if (buildCounterGooglePubsubV1Subscription < 3) {
    unittest.expect(
      o.ackDeadlineSeconds!,
      unittest.equals(42),
    );
    checkAnalyticsHubSubscriptionInfo(o.analyticsHubSubscriptionInfo!);
    checkBigQueryConfig(o.bigqueryConfig!);
    checkCloudStorageConfig(o.cloudStorageConfig!);
    checkDeadLetterPolicy(o.deadLetterPolicy!);
    unittest.expect(o.detached!, unittest.isTrue);
    unittest.expect(o.enableExactlyOnceDelivery!, unittest.isTrue);
    unittest.expect(o.enableMessageOrdering!, unittest.isTrue);
    checkExpirationPolicy(o.expirationPolicy!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.labels!);
    unittest.expect(
      o.messageRetentionDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.messageTransforms!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPushConfig(o.pushConfig!);
    unittest.expect(o.retainAckedMessages!, unittest.isTrue);
    checkRetryPolicy(o.retryPolicy!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicMessageRetentionDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePubsubV1Subscription--;
}

core.int buildCounterJavaScriptUDF = 0;
api.JavaScriptUDF buildJavaScriptUDF() {
  final o = api.JavaScriptUDF();
  buildCounterJavaScriptUDF++;
  if (buildCounterJavaScriptUDF < 3) {
    o.code = 'foo';
    o.functionName = 'foo';
  }
  buildCounterJavaScriptUDF--;
  return o;
}

void checkJavaScriptUDF(api.JavaScriptUDF o) {
  buildCounterJavaScriptUDF++;
  if (buildCounterJavaScriptUDF < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.functionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterJavaScriptUDF--;
}

core.int buildCounterLinkedResource = 0;
api.LinkedResource buildLinkedResource() {
  final o = api.LinkedResource();
  buildCounterLinkedResource++;
  if (buildCounterLinkedResource < 3) {
    o.linkedDataset = 'foo';
    o.linkedPubsubSubscription = 'foo';
    o.listing = 'foo';
  }
  buildCounterLinkedResource--;
  return o;
}

void checkLinkedResource(api.LinkedResource o) {
  buildCounterLinkedResource++;
  if (buildCounterLinkedResource < 3) {
    unittest.expect(
      o.linkedDataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedPubsubSubscription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listing!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedResource--;
}

core.List<api.DataExchange> buildUnnamed7() => [
      buildDataExchange(),
      buildDataExchange(),
    ];

void checkUnnamed7(core.List<api.DataExchange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataExchange(o[0]);
  checkDataExchange(o[1]);
}

core.int buildCounterListDataExchangesResponse = 0;
api.ListDataExchangesResponse buildListDataExchangesResponse() {
  final o = api.ListDataExchangesResponse();
  buildCounterListDataExchangesResponse++;
  if (buildCounterListDataExchangesResponse < 3) {
    o.dataExchanges = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataExchangesResponse--;
  return o;
}

void checkListDataExchangesResponse(api.ListDataExchangesResponse o) {
  buildCounterListDataExchangesResponse++;
  if (buildCounterListDataExchangesResponse < 3) {
    checkUnnamed7(o.dataExchanges!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDataExchangesResponse--;
}

core.List<api.Listing> buildUnnamed8() => [
      buildListing(),
      buildListing(),
    ];

void checkUnnamed8(core.List<api.Listing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListing(o[0]);
  checkListing(o[1]);
}

core.int buildCounterListListingsResponse = 0;
api.ListListingsResponse buildListListingsResponse() {
  final o = api.ListListingsResponse();
  buildCounterListListingsResponse++;
  if (buildCounterListListingsResponse < 3) {
    o.listings = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListListingsResponse--;
  return o;
}

void checkListListingsResponse(api.ListListingsResponse o) {
  buildCounterListListingsResponse++;
  if (buildCounterListListingsResponse < 3) {
    checkUnnamed8(o.listings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListListingsResponse--;
}

core.List<api.DataExchange> buildUnnamed9() => [
      buildDataExchange(),
      buildDataExchange(),
    ];

void checkUnnamed9(core.List<api.DataExchange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataExchange(o[0]);
  checkDataExchange(o[1]);
}

core.int buildCounterListOrgDataExchangesResponse = 0;
api.ListOrgDataExchangesResponse buildListOrgDataExchangesResponse() {
  final o = api.ListOrgDataExchangesResponse();
  buildCounterListOrgDataExchangesResponse++;
  if (buildCounterListOrgDataExchangesResponse < 3) {
    o.dataExchanges = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListOrgDataExchangesResponse--;
  return o;
}

void checkListOrgDataExchangesResponse(api.ListOrgDataExchangesResponse o) {
  buildCounterListOrgDataExchangesResponse++;
  if (buildCounterListOrgDataExchangesResponse < 3) {
    checkUnnamed9(o.dataExchanges!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListOrgDataExchangesResponse--;
}

core.List<api.Subscription> buildUnnamed10() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed10(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterListSharedResourceSubscriptionsResponse = 0;
api.ListSharedResourceSubscriptionsResponse
    buildListSharedResourceSubscriptionsResponse() {
  final o = api.ListSharedResourceSubscriptionsResponse();
  buildCounterListSharedResourceSubscriptionsResponse++;
  if (buildCounterListSharedResourceSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sharedResourceSubscriptions = buildUnnamed10();
  }
  buildCounterListSharedResourceSubscriptionsResponse--;
  return o;
}

void checkListSharedResourceSubscriptionsResponse(
    api.ListSharedResourceSubscriptionsResponse o) {
  buildCounterListSharedResourceSubscriptionsResponse++;
  if (buildCounterListSharedResourceSubscriptionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.sharedResourceSubscriptions!);
  }
  buildCounterListSharedResourceSubscriptionsResponse--;
}

core.List<api.Subscription> buildUnnamed11() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed11(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterListSubscriptionsResponse = 0;
api.ListSubscriptionsResponse buildListSubscriptionsResponse() {
  final o = api.ListSubscriptionsResponse();
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed11();
  }
  buildCounterListSubscriptionsResponse--;
  return o;
}

void checkListSubscriptionsResponse(api.ListSubscriptionsResponse o) {
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.subscriptions!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListing = 0;
api.Listing buildListing() {
  final o = api.Listing();
  buildCounterListing++;
  if (buildCounterListing < 3) {
    o.bigqueryDataset = buildBigQueryDatasetSource();
    o.categories = buildUnnamed12();
    o.commercialInfo =
        buildGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo();
    o.dataProvider = buildDataProvider();
    o.description = 'foo';
    o.discoveryType = 'foo';
    o.displayName = 'foo';
    o.documentation = 'foo';
    o.icon = 'foo';
    o.logLinkedDatasetQueryUserEmail = true;
    o.name = 'foo';
    o.primaryContact = 'foo';
    o.publisher = buildPublisher();
    o.pubsubTopic = buildPubSubTopicSource();
    o.requestAccess = 'foo';
    o.resourceType = 'foo';
    o.restrictedExportConfig = buildRestrictedExportConfig();
    o.state = 'foo';
  }
  buildCounterListing--;
  return o;
}

void checkListing(api.Listing o) {
  buildCounterListing++;
  if (buildCounterListing < 3) {
    checkBigQueryDatasetSource(o.bigqueryDataset!);
    checkUnnamed12(o.categories!);
    checkGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo(
        o.commercialInfo!);
    checkDataProvider(o.dataProvider!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.discoveryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.icon!,
      unittest.equals('foo'),
    );
    unittest.expect(o.logLinkedDatasetQueryUserEmail!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryContact!,
      unittest.equals('foo'),
    );
    checkPublisher(o.publisher!);
    checkPubSubTopicSource(o.pubsubTopic!);
    unittest.expect(
      o.requestAccess!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    checkRestrictedExportConfig(o.restrictedExportConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterListing--;
}

core.int buildCounterMessageTransform = 0;
api.MessageTransform buildMessageTransform() {
  final o = api.MessageTransform();
  buildCounterMessageTransform++;
  if (buildCounterMessageTransform < 3) {
    o.enabled = true;
    o.javascriptUdf = buildJavaScriptUDF();
  }
  buildCounterMessageTransform--;
  return o;
}

void checkMessageTransform(api.MessageTransform o) {
  buildCounterMessageTransform++;
  if (buildCounterMessageTransform < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    checkJavaScriptUDF(o.javascriptUdf!);
  }
  buildCounterMessageTransform--;
}

core.int buildCounterNoWrapper = 0;
api.NoWrapper buildNoWrapper() {
  final o = api.NoWrapper();
  buildCounterNoWrapper++;
  if (buildCounterNoWrapper < 3) {
    o.writeMetadata = true;
  }
  buildCounterNoWrapper--;
  return o;
}

void checkNoWrapper(api.NoWrapper o) {
  buildCounterNoWrapper++;
  if (buildCounterNoWrapper < 3) {
    unittest.expect(o.writeMetadata!, unittest.isTrue);
  }
  buildCounterNoWrapper--;
}

core.int buildCounterOidcToken = 0;
api.OidcToken buildOidcToken() {
  final o = api.OidcToken();
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    o.audience = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterOidcToken--;
  return o;
}

void checkOidcToken(api.OidcToken o) {
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterOidcToken--;
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.response = buildUnnamed14();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed13(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed15() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed15(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed16() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed16(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed15();
    o.bindings = buildUnnamed16();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed15(o.auditConfigs!);
    checkUnnamed16(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterPubSubTopicSource = 0;
api.PubSubTopicSource buildPubSubTopicSource() {
  final o = api.PubSubTopicSource();
  buildCounterPubSubTopicSource++;
  if (buildCounterPubSubTopicSource < 3) {
    o.dataAffinityRegions = buildUnnamed17();
    o.topic = 'foo';
  }
  buildCounterPubSubTopicSource--;
  return o;
}

void checkPubSubTopicSource(api.PubSubTopicSource o) {
  buildCounterPubSubTopicSource++;
  if (buildCounterPubSubTopicSource < 3) {
    checkUnnamed17(o.dataAffinityRegions!);
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubSubTopicSource--;
}

core.int buildCounterPublisher = 0;
api.Publisher buildPublisher() {
  final o = api.Publisher();
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    o.name = 'foo';
    o.primaryContact = 'foo';
  }
  buildCounterPublisher--;
  return o;
}

void checkPublisher(api.Publisher o) {
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryContact!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublisher--;
}

core.int buildCounterPubsubWrapper = 0;
api.PubsubWrapper buildPubsubWrapper() {
  final o = api.PubsubWrapper();
  buildCounterPubsubWrapper++;
  if (buildCounterPubsubWrapper < 3) {}
  buildCounterPubsubWrapper--;
  return o;
}

void checkPubsubWrapper(api.PubsubWrapper o) {
  buildCounterPubsubWrapper++;
  if (buildCounterPubsubWrapper < 3) {}
  buildCounterPubsubWrapper--;
}

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterPushConfig = 0;
api.PushConfig buildPushConfig() {
  final o = api.PushConfig();
  buildCounterPushConfig++;
  if (buildCounterPushConfig < 3) {
    o.attributes = buildUnnamed18();
    o.noWrapper = buildNoWrapper();
    o.oidcToken = buildOidcToken();
    o.pubsubWrapper = buildPubsubWrapper();
    o.pushEndpoint = 'foo';
  }
  buildCounterPushConfig--;
  return o;
}

void checkPushConfig(api.PushConfig o) {
  buildCounterPushConfig++;
  if (buildCounterPushConfig < 3) {
    checkUnnamed18(o.attributes!);
    checkNoWrapper(o.noWrapper!);
    checkOidcToken(o.oidcToken!);
    checkPubsubWrapper(o.pubsubWrapper!);
    unittest.expect(
      o.pushEndpoint!,
      unittest.equals('foo'),
    );
  }
  buildCounterPushConfig--;
}

core.int buildCounterRefreshSubscriptionRequest = 0;
api.RefreshSubscriptionRequest buildRefreshSubscriptionRequest() {
  final o = api.RefreshSubscriptionRequest();
  buildCounterRefreshSubscriptionRequest++;
  if (buildCounterRefreshSubscriptionRequest < 3) {}
  buildCounterRefreshSubscriptionRequest--;
  return o;
}

void checkRefreshSubscriptionRequest(api.RefreshSubscriptionRequest o) {
  buildCounterRefreshSubscriptionRequest++;
  if (buildCounterRefreshSubscriptionRequest < 3) {}
  buildCounterRefreshSubscriptionRequest--;
}

core.int buildCounterRestrictedExportConfig = 0;
api.RestrictedExportConfig buildRestrictedExportConfig() {
  final o = api.RestrictedExportConfig();
  buildCounterRestrictedExportConfig++;
  if (buildCounterRestrictedExportConfig < 3) {
    o.enabled = true;
    o.restrictDirectTableAccess = true;
    o.restrictQueryResult = true;
  }
  buildCounterRestrictedExportConfig--;
  return o;
}

void checkRestrictedExportConfig(api.RestrictedExportConfig o) {
  buildCounterRestrictedExportConfig++;
  if (buildCounterRestrictedExportConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.restrictDirectTableAccess!, unittest.isTrue);
    unittest.expect(o.restrictQueryResult!, unittest.isTrue);
  }
  buildCounterRestrictedExportConfig--;
}

core.int buildCounterRestrictedExportPolicy = 0;
api.RestrictedExportPolicy buildRestrictedExportPolicy() {
  final o = api.RestrictedExportPolicy();
  buildCounterRestrictedExportPolicy++;
  if (buildCounterRestrictedExportPolicy < 3) {
    o.enabled = true;
    o.restrictDirectTableAccess = true;
    o.restrictQueryResult = true;
  }
  buildCounterRestrictedExportPolicy--;
  return o;
}

void checkRestrictedExportPolicy(api.RestrictedExportPolicy o) {
  buildCounterRestrictedExportPolicy++;
  if (buildCounterRestrictedExportPolicy < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.restrictDirectTableAccess!, unittest.isTrue);
    unittest.expect(o.restrictQueryResult!, unittest.isTrue);
  }
  buildCounterRestrictedExportPolicy--;
}

core.int buildCounterRetryPolicy = 0;
api.RetryPolicy buildRetryPolicy() {
  final o = api.RetryPolicy();
  buildCounterRetryPolicy++;
  if (buildCounterRetryPolicy < 3) {
    o.maximumBackoff = 'foo';
    o.minimumBackoff = 'foo';
  }
  buildCounterRetryPolicy--;
  return o;
}

void checkRetryPolicy(api.RetryPolicy o) {
  buildCounterRetryPolicy++;
  if (buildCounterRetryPolicy < 3) {
    unittest.expect(
      o.maximumBackoff!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumBackoff!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetryPolicy--;
}

core.int buildCounterRevokeSubscriptionRequest = 0;
api.RevokeSubscriptionRequest buildRevokeSubscriptionRequest() {
  final o = api.RevokeSubscriptionRequest();
  buildCounterRevokeSubscriptionRequest++;
  if (buildCounterRevokeSubscriptionRequest < 3) {
    o.revokeCommercial = true;
  }
  buildCounterRevokeSubscriptionRequest--;
  return o;
}

void checkRevokeSubscriptionRequest(api.RevokeSubscriptionRequest o) {
  buildCounterRevokeSubscriptionRequest++;
  if (buildCounterRevokeSubscriptionRequest < 3) {
    unittest.expect(o.revokeCommercial!, unittest.isTrue);
  }
  buildCounterRevokeSubscriptionRequest--;
}

core.int buildCounterRevokeSubscriptionResponse = 0;
api.RevokeSubscriptionResponse buildRevokeSubscriptionResponse() {
  final o = api.RevokeSubscriptionResponse();
  buildCounterRevokeSubscriptionResponse++;
  if (buildCounterRevokeSubscriptionResponse < 3) {}
  buildCounterRevokeSubscriptionResponse--;
  return o;
}

void checkRevokeSubscriptionResponse(api.RevokeSubscriptionResponse o) {
  buildCounterRevokeSubscriptionResponse++;
  if (buildCounterRevokeSubscriptionResponse < 3) {}
  buildCounterRevokeSubscriptionResponse--;
}

core.int buildCounterSelectedResource = 0;
api.SelectedResource buildSelectedResource() {
  final o = api.SelectedResource();
  buildCounterSelectedResource++;
  if (buildCounterSelectedResource < 3) {
    o.routine = 'foo';
    o.table = 'foo';
  }
  buildCounterSelectedResource--;
  return o;
}

void checkSelectedResource(api.SelectedResource o) {
  buildCounterSelectedResource++;
  if (buildCounterSelectedResource < 3) {
    unittest.expect(
      o.routine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterSelectedResource--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSharingEnvironmentConfig = 0;
api.SharingEnvironmentConfig buildSharingEnvironmentConfig() {
  final o = api.SharingEnvironmentConfig();
  buildCounterSharingEnvironmentConfig++;
  if (buildCounterSharingEnvironmentConfig < 3) {
    o.dcrExchangeConfig = buildDcrExchangeConfig();
    o.defaultExchangeConfig = buildDefaultExchangeConfig();
  }
  buildCounterSharingEnvironmentConfig--;
  return o;
}

void checkSharingEnvironmentConfig(api.SharingEnvironmentConfig o) {
  buildCounterSharingEnvironmentConfig++;
  if (buildCounterSharingEnvironmentConfig < 3) {
    checkDcrExchangeConfig(o.dcrExchangeConfig!);
    checkDefaultExchangeConfig(o.defaultExchangeConfig!);
  }
  buildCounterSharingEnvironmentConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed20() => [
      buildUnnamed19(),
      buildUnnamed19(),
    ];

void checkUnnamed20(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed19(o[0]);
  checkUnnamed19(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed20();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed20(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSubscribeDataExchangeRequest = 0;
api.SubscribeDataExchangeRequest buildSubscribeDataExchangeRequest() {
  final o = api.SubscribeDataExchangeRequest();
  buildCounterSubscribeDataExchangeRequest++;
  if (buildCounterSubscribeDataExchangeRequest < 3) {
    o.destination = 'foo';
    o.destinationDataset = buildDestinationDataset();
    o.subscriberContact = 'foo';
    o.subscription = 'foo';
  }
  buildCounterSubscribeDataExchangeRequest--;
  return o;
}

void checkSubscribeDataExchangeRequest(api.SubscribeDataExchangeRequest o) {
  buildCounterSubscribeDataExchangeRequest++;
  if (buildCounterSubscribeDataExchangeRequest < 3) {
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkDestinationDataset(o.destinationDataset!);
    unittest.expect(
      o.subscriberContact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscription!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscribeDataExchangeRequest--;
}

core.int buildCounterSubscribeListingRequest = 0;
api.SubscribeListingRequest buildSubscribeListingRequest() {
  final o = api.SubscribeListingRequest();
  buildCounterSubscribeListingRequest++;
  if (buildCounterSubscribeListingRequest < 3) {
    o.destinationDataset = buildDestinationDataset();
    o.destinationPubsubSubscription = buildDestinationPubSubSubscription();
  }
  buildCounterSubscribeListingRequest--;
  return o;
}

void checkSubscribeListingRequest(api.SubscribeListingRequest o) {
  buildCounterSubscribeListingRequest++;
  if (buildCounterSubscribeListingRequest < 3) {
    checkDestinationDataset(o.destinationDataset!);
    checkDestinationPubSubSubscription(o.destinationPubsubSubscription!);
  }
  buildCounterSubscribeListingRequest--;
}

core.int buildCounterSubscribeListingResponse = 0;
api.SubscribeListingResponse buildSubscribeListingResponse() {
  final o = api.SubscribeListingResponse();
  buildCounterSubscribeListingResponse++;
  if (buildCounterSubscribeListingResponse < 3) {
    o.subscription = buildSubscription();
  }
  buildCounterSubscribeListingResponse--;
  return o;
}

void checkSubscribeListingResponse(api.SubscribeListingResponse o) {
  buildCounterSubscribeListingResponse++;
  if (buildCounterSubscribeListingResponse < 3) {
    checkSubscription(o.subscription!);
  }
  buildCounterSubscribeListingResponse--;
}

core.Map<core.String, api.LinkedResource> buildUnnamed21() => {
      'x': buildLinkedResource(),
      'y': buildLinkedResource(),
    };

void checkUnnamed21(core.Map<core.String, api.LinkedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedResource(o['x']!);
  checkLinkedResource(o['y']!);
}

core.List<api.LinkedResource> buildUnnamed22() => [
      buildLinkedResource(),
      buildLinkedResource(),
    ];

void checkUnnamed22(core.List<api.LinkedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedResource(o[0]);
  checkLinkedResource(o[1]);
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.commercialInfo =
        buildGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo();
    o.creationTime = 'foo';
    o.dataExchange = 'foo';
    o.lastModifyTime = 'foo';
    o.linkedDatasetMap = buildUnnamed21();
    o.linkedResources = buildUnnamed22();
    o.listing = 'foo';
    o.logLinkedDatasetQueryUserEmail = true;
    o.name = 'foo';
    o.organizationDisplayName = 'foo';
    o.organizationId = 'foo';
    o.resourceType = 'foo';
    o.state = 'foo';
    o.subscriberContact = 'foo';
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo(
        o.commercialInfo!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataExchange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifyTime!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.linkedDatasetMap!);
    checkUnnamed22(o.linkedResources!);
    unittest.expect(
      o.listing!,
      unittest.equals('foo'),
    );
    unittest.expect(o.logLinkedDatasetQueryUserEmail!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriberContact!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscription--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed23();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed23(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed24();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed24(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTextConfig = 0;
api.TextConfig buildTextConfig() {
  final o = api.TextConfig();
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {}
  buildCounterTextConfig--;
  return o;
}

void checkTextConfig(api.TextConfig o) {
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {}
  buildCounterTextConfig--;
}

void main() {
  unittest.group('obj-schema-AnalyticsHubSubscriptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyticsHubSubscriptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyticsHubSubscriptionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyticsHubSubscriptionInfo(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AvroConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvroConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AvroConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAvroConfig(od);
    });
  });

  unittest.group('obj-schema-BigQueryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryConfig(od);
    });
  });

  unittest.group('obj-schema-BigQueryDatasetSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDatasetSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDatasetSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDatasetSource(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CloudStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudStorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudStorageConfig(od);
    });
  });

  unittest.group('obj-schema-DataExchange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataExchange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataExchange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataExchange(od);
    });
  });

  unittest.group('obj-schema-DataProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataProvider(od);
    });
  });

  unittest.group('obj-schema-DcrExchangeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDcrExchangeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DcrExchangeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDcrExchangeConfig(od);
    });
  });

  unittest.group('obj-schema-DeadLetterPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeadLetterPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeadLetterPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeadLetterPolicy(od);
    });
  });

  unittest.group('obj-schema-DefaultExchangeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultExchangeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultExchangeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultExchangeConfig(od);
    });
  });

  unittest.group('obj-schema-DestinationDataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationDataset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationDataset(od);
    });
  });

  unittest.group('obj-schema-DestinationDatasetReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationDatasetReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationDatasetReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationDatasetReference(od);
    });
  });

  unittest.group('obj-schema-DestinationPubSubSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationPubSubSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationPubSubSubscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationPubSubSubscription(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExpirationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpirationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpirationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpirationPolicy(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo(
          od);
    });
  });

  unittest.group('obj-schema-GooglePubsubV1Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePubsubV1Subscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePubsubV1Subscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePubsubV1Subscription(od);
    });
  });

  unittest.group('obj-schema-JavaScriptUDF', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJavaScriptUDF();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JavaScriptUDF.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJavaScriptUDF(od);
    });
  });

  unittest.group('obj-schema-LinkedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedResource(od);
    });
  });

  unittest.group('obj-schema-ListDataExchangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataExchangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataExchangesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDataExchangesResponse(od);
    });
  });

  unittest.group('obj-schema-ListListingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListListingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListListingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListListingsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOrgDataExchangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOrgDataExchangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOrgDataExchangesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOrgDataExchangesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSharedResourceSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSharedResourceSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSharedResourceSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSharedResourceSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-Listing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Listing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkListing(od);
    });
  });

  unittest.group('obj-schema-MessageTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessageTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessageTransform.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMessageTransform(od);
    });
  });

  unittest.group('obj-schema-NoWrapper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNoWrapper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NoWrapper.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNoWrapper(od);
    });
  });

  unittest.group('obj-schema-OidcToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOidcToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OidcToken.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOidcToken(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PubSubTopicSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubSubTopicSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubSubTopicSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubSubTopicSource(od);
    });
  });

  unittest.group('obj-schema-Publisher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Publisher.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPublisher(od);
    });
  });

  unittest.group('obj-schema-PubsubWrapper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubWrapper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubWrapper.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubWrapper(od);
    });
  });

  unittest.group('obj-schema-PushConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PushConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPushConfig(od);
    });
  });

  unittest.group('obj-schema-RefreshSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshSubscriptionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-RestrictedExportConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictedExportConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictedExportConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestrictedExportConfig(od);
    });
  });

  unittest.group('obj-schema-RestrictedExportPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictedExportPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictedExportPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestrictedExportPolicy(od);
    });
  });

  unittest.group('obj-schema-RetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-RevokeSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeSubscriptionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-RevokeSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeSubscriptionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeSubscriptionResponse(od);
    });
  });

  unittest.group('obj-schema-SelectedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSelectedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SelectedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSelectedResource(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SharingEnvironmentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSharingEnvironmentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SharingEnvironmentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSharingEnvironmentConfig(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-SubscribeDataExchangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscribeDataExchangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscribeDataExchangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscribeDataExchangeRequest(od);
    });
  });

  unittest.group('obj-schema-SubscribeListingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscribeListingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscribeListingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscribeListingRequest(od);
    });
  });

  unittest.group('obj-schema-SubscribeListingResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscribeListingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscribeListingResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscribeListingResponse(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TextConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextConfig(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsDataExchangesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).organizations.locations.dataExchanges;
      final arg_organization = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOrgDataExchangesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_organization,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOrgDataExchangesResponse(
          response as api.ListOrgDataExchangesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataExchangesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_request = buildDataExchange();
      final arg_parent = 'foo';
      final arg_dataExchangeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DataExchange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDataExchange(obj);

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
          queryMap['dataExchangeId']!.first,
          unittest.equals(arg_dataExchangeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataExchange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dataExchangeId: arg_dataExchangeId, $fields: arg_$fields);
      checkDataExchange(response as api.DataExchange);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataExchange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataExchange(response as api.DataExchange);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDataExchangesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDataExchangesResponse(response as api.ListDataExchangesResponse);
    });

    unittest.test('method--listSubscriptions', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_resource = 'foo';
      final arg_includeDeletedSubscriptions = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['includeDeletedSubscriptions']!.first,
          unittest.equals('$arg_includeDeletedSubscriptions'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListSharedResourceSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listSubscriptions(arg_resource,
          includeDeletedSubscriptions: arg_includeDeletedSubscriptions,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSharedResourceSubscriptionsResponse(
          response as api.ListSharedResourceSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_request = buildDataExchange();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DataExchange.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDataExchange(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDataExchange());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDataExchange(response as api.DataExchange);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--subscribe', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_request = buildSubscribeDataExchangeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscribeDataExchangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscribeDataExchangeRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.subscribe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.dataExchanges;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataExchangesListingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_request = buildListing();
      final arg_parent = 'foo';
      final arg_listingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Listing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkListing(obj);

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
          queryMap['listingId']!.first,
          unittest.equals(arg_listingId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          listingId: arg_listingId, $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_name = 'foo';
      final arg_deleteCommercial = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['deleteCommercial']!.first,
          unittest.equals('$arg_deleteCommercial'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          deleteCommercial: arg_deleteCommercial, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListListingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListListingsResponse(response as api.ListListingsResponse);
    });

    unittest.test('method--listSubscriptions', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_resource = 'foo';
      final arg_includeDeletedSubscriptions = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['includeDeletedSubscriptions']!.first,
          unittest.equals('$arg_includeDeletedSubscriptions'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListSharedResourceSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listSubscriptions(arg_resource,
          includeDeletedSubscriptions: arg_includeDeletedSubscriptions,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSharedResourceSubscriptionsResponse(
          response as api.ListSharedResourceSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_request = buildListing();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Listing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkListing(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--subscribe', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_request = buildSubscribeListingRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscribeListingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscribeListingRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscribeListingResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.subscribe(arg_request, arg_name, $fields: arg_$fields);
      checkSubscribeListingResponse(response as api.SubscribeListingResponse);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.AnalyticsHubApi(mock).projects.locations.dataExchanges.listings;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSubscriptionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--refresh', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_request = buildRefreshSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RefreshSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRefreshSubscriptionRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.refresh(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_request = buildRevokeSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RevokeSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevokeSubscriptionRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevokeSubscriptionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revoke(arg_request, arg_name, $fields: arg_$fields);
      checkRevokeSubscriptionResponse(
          response as api.RevokeSubscriptionResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsHubApi(mock).projects.locations.subscriptions;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });
  });
}
