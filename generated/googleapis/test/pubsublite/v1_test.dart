// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/pubsublite/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCapacity = 0;
api.Capacity buildCapacity() {
  final o = api.Capacity();
  buildCounterCapacity++;
  if (buildCounterCapacity < 3) {
    o.publishMibPerSec = 42;
    o.subscribeMibPerSec = 42;
  }
  buildCounterCapacity--;
  return o;
}

void checkCapacity(api.Capacity o) {
  buildCounterCapacity++;
  if (buildCounterCapacity < 3) {
    unittest.expect(
      o.publishMibPerSec!,
      unittest.equals(42),
    );
    unittest.expect(
      o.subscribeMibPerSec!,
      unittest.equals(42),
    );
  }
  buildCounterCapacity--;
}

core.int buildCounterCommitCursorRequest = 0;
api.CommitCursorRequest buildCommitCursorRequest() {
  final o = api.CommitCursorRequest();
  buildCounterCommitCursorRequest++;
  if (buildCounterCommitCursorRequest < 3) {
    o.cursor = buildCursor();
    o.partition = 'foo';
  }
  buildCounterCommitCursorRequest--;
  return o;
}

void checkCommitCursorRequest(api.CommitCursorRequest o) {
  buildCounterCommitCursorRequest++;
  if (buildCounterCommitCursorRequest < 3) {
    checkCursor(o.cursor!);
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitCursorRequest--;
}

core.int buildCounterCommitCursorResponse = 0;
api.CommitCursorResponse buildCommitCursorResponse() {
  final o = api.CommitCursorResponse();
  buildCounterCommitCursorResponse++;
  if (buildCounterCommitCursorResponse < 3) {}
  buildCounterCommitCursorResponse--;
  return o;
}

void checkCommitCursorResponse(api.CommitCursorResponse o) {
  buildCounterCommitCursorResponse++;
  if (buildCounterCommitCursorResponse < 3) {}
  buildCounterCommitCursorResponse--;
}

core.int buildCounterComputeHeadCursorRequest = 0;
api.ComputeHeadCursorRequest buildComputeHeadCursorRequest() {
  final o = api.ComputeHeadCursorRequest();
  buildCounterComputeHeadCursorRequest++;
  if (buildCounterComputeHeadCursorRequest < 3) {
    o.partition = 'foo';
  }
  buildCounterComputeHeadCursorRequest--;
  return o;
}

void checkComputeHeadCursorRequest(api.ComputeHeadCursorRequest o) {
  buildCounterComputeHeadCursorRequest++;
  if (buildCounterComputeHeadCursorRequest < 3) {
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeHeadCursorRequest--;
}

core.int buildCounterComputeHeadCursorResponse = 0;
api.ComputeHeadCursorResponse buildComputeHeadCursorResponse() {
  final o = api.ComputeHeadCursorResponse();
  buildCounterComputeHeadCursorResponse++;
  if (buildCounterComputeHeadCursorResponse < 3) {
    o.headCursor = buildCursor();
  }
  buildCounterComputeHeadCursorResponse--;
  return o;
}

void checkComputeHeadCursorResponse(api.ComputeHeadCursorResponse o) {
  buildCounterComputeHeadCursorResponse++;
  if (buildCounterComputeHeadCursorResponse < 3) {
    checkCursor(o.headCursor!);
  }
  buildCounterComputeHeadCursorResponse--;
}

core.int buildCounterComputeMessageStatsRequest = 0;
api.ComputeMessageStatsRequest buildComputeMessageStatsRequest() {
  final o = api.ComputeMessageStatsRequest();
  buildCounterComputeMessageStatsRequest++;
  if (buildCounterComputeMessageStatsRequest < 3) {
    o.endCursor = buildCursor();
    o.partition = 'foo';
    o.startCursor = buildCursor();
  }
  buildCounterComputeMessageStatsRequest--;
  return o;
}

void checkComputeMessageStatsRequest(api.ComputeMessageStatsRequest o) {
  buildCounterComputeMessageStatsRequest++;
  if (buildCounterComputeMessageStatsRequest < 3) {
    checkCursor(o.endCursor!);
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
    checkCursor(o.startCursor!);
  }
  buildCounterComputeMessageStatsRequest--;
}

core.int buildCounterComputeMessageStatsResponse = 0;
api.ComputeMessageStatsResponse buildComputeMessageStatsResponse() {
  final o = api.ComputeMessageStatsResponse();
  buildCounterComputeMessageStatsResponse++;
  if (buildCounterComputeMessageStatsResponse < 3) {
    o.messageBytes = 'foo';
    o.messageCount = 'foo';
    o.minimumEventTime = 'foo';
    o.minimumPublishTime = 'foo';
  }
  buildCounterComputeMessageStatsResponse--;
  return o;
}

void checkComputeMessageStatsResponse(api.ComputeMessageStatsResponse o) {
  buildCounterComputeMessageStatsResponse++;
  if (buildCounterComputeMessageStatsResponse < 3) {
    unittest.expect(
      o.messageBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumEventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumPublishTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeMessageStatsResponse--;
}

core.int buildCounterComputeTimeCursorRequest = 0;
api.ComputeTimeCursorRequest buildComputeTimeCursorRequest() {
  final o = api.ComputeTimeCursorRequest();
  buildCounterComputeTimeCursorRequest++;
  if (buildCounterComputeTimeCursorRequest < 3) {
    o.partition = 'foo';
    o.target = buildTimeTarget();
  }
  buildCounterComputeTimeCursorRequest--;
  return o;
}

void checkComputeTimeCursorRequest(api.ComputeTimeCursorRequest o) {
  buildCounterComputeTimeCursorRequest++;
  if (buildCounterComputeTimeCursorRequest < 3) {
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
    checkTimeTarget(o.target!);
  }
  buildCounterComputeTimeCursorRequest--;
}

core.int buildCounterComputeTimeCursorResponse = 0;
api.ComputeTimeCursorResponse buildComputeTimeCursorResponse() {
  final o = api.ComputeTimeCursorResponse();
  buildCounterComputeTimeCursorResponse++;
  if (buildCounterComputeTimeCursorResponse < 3) {
    o.cursor = buildCursor();
  }
  buildCounterComputeTimeCursorResponse--;
  return o;
}

void checkComputeTimeCursorResponse(api.ComputeTimeCursorResponse o) {
  buildCounterComputeTimeCursorResponse++;
  if (buildCounterComputeTimeCursorResponse < 3) {
    checkCursor(o.cursor!);
  }
  buildCounterComputeTimeCursorResponse--;
}

core.int buildCounterCursor = 0;
api.Cursor buildCursor() {
  final o = api.Cursor();
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    o.offset = 'foo';
  }
  buildCounterCursor--;
  return o;
}

void checkCursor(api.Cursor o) {
  buildCounterCursor++;
  if (buildCounterCursor < 3) {
    unittest.expect(
      o.offset!,
      unittest.equals('foo'),
    );
  }
  buildCounterCursor--;
}

core.int buildCounterDeliveryConfig = 0;
api.DeliveryConfig buildDeliveryConfig() {
  final o = api.DeliveryConfig();
  buildCounterDeliveryConfig++;
  if (buildCounterDeliveryConfig < 3) {
    o.deliveryRequirement = 'foo';
  }
  buildCounterDeliveryConfig--;
  return o;
}

void checkDeliveryConfig(api.DeliveryConfig o) {
  buildCounterDeliveryConfig++;
  if (buildCounterDeliveryConfig < 3) {
    unittest.expect(
      o.deliveryRequirement!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeliveryConfig--;
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

core.List<api.PartitionCursor> buildUnnamed7591() => [
      buildPartitionCursor(),
      buildPartitionCursor(),
    ];

void checkUnnamed7591(core.List<api.PartitionCursor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartitionCursor(o[0]);
  checkPartitionCursor(o[1]);
}

core.int buildCounterListPartitionCursorsResponse = 0;
api.ListPartitionCursorsResponse buildListPartitionCursorsResponse() {
  final o = api.ListPartitionCursorsResponse();
  buildCounterListPartitionCursorsResponse++;
  if (buildCounterListPartitionCursorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.partitionCursors = buildUnnamed7591();
  }
  buildCounterListPartitionCursorsResponse--;
  return o;
}

void checkListPartitionCursorsResponse(api.ListPartitionCursorsResponse o) {
  buildCounterListPartitionCursorsResponse++;
  if (buildCounterListPartitionCursorsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7591(o.partitionCursors!);
  }
  buildCounterListPartitionCursorsResponse--;
}

core.List<api.Subscription> buildUnnamed7592() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed7592(core.List<api.Subscription> o) {
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
    o.subscriptions = buildUnnamed7592();
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
    checkUnnamed7592(o.subscriptions!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<core.String> buildUnnamed7593() => [
      'foo',
      'foo',
    ];

void checkUnnamed7593(core.List<core.String> o) {
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

core.int buildCounterListTopicSubscriptionsResponse = 0;
api.ListTopicSubscriptionsResponse buildListTopicSubscriptionsResponse() {
  final o = api.ListTopicSubscriptionsResponse();
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed7593();
  }
  buildCounterListTopicSubscriptionsResponse--;
  return o;
}

void checkListTopicSubscriptionsResponse(api.ListTopicSubscriptionsResponse o) {
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7593(o.subscriptions!);
  }
  buildCounterListTopicSubscriptionsResponse--;
}

core.List<api.Topic> buildUnnamed7594() => [
      buildTopic(),
      buildTopic(),
    ];

void checkUnnamed7594(core.List<api.Topic> o) {
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
    o.topics = buildUnnamed7594();
  }
  buildCounterListTopicsResponse--;
  return o;
}

void checkListTopicsResponse(api.ListTopicsResponse o) {
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7594(o.topics!);
  }
  buildCounterListTopicsResponse--;
}

core.int buildCounterPartitionConfig = 0;
api.PartitionConfig buildPartitionConfig() {
  final o = api.PartitionConfig();
  buildCounterPartitionConfig++;
  if (buildCounterPartitionConfig < 3) {
    o.capacity = buildCapacity();
    o.count = 'foo';
    o.scale = 42;
  }
  buildCounterPartitionConfig--;
  return o;
}

void checkPartitionConfig(api.PartitionConfig o) {
  buildCounterPartitionConfig++;
  if (buildCounterPartitionConfig < 3) {
    checkCapacity(o.capacity!);
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterPartitionConfig--;
}

core.int buildCounterPartitionCursor = 0;
api.PartitionCursor buildPartitionCursor() {
  final o = api.PartitionCursor();
  buildCounterPartitionCursor++;
  if (buildCounterPartitionCursor < 3) {
    o.cursor = buildCursor();
    o.partition = 'foo';
  }
  buildCounterPartitionCursor--;
  return o;
}

void checkPartitionCursor(api.PartitionCursor o) {
  buildCounterPartitionCursor++;
  if (buildCounterPartitionCursor < 3) {
    checkCursor(o.cursor!);
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartitionCursor--;
}

core.int buildCounterRetentionConfig = 0;
api.RetentionConfig buildRetentionConfig() {
  final o = api.RetentionConfig();
  buildCounterRetentionConfig++;
  if (buildCounterRetentionConfig < 3) {
    o.perPartitionBytes = 'foo';
    o.period = 'foo';
  }
  buildCounterRetentionConfig--;
  return o;
}

void checkRetentionConfig(api.RetentionConfig o) {
  buildCounterRetentionConfig++;
  if (buildCounterRetentionConfig < 3) {
    unittest.expect(
      o.perPartitionBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.period!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetentionConfig--;
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.deliveryConfig = buildDeliveryConfig();
    o.name = 'foo';
    o.topic = 'foo';
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkDeliveryConfig(o.deliveryConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscription--;
}

core.int buildCounterTimeTarget = 0;
api.TimeTarget buildTimeTarget() {
  final o = api.TimeTarget();
  buildCounterTimeTarget++;
  if (buildCounterTimeTarget < 3) {
    o.eventTime = 'foo';
    o.publishTime = 'foo';
  }
  buildCounterTimeTarget--;
  return o;
}

void checkTimeTarget(api.TimeTarget o) {
  buildCounterTimeTarget++;
  if (buildCounterTimeTarget < 3) {
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeTarget--;
}

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  final o = api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.name = 'foo';
    o.partitionConfig = buildPartitionConfig();
    o.retentionConfig = buildRetentionConfig();
  }
  buildCounterTopic--;
  return o;
}

void checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPartitionConfig(o.partitionConfig!);
    checkRetentionConfig(o.retentionConfig!);
  }
  buildCounterTopic--;
}

core.int buildCounterTopicPartitions = 0;
api.TopicPartitions buildTopicPartitions() {
  final o = api.TopicPartitions();
  buildCounterTopicPartitions++;
  if (buildCounterTopicPartitions < 3) {
    o.partitionCount = 'foo';
  }
  buildCounterTopicPartitions--;
  return o;
}

void checkTopicPartitions(api.TopicPartitions o) {
  buildCounterTopicPartitions++;
  if (buildCounterTopicPartitions < 3) {
    unittest.expect(
      o.partitionCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterTopicPartitions--;
}

void main() {
  unittest.group('obj-schema-Capacity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCapacity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Capacity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCapacity(od);
    });
  });

  unittest.group('obj-schema-CommitCursorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitCursorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitCursorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitCursorRequest(od);
    });
  });

  unittest.group('obj-schema-CommitCursorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitCursorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitCursorResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitCursorResponse(od);
    });
  });

  unittest.group('obj-schema-ComputeHeadCursorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeHeadCursorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeHeadCursorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeHeadCursorRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeHeadCursorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeHeadCursorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeHeadCursorResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeHeadCursorResponse(od);
    });
  });

  unittest.group('obj-schema-ComputeMessageStatsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeMessageStatsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeMessageStatsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeMessageStatsRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeMessageStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeMessageStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeMessageStatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeMessageStatsResponse(od);
    });
  });

  unittest.group('obj-schema-ComputeTimeCursorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeTimeCursorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeTimeCursorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeTimeCursorRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeTimeCursorResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeTimeCursorResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeTimeCursorResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeTimeCursorResponse(od);
    });
  });

  unittest.group('obj-schema-Cursor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCursor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cursor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCursor(od);
    });
  });

  unittest.group('obj-schema-DeliveryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeliveryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeliveryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeliveryConfig(od);
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

  unittest.group('obj-schema-ListPartitionCursorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPartitionCursorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPartitionCursorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPartitionCursorsResponse(od);
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

  unittest.group('obj-schema-ListTopicSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTopicSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTopicsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTopicsResponse(od);
    });
  });

  unittest.group('obj-schema-PartitionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionConfig(od);
    });
  });

  unittest.group('obj-schema-PartitionCursor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartitionCursor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartitionCursor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartitionCursor(od);
    });
  });

  unittest.group('obj-schema-RetentionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetentionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetentionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetentionConfig(od);
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

  unittest.group('obj-schema-TimeTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeTarget.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeTarget(od);
    });
  });

  unittest.group('obj-schema-Topic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Topic.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTopic(od);
    });
  });

  unittest.group('obj-schema-TopicPartitions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopicPartitions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TopicPartitions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTopicPartitions(od);
    });
  });

  unittest.group('resource-AdminProjectsLocationsSubscriptionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      final arg_request = buildSubscription();
      final arg_parent = 'foo';
      final arg_skipBacklog = true;
      final arg_subscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['skipBacklog']!.first,
          unittest.equals('$arg_skipBacklog'),
        );
        unittest.expect(
          queryMap['subscriptionId']!.first,
          unittest.equals(arg_subscriptionId),
        );
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
      final response = await res.create(arg_request, arg_parent,
          skipBacklog: arg_skipBacklog,
          subscriptionId: arg_subscriptionId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
      final res =
          api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      final arg_request = buildSubscription();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });
  });

  unittest.group('resource-AdminProjectsLocationsTopicsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      final arg_request = buildTopic();
      final arg_parent = 'foo';
      final arg_topicId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Topic.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTopic(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['topicId']!.first,
          unittest.equals(arg_topicId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          topicId: arg_topicId, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
      final res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--getPartitions', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildTopicPartitions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPartitions(arg_name, $fields: arg_$fields);
      checkTopicPartitions(response as api.TopicPartitions);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListTopicsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTopicsResponse(response as api.ListTopicsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      final arg_request = buildTopic();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Topic.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTopic(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });
  });

  unittest.group('resource-AdminProjectsLocationsTopicsSubscriptionsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.PubsubLiteApi(mock).admin.projects.locations.topics.subscriptions;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/admin/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListTopicSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTopicSubscriptionsResponse(
          response as api.ListTopicSubscriptionsResponse);
    });
  });

  unittest.group('resource-CursorProjectsLocationsSubscriptionsResource', () {
    unittest.test('method--commitCursor', () async {
      final mock = HttpServerMock();
      final res =
          api.PubsubLiteApi(mock).cursor.projects.locations.subscriptions;
      final arg_request = buildCommitCursorRequest();
      final arg_subscription = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommitCursorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitCursorRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/cursor/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildCommitCursorResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.commitCursor(arg_request, arg_subscription,
          $fields: arg_$fields);
      checkCommitCursorResponse(response as api.CommitCursorResponse);
    });
  });

  unittest.group('resource-CursorProjectsLocationsSubscriptionsCursorsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock)
          .cursor
          .projects
          .locations
          .subscriptions
          .cursors;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/cursor/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildListPartitionCursorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPartitionCursorsResponse(
          response as api.ListPartitionCursorsResponse);
    });
  });

  unittest.group('resource-TopicStatsProjectsLocationsTopicsResource', () {
    unittest.test('method--computeHeadCursor', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).topicStats.projects.locations.topics;
      final arg_request = buildComputeHeadCursorRequest();
      final arg_topic = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ComputeHeadCursorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeHeadCursorRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/topicStats/'),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildComputeHeadCursorResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeHeadCursor(arg_request, arg_topic,
          $fields: arg_$fields);
      checkComputeHeadCursorResponse(response as api.ComputeHeadCursorResponse);
    });

    unittest.test('method--computeMessageStats', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).topicStats.projects.locations.topics;
      final arg_request = buildComputeMessageStatsRequest();
      final arg_topic = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ComputeMessageStatsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeMessageStatsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/topicStats/'),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildComputeMessageStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeMessageStats(arg_request, arg_topic,
          $fields: arg_$fields);
      checkComputeMessageStatsResponse(
          response as api.ComputeMessageStatsResponse);
    });

    unittest.test('method--computeTimeCursor', () async {
      final mock = HttpServerMock();
      final res = api.PubsubLiteApi(mock).topicStats.projects.locations.topics;
      final arg_request = buildComputeTimeCursorRequest();
      final arg_topic = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ComputeTimeCursorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeTimeCursorRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/topicStats/'),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildComputeTimeCursorResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeTimeCursor(arg_request, arg_topic,
          $fields: arg_$fields);
      checkComputeTimeCursorResponse(response as api.ComputeTimeCursorResponse);
    });
  });
}
