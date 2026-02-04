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

import 'package:googleapis/pubsub/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAIInference = 0;
api.AIInference buildAIInference() {
  final o = api.AIInference();
  buildCounterAIInference++;
  if (buildCounterAIInference < 3) {
    o.endpoint = 'foo';
    o.serviceAccountEmail = 'foo';
    o.unstructuredInference = buildUnstructuredInference();
  }
  buildCounterAIInference--;
  return o;
}

void checkAIInference(api.AIInference o) {
  buildCounterAIInference++;
  if (buildCounterAIInference < 3) {
    unittest.expect(o.endpoint!, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail!, unittest.equals('foo'));
    checkUnstructuredInference(o.unstructuredInference!);
  }
  buildCounterAIInference--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAcknowledgeRequest = 0;
api.AcknowledgeRequest buildAcknowledgeRequest() {
  final o = api.AcknowledgeRequest();
  buildCounterAcknowledgeRequest++;
  if (buildCounterAcknowledgeRequest < 3) {
    o.ackIds = buildUnnamed0();
  }
  buildCounterAcknowledgeRequest--;
  return o;
}

void checkAcknowledgeRequest(api.AcknowledgeRequest o) {
  buildCounterAcknowledgeRequest++;
  if (buildCounterAcknowledgeRequest < 3) {
    checkUnnamed0(o.ackIds!);
  }
  buildCounterAcknowledgeRequest--;
}

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
    unittest.expect(o.listing!, unittest.equals('foo'));
    unittest.expect(o.subscription!, unittest.equals('foo'));
  }
  buildCounterAnalyticsHubSubscriptionInfo--;
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

core.int buildCounterAvroFormat = 0;
api.AvroFormat buildAvroFormat() {
  final o = api.AvroFormat();
  buildCounterAvroFormat++;
  if (buildCounterAvroFormat < 3) {}
  buildCounterAvroFormat--;
  return o;
}

void checkAvroFormat(api.AvroFormat o) {
  buildCounterAvroFormat++;
  if (buildCounterAvroFormat < 3) {}
  buildCounterAvroFormat--;
}

core.int buildCounterAwsKinesis = 0;
api.AwsKinesis buildAwsKinesis() {
  final o = api.AwsKinesis();
  buildCounterAwsKinesis++;
  if (buildCounterAwsKinesis < 3) {
    o.awsRoleArn = 'foo';
    o.consumerArn = 'foo';
    o.gcpServiceAccount = 'foo';
    o.state = 'foo';
    o.streamArn = 'foo';
  }
  buildCounterAwsKinesis--;
  return o;
}

void checkAwsKinesis(api.AwsKinesis o) {
  buildCounterAwsKinesis++;
  if (buildCounterAwsKinesis < 3) {
    unittest.expect(o.awsRoleArn!, unittest.equals('foo'));
    unittest.expect(o.consumerArn!, unittest.equals('foo'));
    unittest.expect(o.gcpServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.streamArn!, unittest.equals('foo'));
  }
  buildCounterAwsKinesis--;
}

core.int buildCounterAwsMsk = 0;
api.AwsMsk buildAwsMsk() {
  final o = api.AwsMsk();
  buildCounterAwsMsk++;
  if (buildCounterAwsMsk < 3) {
    o.awsRoleArn = 'foo';
    o.clusterArn = 'foo';
    o.gcpServiceAccount = 'foo';
    o.state = 'foo';
    o.topic = 'foo';
  }
  buildCounterAwsMsk--;
  return o;
}

void checkAwsMsk(api.AwsMsk o) {
  buildCounterAwsMsk++;
  if (buildCounterAwsMsk < 3) {
    unittest.expect(o.awsRoleArn!, unittest.equals('foo'));
    unittest.expect(o.clusterArn!, unittest.equals('foo'));
    unittest.expect(o.gcpServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterAwsMsk--;
}

core.int buildCounterAzureEventHubs = 0;
api.AzureEventHubs buildAzureEventHubs() {
  final o = api.AzureEventHubs();
  buildCounterAzureEventHubs++;
  if (buildCounterAzureEventHubs < 3) {
    o.clientId = 'foo';
    o.eventHub = 'foo';
    o.gcpServiceAccount = 'foo';
    o.namespace = 'foo';
    o.resourceGroup = 'foo';
    o.state = 'foo';
    o.subscriptionId = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterAzureEventHubs--;
  return o;
}

void checkAzureEventHubs(api.AzureEventHubs o) {
  buildCounterAzureEventHubs++;
  if (buildCounterAzureEventHubs < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.eventHub!, unittest.equals('foo'));
    unittest.expect(o.gcpServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.namespace!, unittest.equals('foo'));
    unittest.expect(o.resourceGroup!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.subscriptionId!, unittest.equals('foo'));
    unittest.expect(o.tenantId!, unittest.equals('foo'));
  }
  buildCounterAzureEventHubs--;
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
    unittest.expect(o.serviceAccountEmail!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.table!, unittest.equals('foo'));
    unittest.expect(o.useTableSchema!, unittest.isTrue);
    unittest.expect(o.useTopicSchema!, unittest.isTrue);
    unittest.expect(o.writeMetadata!, unittest.isTrue);
  }
  buildCounterBigQueryConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed1();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed1(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCloudStorage = 0;
api.CloudStorage buildCloudStorage() {
  final o = api.CloudStorage();
  buildCounterCloudStorage++;
  if (buildCounterCloudStorage < 3) {
    o.avroFormat = buildAvroFormat();
    o.bucket = 'foo';
    o.matchGlob = 'foo';
    o.minimumObjectCreateTime = 'foo';
    o.pubsubAvroFormat = buildPubSubAvroFormat();
    o.state = 'foo';
    o.textFormat = buildTextFormat();
  }
  buildCounterCloudStorage--;
  return o;
}

void checkCloudStorage(api.CloudStorage o) {
  buildCounterCloudStorage++;
  if (buildCounterCloudStorage < 3) {
    checkAvroFormat(o.avroFormat!);
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.matchGlob!, unittest.equals('foo'));
    unittest.expect(o.minimumObjectCreateTime!, unittest.equals('foo'));
    checkPubSubAvroFormat(o.pubsubAvroFormat!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTextFormat(o.textFormat!);
  }
  buildCounterCloudStorage--;
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
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.filenameDatetimeFormat!, unittest.equals('foo'));
    unittest.expect(o.filenamePrefix!, unittest.equals('foo'));
    unittest.expect(o.filenameSuffix!, unittest.equals('foo'));
    unittest.expect(o.maxBytes!, unittest.equals('foo'));
    unittest.expect(o.maxDuration!, unittest.equals('foo'));
    unittest.expect(o.maxMessages!, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTextConfig(o.textConfig!);
  }
  buildCounterCloudStorageConfig--;
}

core.int buildCounterCommitSchemaRequest = 0;
api.CommitSchemaRequest buildCommitSchemaRequest() {
  final o = api.CommitSchemaRequest();
  buildCounterCommitSchemaRequest++;
  if (buildCounterCommitSchemaRequest < 3) {
    o.schema = buildSchema();
  }
  buildCounterCommitSchemaRequest--;
  return o;
}

void checkCommitSchemaRequest(api.CommitSchemaRequest o) {
  buildCounterCommitSchemaRequest++;
  if (buildCounterCommitSchemaRequest < 3) {
    checkSchema(o.schema!);
  }
  buildCounterCommitSchemaRequest--;
}

core.int buildCounterConfluentCloud = 0;
api.ConfluentCloud buildConfluentCloud() {
  final o = api.ConfluentCloud();
  buildCounterConfluentCloud++;
  if (buildCounterConfluentCloud < 3) {
    o.bootstrapServer = 'foo';
    o.clusterId = 'foo';
    o.gcpServiceAccount = 'foo';
    o.identityPoolId = 'foo';
    o.state = 'foo';
    o.topic = 'foo';
  }
  buildCounterConfluentCloud--;
  return o;
}

void checkConfluentCloud(api.ConfluentCloud o) {
  buildCounterConfluentCloud++;
  if (buildCounterConfluentCloud < 3) {
    unittest.expect(o.bootstrapServer!, unittest.equals('foo'));
    unittest.expect(o.clusterId!, unittest.equals('foo'));
    unittest.expect(o.gcpServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.identityPoolId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterConfluentCloud--;
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterCreateSnapshotRequest = 0;
api.CreateSnapshotRequest buildCreateSnapshotRequest() {
  final o = api.CreateSnapshotRequest();
  buildCounterCreateSnapshotRequest++;
  if (buildCounterCreateSnapshotRequest < 3) {
    o.labels = buildUnnamed2();
    o.subscription = 'foo';
    o.tags = buildUnnamed3();
  }
  buildCounterCreateSnapshotRequest--;
  return o;
}

void checkCreateSnapshotRequest(api.CreateSnapshotRequest o) {
  buildCounterCreateSnapshotRequest++;
  if (buildCounterCreateSnapshotRequest < 3) {
    checkUnnamed2(o.labels!);
    unittest.expect(o.subscription!, unittest.equals('foo'));
    checkUnnamed3(o.tags!);
  }
  buildCounterCreateSnapshotRequest--;
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
    unittest.expect(o.deadLetterTopic!, unittest.equals('foo'));
    unittest.expect(o.maxDeliveryAttempts!, unittest.equals(42));
  }
  buildCounterDeadLetterPolicy--;
}

core.int buildCounterDetachSubscriptionResponse = 0;
api.DetachSubscriptionResponse buildDetachSubscriptionResponse() {
  final o = api.DetachSubscriptionResponse();
  buildCounterDetachSubscriptionResponse++;
  if (buildCounterDetachSubscriptionResponse < 3) {}
  buildCounterDetachSubscriptionResponse--;
  return o;
}

void checkDetachSubscriptionResponse(api.DetachSubscriptionResponse o) {
  buildCounterDetachSubscriptionResponse++;
  if (buildCounterDetachSubscriptionResponse < 3) {}
  buildCounterDetachSubscriptionResponse--;
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
    unittest.expect(o.ttl!, unittest.equals('foo'));
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterIngestionDataSourceSettings = 0;
api.IngestionDataSourceSettings buildIngestionDataSourceSettings() {
  final o = api.IngestionDataSourceSettings();
  buildCounterIngestionDataSourceSettings++;
  if (buildCounterIngestionDataSourceSettings < 3) {
    o.awsKinesis = buildAwsKinesis();
    o.awsMsk = buildAwsMsk();
    o.azureEventHubs = buildAzureEventHubs();
    o.cloudStorage = buildCloudStorage();
    o.confluentCloud = buildConfluentCloud();
    o.platformLogsSettings = buildPlatformLogsSettings();
  }
  buildCounterIngestionDataSourceSettings--;
  return o;
}

void checkIngestionDataSourceSettings(api.IngestionDataSourceSettings o) {
  buildCounterIngestionDataSourceSettings++;
  if (buildCounterIngestionDataSourceSettings < 3) {
    checkAwsKinesis(o.awsKinesis!);
    checkAwsMsk(o.awsMsk!);
    checkAzureEventHubs(o.azureEventHubs!);
    checkCloudStorage(o.cloudStorage!);
    checkConfluentCloud(o.confluentCloud!);
    checkPlatformLogsSettings(o.platformLogsSettings!);
  }
  buildCounterIngestionDataSourceSettings--;
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
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.functionName!, unittest.equals('foo'));
  }
  buildCounterJavaScriptUDF--;
}

core.List<api.Schema> buildUnnamed4() => [buildSchema(), buildSchema()];

void checkUnnamed4(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterListSchemaRevisionsResponse = 0;
api.ListSchemaRevisionsResponse buildListSchemaRevisionsResponse() {
  final o = api.ListSchemaRevisionsResponse();
  buildCounterListSchemaRevisionsResponse++;
  if (buildCounterListSchemaRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.schemas = buildUnnamed4();
  }
  buildCounterListSchemaRevisionsResponse--;
  return o;
}

void checkListSchemaRevisionsResponse(api.ListSchemaRevisionsResponse o) {
  buildCounterListSchemaRevisionsResponse++;
  if (buildCounterListSchemaRevisionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed4(o.schemas!);
  }
  buildCounterListSchemaRevisionsResponse--;
}

core.List<api.Schema> buildUnnamed5() => [buildSchema(), buildSchema()];

void checkUnnamed5(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterListSchemasResponse = 0;
api.ListSchemasResponse buildListSchemasResponse() {
  final o = api.ListSchemasResponse();
  buildCounterListSchemasResponse++;
  if (buildCounterListSchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.schemas = buildUnnamed5();
  }
  buildCounterListSchemasResponse--;
  return o;
}

void checkListSchemasResponse(api.ListSchemasResponse o) {
  buildCounterListSchemasResponse++;
  if (buildCounterListSchemasResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.schemas!);
  }
  buildCounterListSchemasResponse--;
}

core.List<api.Snapshot> buildUnnamed6() => [buildSnapshot(), buildSnapshot()];

void checkUnnamed6(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterListSnapshotsResponse = 0;
api.ListSnapshotsResponse buildListSnapshotsResponse() {
  final o = api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.nextPageToken = 'foo';
    o.snapshots = buildUnnamed6();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

void checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.snapshots!);
  }
  buildCounterListSnapshotsResponse--;
}

core.List<api.Subscription> buildUnnamed7() => [
  buildSubscription(),
  buildSubscription(),
];

void checkUnnamed7(core.List<api.Subscription> o) {
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
    o.subscriptions = buildUnnamed7();
  }
  buildCounterListSubscriptionsResponse--;
  return o;
}

void checkListSubscriptionsResponse(api.ListSubscriptionsResponse o) {
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.subscriptions!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTopicSnapshotsResponse = 0;
api.ListTopicSnapshotsResponse buildListTopicSnapshotsResponse() {
  final o = api.ListTopicSnapshotsResponse();
  buildCounterListTopicSnapshotsResponse++;
  if (buildCounterListTopicSnapshotsResponse < 3) {
    o.nextPageToken = 'foo';
    o.snapshots = buildUnnamed8();
  }
  buildCounterListTopicSnapshotsResponse--;
  return o;
}

void checkListTopicSnapshotsResponse(api.ListTopicSnapshotsResponse o) {
  buildCounterListTopicSnapshotsResponse++;
  if (buildCounterListTopicSnapshotsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.snapshots!);
  }
  buildCounterListTopicSnapshotsResponse--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTopicSubscriptionsResponse = 0;
api.ListTopicSubscriptionsResponse buildListTopicSubscriptionsResponse() {
  final o = api.ListTopicSubscriptionsResponse();
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed9();
  }
  buildCounterListTopicSubscriptionsResponse--;
  return o;
}

void checkListTopicSubscriptionsResponse(api.ListTopicSubscriptionsResponse o) {
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.subscriptions!);
  }
  buildCounterListTopicSubscriptionsResponse--;
}

core.List<api.Topic> buildUnnamed10() => [buildTopic(), buildTopic()];

void checkUnnamed10(core.List<api.Topic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTopic(o[0]);
  checkTopic(o[1]);
}

core.int buildCounterListTopicsResponse = 0;
api.ListTopicsResponse buildListTopicsResponse() {
  final o = api.ListTopicsResponse();
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    o.nextPageToken = 'foo';
    o.topics = buildUnnamed10();
  }
  buildCounterListTopicsResponse--;
  return o;
}

void checkListTopicsResponse(api.ListTopicsResponse o) {
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.topics!);
  }
  buildCounterListTopicsResponse--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMessageStoragePolicy = 0;
api.MessageStoragePolicy buildMessageStoragePolicy() {
  final o = api.MessageStoragePolicy();
  buildCounterMessageStoragePolicy++;
  if (buildCounterMessageStoragePolicy < 3) {
    o.allowedPersistenceRegions = buildUnnamed11();
    o.enforceInTransit = true;
  }
  buildCounterMessageStoragePolicy--;
  return o;
}

void checkMessageStoragePolicy(api.MessageStoragePolicy o) {
  buildCounterMessageStoragePolicy++;
  if (buildCounterMessageStoragePolicy < 3) {
    checkUnnamed11(o.allowedPersistenceRegions!);
    unittest.expect(o.enforceInTransit!, unittest.isTrue);
  }
  buildCounterMessageStoragePolicy--;
}

core.int buildCounterMessageTransform = 0;
api.MessageTransform buildMessageTransform() {
  final o = api.MessageTransform();
  buildCounterMessageTransform++;
  if (buildCounterMessageTransform < 3) {
    o.aiInference = buildAIInference();
    o.disabled = true;
    o.enabled = true;
    o.javascriptUdf = buildJavaScriptUDF();
  }
  buildCounterMessageTransform--;
  return o;
}

void checkMessageTransform(api.MessageTransform o) {
  buildCounterMessageTransform++;
  if (buildCounterMessageTransform < 3) {
    checkAIInference(o.aiInference!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkJavaScriptUDF(o.javascriptUdf!);
  }
  buildCounterMessageTransform--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyAckDeadlineRequest = 0;
api.ModifyAckDeadlineRequest buildModifyAckDeadlineRequest() {
  final o = api.ModifyAckDeadlineRequest();
  buildCounterModifyAckDeadlineRequest++;
  if (buildCounterModifyAckDeadlineRequest < 3) {
    o.ackDeadlineSeconds = 42;
    o.ackIds = buildUnnamed12();
  }
  buildCounterModifyAckDeadlineRequest--;
  return o;
}

void checkModifyAckDeadlineRequest(api.ModifyAckDeadlineRequest o) {
  buildCounterModifyAckDeadlineRequest++;
  if (buildCounterModifyAckDeadlineRequest < 3) {
    unittest.expect(o.ackDeadlineSeconds!, unittest.equals(42));
    checkUnnamed12(o.ackIds!);
  }
  buildCounterModifyAckDeadlineRequest--;
}

core.int buildCounterModifyPushConfigRequest = 0;
api.ModifyPushConfigRequest buildModifyPushConfigRequest() {
  final o = api.ModifyPushConfigRequest();
  buildCounterModifyPushConfigRequest++;
  if (buildCounterModifyPushConfigRequest < 3) {
    o.pushConfig = buildPushConfig();
  }
  buildCounterModifyPushConfigRequest--;
  return o;
}

void checkModifyPushConfigRequest(api.ModifyPushConfigRequest o) {
  buildCounterModifyPushConfigRequest++;
  if (buildCounterModifyPushConfigRequest < 3) {
    checkPushConfig(o.pushConfig!);
  }
  buildCounterModifyPushConfigRequest--;
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
    unittest.expect(o.audience!, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail!, unittest.equals('foo'));
  }
  buildCounterOidcToken--;
}

core.int buildCounterPlatformLogsSettings = 0;
api.PlatformLogsSettings buildPlatformLogsSettings() {
  final o = api.PlatformLogsSettings();
  buildCounterPlatformLogsSettings++;
  if (buildCounterPlatformLogsSettings < 3) {
    o.severity = 'foo';
  }
  buildCounterPlatformLogsSettings--;
  return o;
}

void checkPlatformLogsSettings(api.PlatformLogsSettings o) {
  buildCounterPlatformLogsSettings++;
  if (buildCounterPlatformLogsSettings < 3) {
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterPlatformLogsSettings--;
}

core.List<api.Binding> buildUnnamed13() => [buildBinding(), buildBinding()];

void checkUnnamed13(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed13();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed13(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPubSubAvroFormat = 0;
api.PubSubAvroFormat buildPubSubAvroFormat() {
  final o = api.PubSubAvroFormat();
  buildCounterPubSubAvroFormat++;
  if (buildCounterPubSubAvroFormat < 3) {}
  buildCounterPubSubAvroFormat--;
  return o;
}

void checkPubSubAvroFormat(api.PubSubAvroFormat o) {
  buildCounterPubSubAvroFormat++;
  if (buildCounterPubSubAvroFormat < 3) {}
  buildCounterPubSubAvroFormat--;
}

core.List<api.PubsubMessage> buildUnnamed14() => [
  buildPubsubMessage(),
  buildPubsubMessage(),
];

void checkUnnamed14(core.List<api.PubsubMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubMessage(o[0]);
  checkPubsubMessage(o[1]);
}

core.int buildCounterPublishRequest = 0;
api.PublishRequest buildPublishRequest() {
  final o = api.PublishRequest();
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    o.messages = buildUnnamed14();
  }
  buildCounterPublishRequest--;
  return o;
}

void checkPublishRequest(api.PublishRequest o) {
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    checkUnnamed14(o.messages!);
  }
  buildCounterPublishRequest--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublishResponse = 0;
api.PublishResponse buildPublishResponse() {
  final o = api.PublishResponse();
  buildCounterPublishResponse++;
  if (buildCounterPublishResponse < 3) {
    o.messageIds = buildUnnamed15();
  }
  buildCounterPublishResponse--;
  return o;
}

void checkPublishResponse(api.PublishResponse o) {
  buildCounterPublishResponse++;
  if (buildCounterPublishResponse < 3) {
    checkUnnamed15(o.messageIds!);
  }
  buildCounterPublishResponse--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPubsubMessage = 0;
api.PubsubMessage buildPubsubMessage() {
  final o = api.PubsubMessage();
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    o.attributes = buildUnnamed16();
    o.data = 'foo';
    o.messageId = 'foo';
    o.orderingKey = 'foo';
    o.publishTime = 'foo';
  }
  buildCounterPubsubMessage--;
  return o;
}

void checkPubsubMessage(api.PubsubMessage o) {
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    checkUnnamed16(o.attributes!);
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.messageId!, unittest.equals('foo'));
    unittest.expect(o.orderingKey!, unittest.equals('foo'));
    unittest.expect(o.publishTime!, unittest.equals('foo'));
  }
  buildCounterPubsubMessage--;
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

core.int buildCounterPullRequest = 0;
api.PullRequest buildPullRequest() {
  final o = api.PullRequest();
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    o.maxMessages = 42;
    o.returnImmediately = true;
  }
  buildCounterPullRequest--;
  return o;
}

void checkPullRequest(api.PullRequest o) {
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    unittest.expect(o.maxMessages!, unittest.equals(42));
    unittest.expect(o.returnImmediately!, unittest.isTrue);
  }
  buildCounterPullRequest--;
}

core.List<api.ReceivedMessage> buildUnnamed17() => [
  buildReceivedMessage(),
  buildReceivedMessage(),
];

void checkUnnamed17(core.List<api.ReceivedMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReceivedMessage(o[0]);
  checkReceivedMessage(o[1]);
}

core.int buildCounterPullResponse = 0;
api.PullResponse buildPullResponse() {
  final o = api.PullResponse();
  buildCounterPullResponse++;
  if (buildCounterPullResponse < 3) {
    o.receivedMessages = buildUnnamed17();
  }
  buildCounterPullResponse--;
  return o;
}

void checkPullResponse(api.PullResponse o) {
  buildCounterPullResponse++;
  if (buildCounterPullResponse < 3) {
    checkUnnamed17(o.receivedMessages!);
  }
  buildCounterPullResponse--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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
    unittest.expect(o.pushEndpoint!, unittest.equals('foo'));
  }
  buildCounterPushConfig--;
}

core.int buildCounterReceivedMessage = 0;
api.ReceivedMessage buildReceivedMessage() {
  final o = api.ReceivedMessage();
  buildCounterReceivedMessage++;
  if (buildCounterReceivedMessage < 3) {
    o.ackId = 'foo';
    o.deliveryAttempt = 42;
    o.message = buildPubsubMessage();
  }
  buildCounterReceivedMessage--;
  return o;
}

void checkReceivedMessage(api.ReceivedMessage o) {
  buildCounterReceivedMessage++;
  if (buildCounterReceivedMessage < 3) {
    unittest.expect(o.ackId!, unittest.equals('foo'));
    unittest.expect(o.deliveryAttempt!, unittest.equals(42));
    checkPubsubMessage(o.message!);
  }
  buildCounterReceivedMessage--;
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
    unittest.expect(o.maximumBackoff!, unittest.equals('foo'));
    unittest.expect(o.minimumBackoff!, unittest.equals('foo'));
  }
  buildCounterRetryPolicy--;
}

core.int buildCounterRollbackSchemaRequest = 0;
api.RollbackSchemaRequest buildRollbackSchemaRequest() {
  final o = api.RollbackSchemaRequest();
  buildCounterRollbackSchemaRequest++;
  if (buildCounterRollbackSchemaRequest < 3) {
    o.revisionId = 'foo';
  }
  buildCounterRollbackSchemaRequest--;
  return o;
}

void checkRollbackSchemaRequest(api.RollbackSchemaRequest o) {
  buildCounterRollbackSchemaRequest++;
  if (buildCounterRollbackSchemaRequest < 3) {
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterRollbackSchemaRequest--;
}

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  final o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.definition = 'foo';
    o.name = 'foo';
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.type = 'foo';
  }
  buildCounterSchema--;
  return o;
}

void checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    unittest.expect(o.definition!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.revisionCreateTime!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.int buildCounterSchemaSettings = 0;
api.SchemaSettings buildSchemaSettings() {
  final o = api.SchemaSettings();
  buildCounterSchemaSettings++;
  if (buildCounterSchemaSettings < 3) {
    o.encoding = 'foo';
    o.firstRevisionId = 'foo';
    o.lastRevisionId = 'foo';
    o.schema = 'foo';
  }
  buildCounterSchemaSettings--;
  return o;
}

void checkSchemaSettings(api.SchemaSettings o) {
  buildCounterSchemaSettings++;
  if (buildCounterSchemaSettings < 3) {
    unittest.expect(o.encoding!, unittest.equals('foo'));
    unittest.expect(o.firstRevisionId!, unittest.equals('foo'));
    unittest.expect(o.lastRevisionId!, unittest.equals('foo'));
    unittest.expect(o.schema!, unittest.equals('foo'));
  }
  buildCounterSchemaSettings--;
}

core.int buildCounterSeekRequest = 0;
api.SeekRequest buildSeekRequest() {
  final o = api.SeekRequest();
  buildCounterSeekRequest++;
  if (buildCounterSeekRequest < 3) {
    o.snapshot = 'foo';
    o.time = 'foo';
  }
  buildCounterSeekRequest--;
  return o;
}

void checkSeekRequest(api.SeekRequest o) {
  buildCounterSeekRequest++;
  if (buildCounterSeekRequest < 3) {
    unittest.expect(o.snapshot!, unittest.equals('foo'));
    unittest.expect(o.time!, unittest.equals('foo'));
  }
  buildCounterSeekRequest--;
}

core.int buildCounterSeekResponse = 0;
api.SeekResponse buildSeekResponse() {
  final o = api.SeekResponse();
  buildCounterSeekResponse++;
  if (buildCounterSeekResponse < 3) {}
  buildCounterSeekResponse--;
  return o;
}

void checkSeekResponse(api.SeekResponse o) {
  buildCounterSeekResponse++;
  if (buildCounterSeekResponse < 3) {}
  buildCounterSeekResponse--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSnapshot = 0;
api.Snapshot buildSnapshot() {
  final o = api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.expireTime = 'foo';
    o.labels = buildUnnamed19();
    o.name = 'foo';
    o.topic = 'foo';
  }
  buildCounterSnapshot--;
  return o;
}

void checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    checkUnnamed19(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
}

core.Map<core.String, core.String> buildUnnamed20() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed20(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.MessageTransform> buildUnnamed21() => [
  buildMessageTransform(),
  buildMessageTransform(),
];

void checkUnnamed21(core.List<api.MessageTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessageTransform(o[0]);
  checkMessageTransform(o[1]);
}

core.Map<core.String, core.String> buildUnnamed22() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed22(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
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
    o.labels = buildUnnamed20();
    o.messageRetentionDuration = 'foo';
    o.messageTransforms = buildUnnamed21();
    o.name = 'foo';
    o.pushConfig = buildPushConfig();
    o.retainAckedMessages = true;
    o.retryPolicy = buildRetryPolicy();
    o.state = 'foo';
    o.tags = buildUnnamed22();
    o.topic = 'foo';
    o.topicMessageRetentionDuration = 'foo';
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(o.ackDeadlineSeconds!, unittest.equals(42));
    checkAnalyticsHubSubscriptionInfo(o.analyticsHubSubscriptionInfo!);
    checkBigQueryConfig(o.bigqueryConfig!);
    checkCloudStorageConfig(o.cloudStorageConfig!);
    checkDeadLetterPolicy(o.deadLetterPolicy!);
    unittest.expect(o.detached!, unittest.isTrue);
    unittest.expect(o.enableExactlyOnceDelivery!, unittest.isTrue);
    unittest.expect(o.enableMessageOrdering!, unittest.isTrue);
    checkExpirationPolicy(o.expirationPolicy!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed20(o.labels!);
    unittest.expect(o.messageRetentionDuration!, unittest.equals('foo'));
    checkUnnamed21(o.messageTransforms!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPushConfig(o.pushConfig!);
    unittest.expect(o.retainAckedMessages!, unittest.isTrue);
    checkRetryPolicy(o.retryPolicy!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed22(o.tags!);
    unittest.expect(o.topic!, unittest.equals('foo'));
    unittest.expect(o.topicMessageRetentionDuration!, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.int buildCounterTextFormat = 0;
api.TextFormat buildTextFormat() {
  final o = api.TextFormat();
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    o.delimiter = 'foo';
  }
  buildCounterTextFormat--;
  return o;
}

void checkTextFormat(api.TextFormat o) {
  buildCounterTextFormat++;
  if (buildCounterTextFormat < 3) {
    unittest.expect(o.delimiter!, unittest.equals('foo'));
  }
  buildCounterTextFormat--;
}

core.Map<core.String, core.String> buildUnnamed25() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.MessageTransform> buildUnnamed26() => [
  buildMessageTransform(),
  buildMessageTransform(),
];

void checkUnnamed26(core.List<api.MessageTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessageTransform(o[0]);
  checkMessageTransform(o[1]);
}

core.Map<core.String, core.String> buildUnnamed27() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed27(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  final o = api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.ingestionDataSourceSettings = buildIngestionDataSourceSettings();
    o.kmsKeyName = 'foo';
    o.labels = buildUnnamed25();
    o.messageRetentionDuration = 'foo';
    o.messageStoragePolicy = buildMessageStoragePolicy();
    o.messageTransforms = buildUnnamed26();
    o.name = 'foo';
    o.satisfiesPzs = true;
    o.schemaSettings = buildSchemaSettings();
    o.state = 'foo';
    o.tags = buildUnnamed27();
  }
  buildCounterTopic--;
  return o;
}

void checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    checkIngestionDataSourceSettings(o.ingestionDataSourceSettings!);
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
    checkUnnamed25(o.labels!);
    unittest.expect(o.messageRetentionDuration!, unittest.equals('foo'));
    checkMessageStoragePolicy(o.messageStoragePolicy!);
    checkUnnamed26(o.messageTransforms!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkSchemaSettings(o.schemaSettings!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed27(o.tags!);
  }
  buildCounterTopic--;
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterUnstructuredInference = 0;
api.UnstructuredInference buildUnstructuredInference() {
  final o = api.UnstructuredInference();
  buildCounterUnstructuredInference++;
  if (buildCounterUnstructuredInference < 3) {
    o.parameters = buildUnnamed28();
  }
  buildCounterUnstructuredInference--;
  return o;
}

void checkUnstructuredInference(api.UnstructuredInference o) {
  buildCounterUnstructuredInference++;
  if (buildCounterUnstructuredInference < 3) {
    checkUnnamed28(o.parameters!);
  }
  buildCounterUnstructuredInference--;
}

core.int buildCounterUpdateSnapshotRequest = 0;
api.UpdateSnapshotRequest buildUpdateSnapshotRequest() {
  final o = api.UpdateSnapshotRequest();
  buildCounterUpdateSnapshotRequest++;
  if (buildCounterUpdateSnapshotRequest < 3) {
    o.snapshot = buildSnapshot();
    o.updateMask = 'foo';
  }
  buildCounterUpdateSnapshotRequest--;
  return o;
}

void checkUpdateSnapshotRequest(api.UpdateSnapshotRequest o) {
  buildCounterUpdateSnapshotRequest++;
  if (buildCounterUpdateSnapshotRequest < 3) {
    checkSnapshot(o.snapshot!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterUpdateSnapshotRequest--;
}

core.int buildCounterUpdateSubscriptionRequest = 0;
api.UpdateSubscriptionRequest buildUpdateSubscriptionRequest() {
  final o = api.UpdateSubscriptionRequest();
  buildCounterUpdateSubscriptionRequest++;
  if (buildCounterUpdateSubscriptionRequest < 3) {
    o.subscription = buildSubscription();
    o.updateMask = 'foo';
  }
  buildCounterUpdateSubscriptionRequest--;
  return o;
}

void checkUpdateSubscriptionRequest(api.UpdateSubscriptionRequest o) {
  buildCounterUpdateSubscriptionRequest++;
  if (buildCounterUpdateSubscriptionRequest < 3) {
    checkSubscription(o.subscription!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterUpdateSubscriptionRequest--;
}

core.int buildCounterUpdateTopicRequest = 0;
api.UpdateTopicRequest buildUpdateTopicRequest() {
  final o = api.UpdateTopicRequest();
  buildCounterUpdateTopicRequest++;
  if (buildCounterUpdateTopicRequest < 3) {
    o.topic = buildTopic();
    o.updateMask = 'foo';
  }
  buildCounterUpdateTopicRequest--;
  return o;
}

void checkUpdateTopicRequest(api.UpdateTopicRequest o) {
  buildCounterUpdateTopicRequest++;
  if (buildCounterUpdateTopicRequest < 3) {
    checkTopic(o.topic!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterUpdateTopicRequest--;
}

core.int buildCounterValidateMessageRequest = 0;
api.ValidateMessageRequest buildValidateMessageRequest() {
  final o = api.ValidateMessageRequest();
  buildCounterValidateMessageRequest++;
  if (buildCounterValidateMessageRequest < 3) {
    o.encoding = 'foo';
    o.message = 'foo';
    o.name = 'foo';
    o.schema = buildSchema();
  }
  buildCounterValidateMessageRequest--;
  return o;
}

void checkValidateMessageRequest(api.ValidateMessageRequest o) {
  buildCounterValidateMessageRequest++;
  if (buildCounterValidateMessageRequest < 3) {
    unittest.expect(o.encoding!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSchema(o.schema!);
  }
  buildCounterValidateMessageRequest--;
}

core.int buildCounterValidateMessageResponse = 0;
api.ValidateMessageResponse buildValidateMessageResponse() {
  final o = api.ValidateMessageResponse();
  buildCounterValidateMessageResponse++;
  if (buildCounterValidateMessageResponse < 3) {}
  buildCounterValidateMessageResponse--;
  return o;
}

void checkValidateMessageResponse(api.ValidateMessageResponse o) {
  buildCounterValidateMessageResponse++;
  if (buildCounterValidateMessageResponse < 3) {}
  buildCounterValidateMessageResponse--;
}

core.int buildCounterValidateSchemaRequest = 0;
api.ValidateSchemaRequest buildValidateSchemaRequest() {
  final o = api.ValidateSchemaRequest();
  buildCounterValidateSchemaRequest++;
  if (buildCounterValidateSchemaRequest < 3) {
    o.schema = buildSchema();
  }
  buildCounterValidateSchemaRequest--;
  return o;
}

void checkValidateSchemaRequest(api.ValidateSchemaRequest o) {
  buildCounterValidateSchemaRequest++;
  if (buildCounterValidateSchemaRequest < 3) {
    checkSchema(o.schema!);
  }
  buildCounterValidateSchemaRequest--;
}

core.int buildCounterValidateSchemaResponse = 0;
api.ValidateSchemaResponse buildValidateSchemaResponse() {
  final o = api.ValidateSchemaResponse();
  buildCounterValidateSchemaResponse++;
  if (buildCounterValidateSchemaResponse < 3) {}
  buildCounterValidateSchemaResponse--;
  return o;
}

void checkValidateSchemaResponse(api.ValidateSchemaResponse o) {
  buildCounterValidateSchemaResponse++;
  if (buildCounterValidateSchemaResponse < 3) {}
  buildCounterValidateSchemaResponse--;
}

void main() {
  unittest.group('obj-schema-AIInference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAIInference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AIInference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAIInference(od);
    });
  });

  unittest.group('obj-schema-AcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcknowledgeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyticsHubSubscriptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyticsHubSubscriptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyticsHubSubscriptionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyticsHubSubscriptionInfo(od);
    });
  });

  unittest.group('obj-schema-AvroConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvroConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvroConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAvroConfig(od);
    });
  });

  unittest.group('obj-schema-AvroFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvroFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvroFormat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAvroFormat(od);
    });
  });

  unittest.group('obj-schema-AwsKinesis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsKinesis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsKinesis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsKinesis(od);
    });
  });

  unittest.group('obj-schema-AwsMsk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsMsk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsMsk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsMsk(od);
    });
  });

  unittest.group('obj-schema-AzureEventHubs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureEventHubs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureEventHubs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureEventHubs(od);
    });
  });

  unittest.group('obj-schema-BigQueryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBigQueryConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CloudStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudStorage(od);
    });
  });

  unittest.group('obj-schema-CloudStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudStorageConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudStorageConfig(od);
    });
  });

  unittest.group('obj-schema-CommitSchemaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitSchemaRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommitSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-ConfluentCloud', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfluentCloud();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfluentCloud.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfluentCloud(od);
    });
  });

  unittest.group('obj-schema-CreateSnapshotRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSnapshotRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSnapshotRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateSnapshotRequest(od);
    });
  });

  unittest.group('obj-schema-DeadLetterPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeadLetterPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeadLetterPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeadLetterPolicy(od);
    });
  });

  unittest.group('obj-schema-DetachSubscriptionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetachSubscriptionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetachSubscriptionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetachSubscriptionResponse(od);
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

  unittest.group('obj-schema-ExpirationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpirationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpirationPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpirationPolicy(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-IngestionDataSourceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestionDataSourceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestionDataSourceSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestionDataSourceSettings(od);
    });
  });

  unittest.group('obj-schema-JavaScriptUDF', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJavaScriptUDF();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JavaScriptUDF.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJavaScriptUDF(od);
    });
  });

  unittest.group('obj-schema-ListSchemaRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSchemaRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSchemaRevisionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSchemaRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSchemasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSchemasResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSchemasResponse(od);
    });
  });

  unittest.group('obj-schema-ListSnapshotsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSnapshotsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSnapshotsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubscriptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTopicSnapshotsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicSnapshotsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicSnapshotsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTopicSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTopicSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicSubscriptionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTopicSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTopicsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTopicsResponse(od);
    });
  });

  unittest.group('obj-schema-MessageStoragePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessageStoragePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessageStoragePolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessageStoragePolicy(od);
    });
  });

  unittest.group('obj-schema-MessageTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessageTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessageTransform.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessageTransform(od);
    });
  });

  unittest.group('obj-schema-ModifyAckDeadlineRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyAckDeadlineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyAckDeadlineRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyAckDeadlineRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyPushConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyPushConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyPushConfigRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyPushConfigRequest(od);
    });
  });

  unittest.group('obj-schema-NoWrapper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNoWrapper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NoWrapper.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNoWrapper(od);
    });
  });

  unittest.group('obj-schema-OidcToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOidcToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OidcToken.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOidcToken(od);
    });
  });

  unittest.group('obj-schema-PlatformLogsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformLogsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformLogsSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlatformLogsSettings(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PubSubAvroFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubSubAvroFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubSubAvroFormat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPubSubAvroFormat(od);
    });
  });

  unittest.group('obj-schema-PublishRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishRequest(od);
    });
  });

  unittest.group('obj-schema-PublishResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishResponse(od);
    });
  });

  unittest.group('obj-schema-PubsubMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubMessage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPubsubMessage(od);
    });
  });

  unittest.group('obj-schema-PubsubWrapper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubWrapper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubWrapper.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPubsubWrapper(od);
    });
  });

  unittest.group('obj-schema-PullRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullRequest(od);
    });
  });

  unittest.group('obj-schema-PullResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullResponse(od);
    });
  });

  unittest.group('obj-schema-PushConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PushConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPushConfig(od);
    });
  });

  unittest.group('obj-schema-ReceivedMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReceivedMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReceivedMessage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReceivedMessage(od);
    });
  });

  unittest.group('obj-schema-RetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-RollbackSchemaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackSchemaRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollbackSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Schema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchema(od);
    });
  });

  unittest.group('obj-schema-SchemaSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchemaSettings(od);
    });
  });

  unittest.group('obj-schema-SeekRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeekRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeekRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSeekRequest(od);
    });
  });

  unittest.group('obj-schema-SeekResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeekResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeekResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSeekResponse(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Snapshot.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSnapshot(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TextConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextConfig(od);
    });
  });

  unittest.group('obj-schema-TextFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextFormat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextFormat(od);
    });
  });

  unittest.group('obj-schema-Topic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Topic.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTopic(od);
    });
  });

  unittest.group('obj-schema-UnstructuredInference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnstructuredInference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnstructuredInference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnstructuredInference(od);
    });
  });

  unittest.group('obj-schema-UpdateSnapshotRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSnapshotRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSnapshotRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateSnapshotRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTopicRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTopicRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTopicRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateTopicRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateMessageRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateMessageResponse(od);
    });
  });

  unittest.group('obj-schema-ValidateSchemaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateSchemaRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateSchemaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateSchemaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateSchemaResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateSchemaResponse(od);
    });
  });

  unittest.group('resource-ProjectsSchemasResource', () {
    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildCommitSchemaRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CommitSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCommitSchemaRequest(obj);

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
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.commit(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSchema(response as api.Schema);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildSchema();
      final arg_parent = 'foo';
      final arg_schemaId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Schema.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSchema(obj);

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
            queryMap['schemaId']!.first,
            unittest.equals(arg_schemaId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        schemaId: arg_schemaId,
        $fields: arg_$fields,
      );
      checkSchema(response as api.Schema);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--deleteRevision', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_name = 'foo';
      final arg_revisionId = 'foo';
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
            queryMap['revisionId']!.first,
            unittest.equals(arg_revisionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deleteRevision(
        arg_name,
        revisionId: arg_revisionId,
        $fields: arg_$fields,
      );
      checkSchema(response as api.Schema);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkSchema(response as api.Schema);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSchemasResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListSchemasResponse(response as api.ListSchemasResponse);
    });

    unittest.test('method--listRevisions', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSchemaRevisionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listRevisions(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListSchemaRevisionsResponse(
        response as api.ListSchemaRevisionsResponse,
      );
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildRollbackSchemaRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RollbackSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollbackSchemaRequest(obj);

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
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.rollback(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSchema(response as api.Schema);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildValidateSchemaRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ValidateSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkValidateSchemaRequest(obj);

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
          final resp = convert.json.encode(buildValidateSchemaResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkValidateSchemaResponse(response as api.ValidateSchemaResponse);
    });

    unittest.test('method--validateMessage', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.schemas;
      final arg_request = buildValidateMessageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ValidateMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkValidateMessageRequest(obj);

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
          final resp = convert.json.encode(buildValidateMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validateMessage(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkValidateMessageResponse(response as api.ValidateMessageResponse);
    });
  });

  unittest.group('resource-ProjectsSnapshotsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_request = buildCreateSnapshotRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateSnapshotRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateSnapshotRequest(obj);

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
          final resp = convert.json.encode(buildSnapshot());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_snapshot = 'foo';
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_snapshot, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_snapshot = 'foo';
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
          final resp = convert.json.encode(buildSnapshot());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_snapshot, $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_project = 'foo';
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
          final resp = convert.json.encode(buildListSnapshotsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_request = buildUpdateSnapshotRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateSnapshotRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateSnapshotRequest(obj);

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
          final resp = convert.json.encode(buildSnapshot());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.snapshots;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsSubscriptionsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildAcknowledgeRequest();
      final arg_subscription = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAcknowledgeRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.acknowledge(
        arg_request,
        arg_subscription,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildSubscription();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubscription(obj);

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
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_subscription = 'foo';
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_subscription, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--detach', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_subscription = 'foo';
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
          final resp = convert.json.encode(buildDetachSubscriptionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.detach(arg_subscription, $fields: arg_$fields);
      checkDetachSubscriptionResponse(
        response as api.DetachSubscriptionResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_subscription = 'foo';
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
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_subscription, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_project = 'foo';
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
          final resp = convert.json.encode(buildListSubscriptionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--modifyAckDeadline', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildModifyAckDeadlineRequest();
      final arg_subscription = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyAckDeadlineRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyAckDeadlineRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifyAckDeadline(
        arg_request,
        arg_subscription,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--modifyPushConfig', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildModifyPushConfigRequest();
      final arg_subscription = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyPushConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyPushConfigRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifyPushConfig(
        arg_request,
        arg_subscription,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildUpdateSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateSubscriptionRequest(obj);

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
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--pull', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildPullRequest();
      final arg_subscription = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PullRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPullRequest(obj);

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
          final resp = convert.json.encode(buildPullResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pull(
        arg_request,
        arg_subscription,
        $fields: arg_$fields,
      );
      checkPullResponse(response as api.PullResponse);
    });

    unittest.test('method--seek', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildSeekRequest();
      final arg_subscription = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SeekRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSeekRequest(obj);

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
          final resp = convert.json.encode(buildSeekResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.seek(
        arg_request,
        arg_subscription,
        $fields: arg_$fields,
      );
      checkSeekResponse(response as api.SeekResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.subscriptions;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsTopicsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_request = buildTopic();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Topic.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTopic(obj);

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
          final resp = convert.json.encode(buildTopic());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTopic(response as api.Topic);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_topic = 'foo';
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_topic, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_topic = 'foo';
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
          final resp = convert.json.encode(buildTopic());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_topic, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_project = 'foo';
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
          final resp = convert.json.encode(buildListTopicsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_project,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTopicsResponse(response as api.ListTopicsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_request = buildUpdateTopicRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateTopicRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateTopicRequest(obj);

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
          final resp = convert.json.encode(buildTopic());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTopic(response as api.Topic);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_request = buildPublishRequest();
      final arg_topic = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PublishRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPublishRequest(obj);

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
          final resp = convert.json.encode(buildPublishResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publish(
        arg_request,
        arg_topic,
        $fields: arg_$fields,
      );
      checkPublishResponse(response as api.PublishResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsTopicsSnapshotsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics.snapshots;
      final arg_topic = 'foo';
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
          final resp = convert.json.encode(buildListTopicSnapshotsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_topic,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTopicSnapshotsResponse(
        response as api.ListTopicSnapshotsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsTopicsSubscriptionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).projects.topics.subscriptions;
      final arg_topic = 'foo';
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
          final resp = convert.json.encode(
            buildListTopicSubscriptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_topic,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTopicSubscriptionsResponse(
        response as api.ListTopicSubscriptionsResponse,
      );
    });
  });
}
